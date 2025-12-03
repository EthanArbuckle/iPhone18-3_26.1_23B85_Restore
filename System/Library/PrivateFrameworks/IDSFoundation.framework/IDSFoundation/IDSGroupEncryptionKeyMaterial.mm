@interface IDSGroupEncryptionKeyMaterial
+ (NSUUID)keyOriginIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRealTimeEncryptionKeyMaterial:(id)material;
- (IDSGroupEncryptionKeyMaterial)initWithDictionary:(id)dictionary;
- (IDSGroupEncryptionKeyMaterial)initWithIndex:(id)index groupID:(id)d participantID:(unint64_t)iD;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d generationCounter:(unsigned int)counter participantID:(unint64_t)iD;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d isGeneratedLocally:(BOOL)locally createdAt:(id)at generationCounter:(unsigned int)counter participantID:(unint64_t)self0;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d isGeneratedLocally:(BOOL)locally createdAt:(id)at generationCounter:(unsigned int)counter participantID:(unint64_t)self0 shortKeyIndexLength:(unsigned __int8)self1;
- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d participantID:(unint64_t)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)changeCreatedAt:(id)at;
@end

@implementation IDSGroupEncryptionKeyMaterial

- (IDSGroupEncryptionKeyMaterial)initWithIndex:(id)index groupID:(id)d participantID:(unint64_t)iD
{
  v33 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  dCopy = d;
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

  v15 = [indexCopy copy];
  keyIndex = v10->_keyIndex;
  v10->_keyIndex = v15;

  date = [MEMORY[0x1E695DF00] date];
  createdAt = v10->_createdAt;
  v10->_createdAt = date;

  v19 = [MEMORY[0x1E695DFA8] set];
  devicesToBeSent = v10->_devicesToBeSent;
  v10->_devicesToBeSent = v19;

  v21 = [dCopy copy];
  groupID = v10->_groupID;
  v10->_groupID = v21;

  v10->_isGeneratedLocally = 1;
  v23 = +[IDSGroupEncryptionKeyMaterial locallyGeneratedKeysCounter]+ 1;
  [IDSGroupEncryptionKeyMaterial setLocallyGeneratedKeysCounter:v23];
  v10->_generationCounter = v23;
  v10->_participantID = iD;
  v10->_shortKeyIndexLength = 0;
LABEL_13:
  v24 = v10;
LABEL_31:

  return v24;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d
{
  v10 = MEMORY[0x1E695DF00];
  dCopy = d;
  indexCopy = index;
  saltCopy = salt;
  materialCopy = material;
  date = [v10 date];
  LODWORD(v18) = 0;
  v16 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:materialCopy keySalt:saltCopy keyIndex:indexCopy groupID:dCopy isGeneratedLocally:0 createdAt:date generationCounter:v18 participantID:0];

  return v16;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d participantID:(unint64_t)iD
{
  v12 = MEMORY[0x1E695DF00];
  dCopy = d;
  indexCopy = index;
  saltCopy = salt;
  materialCopy = material;
  date = [v12 date];
  LODWORD(v20) = 0;
  v18 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:materialCopy keySalt:saltCopy keyIndex:indexCopy groupID:dCopy isGeneratedLocally:0 createdAt:date generationCounter:v20 participantID:iD];

  return v18;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d generationCounter:(unsigned int)counter participantID:(unint64_t)iD
{
  v14 = MEMORY[0x1E695DF00];
  dCopy = d;
  indexCopy = index;
  saltCopy = salt;
  materialCopy = material;
  date = [v14 date];
  LODWORD(v22) = counter;
  v20 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:materialCopy keySalt:saltCopy keyIndex:indexCopy groupID:dCopy isGeneratedLocally:0 createdAt:date generationCounter:v22 participantID:iD];

  return v20;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d isGeneratedLocally:(BOOL)locally createdAt:(id)at generationCounter:(unsigned int)counter participantID:(unint64_t)self0
{
  materialCopy = material;
  saltCopy = salt;
  indexCopy = index;
  dCopy = d;
  atCopy = at;
  v31.receiver = self;
  v31.super_class = IDSGroupEncryptionKeyMaterial;
  v21 = [(IDSGroupEncryptionKeyMaterial *)&v31 init];
  if (v21)
  {
    v22 = [materialCopy copy];
    keyMaterial = v21->_keyMaterial;
    v21->_keyMaterial = v22;

    v24 = [saltCopy copy];
    keySalt = v21->_keySalt;
    v21->_keySalt = v24;

    v26 = [indexCopy copy];
    keyIndex = v21->_keyIndex;
    v21->_keyIndex = v26;

    objc_storeStrong(&v21->_createdAt, at);
    v21->_isGeneratedLocally = locally;
    v21->_generationCounter = counter;
    v28 = [dCopy copy];
    groupID = v21->_groupID;
    v21->_groupID = v28;

    v21->_participantID = iD;
    v21->_shortKeyIndexLength = 0;
  }

  return v21;
}

- (IDSGroupEncryptionKeyMaterial)initWithKeyMaterial:(id)material keySalt:(id)salt keyIndex:(id)index groupID:(id)d isGeneratedLocally:(BOOL)locally createdAt:(id)at generationCounter:(unsigned int)counter participantID:(unint64_t)self0 shortKeyIndexLength:(unsigned __int8)self1
{
  materialCopy = material;
  saltCopy = salt;
  indexCopy = index;
  dCopy = d;
  atCopy = at;
  v32.receiver = self;
  v32.super_class = IDSGroupEncryptionKeyMaterial;
  v22 = [(IDSGroupEncryptionKeyMaterial *)&v32 init];
  if (v22)
  {
    v23 = [materialCopy copy];
    keyMaterial = v22->_keyMaterial;
    v22->_keyMaterial = v23;

    v25 = [saltCopy copy];
    keySalt = v22->_keySalt;
    v22->_keySalt = v25;

    v27 = [indexCopy copy];
    keyIndex = v22->_keyIndex;
    v22->_keyIndex = v27;

    objc_storeStrong(&v22->_createdAt, at);
    v22->_isGeneratedLocally = locally;
    v22->_generationCounter = counter;
    v29 = [dCopy copy];
    groupID = v22->_groupID;
    v22->_groupID = v29;

    v22->_participantID = iD;
    v22->_shortKeyIndexLength = length;
  }

  return v22;
}

- (IDSGroupEncryptionKeyMaterial)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19 = [dictionaryCopy objectForKeyedSubscript:@"keyMaterial"];
  v18 = [dictionaryCopy objectForKeyedSubscript:@"keySalt"];
  v17 = [dictionaryCopy objectForKeyedSubscript:@"keyIndex"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"groupID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"isGeneratedLocally"];
  HIDWORD(v16) = [v6 BOOLValue];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"createdAt"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"generationCounter"];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"participantID"];
  unsignedLongLongValue = [v10 unsignedLongLongValue];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"smkil"];

  LOBYTE(v16) = [v12 unsignedIntValue];
  LODWORD(v15) = unsignedIntValue;
  v13 = [(IDSGroupEncryptionKeyMaterial *)self initWithKeyMaterial:v19 keySalt:v18 keyIndex:v17 groupID:v5 isGeneratedLocally:HIDWORD(v16) createdAt:v7 generationCounter:v15 participantID:unsignedLongLongValue shortKeyIndexLength:v16];

  return v13;
}

