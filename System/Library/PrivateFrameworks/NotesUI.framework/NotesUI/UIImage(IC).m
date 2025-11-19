@interface UIImage(IC)
+ (id)ic_applicationIconImageWithSize:()IC;
+ (id)ic_hierarchicalNonSystemImageNamed:()IC colors:fontTextStyle:scale:weight:maxContentSizeCategory:;
+ (id)ic_hierarchicalSystemImageNamed:()IC colors:fontTextStyle:scale:weight:maxContentSizeCategory:;
+ (id)ic_largeScaleHierarchicalSystemImageNamed:()IC colors:;
+ (id)ic_largeScaleHierarchicalSystemImageNamed:()IC colors:fontTextStyle:;
+ (id)ic_makeCircularImageWithColor:()IC diameter:borderColor:borderWidth:;
+ (id)ic_scaledHierarchicalSystemImageNamed:()IC scale:colors:;
+ (id)ic_systemImageNamed:()IC fromFont:;
+ (id)ic_systemImageNamed:()IC fromFont:scale:;
+ (id)ic_systemImageNamed:()IC pointSize:weight:;
+ (id)ic_systemImageNamed:()IC scale:;
+ (id)ic_systemImageNamed:()IC scale:weight:;
+ (id)ic_systemImageNamed:()IC textStyle:;
+ (id)ic_systemImageNamed:()IC textStyle:scale:;
+ (id)ic_systemImageNamed:()IC textStyle:scale:maxContentSizeCategory:;
+ (id)symbolImageConfigurationWithTextStyle:()IC scale:weight:maxContentSizeCategory:;
- (id)ic_imageWithFont:()IC;
- (id)ic_imageWithFont:()IC cappedToSize:;
- (id)ic_imageWithFont:()IC scale:;
- (id)ic_imageWithScale:()IC;
- (id)ic_imageWithTextStyle:()IC;
- (id)ic_imageWithTextStyle:()IC scale:;
@end

@implementation UIImage(IC)

+ (id)ic_applicationIconImageWithSize:()IC
{
  v4 = [MEMORY[0x1E69A8A00] applicationIcon];
  [MEMORY[0x1E69DCEB0] ic_scale];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a1 scale:{a2, v5}];
  v8 = [v4 prepareImageForDescriptor:v7];
  v9 = [v4 imageForDescriptor:v7];
  v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v9 scale:"CGImage") orientation:{0, v6}];

  return v10;
}

+ (id)ic_systemImageNamed:()IC textStyle:
{
  v6 = MEMORY[0x1E69DCAD8];
  v7 = a3;
  v8 = [v6 configurationWithTextStyle:a4];
  v9 = [a1 ic_systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

+ (id)ic_systemImageNamed:()IC textStyle:scale:
{
  v8 = MEMORY[0x1E69DCAD8];
  v9 = a3;
  v10 = [v8 configurationWithTextStyle:a4 scale:a5];
  v11 = [a1 ic_systemImageNamed:v9 withConfiguration:v10];

  return v11;
}

+ (id)ic_systemImageNamed:()IC textStyle:scale:maxContentSizeCategory:
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() symbolImageConfigurationWithTextStyle:v11 scale:a5 weight:4 maxContentSizeCategory:v10];

  v14 = [a1 ic_systemImageNamed:v12 withConfiguration:v13];

  return v14;
}

+ (id)ic_systemImageNamed:()IC fromFont:
{
  v6 = MEMORY[0x1E69DCAD8];
  v7 = a3;
  v8 = [v6 configurationWithFont:a4];
  v9 = [a1 ic_systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

+ (id)ic_systemImageNamed:()IC scale:
{
  v6 = MEMORY[0x1E69DCAD8];
  v7 = a3;
  v8 = [v6 configurationWithScale:a4];
  v9 = [a1 ic_systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

+ (id)ic_systemImageNamed:()IC fromFont:scale:
{
  v8 = MEMORY[0x1E69DCAD8];
  v9 = a3;
  v10 = [v8 configurationWithFont:a4 scale:a5];
  v11 = [a1 ic_systemImageNamed:v9 withConfiguration:v10];

  return v11;
}

+ (id)ic_systemImageNamed:()IC pointSize:weight:
{
  v7 = MEMORY[0x1E69DCAD8];
  v8 = a4;
  v9 = [v7 configurationWithPointSize:a5 weight:a1];
  v10 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v8 withConfiguration:v9];

  return v10;
}

+ (id)ic_systemImageNamed:()IC scale:weight:
{
  v7 = MEMORY[0x1E69DCAD8];
  v8 = a3;
  v9 = [v7 configurationWithScale:a4];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithWeight:a5];
  v11 = MEMORY[0x1E69DCAB8];
  v12 = [v9 configurationByApplyingConfiguration:v10];
  v13 = [v11 ic_systemImageNamed:v8 withConfiguration:v12];

  return v13;
}

+ (id)ic_scaledHierarchicalSystemImageNamed:()IC scale:colors:
{
  v7 = MEMORY[0x1E69DCAD8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 configurationWithScale:a4];
  v11 = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v8];

  v12 = [v10 configurationByApplyingConfiguration:v11];
  v13 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v9 withConfiguration:v12];

  return v13;
}

