@interface PKPassVerificationMethodGroup
+ (id)methodGroupFromLegacyChannel:(id)a3;
- (BOOL)isCardReadOnly;
- (BOOL)isSMSOTP;
- (BOOL)needsServerRequest;
- (BOOL)requiresUserInteraction;
- (BOOL)supportedOnCurrentDevice;
- (PKPassVerificationMethod)onlyMethod;
- (PKPassVerificationMethodGroup)initWithCoder:(id)a3;
- (PKPassVerificationMethodGroup)initWithDictionary:(id)a3;
- (PKPassVerificationMethodGroup)initWithIdentifier:(id)a3 methods:(id)a4;
- (id)_localizedShortDescriptionForMethod:(id)a3 pass:(id)a4;
- (id)description;
- (id)legacyChannelRepresentation;
- (id)localizedShortDescriptionWithPass:(id)a3;
- (id)localizedTitle;
- (unint64_t)type;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationMethodGroup

- (PKPassVerificationMethodGroup)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 PKStringForKey:@"identifier"];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [v4 PKArrayContaining:objc_opt_class() forKey:@"methods"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [PKPassVerificationMethod verificationMethodFromDictionary:*(*(&v15 + 1) + 8 * i)];
          [v6 safelyAddObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [(PKPassVerificationMethodGroup *)self initWithIdentifier:v5 methods:v6];
    }

    else
    {

      v13 = 0;
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (PKPassVerificationMethodGroup)initWithIdentifier:(id)a3 methods:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 count])
  {
    v12.receiver = self;
    v12.super_class = PKPassVerificationMethodGroup;
    v9 = [(PKPassVerificationMethodGroup *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, a3);
      objc_storeStrong(&v10->_methods, a4);
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

+ (id)methodGroupFromLegacyChannel:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [PKPassVerificationMethod methodFromLegacyChannel:a3];
  if (v3)
  {
    v4 = [PKPassVerificationMethodGroup alloc];
    v5 = [v3 identifier];
    v6 = [v5 stringByAppendingString:@"-Group"];
    v10[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [(PKPassVerificationMethodGroup *)v4 initWithIdentifier:v6 methods:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)legacyChannelRepresentation
{
  if ([(NSArray *)self->_methods count]== 1)
  {
    v3 = [(NSArray *)self->_methods objectAtIndexedSubscript:0];
    v4 = [v3 legacyChannelRepresentation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)requiresUserInteraction
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_methods;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) requiresUserInteraction])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)needsServerRequest
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_methods;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) needsServerRequest])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)supportedOnCurrentDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_methods;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) supportedOnCurrentDevice])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)isSMSOTP
{
  if ([(NSArray *)self->_methods count]!= 1)
  {
    return 0;
  }

  v3 = [(NSArray *)self->_methods objectAtIndexedSubscript:0];
  v4 = [v3 type] == 1 && objc_msgSend(v3, "channel") == 1;

  return v4;
}

- (BOOL)isCardReadOnly
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_methods count]<= 2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_methods;
    v3 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 type] == 6)
          {
            v5 = 1;
          }

          else
          {
            v6 |= [v9 type] != 7;
          }
        }

        v3 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v3);
      LOBYTE(v3) = v5 & (v6 ^ 1);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (PKPassVerificationMethod)onlyMethod
{
  if ([(NSArray *)self->_methods count]== 1)
  {
    v3 = [(NSArray *)self->_methods objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)type
{
  if ([(NSArray *)self->_methods count]== 1)
  {
    return 0;
  }

  v4 = [(NSArray *)self->_methods pk_arrayByApplyingBlock:&__block_literal_global_70];
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqual:&unk_1F23B3D88])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t __37__PKPassVerificationMethodGroup_type__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

- (id)localizedTitle
{
  v2 = [(NSArray *)self->_methods firstObject];
  v3 = [v2 typeDescription];

  return v3;
}

- (id)localizedShortDescriptionWithPass:(id)a3
{
  v4 = a3;
  v5 = [(PKPassVerificationMethodGroup *)self type];
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      self = PKLocalizedPaymentString(&cfstr_VerificationCh.isa, 0);
    }
  }

  else
  {
    v6 = [(NSArray *)self->_methods objectAtIndexedSubscript:0];
    self = [(PKPassVerificationMethodGroup *)self _localizedShortDescriptionForMethod:v6 pass:v4];
  }

  return self;
}

- (id)_localizedShortDescriptionForMethod:(id)a3 pass:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 supplementalTypeDescription];
  if (!v7)
  {
    if ([v5 type] == 2 && objc_msgSend(v5, "direction") == 1)
    {
      v7 = [v6 localizedValueForFieldKey:@"contactNumber"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PKPassVerificationMethodGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPassVerificationMethodGroup;
  v5 = [(PKPassVerificationMethodGroup *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v20 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v20 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"methods"];
    methods = v5->_methods;
    v5->_methods = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_methods forKey:@"methods"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ ", v5];

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"methods: '%@'; ", self->_methods];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end