@interface WFGeneratedContentItem
+ (id)BOOLCoercionHandler;
+ (id)attributedStringCoercionHandler;
+ (id)coercions;
+ (id)dateCoercionHandler;
+ (id)dictionaryCoercionHandler;
+ (id)getTextResponseWithItem:(id)item;
+ (id)itemWithResponse:(id)response;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)numberCoercionHandler;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)textCoercionHandler;
- (WFGeneratedResponse)response;
- (id)richListTitle;
- (void)getSerializedItem:(id)item;
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

+ (id)getTextResponseWithItem:(id)item
{
  itemCopy = item;
  sub_21E23A178(itemCopy);
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
  textResponse = [(WFGeneratedContentItem *)self textResponse];
  if (textResponse && (v4 = textResponse, -[WFGeneratedContentItem textResponse](self, "textResponse"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    textResponse2 = [(WFGeneratedContentItem *)self textResponse];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFGeneratedContentItem;
    textResponse2 = [(WFContentItem *)&v9 richListTitle];
  }

  return textResponse2;
}

- (void)getSerializedItem:(id)item
{
  itemCopy = item;
  response = [(WFGeneratedContentItem *)self response];
  rawResponse = [response rawResponse];
  v7 = [rawResponse length];

  if (v7)
  {
    v8 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__WFGeneratedContentItem_getSerializedItem___block_invoke;
    v25[3] = &unk_27834A430;
    v9 = &v26;
    v26 = itemCopy;
    v10 = itemCopy;
    v11 = v25;
  }

  else
  {
    response2 = [(WFGeneratedContentItem *)self response];
    date = [response2 date];

    if (!date)
    {
      response3 = [(WFGeneratedContentItem *)self response];
      dictionary = [response3 dictionary];

      if (!dictionary)
      {
        response4 = [(WFGeneratedContentItem *)self response];
        bOOLeanValue = [response4 BOOLeanValue];

        if (!bOOLeanValue)
        {
          response5 = [(WFGeneratedContentItem *)self response];
          [response5 numberValue];
        }
      }
    }

    v8 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __44__WFGeneratedContentItem_getSerializedItem___block_invoke_2;
    v23 = &unk_27834A430;
    v9 = &v24;
    v24 = itemCopy;
    v19 = itemCopy;
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
  attributedStringCoercionHandler = [self attributedStringCoercionHandler];
  v22 = [WFCoercion coercionToClass:v3 handler:attributedStringCoercionHandler];
  v24[0] = v22;
  v4 = objc_opt_class();
  textCoercionHandler = [self textCoercionHandler];
  v20 = [WFCoercion coercionToClass:v4 handler:textCoercionHandler];
  v24[1] = v20;
  v5 = objc_opt_class();
  numberCoercionHandler = [self numberCoercionHandler];
  v6 = [WFCoercion coercionToClass:v5 handler:numberCoercionHandler];
  v24[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = objc_opt_class();
  bOOLCoercionHandler = [self BOOLCoercionHandler];
  v10 = [WFCoercion coercionToClass:v8 handler:bOOLCoercionHandler];
  v24[3] = v10;
  v11 = objc_opt_class();
  dictionaryCoercionHandler = [self dictionaryCoercionHandler];
  v13 = [WFCoercion coercionToClass:v11 handler:dictionaryCoercionHandler];
  v24[4] = v13;
  v14 = objc_opt_class();
  dateCoercionHandler = [self dateCoercionHandler];
  v16 = [WFCoercion coercionToClass:v14 handler:dateCoercionHandler];
  v24[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  return v17;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Model Response", @"Model Response");
  v5 = [contextCopy localize:v4];

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

+ (id)itemWithResponse:(id)response
{
  responseCopy = response;
  if (!responseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGeneratedContentItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"response"}];
  }

  v6 = [self itemWithObject:responseCopy named:0];

  return v6;
}

@end