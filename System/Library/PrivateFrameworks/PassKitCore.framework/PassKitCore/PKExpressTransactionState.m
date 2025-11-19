@interface PKExpressTransactionState
+ (id)create;
+ (id)createForExpressType:(int64_t)a3;
+ (id)createForStandaloneTransaction:(int64_t)a3 applicationIdentifier:(id)a4 keyIdentifier:(id)a5 passUniqueIdentifier:(id)a6;
+ (id)createForStandaloneTransaction:(int64_t)a3 applicationIdentifier:(id)a4 keyIdentifier:(id)a5 passUniqueIdentifier:(id)a6 terminalReaderIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3;
- (BOOL)isIgnorable;
- (BOOL)mergeState:(id)a3;
- (BOOL)receiveEvents:(unint64_t)a3;
- (BOOL)receiveStandaloneTransaction:(int64_t)a3;
- (NSSet)TCIs;
- (PKExpressTransactionState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_normalizedStatus;
- (unsigned)_initForStandaloneTransaction:(void *)a3 applicationIdentifier:(void *)a4 keyIdentifier:(void *)a5 passUniqueIdentifier:(void *)a6 terminalReaderIdentifier:;
- (unsigned)_initWithUUID:(void *)a1;
- (void)_populatePassUniqueIdentifierWithLookup:(id)a3;
- (void)associateWithApplicationIdentifier:(id)a3 keyIdentifier:(id)a4 terminalReaderIdentifier:(id)a5 passUniqueIdentifier:(id)a6;
- (void)associateWithTCIs:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resolve;
@end

@implementation PKExpressTransactionState

+ (id)createForStandaloneTransaction:(int64_t)a3 applicationIdentifier:(id)a4 keyIdentifier:(id)a5 passUniqueIdentifier:(id)a6
{
  if (!a4)
  {
    return 0;
  }

  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[PKExpressTransactionState alloc] _initForStandaloneTransaction:a3 applicationIdentifier:v11 keyIdentifier:v10 passUniqueIdentifier:v9 terminalReaderIdentifier:0];

  return v12;
}

- (unsigned)_initForStandaloneTransaction:(void *)a3 applicationIdentifier:(void *)a4 keyIdentifier:(void *)a5 passUniqueIdentifier:(void *)a6 terminalReaderIdentifier:
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    v15 = [(PKExpressTransactionState *)a1 _initWithUUID:out];
    a1 = v15;
    if (v15)
    {
      *(v15 + 16) = 0;
      *(v15 + 10) = a2;
      *(v15 + 11) = 0;
      v15[34] = 1;
      v16 = [v11 copy];
      v17 = *(a1 + 5);
      *(a1 + 5) = v16;

      v18 = [v12 copy];
      v19 = *(a1 + 6);
      *(a1 + 6) = v18;

      v20 = [v13 copy];
      v21 = *(a1 + 7);
      *(a1 + 7) = v20;

      v22 = [v14 copy];
      v23 = *(a1 + 8);
      *(a1 + 8) = v22;
    }
  }

  return a1;
}

