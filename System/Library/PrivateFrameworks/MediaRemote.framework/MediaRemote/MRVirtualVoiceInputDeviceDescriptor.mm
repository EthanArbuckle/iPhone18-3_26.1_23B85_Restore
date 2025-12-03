@interface MRVirtualVoiceInputDeviceDescriptor
- (MRVirtualVoiceInputDeviceDescriptor)initWithData:(id)data;
- (MRVirtualVoiceInputDeviceDescriptor)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (_MRVoiceInputDeviceDescriptorProtobuf)protobuf;
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MRVirtualVoiceInputDeviceDescriptor

- (MRVirtualVoiceInputDeviceDescriptor)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[_MRVoiceInputDeviceDescriptorProtobuf alloc] initWithData:dataCopy];

  v6 = [(MRVirtualVoiceInputDeviceDescriptor *)self initWithProtobuf:v5];
  return v6;
}

- (MRVirtualVoiceInputDeviceDescriptor)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = MRVirtualVoiceInputDeviceDescriptor;
  v5 = [(MRVirtualVoiceInputDeviceDescriptor *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([protobufCopy supportedFormatsCount])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = [protobufCopy supportedFormatsAtIndex:v7];
        v10 = MEMORY[0x1E696AE40];
        formatSettingsPlistData = [v9 formatSettingsPlistData];
        v12 = [v10 propertyListWithData:formatSettingsPlistData options:0 format:0 error:0];

        if (v12)
        {
          [v6 addObject:v12];
        }

        v7 = v8;
      }

      while ([protobufCopy supportedFormatsCount] > v8++);
    }

    objc_storeStrong(&v5->_supportedFormats, v6);
    defaultFormat = [protobufCopy defaultFormat];
    if ([defaultFormat hasFormatSettingsPlistData])
    {
      v15 = MEMORY[0x1E696AE40];
      formatSettingsPlistData2 = [defaultFormat formatSettingsPlistData];
      v17 = [v15 propertyListWithData:formatSettingsPlistData2 options:0 format:0 error:0];
      defaultFormat = v5->_defaultFormat;
      v5->_defaultFormat = v17;
    }
  }

  return v5;
}

- (NSData)data
{
  protobuf = [(MRVirtualVoiceInputDeviceDescriptor *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRVoiceInputDeviceDescriptorProtobuf)protobuf
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_MRVoiceInputDeviceDescriptorProtobuf);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_supportedFormats;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:*(*(&v15 + 1) + 8 * i) format:200 options:0 error:{0, v15}];
        v10 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
        [(_MRAudioFormatSettingsProtobuf *)v10 setFormatSettingsPlistData:v9];
        [(_MRVoiceInputDeviceDescriptorProtobuf *)v3 addSupportedFormats:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_defaultFormat format:200 options:0 error:0];
  v12 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
  [(_MRAudioFormatSettingsProtobuf *)v12 setFormatSettingsPlistData:v11];
  [(_MRVoiceInputDeviceDescriptorProtobuf *)v3 setDefaultFormat:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRVirtualVoiceInputDeviceDescriptor *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRVirtualVoiceInputDeviceDescriptor *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = objc_alloc_init(class);
  v6 = [(NSArray *)self->_supportedFormats copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_defaultFormat copy];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end