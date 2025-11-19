@interface WDTableCellRunIterator
- (id)childIteratorFrom:(id)a3;
- (id)newChildIteratorFrom:(id)a3;
@end

@implementation WDTableCellRunIterator

- (id)childIteratorFrom:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 runIterator];

  return v4;
}

- (id)newChildIteratorFrom:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 newRunIterator];

  return v4;
}

@end