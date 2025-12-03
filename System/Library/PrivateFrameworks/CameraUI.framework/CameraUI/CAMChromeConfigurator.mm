@interface CAMChromeConfigurator
- (BOOL)isFlashSupported;
- (BOOL)isLensPositionLockedByUser;
- (BOOL)isTorchSupported;
- (BOOL)isTrackingLensPositionSlider;
- (CAMChromeConfigurator)init;
- (CAMChromeConfigurator)initWithEventHandler:(id)handler captureGraphConfiguration:(id)configuration;
- (CAMDynamicShutterControl)shutterControl;
- (CGRect)chromeSidebarFrame;
- (CGRect)collapsedTopBarFrame;
- (int64_t)hdrMode;
- (void)performChanges:(id)changes;
- (void)removeThumbnailImage;
- (void)setActivePrimaryConstituentDeviceType:(int64_t)type;
- (void)setAvailableCaptureModeRawValues:(id)values;
- (void)setCaptureGraphConfiguration:(id)configuration;
- (void)setDepthEffectSuggestionButtonMode:(int64_t)mode;
- (void)setDynamicShutterShapeOpacity:(double)opacity;
- (void)setDynamicShutterShowDragHandle:(BOOL)handle;
- (void)setFilterItemDisplayNames:(id)names;
- (void)setFilterThumbnailContents:(id)contents;
- (void)setFlashMode:(int64_t)mode;
- (void)setIsAutoMacroButtonVisible:(BOOL)visible;
- (void)setIsLensPositionLockedByUser:(BOOL)user;
- (void)setIsLensPositionSupported:(BOOL)supported;
- (void)setIsSemanticStylesSupported:(BOOL)supported;
- (void)setIsSmartStyleCustomized:(BOOL)customized;
- (void)setIsSmartStyleDisabled:(BOOL)disabled;
- (void)setIsSmartStylesSupported:(BOOL)supported;
- (void)setIsTorchActive:(BOOL)active;
- (void)setIsTorchCurrentlyUnavailable:(BOOL)unavailable;
- (void)setIsTorchSupported:(BOOL)supported;
- (void)setLensPosition:(double)position;
- (void)setMacroMode:(int64_t)mode;
- (void)setNightModeDurationMapping:(id)mapping;
- (void)setOverscanOverlayAlpha:(double)alpha duration:(double)duration;
- (void)setSemanticStylePreset:(int64_t)preset;
- (void)setSharedLibraryEnabled:(BOOL)enabled mode:(int64_t)mode;
- (void)setShowTorchInTopBarForAllStates:(BOOL)states;
- (void)setSmartStyleCastIntensity:(double)intensity;
- (void)setSmartStyleCastType:(int64_t)type;
- (void)setSmartStyleDPadDefaultValue:(CGPoint)value;
- (void)setSmartStyleDPadValue:(CGPoint)value;
- (void)setSmartStyleIsUsersSystemStyle:(BOOL)style;
- (void)setSmartStylePresetType:(int64_t)type;
- (void)setSupportedVideoFormatsRawValues:(id)values;
- (void)setTorchMode:(int64_t)mode;
- (void)showControlPanel;
- (void)showSmartStyleExpanded;
- (void)updateThumbnailImage:(id)image uuid:(id)uuid animated:(BOOL)animated;
@end

@implementation CAMChromeConfigurator

- (CAMChromeConfigurator)initWithEventHandler:(id)handler captureGraphConfiguration:(id)configuration
{
  handlerCopy = handler;
  v6 = sub_1A397D9F8(handlerCopy, configuration);

  return v6;
}

- (void)performChanges:(id)changes
{
  v4 = _Block_copy(changes);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A397E04C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)setAvailableCaptureModeRawValues:(id)values
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = sub_1A3A2ED80();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2ED70();
  (*(v11 + 16))(v9, v13, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1A397BCBC(v9, v7);
  sub_1A3979908(v7, self, KeyPath, v15);
  sub_1A388F740(v9, &qword_1EB0FF728);
  (*(v11 + 8))(v13, v10);
}

- (void)setCaptureGraphConfiguration:(id)configuration
{
  swift_getKeyPath();
  swift_getKeyPath();
  configurationCopy = configuration;
  selfCopy = self;

  sub_1A3979764(configuration, selfCopy);
}

- (int64_t)hdrMode
{
  v2 = self + OBJC_IVAR___CAMChromeConfigurator___hdrMode;
  swift_beginAccess();
  if (v2[8])
  {
    return 1;
  }

  else
  {
    return *v2;
  }
}

- (void)updateThumbnailImage:(id)image uuid:(id)uuid animated:(BOOL)animated
{
  sub_1A3A31850();
  imageCopy = image;
  selfCopy = self;
  sub_1A3970674(image);
}

- (void)removeThumbnailImage
{
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F070();
}

- (void)setNightModeDurationMapping:(id)mapping
{
  v4 = *&mapping.var0;
  v5 = *&mapping.var1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3979F04(v4, v5, 0, self);
}

- (void)setOverscanOverlayAlpha:(double)alpha duration:(double)duration
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3979F04(*&alpha, *&duration, 0, self);
}

- (void)setSharedLibraryEnabled:(BOOL)enabled mode:(int64_t)mode
{
  enabledCopy = enabled;
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;

  sub_1A397A054(enabledCopy, mode, selfCopy);
}

