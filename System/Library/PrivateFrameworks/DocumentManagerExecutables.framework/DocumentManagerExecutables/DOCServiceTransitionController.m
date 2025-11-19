@interface DOCServiceTransitionController
- (_TtC26DocumentManagerExecutables30DOCServiceTransitionController)init;
- (void)getDisplayInformation:(BOOL)a3 withCompletionBlock:(id)a4;
- (void)setHasProgress:(BOOL)a3 loadingFractionCompleted:(double)a4 setIsIndeterminate:(BOOL)a5;
@end

@implementation DOCServiceTransitionController

- (void)setHasProgress:(BOOL)a3 loadingFractionCompleted:(double)a4 setIsIndeterminate:(BOOL)a5
{
  v9 = swift_allocObject();
  *(v9 + 16) = self;
  *(v9 + 24) = a3;
  *(v9 + 25) = a5;
  *(v9 + 32) = a4;
  v10 = self;
  DOCRunInMainThread(_:)();
}

- (void)getDisplayInformation:(BOOL)a3 withCompletionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ();
  *(v8 + 32) = v7;
  *(v8 + 40) = a3;
  v9 = self;

  DOCRunInMainThread(_:)();
}

- (_TtC26DocumentManagerExecutables30DOCServiceTransitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end