@interface MFMailWebProcessLoadDelegate
- (MFMailWebProcessLoadDelegate)init;
- (id)externalConstants;
- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6;
- (void)_synchronizeGlobalObjectContext;
- (void)registerDictionary:(id)a3 name:(id)a4;
- (void)setDictionary:(id)a3 forWebViewDictionaryWithName:(id)a4;
- (void)setValuesForKeysWithDictionary:(id)a3 forWebViewDictionaryWithName:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFailLoadForResource:(unint64_t)a5 error:(id)a6;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFinishLoadForResource:(unint64_t)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didInitiateLoadForResource:(unint64_t)a5 request:(id)a6;
- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5;
@end

@implementation MFMailWebProcessLoadDelegate

- (MFMailWebProcessLoadDelegate)init
{
  v8.receiver = self;
  v8.super_class = MFMailWebProcessLoadDelegate;
  v2 = [(MFMailWebProcessLoadDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    resourceIdentifiersToRequestURLs = v2->_resourceIdentifiersToRequestURLs;
    v2->_resourceIdentifiersToRequestURLs = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    dictionaryWrappers = v2->_dictionaryWrappers;
    v2->_dictionaryWrappers = v5;

    v2->_didSynchronize = 0;
  }

  return v2;
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v9 = a4;
  v5 = [(NSMutableDictionary *)self->_resourceIdentifiersToRequestURLs allValues];
  v6 = [v5 ef_filter:&stru_8248];

  v7 = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  v8 = [v9 URL];
  [v7 webProcessDidFinishDocumentLoadForURL:v8 andRequestedRemoteURLs:v6];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4
{
  v7 = a4;
  v5 = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  v6 = [v7 URL];
  [v5 webProcessDidFinishLoadForURL:v6];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didInitiateLoadForResource:(unint64_t)a5 request:(id)a6
{
  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  v9 = [a6 URL];
  v8 = [NSNumber numberWithUnsignedLongLong:a5];
  [(NSMutableDictionary *)resourceIdentifiersToRequestURLs setObject:v9 forKey:v8];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFinishLoadForResource:(unint64_t)a5
{
  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  v6 = [NSNumber numberWithUnsignedLongLong:a5, a4];
  [(NSMutableDictionary *)resourceIdentifiersToRequestURLs removeObjectForKey:?];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5
{
  v11 = a4;
  v7 = a5;
  [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:0];
  v8 = [v11 jsContextForWorld:v7];
  [(MFMailWebProcessLoadDelegate *)self setCurrentJSContext:v8];
  v9 = [v8 objectForKeyedSubscript:@"Range"];
  v10 = [v9 objectForKeyedSubscript:@"prototype"];
  [v10 setObject:&stru_8288 forKeyedSubscript:@"text"];

  [(MFMailWebProcessLoadDelegate *)self _synchronizeGlobalObjectContext];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 didFailLoadForResource:(unint64_t)a5 error:(id)a6
{
  v8 = a6;
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v8 ef_publicDescription];
    sub_3448(v10, v17, v9);
  }

  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  v12 = [NSNumber numberWithUnsignedLongLong:a5];
  v13 = [(NSMutableDictionary *)resourceIdentifiersToRequestURLs objectForKey:v12];

  v14 = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  [v14 webProcessDidFailLoadingResourceWithURL:v13];

  v15 = self->_resourceIdentifiersToRequestURLs;
  v16 = [NSNumber numberWithUnsignedLongLong:a5];
  [(NSMutableDictionary *)v15 removeObjectForKey:v16];
}

- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6
{
  v7 = a5;
  v8 = [v7 URL];
  v9 = [v8 mf_isResourceURL];

  if (v9)
  {
    v10 = [v7 mutableCopy];
    [v10 setTimeoutInterval:300.0];
    v11 = v7;
    goto LABEL_18;
  }

  v11 = [v7 URL];
  v12 = [v11 scheme];
  v13 = [v12 lowercaseString];

  if (([v13 isEqualToString:MSBlobURLScheme] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", MSDataURLScheme) & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", MSFileURLScheme) & 1) == 0)
  {
    v14 = [(MFMailWebProcessLoadDelegate *)self externalConstants];
    v15 = [v14 objectForKeyedSubscript:@"showRemoteImages"];
    v16 = v15;
    v17 = &__kCFBooleanTrue;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    if ([v18 BOOLValue])
    {
      if (![v11 ef_isHTTPOrHTTPSURL])
      {
LABEL_16:

        goto LABEL_17;
      }

      if (![(MFMailWebProcessLoadDelegate *)self isMailPrivacyProtectionAllowed])
      {
        goto LABEL_21;
      }

      v19 = [(MFMailWebProcessLoadDelegate *)self externalConstants];
      v20 = [v19 objectForKeyedSubscript:@"remoteContentToLoadWithoutProxy"];

      v21 = [v11 absoluteString];
      v22 = [v20 containsObject:v21];

      if (v22)
      {
        goto LABEL_21;
      }

      v23 = [(MFMailWebProcessLoadDelegate *)self remoteContentProxySchemePrefix];

      if (v23)
      {
        v24 = [(MFMailWebProcessLoadDelegate *)self remoteContentProxySchemePrefix];
      }

      else
      {
LABEL_21:
        v28 = [(MFMailWebProcessLoadDelegate *)self remoteContentNoProxySchemePrefix];

        if (!v28)
        {
          goto LABEL_16;
        }

        v24 = [(MFMailWebProcessLoadDelegate *)self remoteContentNoProxySchemePrefix];
      }

      v29 = v24;
      if (!v24)
      {
        goto LABEL_16;
      }

      v26 = [v7 mutableCopy];
      v30 = [v29 stringByAppendingString:v13];
      v31 = [v11 ef_urlByReplacingSchemeWithScheme:v30];
      [v26 setURL:v31];

      v25 = v7;
      v7 = v29;
    }

    else
    {
      v25 = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
      [v25 webProcessDidBlockLoadingResourceWithURL:v11];
      v26 = 0;
    }

    v7 = v26;
    goto LABEL_16;
  }

LABEL_17:

  v10 = v7;
LABEL_18:

  return v10;
}

- (id)externalConstants
{
  v2 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v3 = [v2 objectForKeyedSubscript:@"externalConstants"];

  return v3;
}

- (void)_synchronizeGlobalObjectContext
{
  v3 = [(MFMailWebProcessLoadDelegate *)self currentJSContext];
  if (v3)
  {
    v4 = v3;
    v5 = [(MFMailWebProcessLoadDelegate *)self didSynchronize];

    if ((v5 & 1) == 0)
    {
      v6 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_2290;
      v7[3] = &unk_82B0;
      v7[4] = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v7];

      [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:1];
    }
  }
}

- (void)registerDictionary:(id)a3 name:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [[MFMailWebProcessDictionaryWrapper alloc] initWithName:v6];
    [(MFMailWebProcessDictionaryWrapper *)v9 setDictionary:v11];
    v10 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
    [v10 setObject:v9 forKeyedSubscript:v6];

    [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:0];
    [(MFMailWebProcessLoadDelegate *)self _synchronizeGlobalObjectContext];
  }
}

- (void)setDictionary:(id)a3 forWebViewDictionaryWithName:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    [v8 setDictionary:v9];
  }
}

- (void)setValuesForKeysWithDictionary:(id)a3 forWebViewDictionaryWithName:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    [v8 setValuesForKeysWithDictionary:v9];
  }
}

@end