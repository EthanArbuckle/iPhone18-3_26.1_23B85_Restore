@interface CNKGameControllerContext
- (id)sfSymbolForButton:(int)a3;
@end

@implementation CNKGameControllerContext

- (id)sfSymbolForButton:(int)a3
{
  v3 = CNKGameControllerContext.sfSymbol(forButton:)(a3);
  if (v4)
  {
    v5 = MEMORY[0x1BFB209B0](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end