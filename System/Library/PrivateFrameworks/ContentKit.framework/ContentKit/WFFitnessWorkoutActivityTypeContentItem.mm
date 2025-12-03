@interface WFFitnessWorkoutActivityTypeContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
- (id)activityType;
- (id)activityTypeIdentifier;
@end

@implementation WFFitnessWorkoutActivityTypeContentItem

- (id)activityTypeIdentifier
{
  activityType = [(WFFitnessWorkoutActivityTypeContentItem *)self activityType];
  uniqueIdentifier = [activityType uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)activityType
{
  v3 = [WFObjectType typeWithClass:getFIUIWorkoutActivityTypeClass()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Workout Activity Types", @"Workout Activity Types");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Workout Activity Type", @"Workout Activity Type");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  getFIUIWorkoutActivityTypeClass();
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

@end