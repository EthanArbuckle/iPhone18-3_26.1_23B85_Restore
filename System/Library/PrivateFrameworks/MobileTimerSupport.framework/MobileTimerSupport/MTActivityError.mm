@interface MTActivityError
+ (id)withDescription:(id)description;
- (_TtC18MobileTimerSupport15MTActivityError)initWithCoder:(id)coder;
- (_TtC18MobileTimerSupport15MTActivityError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation MTActivityError

+ (id)withDescription:(id)description
{
  v3 = sub_22D81B2C8();
  v5 = sub_22D7CDE20(v3, v4);

  return v5;
}

- (_TtC18MobileTimerSupport15MTActivityError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  if (info)
  {
    sub_22D81B168();
    v8 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
    *v8 = 0;
    v8[1] = 0;
    domainCopy = domain;
    v10 = sub_22D81B158();
  }

  else
  {
    v11 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
    *v11 = 0;
    v11[1] = 0;
    domainCopy2 = domain;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for MTActivityError();
  v13 = [(MTActivityError *)&v15 initWithDomain:domain code:code userInfo:v10];

  return v13;
}

- (_TtC18MobileTimerSupport15MTActivityError)initWithCoder:(id)coder
{
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MTActivityError();
  coderCopy = coder;
  v6 = [(MTActivityError *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end