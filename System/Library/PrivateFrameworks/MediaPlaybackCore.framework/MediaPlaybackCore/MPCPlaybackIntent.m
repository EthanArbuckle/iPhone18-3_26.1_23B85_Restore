@interface MPCPlaybackIntent
+ (id)continueListeningRadioPlaybackIntent;
+ (id)intentFromModelRequest:(id)a3;
+ (id)radioPlaybackIntentFromAlbum:(id)a3;
+ (id)radioPlaybackIntentFromArtist:(id)a3;
+ (id)radioPlaybackIntentFromReference:(id)a3;
+ (id)radioPlaybackIntentFromSong:(id)a3;
+ (id)radioPlaybackIntentWithStation:(id)a3;
+ (id)radioPlaybackIntentWithStationStringID:(id)a3;
+ (id)radioPlaybackIntentWithStationURL:(id)a3;
+ (id)sharedSessionIntentWithProperties:(id)a3 identity:(id)a4;
+ (id)tracklistDataSourceClassForSource:(uint64_t)a1;
+ (id)tracklistDataSourceForSource:(int64_t)a3;
+ (void)buildSharedSessionIntentWithIntent:(id)a3 identity:(id)a4 extendedStatusCompletion:(id)a5;
- (MPCPlaybackIntent)init;
- (MPCPlaybackIntentDataSource)tracklistDataSource;
- (MPCPlaybackSharedListeningProperties)sharedListeningProperties;
- (id)description;
- (void)getArchiveWithConfiguration:(id)a3 completion:(id)a4;
- (void)getRemotePlaybackQueueDataWithCompletion:(id)a3;
- (void)getRemotePlaybackQueueWithDestination:(int64_t)a3 completion:(id)a4;
- (void)getRepresentativeObjectWithProperties:(id)a3 completion:(id)a4;
- (void)getSharedListeningTracklistWithCompletion:(id)a3;
@end

@implementation MPCPlaybackIntent

- (MPCPlaybackIntent)init
{
  v8.receiver = self;
  v8.super_class = MPCPlaybackIntent;
  v2 = [(MPCPlaybackIntent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_shuffleMode = -1;
    v2->_repeatMode = -1;
    v2->_actionAfterQueueLoad = 20;
    startTimeModifications = v2->_startTimeModifications;
    v5 = MEMORY[0x1E695E0F8];
    v2->_startTimeModifications = MEMORY[0x1E695E0F8];

    endTimeModifications = v3->_endTimeModifications;
    v3->_endTimeModifications = v5;
  }

  return v3;
}

- (void)getSharedListeningTracklistWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlaybackIntent *)self tracklistDataSource];
  [v5 getSharedListeningTracklistFromIntent:self withCompletion:v4];
}

- (MPCPlaybackSharedListeningProperties)sharedListeningProperties
{
  if ([(MPCPlaybackIntent *)self tracklistSource]== 100)
  {
    v3 = [(MPCPlaybackIntent *)self tracklistToken];
    v4 = [v3 sharedListeningProperties];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getArchiveWithConfiguration:(id)a3 completion:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v8 = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 getArchiveFromIntent:self configuration:v11 completion:v7];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    v7[2](v7, 0, v9);
  }
}

- (void)getRepresentativeObjectWithProperties:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v9 = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__MPCPlaybackIntent_getRepresentativeObjectWithProperties_completion___block_invoke;
    v12[3] = &unk_1E8237EC0;
    v13 = v8;
    [v9 getRepresentativeObjectFromIntent:self properties:v7 completion:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    (*(v8 + 2))(v8, 0, v10);
  }
}

- (void)getRemotePlaybackQueueWithDestination:(int64_t)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v8 = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (v8)
  {
    v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v10 = [v9 forcedIntentDestination];

    if (v10)
    {
      v11 = [v10 intValue];
      if (v11 && v11 <= 3)
      {
        v13 = v11;
        a3 = v11;
        v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v18 = v13;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "Using overridden playback destination from defaults: %d", buf, 8u);
        }
      }
    }

    [v8 getRemotePlaybackQueueFromIntent:self destination:a3 completion:v7];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    v7[2](v7, 0, v15);
  }
}

- (void)getRemotePlaybackQueueDataWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MPCPlaybackIntent_getRemotePlaybackQueueDataWithCompletion___block_invoke;
  v6[3] = &unk_1E8237E98;
  v7 = v4;
  v5 = v4;
  [(MPCPlaybackIntent *)self getRemotePlaybackQueueWithDestination:3 completion:v6];
}

void __62__MPCPlaybackIntent_getRemotePlaybackQueueDataWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69E4418]) initWithName:@"com.apple.amp.MPCPlaybackIntent.MediaSuggestion"];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
    [v5 setExpirationDate:v6];

    v7 = [MEMORY[0x1E69E4410] sharedService];
    [v7 addAssertion:v5];

    [v9 _mediaRemotePlaybackQueue];
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    (*(*(a1 + 32) + 16))();
  }
}

- (MPCPlaybackIntentDataSource)tracklistDataSource
{
  resolvedTracklistDataSource = self->_resolvedTracklistDataSource;
  if (!resolvedTracklistDataSource)
  {
    v4 = [objc_opt_class() tracklistDataSourceForSource:self->_tracklistSource];
    v5 = self->_resolvedTracklistDataSource;
    self->_resolvedTracklistDataSource = v4;

    resolvedTracklistDataSource = self->_resolvedTracklistDataSource;
  }

  return resolvedTracklistDataSource;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = self->_shuffleMode + 1;
  if (v5 >= 4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@unknown(rawValue: %lld)", self->_shuffleMode];
  }

  else
  {
    v6 = off_1E8237F50[v5];
  }

  v7 = self->_repeatMode + 1;
  if (v7 >= 4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@unknown(rawValue: %lld)", self->_repeatMode];
  }

  else
  {
    v8 = off_1E8237F70[v7];
  }

  v9 = MPNSStringFromQueueLoadAction();
  tracklistSource = self->_tracklistSource;
  if (tracklistSource > 5)
  {
    if (tracklistSource > 499)
    {
      if (tracklistSource == 500)
      {
        v11 = @"Podcasts";
        goto LABEL_27;
      }

      if (tracklistSource == 1000)
      {
        v11 = @"AppExtension";
        goto LABEL_27;
      }
    }

    else
    {
      if (tracklistSource == 6)
      {
        v11 = @"PlaybackContext";
        goto LABEL_27;
      }

      if (tracklistSource == 100)
      {
        v11 = @"SharedListening";
        goto LABEL_27;
      }
    }
  }

  else if (tracklistSource > 2)
  {
    if (tracklistSource == 3)
    {
      v11 = @"ModelResponse";
      goto LABEL_27;
    }

    if (tracklistSource == 4)
    {
      v11 = @"QueueDescriptor";
      goto LABEL_27;
    }
  }

  else
  {
    if (!tracklistSource)
    {
      v11 = @"Unknown";
      goto LABEL_27;
    }

    if (tracklistSource == 1)
    {
      v11 = @"Radio";
      goto LABEL_27;
    }
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@unknown(rawValue: %lld)", self->_tracklistSource];
LABEL_27:
  v12 = [v3 stringWithFormat:@"<%@: %p shuffleMode=%@ repeatMode=%@ actionAfterQueueLoad=%@ tracklistSource=%@ tracklistToken=%@>", v4, self, v6, v8, v9, v11, self->_tracklistToken];

  return v12;
}

+ (id)tracklistDataSourceForSource:(int64_t)a3
{
  v3 = objc_alloc_init([(MPCPlaybackIntent *)a1 tracklistDataSourceClassForSource:a3]);

  return v3;
}

+ (id)tracklistDataSourceClassForSource:(uint64_t)a1
{
  objc_opt_self();
  v3 = 0;
  if (a2 <= 5)
  {
    if (a2 == 1 || a2 == 3 || a2 == 4)
    {
      goto LABEL_13;
    }
  }

  else if (a2 > 499)
  {
    if (a2 == 500)
    {
LABEL_13:
      v3 = objc_opt_class();
      goto LABEL_14;
    }

    if (a2 == 1000)
    {
      v3 = __appExtensionDataSource;
    }
  }

  else if (a2 == 6 || a2 == 100)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v3;
}

+ (id)sharedSessionIntentWithProperties:(id)a3 identity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPCSharedListeningPlaybackIntentTracklistToken);
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v7 setSharedListeningProperties:v6];

  [(MPCSharedListeningPlaybackIntentTracklistToken *)v7 setIdentity:v5];
  v8 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v8 setTracklistSource:100];
  [(MPCPlaybackIntent *)v8 setTracklistToken:v7];

  return v8;
}

