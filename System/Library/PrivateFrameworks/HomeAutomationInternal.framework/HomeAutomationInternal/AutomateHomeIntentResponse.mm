@interface AutomateHomeIntentResponse
- (AutomateHomeIntentResponse)init;
- (AutomateHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (AutomateHomeIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation AutomateHomeIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (AutomateHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(AutomateHomeIntentResponse *)self init];
  v8 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(AutomateHomeIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (AutomateHomeIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___AutomateHomeIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutomateHomeIntentResponse();
  return [(AutomateHomeIntentResponse *)&v3 init];
}

- (AutomateHomeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_252E36E44();
  }

  else
  {
    v3 = 0;
  }

  return AutomateHomeIntentResponse.init(propertiesByName:)(v3);
}

@end