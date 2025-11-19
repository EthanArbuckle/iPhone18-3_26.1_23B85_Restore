@interface HMCharacteristicWriteAction(HFAdditions)
- (id)hf_affectedAccessoryProfiles;
- (id)hf_affectedAccessoryRepresentables;
@end

@implementation HMCharacteristicWriteAction(HFAdditions)

- (id)hf_affectedAccessoryProfiles
{
  if (qword_280E03A38 != -1)
  {
    dispatch_once(&qword_280E03A38, &__block_literal_global_27_10);
  }

  v1 = qword_280E03A40;

  return v1;
}

- (id)hf_affectedAccessoryRepresentables
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 characteristic];
  v3 = [v2 service];
  v4 = [v1 na_setWithSafeObject:v3];

  return v4;
}

@end