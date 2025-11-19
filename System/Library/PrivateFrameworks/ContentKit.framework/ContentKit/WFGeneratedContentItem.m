@interface WFGeneratedContentItem
+ (id)BOOLCoercionHandler;
+ (id)attributedStringCoercionHandler;
+ (id)coercions;
+ (id)dateCoercionHandler;
+ (id)dictionaryCoercionHandler;
+ (id)getTextResponseWithItem:(id)a3;
+ (id)itemWithResponse:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)numberCoercionHandler;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)textCoercionHandler;
- (WFGeneratedResponse)response;
- (id)richListTitle;
- (void)getSerializedItem:(id)a3;
@end

@implementation WFGeneratedContentItem

+ (id)textCoercionHandler
{
  v2 = sub_21E2345D4();

  return v2;
}

+ (id)dictionaryCoercionHandler
{
  v2 = sub_21E234AA0();

  return v2;
}

+ (id)BOOLCoercionHandler
{
  v2 = sub_21E234E90();

  return v2;
}

+ (id)numberCoercionHandler
{
  v2 = sub_21E235338();

  return v2;
}

+ (id)dateCoercionHandler
{
  v2 = sub_21E235788();

  return v2;
}

+ (id)attributedStringCoercionHandler
{
  v2 = sub_21E235C10();

  return v2;
}

+ (id)getTextResponseWithItem:(id)a3
{
  v3 = a3;
  sub_21E23A178(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_21E3437A0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)richListTitle
{
  v3 = [(WFGeneratedContentItem *)self textResponse];
  if (v3 && (v4 = v3, -[WFGeneratedContentItem textResponse](self, "textResponse"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = [(WFGeneratedContentItem *)self textResponse];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFGeneratedContentItem;
    v7 = [(WFContentItem *)&v9 richListTitle];
  }

  return v7;
}

- (void)getSerializedItem:(id)a3
{
  v4 = a3;
  v5 = [(WFGeneratedContentItem *)self response];
  v6 = [v5 rawResponse];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__WFGeneratedContentItem_getSerializedItem___block_invoke;
    v25[3] = &unk_27834A430;
    v9 = &v26;
    v26 = v4;
    v10 = v4;
    v11 = v25;
  }

  else
  {
    v12 = [(WFGeneratedContentItem *)self response];
    v13 = [v12 date];

    if (!v13)
    {
      v14 = [(WFGeneratedContentItem *)self response];
      v15 = [v14 dictionary];

      if (!v15)
      {
        v16 = [(WFGeneratedContentItem *)self response];
        v17 = [v16 BOOLeanValue];

        if (!v17)
        {
          v18 = [(WFGeneratedContentItem *)self response];
          [v18 numberValue];
        }
      }
    }

    v8 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __44__WFGeneratedContentItem_getSerializedItem___block_invoke_2;
    v23 = &unk_27834A430;
    v9 = &v24;
    v24 = v4;
    v19 = v4;
    v11 = &v20;
  }

  [(WFContentItem *)self coerceToItemClass:v8 completionHandler:v11, v20, v21, v22, v23];
}

void __44__WFGeneratedContentItem_getSerializedItem___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __44__WFGeneratedContentItem_getSerializedItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (WFGeneratedResponse)response
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
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
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v23 = [a1 attributedStringCoercionHandler];
  v22 = [WFCoercion coercionToClass:v3 handler:v23];
  v24[0] = v22;
  v4 = objc_opt_class();
  v21 = [a1 textCoercionHandler];
  v20 = [WFCoercion coercionToClass:v4 handler:v21];
  v24[1] = v20;
  v5 = objc_opt_class();
  v19 = [a1 numberCoercionHandler];
  v6 = [WFCoercion coercionToClass:v5 handler:v19];
  v24[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = objc_opt_class();
  v9 = [a1 BOOLCoercionHandler];
  v10 = [WFCoercion coercionToClass:v8 handler:v9];
  v24[3] = v10;
  v11 = objc_opt_class();
  v12 = [a1 dictionaryCoercionHandler];
  v13 = [WFCoercion coercionToClass:v11 handler:v12];
  v24[4] = v13;
  v14 = objc_opt_class();
  v15 = [a1 dateCoercionHandler];
  v16 = [WFCoercion coercionToClass:v14 handler:v15];
  v24[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  return v17;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Model Response", @"Model Response");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)propertyBuilders
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (VCIsInternalBuild())
  {
    v2 = WFLocalizedContentPropertyNameMarker(@"Transcript");
    v3 = [WFContentPropertyBuilder block:&__block_literal_global_15949 name:v2 class:objc_opt_class()];
    v8[0] = v3;
    v4 = WFLocalizedContentPropertyNameMarker(@"Rendered User Content");
    v5 = [WFContentPropertyBuilder block:&__block_literal_global_180 name:v4 class:objc_opt_class()];
    v8[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

void __42__WFGeneratedContentItem_propertyBuilders__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v7 = [WFGeneratedContentItem getRenderedUserContentWithItem:a2];
  (a4)[2](v6, v7);
}

void __42__WFGeneratedContentItem_propertyBuilders__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v7 = [WFGeneratedContentItem getConversationHistoryWithItem:a2];
  (a4)[2](v6, v7);
}

+ (id)itemWithResponse:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFGeneratedContentItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"response"}];
  }

  v6 = [a1 itemWithObject:v5 named:0];

  return v6;
}

@end