@interface CCSiriLearnedMediaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCSiriLearnedMediaContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCSiriLearnedMediaContent)initWithUserPhrasedSongName:(id)a3 userPhrasedArtistName:(id)a4 userPhrasedAlbumName:(id)a5 userPhrasedEntityName:(id)a6 userPhrasedVersion:(id)a7 suggestedAdamId:(id)a8 error:(id *)a9;
- (NSString)suggestedAdamId;
- (NSString)userPhrasedAlbumName;
- (NSString)userPhrasedArtistName;
- (NSString)userPhrasedEntityName;
- (NSString)userPhrasedSongName;
- (NSString)userPhrasedVersion;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCSiriLearnedMediaContent

- (CCSiriLearnedMediaContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"userPhrasedSongName"];
    v10 = [v6 objectForKeyedSubscript:@"userPhrasedArtistName"];
    v11 = [v6 objectForKeyedSubscript:@"userPhrasedAlbumName"];
    v12 = [v6 objectForKeyedSubscript:@"userPhrasedEntityName"];
    v13 = [v6 objectForKeyedSubscript:@"userPhrasedVersion"];
    v14 = [v6 objectForKeyedSubscript:@"suggestedAdamId"];
    v15 = [[CCSiriLearnedMediaContent alloc] initWithUserPhrasedSongName:v9 userPhrasedArtistName:v10 userPhrasedAlbumName:v11 userPhrasedEntityName:v12 userPhrasedVersion:v13 suggestedAdamId:v14 error:a4];
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
    v4 = [(CCSiriLearnedMediaContent *)self userPhrasedSongName];
    [v3 setObject:v4 forKeyedSubscript:@"userPhrasedSongName"];
  }

  if (self->_userPhrasedArtistName)
  {
    v5 = [(CCSiriLearnedMediaContent *)self userPhrasedArtistName];
    [v3 setObject:v5 forKeyedSubscript:@"userPhrasedArtistName"];
  }

  if (self->_userPhrasedAlbumName)
  {
    v6 = [(CCSiriLearnedMediaContent *)self userPhrasedAlbumName];
    [v3 setObject:v6 forKeyedSubscript:@"userPhrasedAlbumName"];
  }

  if (self->_userPhrasedEntityName)
  {
    v7 = [(CCSiriLearnedMediaContent *)self userPhrasedEntityName];
    [v3 setObject:v7 forKeyedSubscript:@"userPhrasedEntityName"];
  }

  if (self->_userPhrasedVersion)
  {
    v8 = [(CCSiriLearnedMediaContent *)self userPhrasedVersion];
    [v3 setObject:v8 forKeyedSubscript:@"userPhrasedVersion"];
  }

  if (self->_suggestedAdamId)
  {
    v9 = [(CCSiriLearnedMediaContent *)self suggestedAdamId];
    [v3 setObject:v9 forKeyedSubscript:@"suggestedAdamId"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v12 = a3;
  if (self->_userPhrasedSongName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62159 stringValue:self->_userPhrasedSongName];
    v12[2](v12, v5);
  }

  if (self->_userPhrasedArtistName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62160 stringValue:self->_userPhrasedArtistName];
    v12[2](v12, v6);
  }

  if (self->_userPhrasedAlbumName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62161 stringValue:self->_userPhrasedAlbumName];
    v12[2](v12, v7);
  }

  if (self->_userPhrasedEntityName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62162 stringValue:self->_userPhrasedEntityName];
    v12[2](v12, v8);
  }

  if (self->_userPhrasedVersion)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62163 stringValue:self->_userPhrasedVersion];
    v12[2](v12, v9);
  }

  v10 = v12;
  if (self->_suggestedAdamId)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:62164 stringValue:self->_suggestedAdamId];
    v12[2](v12, v11);

    v10 = v12;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
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

- (CCSiriLearnedMediaContent)initWithUserPhrasedSongName:(id)a3 userPhrasedArtistName:(id)a4 userPhrasedAlbumName:(id)a5 userPhrasedEntityName:(id)a6 userPhrasedVersion:(id)a7 suggestedAdamId:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v40 = a8;
  v20 = objc_opt_new();
  v21 = 0x1E696A000uLL;
  if (!v15)
  {
    v23 = 0;
LABEL_5:
    v38 = self;
    if (v16)
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
      if (!v17)
      {
LABEL_8:
        v23 = v26;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v26 = v23;
      if (!v17)
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
    if (v18)
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
        if (!v19)
        {
LABEL_11:
          v23 = v26;
LABEL_19:
          if (!v40)
          {
LABEL_22:
            v36 = [v20 immutableData];
            v29 = [v39 initWithData:v36 error:a9];

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
      self = v38;
      goto LABEL_26;
    }

LABEL_16:
    v26 = v23;
    if (!v19)
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

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 3378) > 6u)
  {
    return 0;
  }

  else
  {
    return off_1E73E7B10[(a3 + 3378)];
  }
}

@end