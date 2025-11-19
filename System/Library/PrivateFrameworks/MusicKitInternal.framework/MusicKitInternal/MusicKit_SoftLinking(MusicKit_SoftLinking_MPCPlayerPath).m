@interface MusicKit_SoftLinking(MusicKit_SoftLinking_MPCPlayerPath)
+ (id)playerPathWithCustomOrigin:()MusicKit_SoftLinking_MPCPlayerPath bundleID:playerID:;
+ (id)systemMusicPathWithRoute:()MusicKit_SoftLinking_MPCPlayerPath playerID:;
+ (uint64_t)deviceActivePlayerPath;
@end

@implementation MusicKit_SoftLinking(MusicKit_SoftLinking_MPCPlayerPath)

+ (uint64_t)deviceActivePlayerPath
{
  MPCPlayerPathClass = getMPCPlayerPathClass();

  return [MPCPlayerPathClass deviceActivePlayerPath];
}

+ (id)systemMusicPathWithRoute:()MusicKit_SoftLinking_MPCPlayerPath playerID:
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v9 = getMPAVRoutingControllerClass_softClass;
    v17 = getMPAVRoutingControllerClass_softClass;
    if (!getMPAVRoutingControllerClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getMPAVRoutingControllerClass_block_invoke;
      v13[3] = &unk_1E84C3838;
      v13[4] = &v14;
      __getMPAVRoutingControllerClass_block_invoke(v13);
      v9 = v15[3];
    }

    v10 = v9;
    _Block_object_dispose(&v14, 8);
    v8 = [v9 systemRoute];
  }

  v11 = [getMPCPlayerPathClass() systemMusicPathWithRoute:v8 playerID:v6];

  return v11;
}

+ (id)playerPathWithCustomOrigin:()MusicKit_SoftLinking_MPCPlayerPath bundleID:playerID:
{
  v7 = a5;
  v8 = a4;
  v9 = [getMPCPlayerPathClass() pathWithCustomOrigin:a3 bundleID:v8 playerID:v7];

  return v9;
}

@end