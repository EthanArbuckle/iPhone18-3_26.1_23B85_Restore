@interface WFFTPDirectoryListingContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFFTPDirectoryListingContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"FTP directories", @"FTP directories");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"FTP directory", @"FTP directory");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Web";
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
  v3 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-ftp-directory"];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a3)
  {
    v8 = [(WFContentItem *)self internalRepresentationType];
    v9 = [(WFContentItem *)self fileRepresentationForType:v8];

    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v9 data];
    v12 = [v10 initWithData:v11 encoding:4];

    v13 = [v12 componentsSeparatedByString:@"\r\n"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __88__WFFTPDirectoryListingContentItem_generateObjectRepresentationsForClass_options_error___block_invoke;
    v19[3] = &unk_278347D20;
    v20 = v9;
    v14 = v9;
    v7 = [v13 if_compactMap:v19];
    v15 = v20;
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v16 = [WFObjectType typeWithClass:objc_opt_class()];
    v12 = [(WFContentItem *)self getRepresentationsForType:v16 error:0];

    v13 = [v12 if_map:&__block_literal_global_15565];
    v14 = [v13 componentsJoinedByString:@"\n"];
    v15 = [(WFContentItem *)self name];
    v17 = [WFObjectRepresentation object:v14 named:v15];
    v21[0] = v17;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

LABEL_7:

  return v7;
}

id __88__WFFTPDirectoryListingContentItem_generateObjectRepresentationsForClass_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@" "];
  v4 = [v3 mutableCopy];

  [v4 removeObject:&stru_282F53518];
  if ([v4 count] >= 8)
  {
    v6 = [v4 subarrayWithRange:{8, objc_msgSend(v4, "count") - 8}];
    v7 = [v6 componentsJoinedByString:@" "];

    v8 = [*(a1 + 32) originalURL];
    v9 = [v8 URLByAppendingPathComponent:v7];

    v5 = [WFObjectRepresentation object:v9 named:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __88__WFFTPDirectoryListingContentItem_generateObjectRepresentationsForClass_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = [v2 absoluteString];

  return v3;
}

@end