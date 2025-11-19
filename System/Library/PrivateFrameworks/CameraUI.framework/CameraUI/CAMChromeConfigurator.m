@interface CAMChromeConfigurator
- (BOOL)isFlashSupported;
- (BOOL)isLensPositionLockedByUser;
- (BOOL)isTorchSupported;
- (BOOL)isTrackingLensPositionSlider;
- (CAMChromeConfigurator)init;
- (CAMChromeConfigurator)initWithEventHandler:(id)a3 captureGraphConfiguration:(id)a4;
- (CAMDynamicShutterControl)shutterControl;
- (CGRect)chromeSidebarFrame;
- (CGRect)collapsedTopBarFrame;
- (int64_t)hdrMode;
- (void)performChanges:(id)a3;
- (void)removeThumbnailImage;
- (void)setActivePrimaryConstituentDeviceType:(int64_t)a3;
- (void)setAvailableCaptureModeRawValues:(id)a3;
- (void)setCaptureGraphConfiguration:(id)a3;
- (void)setDepthEffectSuggestionButtonMode:(int64_t)a3;
- (void)setDynamicShutterShapeOpacity:(double)a3;
- (void)setDynamicShutterShowDragHandle:(BOOL)a3;
- (void)setFilterItemDisplayNames:(id)a3;
- (void)setFilterThumbnailContents:(id)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setIsAutoMacroButtonVisible:(BOOL)a3;
- (void)setIsLensPositionLockedByUser:(BOOL)a3;
- (void)setIsLensPositionSupported:(BOOL)a3;
- (void)setIsSemanticStylesSupported:(BOOL)a3;
- (void)setIsSmartStyleCustomized:(BOOL)a3;
- (void)setIsSmartStyleDisabled:(BOOL)a3;
- (void)setIsSmartStylesSupported:(BOOL)a3;
- (void)setIsTorchActive:(BOOL)a3;
- (void)setIsTorchCurrentlyUnavailable:(BOOL)a3;
- (void)setIsTorchSupported:(BOOL)a3;
- (void)setLensPosition:(double)a3;
- (void)setMacroMode:(int64_t)a3;
- (void)setNightModeDurationMapping:(id)a3;
- (void)setOverscanOverlayAlpha:(double)a3 duration:(double)a4;
- (void)setSemanticStylePreset:(int64_t)a3;
- (void)setSharedLibraryEnabled:(BOOL)a3 mode:(int64_t)a4;
- (void)setShowTorchInTopBarForAllStates:(BOOL)a3;
- (void)setSmartStyleCastIntensity:(double)a3;
- (void)setSmartStyleCastType:(int64_t)a3;
- (void)setSmartStyleDPadDefaultValue:(CGPoint)a3;
- (void)setSmartStyleDPadValue:(CGPoint)a3;
- (void)setSmartStyleIsUsersSystemStyle:(BOOL)a3;
- (void)setSmartStylePresetType:(int64_t)a3;
- (void)setSupportedVideoFormatsRawValues:(id)a3;
- (void)setTorchMode:(int64_t)a3;
- (void)showControlPanel;
- (void)showSmartStyleExpanded;
- (void)updateThumbnailImage:(id)a3 uuid:(id)a4 animated:(BOOL)a5;
@end

@implementation CAMChromeConfigurator

- (CAMChromeConfigurator)initWithEventHandler:(id)a3 captureGraphConfiguration:(id)a4
{
  v5 = a3;
  v6 = sub_1A397D9F8(v5, a4);

  return v6;
}

- (void)performChanges:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A397E04C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)setAvailableCaptureModeRawValues:(id)a3
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

- (void)setCaptureGraphConfiguration:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;

  sub_1A3979764(a3, v6);
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

- (void)updateThumbnailImage:(id)a3 uuid:(id)a4 animated:(BOOL)a5
{
  sub_1A3A31850();
  v7 = a3;
  v8 = self;
  sub_1A3970674(a3);
}

- (void)removeThumbnailImage
{
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v3 = self;
  sub_1A3A2F070();
}

- (void)setNightModeDurationMapping:(id)a3
{
  v4 = *&a3.var0;
  v5 = *&a3.var1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3979F04(v4, v5, 0, self);
}

- (void)setOverscanOverlayAlpha:(double)a3 duration:(double)a4
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A3979F04(*&a3, *&a4, 0, self);
}

- (void)setSharedLibraryEnabled:(BOOL)a3 mode:(int64_t)a4
{
  v6 = a3;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = self;

  sub_1A397A054(v6, a4, v7);
}

