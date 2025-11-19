@interface EBConditionalFormatTable
+ (void)readWithState:(id)a3;
@end

@implementation EBConditionalFormatTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = [v3 xlReader];
  (*(*v4 + 464))(v4, &v10);
  v5 = (v12 - v11) >> 3;
  if (v5)
  {
    v6 = [v3 edSheet];
    v7 = [v6 conditionalFormattings];

    v8 = 0;
    do
    {
      v9 = objc_alloc_init(EDConditionalFormatting);
      [EBConditionalFormat readXlConditionalFormat:XlConditionalFormatTable::at(&v10 toEDConditionalFormatting:v8) state:v9, v3];
      [v7 addObject:v9];

      ++v8;
    }

    while (v5 != v8);
  }

  XlConditionalFormatTable::~XlConditionalFormatTable(&v10);
}

@end