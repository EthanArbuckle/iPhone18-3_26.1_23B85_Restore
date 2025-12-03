@interface EKUICalendarResolutionResult
+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedEKUICalendar:(id)calendar;
+ (id)successWithResolvedObject:(id)object;
- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation EKUICalendarResolutionResult

+ (id)successWithResolvedEKUICalendar:(id)calendar
{
  swift_getObjCClassMetadata();
  calendarCopy = calendar;
  v5 = sub_1E48768CC(calendarCopy);

  return v5;
}

+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)disambiguate
{
  type metadata accessor for EKUICalendar();
  v3 = sub_1E4878CAC();
  swift_getObjCClassMetadata();
  v4 = sub_1E4876980(v3);

  return v4;
}

+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_1E4876B30(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_1E4878A8C();
  intentCopy = intent;
  v7 = sub_1E4878A7C();

  v10.receiver = self;
  v10.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v8 = [(EKUICalendarResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end