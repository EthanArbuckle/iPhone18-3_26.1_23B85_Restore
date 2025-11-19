@interface HMShortcutAction(HFAdditions)
- (id)hf_affectedAccessoryProfiles;
- (id)hf_affectedAccessoryRepresentables;
@end

@implementation HMShortcutAction(HFAdditions)

- (id)hf_affectedAccessoryProfiles
{
  if (qword_280E03A58 != -1)
  {
    dispatch_once(&qword_280E03A58, &__block_literal_global_35_4);
  }

  v1 = qword_280E03A60;

  return v1;
}

- (id)hf_affectedAccessoryRepresentables
{
  if (qword_280E03A68 != -1)
  {
    dispatch_once(&qword_280E03A68, &__block_literal_global_39_3);
  }

  v1 = qword_280E03A70;

  return v1;
}

@end