@interface _EFDefaultQueueingStrategy
- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5;
@end

@implementation _EFDefaultQueueingStrategy

- (void)enqueueObject:(id)a3 replaceIfExists:(BOOL)a4 buffer:(id)a5
{
  v6 = a4;
  v9 = a3;
  v7 = a5;
  v8 = v7;
  if (v6)
  {
    [v7 removeObject:v9];
  }

  [v8 addObject:v9];
}

@end