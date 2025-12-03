@interface DOCServiceActionPopoverTrackerController
- (_TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController)init;
- (void)getFrameForRegion:(unint64_t)region completionBlock:(id)block;
- (void)getFrameForRegion:(unint64_t)region waitForNewThumbnail:(BOOL)thumbnail completionBlock:(id)block;
@end

@implementation DOCServiceActionPopoverTrackerController

- (void)getFrameForRegion:(unint64_t)region completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x90);
  selfCopy = self;
  v8(region, 1, thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ()partial apply, v7);
}

- (void)getFrameForRegion:(unint64_t)region waitForNewThumbnail:(BOOL)thumbnail completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ()partial apply;
  v8[4] = v7;
  selfCopy = self;

  DOCRunInMainThread(_:)();
}

- (_TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end