- (void)changeCreatedAt:(id)at
{
  v15 = *MEMORY[0x1E69E9840];
  atCopy = at;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    createdAt = self->_createdAt;
    *buf = 138412546;
    v12 = createdAt;
    v13 = 2112;
    v14 = atCopy;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "change CreatedAt from %@ to %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = self->_createdAt;
      v10 = atCopy;
      _IDSLogTransport(@"IDSRTEncryptionKeyMaterial", @"IDS", @"change CreatedAt from %@ to %@");
      if (_IDSShouldLog())
      {
        v9 = self->_createdAt;
        v10 = atCopy;
        _IDSLogV(0, @"IDSFoundation", @"IDSRTEncryptionKeyMaterial", @"change CreatedAt from %@ to %@");
      }
    }
  }

  v7 = [atCopy copy];
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

- (BOOL)isEqualToRealTimeEncryptionKeyMaterial:(id)material
{
  if (self == material)
  {
    return 1;
  }

  keyIndex = [material keyIndex];
  keyIndex2 = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v6 = [keyIndex isEqual:keyIndex2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSGroupEncryptionKeyMaterial *)self isEqualToRealTimeEncryptionKeyMaterial:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  keyIndex = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  v3 = [keyIndex hash];

  return v3;
}

- (id)description
{
  v12 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  keyIndex = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  keyMaterial = [(IDSGroupEncryptionKeyMaterial *)self keyMaterial];
  keySalt = [(IDSGroupEncryptionKeyMaterial *)self keySalt];
  ratchetIndex = [(IDSGroupEncryptionKeyMaterial *)self ratchetIndex];
  createdAt = [(IDSGroupEncryptionKeyMaterial *)self createdAt];
  if ([(IDSGroupEncryptionKeyMaterial *)self isGeneratedLocally])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v12 stringWithFormat:@"<%@: %p KeyIndex: %@, KeyMaterial: %@, KeySalt: %@, ratchetIndex: %d, createdAt: %@, isGeneratedLocally: %@, counter:%u, participantID: %llu, smkil: %u>", v3, self, keyIndex, keyMaterial, keySalt, ratchetIndex, createdAt, v9, -[IDSGroupEncryptionKeyMaterial generationCounter](self, "generationCounter"), -[IDSGroupEncryptionKeyMaterial participantID](self, "participantID"), -[IDSGroupEncryptionKeyMaterial shortKeyIndexLength](self, "shortKeyIndexLength")];

  return v10;
}

