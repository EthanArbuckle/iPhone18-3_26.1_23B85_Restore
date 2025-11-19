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
  [a1 pointSize];
  v5 = round(v4 * a2 * 4.0) * 0.25;
  v6 = objc_opt_class();
  v7 = [a1 fontDescriptor];
  v8 = [v6 fontWithDescriptor:v7 size:v5];

  return v8;
}

@end