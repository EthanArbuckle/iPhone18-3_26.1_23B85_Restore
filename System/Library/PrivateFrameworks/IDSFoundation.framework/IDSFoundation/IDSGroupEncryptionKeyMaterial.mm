@interface IDSGroupEncryptionKeyMaterial
+ (NSUUID)keyOriginIdentifier;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRealTimeEncryptionKeyMaterial:(id)a3;
- (IDSGroupEncryptionKeyMaterial)initWithDictionary:(id)a3;
- (IDSGroupEncryptionKeyMaterial)initWithIndex:(id)a3 groupID:(id)a4 participantID:(unint64_t)a5;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 generationCounter:(unsigned int)a7 participantID:(unint64_t)a8;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 isGeneratedLocally:(BOOL)a7 createdAt:(id)a8 generationCounter:(unsigned int)a9 participantID:(unint64_t)a10;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 isGeneratedLocally:(BOOL)a7 createdAt:(id)a8 generationCounter:(unsigned int)a9 participantID:(unint64_t)a10 shortKeyIndexLength:(unsigned __int8)a11;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 participantID:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)changeCreatedAt:(id)a3;
@end

@implementation IDSGroupEncryptionKeyMaterial

- (IDSGroupEncryptionKeyMaterial)initWithIndex:(id)a3 groupID:(id)a4 participantID:(unint64_t)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = IDSGroupEncryptionKeyMaterial;
  v10 = [(IDSGroupEncryptionKeyMaterial *)&v30 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  cf = 0;
  if (qword_1EB2BBEE8 != -1)
  {
    sub_1A7E1868C();
  }

  if (!off_1EB2BBEE0 || (v11 = off_1EB2BBEE0(0, &cf)) == 0 || cf)
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = cf;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "SecMWCreateSessionSeed for Key Material (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSRTEncryptionKeyMaterial", @"IDS", @"SecMWCreateSessionSeed for Key Material (error %@)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSRTEncryptionKeyMaterial", @"SecMWCreateSessionSeed for Key Material (error %@)");
        }
      }
    }

    v26 = cf;
    if (!cf)
    {
      goto LABEL_30;
    }

LABEL_29:
    CFRelease(v26);
LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

  if (qword_1EB2BBEF8 != -1)
  {
    sub_1A7E186B4();
  }

  if (!off_1EB2BBEF0 || (v12 = off_1EB2BBEF0(0, &cf)) == 0 || cf)
  {
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = cf;
      _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "_SecMWCreateSessionSalt for Key Salt (error %@)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSRTEncryptionKeyMaterial", @"IDS", @"_SecMWCreateSessionSalt for Key Salt (error %@)");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSRTEncryptionKeyMaterial", @"_SecMWCreateSessionSalt for Key Salt (error %@)");
        }
      }
    }

    v26 = cf;
    if (!cf)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  keyMaterial = v10->_keyMaterial;
  v10->_keyMaterial = v11;

  keySalt = v10->_keySalt;
  v10->_keySalt = v12;

  v15 = [v8 copy];
  keyIndex = v10->_keyIndex;
  v10->_keyIndex = v15;

  v17 = [MEMORY[0x1E695DF00] date];
  createdAt = v10->_createdAt;
  v10->_createdAt = v17;

  v19 = [MEMORY[0x1E695DFA8] set];
  devicesToBeSent = v10->_devicesToBeSent;
  v10->_devicesToBeSent = v19;

  v21 = [v9 copy];
  groupID = v10->_groupID;
  v10->_groupID = v21;

  v10->_isGeneratedLocally = 1;
  v23 = +[IDSGroupEncryptionKeyMaterial locallyGeneratedKeysCounter]+ 1;
  [IDSGroupEncryptionKeyMaterial setLocallyGeneratedKeysCounter:v23];
  v10->_generationCounter = v23;
  v10->_participantID = a5;
  v10->_shortKeyIndexLength = 0;
LABEL_13:
  v24 = v10;