+ (void)buildSharedSessionIntentWithIntent:(id)a3 identity:(id)a4 extendedStatusCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MPCSharedListeningPlaybackIntentDataSource);
  [(MPCSharedListeningPlaybackIntentDataSource *)v10 buildSharedSessionIntentWithIntent:v9 identity:v8 completion:v7];
}

+ (id)radioPlaybackIntentWithStationURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setRadioStationURL:v3];

  v5 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v5 setTracklistSource:1];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v4];

  return v5;
}

+ (id)radioPlaybackIntentWithStationStringID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  v5 = objc_alloc(MEMORY[0x1E6970750]);
  v6 = objc_alloc(MEMORY[0x1E6970550]);
  v7 = [MEMORY[0x1E6970758] identityKind];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MPCPlaybackIntent_radioPlaybackIntentWithStationStringID___block_invoke;
  v13[3] = &unk_1E82389D8;
  v14 = v3;
  v8 = v3;
  v9 = [v6 initWithSource:@"MPCPlaybackIntent" modelKind:v7 block:v13];
  v10 = [v5 initWithIdentifiers:v9 block:&__block_literal_global_25499];
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setRadioStation:v10];

  v11 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v11 setTracklistSource:1];
  [(MPCPlaybackIntent *)v11 setTracklistToken:v4];

  return v11;
}

void __60__MPCPlaybackIntent_radioPlaybackIntentWithStationStringID___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__MPCPlaybackIntent_radioPlaybackIntentWithStationStringID___block_invoke_2;
  v3[3] = &unk_1E8237EE8;
  v4 = *(a1 + 32);
  [a2 setRadioIdentifiersWithBlock:v3];
}

+ (id)radioPlaybackIntentWithStation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setRadioStation:v3];

  v5 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v5 setTracklistSource:1];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v4];

  return v5;
}

+ (id)radioPlaybackIntentFromSong:(id)a3
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:a3];
  if (v4)
  {
    v5 = [a1 radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromArtist:(id)a3
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:a3];
  if (v4)
  {
    v5 = [a1 radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromAlbum:(id)a3
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:a3];
  if (v4)
  {
    v5 = [a1 radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromReference:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setSeedContentReference:v3];

  v5 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v5 setTracklistSource:1];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v4];

  return v5;
}

+ (id)continueListeningRadioPlaybackIntent
{
  v2 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v2 setContinueListeningStation:1];
  v3 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v3 setTracklistSource:1];
  [(MPCPlaybackIntent *)v3 setTracklistToken:v2];
  [(MPCPlaybackIntent *)v3 setPlayActivityFeatureName:@"now_playing"];

  return v3;
}

+ (id)intentFromModelRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCPlaybackIntent);
  v5 = objc_alloc_init(MPCModelPlaybackIntentTracklistToken);
  [(MPCModelPlaybackIntentTracklistToken *)v5 setRequest:v3];

  [(MPCPlaybackIntent *)v4 setTracklistToken:v5];
  [(MPCPlaybackIntent *)v4 setTracklistSource:3];

  return v4;
}

@end