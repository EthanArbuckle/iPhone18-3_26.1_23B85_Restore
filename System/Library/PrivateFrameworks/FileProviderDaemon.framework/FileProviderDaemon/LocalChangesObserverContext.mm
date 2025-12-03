@interface LocalChangesObserverContext
- (_TtC18FileProviderDaemon27LocalChangesObserverContext)init;
- (int64_t)suggestedBatchSize;
- (void)didUpdateItems:(id)items;
- (void)finishEnumeratingChangesUpToSyncAnchor:(id)anchor moreComing:(BOOL)coming;
- (void)finishEnumeratingWithError:(id)error;
@end

@implementation LocalChangesObserverContext

- (int64_t)suggestedBatchSize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer);
  if (([v2 respondsToSelector_] & 1) == 0)
  {
    return 200;
  }

  return [v2 suggestedBatchSize];
}

- (void)finishEnumeratingChangesUpToSyncAnchor:(id)anchor moreComing:(BOOL)coming
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_1CF02B218(anchorCopy, coming);
}

- (void)didUpdateItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v4 = sub_1CF9E6D48();
  selfCopy = self;
  sub_1CF4F7838(v4);
}

- (void)finishEnumeratingWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1CF4F7A10();
}

- (_TtC18FileProviderDaemon27LocalChangesObserverContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end