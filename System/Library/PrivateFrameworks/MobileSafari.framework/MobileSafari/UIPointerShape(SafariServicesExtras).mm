@interface UIPointerShape(SafariServicesExtras)
+ (id)sf_shapeForToolbarButton:()SafariServicesExtras;
@end

@implementation UIPointerShape(SafariServicesExtras)

+ (id)sf_shapeForToolbarButton:()SafariServicesExtras
{
  v4 = a3;
  configuration = [v4 configuration];
  title = [configuration title];
  v7 = [title length];

  if (v7)
  {
    [v4 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    superview = [v4 superview];
    [v4 _selectedIndicatorBounds];
    [superview convertRect:v4 fromView:?];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v21 = -10.0;
  }

  else
  {
    v21 = -12.0;
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v22 = -4.0;
  }

  else
  {
    v22 = -0.0;
  }

  v43.origin.x = v9;
  v43.origin.y = v11;
  v43.size.width = v13;
  v43.size.height = v15;
  v44 = CGRectInset(v43, v21, v22);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v27 = CGRectGetWidth(v44);
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v29 = 51.0;
  if (isSolariumEnabled)
  {
    v29 = 44.0;
  }

  v30 = fmin((v27 - v29) * 0.5, 0.0);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v31 = CGRectGetHeight(v45);
  isSolariumEnabled2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v33 = 37.0;
  if (isSolariumEnabled2)
  {
    v33 = 44.0;
  }

  v34 = fmin((v31 - v33) * 0.5, 0.0);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectInset(v46, v30, v34);
  v35 = v47.origin.x;
  v36 = v47.origin.y;
  v37 = v47.size.width;
  v38 = v47.size.height;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v39 = v37 * 0.5;
  }

  else
  {
    v39 = 8.0;
  }

  v40 = [self shapeWithRoundedRect:v35 cornerRadius:{v36, v37, v38, v39}];

  return v40;
}

@end