@interface CESRSpeechProfileSiteCache
- (BOOL)removeSpeechProfileSite:(id)site error:(id *)error;
- (CESRSpeechProfileSiteCache)initWithRootDirectoryURL:(id)l readOnly:(BOOL)only;
- (id)speechProfileSiteAtURL:(id)l error:(id *)error;
- (id)speechProfileSiteWithUserId:(id)id error:(id *)error;
- (void)_cacheSpeechProfileSite:(id)site;
- (void)clear;
@end

@implementation CESRSpeechProfileSiteCache

- (void)_cacheSpeechProfileSite:(id)site
{
  siteCopy = site;
  if (siteCopy)
  {
    v10 = siteCopy;
    userId = [siteCopy userId];
    if (userId)
    {
      userExSpeechProfileSites = self->_userExSpeechProfileSites;
      if (!userExSpeechProfileSites)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_userExSpeechProfileSites;
        self->_userExSpeechProfileSites = v8;

        userExSpeechProfileSites = self->_userExSpeechProfileSites;
      }

      [(NSMutableDictionary *)userExSpeechProfileSites setObject:v10 forKey:userId];
    }

    else
    {
      objc_storeStrong(&self->_defaultSpeechProfileSite, site);
    }

    siteCopy = v10;
  }
}

- (void)clear
{
  defaultSpeechProfileSite = self->_defaultSpeechProfileSite;
  self->_defaultSpeechProfileSite = 0;

  userExSpeechProfileSites = self->_userExSpeechProfileSites;

  [(NSMutableDictionary *)userExSpeechProfileSites removeAllObjects];
}

- (BOOL)removeSpeechProfileSite:(id)site error:(id *)error
{
  siteCopy = site;
  v7 = siteCopy;
  if (siteCopy)
  {
    userId = [siteCopy userId];
    if (userId)
    {
      [(NSMutableDictionary *)self->_userExSpeechProfileSites removeObjectForKey:userId];
    }

    else
    {
      defaultSpeechProfileSite = self->_defaultSpeechProfileSite;
      self->_defaultSpeechProfileSite = 0;
    }

    if (self->_readOnly)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 remove:error];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)speechProfileSiteAtURL:(id)l error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(CESRSpeechProfileSite *)self->_defaultSpeechProfileSite isEquivalentSpeechProfileSiteURL:lCopy])
  {
    v7 = self->_defaultSpeechProfileSite;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_userExSpeechProfileSites allValues];
    v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEquivalentSpeechProfileSiteURL:lCopy])
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = [CESRSpeechProfileSite _existingSpeechProfileSiteAtURL:lCopy readOnly:self->_readOnly error:error];
    [(CESRSpeechProfileSiteCache *)self _cacheSpeechProfileSite:v7];
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)speechProfileSiteWithUserId:(id)id error:(id *)error
{
  idCopy = id;
  if (idCopy)
  {
    v7 = [(NSMutableDictionary *)self->_userExSpeechProfileSites objectForKey:idCopy];
  }

  else
  {
    v7 = self->_defaultSpeechProfileSite;
  }

  v8 = v7;
  if (!v7)
  {
    v8 = [CESRSpeechProfileSite _speechProfileSiteAtRootDirectoryURL:self->_rootDirectoryURL userId:idCopy readOnly:self->_readOnly error:error];
    [(CESRSpeechProfileSiteCache *)self _cacheSpeechProfileSite:v8];
  }

  return v8;
}

- (CESRSpeechProfileSiteCache)initWithRootDirectoryURL:(id)l readOnly:(BOOL)only
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = CESRSpeechProfileSiteCache;
  v8 = [(CESRSpeechProfileSiteCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootDirectoryURL, l);
    v9->_readOnly = only;
  }

  return v9;
}

@end