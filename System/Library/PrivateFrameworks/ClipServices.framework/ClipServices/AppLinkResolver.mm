@interface AppLinkResolver
+ (id)_appBundleIdentifiersByURLPrefixes;
- (AppLinkResolver)init;
- (BOOL)isClipForAppBundleIdentifier:(id)identifier;
- (id)_bundleIdentifierForURL:(id)l;
- (id)_hardCodedBundleIdentifierForURL:(id)l;
- (id)appBundleIdentifierForURL:(id)l;
- (id)ipaLinkForClipBundleIdentifier:(id)identifier;
- (id)metadataForURL:(id)l;
- (void)getAppBundleIdentifierForURL:(id)l completionHandler:(id)handler;
- (void)saveLinkWithURL:(id)l metadata:(id)metadata;
@end

@implementation AppLinkResolver

- (AppLinkResolver)init
{
  v6.receiver = self;
  v6.super_class = AppLinkResolver;
  v2 = [(AppLinkResolver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)saveLinkWithURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v8 = metadataCopy;
  if (lCopy && metadataCopy)
  {
    if (!self->_URLHashToMetadataMap)
    {
      v9 = +[NSMutableDictionary dictionary];
      URLHashToMetadataMap = self->_URLHashToMetadataMap;
      self->_URLHashToMetadataMap = v9;
    }

    absoluteString = [lCopy absoluteString];
    cps_sha256 = [absoluteString cps_sha256];

    [(NSMutableDictionary *)self->_URLHashToMetadataMap setObject:v8 forKey:cps_sha256];
    v13 = sub_100004064();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138740227;
      v15 = v8;
      v16 = 2117;
      v17 = lCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found an app with meta data: %{sensitive}@, for URL: %{sensitive}@", &v14, 0x16u);
    }
  }
}

- (id)metadataForURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  cps_sha256 = [absoluteString cps_sha256];

  v7 = [(NSMutableDictionary *)self->_URLHashToMetadataMap objectForKeyedSubscript:cps_sha256];
  v8 = v7;
  if (v7)
  {
    metadata = v7;
  }

  else
  {
    v10 = +[CPSSessionManager sharedManager];
    v11 = [v10 sessionWithURL:lCopy createIfNoExist:0];

    metadata = [v11 metadata];

    if (metadata)
    {
      metadata = [v11 metadata];
    }
  }

  return metadata;
}

- (id)appBundleIdentifierForURL:(id)l
{
  lCopy = l;
  v5 = sub_100004064();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "start resolving URL", buf, 2u);
  }

  v6 = [(AppLinkResolver *)self _bundleIdentifierForURL:lCopy];

  v7 = sub_100004064();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "end resolving URL", v9, 2u);
  }

  return v6;
}

- (id)ipaLinkForClipBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001D14;
  v17 = sub_100001D24;
  v5 = +[AppLinkResolver _clipIPALinksByBundleIdentifiers];
  v18 = [v5 objectForKeyedSubscript:identifierCopy];

  v6 = v14[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    URLHashToMetadataMap = self->_URLHashToMetadataMap;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001D2C;
    v10[3] = &unk_1000144D0;
    v11 = identifierCopy;
    v12 = &v13;
    [(NSMutableDictionary *)URLHashToMetadataMap enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)getAppBundleIdentifierForURL:(id)l completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    lCopy = l;
    v8 = sub_100004064();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "start resolving URL", buf, 2u);
    }

    v9 = [(AppLinkResolver *)self _bundleIdentifierForURL:lCopy];

    handlerCopy[2](handlerCopy, v9);
    v10 = sub_100004064();
    if (os_signpost_enabled(v10))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "end resolving URL", v11, 2u);
    }
  }
}

- (BOOL)isClipForAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AppLinkResolver _appBundleIdentifiersByURLPrefixes];
  v5 = [v4 allKeysForObject:identifierCopy];

  LOBYTE(identifierCopy) = [v5 count] != 0;
  return identifierCopy;
}

- (id)_bundleIdentifierForURL:(id)l
{
  lCopy = l;
  v5 = [(AppLinkResolver *)self metadataForURL:lCopy];
  v6 = v5;
  if (v5)
  {
    [v5 clipBundleID];
  }

  else
  {
    [(AppLinkResolver *)self _hardCodedBundleIdentifierForURL:lCopy];
  }
  v7 = ;

  return v7;
}

+ (id)_appBundleIdentifiersByURLPrefixes
{
  if (+[CPSClipURL isSupported])
  {
    if (qword_100019D80 != -1)
    {
      sub_100002250();
    }

    v2 = qword_100019D78;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_hardCodedBundleIdentifierForURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001D14;
  v16 = sub_100001D24;
  v17 = 0;
  v5 = +[AppLinkResolver _appBundleIdentifiersByURLPrefixes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000021C0;
  v9[3] = &unk_100014518;
  v6 = absoluteString;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end