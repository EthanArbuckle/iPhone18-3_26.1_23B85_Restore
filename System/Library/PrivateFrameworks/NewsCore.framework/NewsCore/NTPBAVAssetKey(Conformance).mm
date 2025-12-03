@interface NTPBAVAssetKey(Conformance)
- (BOOL)isExpired;
- (FCContentManifest)contentManifest;
- (id)creationDate;
- (id)expirationDate;
@end

@implementation NTPBAVAssetKey(Conformance)

- (id)creationDate
{
  v1 = MEMORY[0x1E695DF00];
  createdAt = [self createdAt];
  v3 = [v1 dateWithPBDate:createdAt];

  return v3;
}

- (id)expirationDate
{
  v1 = MEMORY[0x1E695DF00];
  expiresAt = [self expiresAt];
  v3 = [v1 dateWithPBDate:expiresAt];

  return v3;
}

- (BOOL)isExpired
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v4 = v3;
  expiresAt = [self expiresAt];
  [expiresAt timeIntervalSince1970];
  v7 = v4 >= v6;

  return v7;
}

- (FCContentManifest)contentManifest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [FCContentManifest alloc];
  identifier = [self identifier];
  v8[0] = identifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(FCContentManifest *)v2 initWithAVAssetKeyIDs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end