+ (id)createForStandaloneTransaction:(int64_t)a3 applicationIdentifier:(id)a4 keyIdentifier:(id)a5 passUniqueIdentifier:(id)a6 terminalReaderIdentifier:(id)a7
{
  if (a4)
  {
    v11 = a7;
    v12 = a6;
    v13 = a5;
    v14 = a4;
    v15 = [[PKExpressTransactionState alloc] _initForStandaloneTransaction:a3 applicationIdentifier:v14 keyIdentifier:v13 passUniqueIdentifier:v12 terminalReaderIdentifier:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)create
{
  v2 = [a1 createForExpressType:0];
  [v2 resolve];
  return v2;
}

+ (id)createForExpressType:(int64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  result = [PKExpressTransactionState alloc];
  if (result)
  {
    v5 = result;
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    result = [(PKExpressTransactionState *)v5 _initWithUUID:out];
    if (result)
    {
      *(result + 16) = 257;
      *(result + 10) = 0;
      *(result + 11) = a3;
      *(result + 34) = 0;
    }
  }

  return result;
}

- (unsigned)_initWithUUID:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = PKExpressTransactionState;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    uuid_copy(v3 + 8, a2);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [PKExpressTransactionState allocWithZone:?];
  memset(out, 0, sizeof(out));
  uuid_generate_random(out);
  v6 = [(PKExpressTransactionState *)v5 _initWithUUID:out];
  uuid_copy(v6 + 8, self->_uuid);
  v6[32] = self->_express;
  *(v6 + 11) = self->_type;
  *(v6 + 10) = self->_standaloneTransactionType;
  v7 = [(NSMutableSet *)self->_TCIs mutableCopyWithZone:a3];
  v8 = *(v6 + 3);
  *(v6 + 3) = v7;

  v6[33] = self->_processing;
  associated = self->_associated;
  v6[34] = associated;
  if (associated)
  {
    objc_storeStrong(v6 + 5, self->_applicationIdentifier);
    objc_storeStrong(v6 + 6, self->_keyIdentifier);
    objc_storeStrong(v6 + 8, self->_terminalReaderIdentifier);
    objc_storeStrong(v6 + 7, self->_passUniqueIdentifier);
  }

  *(v6 + 9) = self->_receivedEvents;
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v6 = [(PKExpressTransactionState *)self isEqualToState:v4];
  }

  return v6;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  if (![(PKExpressTransactionState *)self isRelatedToState:v4]|| v4[32] != self->_express || *(v4 + 11) != self->_type || *(v4 + 10) != self->_standaloneTransactionType)
  {
    goto LABEL_37;
  }

  v5 = *(v4 + 3);
  TCIs = self->_TCIs;
  if (v5 && TCIs)
  {
    if (([(NSMutableSet *)v5 isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v5 != TCIs)
  {
    goto LABEL_37;
  }

  if (v4[33] != self->_processing || v4[34] != self->_associated)
  {
    goto LABEL_37;
  }

  if (!v4[34])
  {
LABEL_40:
    v21 = *(v4 + 9) == self->_receivedEvents;
    goto LABEL_38;
  }

  applicationIdentifier = self->_applicationIdentifier;
  v8 = *(v4 + 5);
  v9 = applicationIdentifier;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {
      goto LABEL_36;
    }

    v11 = [(NSString *)v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  keyIdentifier = self->_keyIdentifier;
  v8 = *(v4 + 6);
  v13 = keyIdentifier;
  v10 = v13;
  if (v8 == v13)
  {
  }

  else
  {
    if (!v8 || !v13)
    {
      goto LABEL_36;
    }

    v14 = [(NSString *)v8 isEqualToString:v13];

    if (!v14)
    {
      goto LABEL_37;
    }
  }

  terminalReaderIdentifier = self->_terminalReaderIdentifier;
  v8 = *(v4 + 8);
  v16 = terminalReaderIdentifier;
  v10 = v16;
  if (v8 == v16)
  {
  }

  else
  {
    if (!v8 || !v16)
    {
      goto LABEL_36;
    }

    v17 = [(NSString *)v8 isEqualToString:v16];

    if (!v17)
    {
      goto LABEL_37;
    }
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v8 = *(v4 + 7);
  v19 = passUniqueIdentifier;
  v10 = v19;
  if (v8 == v19)
  {

    goto LABEL_40;
  }

  if (!v8 || !v19)
  {
LABEL_36:

    goto LABEL_37;
  }

  v20 = [(NSString *)v8 isEqualToString:v19];

  if (v20)
  {
    goto LABEL_40;
  }

LABEL_37:
  v21 = 0;
LABEL_38:

  return v21;
}

- (PKExpressTransactionState)initWithCoder:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  memset(uu, 0, sizeof(uu));
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"uuid"];
  if (!v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressTransactionState" code:0 userInfo:0];
    [v4 failWithError:v9];

    goto LABEL_6;
  }

  v7 = v6;
  *in = 0u;
  memset(v39, 0, sizeof(v39));
  [v6 UTF8String];
  if (__strlcpy_chk() > 0x24 || uuid_parse(in, uu))
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressTransactionState" code:0 userInfo:0];
    [v4 failWithError:v8];

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v12 = [(PKExpressTransactionState *)self _initWithUUID:?];
  if (v12)
  {
    v12[32] = [v4 decodeBoolForKey:@"express"];
    *(v12 + 11) = [v4 decodeIntegerForKey:@"type"];
    *(v12 + 10) = [v4 decodeIntegerForKey:@"standaloneTransaction"];
    v13 = objc_opt_class();
    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"TCIs"];

    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v34;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v16);
              }

              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_21;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v21 = [v16 mutableCopy];
        v22 = *(v12 + 3);
        *(v12 + 3) = v21;
      }

      else
      {
LABEL_21:

        v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKExpressTransactionState" code:0 userInfo:0];
        [v4 failWithError:v16];
      }
    }

    v12[33] = [v4 decodeBoolForKey:@"processing"];
    v23 = [v4 decodeBoolForKey:@"associated"];
    v12[34] = v23;
    if (v23)
    {
      v24 = [v4 decodeObjectOfClass:v5 forKey:@"applicationIdentifier"];
      v25 = *(v12 + 5);
      *(v12 + 5) = v24;

      v26 = [v4 decodeObjectOfClass:v5 forKey:@"keyIdentifier"];
      v27 = *(v12 + 6);
      *(v12 + 6) = v26;

      v28 = [v4 decodeObjectOfClass:v5 forKey:@"terminalReaderIdentifier"];
      v29 = *(v12 + 8);
      *(v12 + 8) = v28;

      v30 = [v4 decodeObjectOfClass:v5 forKey:@"passUniqueIdentifier"];
      v31 = *(v12 + 7);
      *(v12 + 7) = v30;
    }

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"events"];
    *(v12 + 9) = [v32 unsignedIntegerValue];
  }

  self = v12;
  v10 = self;
