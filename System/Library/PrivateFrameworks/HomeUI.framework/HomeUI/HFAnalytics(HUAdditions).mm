@interface HFAnalytics(HUAdditions)
+ (id)_overrideBannerItemClassName:()HUAdditions withOverrideClassName:;
+ (void)logAndSendTileInteractionEventOfType:()HUAdditions withPresentationContext:presentationCoordinator:;
+ (void)sendBannerInteractionforItem:()HUAdditions tappedBannerItemOverrideClassName:hiddenBannerEvents:;
+ (void)sendGeneralButtonTapEventWithButtonTitle:()HUAdditions sourceViewController:;
+ (void)sendSwitchCellToggleEventForItem:()HUAdditions isOn:title:fromSourceViewController:;
@end

@implementation HFAnalytics(HUAdditions)

+ (void)logAndSendTileInteractionEventOfType:()HUAdditions withPresentationContext:presentationCoordinator:
{
  v85 = *MEMORY[0x277D85DE8];
  v74 = a4;
  v73 = a5;
  switch(a3)
  {
    case 3:
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [v73 delegate];
        item = [v74 item];
        *buf = 138412546;
        *&buf[4] = delegate;
        *&buf[12] = 2112;
        *&buf[14] = item;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User long-pressed item: %@", buf, 0x16u);
      }

      goto LABEL_12;
    case 2:
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [v73 delegate];
        item2 = [v74 item];
        *buf = 138412546;
        *&buf[4] = delegate2;
        *&buf[12] = 2112;
        *&buf[14] = item2;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User double-tapped item: %@", buf, 0x16u);
      }

      goto LABEL_12;
    case 1:
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        delegate3 = [v73 delegate];
        item3 = [v74 item];
        *buf = 138412546;
        *&buf[4] = delegate3;
        *&buf[12] = 2112;
        *&buf[14] = item3;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User tapped item: %@", buf, 0x16u);
      }

LABEL_12:

      goto LABEL_14;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  NSLog(&cfstr_InvalidInterac.isa, v14);

LABEL_14:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D13528]];

  item4 = [v74 item];
  [dictionary setObject:item4 forKeyedSubscript:*MEMORY[0x277D13538]];
  sourceViewController = [v74 sourceViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [sourceViewController topViewController];
    v20 = topViewController;
    if (topViewController)
    {
      v21 = topViewController;
    }

    else
    {
      v21 = sourceViewController;
    }

    v22 = v21;

    sourceViewController = v22;
  }

  [dictionary setObject:sourceViewController forKeyedSubscript:*MEMORY[0x277D13588]];
  objc_opt_class();
  v23 = sourceViewController;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v72 = v24;

  objc_opt_class();
  v25 = v23;
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v71 = v26;

  if (v72)
  {
    context = [v72 context];
    typeDescriptionForAnalytics = [context typeDescriptionForAnalytics];
    [dictionary setObject:typeDescriptionForAnalytics forKeyedSubscript:*MEMORY[0x277D134F8]];
  }

  else
  {
    if (!v71)
    {
      goto LABEL_30;
    }

    context = [v71 contextTypeDescriptionForAnalytics];
    [dictionary setObject:context forKeyedSubscript:*MEMORY[0x277D134F8]];
  }

LABEL_30:
  tappedArea = [v74 tappedArea];
  [dictionary setObject:tappedArea forKeyedSubscript:*MEMORY[0x277D135C0]];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v73, "isEditing")}];
  [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x277D13530]];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v82 = __Block_byref_object_copy__19;
  v83 = __Block_byref_object_dispose__19;
  latestResults = [item4 latestResults];
  v84 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14058]];

  objc_opt_class();
  v32 = item4;
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    allHomesFuture = [mEMORY[0x277D146E8] allHomesFuture];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __113__HFAnalytics_HUAdditions__logAndSendTileInteractionEventOfType_withPresentationContext_presentationCoordinator___block_invoke;
    v75[3] = &unk_277DBF740;
    v80 = buf;
    v76 = v32;
    v77 = dictionary;
    v78 = v34;
    v79 = v74;
    v37 = [allHomesFuture addCompletionBlock:v75];

    v38 = v76;
  }

  else
  {
    objc_opt_class();
    v39 = v32;
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v70 = v40;

    if (v70)
    {
      objc_opt_class();
      accessoryRepresentableObject = [v70 accessoryRepresentableObject];
      if (objc_opt_isKindOfClass())
      {
        v42 = accessoryRepresentableObject;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      v44 = MEMORY[0x277CD1650];
      hf_categoryOrPrimaryServiceType = [v43 hf_categoryOrPrimaryServiceType];
      v46 = [v44 hf_getUserFriendlyDescriptionKey:hf_categoryOrPrimaryServiceType];

      if ([v46 length])
      {
        v47 = MEMORY[0x277CCACA8];
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = [v47 stringWithFormat:@"%@-%@", v49, v46];
        v51 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v50;
      }
    }

    objc_opt_class();
    v52 = v39;
    if (objc_opt_isKindOfClass())
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v69 = v53;

    if (v69)
    {
      v54 = MEMORY[0x277CD1D90];
      serviceGroup = [v69 serviceGroup];
      services = [serviceGroup services];
      firstObject = [services firstObject];
      serviceType = [firstObject serviceType];
      v59 = [v54 hf_getUserFriendlyDescriptionKey:serviceType];

      if ([v59 length])
      {
        v60 = MEMORY[0x277CCACA8];
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = [v60 stringWithFormat:@"%@-%@", v62, v59];
        v64 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v63;
      }
    }

    [dictionary na_safeSetObject:*(*&buf[8] + 40) forKey:*MEMORY[0x277D13540]];
    v65 = MEMORY[0x277D143E0];
    home = [v74 home];
    [v65 createAndSendWithData:dictionary inHome:home presentationContext:v74];

    tappedArea2 = [v74 tappedArea];
    LODWORD(v65) = [tappedArea2 isEqual:@"HUTileCellTappableAreaStateToggleButton"];

    if (v65)
    {
      v68 = +[HUTipsManager_Swift sharedManager];
      [v68 toggleDidInteract];
    }

    v38 = v70;
  }

  _Block_object_dispose(buf, 8);
}

