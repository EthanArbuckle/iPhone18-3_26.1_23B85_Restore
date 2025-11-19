@interface WDBlockRunIterator
- (id)childIteratorFrom:(id)a3;
@end

@implementation WDBlockRunIterator

- (id)childIteratorFrom:(id)a3
{
  v3 = [a3 runIterator];

  return v3;
}

@end