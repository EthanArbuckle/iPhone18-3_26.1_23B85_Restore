@interface FAFamilyMemberPhotoRequest
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d accountStore:(id)store;
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d ephemeralAuthResults:(id)results;
- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d ephemeralAuthSigner:(id)signer;
- (FAFamilyMemberPhotoRequest)initWithMemberDSID:(id)d accountStore:(id)store;
- (id)fa_photoRequestBaseURLString;
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAFamilyMemberPhotoRequest

- (FAFamilyMemberPhotoRequest)initWithMemberDSID:(id)d accountStore:(id)store
{
  dCopy = d;
  storeCopy = store;
  aa_primaryAppleAccount = [storeCopy aa_primaryAppleAccount];
  v11.receiver = self;
  v11.super_class = FAFamilyMemberPhotoRequest;
  v9 = [(AAFamilyRequest *)&v11 initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:0 accountStore:storeCopy];

  if (v9)
  {
    [(FAFamilyMemberPhotoRequest *)v9 setFamilyMemberDSID:dCopy];
  }

  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d accountStore:(id)store
{
  dCopy = d;
  storeCopy = store;
  aa_primaryAppleAccount = [storeCopy aa_primaryAppleAccount];
  v11.receiver = self;
  v11.super_class = FAFamilyMemberPhotoRequest;
  v9 = [(AAFamilyRequest *)&v11 initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:0 accountStore:storeCopy];

  if (v9)
  {
    [(FAFamilyMemberPhotoRequest *)v9 setFamilyMemberAltDSID:dCopy];
  }

  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d ephemeralAuthResults:(id)results
{
  resultsCopy = results;
  dCopy = d;
  v8 = [[FARequestEphemeralSigner alloc] initWithEphemeralAuthResults:resultsCopy];

  v9 = [(FAFamilyMemberPhotoRequest *)self initWithMemberAltDSID:dCopy ephemeralAuthSigner:v8];
  return v9;
}

- (FAFamilyMemberPhotoRequest)initWithMemberAltDSID:(id)d ephemeralAuthSigner:(id)signer
{
  dCopy = d;
  signerCopy = signer;
  account = [signerCopy account];
  v12.receiver = self;
  v12.super_class = FAFamilyMemberPhotoRequest;
  v10 = [(AAFamilyRequest *)&v12 initWithAppleAccount:account grandSlamAccount:0 accountStore:0];

  if (v10)
  {
    objc_storeStrong(&v10->_ephemeralAuthSigner, signer);
    objc_storeStrong(&v10->_familyMemberAltDSID, d);
  }

  return v10;
}

- (id)fa_photoRequestBaseURLString
{
  urlConfiguration = [MEMORY[0x1E698B9C0] urlConfiguration];
  getFamilyMemberPhotoURL = [urlConfiguration getFamilyMemberPhotoURL];

  return getFamilyMemberPhotoURL;
}

- (id)urlString
{
  fa_photoRequestBaseURLString = [(FAFamilyMemberPhotoRequest *)self fa_photoRequestBaseURLString];
  familyMemberDSID = self->_familyMemberDSID;
  if (familyMemberDSID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?memberId=%@", fa_photoRequestBaseURLString, familyMemberDSID];
    v6 = LABEL_5:;
    goto LABEL_6;
  }

  familyMemberAltDSID = self->_familyMemberAltDSID;
  if (familyMemberAltDSID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?memberAltDSID=%@", fa_photoRequestBaseURLString, familyMemberAltDSID];
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
  urlRequest = [(AAFamilyRequest *)&v11 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 fam_addiTunesHeadersWithAccount:self->_iTunesAccount];
  serverCacheTag = self->_serverCacheTag;
  if (serverCacheTag)
  {
    [v4 setValue:serverCacheTag forHTTPHeaderField:@"ETag"];
  }

  ephemeralAuthSigner = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];

  if (ephemeralAuthSigner)
  {
    ephemeralAuthSigner2 = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];
    [ephemeralAuthSigner2 signURLRequest:v4];

    ephemeralAuthSigner3 = [(FAFamilyMemberPhotoRequest *)self ephemeralAuthSigner];
    account = [ephemeralAuthSigner3 account];
    [v4 aa_addBasicAuthorizationHeaderWithAccount:account preferUsingPassword:1];
  }

  return v4;
}

@end