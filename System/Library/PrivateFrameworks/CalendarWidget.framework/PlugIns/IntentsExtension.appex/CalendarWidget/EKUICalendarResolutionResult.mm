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
  v5 = static EKUICalendarResolutionResult.success(with:)(calendarCopy);

  return v5;
}

+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)disambiguate
{
  type metadata accessor for EKUICalendar();
  v3 = sub_1000086E8();
  swift_getObjCClassMetadata();
  v4 = static EKUICalendarResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static EKUICalendarResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_100008688();
  intentCopy = intent;
  isa = sub_100008678().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v8 = [(EKUICalendarResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end