@interface TKRemoteImage
- (TKRemoteImage)init;
@end

@implementation TKRemoteImage

- (TKRemoteImage)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = TKRemoteImage;
  v6 = [(TKAdaptiveImage *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(TKAdaptiveImage *)v6 setService:@"original"];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end