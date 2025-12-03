@interface GCDevicePhysicalInputViewDescription
- (GCDevicePhysicalInputViewDescription)init;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GCDevicePhysicalInputViewDescription

- (GCDevicePhysicalInputViewDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputViewDescription;
  return [(GCDevicePhysicalInputViewDescription *)&v3 init];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  additionalConfiguration = self->_additionalConfiguration;
  if (!additionalConfiguration)
  {
    v8 = objc_opt_new();
    v9 = self->_additionalConfiguration;
    self->_additionalConfiguration = v8;

    additionalConfiguration = self->_additionalConfiguration;
  }

  [(NSMutableDictionary *)additionalConfiguration setValue:valueCopy forUndefinedKey:keyCopy];
}

@end