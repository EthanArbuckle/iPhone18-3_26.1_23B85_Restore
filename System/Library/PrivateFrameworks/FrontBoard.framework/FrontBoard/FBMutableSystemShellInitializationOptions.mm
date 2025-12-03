@interface FBMutableSystemShellInitializationOptions
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIndependentWatchdogPortName:(id)name;
- (void)setRegisterAdditionalServicesBlock:(id)block;
@end

@implementation FBMutableSystemShellInitializationOptions

- (void)setRegisterAdditionalServicesBlock:(id)block
{
  v4 = [block copy];
  registerServicesBlock = self->super._registerServicesBlock;
  self->super._registerServicesBlock = v4;
}

- (void)setIndependentWatchdogPortName:(id)name
{
  v4 = [name copy];
  independentWatchdogPortName = self->super._independentWatchdogPortName;
  self->super._independentWatchdogPortName = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FBSystemShellInitializationOptions alloc];

  return [(FBSystemShellInitializationOptions *)v4 _initWithOptions:self];
}

@end