@interface LunarDateComplicationConfigurationIntentResponse
- (LunarDateComplicationConfigurationIntentResponse)init;
- (LunarDateComplicationConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (LunarDateComplicationConfigurationIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation LunarDateComplicationConfigurationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (LunarDateComplicationConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(LunarDateComplicationConfigurationIntentResponse *)self init];
  v8 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(LunarDateComplicationConfigurationIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (LunarDateComplicationConfigurationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  return [(LunarDateComplicationConfigurationIntentResponse *)&v3 init];
}

- (LunarDateComplicationConfigurationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_1E4878A8C();
  }

  else
  {
    v3 = 0;
  }

  return LunarDateComplicationConfigurationIntentResponse.init(propertiesByName:)(v3);
}

@end