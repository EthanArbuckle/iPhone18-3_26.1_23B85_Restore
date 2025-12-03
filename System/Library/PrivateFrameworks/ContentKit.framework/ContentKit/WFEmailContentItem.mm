@interface WFEmailContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFEmail)email;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
@end

@implementation WFEmailContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Emails", @"Emails");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Email", @"Email");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Sharing";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15 = WFLocalizedContentPropertyNameMarker(@"Subject");
  v14 = [WFContentPropertyBuilder keyPath:@"email.subject" name:v15 class:objc_opt_class()];
  v16[0] = v14;
  v13 = WFLocalizedContentPropertyNameMarker(@"Sender");
  v12 = [WFContentPropertyBuilder block:&__block_literal_global_25810 name:v13 class:objc_opt_class()];
  v16[1] = v12;
  v2 = WFLocalizedContentPropertyNameMarker(@"Recipients");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_11 name:v2 class:objc_opt_class()];
  v4 = [v3 multipleValues:1];
  v16[2] = v4;
  v5 = WFLocalizedContentPropertyNameMarker(@"Attachments");
  v6 = [WFContentPropertyBuilder block:&__block_literal_global_16_25814 name:v5 class:objc_opt_class()];
  v7 = [v6 multipleValues:1];
  v16[3] = v7;
  v8 = WFLocalizedContentPropertyNameMarker(@"Content");
  v9 = [WFContentPropertyBuilder block:&__block_literal_global_24 name:v8 class:objc_opt_class()];
  v16[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

  return v10;
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke_22(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 email];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__WFEmailContentItem_propertyBuilders__block_invoke_2_25;
  v8[3] = &unk_278349F78;
  v9 = v5;
  v7 = v5;
  [v6 fetchContentRepresentationWithCompletionHandler:v8];
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke_2_25(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFContentItemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[WFEmailContentItem propertyBuilders]_block_invoke_2";
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Could not get email content due to error: %{public}@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 email];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__WFEmailContentItem_propertyBuilders__block_invoke_4;
  v8[3] = &unk_27834A430;
  v9 = v5;
  v7 = v5;
  [v6 fetchAttachmentsWithCompletionHandler:v8];
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getWFContentItemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[WFEmailContentItem propertyBuilders]_block_invoke_4";
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Could not get email content due to error: %{public}@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 email];
  v7 = [v8 recipients];
  (a4)[2](v6, v7);
}

void __38__WFEmailContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 email];
  v7 = [v8 sender];
  (a4)[2](v6, v7);
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1DA0]])
  {
    email = [(WFEmailContentItem *)self email];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WFEmailContentItem_generateFileRepresentation_options_forType___block_invoke;
    v11[3] = &unk_278349F78;
    v12 = representationCopy;
    [email fetchContentRepresentationWithCompletionHandler:v11];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForType:typeCopy];
    (*(representationCopy + 2))(representationCopy, 0, v10);
  }
}

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  representationCopy = representation;
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    email = [(WFEmailContentItem *)self email];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__WFEmailContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v12[3] = &unk_278349FC8;
    v14 = representationCopy;
    v12[4] = self;
    v13 = optionsCopy;
    [email fetchContentRepresentationWithCompletionHandler:v12];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForObjectClass:class];
    (*(representationCopy + 2))(representationCopy, 0, 0, v10);
  }
}

void __68__WFEmailContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__WFEmailContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
  v7[3] = &unk_278349FA0;
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = a2;
  v6 = [v8 name];
  [WFRichTextContentItem loadAttributedStringInWebViewFromHTMLFile:v5 handler:v7 attributedStringOptions:0 documentAttributes:0 name:v6 coercionOptions:*(a1 + 40)];
}

void __68__WFEmailContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v9 = [a2 string];
  v8 = [*(a1 + 32) name];
  (*(v6 + 16))(v6, v9, v8, v7);
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class && (-[WFEmailContentItem email](self, "email"), v7 = objc_claimAutoreleasedReturnValue(), [v7 sender], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    email = [(WFEmailContentItem *)self email];
    sender = [email sender];
    email2 = [(WFEmailContentItem *)self email];
    sender2 = [email2 sender];
    address = [sender2 address];
    v6 = [WFObjectRepresentation object:sender named:address];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFEmail)email
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end