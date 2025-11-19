@interface MTActivityError
+ (id)withDescription:(id)a3;
- (_TtC18MobileTimerSupport15MTActivityError)initWithCoder:(id)a3;
- (_TtC18MobileTimerSupport15MTActivityError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation MTActivityError

+ (id)withDescription:(id)a3
{
  v3 = sub_22D81B2C8();
  v5 = sub_22D7CDE20(v3, v4);

  return v5;
}

- (_TtC18MobileTimerSupport15MTActivityError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  if (a5)
  {
    sub_22D81B168();
    v8 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
    *v8 = 0;
    v8[1] = 0;
    v9 = a3;
    v10 = sub_22D81B158();
  }

  else
  {
    v11 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
    *v11 = 0;
    v11[1] = 0;
    v12 = a3;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for MTActivityError();
  v13 = [(MTActivityError *)&v15 initWithDomain:a3 code:a4 userInfo:v10];

  return v13;
}

- (_TtC18MobileTimerSupport15MTActivityError)initWithCoder:(id)a3
{
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MTActivityError();
  v5 = a3;
  v6 = [(MTActivityError *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end