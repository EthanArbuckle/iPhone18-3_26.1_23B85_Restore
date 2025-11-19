@interface ETQuickTapMessage
+ (id)doubleTapMessageWithColor:(id)a3;
@end

@implementation ETQuickTapMessage

+ (id)doubleTapMessageWithColor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ETQuickTapMessage);
  [(ETTapMessage *)v4 addTapAtPoint:v3 time:*MEMORY[0x277CBF348] color:*(MEMORY[0x277CBF348] + 8), 0.0];

  return v4;
}

@end