@interface MusicKit_SoftLinking_MPMediaLibrary(MusicKitInternal)
+ (id)deviceMediaLibraryIdentifierForUserIdentity:()MusicKitInternal;
+ (id)deviceMediaLibraryWithUserIdentity:()MusicKitInternal;
- (id)userIdentity;
@end

@implementation MusicKit_SoftLinking_MPMediaLibrary(MusicKitInternal)

- (id)userIdentity
{
  _underlyingMediaLibrary = [self _underlyingMediaLibrary];
  userIdentity = [_underlyingMediaLibrary userIdentity];

  return userIdentity;
}

+ (id)deviceMediaLibraryIdentifierForUserIdentity:()MusicKitInternal
{
  v1 = [self deviceMediaLibraryWithUserIdentity:?];
  uniqueIdentifier = [v1 uniqueIdentifier];

  return uniqueIdentifier;
}

+ (id)deviceMediaLibraryWithUserIdentity:()MusicKitInternal
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getMPMediaLibraryClass_softClass_0;
  v13 = getMPMediaLibraryClass_softClass_0;
  if (!getMPMediaLibraryClass_softClass_0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getMPMediaLibraryClass_block_invoke_0;
    v9[3] = &unk_1E84C3838;
    v9[4] = &v10;
    __getMPMediaLibraryClass_block_invoke_0(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [v4 deviceMediaLibraryWithUserIdentity:v3];
  v7 = [objc_alloc(MEMORY[0x1E69775F8]) initWithUnderlyingMediaLibrary:v6];

  return v7;
}

@end