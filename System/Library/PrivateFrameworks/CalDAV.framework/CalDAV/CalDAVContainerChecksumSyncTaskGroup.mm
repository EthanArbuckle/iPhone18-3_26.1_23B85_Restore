@interface CalDAVContainerChecksumSyncTaskGroup
- (BOOL)_hadOutOfDateCollectionToken;
- (BOOL)shouldDownloadResource:(id)resource localETag:(id)tag serverETag:(id)eTag;
- (CalDAVContainerChecksumSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager appSpecificCalendarItemClass:(Class)class;
- (id)copyAdditionalResourcePropertiesToFetch;
- (void)_handleResponseToChecksumPropfind:(id)propfind;
- (void)_serverChecksumSupportPropfind;
- (void)deleteResourceURLs:(id)ls;
- (void)receivedPropertiesToValues:(id)values forURL:(id)l;
- (void)startTaskGroup;
@end

@implementation CalDAVContainerChecksumSyncTaskGroup

- (CalDAVContainerChecksumSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager appSpecificCalendarItemClass:(Class)class
{
  v15.receiver = self;
  v15.super_class = CalDAVContainerChecksumSyncTaskGroup;
  v9 = [(CalDAVContainerSyncTaskGroup *)&v15 initWithFolderURL:l previousCTag:tag previousSyncToken:token actions:actions accountInfoProvider:provider taskManager:manager appSpecificCalendarItemClass:class];
  v10 = *MEMORY[0x277CFDD08];
  objc_storeStrong(&v9->_unusedCTag, *(&v9->super.super.super.super.isa + v10));
  v11 = *(&v9->super.super.super.super.isa + v10);
  *(&v9->super.super.super.super.isa + v10) = 0;

  v12 = *MEMORY[0x277CFDD10];
  objc_storeStrong(&v9->_unusedSyncToken, *(&v9->super.super.super.super.isa + v12));
  v13 = *(&v9->super.super.super.super.isa + v12);
  *(&v9->super.super.super.super.isa + v12) = 0;

  *(&v9->super.super.super.super.isa + *MEMORY[0x277CFDD20]) = 0;
  *(&v9->super.super.super.super.isa + *MEMORY[0x277CFDCE8]) = 1;
  v9->_mismatchDetected = 0;
  return v9;
}

- (void)_handleResponseToChecksumPropfind:(id)propfind
{
  v23 = *MEMORY[0x277D85DE8];
  propfindCopy = propfind;
  v5 = *MEMORY[0x277CFDD58];
  if ([*(&self->super.super.super.super.isa + v5) containsObject:propfindCopy])
  {
    [*(&self->super.super.super.super.isa + v5) removeObject:propfindCopy];
  }

  error = [propfindCopy error];
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x277CFDB80]])
  {
    code = [error code];

    if (code == 503)
    {
      [(CoreDAVContainerSyncTaskGroup *)self bailWithError:error];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v9 = [propfindCopy successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"checksum-versions"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_preferredChecksumVersions;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v9 supportsVersion:v15])
        {
          [(CalDAVContainerChecksumSyncTaskGroup *)self setBestServerChecksumVersion:v15];
          goto LABEL_17;
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v17.receiver = self;
  v17.super_class = CalDAVContainerChecksumSyncTaskGroup;
  [(CoreDAVContainerSyncTaskGroup *)&v17 startTaskGroup];

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hadOutOfDateCollectionToken
{
  unusedSyncToken = self->_unusedSyncToken;
  if (unusedSyncToken && *(&self->super.super.super.super.isa + *MEMORY[0x277CFDD00]) && ![(NSString *)unusedSyncToken isEqualToString:?])
  {
    return 1;
  }

  unusedCTag = self->_unusedCTag;
  if (unusedCTag)
  {
    if (*(&self->super.super.super.super.isa + *MEMORY[0x277CFDCF8]) && ![(NSString *)unusedCTag isEqualToString:?])
    {
      return 1;
    }
  }

  if (self->_unusedSyncToken)
  {
    return 0;
  }

  return self->_unusedCTag == 0;
}

- (void)_serverChecksumSupportPropfind
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:@"checksum-versions" parseClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CFDC68]);
  _calculatedCalendarHome = [(CalDAVContainerChecksumSyncTaskGroup *)self _calculatedCalendarHome];
  v6 = [v4 initWithPropertiesToFind:v3 atURL:_calculatedCalendarHome withDepth:2];

  [*(&self->super.super.super.super.isa + *MEMORY[0x277CFDD18]) addObject:v6];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.isa + *MEMORY[0x277CFDD48]));
  [v6 setAccountInfoProvider:WeakRetained];

  [v6 setTimeoutInterval:*(&self->super.super.super.super.isa + *MEMORY[0x277CFDD68])];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __70__CalDAVContainerChecksumSyncTaskGroup__serverChecksumSupportPropfind__block_invoke;
  v11 = &unk_278D66918;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v6 setCompletionBlock:&v8];
  [(CoreDAVContainerSyncTaskGroup *)self _submitTasks:v8];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __70__CalDAVContainerChecksumSyncTaskGroup__serverChecksumSupportPropfind__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseToChecksumPropfind:v2];
}

- (void)startTaskGroup
{
  if ([(NSArray *)self->_preferredChecksumVersions count])
  {

    [(CalDAVContainerChecksumSyncTaskGroup *)self _serverChecksumSupportPropfind];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = CalDAVContainerChecksumSyncTaskGroup;
    [(CoreDAVContainerSyncTaskGroup *)&v3 startTaskGroup];
  }
}

