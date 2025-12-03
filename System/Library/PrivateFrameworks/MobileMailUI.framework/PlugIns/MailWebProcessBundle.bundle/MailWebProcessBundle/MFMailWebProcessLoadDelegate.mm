@interface MFMailWebProcessLoadDelegate
- (MFMailWebProcessLoadDelegate)init;
- (id)externalConstants;
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequest:(id)request redirectResponse:(id)response;
- (void)_synchronizeGlobalObjectContext;
- (void)registerDictionary:(id)dictionary name:(id)name;
- (void)setDictionary:(id)dictionary forWebViewDictionaryWithName:(id)name;
- (void)setValuesForKeysWithDictionary:(id)dictionary forWebViewDictionaryWithName:(id)name;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
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

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  frameCopy = frame;
  allValues = [(NSMutableDictionary *)self->_resourceIdentifiersToRequestURLs allValues];
  v6 = [allValues ef_filter:&stru_8248];

  mailDelegate = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  v8 = [frameCopy URL];
  [mailDelegate webProcessDidFinishDocumentLoadForURL:v8 andRequestedRemoteURLs:v6];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  frameCopy = frame;
  mailDelegate = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  v6 = [frameCopy URL];
  [mailDelegate webProcessDidFinishLoadForURL:v6];
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request
{
  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  v9 = [request URL];
  v8 = [NSNumber numberWithUnsignedLongLong:resource];
  [(NSMutableDictionary *)resourceIdentifiersToRequestURLs setObject:v9 forKey:v8];
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource
{
  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  frame = [NSNumber numberWithUnsignedLongLong:resource, frame];
  [(NSMutableDictionary *)resourceIdentifiersToRequestURLs removeObjectForKey:?];
}

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  frameCopy = frame;
  worldCopy = world;
  [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:0];
  v8 = [frameCopy jsContextForWorld:worldCopy];
  [(MFMailWebProcessLoadDelegate *)self setCurrentJSContext:v8];
  v9 = [v8 objectForKeyedSubscript:@"Range"];
  v10 = [v9 objectForKeyedSubscript:@"prototype"];
  [v10 setObject:&stru_8288 forKeyedSubscript:@"text"];

  [(MFMailWebProcessLoadDelegate *)self _synchronizeGlobalObjectContext];
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error
{
  errorCopy = error;
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    sub_3448(ef_publicDescription, v17, v9);
  }

  resourceIdentifiersToRequestURLs = self->_resourceIdentifiersToRequestURLs;
  v12 = [NSNumber numberWithUnsignedLongLong:resource];
  v13 = [(NSMutableDictionary *)resourceIdentifiersToRequestURLs objectForKey:v12];

  mailDelegate = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
  [mailDelegate webProcessDidFailLoadingResourceWithURL:v13];

  v15 = self->_resourceIdentifiersToRequestURLs;
  v16 = [NSNumber numberWithUnsignedLongLong:resource];
  [(NSMutableDictionary *)v15 removeObjectForKey:v16];
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v8 = [requestCopy URL];
  mf_isResourceURL = [v8 mf_isResourceURL];

  if (mf_isResourceURL)
  {
    v10 = [requestCopy mutableCopy];
    [v10 setTimeoutInterval:300.0];
    v11 = requestCopy;
    goto LABEL_18;
  }

  v11 = [requestCopy URL];
  scheme = [v11 scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:MSBlobURLScheme] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", MSDataURLScheme) & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", MSFileURLScheme) & 1) == 0)
  {
    externalConstants = [(MFMailWebProcessLoadDelegate *)self externalConstants];
    v15 = [externalConstants objectForKeyedSubscript:@"showRemoteImages"];
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

      externalConstants2 = [(MFMailWebProcessLoadDelegate *)self externalConstants];
      v20 = [externalConstants2 objectForKeyedSubscript:@"remoteContentToLoadWithoutProxy"];

      absoluteString = [v11 absoluteString];
      v22 = [v20 containsObject:absoluteString];

      if (v22)
      {
        goto LABEL_21;
      }

      remoteContentProxySchemePrefix = [(MFMailWebProcessLoadDelegate *)self remoteContentProxySchemePrefix];

      if (remoteContentProxySchemePrefix)
      {
        remoteContentProxySchemePrefix2 = [(MFMailWebProcessLoadDelegate *)self remoteContentProxySchemePrefix];
      }

      else
      {
LABEL_21:
        remoteContentNoProxySchemePrefix = [(MFMailWebProcessLoadDelegate *)self remoteContentNoProxySchemePrefix];

        if (!remoteContentNoProxySchemePrefix)
        {
          goto LABEL_16;
        }

        remoteContentProxySchemePrefix2 = [(MFMailWebProcessLoadDelegate *)self remoteContentNoProxySchemePrefix];
      }

      v29 = remoteContentProxySchemePrefix2;
      if (!remoteContentProxySchemePrefix2)
      {
        goto LABEL_16;
      }

      v26 = [requestCopy mutableCopy];
      v30 = [v29 stringByAppendingString:lowercaseString];
      v31 = [v11 ef_urlByReplacingSchemeWithScheme:v30];
      [v26 setURL:v31];

      mailDelegate = requestCopy;
      requestCopy = v29;
    }

    else
    {
      mailDelegate = [(MFMailWebProcessLoadDelegate *)self mailDelegate];
      [mailDelegate webProcessDidBlockLoadingResourceWithURL:v11];
      v26 = 0;
    }

    requestCopy = v26;
    goto LABEL_16;
  }

