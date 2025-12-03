@interface DiscoverHomeIntentResponse
- (DiscoverHomeIntentResponse)init;
- (DiscoverHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (DiscoverHomeIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DiscoverHomeIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (DiscoverHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(DiscoverHomeIntentResponse *)self init];
  v8 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(DiscoverHomeIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (DiscoverHomeIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DiscoverHomeIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiscoverHomeIntentResponse();
  return [(DiscoverHomeIntentResponse *)&v3 init];
}

- (DiscoverHomeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_252E36E44();
  }

  else
  {
    v3 = 0;
  }

  return DiscoverHomeIntentResponse.init(propertiesByName:)(v3);
}

@end