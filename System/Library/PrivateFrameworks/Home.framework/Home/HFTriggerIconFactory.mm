@interface HFTriggerIconFactory
+ (id)_iconIdentifierForTriggerType:(unint64_t)type;
+ (id)iconDescriptorForTrigger:(id)trigger;
+ (id)iconDescriptorForTriggerType:(unint64_t)type;
@end

@implementation HFTriggerIconFactory

+ (id)iconDescriptorForTrigger:(id)trigger
{
  hf_triggerType = [trigger hf_triggerType];

  return [HFTriggerIconFactory iconDescriptorForTriggerType:hf_triggerType];
}

+ (id)iconDescriptorForTriggerType:(unint64_t)type
{
  v3 = [HFTriggerIconFactory _iconIdentifierForTriggerType:type];
  v4 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v3];

  return v4;
}

+ (id)_iconIdentifierForTriggerType:(unint64_t)type
{
  if (type <= 8)
  {
    self = *off_277DF5D58[type];
  }

  return self;
}

@end