@interface ClipMetadataManager
- (ClipMetadataManager)initWithAppInfoFetcher:(id)a3;
- (void)_fetchMetadataForURL:(id)a3 sourceBundleID:(id)a4 downloadIcon:(BOOL)a5 completion:(id)a6;
- (void)fetchClipURLForURLHash:(id)a3 sourceBundleID:(id)a4 completion:(id)a5;
@end

@implementation ClipMetadataManager

- (ClipMetadataManager)initWithAppInfoFetcher:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ClipMetadataManager;
  v6 = [(ClipMetadataManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, a3);
    v8 = objc_alloc_init(CPSBusinessItemFetcher);
    businessItemFetcher = v7->_businessItemFetcher;
    v7->_businessItemFetcher = v8;

    v10 = v7;
  }

  return v7;
}

- (void)fetchClipURLForURLHash:(id)a3 sourceBundleID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
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
  v13 = v7;
  v11 = v7;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURLHash:v8 completion:v12];
}

- (void)_fetchMetadataForURL:(id)a3 sourceBundleID:(id)a4 downloadIcon:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
  v19 = v11;
  v22 = a5;
  v20 = v10;
  v21 = v12;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURL:v15 availabilityHandler:0 completion:v18];
}

@end