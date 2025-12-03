@interface DOCServiceTransitionController
- (_TtC26DocumentManagerExecutables30DOCServiceTransitionController)init;
- (void)getDisplayInformation:(BOOL)information withCompletionBlock:(id)block;
- (void)setHasProgress:(BOOL)progress loadingFractionCompleted:(double)completed setIsIndeterminate:(BOOL)indeterminate;
@end

@implementation DOCServiceTransitionController

- (void)setHasProgress:(BOOL)progress loadingFractionCompleted:(double)completed setIsIndeterminate:(BOOL)indeterminate
{
  v9 = swift_allocObject();
  *(v9 + 16) = self;
  *(v9 + 24) = progress;
  *(v9 + 25) = indeterminate;
  *(v9 + 32) = completed;
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

- (void)getDisplayInformation:(BOOL)information withCompletionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ();
  *(v8 + 32) = v7;
  *(v8 + 40) = information;
  selfCopy = self;

  DOCRunInMainThread(_:)();
}

- (_TtC26DocumentManagerExecutables30DOCServiceTransitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end