@interface NextEventComplicationConfigurationIntentResponse
- (NextEventComplicationConfigurationIntentResponse)init;
- (NextEventComplicationConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (NextEventComplicationConfigurationIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation NextEventComplicationConfigurationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (NextEventComplicationConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(NextEventComplicationConfigurationIntentResponse *)self init];
  v8 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(NextEventComplicationConfigurationIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (NextEventComplicationConfigurationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  return [(NextEventComplicationConfigurationIntentResponse *)&v3 init];
}

- (NextEventComplicationConfigurationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_1E4878A8C();
  }

  else
  {
    v3 = 0;
  }

  return NextEventComplicationConfigurationIntentResponse.init(propertiesByName:)(v3);
}

@end