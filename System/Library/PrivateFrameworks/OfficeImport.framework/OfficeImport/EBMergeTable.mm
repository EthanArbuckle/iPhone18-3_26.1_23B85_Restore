@interface EBMergeTable
+ (void)readWithState:(id)a3;
@end

@implementation EBMergeTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = [v3 xlReader];
  (*(*v4 + 552))(v4, &v10);
  v5 = (v12 - v11) >> 3;
  if (v5)
  {
    v6 = [v3 edSheet];
    v7 = [v6 mergedCells];

    v8 = 0;
    do
    {
      v9 = [EBReference edReferenceFromXlRef:XlConditionalFormatTable::at(&v10, v8)];
      [v7 addOrEquivalentObject:v9];

      ++v8;
    }

    while (v5 != v8);
  }

  XlMergeTable::~XlMergeTable(&v10);
}

@end