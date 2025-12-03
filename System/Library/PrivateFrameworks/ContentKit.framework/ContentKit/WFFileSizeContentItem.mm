@interface WFFileSizeContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (WFFileSize)fileSize;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFFileSizeContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"File sizes", @"File sizes");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"File size", @"File size");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Documents";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    fileSize = [(WFFileSizeContentItem *)self fileSize];
    formattedString = [fileSize formattedString];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v10 = MEMORY[0x277CCABB0];
    fileSize = [(WFFileSizeContentItem *)self fileSize];
    formattedString = [v10 numberWithLongLong:{objc_msgSend(fileSize, "byteCount")}];
  }

  v11 = formattedString;
  v7 = [WFObjectRepresentation object:formattedString];

LABEL_7:

  return v7;
}

- (WFFileSize)fileSize
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end