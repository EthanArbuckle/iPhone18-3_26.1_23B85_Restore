@interface WDSectionBlockIterator
- (id)childIteratorFrom:(id)a3;
- (id)newChildIteratorFrom:(id)a3;
@end

@implementation WDSectionBlockIterator

- (id)childIteratorFrom:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 blockIterator];

  return v4;
}

- (id)newChildIteratorFrom:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 newBlockIterator];

  return v4;
}

@end