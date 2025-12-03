@interface CCPodcastContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCPodcastContent)initWithEntity:(id)entity entityType:(unsigned int)type error:(id *)error;
- (CCPodcastContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCPodcastPlaylist)playlist;
- (CCPodcastShow)show;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCPodcastContent

- (CCPodcastContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"show"];
    if (v9)
    {
      v20[0] = 0;
      v10 = [[CCPodcastShow alloc] initWithJSONDictionary:v9 error:v20];
      v11 = v20[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_15;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"playlist"];
    if (!v12)
    {
LABEL_10:
      if (v9)
      {
        v15 = v9;
        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      v10 = v9;
      if (v12)
      {
        v10 = v12;

        v16 = 2;
      }

      v17 = [[CCPodcastContent alloc] initWithEntity:v10 entityType:v16 error:error];
      goto LABEL_20;
    }

    v19 = 0;
    v13 = [[CCPodcastPlaylist alloc] initWithJSONDictionary:v12 error:&v19];
    v14 = v19;
    v10 = v14;
    if (v13 && !v14)
    {

      v12 = v13;
      goto LABEL_10;
    }

    CCSetError();

LABEL_15:
    v17 = 0;
LABEL_20:

    goto LABEL_21;
  }

  CCSetError();
  v17 = 0;
LABEL_21:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  entityType = self->_entityType;
  if (entityType == 1)
  {
    if (!self->_show)
    {
      goto LABEL_7;
    }

    show = [(CCPodcastContent *)self show];
    jsonDictionary = [show jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"show"];

    entityType = self->_entityType;
  }

  if (entityType == 2 && self->_playlist)
  {
    playlist = [(CCPodcastContent *)self playlist];
    jsonDictionary2 = [playlist jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"playlist"];
  }

LABEL_7:
  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_show)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42185 subMessageValue:self->_show];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_playlist)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42186 subMessageValue:self->_playlist];
    blockCopy[2](blockCopy, v6);
  }
}

- (CCPodcastPlaylist)playlist
{
  v2 = [(CCPodcastPlaylist *)self->_playlist copy];

  return v2;
}

- (CCPodcastShow)show
{
  v2 = [(CCPodcastShow *)self->_show copy];

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
    goto LABEL_33;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      break;
    }

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
          goto LABEL_34;
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
      goto LABEL_34;
    }

LABEL_21:
    if ((v20 >> 3) == 2)
    {
      v27 = [CCPodcastPlaylist alloc];
      v28 = CCPBReaderReadDataNoCopy();
      v41 = 0;
      v29 = [(CCItemMessage *)v27 initWithData:v28 error:&v41];
      v10 = v41;
      playlist = self->_playlist;
      self->_playlist = v29;

      if (!v10)
      {
        show = self->_show;
        self->_show = 0;

        self->_entityType = 2;
      }
    }

    else if ((v20 >> 3) == 1)
    {
      v22 = [CCPodcastShow alloc];
      v23 = CCPBReaderReadDataNoCopy();
      v42 = 0;
      v24 = [(CCItemMessage *)v22 initWithData:v23 error:&v42];
      v10 = v42;
      v25 = self->_show;
      self->_show = v24;

      if (!v10)
      {
        self->_entityType = 1;
        v26 = self->_playlist;
        self->_playlist = 0;
      }
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v10 = 0;
    }

    else
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
    }
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_33:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v39 = 1;
      goto LABEL_37;
    }

LABEL_34:
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = *&v6[*v9];
    v38 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v39 = 0;
LABEL_37:

  return v39;
}

- (CCPodcastContent)initWithEntity:(id)entity entityType:(unsigned int)type error:(id *)error
{
  entityCopy = entity;
  v9 = objc_opt_new();
  if (entityCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

LABEL_10:
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!entityCopy || type != 2)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v17 = 0;
  v12 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  data = [entityCopy data];
  CCPBDataWriterWriteDataField();

LABEL_9:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 23352) > 6u)
  {
    return 0;
  }

  else
  {
    return off_1E73E78C8[(identifier + 23352)];
  }
}

@end