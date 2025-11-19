@interface EKUICalendarResolutionResult
+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedEKUICalendar:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation EKUICalendarResolutionResult

+ (id)successWithResolvedEKUICalendar:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static EKUICalendarResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)a3
{
  type metadata accessor for EKUICalendar();
  v3 = sub_1000086E8();
  swift_getObjCClassMetadata();
  v4 = static EKUICalendarResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static EKUICalendarResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_1000087B8();
  __break(1u);
  return result;
}

- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_100008688();
  v6 = a4;
  isa = sub_100008678().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v8 = [(EKUICalendarResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end