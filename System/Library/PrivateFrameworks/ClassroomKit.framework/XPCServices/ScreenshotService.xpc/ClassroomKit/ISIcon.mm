@interface ISIcon
+ (id)css_iconWithWebClip:(id)clip;
@end

@implementation ISIcon

+ (id)css_iconWithWebClip:(id)clip
{
  v4 = [IFImage css_imageWithWebClip:clip];
  if (v4)
  {
    v5 = [self alloc];
    v9 = v4;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7 = [v5 initWithImages:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end