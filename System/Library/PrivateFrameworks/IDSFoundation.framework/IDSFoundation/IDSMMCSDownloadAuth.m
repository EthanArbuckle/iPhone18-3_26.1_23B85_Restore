@interface IDSMMCSDownloadAuth
- (IDSMMCSDownloadAuth)initWithDictionaryRepresentation:(id)a3;
- (IDSMMCSDownloadAuth)initWithSignature:(id)a3 authURL:(id)a4 ownerID:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IDSMMCSDownloadAuth

- (IDSMMCSDownloadAuth)initWithSignature:(id)a3 authURL:(id)a4 ownerID:(id)a5
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"mS";
  v15[1] = @"mR";
  v16[0] = a3;
  v16[1] = a4;
  v15[2] = @"mO";
  v16[2] = a5;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [(IDSMMCSDownloadAuth *)self initWithDictionaryRepresentation:v12];
  return v13;
}

- (IDSMMCSDownloadAuth)initWithDictionaryRepresentation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSMMCSDownloadAuth;
  v6 = [(IDSMMCSDownloadAuth *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [IDSMMCSDownloadAuth alloc];
  v6 = [(NSDictionary *)self->_dictionaryRepresentation copyWithZone:a3];
  v7 = [(IDSMMCSDownloadAuth *)v5 initWithDictionaryRepresentation:v6];

  return v7;
}

@end