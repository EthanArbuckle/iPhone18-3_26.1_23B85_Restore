@interface WDTableRowCellIterator
- (id)childIteratorFrom:(id)a3;
@end

@implementation WDTableRowCellIterator

- (id)childIteratorFrom:(id)a3
{
  v3 = [a3 cellIterator];

  return v3;
}

@end