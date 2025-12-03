@interface UIImage(Compositing)
+ (id)blankImageOfSize:()Compositing;
- (id)compositeImage:()Compositing blendMode:alpha:;
@end

@implementation UIImage(Compositing)

+ (id)blankImageOfSize:()Compositing
{
  v8 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
  if (blankImageOfSize__onceToken != -1)
  {
    +[UIImage(Compositing) blankImageOfSize:];
  }

  v9 = [blankImageOfSize__blankImageCache objectForKey:v8];
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a3, a4}];
    v9 = [v10 imageWithActions:&__block_literal_global_5];
    [blankImageOfSize__blankImageCache setObject:v9 forKey:v8];
    if (!v9)
    {
      [(UIImage(Compositing) *)a2 blankImageOfSize:self];
    }
  }

  return v9;
}

- (id)compositeImage:()Compositing blendMode:alpha:
{
  v8 = a4;
  [self size];
  v10 = v9;
  [self size];
  v12 = v11;
  [self scale];
  v14 = v13;
  v19.width = v10;
  v19.height = v12;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v14);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetAllowsAntialiasing(CurrentContext, 1);
  CGContextSetShouldAntialias(CurrentContext, 1);
  [self drawInRect:{0.0, 0.0, v10, v12}];
  [v8 drawInRect:a5 blendMode:0.0 alpha:{0.0, v10, v12, a2}];

  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

+ (void)blankImageOfSize:()Compositing .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIImage+Compositing.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"retValue != nil"}];
}

@end