@interface _MRVoiceInputDeviceDescriptorProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSupportedFormats:(id)formats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRVoiceInputDeviceDescriptorProtobuf

- (void)addSupportedFormats:(id)formats
{
  formatsCopy = formats;
  supportedFormats = self->_supportedFormats;
  v8 = formatsCopy;
  if (!supportedFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedFormats;
    self->_supportedFormats = v6;

    formatsCopy = v8;
    supportedFormats = self->_supportedFormats;
  }

  [(NSMutableArray *)supportedFormats addObject:formatsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVoiceInputDeviceDescriptorProtobuf;
  v4 = [(_MRVoiceInputDeviceDescriptorProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRVoiceInputDeviceDescriptorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_supportedFormats count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_supportedFormats, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_supportedFormats;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"supportedFormats"];
  }

  defaultFormat = self->_defaultFormat;
  if (defaultFormat)
  {
    dictionaryRepresentation2 = [(_MRAudioFormatSettingsProtobuf *)defaultFormat dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"defaultFormat"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_supportedFormats;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_defaultFormat)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsCount])
  {
    [toCopy clearSupportedFormats];
    supportedFormatsCount = [(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsCount];
    if (supportedFormatsCount)
    {
      v5 = supportedFormatsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsAtIndex:i];
        [toCopy addSupportedFormats:v7];
      }
    }
  }

  if (self->_defaultFormat)
  {
    [toCopy setDefaultFormat:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_supportedFormats;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{zone, v16}];
        [v5 addSupportedFormats:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(_MRAudioFormatSettingsProtobuf *)self->_defaultFormat copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((supportedFormats = self->_supportedFormats, !(supportedFormats | equalCopy[2])) || -[NSMutableArray isEqual:](supportedFormats, "isEqual:")))
  {
    defaultFormat = self->_defaultFormat;
    if (defaultFormat | equalCopy[1])
    {
      v7 = [(_MRAudioFormatSettingsProtobuf *)defaultFormat isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRVoiceInputDeviceDescriptorProtobuf *)self addSupportedFormats:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  defaultFormat = self->_defaultFormat;
  v11 = fromCopy[1];
  if (defaultFormat)
  {
    if (v11)
    {
      [(_MRAudioFormatSettingsProtobuf *)defaultFormat mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRVoiceInputDeviceDescriptorProtobuf *)self setDefaultFormat:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end