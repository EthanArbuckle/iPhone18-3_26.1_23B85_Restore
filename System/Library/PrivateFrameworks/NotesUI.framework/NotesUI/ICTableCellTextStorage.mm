@interface ICTableCellTextStorage
- (ICTableCellTextStorage)initWithDocument:(id)document;
@end

@implementation ICTableCellTextStorage

- (ICTableCellTextStorage)initWithDocument:(id)document
{
  documentCopy = document;
  mergeableString = [documentCopy mergeableString];
  delegate = [mergeableString delegate];

  v10.receiver = self;
  v10.super_class = ICTableCellTextStorage;
  v7 = [(ICTableTextStorage *)&v10 initWithDocument:documentCopy];
  if (v7)
  {
    mergeableString2 = [documentCopy mergeableString];
    [mergeableString2 setDelegate:delegate];
  }

  return v7;
}

@end