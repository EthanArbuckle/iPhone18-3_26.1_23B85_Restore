@interface EBMergeTable
+ (void)readWithState:(id)state;
@end

@implementation EBMergeTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 552))(xlReader, &v10);
  v5 = (v12 - v11) >> 3;
  if (v5)
  {
    edSheet = [stateCopy edSheet];
    mergedCells = [edSheet mergedCells];

    v8 = 0;
    do
    {
      v9 = [EBReference edReferenceFromXlRef:XlConditionalFormatTable::at(&v10, v8)];
      [mergedCells addOrEquivalentObject:v9];

      ++v8;
    }

    while (v5 != v8);
  }

  XlMergeTable::~XlMergeTable(&v10);
}

@end