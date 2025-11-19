@interface _MUEmptyUnit
+ (id)unitFromUnit:(id)a3;
@end

@implementation _MUEmptyUnit

+ (id)unitFromUnit:(id)a3
{
  v3 = a3;
  v4 = [_MUEmptyUnit alloc];
  v5 = [v3 symbol];

  v6 = [(_MUEmptyUnit *)v4 initWithSymbol:v5];

  return v6;
}

@end