@interface CAMChromeViewSpec
+ (CGRect)topBarFrameForViewSize:(CGSize)a3;
+ (CGRect)viewportWithAspectRatio:(double)a3 viewSize:(CGSize)a4 smartStyleControlsExpanded:(BOOL)a5;
+ (UIColor)glassDarkBackgroundFillColor;
+ (double)regularFontSizeForContentSize:(id)a3;
+ (double)smallPreviewOverlayButtonSizeForContentSize:(id)a3;
+ (double)topBarItemCornerRadiusForContentSize:(id)a3;
+ (void)contentFrameForViewSize:(double)a1;
+ (void)shutterButtonCenterBottomInsetForViewSize:(double)a1;
- (CAMChromeViewSpec)init;
@end

@implementation CAMChromeViewSpec

+ (UIColor)glassDarkBackgroundFillColor
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];

  return v2;
}

+ (double)smallPreviewOverlayButtonSizeForContentSize:(id)a3
{
  v3 = a3;
  sub_1A3912958();
  v5 = v4;

  return v5;
}

+ (double)regularFontSizeForContentSize:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1A3A30090();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  sub_1A3A300A0();
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E697F680], v7);
    if (v12(v6, 1, v7) != 1)
    {
      sub_1A3913464(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_1A391163C(v10);
  v14 = v13;

  (*(v8 + 8))(v10, v7);
  return v14;
}

+ (CGRect)viewportWithAspectRatio:(double)a3 viewSize:(CGSize)a4 smartStyleControlsExpanded:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  swift_getObjCClassMetadata();
  v9 = sub_1A3913588(a3, width, height);
  v11 = v10;
  sub_1A3910F50(a5, a3, width, height);
  v13 = height - v11 - v12;
  v14 = 0.0;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

+ (CGRect)topBarFrameForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  swift_getObjCClassMetadata();
  sub_1A391049C(width, height);
  v6 = v5;
  v7 = 36.0;
  v8 = 0.0;
  v9 = width;
  result.size.height = v7;
  result.size.width = v9;
  result.origin.y = v6;
  result.origin.x = v8;
  return result;
}

+ (double)topBarItemCornerRadiusForContentSize:(id)a3
{
  v3 = a3;
  sub_1A39130F0(v3);
  v5 = v4;

  return v5;
}

- (CAMChromeViewSpec)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMChromeViewSpec *)&v3 init];
}

+ (void)shutterButtonCenterBottomInsetForViewSize:(double)a1
{
  if (a1 == 0.0 || a2 == 0.0)
  {
LABEL_6:
    sub_1A3911D18();
LABEL_7:
    sub_1A3911E3C();
    return;
  }

  v4 = [objc_opt_self() capabilities];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isiPad];

    if ((v6 & 1) != 0 || fabs(a1 / a2 + -0.5625) < 0.01)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  __break(1u);
}

+ (void)contentFrameForViewSize:(double)a1
{
  if (a1 == 0.0 || a2 == 0.0)
  {
    goto LABEL_6;
  }

  v4 = [objc_opt_self() capabilities];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 isiPad];

  if ((v6 & 1) == 0 && fabs(a1 / a2 + -0.5625) >= 0.01)
  {
LABEL_6:
    sub_1A3911D18();
    fmax(sub_1A3911D18() + -8.0, 6.0);
  }

  UIEdgeInsetsInsetRect(0.0, 0.0, a1, a2, 0.0, 0.0);
}

@end