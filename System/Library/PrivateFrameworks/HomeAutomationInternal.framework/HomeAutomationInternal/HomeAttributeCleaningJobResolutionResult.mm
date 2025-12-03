@interface HomeAttributeCleaningJobResolutionResult
+ (id)confirmationRequiredWithHomeAttributeCleaningJobToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithHomeAttributeCleaningJobsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedHomeAttributeCleaningJob:(id)job;
+ (id)successWithResolvedObject:(id)object;
- (HomeAttributeCleaningJobResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeCleaningJobResolutionResult

+ (id)successWithResolvedHomeAttributeCleaningJob:(id)job
{
  swift_getObjCClassMetadata();
  jobCopy = job;
  v5 = sub_252E30D28(jobCopy);

  return v5;
}

+ (id)disambiguationWithHomeAttributeCleaningJobsToDisambiguate:(id)disambiguate
{
  type metadata accessor for HomeAttributeCleaningJob();
  v3 = sub_252E37264();
  swift_getObjCClassMetadata();
  v4 = sub_252E30DDC(v3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeCleaningJobToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_252E30F40(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_252E37B04();
  __break(1u);
  return result;
}

- (HomeAttributeCleaningJobResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeCleaningJobResolutionResult();
  v8 = [(HomeAttributeCleaningJobResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end