@interface FAFamilyMemberPhotoRequest
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 accountStore:(id)a4;
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 ephemeralAuthResults:(id)a4;
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 ephemeralAuthSigner:(id)a4;
- (FAFamilyMemberPhotoRequest)initWithMemberDSID:(id)a3 accountStore:(id)a4;
- (id)fa_photoRequestBaseURLString;
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAFamilyMemberPhotoRequest

- (FAFamilyMemberPhotoRequest)initWithMemberDSID:(id)a3 accountStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 aa_primaryAppleAccount];
  v11.receiver = self;
  v11.super_class = FAFamilyMemberPhotoRequest;
  v9 = [(AAFamilyRequest *)&v11 initWithAppleAccount:v8 grandSlamAccount:0 accountStore:v7];

  if (v9)
  {
    [(FAFamilyMemberPhotoRequest *)v9 setFamilyMemberDSID:v6];
  }

  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 accountStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 aa_primaryAppleAccount];
  v11.receiver = self;
  v11.super_class = FAFamilyMemberPhotoRequest;
  v9 = [(AAFamilyRequest *)&v11 initWithAppleAccount:v8 grandSlamAccount:0 accountStore:v7];

  if (v9)
  {
    [(FAFamilyMemberPhotoRequest *)v9 setFamilyMemberAltDSID:v6];
  }

  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 ephemeralAuthResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FARequestEphemeralSigner alloc] initWithEphemeralAuthResults:v6];

  v9 = [(FAFamilyMemberPhotoRequest *)self initWithMemberAltDSID:v7 ephemeralAuthSigner:v8];
  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)a3 ephemeralAuthSigner:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 account];
  v12.receiver = self;
  v12.super_class = FAFamilyMemberPhotoRequest;
  v10 = [(AAFamilyRequest *)&v12 initWithAppleAccount:v9 grandSlamAccount:0 accountStore:0];

  if (v10)
  {
    objc_storeStrong(&v10->_ephemeralAuthSigner, a4);
    objc_storeStrong(&v10->_familyMemberAltDSID, a3);
  }

  return v10;
}

- (id)fa_photoRequestBaseURLString
{
  v2 = [MEMORY[0x1E698B9C0] urlConfiguration];
  v3 = [v2 getFamilyMemberPhotoURL];

  return v3;
}

- (id)urlString
{
  v3 = [(FAFamilyMemberPhotoRequest *)self fa_photoRequestBaseURLString];
  familyMemberDSID = self->_familyMemberDSID;
  if (familyMemberDSID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?memberId=%@", v3, familyMemberDSID];
    v6 = LABEL_5:;
    goto LABEL_6;
  }

  familyMemberAltDSID = self->_familyMemberAltDSID;
  if (familyMemberAltDSID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?memberAltDSID=%@", v3, familyMemberAltDSID];
    goto LABEL_5;
  }

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(FAFamilyMemberPhotoRequest *)v8 urlString];
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = FAFamilyMemberPhotoRequest;
  v3 = [(AAFamilyRequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 fam_addiTunesHeadersWithAccount:self->_iTunesAccount];
  serverCacheTag = self->_serverCacheTag;
  if (serverCacheTag)
  {
    [v4 setValue:serverCacheTag forHTTPHeaderField:@"ETag"];
  }

  v6 = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];

  if (v6)
  {
    v7 = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];
    [v7 signURLRequest:v4];

    v8 = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];
    v9 = [v8 account];
    [v4 aa_addBasicAuthorizationHeaderWithAccount:v9 preferUsingPassword:1];
  }

  return v4;
}

@end