@interface CCSiriLearnedMediaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSiriLearnedMediaContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCSiriLearnedMediaContent)initWithUserPhrasedSongName:(id)name userPhrasedArtistName:(id)artistName userPhrasedAlbumName:(id)albumName userPhrasedEntityName:(id)entityName userPhrasedVersion:(id)version suggestedAdamId:(id)id error:(id *)error;
- (NSString)suggestedAdamId;
- (NSString)userPhrasedAlbumName;
- (NSString)userPhrasedArtistName;
- (NSString)userPhrasedEntityName;
- (NSString)userPhrasedSongName;
- (NSString)userPhrasedVersion;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSiriLearnedMediaContent

- (CCSiriLearnedMediaContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"userPhrasedSongName"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"userPhrasedArtistName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"userPhrasedAlbumName"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"userPhrasedEntityName"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"userPhrasedVersion"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"suggestedAdamId"];
    v15 = [[CCSiriLearnedMediaContent alloc] initWithUserPhrasedSongName:v9 userPhrasedArtistName:v10 userPhrasedAlbumName:v11 userPhrasedEntityName:v12 userPhrasedVersion:v13 suggestedAdamId:v14 error:error];
  }

  else
  {
    CCSetError();
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_userPhrasedSongName)
  {
    userPhrasedSongName = [(CCSiriLearnedMediaContent *)self userPhrasedSongName];
    [v3 setObject:userPhrasedSongName forKeyedSubscript:@"userPhrasedSongName"];
  }

  if (self->_userPhrasedArtistName)
  {
    userPhrasedArtistName = [(CCSiriLearnedMediaContent *)self userPhrasedArtistName];
    [v3 setObject:userPhrasedArtistName forKeyedSubscript:@"userPhrasedArtistName"];
  }

  if (self->_userPhrasedAlbumName)
  {
    userPhrasedAlbumName = [(CCSiriLearnedMediaContent *)self userPhrasedAlbumName];
    [v3 setObject:userPhrasedAlbumName forKeyedSubscript:@"userPhrasedAlbumName"];
  }

  if (self->_userPhrasedEntityName)
  {
    userPhrasedEntityName = [(CCSiriLearnedMediaContent *)self userPhrasedEntityName];
    [v3 setObject:userPhrasedEntityName forKeyedSubscript:@"userPhrasedEntityName"];
  }

  if (self->_userPhrasedVersion)
  {
    userPhrasedVersion = [(CCSiriLearnedMediaContent *)self userPhrasedVersion];
    [v3 setObject:userPhrasedVersion forKeyedSubscript:@"userPhrasedVersion"];
  }

  if (self->_suggestedAdamId)
  {
    suggestedAdamId = [(CCSiriLearnedMediaContent *)self suggestedAdamId];
    [v3 setObject:suggestedAdamId forKeyedSubscript:@"suggestedAdamId"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_userPhrasedSongName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62159 stringValue:self->_userPhrasedSongName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_userPhrasedArtistName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62160 stringValue:self->_userPhrasedArtistName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_userPhrasedAlbumName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62161 stringValue:self->_userPhrasedAlbumName];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_userPhrasedEntityName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62162 stringValue:self->_userPhrasedEntityName];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_userPhrasedVersion)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62163 stringValue:self->_userPhrasedVersion];
    blockCopy[2](blockCopy, v9);
  }

  v10 = blockCopy;
  if (self->_suggestedAdamId)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62164 stringValue:self->_suggestedAdamId];
    blockCopy[2](blockCopy, v11);

    v10 = blockCopy;
  }
}

- (NSString)suggestedAdamId
{
  v2 = [(NSString *)self->_suggestedAdamId copy];

  return v2;
}

- (NSString)userPhrasedVersion
{
  v2 = [(NSString *)self->_userPhrasedVersion copy];

  return v2;
}

- (NSString)userPhrasedEntityName
{
  v2 = [(NSString *)self->_userPhrasedEntityName copy];

  return v2;
}

- (NSString)userPhrasedAlbumName
{
  v2 = [(NSString *)self->_userPhrasedAlbumName copy];

  return v2;
}

