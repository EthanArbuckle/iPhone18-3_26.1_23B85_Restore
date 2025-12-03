@interface CNKGameControllerContext
- (id)sfSymbolForButton:(int)button;
@end

@implementation CNKGameControllerContext

- (id)sfSymbolForButton:(int)button
{
  v3 = CNKGameControllerContext.sfSymbol(forButton:)(button);
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