- (id)copyAdditionalResourcePropertiesToFetch
{
  v7.receiver = self;
  v7.super_class = CalDAVContainerChecksumSyncTaskGroup;
  copyAdditionalResourcePropertiesToFetch = [(CalDAVContainerSyncTaskGroup *)&v7 copyAdditionalResourcePropertiesToFetch];
  v4 = copyAdditionalResourcePropertiesToFetch;
  if (self->_bestServerChecksumVersion)
  {
    v5 = objc_opt_new();
    [v5 setSet:v4];
    [v5 addObject:self->_bestServerChecksumVersion];
  }

  else
  {
    v5 = copyAdditionalResourcePropertiesToFetch;
  }

  return v5;
}

- (void)receivedPropertiesToValues:(id)values forURL:(id)l
{
  valuesCopy = values;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = CalDAVContainerChecksumSyncTaskGroup;
  [(CoreDAVContainerSyncTaskGroup *)&v16 receivedPropertiesToValues:valuesCopy forURL:lCopy];
  bestServerChecksumVersion = self->_bestServerChecksumVersion;
  if (bestServerChecksumVersion)
  {
    nameSpace = [(CoreDAVItemParserMapping *)bestServerChecksumVersion nameSpace];
    name = [(CoreDAVItemParserMapping *)self->_bestServerChecksumVersion name];
    v11 = [valuesCopy CDVObjectForKeyWithNameSpace:nameSpace andName:name];

    payloadAsString = [v11 payloadAsString];
    if (payloadAsString)
    {
      serverURLsToChecksums = self->_serverURLsToChecksums;
      if (!serverURLsToChecksums)
      {
        v14 = objc_opt_new();
        v15 = self->_serverURLsToChecksums;
        self->_serverURLsToChecksums = v14;

        serverURLsToChecksums = self->_serverURLsToChecksums;
      }

      [(NSMutableDictionary *)serverURLsToChecksums setObject:payloadAsString forKey:lCopy];
    }
  }
}

- (BOOL)shouldDownloadResource:(id)resource localETag:(id)tag serverETag:(id)eTag
{
  resourceCopy = resource;
  tagCopy = tag;
  eTagCopy = eTag;
  v21.receiver = self;
  v21.super_class = CalDAVContainerChecksumSyncTaskGroup;
  if ([(CoreDAVContainerSyncTaskGroup *)&v21 shouldDownloadResource:resourceCopy localETag:tagCopy serverETag:eTagCopy])
  {
    v11 = 1;
    if (![(CalDAVContainerChecksumSyncTaskGroup *)self _hadOutOfDateCollectionToken])
    {
      self->_mismatchDetected = 1;
      delegate = [(CoreDAVTaskGroup *)self delegate];
      LODWORD(v20) = 2 * (tagCopy != 0);
      [delegate reportMismatchedETag:eTagCopy forURL:resourceCopy inFolderWithURL:*(&self->super.super.super.super.isa + *MEMORY[0x277CFDCF0]) cTag:self->_unusedCTag syncToken:self->_unusedSyncToken eTag:tagCopy mismatchType:v20];
LABEL_16:
    }
  }

  else
  {
    if (self->_bestServerChecksumVersion)
    {
      if (!self->_localURLsToChecksums)
      {
        delegate2 = [(CoreDAVTaskGroup *)self delegate];
        v14 = [delegate2 copyLocalChecksumsForFolderWithURL:*(&self->super.super.super.super.isa + *MEMORY[0x277CFDCF0]) checksumVersion:self->_bestServerChecksumVersion];
        localURLsToChecksums = self->_localURLsToChecksums;
        self->_localURLsToChecksums = v14;
      }

      delegate = [(NSMutableDictionary *)self->_serverURLsToChecksums objectForKey:resourceCopy];
      v16 = [(NSDictionary *)self->_localURLsToChecksums objectForKey:resourceCopy];
      if (v16)
      {
        v17 = delegate == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || ([delegate isEqualToString:v16] & 1) != 0)
      {
        v11 = 0;
      }

      else
      {
        delegate3 = [(CoreDAVTaskGroup *)self delegate];
        [delegate3 reportMismatchedChecksum:delegate forURL:resourceCopy inFolderWithURL:*(&self->super.super.super.super.isa + *MEMORY[0x277CFDCF0]) checksumVersion:self->_bestServerChecksumVersion eTag:eTagCopy];

        v11 = 1;
      }

      goto LABEL_16;
    }

    v11 = 0;
  }

  return v11;
}

- (void)deleteResourceURLs:(id)ls
{
  v21 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if (![(CalDAVContainerChecksumSyncTaskGroup *)self _hadOutOfDateCollectionToken])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = lsCopy;
    v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = MEMORY[0x277CFDCF0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          self->_mismatchDetected = 1;
          delegate = [(CoreDAVTaskGroup *)self delegate];
          LODWORD(v13) = 1;
          [delegate reportMismatchedETag:0 forURL:v10 inFolderWithURL:*(&self->super.super.super.super.isa + *v8) cTag:self->_unusedCTag syncToken:self->_unusedSyncToken eTag:0 mismatchType:v13];
        }

        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v15.receiver = self;
  v15.super_class = CalDAVContainerChecksumSyncTaskGroup;
  [(CoreDAVContainerSyncTaskGroup *)&v15 deleteResourceURLs:lsCopy];

  v12 = *MEMORY[0x277D85DE8];
}

@end