@interface DOCServiceActionPopoverTrackerController
- (_TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController)init;
- (void)getFrameForRegion:(unint64_t)a3 completionBlock:(id)a4;
- (void)getFrameForRegion:(unint64_t)a3 waitForNewThumbnail:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation DOCServiceActionPopoverTrackerController

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
  v6 = _Block_copy(a5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ()partial apply;
  v8[4] = v7;
  v9 = self;

  DOCRunInMainThread(_:)();
}

- (_TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end