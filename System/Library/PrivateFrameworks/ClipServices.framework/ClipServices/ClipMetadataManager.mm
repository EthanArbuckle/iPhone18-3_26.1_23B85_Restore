@interface ClipMetadataManager
- (ClipMetadataManager)initWithAppInfoFetcher:(id)fetcher;
- (void)_fetchMetadataForURL:(id)l sourceBundleID:(id)d downloadIcon:(BOOL)icon completion:(id)completion;
- (void)fetchClipURLForURLHash:(id)hash sourceBundleID:(id)d completion:(id)completion;
@end

@implementation ClipMetadataManager

- (ClipMetadataManager)initWithAppInfoFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v12.receiver = self;
  v12.super_class = ClipMetadataManager;
  v6 = [(ClipMetadataManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, fetcher);
    v8 = objc_alloc_init(CPSBusinessItemFetcher);
    businessItemFetcher = v7->_businessItemFetcher;
    v7->_businessItemFetcher = v8;

    v10 = v7;
  }

  return v7;
}

- (void)fetchClipURLForURLHash:(id)hash sourceBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  hashCopy = hash;
  v9 = sub_100004064();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "Start Fetching ABR metadata", buf, 2u);
  }

  businessItemFetcher = self->_businessItemFetcher;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003A44;
  v12[3] = &unk_1000146C0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURLHash:hashCopy completion:v12];
}

- (void)_fetchMetadataForURL:(id)l sourceBundleID:(id)d downloadIcon:(BOOL)icon completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  completionCopy = completion;
  v13 = sub_100004064();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "Start Fetching ABR metadata", buf, 2u);
  }

  businessItemFetcher = self->_businessItemFetcher;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003C58;
  v18[3] = &unk_100014710;
  v18[4] = self;
  v19 = dCopy;
  iconCopy = icon;
  v20 = lCopy;
  v21 = completionCopy;
  v15 = lCopy;
  v16 = dCopy;
  v17 = completionCopy;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURL:v15 availabilityHandler:0 completion:v18];
}

@end