+ (id)ic_largeScaleHierarchicalSystemImageNamed:()IC colors:
{
  v5 = MEMORY[0x1E69DCAD8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 configurationWithScale:3];
  v9 = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v6];

  v10 = [v8 configurationByApplyingConfiguration:v9];
  v11 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v7 withConfiguration:v10];

  return v11;
}

+ (id)ic_largeScaleHierarchicalSystemImageNamed:()IC colors:fontTextStyle:
{
  v7 = MEMORY[0x1E69DB878];
  v8 = a4;
  v9 = a3;
  v10 = [v7 preferredFontForTextStyle:a5];
  v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v12 = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v8];

  v13 = [v11 configurationByApplyingConfiguration:v12];
  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v10];
  v15 = [v13 configurationByApplyingConfiguration:v14];
  v16 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v9 withConfiguration:v15];

  return v16;
}

+ (id)ic_hierarchicalSystemImageNamed:()IC colors:fontTextStyle:scale:weight:maxContentSizeCategory:
{
  v13 = MEMORY[0x1E69DCAD8];
  v14 = a8;
  v15 = a5;
  v16 = a3;
  v17 = [v13 _configurationWithHierarchicalColors:a4];
  v18 = [objc_opt_class() symbolImageConfigurationWithTextStyle:v15 scale:a6 weight:a7 maxContentSizeCategory:v14];

  v19 = [v17 configurationByApplyingConfiguration:v18];
  v20 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:v16 withConfiguration:v19];

  return v20;
}

+ (id)ic_hierarchicalNonSystemImageNamed:()IC colors:fontTextStyle:scale:weight:maxContentSizeCategory:
{
  v13 = a8;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v15 count];
  v18 = MEMORY[0x1E69DCAD8];
  if (v17 == 1)
  {
    v19 = [v15 objectAtIndexedSubscript:0];

    v20 = [v18 configurationWithHierarchicalColor:v19];
    v15 = v19;
  }

  else
  {
    v20 = [MEMORY[0x1E69DCAD8] _configurationWithHierarchicalColors:v15];
  }

  v21 = [objc_opt_class() symbolImageConfigurationWithTextStyle:v14 scale:a6 weight:a7 maxContentSizeCategory:v13];

  v22 = [v20 configurationByApplyingConfiguration:v21];
  v23 = MEMORY[0x1E69DCAB8];
  v24 = [MEMORY[0x1E696AAE8] mainBundle];
  v25 = [v23 imageNamed:v16 inBundle:v24 withConfiguration:v22];

  return v25;
}

+ (id)ic_makeCircularImageWithColor:()IC diameter:borderColor:borderWidth:
{
  v9 = a6;
  v10 = a5;
  y = 0.0;
  v20.width = a1;
  v20.height = a1;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  if (v9 && a2 > 0.0)
  {
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = a1;
    v21.size.height = a1;
    v22 = CGRectInset(v21, a2, a2);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v15 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, a1, a1}];
    [v9 setFill];
    [v15 fill];

    a1 = height;
  }

  else
  {
    width = a1;
    x = 0.0;
  }

  v16 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, a1}];
  [v10 setFill];

  [v16 fill];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (id)ic_imageWithFont:()IC
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
  v3 = [a1 imageWithConfiguration:v2];

  return v3;
}

- (id)ic_imageWithFont:()IC cappedToSize:
{
  v6 = a4;
  [v6 pointSize];
  if (v7 > a2)
  {
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:a2];

    v6 = v8;
  }

  v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6];
  v10 = [a1 imageWithConfiguration:v9];

  return v10;
}

- (id)ic_imageWithScale:()IC
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithScale:?];
  v3 = [a1 imageWithConfiguration:v2];

  return v3;
}

- (id)ic_imageWithFont:()IC scale:
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:? scale:?];
  v3 = [a1 imageWithConfiguration:v2];

  return v3;
}

- (id)ic_imageWithTextStyle:()IC
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:?];
  v3 = [a1 imageWithConfiguration:v2];

  return v3;
}

- (id)ic_imageWithTextStyle:()IC scale:
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:? scale:?];
  v3 = [a1 imageWithConfiguration:v2];

  return v3;
}

+ (id)symbolImageConfigurationWithTextStyle:()IC scale:weight:maxContentSizeCategory:
{
  v9 = MEMORY[0x1E69DB878];
  v10 = a3;
  v11 = [v9 ic_preferredFontForTextStyle:v10 maxContentSizeCategory:a6];
  v12 = MEMORY[0x1E69DCAD8];
  [v11 pointSize];
  v13 = [v12 configurationWithPointSize:a5 weight:a4 scale:?];
  v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v10];

  v15 = [v14 configurationByApplyingConfiguration:v13];

  return v15;
}

@end