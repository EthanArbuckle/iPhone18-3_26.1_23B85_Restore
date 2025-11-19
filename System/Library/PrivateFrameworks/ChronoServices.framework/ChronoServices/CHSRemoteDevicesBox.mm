@interface CHSRemoteDevicesBox
- (CHSRemoteDevicesBox)initWithCoder:(id)a3;
- (CHSRemoteDevicesBox)initWithDevices:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForEncoding;
@end

@implementation CHSRemoteDevicesBox

- (CHSRemoteDevicesBox)initWithDevices:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHSRemoteDevicesBox;
  v5 = [(CHSRemoteDevicesBox *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    devices = v5->_devices;
    v5->_devices = v6;
  }

  return v5;
}

- (void)prepareForEncoding
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [MEMORY[0x1E69C7360] encodeObject:self error:&v10];
  v4 = v10;
  archivedData = self->_archivedData;
  self->_archivedData = v3;

  if (v4)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [(CHSWidgetExtensionsBox *)v8 prepareForEncoding:v4];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (CHSRemoteDevicesBox)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHSRemoteDevicesBox;
  v5 = [(CHSRemoteDevicesBox *)&v14 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"data"])
    {
      devices = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      v13 = 0;
      v7 = [MEMORY[0x1E69C7360] decodeObjectOfClass:objc_opt_class() fromData:devices error:&v13];
      v8 = v13;
      if (v8)
      {
        [v4 failWithError:v8];
      }

      else if (v7)
      {
        objc_storeStrong(&v5->_devices, v7[2]);
      }
    }

    else
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v8 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v11 = [v4 decodeObjectOfClasses:v8 forKey:@"devices"];
      devices = v5->_devices;
      v5->_devices = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  archivedData = self->_archivedData;
  v6 = v4;
  if (archivedData)
  {
    [v4 encodeObject:archivedData forKey:@"data"];
  }

  else
  {
    [v4 encodeObject:self->_devices forKey:@"devices"];
  }
}

@end