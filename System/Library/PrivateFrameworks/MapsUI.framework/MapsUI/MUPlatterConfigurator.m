@interface MUPlatterConfigurator
+ (void)configureView:(id)a3;
@end

@implementation MUPlatterConfigurator

+ (void)configureView:(id)a3
{
  v3 = a3;
  [v3 _mapsui_setCardCorner];
  v4 = +[MUInfoCardStyle cardBackgroundColor];
  [v3 _mapsui_setBackgroundColor:v4];
}

@end