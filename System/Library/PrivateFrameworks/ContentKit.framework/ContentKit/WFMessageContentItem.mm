@interface WFMessageContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFMessage)message;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFMessageContentItem

- (id)generateObjectRepresentationsForClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  if (objc_opt_class() != class)
  {
    if (objc_opt_class() != class)
    {
      v18.receiver = self;
      v18.super_class = WFMessageContentItem;
      v9 = [(WFContentItem *)&v18 generateObjectRepresentationsForClass:class options:optionsCopy error:error];
      goto LABEL_11;
    }

    message = [(WFMessageContentItem *)self message];
    senderHandles = [message senderHandles];
    v12 = [senderHandles if_compactMap:&__block_literal_global_29_19493];

    if ([v12 count])
    {
      v13 = @"Email addresses";
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  message2 = [(WFMessageContentItem *)self message];
  senderHandles2 = [message2 senderHandles];
  v12 = [senderHandles2 if_compactMap:&__block_literal_global_19489];

  if (![v12 count])
  {
    goto LABEL_9;
  }

  v13 = @"Phone numbers";
LABEL_8:
  v16 = WFLocalizedContentPropertyNameMarker(v13);
  v9 = [WFObjectRepresentation objects:v12 named:v16];

LABEL_10:
LABEL_11:

  return v9;
}

id __76__WFMessageContentItem_generateObjectRepresentationsForClass_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([WFContact predictedTypeForHandleValue:v2]== 1)
  {
    v3 = [WFEmailAddress addressWithEmailAddress:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __76__WFMessageContentItem_generateObjectRepresentationsForClass_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([WFContact predictedTypeForHandleValue:v2])
  {
    v3 = 0;
  }

  else
  {
    v3 = [WFPhoneNumber phoneNumberWithPhoneNumberString:v2];
  }

  return v3;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    message = [(WFMessageContentItem *)self message];
    content = [message content];
    v6 = [WFObjectRepresentation object:content];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFMessage)message
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Messages", @"Messages");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Message", @"Message");
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
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
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
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Content");
  v3 = [WFContentPropertyBuilder keyPath:@"message.content" name:v2 class:objc_opt_class()];
  v4 = WFLocalizedContentPropertyNameMarker(@"Recipients");
  v5 = [WFContentPropertyBuilder keyPath:@"message.recipients" name:v4 class:objc_opt_class(), v3];
  v6 = [v5 multipleValues:1];
  v12[1] = v6;
  v7 = WFLocalizedContentPropertyNameMarker(@"Sender");
  v8 = [WFContentPropertyBuilder keyPath:@"message.senderHandles" name:v7 class:objc_opt_class()];
  v9 = [v8 multipleValues:1];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

@end