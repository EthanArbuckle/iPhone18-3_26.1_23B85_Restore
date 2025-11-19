@interface IOAccelMemoryPoolTotals
- (void)dealloc;
@end

@implementation IOAccelMemoryPoolTotals

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOAccelMemoryPoolTotals;
  [(IOAccelMemoryPoolTotals *)&v3 dealloc];
}

@end