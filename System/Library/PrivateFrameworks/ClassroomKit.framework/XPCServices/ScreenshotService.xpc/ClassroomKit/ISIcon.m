@interface ISIcon
+ (id)css_iconWithWebClip:(id)a3;
@end

@implementation ISIcon

+ (id)css_iconWithWebClip:(id)a3
{
  v4 = [IFImage css_imageWithWebClip:a3];
  if (v4)
  {
    v5 = [a1 alloc];
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