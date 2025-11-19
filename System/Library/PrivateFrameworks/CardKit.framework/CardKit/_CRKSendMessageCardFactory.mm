@interface _CRKSendMessageCardFactory
- (BOOL)canSatisfyCardRequest:(id)a3;
- (_CRKSendMessageCardFactory)initWithCoder:(id)a3;
- (_CRKSendMessageCardFactoryDelegate)delegate;
- (void)buildCardForContent:(id)a3 completion:(id)a4;
- (void)requestCard:(id)a3 reply:(id)a4;
@end

@implementation _CRKSendMessageCardFactory

- (void)buildCardForContent:(id)a3 completion:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 conformsToProtocol:&unk_2856156B8])
    {
      v7[2](v7, v6, 0);
      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 underlyingInteraction];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 intent];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7[2](v7, 0, 0);
LABEL_35:

      goto LABEL_36;
    }

    v68 = v9;
    v10 = v9;
    v70 = v8;
    v72 = [v8 intentResponse];
    v11 = objc_alloc_init(MEMORY[0x277D4C230]);
    [v11 setType:1];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    [v11 setCardId:v13];

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
    v17 = [v10 recipients];
    v18 = [v17 countByEnumeratingWithState:&v73 objects:v78 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v73 + 1) + 8 * i) displayName];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v19);
    }

    v23 = [(_CRKSendMessageCardFactory *)self delegate];
    v24 = [v23 semanticContentAttributeForCardFactory:self];

    if (v24 == 4)
    {
      v25 = [v16 reverseObjectEnumerator];
      v26 = [v25 allObjects];
    }

    else
    {
      v26 = v16;
    }

    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"MESSAGE_RECIPIENTS_DELIMITER" value:&stru_2855E9570 table:0];
    v29 = [v26 componentsJoinedByString:v28];

    v30 = [v71 speakableGroupName];
    v31 = [v30 spokenPhrase];
    v66 = v26;
    if (v31)
    {
      v32 = v31;
      v64 = v24;
      v33 = v29;
      v34 = [v71 speakableGroupName];
      v35 = [v34 spokenPhrase];

      if (!v35)
      {
        v29 = v33;
        v24 = v64;
        goto LABEL_25;
      }

      v30 = [v71 speakableGroupName];
      v36 = [v30 spokenPhrase];
      v29 = [v36 mutableCopy];

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

    v40 = [MEMORY[0x277CCAD78] UUID];
    v41 = [v40 UUIDString];
    [v67 setCardSectionId:v41];

    [v67 setParameterKeyPaths:&unk_2855EFFF0];
    [v67 setSeparatorStyle:2];
    v42 = objc_alloc_init(MEMORY[0x277D4C498]);
    if ([v72 code] == 3)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    [v42 setMessageStatus:v43];
    v44 = [v71 launchId];
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
    v60 = [v71 content];
    [v42 setMessageText:v60];
    [v42 setSeparatorStyle:1];
    v46 = [MEMORY[0x277CCAD78] UUID];
    v47 = [v46 UUIDString];
    [v42 setCardSectionId:v47];

    [v42 setParameterKeyPaths:&unk_2855F0008];
    v48 = [v71 backingStore];
    v49 = [v48 data];

    [v69 setIntentMessageData:v49];
    objc_opt_class();
    v50 = INIntentSchemaGetIntentDescriptionWithFacadeClass();
    v51 = [v50 type];
    [v69 setIntentMessageName:v51];

    v52 = [v72 backingStore];
    v53 = [v52 data];
    [v69 setIntentResponseMessageData:v53];

    objc_opt_class();
    v54 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
    v55 = [v54 type];
    [v69 setIntentResponseMessageName:v55];

    v56 = objc_alloc_init(MEMORY[0x277D4C4C0]);
    v57 = [MEMORY[0x277CCAD78] UUID];
    v58 = [v57 UUIDString];
    [v56 setCardSectionId:v58];

    [v56 setParameterKeyPaths:MEMORY[0x277CBEBF8]];
    v77[0] = v56;
    v77[1] = v67;
    v77[2] = v42;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
    [v69 setCardSections:v59];

    v7[2](v7, v69, 0);
    v8 = v70;
    v9 = v68;
    goto LABEL_35;
  }

LABEL_36:
}

- (void)requestCard:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [a3 content];
  [(_CRKSendMessageCardFactory *)self buildCardForContent:v7 completion:v6];
}

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 content];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 underlyingInteraction];
    v6 = [v5 intent];
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  if (([v4 conformsToProtocol:&unk_2856156B8] & 1) == 0 && v6)
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 format] != 2;
  }

  return v7;
}

- (_CRKSendMessageCardFactory)initWithCoder:(id)a3
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