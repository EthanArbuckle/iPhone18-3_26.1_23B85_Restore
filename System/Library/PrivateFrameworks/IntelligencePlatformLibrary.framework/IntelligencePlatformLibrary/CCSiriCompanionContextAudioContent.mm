@interface CCSiriCompanionContextAudioContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSiriCompanionContextAudioContent)initWithAppBundleId:(id)id mediaCategories:(id)categories subscriptionStatus:(unsigned int)status localizedAppName:(id)name nowPlayingCount:(id)count error:(id *)error;
- (CCSiriCompanionContextAudioContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)appBundleId;
- (NSString)localizedAppName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSiriCompanionContextAudioContent

- (CCSiriCompanionContextAudioContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v39 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"mediaCategories"];
    if (v10)
    {
      v11 = v10;
      v33 = v9;
      objc_opt_class();
      v38 = v8;
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v23 = 0;
        v14 = v11;
        v8 = v13;
        v9 = v33;
LABEL_21:

        goto LABEL_22;
      }

      selfCopy = self;
      v14 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        v31 = dictionaryCopy;
        while (2)
        {
          v19 = 0;
          v20 = v13;
          do
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v34 + 1) + 8 * v19);
            objc_opt_class();
            v22 = CCValidateIsInstanceOfExpectedClass();
            v13 = v20;

            if (!v22)
            {
              CCSetError();

              v23 = 0;
              v14 = v15;
              v8 = v13;
              self = selfCopy;
              v9 = v33;
              dictionaryCopy = v31;
              goto LABEL_21;
            }

            [v14 appendEnumValue:{objc_msgSend(v21, "unsignedIntValue")}];
            ++v19;
            v20 = v13;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v34 objects:v40 count:16];
          dictionaryCopy = v31;
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v8 = v13;
      self = selfCopy;
      v9 = v33;
    }

    else
    {
      v14 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionStatus"];
    v25 = v24;
    if (v24)
    {
      unsignedIntegerValue = [v24 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"localizedAppName"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingCount"];
    v23 = [[CCSiriCompanionContextAudioContent alloc] initWithAppBundleId:v9 mediaCategories:v14 subscriptionStatus:unsignedIntegerValue localizedAppName:v27 nowPlayingCount:v28 error:error];

    goto LABEL_21;
  }

  CCSetError();
  v23 = 0;
LABEL_22:

  v29 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_appBundleId)
  {
    appBundleId = [(CCSiriCompanionContextAudioContent *)self appBundleId];
    [v3 setObject:appBundleId forKeyedSubscript:@"appBundleId"];
  }

  if (self->_mediaCategories)
  {
    v5 = objc_opt_new();
    mediaCategories = [(CCSiriCompanionContextAudioContent *)self mediaCategories];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__CCSiriCompanionContextAudioContent_jsonDictionary__block_invoke;
    v13[3] = &unk_1E73E8EA0;
    v14 = v5;
    v7 = v5;
    [mediaCategories enumerateEnumValuesWithBlock:v13];

    [v3 setObject:v7 forKeyedSubscript:@"mediaCategories"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSiriCompanionContextAudioContent subscriptionStatus](self, "subscriptionStatus")}];
  [v3 setObject:v8 forKeyedSubscript:@"subscriptionStatus"];

  if (self->_localizedAppName)
  {
    localizedAppName = [(CCSiriCompanionContextAudioContent *)self localizedAppName];
    [v3 setObject:localizedAppName forKeyedSubscript:@"localizedAppName"];
  }

  if (self->_hasNowPlayingCount)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCSiriCompanionContextAudioContent nowPlayingCount](self, "nowPlayingCount")}];
    [v3 setObject:v10 forKeyedSubscript:@"nowPlayingCount"];
  }

  v11 = [v3 copy];

  return v11;
}

void __52__CCSiriCompanionContextAudioContent_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_appBundleId)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:56511 stringValue:self->_appBundleId];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_mediaCategories)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:56512 repeatedEnumValue:self->_mediaCategories];
    blockCopy[2](blockCopy, v6);
  }

  v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:56513 enumValue:self->_subscriptionStatus];
  blockCopy[2](blockCopy, v7);

  if (self->_localizedAppName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:56514 stringValue:self->_localizedAppName];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_hasNowPlayingCount)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:56515 int32Value:self->_nowPlayingCount];
    blockCopy[2](blockCopy, v9);
  }
}

- (NSString)localizedAppName
{
  v2 = [(NSString *)self->_localizedAppName copy];

  return v2;
}

- (NSString)appBundleId
{
  v2 = [(NSString *)self->_appBundleId copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] < *&v7[*MEMORY[0x1E6993AB0]])
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E6993AA8];
    v13 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v7[*v12])
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == 0;
      }

      if (!v14)
      {
        goto LABEL_62;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *v8;
        v19 = *&v7[v18];
        if (v19 == -1 || v19 >= *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v13] + v19);
        *&v7[v18] = v19 + 1;
        v17 |= (v20 & 0x7F) << v15;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v15 += 7;
        v21 = v16++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v12])
          {
            goto LABEL_61;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v12] = 1;
LABEL_17:
      v23 = *&v7[*v12];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

      if (v23)
      {
        goto LABEL_61;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            CCPBReaderAppendRepeatedEnumFieldValues();
            goto LABEL_48;
          }

