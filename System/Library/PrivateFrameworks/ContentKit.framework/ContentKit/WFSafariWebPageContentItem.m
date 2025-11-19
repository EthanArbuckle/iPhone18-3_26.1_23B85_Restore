@interface WFSafariWebPageContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedPasteboardTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (WFSafariWebPage)webPage;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)getSerializedItem:(id)a3;
@end

@implementation WFSafariWebPageContentItem

- (id)defaultSourceForRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfType];
  v6 = [v5 conformsToClass:objc_opt_class()];

  if (v6)
  {
    v7 = [v4 object];

    v8 = [v7 URL];
    v9 = [WFURLContentItem attributionSetContentOfURL:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFSafariWebPageContentItem;
    v9 = [(WFContentItem *)&v11 defaultSourceForRepresentation:v4];
  }

  return v9;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if (([v4 conformsToClass:objc_opt_class()] & 1) == 0)
  {
    v6 = [(WFSafariWebPageContentItem *)self webPage];
    if ([v4 conformsToUTType:*MEMORY[0x277CE1DA0]])
    {
      v7 = [v6 selectionHTML];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v6 documentHTML];
        v5 = v8 != 0;
      }
    }

    else
    {
      if (([v4 conformsToUTType:*MEMORY[0x277CE1E20]] & 1) == 0 && !objc_msgSend(v4, "conformsToClass:", objc_opt_class()))
      {
        v10.receiver = self;
        v10.super_class = WFSafariWebPageContentItem;
        v5 = [(WFContentItem *)&v10 canGenerateRepresentationForType:v4];
        goto LABEL_11;
      }

      v7 = [v6 selectionText];
      v5 = [v7 length] != 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  if ([v7 conformsToUTType:*MEMORY[0x277CE1DA0]])
  {
    v8 = [(WFSafariWebPageContentItem *)self webPage];
    v9 = [v8 selectionHTML];
    v10 = v9;
    if (!v9)
    {
      v5 = [(WFSafariWebPageContentItem *)self webPage];
      v10 = [v5 documentHTML];
    }

    v11 = [(WFContentItem *)self name];
    v12 = [(WFSafariWebPageContentItem *)self webPage];
    v13 = [v12 URL];
    v14 = [WFFileRepresentation fileWithData:v10 ofType:v7 proposedFilename:v11 originalURL:v13];

    if (!v9)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = [(WFSafariWebPageContentItem *)self webPage];
    v9 = [v8 URL];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [(WFSafariWebPageContentItem *)self webPage];
    v9 = [v8 selectionText];
  }

  v10 = v9;
  v11 = [(WFContentItem *)self name];
  v7 = [WFObjectRepresentation object:v10 named:v11];

LABEL_7:

  return v7;
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v7 = a3;
  if (objc_opt_class() == a5)
  {
    v8 = [(WFSafariWebPageContentItem *)self webPage];
    v9 = [v8 URL];
    v10 = [v8 documentHTML];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__WFSafariWebPageContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v11[3] = &unk_278347698;
    v12 = v7;
    [WFArticle fetchArticleFromURL:v9 pageHTML:v10 completionHandler:v11];
  }

  else
  {
    v8 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (*(v7 + 2))(v7, 0, v8);
  }
}

void __77__WFSafariWebPageContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [WFObjectRepresentation object:a2];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    (*(v2 + 16))(v2, v4, 0);
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0);
  }
}

- (void)getSerializedItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WFSafariWebPageContentItem_getSerializedItem___block_invoke;
  v7[3] = &unk_27834A430;
  v8 = v4;
  v6 = v4;
  [(WFContentItem *)self coerceToItemClass:v5 completionHandler:v7];
}

void __48__WFSafariWebPageContentItem_getSerializedItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v7 firstObject];
    [v6 getSerializedItem:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (WFSafariWebPage)webPage
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Safari Web Pages", @"Safari Web Pages");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Safari Web Page", @"Safari Web Page");
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
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [WFObjectType typeWithClass:objc_opt_class()];
  v8 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

+ (id)ownedPasteboardTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.active-webpage"];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "conformsToUTType:", *MEMORY[0x277CE1DA0]) & 1) != 0 || (objc_msgSend(v4, "conformsToUTType:", *MEMORY[0x277CE1E20]) & 1) != 0 || (objc_msgSend(v4, "conformsToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFSafariWebPageContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)propertyBuilders
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Page Contents");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_9208 name:v2 class:objc_opt_class()];
  v4 = WFLocalizedContentPropertyNameMarker(@"Page Selection");
  v5 = [WFContentPropertyBuilder block:&__block_literal_global_10_9210 name:v4 class:objc_opt_class(), v3];
  v10[1] = v5;
  v6 = WFLocalizedContentPropertyNameMarker(@"Page URL");
  v7 = [WFContentPropertyBuilder keyPath:@"webPage.URL" name:v6 class:objc_opt_class()];
  v10[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

void __46__WFSafariWebPageContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a2 webPage];
  v7 = [v6 selectionHTML];
  if ([v7 length])
  {
    v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
    v9 = [v6 pageTitle];
    v10 = [v6 URL];
    v11 = [WFFileRepresentation fileWithData:v7 ofType:v8 proposedFilename:v9 originalURL:v10];

    v12 = [(WFContentItem *)WFRichTextContentItem itemWithFile:v11];
    v13 = [v6 selectionText];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 dataUsingEncoding:4];
      v16 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
      v17 = [v6 pageTitle];
      v18 = [WFFileRepresentation fileWithData:v15 ofType:v16 proposedFilename:v17];

      v24[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v20 = [v18 wfType];
      [v12 setFileRepresentations:v19 forType:v20];

      v21 = [(WFContentItem *)WFStringContentItem itemWithFile:v18];
      v23 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [v12 setSubItems:v22 forClass:objc_opt_class()];
    }

    v5[2](v5, v12);
  }

  else
  {
    v5[2](v5, 0);
  }
}

void __46__WFSafariWebPageContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v15 = [v6 webPage];
  v7 = [v15 documentHTML];
  v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v9 = [v15 pageTitle];
  v10 = [v15 URL];
  v11 = [WFFileRepresentation fileWithData:v7 ofType:v8 proposedFilename:v9 originalURL:v10];

  v12 = [v6 attributionSet];
  v13 = [v6 cachingIdentifier];

  v14 = [(WFContentItem *)WFRichTextContentItem itemWithFile:v11 attributionSet:v12 cachingIdentifier:v13];

  v5[2](v5, v14);
}

@end