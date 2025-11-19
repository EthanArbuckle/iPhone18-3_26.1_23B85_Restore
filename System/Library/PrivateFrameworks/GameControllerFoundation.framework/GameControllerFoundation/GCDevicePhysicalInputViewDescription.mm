@interface GCDevicePhysicalInputViewDescription
- (GCDevicePhysicalInputViewDescription)init;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GCDevicePhysicalInputViewDescription

- (GCDevicePhysicalInputViewDescription)init
{
  v3.receiver = self;
  v3.super_class = GCDevicePhysicalInputViewDescription;
  return [(GCDevicePhysicalInputViewDescription *)&v3 init];
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  additionalConfiguration = self->_additionalConfiguration;
  if (!additionalConfiguration)
  {
    v8 = objc_opt_new();
    v9 = self->_additionalConfiguration;
    self->_additionalConfiguration = v8;

    additionalConfiguration = self->_additionalConfiguration;
  }

  [(NSMutableDictionary *)additionalConfiguration setValue:v10 forUndefinedKey:v6];
}

@end