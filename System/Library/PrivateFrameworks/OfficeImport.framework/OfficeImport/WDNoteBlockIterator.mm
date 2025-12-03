@interface WDNoteBlockIterator
- (id)childIteratorFrom:(id)from;
- (id)newChildIteratorFrom:(id)from;
@end

@implementation WDNoteBlockIterator

- (id)childIteratorFrom:(id)from
{
  text = [from text];
  blockIterator = [text blockIterator];

  return blockIterator;
}

- (id)newChildIteratorFrom:(id)from
{
  text = [from text];
  newBlockIterator = [text newBlockIterator];

  return newBlockIterator;
}

@end