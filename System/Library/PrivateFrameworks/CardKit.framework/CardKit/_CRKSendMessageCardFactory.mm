@interface _CRKSendMessageCardFactory
- (BOOL)canSatisfyCardRequest:(id)request;
- (_CRKSendMessageCardFactory)initWithCoder:(id)coder;
- (_CRKSendMessageCardFactoryDelegate)delegate;
- (void)buildCardForContent:(id)content completion:(id)completion;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation _CRKSendMessageCardFactory

- (void)buildCardForContent:(id)content completion:(id)completion
{
  v79 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([contentCopy conformsToProtocol:&unk_2856156B8])
    {
      completionCopy[2](completionCopy, contentCopy, 0);
      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      underlyingInteraction = [contentCopy underlyingInteraction];
    }

    else
    {
      underlyingInteraction = 0;
    }

    intent = [underlyingInteraction intent];
    if (!intent || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      completionCopy[2](completionCopy, 0, 0);
LABEL_35:

      goto LABEL_36;
    }

    v68 = intent;
    v10 = intent;
    v70 = underlyingInteraction;
    intentResponse = [underlyingInteraction intentResponse];
    v11 = objc_alloc_init(MEMORY[0x277D4C230]);
    [v11 setType:1];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v11 setCardId:uUIDString];

    v69 = v11;
    [v11 setSource:2];
    v67 = objc_alloc_init(MEMORY[0x277D4C6A0]);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SEND_MESSAGE_TO_PREFIX" value:&stru_2855E9570 table:0];

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v71 = v10;
    recipients = [v10 recipients];
    v18 = [recipients countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v74;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(recipients);
          }

          displayName = [*(*(&v73 + 1) + 8 * i) displayName];
          [v16 addObject:displayName];
        }

        v19 = [recipients countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v19);
    }

    delegate = [(_CRKSendMessageCardFactory *)self delegate];
    v24 = [delegate semanticContentAttributeForCardFactory:self];

    if (v24 == 4)
    {
      reverseObjectEnumerator = [v16 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
    }

    else
    {
      allObjects = v16;
    }

    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"MESSAGE_RECIPIENTS_DELIMITER" value:&stru_2855E9570 table:0];
    v29 = [allObjects componentsJoinedByString:v28];

    speakableGroupName = [v71 speakableGroupName];
    spokenPhrase = [speakableGroupName spokenPhrase];
    v66 = allObjects;
    if (spokenPhrase)
    {
      v32 = spokenPhrase;
      v64 = v24;
      v33 = v29;
      speakableGroupName2 = [v71 speakableGroupName];
      spokenPhrase2 = [speakableGroupName2 spokenPhrase];

      if (!spokenPhrase2)
      {
        v29 = v33;
        v24 = v64;
        goto LABEL_25;
      }

      speakableGroupName = [v71 speakableGroupName];
      spokenPhrase3 = [speakableGroupName spokenPhrase];
      v29 = [spokenPhrase3 mutableCopy];

      v24 = v64;
    }

LABEL_25:
    v65 = v29;
    if (v24 == 4)
    {
      v37 = [v29 copy];
      v38 = v15;
    }

    else
    {
      v37 = v15;
      v38 = [v29 copy];
    }

    v62 = v38;
    v63 = v37;
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v37, v38];
    [v67 setTitle:v39];

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    [v67 setCardSectionId:uUIDString2];

    [v67 setParameterKeyPaths:&unk_2855EFFF0];
    [v67 setSeparatorStyle:2];
    v42 = objc_alloc_init(MEMORY[0x277D4C498]);
    if ([intentResponse code] == 3)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    [v42 setMessageStatus:v43];
    launchId = [v71 launchId];
    INExtractAppInfoFromSiriLaunchId();
    v61 = 0;

    if ([v61 isEqualToString:@"com.apple.MobileSMS"])
    {
      v45 = 1;
    }

    else
    {
      v45 = 3;
    }

    [v42 setMessageServiceType:v45];
    content = [v71 content];
    [v42 setMessageText:content];
    [v42 setSeparatorStyle:1];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUIDString3 = [uUID3 UUIDString];
    [v42 setCardSectionId:uUIDString3];

    [v42 setParameterKeyPaths:&unk_2855F0008];
    backingStore = [v71 backingStore];
    data = [backingStore data];

    [v69 setIntentMessageData:data];
    objc_opt_class();
    v50 = INIntentSchemaGetIntentDescriptionWithFacadeClass();
    type = [v50 type];
    [v69 setIntentMessageName:type];

    backingStore2 = [intentResponse backingStore];
    data2 = [backingStore2 data];
    [v69 setIntentResponseMessageData:data2];

    objc_opt_class();
    v54 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
    type2 = [v54 type];
    [v69 setIntentResponseMessageName:type2];

    v56 = objc_alloc_init(MEMORY[0x277D4C4C0]);
    uUID4 = [MEMORY[0x277CCAD78] UUID];
    uUIDString4 = [uUID4 UUIDString];
    [v56 setCardSectionId:uUIDString4];

    [v56 setParameterKeyPaths:MEMORY[0x277CBEBF8]];
    v77[0] = v56;
    v77[1] = v67;
    v77[2] = v42;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
    [v69 setCardSections:v59];

    completionCopy[2](completionCopy, v69, 0);
    underlyingInteraction = v70;
    intent = v68;
    goto LABEL_35;
  }

LABEL_36:
}

- (void)requestCard:(id)card reply:(id)reply
{
  replyCopy = reply;
  content = [card content];
  [(_CRKSendMessageCardFactory *)self buildCardForContent:content completion:replyCopy];
}

- (BOOL)canSatisfyCardRequest:(id)request
{
  requestCopy = request;
  content = [requestCopy content];
  if (objc_opt_respondsToSelector())
  {
    underlyingInteraction = [content underlyingInteraction];
    intent = [underlyingInteraction intent];
  }

  else
  {
    intent = 0;
  }

  v7 = 0;
  if (([content conformsToProtocol:&unk_2856156B8] & 1) == 0 && intent)
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [requestCopy format] != 2;
  }

  return v7;
}

- (_CRKSendMessageCardFactory)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _CRKSendMessageCardFactory;
  return [(_CRKSendMessageCardFactory *)&v4 init];
}

- (_CRKSendMessageCardFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end