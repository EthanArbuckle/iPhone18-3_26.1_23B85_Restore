@interface LNValueType(CATSupport)
- (void)cat_value:()CATSupport;
@end

@implementation LNValueType(CATSupport)

- (void)cat_value:()CATSupport
{
  v3 = a3;
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[LNValueType valueForCAT:] must be overridden"];
  __break(1u);
}

@end