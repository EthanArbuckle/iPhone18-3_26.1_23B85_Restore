@interface MCEncryptedProfileServicePayload
- (MCEncryptedProfileServicePayload)initWithURLString:(id)a3 profile:(id)a4;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCEncryptedProfileServicePayload

- (MCEncryptedProfileServicePayload)initWithURLString:(id)a3 profile:(id)a4
{
  v19[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v18[0] = @"PayloadVersion";
  v18[1] = @"PayloadType";
  v19[0] = &unk_1F1AA5830;
  v19[1] = @"com.apple.placeholder.encryptedprofileservice";
  v18[2] = @"PayloadIdentifier";
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = [v8 MCMakeUUID];
  v19[2] = v10;
  v18[3] = @"PayloadUUID";
  v11 = [MEMORY[0x1E696AEC0] MCMakeUUID];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v13 = [v12 mutableCopy];

  v17.receiver = self;
  v17.super_class = MCEncryptedProfileServicePayload;
  v14 = [(MCPayload *)&v17 initWithDictionary:v13 profile:v9 outError:0];

  if (v14)
  {
    objc_storeStrong(&v14->_urlString, a3);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = MCEncryptedProfileServicePayload;
  v4 = [(MCPayload *)&v7 verboseDescription];
  v5 = [v3 stringWithString:v4];

  if (self->_urlString)
  {
    [v5 appendFormat:@"URL         : %@", self->_urlString];
  }

  return v5;
}

- (id)subtitle1Label
{
  if (self->_urlString)
  {
    v2 = @"DEVICE_ENROLLMENT_CHALLENGE_URL_COLON";
  }

  else
  {
    v2 = @"DEVICE_ENROLLMENT_CHALLENGE_URL_MISSING";
  }

  v3 = MCLocalizedString(v2);

  return v3;
}

@end