LABEL_47:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v40 = objc_opt_class();
            NSStringFromClass(v40);
            selfCopy = self;
            v41 = v10;
            errorCopy = error;
            v44 = v43 = dataCopy;
            v45 = *&v7[*MEMORY[0x1E6993AA8]];
            v11 = CCSkipFieldErrorForMessage();

            v12 = MEMORY[0x1E6993AA8];
            dataCopy = v43;
            error = errorCopy;
            v10 = v41;
            self = selfCopy;
            goto LABEL_58;
          }

LABEL_48:
          v11 = 0;
          v12 = MEMORY[0x1E6993AA8];
          goto LABEL_58;
        }

        v37 = CCPBReaderReadStringNoCopy();
        v38 = 32;
      }

      else
      {
        if (v24 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v34 = *v8;
            v35 = *&v7[v34];
            if (v35 == -1 || v35 >= *&v7[*v9])
            {
              break;
            }

            v36 = *(*&v7[*v13] + v35);
            *&v7[v34] = v35 + 1;
            v33 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              goto LABEL_50;
            }

            v31 += 7;
            v21 = v32++ >= 9;
            if (v21)
            {
              LODWORD(v33) = 0;
              goto LABEL_52;
            }
          }

          *&v7[*v12] = 1;
LABEL_50:
          if (*&v7[*v12])
          {
            LODWORD(v33) = 0;
          }

LABEL_52:
          v11 = 0;
          self->_subscriptionStatus = v33;
LABEL_58:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          goto LABEL_62;
        }

        if (v24 != 4)
        {
          if (v24 == 5)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v28 = *v8;
              v29 = *&v7[v28];
              if (v29 == -1 || v29 >= *&v7[*v9])
              {
                break;
              }

              v30 = *(*&v7[*v13] + v29);
              *&v7[v28] = v29 + 1;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_54;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                LODWORD(v27) = 0;
                goto LABEL_56;
              }
            }

            *&v7[*v12] = 1;
LABEL_54:
            if (*&v7[*v12])
            {
              LODWORD(v27) = 0;
            }

LABEL_56:
            v11 = 0;
            self->_nowPlayingCount = v27;
            self->_hasNowPlayingCount = 1;
            goto LABEL_58;
          }

          goto LABEL_47;
        }

        v37 = CCPBReaderReadStringNoCopy();
        v38 = 48;
      }

      break;
    }

    v39 = *(&self->super.super.isa + v38);
    *(&self->super.super.isa + v38) = v37;

    v12 = MEMORY[0x1E6993AA8];
    v11 = 0;
    goto LABEL_58;
  }

  v10 = 0;
LABEL_61:
  v11 = 0;
LABEL_62:
  v46 = [v10 copy];
  mediaCategories = self->_mediaCategories;
  self->_mediaCategories = v46;

  if (v11)
  {
    CCSetError();
  }

  else
  {
    v48 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v54 = 1;
      goto LABEL_67;
    }

    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = *&v7[*v48];
    CCInvalidBufferErrorForMessage();
    v53 = v52 = dataCopy;
    CCSetError();

    dataCopy = v52;
  }

  v54 = 0;
LABEL_67:

  return v54;
}

- (CCSiriCompanionContextAudioContent)initWithAppBundleId:(id)id mediaCategories:(id)categories subscriptionStatus:(unsigned int)status localizedAppName:(id)name nowPlayingCount:(id)count error:(id *)error
{
  idCopy = id;
  categoriesCopy = categories;
  nameCopy = name;
  countCopy = count;
  v18 = objc_opt_new();
  if (!idCopy)
  {
    v20 = 0;
LABEL_5:
    selfCopy = self;
    if (categoriesCopy)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (!IsInstanceOfExpectedClass)
      {
        CCSetError();
        v25 = 0;
        v20 = v22;
        goto LABEL_23;
      }

      CCPBDataWriterWriteRepeatedUInt32Field();
      if (!status)
      {
LABEL_8:
        v20 = v22;
        if (nameCopy)
        {
LABEL_9:
          objc_opt_class();
          v23 = CCValidateIsInstanceOfExpectedClass();
          v24 = v20;

          if (!v23)
          {
            CCSetError();
            v25 = 0;
            v20 = v24;
            goto LABEL_23;
          }

          CCPBDataWriterWriteStringField();
          if (!countCopy)
          {
LABEL_11:
            v20 = v24;
LABEL_19:
            immutableData = [v18 immutableData];
            v25 = [v31 initWithData:immutableData error:error];

            self = v25;
            goto LABEL_24;
          }

          goto LABEL_17;
        }

LABEL_16:
        v24 = v20;
        if (!countCopy)
        {
          goto LABEL_11;
        }

LABEL_17:
        objc_opt_class();
        v27 = CCValidateIsInstanceOfExpectedClass();
        v20 = v24;

        if (v27)
        {
          [countCopy intValue];
          CCPBDataWriterWriteInt32Field();
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v22 = v20;
      if (!status)
      {
        goto LABEL_8;
      }
    }

    v26 = CCValidateEnumField();
    v20 = v22;

    if (!v26)
    {
LABEL_20:
      CCSetError();
      v25 = 0;
LABEL_23:
      self = selfCopy;
      goto LABEL_24;
    }

    CCPBDataWriterWriteUint32Field();
    if (nameCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v20 = 0;
  if (v19)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v25 = 0;
LABEL_24:

  return v25;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 9026) > 5u)
  {
    return 0;
  }

  else
  {
    return off_1E73E7C80[(identifier + 9026)];
  }
}

@end