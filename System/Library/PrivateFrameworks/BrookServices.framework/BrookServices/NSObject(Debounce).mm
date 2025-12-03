@interface NSObject(Debounce)
- (void)brk_debounce:()Debounce withObject:delay:;
@end

@implementation NSObject(Debounce)

- (void)brk_debounce:()Debounce withObject:delay:
{
  v8 = MEMORY[0x277D82BB8];
  v9 = a5;
  [v8 cancelPreviousPerformRequestsWithTarget:self selector:a4 object:v9];
  [self performSelector:a4 withObject:v9 afterDelay:a2];
}

@end