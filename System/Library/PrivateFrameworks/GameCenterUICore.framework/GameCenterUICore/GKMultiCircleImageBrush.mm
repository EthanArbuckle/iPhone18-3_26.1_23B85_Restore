@interface GKMultiCircleImageBrush
- (CGSize)sizeForInput:(id)a3;
- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5;
@end

@implementation GKMultiCircleImageBrush

- (CGSize)sizeForInput:(id)a3
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1 || (v5 = 57.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    v5 = 42.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a5;
  if ([v18 count] < 2)
  {
    v15 = [v18 firstObject];
    [v15 drawInRect:{x, y, width, height}];
  }

  else
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 != 1 || (v12 = 40.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
    {
      v12 = 26.0;
    }

    v13 = [v18 objectAtIndex:0];
    [v13 drawInRect:{x, y, v12, v12}];

    CGContextSaveGState(a4);
    v14 = MEMORY[0x277D75208];
    v20.origin.x = x + 16.0;
    v20.origin.y = y + 16.0;
    v20.size.width = v12;
    v20.size.height = v12;
    v21 = CGRectInset(v20, -2.0, -2.0);
    v15 = [v14 bezierPathWithOvalInRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    [v15 setLineWidth:2.0];
    v16 = [MEMORY[0x277D75348] blackColor];
    [v16 set];

    CGContextSetBlendMode(a4, kCGBlendModeClear);
    [v15 fill];
    CGContextRestoreGState(a4);
    v17 = [v18 objectAtIndex:1];
    [v17 drawInRect:{x + 16.0, y + 16.0, v12, v12}];
  }
}

@end