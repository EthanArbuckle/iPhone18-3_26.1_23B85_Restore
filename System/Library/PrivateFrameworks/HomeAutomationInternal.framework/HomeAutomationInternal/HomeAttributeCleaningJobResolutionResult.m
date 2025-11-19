@interface HomeAttributeCleaningJobResolutionResult
+ (id)confirmationRequiredWithHomeAttributeCleaningJobToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithHomeAttributeCleaningJobsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedHomeAttributeCleaningJob:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (HomeAttributeCleaningJobResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeAttributeCleaningJobResolutionResult

+ (id)successWithResolvedHomeAttributeCleaningJob:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E30D28(v4);

  return v5;
}

+ (id)disambiguationWithHomeAttributeCleaningJobsToDisambiguate:(id)a3
{
  type metadata accessor for HomeAttributeCleaningJob();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E30DDC(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeCleaningJobToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_252E30F40(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (HomeAttributeCleaningJobResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeCleaningJobResolutionResult();
  v8 = [(HomeAttributeCleaningJobResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end