@interface IDSMMCSDownloadAuth
- (IDSMMCSDownloadAuth)initWithDictionaryRepresentation:(id)representation;
- (IDSMMCSDownloadAuth)initWithSignature:(id)signature authURL:(id)l ownerID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IDSMMCSDownloadAuth

- (IDSMMCSDownloadAuth)initWithSignature:(id)signature authURL:(id)l ownerID:(id)d
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"mS";
  v15[1] = @"mR";
  v16[0] = signature;
  v16[1] = l;
  v15[2] = @"mO";
  v16[2] = d;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  lCopy = l;
  signatureCopy = signature;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [(IDSMMCSDownloadAuth *)self initWithDictionaryRepresentation:v12];
  return v13;
}

- (IDSMMCSDownloadAuth)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IDSMMCSDownloadAuth;
  v6 = [(IDSMMCSDownloadAuth *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, representation);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [IDSMMCSDownloadAuth alloc];
  v6 = [(NSDictionary *)self->_dictionaryRepresentation copyWithZone:zone];
  v7 = [(IDSMMCSDownloadAuth *)v5 initWithDictionaryRepresentation:v6];

  return v7;
}

@end