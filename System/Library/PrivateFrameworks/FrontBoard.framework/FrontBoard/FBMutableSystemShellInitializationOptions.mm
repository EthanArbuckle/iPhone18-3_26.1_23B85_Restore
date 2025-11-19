@interface FBMutableSystemShellInitializationOptions
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIndependentWatchdogPortName:(id)a3;
- (void)setRegisterAdditionalServicesBlock:(id)a3;
@end

@implementation FBMutableSystemShellInitializationOptions

- (void)setRegisterAdditionalServicesBlock:(id)a3
{
  v4 = [a3 copy];
  registerServicesBlock = self->super._registerServicesBlock;
  self->super._registerServicesBlock = v4;
}

- (void)setIndependentWatchdogPortName:(id)a3
{
  v4 = [a3 copy];
  independentWatchdogPortName = self->super._independentWatchdogPortName;
  self->super._independentWatchdogPortName = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FBSystemShellInitializationOptions alloc];

  return [(FBSystemShellInitializationOptions *)v4 _initWithOptions:self];
}

@end