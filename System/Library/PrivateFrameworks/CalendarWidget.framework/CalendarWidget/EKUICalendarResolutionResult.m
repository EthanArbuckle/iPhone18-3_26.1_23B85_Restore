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
  v5 = sub_1E48768CC(v4);

  return v5;
}

+ (id)disambiguationWithEKUICalendarsToDisambiguate:(id)a3
{
  type metadata accessor for EKUICalendar();
  v3 = sub_1E4878CAC();
  swift_getObjCClassMetadata();
  v4 = sub_1E4876980(v3);

  return v4;
}

+ (id)confirmationRequiredWithEKUICalendarToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1E4876B30(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_1E487903C();
  __break(1u);
  return result;
}

- (EKUICalendarResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_1E4878A8C();
  v6 = a4;
  v7 = sub_1E4878A7C();

  v10.receiver = self;
  v10.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v8 = [(EKUICalendarResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end