LABEL_31:

  return v24;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  LODWORD(v18) = 0;
  v16 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:v14 keySalt:v13 keyIndex:v12 groupID:v11 isGeneratedLocally:0 createdAt:v15 generationCounter:v18 participantID:0];

  return v16;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 participantID:(unint64_t)a7
{
  v12 = MEMORY[0x1E695DF00];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 date];
  LODWORD(v20) = 0;
  v18 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:v16 keySalt:v15 keyIndex:v14 groupID:v13 isGeneratedLocally:0 createdAt:v17 generationCounter:v20 participantID:a7];

  return v18;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 generationCounter:(unsigned int)a7 participantID:(unint64_t)a8
{
  v14 = MEMORY[0x1E695DF00];
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v14 date];
  LODWORD(v22) = a7;
  v20 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:v18 keySalt:v17 keyIndex:v16 groupID:v15 isGeneratedLocally:0 createdAt:v19 generationCounter:v22 participantID:a8];

  return v20;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 isGeneratedLocally:(BOOL)a7 createdAt:(id)a8 generationCounter:(unsigned int)a9 participantID:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v31.receiver = self;
  v31.super_class = IDSGroupEncryptionKeyMaterial;
  v21 = [(IDSGroupEncryptionKeyMaterial *)&v31 init];
  if (v21)
  {
    v22 = [v16 copy];
    keyMaterial = v21->_keyMaterial;
    v21->_keyMaterial = v22;

    v24 = [v17 copy];
    keySalt = v21->_keySalt;
    v21->_keySalt = v24;

    v26 = [v18 copy];
    keyIndex = v21->_keyIndex;
    v21->_keyIndex = v26;

    objc_storeStrong(&v21->_createdAt, a8);
    v21->_isGeneratedLocally = a7;
    v21->_generationCounter = a9;
    v28 = [v19 copy];
    groupID = v21->_groupID;
    v21->_groupID = v28;

    v21->_participantID = a10;
    v21->_shortKeyIndexLength = 0;
  }

  return v21;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)a3 keySalt:(id)a4 keyIndex:(id)a5 groupID:(id)a6 isGeneratedLocally:(BOOL)a7 createdAt:(id)a8 generationCounter:(unsigned int)a9 participantID:(unint64_t)a10 shortKeyIndexLength:(unsigned __int8)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v32.receiver = self;
  v32.super_class = IDSGroupEncryptionKeyMaterial;
  v22 = [(IDSGroupEncryptionKeyMaterial *)&v32 init];
  if (v22)
  {
    v23 = [v17 copy];
    keyMaterial = v22->_keyMaterial;
    v22->_keyMaterial = v23;

    v25 = [v18 copy];
    keySalt = v22->_keySalt;
    v22->_keySalt = v25;

    v27 = [v19 copy];
    keyIndex = v22->_keyIndex;
    v22->_keyIndex = v27;

    objc_storeStrong(&v22->_createdAt, a8);
    v22->_isGeneratedLocally = a7;
    v22->_generationCounter = a9;
    v29 = [v20 copy];
    groupID = v22->_groupID;
    v22->_groupID = v29;

    v22->_participantID = a10;
    v22->_shortKeyIndexLength = a11;
  }

  return v22;
}

- (IDSGroupEncryptionKeyMaterial)initWithDictionary:(id)a3
{
  v4 = a3;
  v19 = [v4 objectForKeyedSubscript:@"keyMaterial"];
  v18 = [v4 objectForKeyedSubscript:@"keySalt"];
  v17 = [v4 objectForKeyedSubscript:@"keyIndex"];
  v5 = [v4 objectForKeyedSubscript:@"groupID"];
  v6 = [v4 objectForKeyedSubscript:@"isGeneratedLocally"];
  HIDWORD(v16) = [v6 BOOLValue];
  v7 = [v4 objectForKeyedSubscript:@"createdAt"];
  v8 = [v4 objectForKeyedSubscript:@"generationCounter"];
  v9 = [v8 unsignedIntValue];
  v10 = [v4 objectForKeyedSubscript:@"participantID"];
  v11 = [v10 unsignedLongLongValue];
  v12 = [v4 objectForKeyedSubscript:@"smkil"];

  LOBYTE(v16) = [v12 unsignedIntValue];
  LODWORD(v15) = v9;
  v13 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:v19 keySalt:v18 keyIndex:v17 groupID:v5 isGeneratedLocally:HIDWORD(v16) createdAt:v7 generationCounter:v15 participantID:v11 shortKeyIndexLength:v16];

  return v13;
}

- (void)changeCreatedAt:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    createdAt = self->_createdAt;
    *buf = 138412546;
    v12 = createdAt;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "change CreatedAt from %@ to %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = self->_createdAt;
      v10 = v4;
      _IDSLogTransport(@"IDSRTEncryptionKeyMaterial", @"IDS", @"change CreatedAt from %@ to %@");
      if (_IDSShouldLog())
      {
        v9 = self->_createdAt;
        v10 = v4;
        _IDSLogV(0, @"IDSFoundation", @"IDSRTEncryptionKeyMaterial", @"change CreatedAt from %@ to %@");
      }
    }
  }

  v7 = [v4 copy];
  v8 = self->_createdAt;
  self->_createdAt = v7;
}