- (id)debugDescription
{
  v12 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  keyIndex = [(IDSGroupEncryptionKeyMaterial *)self keyIndex];
  groupID = [(IDSGroupEncryptionKeyMaterial *)self groupID];
  createdAt = [(IDSGroupEncryptionKeyMaterial *)self createdAt];
  if ([(IDSGroupEncryptionKeyMaterial *)self isGeneratedLocally])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  keySalt = [(IDSGroupEncryptionKeyMaterial *)self keySalt];
  keyMaterial = [(IDSGroupEncryptionKeyMaterial *)self keyMaterial];
  v9 = [v12 stringWithFormat:@"<%@: %p KeyIndex: %@, groupID: %@, createdAt: %@, isGeneratedLocally: %@, KeySalt: %@, KeyMaterial: %@, ratchetIndex: %d, counter: %u, participantID: %llu, smkil: %u>", v11, self, keyIndex, groupID, createdAt, v6, keySalt, keyMaterial, -[IDSGroupEncryptionKeyMaterial ratchetIndex](self, "ratchetIndex"), -[IDSGroupEncryptionKeyMaterial generationCounter](self, "generationCounter"), -[IDSGroupEncryptionKeyMaterial participantID](self, "participantID"), -[IDSGroupEncryptionKeyMaterial shortKeyIndexLength](self, "shortKeyIndexLength")];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSGroupEncryptionKeyMaterial alloc];
  LODWORD(v6) = self->_generationCounter;
  return [(IDSGroupEncryptionKeyMaterial *)v4 initWithKeyMaterial:self->_keyMaterial keySalt:self->_keySalt keyIndex:self->_keyIndex groupID:self->_groupID isGeneratedLocally:self->_isGeneratedLocally createdAt:self->_createdAt generationCounter:v6 participantID:self->_participantID];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  generationCounter = [(IDSGroupEncryptionKeyMaterial *)self generationCounter];
  if (generationCounter >= [compareCopy generationCounter])
  {
    generationCounter2 = [(IDSGroupEncryptionKeyMaterial *)self generationCounter];
    v6 = generationCounter2 > [compareCopy generationCounter];
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