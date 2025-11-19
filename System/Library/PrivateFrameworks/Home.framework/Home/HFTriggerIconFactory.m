@interface HFTriggerIconFactory
+ (id)_iconIdentifierForTriggerType:(unint64_t)a3;
+ (id)iconDescriptorForTrigger:(id)a3;
+ (id)iconDescriptorForTriggerType:(unint64_t)a3;
@end

@implementation HFTriggerIconFactory

+ (id)iconDescriptorForTrigger:(id)a3
{
  v3 = [a3 hf_triggerType];

  return [HFTriggerIconFactory iconDescriptorForTriggerType:v3];
}

+ (id)iconDescriptorForTriggerType:(unint64_t)a3
{
  v3 = [HFTriggerIconFactory _iconIdentifierForTriggerType:a3];
  v4 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v3];

  return v4;
}

+ (id)_iconIdentifierForTriggerType:(unint64_t)a3
{
  if (a3 <= 8)
  {
    a1 = *off_277DF5D58[a3];
  }

  return a1;
}

@end