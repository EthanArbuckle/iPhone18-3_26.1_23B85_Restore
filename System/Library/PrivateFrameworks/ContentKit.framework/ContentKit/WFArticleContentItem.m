@interface WFArticleContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)fileWithHTML:(id)a3 named:(id)a4;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)a3;
- (WFArticle)article;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)htmlRepresentation;
@end

@implementation WFArticleContentItem

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
    v11.super_class = WFArticleContentItem;
    v9 = [(WFContentItem *)&v11 defaultSourceForRepresentation:v4];
  }

  return v9;
}

- (id)htmlRepresentation
{
  v2 = [(WFArticleContentItem *)self article];
  v3 = [v2 body];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 excerpt];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v2 title];
    }

    v5 = v8;
  }

  return v5;
}

- (WFArticle)article
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Articles", @"Articles");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Article (singular)", @"Article");
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

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)coercions
{
  v20[5] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v18 = [a1 htmlCoercionHandler];
  v17 = [WFCoercion coercionToType:v19 handler:v18];
  v20[0] = v17;
  v3 = objc_opt_class();
  v4 = [a1 stringCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:v4];
  v20[1] = v5;
  v6 = objc_opt_class();
  v7 = [a1 dateCoercionHandler];
  v8 = [WFCoercion coercionToClass:v6 handler:v7];
  v20[2] = v8;
  v9 = objc_opt_class();
  v10 = [a1 URLCoercionHandler];
  v11 = [WFCoercion coercionToClass:v9 handler:v10];
  v20[3] = v11;
  v12 = objc_opt_class();
  v13 = [a1 imageCoercionHandler];
  v14 = [WFCoercion coercionToClass:v12 handler:v13];
  v20[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  return v15;
}

BOOL __44__WFArticleContentItem_imageCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 article];
  v3 = [v2 mainImageURL];
  v4 = v3 != 0;

  return v4;
}

void __44__WFArticleContentItem_imageCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a2 article];
  v12 = [v8 mainImageURL];

  v9 = [WFContentItem itemWithObject:v12];
  v10 = [v7 requestedType];
  v11 = [v7 options];

  [v9 getRepresentationsForType:v10 options:v11 completionHandler:v6];
}

BOOL __42__WFArticleContentItem_URLCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 article];
  v3 = [v2 URL];
  v4 = v3 != 0;

  return v4;
}

id __42__WFArticleContentItem_URLCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 article];
  v4 = [v3 URL];
  v5 = [v2 article];

  v6 = [v5 title];
  v7 = [WFObjectRepresentation object:v4 named:v6];

  return v7;
}

BOOL __43__WFArticleContentItem_dateCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 article];
  v3 = [v2 publishedDate];
  v4 = v3 != 0;

  return v4;
}

id __43__WFArticleContentItem_dateCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 article];
  v3 = [v2 publishedDate];
  v4 = WFLocalizedContentPropertyNameMarker(@"Article Publish Date");
  v5 = [WFObjectRepresentation object:v3 named:v4];

  return v5;
}

BOOL __45__WFArticleContentItem_stringCoercionHandler__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 article];
  v4 = [v3 body];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 article];
    v7 = [v6 excerpt];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v2 article];
      v9 = [v8 title];
      v5 = v9 != 0;
    }
  }

  return v5;
}

void __45__WFArticleContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [v8 article];
  v10 = [v9 title];

  v11 = objc_opt_class();
  v12 = [v8 htmlRepresentation];

  v13 = [v11 fileWithHTML:v12 named:v10];

  v17 = MEMORY[0x277D85DD0];
  v18 = v10;
  v19 = v6;
  v14 = v10;
  v15 = v6;
  v16 = [v7 options];

  [WFRichTextContentItem loadAttributedStringInWebViewFromHTMLFile:v13 handler:&v17 attributedStringOptions:0 documentAttributes:0 name:v14 coercionOptions:v16];
}

void __45__WFArticleContentItem_stringCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v7 = [a2 string];
    v4 = [WFObjectRepresentation object:v7 named:*(a1 + 32)];
    (*(v2 + 16))(v2, v4, 0);
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(a1 + 40);

    v5(v6);
  }
}

