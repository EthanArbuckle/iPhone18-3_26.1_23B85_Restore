@interface UIImage(ControlCenterAdditions)
- (id)ccuiAlphaOnlyImageForMaskImage;
@end

@implementation UIImage(ControlCenterAdditions)

- (id)ccuiAlphaOnlyImageForMaskImage
{
  [self size];
  BSRectWithSize();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  [defaultFormat setPreferredRange:0x7FFFLL];
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:defaultFormat format:{v7, v9}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__UIImage_ControlCenterAdditions__ccuiAlphaOnlyImageForMaskImage__block_invoke;
  v14[3] = &unk_1E83EAA18;
  v14[4] = self;
  v14[5] = v3;
  v14[6] = v5;
  *&v14[7] = v7;
  *&v14[8] = v9;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

@end