- (CAMDynamicShutterControl)shutterControl
{
  v2 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  v3 = *(v2 + 1088);
  if (v3)
  {
    v4 = *(v2 + 1096);
    v5 = self;
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

- (void)setSupportedVideoFormatsRawValues:(id)a3
{
  sub_1A38E805C(0, &qword_1ED998538);
  v4 = sub_1A3A319A0();
  v5 = self;
  sub_1A3971A08(v4);
}

- (void)showControlPanel
{
  v2 = self;
  sub_1A38EDFE0(0x23uLL, 0, 0, 1);
}

- (CGRect)chromeSidebarFrame
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v4 = self;
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
  v4 = self;
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
  v2 = self;
  v3 = sub_1A39726E4();

  return v3 & 1;
}

- (void)setFlashMode:(int64_t)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 616);
  sub_1A3A2EA60();
  v8 = sub_1A39F6FA8(a3);
  sub_1A391C264(v8, v7);
}

- (void)setIsTorchSupported:(BOOL)a3
{
  v4 = self;
  sub_1A3972A74(a3);
}

- (BOOL)isTorchSupported
{
  v2 = self;
  v3 = sub_1A3972CA0();

  return v3 & 1;
}

- (void)setShowTorchInTopBarForAllStates:(BOOL)a3
{
  v4 = self;
  sub_1A3972E04(a3);
}

- (void)setIsTorchActive:(BOOL)a3
{
  v4 = self;
  sub_1A3973030(a3);
}

- (void)setIsTorchCurrentlyUnavailable:(BOOL)a3
{
  v4 = self;
  sub_1A397325C(a3);
}

- (void)setTorchMode:(int64_t)a3
{
  v4 = self;
  sub_1A3973488(a3);
}

- (void)setIsSemanticStylesSupported:(BOOL)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 936);
  sub_1A3A2EA60();
  sub_1A3918D10(a3, v7);
}

- (void)setSemanticStylePreset:(int64_t)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 936);
  sub_1A3A2EA60();
  sub_1A3918E24(a3, v7);
}

- (void)setIsSmartStylesSupported:(BOOL)a3
{
  v4 = self;
  sub_1A39739C0(a3);
}

- (void)setSmartStyleDPadValue:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1A3973BEC(x, y);
}

- (void)setSmartStyleDPadDefaultValue:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1A3973E2C(x, y);
}

- (void)setSmartStyleCastType:(int64_t)a3
{
  v4 = self;
  sub_1A397406C(a3);
}

- (void)setSmartStylePresetType:(int64_t)a3
{
  v4 = self;
  sub_1A3974294(a3);
}

- (void)setSmartStyleCastIntensity:(double)a3
{
  v4 = self;
  sub_1A39744BC(a3);
}

- (void)setIsSmartStyleCustomized:(BOOL)a3
{
  v4 = self;
  sub_1A39746EC(a3);
}

- (void)setIsSmartStyleDisabled:(BOOL)a3
{
  v4 = self;
  sub_1A3974918(a3);
}

- (void)setSmartStyleIsUsersSystemStyle:(BOOL)a3
{
  v4 = self;
  sub_1A3974B44(a3);
}

- (void)showSmartStyleExpanded
{
  v2 = self;
  sub_1A38EDFE0(0x19uLL, 0, 0, 1);
}

- (void)setFilterThumbnailContents:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = a3;
  v7 = self;
  sub_1A3A2F080();

  v8 = *(v5 + 944);
  sub_1A3A2EA60();
  sub_1A39062FC(a3, v8);
}

- (void)setFilterItemDisplayNames:(id)a3
{
  v4 = sub_1A3A319A0();
  v5 = self;
  sub_1A3975014(v4);
}

- (void)setIsLensPositionSupported:(BOOL)a3
{
  v4 = self;
  sub_1A3975320(a3);
}

- (BOOL)isLensPositionLockedByUser
{
  v2 = self;
  v3 = sub_1A397554C();

  return v3 & 1;
}

- (void)setIsLensPositionLockedByUser:(BOOL)a3
{
  v4 = self;
  sub_1A39756B0(a3);
}

- (void)setLensPosition:(double)a3
{
  v4 = self;
  sub_1A39758DC(a3);
}

- (BOOL)isTrackingLensPositionSlider
{
  v2 = self;
  v3 = sub_1A3975B0C();

  return v3 & 1;
}

- (void)setDynamicShutterShowDragHandle:(BOOL)a3
{
  v4 = self;
  sub_1A39764DC(a3);
}

- (void)setDynamicShutterShapeOpacity:(double)a3
{
  v4 = self;
  sub_1A3976708(a3);
}

- (void)setActivePrimaryConstituentDeviceType:(int64_t)a3
{
  v4 = self;
  sub_1A3976938(a3);
}

- (void)setMacroMode:(int64_t)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 648);
  sub_1A3A2EA60();
  v8 = sub_1A3919550(a3);
  sub_1A390C05C(v8, v7);
}

- (void)setIsAutoMacroButtonVisible:(BOOL)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 648);
  sub_1A3A2EA60();
  sub_1A390BF48(a3, v7);
}

- (void)setDepthEffectSuggestionButtonMode:(int64_t)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v6 = self;
  sub_1A3A2F080();

  v7 = *(v5 + 656);
  sub_1A3A2EA60();
  v8 = sub_1A3915298(a3);
  sub_1A39078A8(v8, v7);
}

- (CAMChromeConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end