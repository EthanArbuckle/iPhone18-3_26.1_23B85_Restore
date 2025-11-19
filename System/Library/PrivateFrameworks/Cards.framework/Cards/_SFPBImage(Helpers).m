@interface _SFPBImage(Helpers)
+ (id)imageWithData:()Helpers;
@end

@implementation _SFPBImage(Helpers)

+ (id)imageWithData:()Helpers
{
  v3 = MEMORY[0x277D4C760];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setImageData:v4];

  return v5;
}

@end