@interface DOCServiceItemPopoverTrackerController
- (_TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController)init;
- (void)getFrameForRegion:(unint64_t)region completionBlock:(id)block;
- (void)getFrameForRegion:(unint64_t)region waitForNewThumbnail:(BOOL)thumbnail completionBlock:(id)block;
@end

@implementation DOCServiceItemPopoverTrackerController

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
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(region, thumbnail, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> (), v9);
}

- (_TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end