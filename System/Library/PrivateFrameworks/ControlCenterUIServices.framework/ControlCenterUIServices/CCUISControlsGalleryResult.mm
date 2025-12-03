@interface CCUISControlsGalleryResult
- (CCUISControlsGalleryResult)init;
- (CCUISControlsGalleryResult)initWithControl:(id)control promptsForUserConfiguration:(BOOL)configuration;
- (NSString)description;
@end

@implementation CCUISControlsGalleryResult

- (CCUISControlsGalleryResult)initWithControl:(id)control promptsForUserConfiguration:(BOOL)configuration
{
  *(&self->super.isa + OBJC_IVAR___CCUISControlsGalleryResult_control) = control;
  *(&self->super.isa + OBJC_IVAR___CCUISControlsGalleryResult_promptsForUserConfiguration) = configuration;
  v6.receiver = self;
  v6.super_class = CCUISControlsGalleryResult;
  controlCopy = control;
  return [(CCUISControlsGalleryResult *)&v6 init];
}

- (NSString)description
{
  selfCopy = self;
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