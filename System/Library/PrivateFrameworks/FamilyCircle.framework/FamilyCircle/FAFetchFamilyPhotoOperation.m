@interface FAFetchFamilyPhotoOperation
- (FAFetchFamilyPhotoOperation)initWithNetworkService:(id)a3 memberDSID:(id)a4 memberHashedDSID:(id)a5 size:(int64_t)a6 localFallback:(BOOL)a7 context:(id)a8 requestCoalescer:(id)a9 fetchFamilyFactory:(id)a10;
- (double)screenScale;
- (id)_monogramForContact:(id)a3;
- (id)_monogramWithFirstName:(id)a3 lastName:(id)a4;
- (id)familyMemberMatchingDSID;
- (id)fetchCachedPhotoForFamilyMember:(id)a3;
- (id)fetchPhoto;
- (id)fetchRemotePhotoForFamilyMember:(id)a3;
@end

@implementation FAFetchFamilyPhotoOperation

- (FAFetchFamilyPhotoOperation)initWithNetworkService:(id)a3 memberDSID:(id)a4 memberHashedDSID:(id)a5 size:(int64_t)a6 localFallback:(BOOL)a7 context:(id)a8 requestCoalescer:(id)a9 fetchFamilyFactory:(id)a10
{
  v28 = a4;
  v27 = a5;
  v26 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = FAFetchFamilyPhotoOperation;
  v19 = [(FANetworkClient *)&v29 initWithNetworkService:a3];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dsid, a4);
    objc_storeStrong(&v20->_hashedDSID, a5);
    v20->_size = a6;
    v20->_localFallback = a7;
    objc_storeStrong(&v20->_context, a8);
    v20->_useMonogramAsLastResort = 1;
    v21 = objc_retainBlock(v18);
    fetchFamilyFactory = v20->_fetchFamilyFactory;
    v20->_fetchFamilyFactory = v21;

    objc_storeStrong(&v20->_requestCoalescer, a9);
    v23 = objc_alloc_init(FAMemberPhotoRequest404Cache);
    cacheFor404Response = v20->_cacheFor404Response;
    v20->_cacheFor404Response = v23;
  }

  return v20;
}

- (id)fetchPhoto
{
  v3 = [(FANetworkClient *)self networkService];
  v4 = [v3 ensureDeviceUnlockedSinceBoot];
  v5 = [v4 then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000102E0;
  v14[3] = &unk_1000A5F78;
  v14[4] = self;
  v6 = (v5)[2](v5, v14);
  v7 = [v6 then];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010330;
  v13[3] = &unk_1000A5FE0;
  v13[4] = self;
  v8 = (v7)[2](v7, v13);
  v9 = [v8 thenOnQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010338;
  v12[3] = &unk_1000A69A8;
  v12[4] = self;
  v10 = (v9)[2](v9, &_dispatch_main_q, v12);

  return v10;
}

- (id)familyMemberMatchingDSID
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100010B14;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)fetchCachedPhotoForFamilyMember:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v4;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Fetching cached photo for member %@", &v12, 0x16u);
  }

  v7 = [FAFamilyPhotoCache alloc];
  v8 = [v4 altDSID];
  v9 = [(FAFamilyPhotoCache *)v7 initWithAltDSID:v8];

  [(FAFetchFamilyPhotoOperation *)self setCache:v9];
  v10 = [(FAFamilyPhotoCache *)v9 load];

  return v10;
}

- (id)fetchRemotePhotoForFamilyMember:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = v4;
    v6 = v17;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Fetching remote photo for member %@", buf, 0x16u);
  }

  v7 = [v4 dsid];
  v8 = [v7 description];
  v9 = [NSString stringWithFormat:@"%@-%@", @"FAFetchFamilyPhotoOperationKeyPrefix", v8];

  requestCoalescer = self->_requestCoalescer;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000111B4;
  v14[3] = &unk_1000A60D0;
  v14[4] = self;
  v15 = v4;
  v11 = v4;
  v12 = [(FARequestCoalescer *)requestCoalescer performBlockForKey:v9 force:0 block:v14];

  return v12;
}

- (id)_monogramWithFirstName:(id)a3 lastName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CNMutableContact);
  [v8 setContactType:0];
  [v8 setGivenName:v7];

  [v8 setFamilyName:v6];
  v9 = [(FAFetchFamilyPhotoOperation *)self _monogramForContact:v8];

  return v9;
}

- (id)_monogramForContact:(id)a3
{
  monogramDiameter = self->_monogramDiameter;
  v5 = a3;
  [(FAFetchFamilyPhotoOperation *)self screenScale];
  v7 = [FAMonogram monogramForContact:v5 diameter:monogramDiameter scale:v6];

  return v7;
}

- (double)screenScale
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = qword_1000B9958;
  v12 = qword_1000B9958;
  if (!qword_1000B9958)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011D70;
    v8[3] = &unk_1000A5EF8;
    v8[4] = &v9;
    sub_100011D70(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 mainScreen];
  [v4 scale];
  v6 = v5;

  return v6;
}

@end