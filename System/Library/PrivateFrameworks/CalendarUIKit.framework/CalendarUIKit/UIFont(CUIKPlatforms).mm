@interface UIFont(CUIKPlatforms)
+ (id)cuik_createFontFromFont:()CUIKPlatforms withFontGrade:;
- (id)cuik_fontScaledByScaleFactor:()CUIKPlatforms;
@end

@implementation UIFont(CUIKPlatforms)

+ (id)cuik_createFontFromFont:()CUIKPlatforms withFontGrade:
{
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();

  return CopyOfSystemUIFontWithGrade;
}

- (id)cuik_fontScaledByScaleFactor:()CUIKPlatforms
{
  [self pointSize];
  v5 = round(v4 * a2 * 4.0) * 0.25;
  v6 = objc_opt_class();
  fontDescriptor = [self fontDescriptor];
  v8 = [v6 fontWithDescriptor:fontDescriptor size:v5];

  return v8;
}

@end