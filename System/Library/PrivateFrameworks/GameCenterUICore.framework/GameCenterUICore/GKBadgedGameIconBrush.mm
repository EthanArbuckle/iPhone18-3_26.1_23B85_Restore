@interface GKBadgedGameIconBrush
- (CGSize)sizeForInput:(id)input;
- (GKBadgedGameIconBrush)init;
- (double)scaleForInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKBadgedGameIconBrush

- (GKBadgedGameIconBrush)init
{
  v7.receiver = self;
  v7.super_class = GKBadgedGameIconBrush;
  v2 = [(GKBadgedGameIconBrush *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(GKCircleImageBrush);
    badgeBrush = v2->_badgeBrush;
    v2->_badgeBrush = &v3->super.super;

    v5 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKBadgedGameIconBrush;
  v4 = [(GKThemeBrush *)&v7 copyWithZone:zone];
  badgeBrush = [(GKBadgedGameIconBrush *)self badgeBrush];
  [v4 setBadgeBrush:badgeBrush];

  return v4;
}

- (CGSize)sizeForInput:(id)input
{
  inputCopy = input;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = inputCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v7 size];
    v9 = v8 + 12.0;
    v11 = v10 + 12.0;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)scaleForInput:(id)input
{
  inputCopy = input;
  badgeBrush = [(GKBadgedGameIconBrush *)self badgeBrush];
  [badgeBrush scaleForInput:inputCopy];
  v7 = v6;

  return v7;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  inputCopy = input;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = inputCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 count];
    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = 0;
    if (v10 >= 2)
    {
      v12 = [v9 objectAtIndexedSubscript:1];
    }

    [v11 size];
    v14 = v13;
    v16 = v15;
    badgeBrush = [(GKBadgedGameIconBrush *)self badgeBrush];
    [badgeBrush sizeForInput:v12];
    v19 = v18;
    v21 = v20;

    v27.origin.x = 6.0;
    v27.origin.y = 6.0;
    v27.size.width = v14;
    v27.size.height = v16;
    v22 = CGRectGetMaxY(v27) - v21 + 6.0;
    UIGraphicsPushContext(context);
    CGContextSaveGState(context);
    [v11 drawInRect:{6.0, 6.0, v14, v16}];
    badgeBrush2 = [(GKBadgedGameIconBrush *)self badgeBrush];
    v24 = [badgeBrush2 drawnImageForSize:0 opaque:v12 input:{v19, v21}];

    [v24 drawInRect:{0.0, v22, v19, v21}];
    CGContextRestoreGState(context);
    UIGraphicsPopContext();
  }
}

@end