BOOL __43__WFArticleContentItem_htmlCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 article];
  v4 = [v3 body];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 article];
    v7 = [v6 excerpt];
    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v2 article];
      v9 = [v8 title];
      v5 = v9 != 0;
    }
  }

  return v5;
}

id __43__WFArticleContentItem_htmlCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = [v2 htmlRepresentation];
  v5 = [v2 article];

  v6 = [v5 title];
  v7 = [v3 fileWithHTML:v4 named:v6];

  return v7;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Body"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)fileWithHTML:(id)a3 named:(id)a4
{
  v5 = a4;
  v6 = [WFRichTextContentItem normalizedHTMLDocumentFromHTML:a3];
  v7 = [v6 dataUsingEncoding:4];
  v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  if (v5)
  {
    v9 = [WFFileRepresentation fileWithData:v7 ofType:v8 proposedFilename:v5];
  }

  else
  {
    v10 = [objc_opt_class() localizedTypeDescription];
    v9 = [WFFileRepresentation fileWithData:v7 ofType:v8 proposedFilename:v10];
  }

  return v9;
}

+ (id)propertyBuilders
{
  v23[8] = *MEMORY[0x277D85DE8];
  v20 = WFLocalizedContentPropertyNameMarker(@"Title");
  v19 = [WFContentPropertyBuilder keyPath:@"article.title" name:v20 class:objc_opt_class()];
  v23[0] = v19;
  v18 = WFLocalizedContentPropertyNameMarker(@"Author");
  v17 = [WFContentPropertyBuilder keyPath:@"article.author" name:v18 class:objc_opt_class()];
  v23[1] = v17;
  v16 = WFLocalizedContentPropertyNameMarker(@"Published Date");
  v15 = [WFContentPropertyBuilder keyPath:@"article.publishedDate" name:v16 class:objc_opt_class()];
  v23[2] = v15;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__WFArticleContentItem_propertyBuilders__block_invoke;
  v22[3] = &__block_descriptor_40_e43_v32__0__WFArticleContentItem_8_16___v____24l;
  v22[4] = a1;
  v14 = WFLocalizedContentPropertyNameMarker(@"Body");
  v3 = [WFContentPropertyBuilder block:v22 name:v14 class:objc_opt_class()];
  v23[3] = v3;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__WFArticleContentItem_propertyBuilders__block_invoke_2;
  v21[3] = &__block_descriptor_40_e43_v32__0__WFArticleContentItem_8_16___v____24l;
  v21[4] = a1;
  v4 = WFLocalizedContentPropertyNameMarker(@"Excerpt");
  v5 = [WFContentPropertyBuilder block:v21 name:v4 class:objc_opt_class()];
  v23[4] = v5;
  v6 = WFLocalizedContentPropertyNameMarker(@"Number of Words");
  v7 = [WFContentPropertyBuilder keyPath:@"article.numberOfWords" name:v6 class:objc_opt_class()];
  v23[5] = v7;
  v8 = WFLocalizedContentPropertyNameMarker(@"Main Image URL");
  v9 = [WFContentPropertyBuilder keyPath:@"article.mainImageURL" name:v8 class:objc_opt_class()];
  v23[6] = v9;
  v10 = WFLocalizedContentPropertyNameMarker(@"URL");
  v11 = [WFContentPropertyBuilder keyPath:@"article.URL" name:v10 class:objc_opt_class()];
  v23[7] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:8];

  return v12;
}

void __40__WFArticleContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  v7 = [v13 article];
  v8 = [v7 body];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v13 article];
    v11 = [v10 title];
    v12 = [v9 fileWithHTML:v8 named:v11];
    v6[2](v6, v12);
  }

  else
  {
    v6[2](v6, 0);
  }
}

void __40__WFArticleContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  v7 = [v13 article];
  v8 = [v7 excerpt];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v13 article];
    v11 = [v10 title];
    v12 = [v9 fileWithHTML:v8 named:v11];
    v6[2](v6, v12);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFArticleContentItem *)self article];
  v6 = [v5 publishedDate];

  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setDateStyle:3];
    [v7 setTimeStyle:1];
    [v7 setDoesRelativeDateFormatting:1];
    if (v4)
    {
      v8 = [v7 stringFromDate:v6];
      v4[2](v4, v8);
    }
  }

  return v6 != 0;
}

@end