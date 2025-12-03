@interface FAFetchFamilyPhotoOperation
- (FAFetchFamilyPhotoOperation)initWithNetworkService:(id)service memberDSID:(id)d memberHashedDSID:(id)iD size:(int64_t)size localFallback:(BOOL)fallback context:(id)context requestCoalescer:(id)coalescer fetchFamilyFactory:(id)self0;
- (double)screenScale;
- (id)_monogramForContact:(id)contact;
- (id)_monogramWithFirstName:(id)name lastName:(id)lastName;
- (id)familyMemberMatchingDSID;
- (id)fetchCachedPhotoForFamilyMember:(id)member;
- (id)fetchPhoto;
- (id)fetchRemotePhotoForFamilyMember:(id)member;
@end

@implementation FAFetchFamilyPhotoOperation

- (FAFetchFamilyPhotoOperation)initWithNetworkService:(id)service memberDSID:(id)d memberHashedDSID:(id)iD size:(int64_t)size localFallback:(BOOL)fallback context:(id)context requestCoalescer:(id)coalescer fetchFamilyFactory:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  coalescerCopy = coalescer;
  factoryCopy = factory;
  v29.receiver = self;
  v29.super_class = FAFetchFamilyPhotoOperation;
  v19 = [(FANetworkClient *)&v29 initWithNetworkService:service];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dsid, d);
    objc_storeStrong(&v20->_hashedDSID, iD);
    v20->_size = size;
    v20->_localFallback = fallback;
    objc_storeStrong(&v20->_context, context);
    v20->_useMonogramAsLastResort = 1;
    v21 = objc_retainBlock(factoryCopy);
    fetchFamilyFactory = v20->_fetchFamilyFactory;
    v20->_fetchFamilyFactory = v21;

    objc_storeStrong(&v20->_requestCoalescer, coalescer);
    v23 = objc_alloc_init(FAMemberPhotoRequest404Cache);
    cacheFor404Response = v20->_cacheFor404Response;
    v20->_cacheFor404Response = v23;
  }

  return v20;
}

- (id)fetchPhoto
{
  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000102E0;
  v14[3] = &unk_1000A5F78;
  v14[4] = self;
  v6 = (then)[2](then, v14);
  then2 = [v6 then];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010330;
  v13[3] = &unk_1000A5FE0;
  v13[4] = self;
  v8 = (then2)[2](then2, v13);
  thenOnQueue = [v8 thenOnQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010338;
  v12[3] = &unk_1000A69A8;
  v12[4] = self;
  v10 = (thenOnQueue)[2](thenOnQueue, &_dispatch_main_q, v12);

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

- (id)fetchCachedPhotoForFamilyMember:(id)member
{
  memberCopy = member;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = memberCopy;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Fetching cached photo for member %@", &v12, 0x16u);
  }

  v7 = [FAFamilyPhotoCache alloc];
  altDSID = [memberCopy altDSID];
  v9 = [(FAFamilyPhotoCache *)v7 initWithAltDSID:altDSID];

  [(FAFetchFamilyPhotoOperation *)self setCache:v9];
  load = [(FAFamilyPhotoCache *)v9 load];

  return load;
}

- (id)fetchRemotePhotoForFamilyMember:(id)member
{
  memberCopy = member;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = memberCopy;
    v6 = v17;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Fetching remote photo for member %@", buf, 0x16u);
  }

  dsid = [memberCopy dsid];
  v8 = [dsid description];
  v9 = [NSString stringWithFormat:@"%@-%@", @"FAFetchFamilyPhotoOperationKeyPrefix", v8];

  requestCoalescer = self->_requestCoalescer;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000111B4;
  v14[3] = &unk_1000A60D0;
  v14[4] = self;
  v15 = memberCopy;
  v11 = memberCopy;
  v12 = [(FARequestCoalescer *)requestCoalescer performBlockForKey:v9 force:0 block:v14];

  return v12;
}

- (id)_monogramWithFirstName:(id)name lastName:(id)lastName
{
  lastNameCopy = lastName;
  nameCopy = name;
  v8 = objc_alloc_init(CNMutableContact);
  [v8 setContactType:0];
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:lastNameCopy];
  v9 = [(FAFetchFamilyPhotoOperation *)self _monogramForContact:v8];

  return v9;
}

- (id)_monogramForContact:(id)contact
{
  monogramDiameter = self->_monogramDiameter;
  contactCopy = contact;
  [(FAFetchFamilyPhotoOperation *)self screenScale];
  v7 = [FAMonogram monogramForContact:contactCopy diameter:monogramDiameter scale:v6];

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
  mainScreen = [v2 mainScreen];
  [mainScreen scale];
  v6 = v5;

  return v6;
}

@end