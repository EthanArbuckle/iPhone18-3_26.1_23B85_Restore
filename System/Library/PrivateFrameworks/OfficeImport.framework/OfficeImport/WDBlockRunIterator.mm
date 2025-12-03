@interface WDBlockRunIterator
- (id)childIteratorFrom:(id)from;
@end

@implementation WDBlockRunIterator

- (id)childIteratorFrom:(id)from
{
  runIterator = [from runIterator];

  return runIterator;
}

@end