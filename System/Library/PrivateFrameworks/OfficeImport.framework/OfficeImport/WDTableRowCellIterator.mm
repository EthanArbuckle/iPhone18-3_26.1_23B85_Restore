@interface WDTableRowCellIterator
- (id)childIteratorFrom:(id)from;
@end

@implementation WDTableRowCellIterator

- (id)childIteratorFrom:(id)from
{
  cellIterator = [from cellIterator];

  return cellIterator;
}

@end