@interface MUPlatterConfigurator
+ (void)configureView:(id)view;
@end

@implementation MUPlatterConfigurator

+ (void)configureView:(id)view
{
  viewCopy = view;
  [viewCopy _mapsui_setCardCorner];
  v4 = +[MUInfoCardStyle cardBackgroundColor];
  [viewCopy _mapsui_setBackgroundColor:v4];
}

@end