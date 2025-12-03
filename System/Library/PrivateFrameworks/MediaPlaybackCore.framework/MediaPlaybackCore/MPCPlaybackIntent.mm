@interface MPCPlaybackIntent
+ (id)continueListeningRadioPlaybackIntent;
+ (id)intentFromModelRequest:(id)request;
+ (id)radioPlaybackIntentFromAlbum:(id)album;
+ (id)radioPlaybackIntentFromArtist:(id)artist;
+ (id)radioPlaybackIntentFromReference:(id)reference;
+ (id)radioPlaybackIntentFromSong:(id)song;
+ (id)radioPlaybackIntentWithStation:(id)station;
+ (id)radioPlaybackIntentWithStationStringID:(id)d;
+ (id)radioPlaybackIntentWithStationURL:(id)l;
+ (id)sharedSessionIntentWithProperties:(id)properties identity:(id)identity;
+ (id)tracklistDataSourceClassForSource:(uint64_t)source;
+ (id)tracklistDataSourceForSource:(int64_t)source;
+ (void)buildSharedSessionIntentWithIntent:(id)intent identity:(id)identity extendedStatusCompletion:(id)completion;
- (MPCPlaybackIntent)init;
- (MPCPlaybackIntentDataSource)tracklistDataSource;
- (MPCPlaybackSharedListeningProperties)sharedListeningProperties;
- (id)description;
- (void)getArchiveWithConfiguration:(id)configuration completion:(id)completion;
- (void)getRemotePlaybackQueueDataWithCompletion:(id)completion;
- (void)getRemotePlaybackQueueWithDestination:(int64_t)destination completion:(id)completion;
- (void)getRepresentativeObjectWithProperties:(id)properties completion:(id)completion;
- (void)getSharedListeningTracklistWithCompletion:(id)completion;
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

- (void)getSharedListeningTracklistWithCompletion:(id)completion
{
  completionCopy = completion;
  tracklistDataSource = [(MPCPlaybackIntent *)self tracklistDataSource];
  [tracklistDataSource getSharedListeningTracklistFromIntent:self withCompletion:completionCopy];
}

- (MPCPlaybackSharedListeningProperties)sharedListeningProperties
{
  if ([(MPCPlaybackIntent *)self tracklistSource]== 100)
  {
    tracklistToken = [(MPCPlaybackIntent *)self tracklistToken];
    sharedListeningProperties = [tracklistToken sharedListeningProperties];
  }

  else
  {
    sharedListeningProperties = 0;
  }

  return sharedListeningProperties;
}

- (void)getArchiveWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  tracklistDataSource = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (tracklistDataSource && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [tracklistDataSource getArchiveFromIntent:self configuration:configurationCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)getRepresentativeObjectWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  tracklistDataSource = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (tracklistDataSource && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__MPCPlaybackIntent_getRepresentativeObjectWithProperties_completion___block_invoke;
    v12[3] = &unk_1E8237EC0;
    v13 = completionCopy;
    [tracklistDataSource getRepresentativeObjectFromIntent:self properties:propertiesCopy completion:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (void)getRemotePlaybackQueueWithDestination:(int64_t)destination completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackIntent.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  tracklistDataSource = [(MPCPlaybackIntent *)self tracklistDataSource];
  if (tracklistDataSource)
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    forcedIntentDestination = [standardUserDefaults forcedIntentDestination];

    if (forcedIntentDestination)
    {
      intValue = [forcedIntentDestination intValue];
      if (intValue && intValue <= 3)
      {
        v13 = intValue;
        destination = intValue;
        v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v18 = v13;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "Using overridden playback destination from defaults: %d", buf, 8u);
        }
      }
    }

    [tracklistDataSource getRemotePlaybackQueueFromIntent:self destination:destination completion:completionCopy];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)getRemotePlaybackQueueDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MPCPlaybackIntent_getRemotePlaybackQueueDataWithCompletion___block_invoke;
  v6[3] = &unk_1E8237E98;
  v7 = completionCopy;
  v5 = completionCopy;
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

+ (id)tracklistDataSourceForSource:(int64_t)source
{
  v3 = objc_alloc_init([(MPCPlaybackIntent *)self tracklistDataSourceClassForSource:source]);

  return v3;
}

+ (id)tracklistDataSourceClassForSource:(uint64_t)source
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

+ (id)sharedSessionIntentWithProperties:(id)properties identity:(id)identity
{
  identityCopy = identity;
  propertiesCopy = properties;
  v7 = objc_alloc_init(MPCSharedListeningPlaybackIntentTracklistToken);
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v7 setSharedListeningProperties:propertiesCopy];

  [(MPCSharedListeningPlaybackIntentTracklistToken *)v7 setIdentity:identityCopy];
  v8 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v8 setTracklistSource:100];
  [(MPCPlaybackIntent *)v8 setTracklistToken:v7];

  return v8;
}

+ (void)buildSharedSessionIntentWithIntent:(id)intent identity:(id)identity extendedStatusCompletion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  intentCopy = intent;
  v10 = objc_alloc_init(MPCSharedListeningPlaybackIntentDataSource);
  [(MPCSharedListeningPlaybackIntentDataSource *)v10 buildSharedSessionIntentWithIntent:intentCopy identity:identityCopy completion:completionCopy];
}

+ (id)radioPlaybackIntentWithStationURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setRadioStationURL:lCopy];

  v5 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v5 setTracklistSource:1];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v4];

  return v5;
}

+ (id)radioPlaybackIntentWithStationStringID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  v5 = objc_alloc(MEMORY[0x1E6970750]);
  v6 = objc_alloc(MEMORY[0x1E6970550]);
  identityKind = [MEMORY[0x1E6970758] identityKind];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MPCPlaybackIntent_radioPlaybackIntentWithStationStringID___block_invoke;
  v13[3] = &unk_1E82389D8;
  v14 = dCopy;
  v8 = dCopy;
  v9 = [v6 initWithSource:@"MPCPlaybackIntent" modelKind:identityKind block:v13];
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

+ (id)radioPlaybackIntentWithStation:(id)station
{
  stationCopy = station;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setRadioStation:stationCopy];

  v5 = objc_alloc_init(MPCPlaybackIntent);
  [(MPCPlaybackIntent *)v5 setTracklistSource:1];
  [(MPCPlaybackIntent *)v5 setTracklistToken:v4];

  return v5;
}

+ (id)radioPlaybackIntentFromSong:(id)song
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:song];
  if (v4)
  {
    v5 = [self radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromArtist:(id)artist
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:artist];
  if (v4)
  {
    v5 = [self radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromAlbum:(id)album
{
  v4 = [MPCModelRadioContentReference referenceWithMPModelObject:album];
  if (v4)
  {
    v5 = [self radioPlaybackIntentFromReference:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)radioPlaybackIntentFromReference:(id)reference
{
  referenceCopy = reference;
  v4 = objc_alloc_init(MPCRadioPlaybackIntentTracklistToken);
  [(MPCRadioPlaybackIntentTracklistToken *)v4 setSeedContentReference:referenceCopy];

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

+ (id)intentFromModelRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MPCPlaybackIntent);
  v5 = objc_alloc_init(MPCModelPlaybackIntentTracklistToken);
  [(MPCModelPlaybackIntentTracklistToken *)v5 setRequest:requestCopy];

  [(MPCPlaybackIntent *)v4 setTracklistToken:v5];
  [(MPCPlaybackIntent *)v4 setTracklistSource:3];

  return v4;
}

@end