@interface CHSControlInstanceIdentity
- (BOOL)isEqual:(id)equal;
- (CHSControlInstanceIdentity)init;
- (CHSControlInstanceIdentity)initWithControl:(id)control contentType:(unint64_t)type hostIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier;
- (int64_t)hash;
@end

@implementation CHSControlInstanceIdentity

- (CHSControlInstanceIdentity)initWithControl:(id)control contentType:(unint64_t)type hostIdentifier:(id)identifier configurationIdentifier:(id)configurationIdentifier
{
  if (!identifier)
  {
    v10 = 0;
    v12 = 0;
    if (configurationIdentifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v10 = sub_195FA08B8();
  v12 = v11;
  if (!configurationIdentifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_195FA08B8();
LABEL_6:
  *(self + OBJC_IVAR___CHSControlInstanceIdentity_control) = control;
  *(self + OBJC_IVAR___CHSControlInstanceIdentity_contentType) = type;
  v15 = (self + OBJC_IVAR___CHSControlInstanceIdentity_hostIdentifier);
  *v15 = v10;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___CHSControlInstanceIdentity_configurationIdentifier);
  *v16 = v13;
  v16[1] = v14;
  v19.receiver = self;
  v19.super_class = CHSControlInstanceIdentity;
  controlCopy = control;
  return [(CHSControlInstanceIdentity *)&v19 init];
}

- (CHSControlInstanceIdentity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSControlInstanceIdentity.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHSControlInstanceIdentity.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

@end