LABEL_7:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v7, 0, sizeof(v7));
  uuid_unparse_upper(self->_uuid, v7);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
  [v4 encodeObject:v5 forKey:@"uuid"];

  [v4 encodeBool:self->_express forKey:@"express"];
  [v4 encodeInteger:self->_type forKey:@"type"];
  [v4 encodeInteger:self->_standaloneTransactionType forKey:@"standaloneTransaction"];
  [v4 encodeObject:self->_TCIs forKey:@"TCIs"];
  [v4 encodeBool:self->_processing forKey:@"processing"];
  [v4 encodeBool:self->_associated forKey:@"associated"];
  if (self->_associated)
  {
    [v4 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
    [v4 encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
    [v4 encodeObject:self->_terminalReaderIdentifier forKey:@"terminalReaderIdentifier"];
    [v4 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_receivedEvents];
  [v4 encodeObject:v6 forKey:@"events"];
}

- (void)associateWithTCIs:(id)a3
{
  v4 = a3;
  if (self->_processing && v4)
  {
    v8 = v4;
    if ([v4 count])
    {
      TCIs = self->_TCIs;
      if (TCIs)
      {
        [(NSMutableSet *)TCIs unionSet:v8];
      }

      else
      {
        v6 = [v8 mutableCopy];
        v7 = self->_TCIs;
        self->_TCIs = v6;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)associateWithApplicationIdentifier:(id)a3 keyIdentifier:(id)a4 terminalReaderIdentifier:(id)a5 passUniqueIdentifier:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!self->_processing || self->_associated)
  {
    __break(1u);
  }

  else
  {
    v13 = v12;
    self->_associated = 1;
    v14 = [v22 copy];
    applicationIdentifier = self->_applicationIdentifier;
    self->_applicationIdentifier = v14;

    v16 = [v10 copy];
    keyIdentifier = self->_keyIdentifier;
    self->_keyIdentifier = v16;

    v18 = [v11 copy];
    terminalReaderIdentifier = self->_terminalReaderIdentifier;
    self->_terminalReaderIdentifier = v18;

    v20 = [v13 copy];
    passUniqueIdentifier = self->_passUniqueIdentifier;
    self->_passUniqueIdentifier = v20;
  }
}

- (void)_populatePassUniqueIdentifierWithLookup:(id)a3
{
  v4 = a3;
  if (self->_associated)
  {
    if (!self->_passUniqueIdentifier)
    {
      applicationIdentifier = self->_applicationIdentifier;
      if (applicationIdentifier)
      {
        v9 = v4;
        v6 = (*(v4 + 2))(v4, applicationIdentifier, self->_keyIdentifier);
        v7 = [v6 copy];
        passUniqueIdentifier = self->_passUniqueIdentifier;
        self->_passUniqueIdentifier = v7;

        v4 = v9;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)mergeState:(id)a3
{
  v4 = a3;
  if (!self->_processing || (v5 = v4) == 0)
  {
    __break(1u);
    return v4;
  }

  if (![(PKExpressTransactionState *)self isRelatedToState:v4])
  {
    goto LABEL_39;
  }

  if (v5[3])
  {
    TCIs = self->_TCIs;
    if (TCIs)
    {
      [(NSMutableSet *)TCIs unionSet:?];
    }

    else
    {
      v7 = [v5[3] mutableCopy];
      v8 = self->_TCIs;
      self->_TCIs = v7;
    }
  }

  if (!self->_associated)
  {
    if (*(v5 + 34))
    {
      [(PKExpressTransactionState *)self associateWithApplicationIdentifier:v5[5] keyIdentifier:v5[6] terminalReaderIdentifier:v5[8] passUniqueIdentifier:v5[7]];
    }

    goto LABEL_17;
  }

  if (*(v5 + 34))
  {
    v9 = v5[5];
    v10 = self->_applicationIdentifier;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (!v10 || !v11)
      {
        goto LABEL_38;
      }

      v13 = [(NSString *)v10 isEqualToString:v11];

      if (!v13)
      {
        goto LABEL_39;
      }
    }

    v15 = v5[6];
    v10 = self->_keyIdentifier;
    v16 = v15;
    v12 = v16;
    if (v10 == v16)
    {
    }

    else
    {
      if (!v10 || !v16)
      {
        goto LABEL_38;
      }

      v17 = [(NSString *)v10 isEqualToString:v16];

      if (!v17)
      {
        goto LABEL_39;
      }
    }

    v18 = v5[8];
    v10 = self->_terminalReaderIdentifier;
    v19 = v18;
    v12 = v19;
    if (v10 == v19)
    {

LABEL_33:
      v21 = v5[7];
      v10 = self->_passUniqueIdentifier;
      v22 = v21;
      v12 = v22;
      if (v10 == v22)
      {

        goto LABEL_17;
      }

      if (v10 && v22)
      {
        v23 = [(NSString *)v10 isEqualToString:v22];

        if (!v23)
        {
          goto LABEL_39;
        }

LABEL_17:
        [(PKExpressTransactionState *)self receiveEvents:v5[9]];
        [(PKExpressTransactionState *)self receiveStandaloneTransaction:v5[10]];
        if ((*(v5 + 33) & 1) == 0)
        {
          [(PKExpressTransactionState *)self resolve];
        }

        v14 = 1;
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (v10 && v19)
    {
      v20 = [(NSString *)v10 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

LABEL_38:
  }

LABEL_39:
  v14 = 0;
LABEL_40:

  LOBYTE(v4) = v14;
  return v4;
}

- (BOOL)receiveEvents:(unint64_t)a3
{
  if (self->_processing)
  {
    v4 = self;
    v5 = [(PKExpressTransactionState *)self _normalizedStatus];
    v4->_receivedEvents |= a3;
    LOBYTE(self) = [(PKExpressTransactionState *)v4 _normalizedStatus]!= v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (uint64_t)_normalizedStatus
{
  if (result)
  {
    if ((*(result + 80) - 1) < 2)
    {
      return 1;
    }

    v1 = *(result + 72);
    if ((v1 & 6) != 0)
    {
      return 1;
    }

    else if ((v1 & 0x200) != 0)
    {
      return 3;
    }

    else
    {
      v2 = v1 >> 7;
      if ((v2 & 2) != 0)
      {
        return v2 & 2;
      }

      else if (*(result + 33))
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

- (BOOL)receiveStandaloneTransaction:(int64_t)a3
{
  if (self->_processing)
  {
    if (a3)
    {
      v4 = self;
      v5 = [(PKExpressTransactionState *)self _normalizedStatus];
      v4->_standaloneTransactionType = a3;
      LOBYTE(self) = [(PKExpressTransactionState *)v4 _normalizedStatus]!= v5;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)resolve
{
  if (self->_processing)
  {
    self->_processing = 0;
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)isIgnorable
{
  if (!self)
  {
    receivedEvents = MEMORY[0x48];
    return (receivedEvents >> 10) & 1;
  }

  if ((self->_standaloneTransactionType - 1) >= 2)
  {
    receivedEvents = self->_receivedEvents;
    if ((receivedEvents & 0x306) == 0)
    {
      return (receivedEvents >> 10) & 1;
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (NSSet)TCIs
{
  v2 = [(NSMutableSet *)self->_TCIs copy];

  return v2;
}

@end