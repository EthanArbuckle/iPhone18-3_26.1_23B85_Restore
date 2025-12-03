@interface BlastDoorValidatorContext
- (BlastDoorValidatorContext)init;
- (NSString)description;
- (id)initForBusinessChat:(BOOL)chat;
@end

@implementation BlastDoorValidatorContext

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorValidatorContext_validatorContext);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorValidatorContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForBusinessChat:(BOOL)chat
{
  v4 = type metadata accessor for _ObjCValidatorContextWrapper();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = chat;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(BlastDoorValidatorContext *)&v8 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

@end