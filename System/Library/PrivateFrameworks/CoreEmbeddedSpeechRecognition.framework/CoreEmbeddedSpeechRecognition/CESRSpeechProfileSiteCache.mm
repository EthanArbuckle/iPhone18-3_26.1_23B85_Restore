@interface CESRSpeechProfileSiteCache
- (BOOL)removeSpeechProfileSite:(id)a3 error:(id *)a4;
- (CESRSpeechProfileSiteCache)initWithRootDirectoryURL:(id)a3 readOnly:(BOOL)a4;
- (id)speechProfileSiteAtURL:(id)a3 error:(id *)a4;
- (id)speechProfileSiteWithUserId:(id)a3 error:(id *)a4;
- (void)_cacheSpeechProfileSite:(id)a3;
- (void)clear;
@end

@implementation CESRSpeechProfileSiteCache

- (void)_cacheSpeechProfileSite:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10 = v5;
    v6 = [v5 userId];
    if (v6)
    {
      userExSpeechProfileSites = self->_userExSpeechProfileSites;
      if (!userExSpeechProfileSites)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = self->_userExSpeechProfileSites;
        self->_userExSpeechProfileSites = v8;

        userExSpeechProfileSites = self->_userExSpeechProfileSites;
      }

      [(NSMutableDictionary *)userExSpeechProfileSites setObject:v10 forKey:v6];
    }

    else
    {
      objc_storeStrong(&self->_defaultSpeechProfileSite, a3);
    }

    v5 = v10;
  }
}

- (void)clear
{
  defaultSpeechProfileSite = self->_defaultSpeechProfileSite;
  self->_defaultSpeechProfileSite = 0;

  userExSpeechProfileSites = self->_userExSpeechProfileSites;

  [(NSMutableDictionary *)userExSpeechProfileSites removeAllObjects];
}

- (BOOL)removeSpeechProfileSite:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 userId];
    if (v8)
    {
      [(NSMutableDictionary *)self->_userExSpeechProfileSites removeObjectForKey:v8];
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
      v9 = [v7 remove:a4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)speechProfileSiteAtURL:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CESRSpeechProfileSite *)self->_defaultSpeechProfileSite isEquivalentSpeechProfileSiteURL:v6])
  {
    v7 = self->_defaultSpeechProfileSite;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSMutableDictionary *)self->_userExSpeechProfileSites allValues];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEquivalentSpeechProfileSiteURL:v6])
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = [CESRSpeechProfileSite _existingSpeechProfileSiteAtURL:v6 readOnly:self->_readOnly error:a4];
    [(CESRSpeechProfileSiteCache *)self _cacheSpeechProfileSite:v7];
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)speechProfileSiteWithUserId:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_userExSpeechProfileSites objectForKey:v6];
  }

  else
  {
    v7 = self->_defaultSpeechProfileSite;
  }

  v8 = v7;
  if (!v7)
  {
    v8 = [CESRSpeechProfileSite _speechProfileSiteAtRootDirectoryURL:self->_rootDirectoryURL userId:v6 readOnly:self->_readOnly error:a4];
    [(CESRSpeechProfileSiteCache *)self _cacheSpeechProfileSite:v8];
  }

  return v8;
}

- (CESRSpeechProfileSiteCache)initWithRootDirectoryURL:(id)a3 readOnly:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CESRSpeechProfileSiteCache;
  v8 = [(CESRSpeechProfileSiteCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rootDirectoryURL, a3);
    v9->_readOnly = a4;
  }

  return v9;
}

@end