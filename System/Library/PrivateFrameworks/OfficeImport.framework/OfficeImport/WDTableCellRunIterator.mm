@interface WDTableCellRunIterator
- (id)childIteratorFrom:(id)from;
- (id)newChildIteratorFrom:(id)from;
@end

@implementation WDTableCellRunIterator

- (id)childIteratorFrom:(id)from
{
  text = [from text];
  runIterator = [text runIterator];

  return runIterator;
}

- (id)newChildIteratorFrom:(id)from
{
  text = [from text];
  newRunIterator = [text newRunIterator];

  return newRunIterator;
}

@end