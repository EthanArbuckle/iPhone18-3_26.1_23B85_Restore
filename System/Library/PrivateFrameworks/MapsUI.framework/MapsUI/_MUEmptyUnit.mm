@interface _MUEmptyUnit
+ (id)unitFromUnit:(id)unit;
@end

@implementation _MUEmptyUnit

+ (id)unitFromUnit:(id)unit
{
  unitCopy = unit;
  v4 = [_MUEmptyUnit alloc];
  symbol = [unitCopy symbol];

  v6 = [(_MUEmptyUnit *)v4 initWithSymbol:symbol];

  return v6;
}

@end