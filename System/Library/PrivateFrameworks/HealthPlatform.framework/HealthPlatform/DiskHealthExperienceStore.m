@interface DiskHealthExperienceStore
- (void)mergeExternalChanges;
@end

@implementation DiskHealthExperienceStore

- (void)mergeExternalChanges
{
  v2 = *self->mergeExternalChangesSubject;
  sub_2283F2234();
  sub_2283F2298(&unk_280DED300, sub_2283F2234);

  sub_22855CE1C();
}

@end