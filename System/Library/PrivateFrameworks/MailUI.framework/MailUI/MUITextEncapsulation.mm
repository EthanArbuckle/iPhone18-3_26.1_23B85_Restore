@interface MUITextEncapsulation
+ (id)messageListDateTextEncapsulationWithColor:(id)color;
@end

@implementation MUITextEncapsulation

+ (id)messageListDateTextEncapsulationWithColor:(id)color
{
  v3 = MEMORY[0x277D75078];
  colorCopy = color;
  v5 = objc_alloc_init(v3);
  [v5 setColor:colorCopy];

  [v5 setScale:0];
  [v5 setStyle:1];
  [v5 setPlatterSize:0];
  [v5 setShape:2];

  return v5;
}

@end