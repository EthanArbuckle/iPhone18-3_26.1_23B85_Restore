@interface GKMultiCircleImageBrush
- (CGSize)sizeForInput:(id)input;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKMultiCircleImageBrush

- (CGSize)sizeForInput:(id)input
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (v5 = 57.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    v5 = 42.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  if ([inputCopy count] < 2)
  {
    firstObject = [inputCopy firstObject];
    [firstObject drawInRect:{x, y, width, height}];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (v12 = 40.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
    {
      v12 = 26.0;
    }

    v13 = [inputCopy objectAtIndex:0];
    [v13 drawInRect:{x, y, v12, v12}];

    CGContextSaveGState(context);
    v14 = MEMORY[0x277D75208];
    v20.origin.x = x + 16.0;
    v20.origin.y = y + 16.0;
    v20.size.width = v12;
    v20.size.height = v12;
    v21 = CGRectInset(v20, -2.0, -2.0);
    firstObject = [v14 bezierPathWithOvalInRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    [firstObject setLineWidth:2.0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [blackColor set];

    CGContextSetBlendMode(context, kCGBlendModeClear);
    [firstObject fill];
    CGContextRestoreGState(context);
    v17 = [inputCopy objectAtIndex:1];
    [v17 drawInRect:{x + 16.0, y + 16.0, v12, v12}];
  }
}

@end