LABEL_17:

  v10 = requestCopy;
LABEL_18:

  return v10;
}

- (id)externalConstants
{
  dictionaryWrappers = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v3 = [dictionaryWrappers objectForKeyedSubscript:@"externalConstants"];

  return v3;
}

- (void)_synchronizeGlobalObjectContext
{
  currentJSContext = [(MFMailWebProcessLoadDelegate *)self currentJSContext];
  if (currentJSContext)
  {
    v4 = currentJSContext;
    didSynchronize = [(MFMailWebProcessLoadDelegate *)self didSynchronize];

    if ((didSynchronize & 1) == 0)
    {
      dictionaryWrappers = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_2290;
      v7[3] = &unk_82B0;
      v7[4] = self;
      [dictionaryWrappers enumerateKeysAndObjectsUsingBlock:v7];

      [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:1];
    }
  }
}

- (void)registerDictionary:(id)dictionary name:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  dictionaryWrappers = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [dictionaryWrappers objectForKeyedSubscript:nameCopy];

  if (!v8)
  {
    v9 = [[MFMailWebProcessDictionaryWrapper alloc] initWithName:nameCopy];
    [(MFMailWebProcessDictionaryWrapper *)v9 setDictionary:dictionaryCopy];
    dictionaryWrappers2 = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
    [dictionaryWrappers2 setObject:v9 forKeyedSubscript:nameCopy];

    [(MFMailWebProcessLoadDelegate *)self setDidSynchronize:0];
    [(MFMailWebProcessLoadDelegate *)self _synchronizeGlobalObjectContext];
  }
}

- (void)setDictionary:(id)dictionary forWebViewDictionaryWithName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  dictionaryWrappers = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [dictionaryWrappers objectForKeyedSubscript:nameCopy];

  if (v8)
  {
    [v8 setDictionary:dictionaryCopy];
  }
}

- (void)setValuesForKeysWithDictionary:(id)dictionary forWebViewDictionaryWithName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  dictionaryWrappers = [(MFMailWebProcessLoadDelegate *)self dictionaryWrappers];
  v8 = [dictionaryWrappers objectForKeyedSubscript:nameCopy];

  if (v8)
  {
    [v8 setValuesForKeysWithDictionary:dictionaryCopy];
  }
}

@end