+ (void)sendSwitchCellToggleEventForItem:()HUAdditions isOn:title:fromSourceViewController:
{
  v9 = a6;
  v10 = MEMORY[0x277CBEB38];
  v11 = a5;
  v12 = a3;
  dictionary = [v10 dictionary];
  [dictionary na_safeSetObject:v12 forKey:*MEMORY[0x277D13538]];

  v14 = v9;
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  topViewController = v15;
  if (v17)
  {
    topViewController = [v17 topViewController];
  }

  [dictionary na_safeSetObject:topViewController forKey:*MEMORY[0x277D13588]];
  objc_opt_class();
  v28 = v15;
  if (objc_opt_isKindOfClass())
  {
    v19 = v28;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    topic = [v20 topic];
    topicNameLocalizationKey = [topic topicNameLocalizationKey];
    v26 = [v21 stringWithFormat:@"%@-%@", v23, topicNameLocalizationKey];
  }

  else
  {
    v26 = 0;
  }

  [dictionary na_safeSetObject:v26 forKey:*MEMORY[0x277D13590]];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [dictionary na_safeSetObject:v27 forKey:*MEMORY[0x277D135A0]];

  [dictionary na_safeSetObject:v11 forKey:*MEMORY[0x277D135A8]];
  [MEMORY[0x277D143D8] sendEvent:40 withData:dictionary];
}

+ (void)sendBannerInteractionforItem:()HUAdditions tappedBannerItemOverrideClassName:hiddenBannerEvents:
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v33 = *MEMORY[0x277D13538];
  [v11 na_safeSetObject:v8 forKey:?];
  selfCopy = self;
  v36 = v8;
  v29 = v9;
  v35 = [self _overrideBannerItemClassName:v8 withOverrideClassName:v9];
  v32 = *MEMORY[0x277D13540];
  [v11 na_safeSetObject:? forKey:?];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  v31 = *MEMORY[0x277D13518];
  [v11 na_safeSetObject:v12 forKey:?];

  v13 = MEMORY[0x277D143D8];
  v28 = v11;
  v14 = [v11 copy];
  [v13 sendEvent:41 withData:v14];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = v10;
  obj = [v10 allObjects];
  v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    v19 = *MEMORY[0x277D135B0];
    v20 = *MEMORY[0x277D135B8];
    do
    {
      v21 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * v21);
        v23 = objc_opt_new();
        [v23 na_safeSetObject:v22 forKey:v33];
        v24 = [selfCopy _overrideBannerItemClassName:v22 withOverrideClassName:0];
        [v23 na_safeSetObject:v24 forKey:v32];
        [v23 na_safeSetObject:v36 forKey:v19];
        [v23 na_safeSetObject:v35 forKey:v20];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        [v23 na_safeSetObject:v25 forKey:v31];

        v26 = MEMORY[0x277D143D8];
        v27 = [v23 copy];
        [v26 sendEvent:42 withData:v27];

        ++v21;
      }

      while (v17 != v21);
      v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v17);
  }
}

+ (void)sendGeneralButtonTapEventWithButtonTitle:()HUAdditions sourceViewController:
{
  v5 = a4;
  v6 = a3;
  v9 = objc_opt_new();
  [v9 na_safeSetObject:v6 forKey:*MEMORY[0x277D13538]];

  [v9 na_safeSetObject:v5 forKey:*MEMORY[0x277D13588]];
  v7 = MEMORY[0x277D143D8];
  v8 = [v9 copy];
  [v7 sendEvent:43 withData:v8];
}

+ (id)_overrideBannerItemClassName:()HUAdditions withOverrideClassName:
{
  v5 = a3;
  v6 = a4;
  latestResults = [v5 latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F68]];

  if ([v6 length])
  {
    v9 = v6;
  }

  else if ([v8 length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [v10 stringWithFormat:@"%@-%@", v12, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end