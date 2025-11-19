@interface SGURLPlugin
- (BOOL)_shouldProcessSearchableItem:(id)a3;
- (SGURLPlugin)initWithEntityStore:(id)a3;
- (SGURLPlugin)initWithEntityStoreGetter:(id)a3;
- (id)_urlContainerFromText:(id)a3 documentDate:(id)a4 documentTitle:(id)a5 handle:(id)a6 isOutgoingDocument:(BOOL)a7 uniqueIdentifier:(id)a8 domainIdentifier:(id)a9 bundleIdentifier:(id)a10;
- (id)consumeRemindersContentWithContext:(id)a3;
- (id)extractURLsFromAttributesOfItem:(id)a3 handle:(id)a4;
- (id)extractURLsFromTextPropertiesOfItem:(id)a3 handle:(id)a4;
- (id)processSearchableItem:(id)a3;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3;
@end

@implementation SGURLPlugin

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D021A0]])
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: deleting URLs from bundleId %@", &v10, 0xCu);
    }

    v6 = (*(self->_entityStoreGetter + 2))();
    v7 = [v6 deleteURLsFromBundleIdentifier:v4];

    if ((v7 & 1) == 0)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGURLPlugin failed to delete URLs from bundleId %@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldProcessSearchableItem:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleID];
  if (v4)
  {
    v5 = [v3 bundleID];
    v6 = *MEMORY[0x277D41E80];
    v11[0] = *MEMORY[0x277D41E60];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v7 containsObject:v5];
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_urlContainerFromText:(id)a3 documentDate:(id)a4 documentTitle:(id)a5 handle:(id)a6 isOutgoingDocument:(BOOL)a7 uniqueIdentifier:(id)a8 domainIdentifier:(id)a9 bundleIdentifier:(id)a10
{
  HIDWORD(v29) = a7;
  v34 = *MEMORY[0x277D85DE8];
  v15 = a8;
  v16 = a10;
  v17 = a9;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [SGDataDetectorMatch detectionsInPlainText:v21 baseDate:0];
  v23 = sgLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v31 = [v22 count];
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: %tu detections on %@", buf, 0x16u);
  }

  urlDissector = self->_urlDissector;
  v25 = objc_opt_new();
  LOBYTE(v29) = BYTE4(v29);
  v26 = [(SGURLDissector *)urlDissector urlsFromText:v21 handle:v18 dataDetectorMatches:v22 bundleIdentifier:v16 domainIdentifier:v17 uniqueIdentifier:v15 documentTitle:0.0 documentDate:v19 documentTimeInterval:v20 receivedAt:v25 isOutgoingDocument:v29];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)extractURLsFromTextPropertiesOfItem:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D41E30] textContentNoCopyRetainingBackingBuffer:v6];
  v10 = v9;
  if (v9 && [v9 length])
  {
    [v8 addObject:v10];
  }

  v11 = [v6 attributeSet];
  v12 = [v11 title];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v6 attributeSet];
    v15 = [v14 title];
    [v8 addObject:v15];
  }

  v16 = [v6 attributeSet];
  v17 = [v16 comment];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v6 attributeSet];
    v20 = [v19 comment];
    [v8 addObject:v20];
  }

  if ([v8 count])
  {
    v39 = self;
    v21 = *MEMORY[0x277D41E80];
    v22 = [v6 bundleID];
    LODWORD(v21) = [v21 isEqualToString:v22];

    v23 = [v6 attributeSet];
    v24 = v23;
    v40 = v10;
    v38 = v7;
    if (v21)
    {
      [v23 dueDate];
    }

    else
    {
      [v23 contentCreationDate];
    }
    v26 = ;

    v27 = [v8 _pas_proxyComponentsJoinedByString:@" "];
    v37 = [v6 attributeSet];
    v28 = [v37 title];
    v29 = [MEMORY[0x277D41E30] searchableItemIsOutgoing:v6];
    v30 = [v6 uniqueIdentifier];
    [v6 domainIdentifier];
    v32 = v31 = v8;
    v33 = [v6 bundleID];
    v34 = v26;
    v35 = v26;
    v7 = v38;
    v25 = [(SGURLPlugin *)v39 _urlContainerFromText:v27 documentDate:v35 documentTitle:v28 handle:v38 isOutgoingDocument:v29 uniqueIdentifier:v30 domainIdentifier:v32 bundleIdentifier:v33];

    v8 = v31;
    v10 = v40;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)extractURLsFromAttributesOfItem:(id)a3 handle:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uniqueIdentifier];
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: extracting URLs from attributes of %@", buf, 0xCu);
  }

  urlDissector = self->_urlDissector;
  v21 = [v6 attributeSet];
  v10 = [v6 bundleID];
  v11 = [v6 domainIdentifier];
  v22 = [v6 uniqueIdentifier];
  v12 = [v6 attributeSet];
  v13 = [v12 title];
  v14 = [v6 attributeSet];
  v15 = [v14 contentCreationDate];
  v16 = objc_opt_new();
  LOBYTE(v19) = [MEMORY[0x277D41E30] searchableItemIsOutgoing:v6];
  v20 = [(SGURLDissector *)urlDissector urlsFromAttributes:v21 handle:v23 bundleIdentifier:v10 domainIdentifier:v11 uniqueIdentifier:v22 documentTitle:v13 documentDate:0.0 documentTimeInterval:v15 receivedAt:v16 isOutgoingDocument:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)processSearchableItem:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = [v4 bundleID];
      v6 = [v5 isEqualToString:*MEMORY[0x277D021D0]];

      if (v6)
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          v8 = "SGURLPlugin: TextUnderstanding feature flags enabled, ignoring item from Messages.";
LABEL_13:
          _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, v8, v33, 2u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }
  }

  if ([(SGURLPlugin *)self _shouldProcessSearchableItem:v4])
  {
    v9 = [v4 uniqueIdentifier];

    if (!v9)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        v8 = "SGURLPlugin ignoring item with nil unique identifier";
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }

    v10 = *MEMORY[0x277D021F0];
    v11 = [v4 bundleID];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v4 attributeSet];
      v13 = [v12 completionDate];

      if (v13)
      {
        v7 = (*(self->_entityStoreGetter + 2))();
        v14 = [v4 bundleID];
        v15 = [v4 attributeSet];
        v16 = [v15 uniqueIdentifier];
        v34[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
        [v7 deleteURLsFromBundleIdentifier:v14 documentIdentifiers:v17];

        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = [v4 attributeSet];
    v22 = [v21 authorAddresses];
    if (v22)
    {
      v23 = [v4 attributeSet];
      v24 = [v23 authorAddresses];
      v25 = [v24 count];

      if (!v25)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v21 = [v4 attributeSet];
      v26 = [v21 authorAddresses];
      v22 = [v26 objectAtIndexedSubscript:0];
    }

LABEL_25:
    v27 = [v4 attributeSet];
    v28 = [v27 URL];
    v29 = [v28 absoluteString];
    v30 = [v29 length];

    if (v30)
    {
      [(SGURLPlugin *)self extractURLsFromAttributesOfItem:v4 handle:v22];
    }

    else
    {
      [(SGURLPlugin *)self extractURLsFromTextPropertiesOfItem:v4 handle:v22];
    }
    v31 = ;
    v32 = (*(self->_entityStoreGetter + 2))();
    [v31 writeWithEntityStore:v32];

    v18 = +[FIAPResult success];

    goto LABEL_16;
  }

LABEL_15:
  v18 = +[FIAPResult success];
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)consumeRemindersContentWithContext:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 content];
  v6 = (*(self->_entityStoreGetter + 2))();
  v7 = *MEMORY[0x277D41E80];
  v8 = [v5 uniqueId];
  v30[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v6 deleteURLsFromBundleIdentifier:v7 documentIdentifiers:v9];

  [v5 completionDateTimestamp];
  if (v10 <= 0.0)
  {
    v12 = objc_opt_new();
    v13 = [v5 title];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [v5 title];
      [v12 addObject:v15];
    }

    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 notes];
      *buf = 134217984;
      v29 = [v17 length];
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: consumeRemindersContentWithContext: notes.length = %tu", buf, 0xCu);
    }

    v18 = [v5 notes];
    v19 = [v18 length];

    if (v19)
    {
      v20 = [v5 notes];
      [v12 addObject:v20];
    }

    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 dueDateTimestamp];
    v22 = [v21 initWithTimeIntervalSinceReferenceDate:?];
    v23 = [v5 title];
    v24 = [v5 uniqueId];
    v25 = [v5 domainId];
    v11 = [(SGURLPlugin *)self _consumeContentParts:v12 title:v23 fromHandle:0 documentDate:v22 isOutgoingDocument:0 uniqueIdentifier:v24 domainIdentifier:v25 bundleIdentifier:v7 context:v4];
  }

  else
  {
    v11 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SGURLPlugin)initWithEntityStoreGetter:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SGURLPlugin;
  v5 = [(SGURLPlugin *)&v13 init];
  if (v5)
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v6 = sgLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: TextUnderstanding feature flags enabled, not registering for Reminders content.", v12, 2u);
      }
    }

    else
    {
      v6 = [MEMORY[0x277D41DE8] defaultCoordinator];
      [v6 registerRemindersConsumer:v5 levelOfService:3];
    }

    v7 = objc_opt_new();
    urlDissector = v5->_urlDissector;
    v5->_urlDissector = v7;

    v9 = [v4 copy];
    entityStoreGetter = v5->_entityStoreGetter;
    v5->_entityStoreGetter = v9;
  }

  return v5;
}

- (SGURLPlugin)initWithEntityStore:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SGURLPlugin_initWithEntityStore___block_invoke;
  v8[3] = &unk_27894B458;
  v9 = v4;
  v5 = v4;
  v6 = [(SGURLPlugin *)self initWithEntityStoreGetter:v8];

  return v6;
}

@end