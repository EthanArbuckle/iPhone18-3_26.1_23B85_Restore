@interface CCUISControlsGalleryResult
- (CCUISControlsGalleryResult)init;
- (CCUISControlsGalleryResult)initWithControl:(id)a3 promptsForUserConfiguration:(BOOL)a4;
- (NSString)description;
@end

@implementation CCUISControlsGalleryResult

- (CCUISControlsGalleryResult)initWithControl:(id)a3 promptsForUserConfiguration:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR___CCUISControlsGalleryResult_control) = a3;
  *(&self->super.isa + OBJC_IVAR___CCUISControlsGalleryResult_promptsForUserConfiguration) = a4;
  v6.receiver = self;
  v6.super_class = CCUISControlsGalleryResult;
  v4 = a3;
  return [(CCUISControlsGalleryResult *)&v6 init];
}

- (NSString)description
{
  v2 = self;
  CCUISControlsGalleryResult.description.getter();

  v3 = sub_2442B4878();

  return v3;
}

- (CCUISControlsGalleryResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end