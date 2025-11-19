@interface CHSControlInstanceIdentity
- (BOOL)isEqual:(id)a3;
- (CHSControlInstanceIdentity)init;
- (CHSControlInstanceIdentity)initWithControl:(id)a3 contentType:(unint64_t)a4 hostIdentifier:(id)a5 configurationIdentifier:(id)a6;
- (int64_t)hash;
@end

@implementation CHSControlInstanceIdentity

- (CHSControlInstanceIdentity)initWithControl:(id)a3 contentType:(unint64_t)a4 hostIdentifier:(id)a5 configurationIdentifier:(id)a6
{
  if (!a5)
  {
    v10 = 0;
    v12 = 0;
    if (a6)
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
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_195FA08B8();
LABEL_6:
  *(self + OBJC_IVAR___CHSControlInstanceIdentity_control) = a3;
  *(self + OBJC_IVAR___CHSControlInstanceIdentity_contentType) = a4;
  v15 = (self + OBJC_IVAR___CHSControlInstanceIdentity_hostIdentifier);
  *v15 = v10;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___CHSControlInstanceIdentity_configurationIdentifier);
  *v16 = v13;
  v16[1] = v14;
  v19.receiver = self;
  v19.super_class = CHSControlInstanceIdentity;
  v17 = a3;
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
  v2 = self;
  v3 = CHSControlInstanceIdentity.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CHSControlInstanceIdentity.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

@end