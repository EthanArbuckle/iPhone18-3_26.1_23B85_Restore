@interface _MRVoiceInputDeviceDescriptorProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSupportedFormats:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRVoiceInputDeviceDescriptorProtobuf

- (void)addSupportedFormats:(id)a3
{
  v4 = a3;
  supportedFormats = self->_supportedFormats;
  v8 = v4;
  if (!supportedFormats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedFormats;
    self->_supportedFormats = v6;

    v4 = v8;
    supportedFormats = self->_supportedFormats;
  }

  [(NSMutableArray *)supportedFormats addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVoiceInputDeviceDescriptorProtobuf;
  v4 = [(_MRVoiceInputDeviceDescriptorProtobuf *)&v8 description];
  v5 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"supportedFormats"];
  }

  defaultFormat = self->_defaultFormat;
  if (defaultFormat)
  {
    v12 = [(_MRAudioFormatSettingsProtobuf *)defaultFormat dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"defaultFormat"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsCount])
  {
    [v8 clearSupportedFormats];
    v4 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRVoiceInputDeviceDescriptorProtobuf *)self supportedFormatsAtIndex:i];
        [v8 addSupportedFormats:v7];
      }
    }
  }

  if (self->_defaultFormat)
  {
    [v8 setDefaultFormat:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{a3, v16}];
        [v5 addSupportedFormats:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(_MRAudioFormatSettingsProtobuf *)self->_defaultFormat copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((supportedFormats = self->_supportedFormats, !(supportedFormats | v4[2])) || -[NSMutableArray isEqual:](supportedFormats, "isEqual:")))
  {
    defaultFormat = self->_defaultFormat;
    if (defaultFormat | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4[2];
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
  v11 = v4[1];
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