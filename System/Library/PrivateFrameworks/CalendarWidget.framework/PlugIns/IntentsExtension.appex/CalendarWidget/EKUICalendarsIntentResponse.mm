@interface EKUICalendarsIntentResponse
- (EKUICalendarsIntentResponse)init;
- (EKUICalendarsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (EKUICalendarsIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation EKUICalendarsIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (EKUICalendarsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(EKUICalendarsIntentResponse *)self init];
  v8 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(EKUICalendarsIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (EKUICalendarsIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___EKUICalendarsIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  return [(EKUICalendarsIntentResponse *)&v3 init];
}

- (EKUICalendarsIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_100008688();
  }

  else
  {
    v3 = 0;
  }

  return EKUICalendarsIntentResponse.init(propertiesByName:)(v3);
}

@end