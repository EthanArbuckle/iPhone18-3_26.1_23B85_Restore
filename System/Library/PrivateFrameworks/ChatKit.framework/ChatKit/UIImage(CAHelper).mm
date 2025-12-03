@interface UIImage(CAHelper)
- (id)__ck_imageScaledToFillSize:()CAHelper;
@end

@implementation UIImage(CAHelper)

- (id)__ck_imageScaledToFillSize:()CAHelper
{
  [self size];
  v7 = a2 / v6;
  [self size];
  if (v7 < a3 / v8)
  {
    v7 = a3 / v8;
  }

  [self size];
  v10 = v9 * v7;
  [self size];
  v12 = v11 * v7;
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setScale:0.0];
  [preferredFormat setPreferredRange:0];
  [preferredFormat setOpaque:0];
  v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{v10, v12}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__UIImage_CAHelper____ck_imageScaledToFillSize___block_invoke;
  v17[3] = &unk_1E72F0EC8;
  v17[4] = self;
  *&v17[5] = v10;
  *&v17[6] = v12;
  v15 = [v14 imageWithActions:v17];

  return v15;
}

@end