+ (NSUUID)keyOriginIdentifier
{
  if (qword_1EB2BBF08 != -1)
  {
    sub_1A7E186DC();
  }

  v3 = qword_1EB2BBF10;

  return v3;
}

- (BOOL)isEqualToRealTimeEncryptionKeyMaterial:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = [a3 keyIndex];
  v5 = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSGroupEncryptionKeyMaterial *)self isEqualToRealTimeEncryptionKeyMaterial:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v12 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v5 = [(IDSGroupEncryptionKeyMaterial *)self keyMaterial];
  v6 = [(IDSGroupEncryptionKeyMaterial *)self keySalt];
  v7 = [(IDSGroupEncryptionKeyMaterial *)self ratchetIndex];
  v8 = [(IDSGroupEncryptionKeyMaterial *)self createdAt];
  if ([(IDSGroupEncryptionKeyMaterial *)self isGeneratedLocally])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v12 stringWithFormat:@"<%@: %p KeyIndex: %@, KeyMaterial: %@, KeySalt: %@, ratchetIndex: %d, createdAt: %@, isGeneratedLocally: %@, counter:%u, participantID: %llu, smkil: %u>", v3, self, v4, v5, v6, v7, v8, v9, -[IDSGroupEncryptionKeyMaterial generationCounter](self, "generationCounter"), -[IDSGroupEncryptionKeyMaterial participantID](self, "participantID"), -[IDSGroupEncryptionKeyMaterial shortKeyIndexLength](self, "shortKeyIndexLength")];

  return v10;
}

- (id)debugDescription
{
  v12 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v3 = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v4 = [(IDSGroupEncryptionKeyMaterial *)self groupID];
  v5 = [(IDSGroupEncryptionKeyMaterial *)self createdAt];
  if ([(IDSGroupEncryptionKeyMaterial *)self isGeneratedLocally])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(IDSGroupEncryptionKeyMaterial *)self keySalt];
  v8 = [(IDSGroupEncryptionKeyMaterial *)self keyMaterial];
  v9 = [v12 stringWithFormat:@"<%@: %p KeyIndex: %@, groupID: %@, createdAt: %@, isGeneratedLocally: %@, KeySalt: %@, KeyMaterial: %@, ratchetIndex: %d, counter: %u, participantID: %llu, smkil: %u>", v11, self, v3, v4, v5, v6, v7, v8, -[IDSGroupEncryptionKeyMaterial ratchetIndex](self, "ratchetIndex"), -[IDSGroupEncryptionKeyMaterial generationCounter](self, "generationCounter"), -[IDSGroupEncryptionKeyMaterial participantID](self, "participantID"), -[IDSGroupEncryptionKeyMaterial shortKeyIndexLength](self, "shortKeyIndexLength")];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSGroupEncryptionKeyMaterial alloc];
  LODWORD(v6) = self->_generationCounter;
  return [(IDSGroupEncryptionKeyMaterial *)v4 initWithKeyMaterial:self->_keyMaterial keySalt:self->_keySalt keyIndex:self->_keyIndex groupID:self->_groupID isGeneratedLocally:self->_isGeneratedLocally createdAt:self->_createdAt generationCounter:v6 participantID:self->_participantID];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupEncryptionKeyMaterial *)self generationCounter];
  if (v5 >= [v4 generationCounter])
  {
    v7 = [(IDSGroupEncryptionKeyMaterial *)self generationCounter];
    v6 = v7 > [v4 generationCounter];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  keyIndex = self->_keyIndex;
  v10[0] = @"keyIndex";
  v10[1] = @"keySalt";
  v12 = *&self->_keySalt;
  v10[2] = @"keyMaterial";
  v10[3] = @"groupID";
  groupID = self->_groupID;
  v10[4] = @"isGeneratedLocally";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGeneratedLocally];
  v14 = v3;
  v10[5] = @"generationCounter";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_generationCounter];
  createdAt = self->_createdAt;
  v15 = v4;
  v16 = createdAt;
  v10[6] = @"createdAt";
  v10[7] = @"participantID";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantID];
  v17 = v6;
  v10[8] = @"smkil";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_shortKeyIndexLength];
  v18 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&keyIndex forKeys:v10 count:9];

  return v8;
}

@end