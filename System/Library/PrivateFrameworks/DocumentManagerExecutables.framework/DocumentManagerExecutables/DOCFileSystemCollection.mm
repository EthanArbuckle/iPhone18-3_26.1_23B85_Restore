@interface DOCFileSystemCollection
- (BOOL)isGathering;
- (_TtC26DocumentManagerExecutables23DOCFileSystemCollection)init;
- (void)childChanged:(id)changed in:(id)in for:(unsigned int)for;
- (void)nodeChanged:(id)changed for:(unsigned int)for;
- (void)openSyncCompleted:(id)completed;
- (void)openSyncStarted:(id)started;
- (void)setIsGathering:(BOOL)gathering;
- (void)temporaryNodeDeleted:(id)deleted;
@end

@implementation DOCFileSystemCollection

- (BOOL)isGathering
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsGathering:(BOOL)gathering
{
  gatheringCopy = gathering;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering;
  swift_beginAccess();
  *(&self->super.isa + v5) = gatheringCopy;
  if (gatheringCopy)
  {
    *(swift_allocObject() + 16) = self;
    selfCopy = self;
    DOCRunInMainThread(_:)();
  }
}

- (_TtC26DocumentManagerExecutables23DOCFileSystemCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)childChanged:(id)changed in:(id)in for:(unsigned int)for
{
  changedCopy = changed;
  inCopy = in;
  selfCopy = self;
  DOCFileSystemCollection.changed(child:in:for:)(changedCopy, inCopy, for);
}

- (void)nodeChanged:(id)changed for:(unsigned int)for
{
  changedCopy = changed;
  selfCopy = self;
  DOCFileSystemCollection.changed(_:for:)(changedCopy, for);
}

- (void)temporaryNodeDeleted:(id)deleted
{
  deletedCopy = deleted;
  selfCopy = self;
  DOCFileSystemCollection.deleted(_:)(deletedCopy);
}

- (void)openSyncStarted:(id)started
{
  startedCopy = started;
  selfCopy = self;
  DOCFileSystemCollection.openSyncStarted(_:)(startedCopy);
}

- (void)openSyncCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  DOCFileSystemCollection.openSyncCompleted(_:)(completedCopy);
}

@end