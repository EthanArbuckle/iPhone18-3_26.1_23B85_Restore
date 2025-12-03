@interface EBConditionalFormatTable
+ (void)readWithState:(id)state;
@end

@implementation EBConditionalFormatTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 464))(xlReader, &v10);
  v5 = (v12 - v11) >> 3;
  if (v5)
  {
    edSheet = [stateCopy edSheet];
    conditionalFormattings = [edSheet conditionalFormattings];

    v8 = 0;
    do
    {
      v9 = objc_alloc_init(EDConditionalFormatting);
      [EBConditionalFormat readXlConditionalFormat:XlConditionalFormatTable::at(&v10 toEDConditionalFormatting:v8) state:v9, stateCopy];
      [conditionalFormattings addObject:v9];

      ++v8;
    }

    while (v5 != v8);
  }

  XlConditionalFormatTable::~XlConditionalFormatTable(&v10);
}

@end