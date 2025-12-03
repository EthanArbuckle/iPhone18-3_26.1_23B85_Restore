@interface IMDFamilyManager
+ (id)sharedManager;
- (void)familyHandlesWithCompletion:(id)completion;
@end

@implementation IMDFamilyManager

+ (id)sharedManager
{
  if (qword_28141F250 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F258;

  return v3;
}

- (void)familyHandlesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___IMDFamilyManager_processingQueue);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22B79C298;
  *(v7 + 24) = v5;
  selfCopy = self;

  sub_22B7DAF48();
}

@end