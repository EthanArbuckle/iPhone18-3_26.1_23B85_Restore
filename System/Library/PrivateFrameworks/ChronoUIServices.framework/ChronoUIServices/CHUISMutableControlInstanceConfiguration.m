@interface CHUISMutableControlInstanceConfiguration
- (CHUISMutableControlInstanceConfiguration)init;
- (id)copyWithZone:(void *)a3;
- (uint64_t)preferredColorScheme;
- (void)setLaunchOrigin:(id)a3;
- (void)setPreferredColorScheme:(unint64_t)a3;
@end

@implementation CHUISMutableControlInstanceConfiguration

- (uint64_t)preferredColorScheme
{
  if (*(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16))
  {
    return 0;
  }

  else
  {
    return *(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  }
}

- (CHUISMutableControlInstanceConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CHUISMutableControlInstanceConfiguration;
  return [(CHUISControlInstanceConfiguration *)&v3 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v4 = *(&self->super.super.isa + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v5 = *&self->super._configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v6 = self->super._configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8];
  v8 = *&self->super._configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16];
  v7 = *&self->super._configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24];
  v9 = objc_allocWithZone(CHUISControlInstanceConfiguration);

  v10 = [v9 init];
  v11 = &v10[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v12 = *&v10[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32];
  *v11 = v3;
  v11[1] = v4;
  *(v11 + 1) = v5;
  v11[16] = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v7;

  return v10;
}

- (void)setPreferredColorScheme:(unint64_t)a3
{
  v3 = self + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *(v3 + 1) = a3;
  v3[16] = a3 == 0;
}

- (void)setLaunchOrigin:(id)a3
{
  if (a3)
  {
    v4 = sub_1D9327F84();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = self + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  v7 = *&self->super._configuration[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24];
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
}

@end