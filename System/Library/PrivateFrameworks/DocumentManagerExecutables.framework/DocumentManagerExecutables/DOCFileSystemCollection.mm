@interface DOCFileSystemCollection
- (BOOL)isGathering;
- (_TtC26DocumentManagerExecutables23DOCFileSystemCollection)init;
- (void)childChanged:(id)a3 in:(id)a4 for:(unsigned int)a5;
- (void)nodeChanged:(id)a3 for:(unsigned int)a4;
- (void)openSyncCompleted:(id)a3;
- (void)openSyncStarted:(id)a3;
- (void)setIsGathering:(BOOL)a3;
- (void)temporaryNodeDeleted:(id)a3;
@end

@implementation DOCFileSystemCollection

- (BOOL)isGathering
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsGathering:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering;
  swift_beginAccess();
  *(&self->super.isa + v5) = v3;
  if (v3)
  {
    *(swift_allocObject() + 16) = self;
    v6 = self;
    DOCRunInMainThread(_:)();
  }
}

- (_TtC26DocumentManagerExecutables23DOCFileSystemCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)childChanged:(id)a3 in:(id)a4 for:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  DOCFileSystemCollection.changed(child:in:for:)(v8, v9, a5);
}

- (void)nodeChanged:(id)a3 for:(unsigned int)a4
{
  v6 = a3;
  v7 = self;
  DOCFileSystemCollection.changed(_:for:)(v6, a4);
}

- (void)temporaryNodeDeleted:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFileSystemCollection.deleted(_:)(v4);
}

- (void)openSyncStarted:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFileSystemCollection.openSyncStarted(_:)(v4);
}

- (void)openSyncCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFileSystemCollection.openSyncCompleted(_:)(v4);
}

@end