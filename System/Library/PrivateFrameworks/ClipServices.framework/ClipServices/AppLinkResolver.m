@interface AppLinkResolver
+ (id)_appBundleIdentifiersByURLPrefixes;
- (AppLinkResolver)init;
- (BOOL)isClipForAppBundleIdentifier:(id)a3;
- (id)_bundleIdentifierForURL:(id)a3;
- (id)_hardCodedBundleIdentifierForURL:(id)a3;
- (id)appBundleIdentifierForURL:(id)a3;
- (id)ipaLinkForClipBundleIdentifier:(id)a3;
- (id)metadataForURL:(id)a3;
- (void)getAppBundleIdentifierForURL:(id)a3 completionHandler:(id)a4;
- (void)saveLinkWithURL:(id)a3 metadata:(id)a4;
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

- (void)saveLinkWithURL:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if (!self->_URLHashToMetadataMap)
    {
      v9 = +[NSMutableDictionary dictionary];
      URLHashToMetadataMap = self->_URLHashToMetadataMap;
      self->_URLHashToMetadataMap = v9;
    }

    v11 = [v6 absoluteString];
    v12 = [v11 cps_sha256];

    [(NSMutableDictionary *)self->_URLHashToMetadataMap setObject:v8 forKey:v12];
    v13 = sub_100004064();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138740227;
      v15 = v8;
      v16 = 2117;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found an app with meta data: %{sensitive}@, for URL: %{sensitive}@", &v14, 0x16u);
    }
  }
}

- (id)metadataForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v5 cps_sha256];

  v7 = [(NSMutableDictionary *)self->_URLHashToMetadataMap objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[CPSSessionManager sharedManager];
    v11 = [v10 sessionWithURL:v4 createIfNoExist:0];

    v9 = [v11 metadata];

    if (v9)
    {
      v9 = [v11 metadata];
    }
  }

  return v9;
}

- (id)appBundleIdentifierForURL:(id)a3
{
  v4 = a3;
  v5 = sub_100004064();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "start resolving URL", buf, 2u);
  }

  v6 = [(AppLinkResolver *)self _bundleIdentifierForURL:v4];

  v7 = sub_100004064();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "end resolving URL", v9, 2u);
  }

  return v6;
}

- (id)ipaLinkForClipBundleIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001D14;
  v17 = sub_100001D24;
  v5 = +[AppLinkResolver _clipIPALinksByBundleIdentifiers];
  v18 = [v5 objectForKeyedSubscript:v4];

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
    v11 = v4;
    v12 = &v13;
    [(NSMutableDictionary *)URLHashToMetadataMap enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v14[5];
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)getAppBundleIdentifierForURL:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = sub_100004064();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "start resolving URL", buf, 2u);
    }

    v9 = [(AppLinkResolver *)self _bundleIdentifierForURL:v7];

    v6[2](v6, v9);
    v10 = sub_100004064();
    if (os_signpost_enabled(v10))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "resolveURLAction", "end resolving URL", v11, 2u);
    }
  }
}

- (BOOL)isClipForAppBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[AppLinkResolver _appBundleIdentifiersByURLPrefixes];
  v5 = [v4 allKeysForObject:v3];

  LOBYTE(v3) = [v5 count] != 0;
  return v3;
}

- (id)_bundleIdentifierForURL:(id)a3
{
  v4 = a3;
  v5 = [(AppLinkResolver *)self metadataForURL:v4];
  v6 = v5;
  if (v5)
  {
    [v5 clipBundleID];
  }

  else
  {
    [(AppLinkResolver *)self _hardCodedBundleIdentifierForURL:v4];
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

- (id)_hardCodedBundleIdentifierForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
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
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end