@interface ETQuickTapMessage
+ (id)doubleTapMessageWithColor:(id)color;
@end

@implementation ETQuickTapMessage

+ (id)doubleTapMessageWithColor:(id)color
{
  colorCopy = color;
  v4 = objc_alloc_init(ETQuickTapMessage);
  [(ETTapMessage *)v4 addTapAtPoint:colorCopy time:*MEMORY[0x277CBF348] color:*(MEMORY[0x277CBF348] + 8), 0.0];

  return v4;
}

@end