- (CAMDynamicShutterControl)shutterControl
{
  v2 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  v3 = *(v2 + 1088);
  if (v3)
  {
    v4 = *(v2 + 1096);
    selfCopy = self;
    v6 = sub_1A38C048C(v3, v4);
    v7 = v3(v6);
    sub_1A3671090(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSupportedVideoFormatsRawValues:(id)values
{
  sub_1A38E805C(0, &qword_1ED998538);
  v4 = sub_1A3A319A0();
  selfCopy = self;
  sub_1A3971A08(v4);
}

- (void)showControlPanel
{
  selfCopy = self;
  sub_1A38EDFE0(0x23uLL, 0, 0, 1);
}

- (CGRect)chromeSidebarFrame
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = v3[11];

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)collapsedTopBarFrame
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v5 = v3[28];
  v6 = v3[29];
  v7 = v3[30];
  v8 = v3[31];

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)isFlashSupported
{
  selfCopy = self;
  v3 = sub_1A39726E4();

  return v3 & 1;
}

- (void)setFlashMode:(int64_t)mode
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 616);
  sub_1A3A2EA60();
  v8 = sub_1A39F6FA8(mode);
  sub_1A391C264(v8, v7);
}

- (void)setIsTorchSupported:(BOOL)supported
{
  selfCopy = self;
  sub_1A3972A74(supported);
}

- (BOOL)isTorchSupported
{
  selfCopy = self;
  v3 = sub_1A3972CA0();

  return v3 & 1;
}

- (void)setShowTorchInTopBarForAllStates:(BOOL)states
{
  selfCopy = self;
  sub_1A3972E04(states);
}

- (void)setIsTorchActive:(BOOL)active
{
  selfCopy = self;
  sub_1A3973030(active);
}

- (void)setIsTorchCurrentlyUnavailable:(BOOL)unavailable
{
  selfCopy = self;
  sub_1A397325C(unavailable);
}

- (void)setTorchMode:(int64_t)mode
{
  selfCopy = self;
  sub_1A3973488(mode);
}

- (void)setIsSemanticStylesSupported:(BOOL)supported
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 936);
  sub_1A3A2EA60();
  sub_1A3918D10(supported, v7);
}

- (void)setSemanticStylePreset:(int64_t)preset
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 936);
  sub_1A3A2EA60();
  sub_1A3918E24(preset, v7);
}

- (void)setIsSmartStylesSupported:(BOOL)supported
{
  selfCopy = self;
  sub_1A39739C0(supported);
}

- (void)setSmartStyleDPadValue:(CGPoint)value
{
  y = value.y;
  x = value.x;
  selfCopy = self;
  sub_1A3973BEC(x, y);
}

- (void)setSmartStyleDPadDefaultValue:(CGPoint)value
{
  y = value.y;
  x = value.x;
  selfCopy = self;
  sub_1A3973E2C(x, y);
}

- (void)setSmartStyleCastType:(int64_t)type
{
  selfCopy = self;
  sub_1A397406C(type);
}

- (void)setSmartStylePresetType:(int64_t)type
{
  selfCopy = self;
  sub_1A3974294(type);
}

- (void)setSmartStyleCastIntensity:(double)intensity
{
  selfCopy = self;
  sub_1A39744BC(intensity);
}

- (void)setIsSmartStyleCustomized:(BOOL)customized
{
  selfCopy = self;
  sub_1A39746EC(customized);
}

- (void)setIsSmartStyleDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_1A3974918(disabled);
}

- (void)setSmartStyleIsUsersSystemStyle:(BOOL)style
{
  selfCopy = self;
  sub_1A3974B44(style);
}

- (void)showSmartStyleExpanded
{
  selfCopy = self;
  sub_1A38EDFE0(0x19uLL, 0, 0, 1);
}

- (void)setFilterThumbnailContents:(id)contents
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  contentsCopy = contents;
  selfCopy = self;
  sub_1A3A2F080();

  v8 = *(v5 + 944);
  sub_1A3A2EA60();
  sub_1A39062FC(contents, v8);
}

- (void)setFilterItemDisplayNames:(id)names
{
  v4 = sub_1A3A319A0();
  selfCopy = self;
  sub_1A3975014(v4);
}

- (void)setIsLensPositionSupported:(BOOL)supported
{
  selfCopy = self;
  sub_1A3975320(supported);
}

- (BOOL)isLensPositionLockedByUser
{
  selfCopy = self;
  v3 = sub_1A397554C();

  return v3 & 1;
}

- (void)setIsLensPositionLockedByUser:(BOOL)user
{
  selfCopy = self;
  sub_1A39756B0(user);
}

- (void)setLensPosition:(double)position
{
  selfCopy = self;
  sub_1A39758DC(position);
}

- (BOOL)isTrackingLensPositionSlider
{
  selfCopy = self;
  v3 = sub_1A3975B0C();

  return v3 & 1;
}

- (void)setDynamicShutterShowDragHandle:(BOOL)handle
{
  selfCopy = self;
  sub_1A39764DC(handle);
}

- (void)setDynamicShutterShapeOpacity:(double)opacity
{
  selfCopy = self;
  sub_1A3976708(opacity);
}

- (void)setActivePrimaryConstituentDeviceType:(int64_t)type
{
  selfCopy = self;
  sub_1A3976938(type);
}

- (void)setMacroMode:(int64_t)mode
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 648);
  sub_1A3A2EA60();
  v8 = sub_1A3919550(mode);
  sub_1A390C05C(v8, v7);
}

- (void)setIsAutoMacroButtonVisible:(BOOL)visible
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 648);
  sub_1A3A2EA60();
  sub_1A390BF48(visible, v7);
}

- (void)setDepthEffectSuggestionButtonMode:(int64_t)mode
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  selfCopy = self;
  sub_1A3A2F080();

  v7 = *(v5 + 656);
  sub_1A3A2EA60();
  v8 = sub_1A3915298(mode);
  sub_1A39078A8(v8, v7);
}

- (CAMChromeConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end