- (NSString)userPhrasedArtistName
{
  v2 = [(NSString *)self->_userPhrasedArtistName copy];

  return v2;
}

- (NSString)userPhrasedSongName
{
  v2 = [(NSString *)self->_userPhrasedSongName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_43;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_44;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 40;
            goto LABEL_36;
          case 5:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 48;
            goto LABEL_36;
          case 6:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 56;
            goto LABEL_36;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 16;
            goto LABEL_36;
          case 2:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 24;
            goto LABEL_36;
          case 3:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 32;
LABEL_36:
            v25 = *(&self->super.super.isa + v24);
            *(&self->super.super.isa + v24) = v23;
            goto LABEL_37;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_38;
      }

      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_37:

LABEL_38:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_45;
  }

LABEL_43:
  if (!*&v6[*v9])
  {
    v31 = 1;
    goto LABEL_47;
  }

LABEL_44:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_45:
  v31 = 0;
LABEL_47:

  return v31;
}

- (CCSiriLearnedMediaContent)initWithUserPhrasedSongName:(id)name userPhrasedArtistName:(id)artistName userPhrasedAlbumName:(id)albumName userPhrasedEntityName:(id)entityName userPhrasedVersion:(id)version suggestedAdamId:(id)id error:(id *)error
{
  nameCopy = name;
  artistNameCopy = artistName;
  albumNameCopy = albumName;
  entityNameCopy = entityName;
  versionCopy = version;
  idCopy = id;
  v20 = objc_opt_new();
  v21 = 0x1E696A000uLL;
  if (!nameCopy)
  {
    v23 = 0;
LABEL_5:
    selfCopy = self;
    if (artistNameCopy)
    {
      v24 = *(v21 + 3776);
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_23;
      }

      CCPBDataWriterWriteStringField();
      v21 = 0x1E696A000uLL;
      if (!albumNameCopy)
      {
LABEL_8:
        v23 = v26;
        if (entityNameCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v26 = v23;
      if (!albumNameCopy)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v21 + 3776);
    objc_opt_class();
    v31 = CCValidateIsInstanceOfExpectedClass();
    v23 = v26;

    if (!v31)
    {
      goto LABEL_24;
    }

    CCPBDataWriterWriteStringField();
    v21 = 0x1E696A000uLL;
    if (entityNameCopy)
    {
LABEL_9:
      v27 = *(v21 + 3776);
      objc_opt_class();
      v28 = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (v28)
      {
        CCPBDataWriterWriteStringField();
        v21 = 0x1E696A000;
        if (!versionCopy)
        {
LABEL_11:
          v23 = v26;
LABEL_19:
          if (!idCopy)
          {
LABEL_22:
            immutableData = [v20 immutableData];
            v29 = [v39 initWithData:immutableData error:error];

            self = v29;
            goto LABEL_26;
          }

          v34 = *(v21 + 3776);
          objc_opt_class();
          v35 = CCValidateIsInstanceOfExpectedClass();
          v26 = v23;

          if (v35)
          {
            CCPBDataWriterWriteStringField();
            v23 = v26;
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_23:
      CCSetError();
      v29 = 0;
      v23 = v26;
LABEL_25:
      self = selfCopy;
      goto LABEL_26;
    }

LABEL_16:
    v26 = v23;
    if (!versionCopy)
    {
      goto LABEL_11;
    }

LABEL_17:
    v32 = *(v21 + 3776);
    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v23 = v26;

    if (v33)
    {
      CCPBDataWriterWriteStringField();
      v21 = 0x1E696A000uLL;
      goto LABEL_19;
    }

LABEL_24:
    CCSetError();
    v29 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    CCPBDataWriterWriteStringField();
    v21 = 0x1E696A000;
    goto LABEL_5;
  }

  CCSetError();
  v29 = 0;
LABEL_26:

  return v29;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 3378) > 6u)
  {
    return 0;
  }

  else
  {
    return off_1E73E7B10[(identifier + 3378)];
  }
}

@end