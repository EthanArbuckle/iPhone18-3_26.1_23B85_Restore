@interface CNUICachingPosterArchiver
+ (CNUICachingPosterArchiver)sharedArchiver;
- (id)unarchiveConfigurationFromData:(id)data error:(id *)error;
- (void)releasePosterConfigurations;
@end

@implementation CNUICachingPosterArchiver

+ (CNUICachingPosterArchiver)sharedArchiver
{
  if (qword_1EB0C4A98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB0EDEB0;

  return v3;
}

- (id)unarchiveConfigurationFromData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = sub_1A34C9690();
  v9 = v8;

  sub_1A3452FA0(v7, v9);
  v11 = v10;

  sub_1A31EC234(v7, v9);

  return v11;
}

- (void)releasePosterConfigurations
{
  v2 = *(&self->super.isa + OBJC_IVAR___CNUICachingPosterArchiver_cache);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  [*(v2 + 16) removeAllObjects];
  os_unfair_lock_unlock((v2 + 24));
}

@end