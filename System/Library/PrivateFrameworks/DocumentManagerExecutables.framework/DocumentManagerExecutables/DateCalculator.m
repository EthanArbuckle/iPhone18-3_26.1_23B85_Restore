@interface DateCalculator
- (void)clearCache;
@end

@implementation DateCalculator

- (void)clearCache
{
  v2 = *(self->super.isa + 14);

  v3 = v2(v6);
  v5 = v4;

  *v5 = MEMORY[0x277D84F98];
  v3(v6, 0);
}

@end