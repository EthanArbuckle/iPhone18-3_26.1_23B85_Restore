@interface PDRActiveDeviceAssertion_Impl
- (BOOL)isActive;
- (PDRActiveDeviceAssertion_Impl)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PDRActiveDeviceAssertion_Impl

- (BOOL)isActive
{
  v2 = one-time initialization token for instance;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *(&selfCopy->super.super.isa + OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_);
  v5 = *(&selfCopy->super._isActive + OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_);

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v4) = RegistryCrux.isAssertionActive(identifier:)(v6);

  return v4 & 1;
}

- (void)invalidate
{
  v2 = OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid;
  if (*(&self->super.super.isa + OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid) == 1)
  {
    v4 = one-time initialization token for instance;
    selfCopy = self;
    v9 = selfCopy;
    if (v4 != -1)
    {
      swift_once();
      selfCopy = v9;
    }

    v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_);
    v7 = *(&selfCopy->super._isActive + OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_);

    v8._countAndFlagsBits = v6;
    v8._object = v7;
    RegistryCrux.invalidateSwitchAssertion(identifier:)(v8);

    *(&self->super.super.isa + v2) = 0;
  }
}

- (void)dealloc
{
  selfCopy = self;
  [(PDRActiveDeviceAssertion_Impl *)selfCopy invalidate];
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ActiveDeviceAssertion_Impl();
  [(PDRActiveDeviceAssertion_Impl *)&v3 dealloc];
}

- (PDRActiveDeviceAssertion_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end