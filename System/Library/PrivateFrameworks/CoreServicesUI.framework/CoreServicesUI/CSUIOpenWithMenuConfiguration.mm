@interface CSUIOpenWithMenuConfiguration
- (BOOL)allowMenuWithNoApplications;
- (BOOL)requireOpenInPlace;
- (BOOL)showAppStoreMenuItem;
- (CSUIOpenWithMenuConfiguration)init;
- (id)copyWithZone:(void *)a3;
- (unint64_t)bindingPreferenceDisplayStyle;
- (unint64_t)representativeBundlePolicy;
- (void)setAllowMenuWithNoApplications:(BOOL)a3;
- (void)setBindingPreferenceDisplayStyle:(unint64_t)a3;
- (void)setRepresentativeBundlePolicy:(unint64_t)a3;
- (void)setRequireOpenInPlace:(BOOL)a3;
- (void)setShowAppStoreMenuItem:(BOOL)a3;
@end

@implementation CSUIOpenWithMenuConfiguration

- (BOOL)showAppStoreMenuItem
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 40));

  return v4;
}

- (void)setShowAppStoreMenuItem:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v5 = self;

  os_unfair_lock_lock((v4 + 40));
  *(v4 + 16) = a3;
  os_unfair_lock_unlock((v4 + 40));
}

- (BOOL)allowMenuWithNoApplications
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 17);
  os_unfair_lock_unlock((v2 + 40));

  return v4;
}

- (void)setAllowMenuWithNoApplications:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v5 = self;

  os_unfair_lock_lock((v4 + 40));
  *(v4 + 17) = a3;
  os_unfair_lock_unlock((v4 + 40));
}

- (BOOL)requireOpenInPlace
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 19);
  os_unfair_lock_unlock((v2 + 40));

  return v4;
}

- (void)setRequireOpenInPlace:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v5 = self;

  os_unfair_lock_lock((v4 + 40));
  *(v4 + 19) = a3;
  os_unfair_lock_unlock((v4 + 40));
}

- (unint64_t)bindingPreferenceDisplayStyle
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 40));

  return v4;
}

- (void)setBindingPreferenceDisplayStyle:(unint64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v5 = self;

  os_unfair_lock_lock((v4 + 40));
  *(v4 + 24) = a3;
  os_unfair_lock_unlock((v4 + 40));
}

- (unint64_t)representativeBundlePolicy
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 40));
  v4 = *(v2 + 32);
  os_unfair_lock_unlock((v2 + 40));

  return v4;
}

- (void)setRepresentativeBundlePolicy:(unint64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state);
  v5 = self;

  os_unfair_lock_lock((v4 + 40));
  *(v4 + 32) = a3;
  os_unfair_lock_unlock((v4 + 40));
}

- (CSUIOpenWithMenuConfiguration)init
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE550C0, &qword_2478DBB80);
  v3 = swift_allocObject();
  *(v3 + 40) = 0;
  *(v3 + 16) = 16843008;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConfiguration_state) = v3;
  v5.receiver = self;
  v5.super_class = CSUIOpenWithMenuConfiguration;
  return [(CSUIOpenWithMenuConfiguration *)&v5 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_2478C6F54(v6);

  __swift_project_boxed_opaque_existential_0Tm(v6, v6[3]);
  v4 = sub_2478D8E4C();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

@end