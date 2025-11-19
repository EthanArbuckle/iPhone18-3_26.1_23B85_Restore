@interface DOCServiceItemPopoverTrackerController
- (_TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController)init;
- (void)getFrameForRegion:(unint64_t)a3 completionBlock:(id)a4;
- (void)getFrameForRegion:(unint64_t)a3 waitForNewThumbnail:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation DOCServiceItemPopoverTrackerController

- (void)getFrameForRegion:(unint64_t)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x90);
  v9 = self;
  v8(a3, 1, thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ()partial apply, v7);
}

- (void)getFrameForRegion:(unint64_t)a3 waitForNewThumbnail:(BOOL)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(a3, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> (), v9);
}

- (_TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end