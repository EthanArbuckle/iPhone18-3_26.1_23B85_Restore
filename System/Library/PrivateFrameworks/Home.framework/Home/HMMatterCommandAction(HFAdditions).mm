@interface HMMatterCommandAction(HFAdditions)
- (id)hf_affectedAccessoryProfiles;
@end

@implementation HMMatterCommandAction(HFAdditions)

- (id)hf_affectedAccessoryProfiles
{
  if (qword_280E03A78 != -1)
  {
    dispatch_once(&qword_280E03A78, &__block_literal_global_43_3);
  }

  v1 = qword_280E03A80;

  return v1;
}

@end