@interface ICTableCellTextStorage
- (ICTableCellTextStorage)initWithDocument:(id)a3;
@end

@implementation ICTableCellTextStorage

- (ICTableCellTextStorage)initWithDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 mergeableString];
  v6 = [v5 delegate];

  v10.receiver = self;
  v10.super_class = ICTableCellTextStorage;
  v7 = [(ICTableTextStorage *)&v10 initWithDocument:v4];
  if (v7)
  {
    v8 = [v4 mergeableString];
    [v8 setDelegate:v6];
  }

  return v7;
}

@end