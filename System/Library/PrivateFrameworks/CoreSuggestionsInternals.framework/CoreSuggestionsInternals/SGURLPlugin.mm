@interface SGURLPlugin
- (BOOL)_shouldProcessSearchableItem:(id)item;
- (SGURLPlugin)initWithEntityStore:(id)store;
- (SGURLPlugin)initWithEntityStoreGetter:(id)getter;
- (id)_urlContainerFromText:(id)text documentDate:(id)date documentTitle:(id)title handle:(id)handle isOutgoingDocument:(BOOL)document uniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)self0;
- (id)consumeRemindersContentWithContext:(id)context;
- (id)extractURLsFromAttributesOfItem:(id)item handle:(id)handle;
- (id)extractURLsFromTextPropertiesOfItem:(id)item handle:(id)handle;
- (id)processSearchableItem:(id)item;
- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier;
@end

@implementation SGURLPlugin

- (void)deleteSpotlightReferencesWithBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D021A0]])
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: deleting URLs from bundleId %@", &v10, 0xCu);
    }

    v6 = (*(self->_entityStoreGetter + 2))();
    v7 = [v6 deleteURLsFromBundleIdentifier:identifierCopy];

    if ((v7 & 1) == 0)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = identifierCopy;
        _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGURLPlugin failed to delete URLs from bundleId %@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldProcessSearchableItem:(id)item
{
  v11[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  if (bundleID)
  {
    bundleID2 = [itemCopy bundleID];
    v6 = *MEMORY[0x277D41E80];
    v11[0] = *MEMORY[0x277D41E60];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v7 containsObject:bundleID2];
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_urlContainerFromText:(id)text documentDate:(id)date documentTitle:(id)title handle:(id)handle isOutgoingDocument:(BOOL)document uniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)self0
{
  HIDWORD(v29) = document;
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  domainIdentifierCopy = domainIdentifier;
  handleCopy = handle;
  titleCopy = title;
  dateCopy = date;
  textCopy = text;
  v22 = [SGDataDetectorMatch detectionsInPlainText:textCopy baseDate:0];
  v23 = sgLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v31 = [v22 count];
    v32 = 2112;
    v33 = identifierCopy;
    _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: %tu detections on %@", buf, 0x16u);
  }

  urlDissector = self->_urlDissector;
  v25 = objc_opt_new();
  LOBYTE(v29) = BYTE4(v29);
  v26 = [(SGURLDissector *)urlDissector urlsFromText:textCopy handle:handleCopy dataDetectorMatches:v22 bundleIdentifier:bundleIdentifierCopy domainIdentifier:domainIdentifierCopy uniqueIdentifier:identifierCopy documentTitle:0.0 documentDate:titleCopy documentTimeInterval:dateCopy receivedAt:v25 isOutgoingDocument:v29];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)extractURLsFromTextPropertiesOfItem:(id)item handle:(id)handle
{
  itemCopy = item;
  handleCopy = handle;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D41E30] textContentNoCopyRetainingBackingBuffer:itemCopy];
  v10 = v9;
  if (v9 && [v9 length])
  {
    [v8 addObject:v10];
  }

  attributeSet = [itemCopy attributeSet];
  title = [attributeSet title];
  v13 = [title length];

  if (v13)
  {
    attributeSet2 = [itemCopy attributeSet];
    title2 = [attributeSet2 title];
    [v8 addObject:title2];
  }

  attributeSet3 = [itemCopy attributeSet];
  comment = [attributeSet3 comment];
  v18 = [comment length];

  if (v18)
  {
    attributeSet4 = [itemCopy attributeSet];
    comment2 = [attributeSet4 comment];
    [v8 addObject:comment2];
  }

  if ([v8 count])
  {
    selfCopy = self;
    v21 = *MEMORY[0x277D41E80];
    bundleID = [itemCopy bundleID];
    LODWORD(v21) = [v21 isEqualToString:bundleID];

    attributeSet5 = [itemCopy attributeSet];
    v24 = attributeSet5;
    v40 = v10;
    v38 = handleCopy;
    if (v21)
    {
      [attributeSet5 dueDate];
    }

    else
    {
      [attributeSet5 contentCreationDate];
    }
    v26 = ;

    v27 = [v8 _pas_proxyComponentsJoinedByString:@" "];
    attributeSet6 = [itemCopy attributeSet];
    title3 = [attributeSet6 title];
    v29 = [MEMORY[0x277D41E30] searchableItemIsOutgoing:itemCopy];
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    [itemCopy domainIdentifier];
    v32 = v31 = v8;
    bundleID2 = [itemCopy bundleID];
    v34 = v26;
    v35 = v26;
    handleCopy = v38;
    v25 = [(SGURLPlugin *)selfCopy _urlContainerFromText:v27 documentDate:v35 documentTitle:title3 handle:v38 isOutgoingDocument:v29 uniqueIdentifier:uniqueIdentifier domainIdentifier:v32 bundleIdentifier:bundleID2];

    v8 = v31;
    v10 = v40;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)extractURLsFromAttributesOfItem:(id)item handle:(id)handle
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  handleCopy = handle;
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    *buf = 138412290;
    v25 = uniqueIdentifier;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: extracting URLs from attributes of %@", buf, 0xCu);
  }

  urlDissector = self->_urlDissector;
  attributeSet = [itemCopy attributeSet];
  bundleID = [itemCopy bundleID];
  domainIdentifier = [itemCopy domainIdentifier];
  uniqueIdentifier2 = [itemCopy uniqueIdentifier];
  attributeSet2 = [itemCopy attributeSet];
  title = [attributeSet2 title];
  attributeSet3 = [itemCopy attributeSet];
  contentCreationDate = [attributeSet3 contentCreationDate];
  v16 = objc_opt_new();
  LOBYTE(v19) = [MEMORY[0x277D41E30] searchableItemIsOutgoing:itemCopy];
  v20 = [(SGURLDissector *)urlDissector urlsFromAttributes:attributeSet handle:handleCopy bundleIdentifier:bundleID domainIdentifier:domainIdentifier uniqueIdentifier:uniqueIdentifier2 documentTitle:title documentDate:0.0 documentTimeInterval:contentCreationDate receivedAt:v16 isOutgoingDocument:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)processSearchableItem:(id)item
{
  v34[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      bundleID = [itemCopy bundleID];
      v6 = [bundleID isEqualToString:*MEMORY[0x277D021D0]];

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

  if ([(SGURLPlugin *)self _shouldProcessSearchableItem:itemCopy])
  {
    uniqueIdentifier = [itemCopy uniqueIdentifier];

    if (!uniqueIdentifier)
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
    bundleID2 = [itemCopy bundleID];
    if ([v10 isEqualToString:bundleID2])
    {
      attributeSet = [itemCopy attributeSet];
      completionDate = [attributeSet completionDate];

      if (completionDate)
      {
        v7 = (*(self->_entityStoreGetter + 2))();
        bundleID3 = [itemCopy bundleID];
        attributeSet2 = [itemCopy attributeSet];
        uniqueIdentifier2 = [attributeSet2 uniqueIdentifier];
        v34[0] = uniqueIdentifier2;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
        [v7 deleteURLsFromBundleIdentifier:bundleID3 documentIdentifiers:v17];

        goto LABEL_14;
      }
    }

    else
    {
    }

    attributeSet3 = [itemCopy attributeSet];
    authorAddresses = [attributeSet3 authorAddresses];
    if (authorAddresses)
    {
      attributeSet4 = [itemCopy attributeSet];
      authorAddresses2 = [attributeSet4 authorAddresses];
      v25 = [authorAddresses2 count];

      if (!v25)
      {
        authorAddresses = 0;
        goto LABEL_25;
      }

      attributeSet3 = [itemCopy attributeSet];
      authorAddresses3 = [attributeSet3 authorAddresses];
      authorAddresses = [authorAddresses3 objectAtIndexedSubscript:0];
    }

LABEL_25:
    attributeSet5 = [itemCopy attributeSet];
    v28 = [attributeSet5 URL];
    absoluteString = [v28 absoluteString];
    v30 = [absoluteString length];

    if (v30)
    {
      [(SGURLPlugin *)self extractURLsFromAttributesOfItem:itemCopy handle:authorAddresses];
    }

    else
    {
      [(SGURLPlugin *)self extractURLsFromTextPropertiesOfItem:itemCopy handle:authorAddresses];
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

- (id)consumeRemindersContentWithContext:(id)context
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  content = [contextCopy content];
  v6 = (*(self->_entityStoreGetter + 2))();
  v7 = *MEMORY[0x277D41E80];
  uniqueId = [content uniqueId];
  v30[0] = uniqueId;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v6 deleteURLsFromBundleIdentifier:v7 documentIdentifiers:v9];

  [content completionDateTimestamp];
  if (v10 <= 0.0)
  {
    v12 = objc_opt_new();
    title = [content title];
    v14 = [title length];

    if (v14)
    {
      title2 = [content title];
      [v12 addObject:title2];
    }

    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      notes = [content notes];
      *buf = 134217984;
      v29 = [notes length];
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: consumeRemindersContentWithContext: notes.length = %tu", buf, 0xCu);
    }

    notes2 = [content notes];
    v19 = [notes2 length];

    if (v19)
    {
      notes3 = [content notes];
      [v12 addObject:notes3];
    }

    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    [content dueDateTimestamp];
    v22 = [v21 initWithTimeIntervalSinceReferenceDate:?];
    title3 = [content title];
    uniqueId2 = [content uniqueId];
    domainId = [content domainId];
    v11 = [(SGURLPlugin *)self _consumeContentParts:v12 title:title3 fromHandle:0 documentDate:v22 isOutgoingDocument:0 uniqueIdentifier:uniqueId2 domainIdentifier:domainId bundleIdentifier:v7 context:contextCopy];
  }

  else
  {
    v11 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:0];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SGURLPlugin)initWithEntityStoreGetter:(id)getter
{
  getterCopy = getter;
  v13.receiver = self;
  v13.super_class = SGURLPlugin;
  v5 = [(SGURLPlugin *)&v13 init];
  if (v5)
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      defaultCoordinator = sgLogHandle();
      if (os_log_type_enabled(defaultCoordinator, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_231E60000, defaultCoordinator, OS_LOG_TYPE_DEFAULT, "SGURLPlugin: TextUnderstanding feature flags enabled, not registering for Reminders content.", v12, 2u);
      }
    }

    else
    {
      defaultCoordinator = [MEMORY[0x277D41DE8] defaultCoordinator];
      [defaultCoordinator registerRemindersConsumer:v5 levelOfService:3];
    }

    v7 = objc_opt_new();
    urlDissector = v5->_urlDissector;
    v5->_urlDissector = v7;

    v9 = [getterCopy copy];
    entityStoreGetter = v5->_entityStoreGetter;
    v5->_entityStoreGetter = v9;
  }

  return v5;
}

- (SGURLPlugin)initWithEntityStore:(id)store
{
  storeCopy = store;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SGURLPlugin_initWithEntityStore___block_invoke;
  v8[3] = &unk_27894B458;
  v9 = storeCopy;
  v5 = storeCopy;
  v6 = [(SGURLPlugin *)self initWithEntityStoreGetter:v8];

  return v6;
}

@end