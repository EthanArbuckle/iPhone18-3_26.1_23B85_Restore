@interface MCEncryptedProfileServicePayload
- (MCEncryptedProfileServicePayload)initWithURLString:(id)string profile:(id)profile;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCEncryptedProfileServicePayload

- (MCEncryptedProfileServicePayload)initWithURLString:(id)string profile:(id)profile
{
  v19[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v18[0] = @"PayloadVersion";
  v18[1] = @"PayloadType";
  v19[0] = &unk_1F1AA5830;
  v19[1] = @"com.apple.placeholder.encryptedprofileservice";
  v18[2] = @"PayloadIdentifier";
  v8 = MEMORY[0x1E696AEC0];
  profileCopy = profile;
  mCMakeUUID = [v8 MCMakeUUID];
  v19[2] = mCMakeUUID;
  v18[3] = @"PayloadUUID";
  mCMakeUUID2 = [MEMORY[0x1E696AEC0] MCMakeUUID];
  v19[3] = mCMakeUUID2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v13 = [v12 mutableCopy];

  v17.receiver = self;
  v17.super_class = MCEncryptedProfileServicePayload;
  v14 = [(MCPayload *)&v17 initWithDictionary:v13 profile:profileCopy outError:0];

  if (v14)
  {
    objc_storeStrong(&v14->_urlString, string);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = MCEncryptedProfileServicePayload;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

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