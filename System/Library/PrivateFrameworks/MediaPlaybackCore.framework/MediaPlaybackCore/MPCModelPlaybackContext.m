@interface MPCModelPlaybackContext
- (BOOL)containsRestorableContent;
- (BOOL)isReusableForPlaybackContext:(id)a3;
- (BOOL)isSupported;
- (MPCModelPlaybackContext)init;
- (MPCModelPlaybackContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionComponents;
- (id)getSharedListeningTracklistWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getRemotePlaybackQueueRepresentationWithCompletion:(id)a3;
- (void)setPlaybackRequestEnvironment:(id)a3;
- (void)setRequest:(id)a3 overrideEnvironment:(BOOL)a4;
- (void)setUserIdentity:(id)a3;
- (void)updateRequestPlaybackEnvironmentAllowingOverride:(BOOL)a3;
@end

@implementation MPCModelPlaybackContext

- (void)setUserIdentity:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v8 = [MEMORY[0x1E69E4680] activeAccount];
  }

  v4 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
  v5 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v6 = [v4 isEqualToIdentity:v8 inStore:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [MPCPlaybackRequestEnvironment requestEnvironmentWithUserIdentity:v8];
    [(MPCModelPlaybackContext *)self setPlaybackRequestEnvironment:v7];
  }
}

- (void)updateRequestPlaybackEnvironmentAllowingOverride:(BOOL)a3
{
  v3 = a3;
  if ([(MPModelRequest *)self->_request conformsToProtocol:&unk_1F45B4200])
  {
    request = self->_request;
    if (v3)
    {
      v6 = [(MPModelRequest *)request playbackRequestEnvironment];
      playbackRequestEnvironment = self->_playbackRequestEnvironment;
      self->_playbackRequestEnvironment = v6;

      MEMORY[0x1EEE66BB8](v6, playbackRequestEnvironment);
    }

    else
    {
      v8 = self->_playbackRequestEnvironment;

      [(MPModelRequest *)request setPlaybackRequestEnvironment:v8];
    }
  }
}

- (void)setRequest:(id)a3 overrideEnvironment:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  request = self->_request;
  self->_request = v6;

  [(MPCModelPlaybackContext *)self updateRequestPlaybackEnvironmentAllowingOverride:v4];
}

- (void)setPlaybackRequestEnvironment:(id)a3
{
  v5 = a3;
  if (self->_playbackRequestEnvironment != v5)
  {
    objc_storeStrong(&self->_playbackRequestEnvironment, a3);
  }

  [(MPCModelPlaybackContext *)self updateRequestPlaybackEnvironmentAllowingOverride:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = MPCModelPlaybackContext;
  v4 = [(MPCModelPlaybackContext *)&v15 copyWithZone:a3];
  v5 = [(MPCModelPlaybackContext *)self playbackRequestEnvironment];
  [v4 setPlaybackRequestEnvironment:v5];

  v6 = [(MPCModelPlaybackContext *)self request];
  v7 = [v6 copy];
  [v4 setRequest:v7];

  v8 = [(MPCModelPlaybackContext *)self startItemIdentifiers];
  [v4 setStartItemIdentifiers:v8];

  v9 = [(MPCModelPlaybackContext *)self startTimeModifications];
  [v4 setStartTimeModifications:v9];

  v10 = [(MPCModelPlaybackContext *)self endTimeModifications];
  [v4 setEndTimeModifications:v10];

  v11 = [(MPCModelPlaybackContext *)self overrideStartItemID];
  [v4 setOverrideStartItemID:v11];

  v12 = [(MPCModelPlaybackContext *)self fallbackSectionRepresentation];
  [v4 setFallbackSectionRepresentation:v12];

  [v4 setSkipEncodingMediaLibraryUniqueID:{-[MPCModelPlaybackContext skipEncodingMediaLibraryUniqueID](self, "skipEncodingMediaLibraryUniqueID")}];
  [v4 setAllowsJumpToIt:{-[MPCModelPlaybackContext allowsJumpToIt](self, "allowsJumpToIt")}];
  v13 = [(MPCModelPlaybackContext *)self delegateTokenB];
  [v4 setDelegateTokenB:v13];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCModelPlaybackContext;
  [(MPCModelPlaybackContext *)&v8 encodeWithCoder:v4];
  [v4 encodeObject:self->_request forKey:@"MPCModelPlaybackContextRequest"];
  [v4 encodeObject:self->_playbackRequestEnvironment forKey:@"MPCModelPlaybackContextPlaybackRequestEnvironment"];
  [v4 encodeObject:self->_startItemIdentifiers forKey:@"MPCModelPlaybackContextStartItemIdentifiers"];
  [v4 encodeObject:self->_startTimeModifications forKey:@"MPCModelPlaybackContextStartTimeModifications"];
  [v4 encodeObject:self->_endTimeModifications forKey:@"MPCModelPlaybackContextEndTimeModifications"];
  [v4 encodeObject:self->_fallbackSectionRepresentation forKey:@"MPCModelPlaybackContextFallbackSectionRepresentation"];
  [v4 encodeBool:self->_skipEncodingMediaLibraryUniqueID forKey:@"semlUID"];
  if (!self->_skipEncodingMediaLibraryUniqueID)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      encodedMediaLibraryUniqueID = self->_encodedMediaLibraryUniqueID;
      if (encodedMediaLibraryUniqueID)
      {
        [v4 encodeObject:encodedMediaLibraryUniqueID forKey:@"MPCModelPlaybackContextMediaLibraryUniqueID"];
      }

      else
      {
        v6 = [(MPModelRequest *)self->_request mediaLibrary];
        v7 = [v6 uniqueIdentifier];
        [v4 encodeObject:v7 forKey:@"MPCModelPlaybackContextMediaLibraryUniqueID"];
      }
    }
  }
}

- (MPCModelPlaybackContext)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MPCModelPlaybackContext;
  v5 = [(MPCModelPlaybackContext *)&v33 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextRequest"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextUserIdentity"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextPlaybackRequestEnvironment"];
    v10 = v9;
    if (!v9)
    {
      v10 = [MPCPlaybackRequestEnvironment requestEnvironmentWithUserIdentity:v8];
    }

    v32 = v8;
    objc_storeStrong(&v5->_playbackRequestEnvironment, v10);
    if (!v9)
    {
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextStartItemIdentifiers"];
    startItemIdentifiers = v5->_startItemIdentifiers;
    v5->_startItemIdentifiers = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"MPCModelPlaybackContextStartTimeModifications"];
    startTimeModifications = v5->_startTimeModifications;
    v5->_startTimeModifications = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"MPCModelPlaybackContextEndTimeModifications"];
    endTimeModifications = v5->_endTimeModifications;
    v5->_endTimeModifications = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextFallbackSectionRepresentation"];
    fallbackSectionRepresentation = v5->_fallbackSectionRepresentation;
    v5->_fallbackSectionRepresentation = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelPlaybackContextMediaLibraryUniqueID"];
    encodedMediaLibraryUniqueID = v5->_encodedMediaLibraryUniqueID;
    v5->_encodedMediaLibraryUniqueID = v29;

    v5->_skipEncodingMediaLibraryUniqueID = [v4 decodeBoolForKey:@"semlUID"];
  }

  return v5;
}

- (BOOL)isReusableForPlaybackContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MPCModelPlaybackContext;
  if ([(MPCModelPlaybackContext *)&v12 isReusableForPlaybackContext:v5])
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MPCModelPlaybackContext.m" lineNumber:110 description:@"[super isReusableForPlaybackContext:] failed to check for equal types"];
    }

    request = self->_request;
    v8 = [v6 request];
    v9 = [(MPModelRequest *)request isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isSupported
{
  v32 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v4 = [v3 forceLibrarySupplementalContexts];

    if (v4)
    {
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = objc_opt_class();
        v22 = 2048;
        v23 = self;
        v6 = v21;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> isSupported: NO [user default override]", &v20, 0x16u);
      }

      LOBYTE(v7) = 0;
      goto LABEL_18;
    }

    v5 = [(MPCModelPlaybackContext *)self userIdentity];
    v9 = self->_request;
    v10 = [MEMORY[0x1E69705E8] deviceMediaLibraryWithUserIdentity:v5];
    v11 = [v10 uniqueIdentifier];

    v12 = self->_encodedMediaLibraryUniqueID;
    v13 = [(MPModelRequest *)v9 valueForKeyPath:@"_mediaLibrary.uniqueIdentifier"];
    v14 = [(MPModelRequest *)v9 mediaLibrary];
    v15 = [v14 uniqueIdentifier];

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134219266;
      v21 = self;
      v22 = 2114;
      v23 = v5;
      v24 = 2114;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v13;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[MPC:%p] isSupported | matching device libraries [] user=%{public}@ userDeviceLibraryID=%{public}@ encodedLibraryID=%{public}@ requestDecodedLibraryID=%{public}@ requestLibraryID=%{public}@", &v20, 0x3Eu);
    }

    if (v12)
    {
      v7 = [v11 isEqualToString:v12];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218240;
        v21 = self;
        v22 = 1024;
        LODWORD(v23) = v7;
        v18 = "[MPC:%p] isSupported | returning %{BOOL}u [using encoded media library]";
LABEL_16:
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, v18, &v20, 0x12u);
      }
    }

    else
    {
      v7 = [v11 isEqualToString:v15];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218240;
        v21 = self;
        v22 = 1024;
        LODWORD(v23) = v7;
        v18 = "[MPC:%p] isSupported | returning %{BOOL}u [using request media library]";
        goto LABEL_16;
      }
    }

    goto LABEL_18;
  }

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218242;
    v21 = self;
    v22 = 2114;
    v23 = objc_opt_class();
    v8 = v23;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[MPC:%p] isSupported | returning YES [non-library request] request.class=%{public}@", &v20, 0x16u);
  }

  LOBYTE(v7) = 1;
LABEL_18:

  return v7;
}

- (BOOL)containsRestorableContent
{
  v2 = objc_opt_class();

  return [v2 supportsSecureCoding];
}

- (id)descriptionComponents
{
  v12.receiver = self;
  v12.super_class = MPCModelPlaybackContext;
  v3 = [(MPCModelPlaybackContext *)&v12 descriptionComponents];
  v4 = [v3 mutableCopy];

  v5 = [(MPCModelPlaybackContext *)self playbackRequestEnvironment];
  v6 = [v5 description];
  [v4 setObject:v6 forKeyedSubscript:@"playbackRequestEnvironment"];

  if ([(MPModelRequest *)self->_request conformsToProtocol:&unk_1F45B4200])
  {
    v7 = [(MPModelRequest *)self->_request playbackRequestEnvironment];
    v8 = v7;
    if (v5 != v7)
    {
      v9 = [v7 description];
      [v4 setObject:v9 forKeyedSubscript:@"request.playbackRequestEnvironment"];
    }
  }

  [v4 setObject:self->_request forKeyedSubscript:@"request"];
  v10 = [(MPIdentifierSet *)self->_startItemIdentifiers humanDescription];
  [v4 setObject:v10 forKeyedSubscript:@"startItemIdentifiers"];

  [v4 setObject:self->_delegateTokenB forKeyedSubscript:@"delegateTokenB"];

  return v4;
}

- (MPCModelPlaybackContext)init
{
  v5.receiver = self;
  v5.super_class = MPCModelPlaybackContext;
  v2 = [(MPCModelPlaybackContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MPCModelPlaybackContext *)v2 setUserIdentity:0];
  }

  return v3;
}

- (id)getSharedListeningTracklistWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(MPCModelPlaybackContext *)self request];
  v7 = [v6 copy];

  if (([v7 conformsToProtocol:&unk_1F45B4178] & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"MPPlaybackContext+MPCSharedListening.m" lineNumber:39 description:{@"Request class (%@) must conform to MPCModelPlaybackRequest", objc_opt_class()}];
  }

  v8 = [v7 itemKind];
  v9 = [v8 modelClass];

  v10 = [v9 mqf_requiredItemPlaybackProperties];
  if (v10)
  {
    [v7 setItemProperties:v10];
    v11 = [v7 sectionKind];
    v12 = [v11 modelClass];

    v13 = [v12 mqf_requiredSectionPlaybackProperties];
    v14 = [v7 sectionProperties];
    v15 = [v13 propertySetByCombiningWithPropertySet:v14];

    v35 = v15;
    [v7 setSectionProperties:v15];
    v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:-1];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v18 = os_signpost_id_make_with_pointer(v17, self);

    v19 = [(MPCModelPlaybackContext *)self startItemIdentifiers];
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v21 = v20;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "sharedListeningTracklist:modelRequest:perform", "", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v7 legacyMediaQuery];
      v23 = v22 != 0;
    }

    else
    {
      v23 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [v19 library];

      if (v25)
      {
        v26 = [v19 copyWithSource:@"PlaybackContext-SharePlay" block:&__block_literal_global_17969];

        v19 = v26;
      }
    }

    objc_initWeak(buf, v16);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_2;
    v38[3] = &unk_1E8235BB8;
    v42[1] = v18;
    objc_copyWeak(v42, buf);
    v41 = v5;
    v38[4] = self;
    v27 = v19;
    v39 = v27;
    v43 = v23;
    v40 = v7;
    v28 = [v40 newOperationWithResponseHandler:v38];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_112;
    v36[3] = &unk_1E8239298;
    v29 = v28;
    v37 = v29;
    [v16 setCancellationHandler:v36];
    v30 = [(MPCModelPlaybackContext *)self request];
    v31 = [objc_opt_class() preferredQueue];
    [v31 addOperation:v29];

    objc_destroyWeak(v42);
    objc_destroyWeak(buf);
  }

  else
  {
    if (MSVDeviceOSIsInternalInstall())
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"MPPlaybackContext+MPCSharedListening.m" lineNumber:44 description:{@"Invalid request item class: %@ for %@", v9, v7}];
    }

    v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:3 debugDescription:{@"Invalid request item class: %@ for %@", v9, v7}];
    (*(v5 + 2))(v5, 0, 0, v24);

    v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  }

  return v16;
}

void __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [v5 results];
    *buf = 134218242;
    *&buf[4] = [v10 totalItemCount];
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_END, v9, "sharedListeningTracklist:modelRequest:perform", "items=%lld; error=%{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = [WeakRetained isCancelled];

  if (!v12)
  {
    if (v6)
    {
      v15 = *(a1 + 56);
      v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:4 underlyingError:v6 debugDescription:{@"Failed to load request: %@", *(a1 + 32)}];
      (*(v15 + 16))(v15, 0, 0, v16);

      goto LABEL_36;
    }

    v17 = [v5 results];
    v18 = [v17 totalItemCount] == 0;

    if (v18)
    {
      v38 = *(a1 + 56);
      v39 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:5 debugDescription:{@"Request did not produce any items: %@", *(a1 + 32)}];
      (*(v38 + 16))(v38, 0, 0, v39);

      goto LABEL_36;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v81 = __Block_byref_object_copy__17976;
    v82 = __Block_byref_object_dispose__17977;
    v83 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__17976;
    v74 = __Block_byref_object_dispose__17977;
    v75 = 0;
    v19 = [*(a1 + 32) playActivityFeatureName];
    v20 = MEMORY[0x1E695DF70];
    v21 = [v5 results];
    v22 = [v20 arrayWithCapacity:{objc_msgSend(v21, "totalItemCount")}];

    v23 = objc_alloc_init(MEMORY[0x1E69B1458]);
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v25 = v24;
    v26 = *(a1 + 72);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v76 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "sharedListeningTracklist:modelRequest:enumerate", "", v76, 2u);
    }

    v27 = [v5 results];
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_79;
    v59 = &unk_1E8235B90;
    v28 = v19;
    v66 = buf;
    v29 = *(a1 + 32);
    v60 = v28;
    v61 = v29;
    v30 = v23;
    v62 = v30;
    v31 = v5;
    v63 = v31;
    v64 = *(a1 + 40);
    v67 = &v70;
    v32 = v22;
    v69 = *(a1 + 80);
    v33 = *(a1 + 72);
    v65 = v32;
    v68 = v33;
    [v27 enumerateSectionsUsingBlock:&v56];

    v34 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v35 = v34;
    v36 = *(a1 + 72);
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v37 = [v30 totalItemCount];
      *v76 = 134217984;
      v77 = v37;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v35, OS_SIGNPOST_INTERVAL_END, v36, "sharedListeningTracklist:modelRequest:enumerate", "items=%lld", v76, 0xCu);
    }

    if (*(*&buf[8] + 40))
    {
      goto LABEL_16;
    }

    if ([v30 totalItemCount])
    {
      if (v71[5] || !*(a1 + 40))
      {
        if ([v32 count])
        {
          v40 = [v32 msv_map:&__block_literal_global_110];
          v41 = _MPCLogCategoryPlayback_Oversize();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            *v76 = 134218242;
            v77 = v42;
            v78 = 2114;
            v79 = v40;
            _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "[SLQF] %p getSharedListeningTracklist [dropping unsupported IDs] unsupportedIDs=%{public}@", v76, 0x16u);
          }
        }

LABEL_16:
        (*(*(a1 + 56) + 16))();
LABEL_35:

        _Block_object_dispose(&v70, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_36;
      }

      v47 = _MPCLogCategoryPlayback_Oversize();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *(a1 + 32);
        v49 = *(a1 + 40);
        *v76 = 134218242;
        v77 = v48;
        v78 = 2114;
        v79 = v49;
        _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_ERROR, "[SLQF] %p getSharedListeningTracklist failed (1/3) [invalid start item IDs] startItemIdentifiers=%{public}@", v76, 0x16u);
      }

      v50 = _MPCLogCategoryPlayback_Oversize();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = *(a1 + 32);
        v52 = *(a1 + 48);
        *v76 = 134218242;
        v77 = v51;
        v78 = 2114;
        v79 = v52;
        _os_log_impl(&dword_1C5C61000, v50, OS_LOG_TYPE_ERROR, "[SLQF] %p getSharedListeningTracklist failed (2/3) [invalid start item IDs] request=%{public}@", v76, 0x16u);
      }

      v53 = _MPCLogCategoryPlayback_Oversize();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = *(a1 + 32);
        *v76 = 134218242;
        v77 = v54;
        v78 = 2114;
        v79 = v31;
        _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_ERROR, "[SLQF] %p getSharedListeningTracklist failed (3/3) [invalid start item IDs] response=%{public}@", v76, 0x16u);
      }

      v55 = *(a1 + 56);
      v45 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:8 debugDescription:{@"Intent did not produce start item for identifiers: %@", *(a1 + 40)}];
      (*(v55 + 16))(v55, 0, 0, v45);
    }

    else
    {
      v43 = *(a1 + 56);
      v44 = MEMORY[0x1E696ABC0];
      v45 = [v31 results];
      v46 = [v44 msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:7 debugDescription:{@"Intent did not produce any store items: %@ %@", v45, *(a1 + 32), v56, v57, v58, v59, v60, v61, v62, v63, v64}];
      (*(v43 + 16))(v43, 0, 0, v46);
    }

    goto LABEL_35;
  }

  v13 = *(a1 + 56);
  v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:2 debugDescription:{@"Cancelled while performing request: %@", *(a1 + 32)}];
  (*(v13 + 16))(v13, 0, 0, v14);

LABEL_36:
}

void __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_79(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objc_opt_class();
  v8 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x1E69706F8]);
    v10 = [MEMORY[0x1E6970550] emptyIdentifierSet];
    v8 = [v9 initWithIdentifiers:v10 block:&__block_literal_global_85];
  }

  v11 = [v8 identifiers];
  v12 = [v11 preferredStoreStringIdentifierForPersonID:0];
  v13 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v8];
  if ([v12 length])
  {
    if ([v13 type] == 4)
    {
      v49 = v12;
      v50 = v11;
      v14 = [MEMORY[0x1E69E45A8] playlistContainerWithMediaIdentifier:v12 featureName:*(a1 + 32)];
    }

    else
    {
      if ([v13 type] != 2)
      {
        v42 = MEMORY[0x1E696ABC0];
        [v13 type];
        v43 = NSStringFromMPModelGenericObjectType();
        v44 = [v42 msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:6 debugDescription:{@"Intent produced unsupported section (genericObject.type=%@) %@", v43, *(a1 + 40)}];
        v45 = *(*(a1 + 80) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;

        *a4 = 1;
        goto LABEL_31;
      }

      v49 = v12;
      v50 = v11;
      v14 = [MEMORY[0x1E69E45A8] albumContainerWithMediaIdentifier:v12 featureName:*(a1 + 32)];
    }
  }

  else
  {
    v49 = v12;
    v50 = v11;
    v14 = [MEMORY[0x1E69E45A8] groupWithFeatureName:*(a1 + 32)];
  }

  v48 = v14;
  [*(a1 + 48) appendSection:v14];
  v15 = MEMORY[0x1E695DF70];
  v16 = [*(a1 + 56) results];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "numberOfItemsInSection:", a3)}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_3;
  aBlock[3] = &unk_1E8235B18;
  v18 = v17;
  v56 = v18;
  v19 = *(a1 + 64);
  v60 = *(a1 + 88);
  v61 = a3;
  v20 = *(a1 + 40);
  v57 = v19;
  v58 = v20;
  v59 = *(a1 + 72);
  v21 = _Block_copy(aBlock);
  if ([v13 type] == 4)
  {
    v22 = [v13 playlist];
    v23 = [v22 type] == 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 104);
  v25 = [*(a1 + 56) results];
  if ((v24 & 1) != 0 || v23)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_94;
    v53[3] = &unk_1E8235B40;
    v26 = &v54;
    v54 = v21;
    [v25 enumerateItemsUsingBlock:v53];
  }

  else
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_2_96;
    v51[3] = &unk_1E8235B68;
    v26 = &v52;
    v52 = v21;
    [v25 enumerateItemIdentifiersInSectionAtIndex:a3 usingBlock:v51];
  }

  if ([*(a1 + 40) shuffleType] == 1)
  {
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v28 = v27;
    v29 = *(a1 + 96);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 134217984;
      v63 = a3;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "sharedListeningTracklist:modelRequest:scramble", "section=%ld", buf, 0xCu);
    }

    v47 = objc_alloc_init(MEMORY[0x1E69B13A0]);
    v30 = [objc_alloc(MEMORY[0x1E69B1488]) initWithRandomSource:v47 lowestValue:0 highestValue:0x7FFFFFFFLL];
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v32 = *(*(*(a1 + 88) + 8) + 40);
    if (v32 && [v32 section] == a3)
    {
      v33 = [v18 objectAtIndexedSubscript:{objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "msv_item")}];
      [v18 removeObjectAtIndex:{objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "msv_item")}];
      [v31 addObject:v33];
      v34 = [MEMORY[0x1E696AC88] msv_indexPathForItem:0 inSection:a3];
      v35 = *(*(a1 + 88) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;
    }

    while ([v18 count])
    {
      v37 = [v30 nextIntWithUpperBound:{objc_msgSend(v18, "count")}];
      v38 = [v18 objectAtIndexedSubscript:v37];
      [v31 addObject:v38];

      [v18 removeObjectAtIndex:v37];
    }

    v39 = os_log_create("com.apple.amp.mediaplaybackcore", "SharedSession");
    v40 = v39;
    v41 = *(a1 + 96);
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v40, OS_SIGNPOST_INTERVAL_END, v41, "sharedListeningTracklist:modelRequest:scramble", "", buf, 2u);
    }
  }

  else
  {
    v31 = v18;
  }

  [*(a1 + 48) appendItems:v31];

  v12 = v49;
  v11 = v50;
LABEL_31:
}

void __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preferredStoreStringIdentifierForPersonID:0];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E69E45B0] itemWithMediaIdentifier:v4];
    [*(a1 + 32) addObject:v5];
    if ([*(a1 + 40) intersectsSet:v3])
    {
      v6 = [MEMORY[0x1E696AC88] msv_indexPathForItem:objc_msgSend(*(a1 + 32) inSection:{"count") - 1, *(a1 + 72)}];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = [*(a1 + 40) universalStore];
      v10 = [v9 subscriptionAdamID];
      v11 = [v3 universalStore];
      v12 = [v11 subscriptionAdamID];

      if (v10 == v12)
      {
        v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v16 = 134218498;
          v17 = v14;
          v18 = 2114;
          v19 = v15;
          v20 = 2114;
          v21 = v3;
          _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "[SLQF] %p getSharedListeningTracklist unexpected failure [intersectsSet returned NO] startItemIdentifiers=%{public}@ itemIdentifierSet=%{public}@", &v16, 0x20u);
        }
      }
    }
  }

  else
  {
    [*(a1 + 56) addObject:v3];
  }
}

void __89__MPCModelPlaybackContext_MPCSharedListening__getSharedListeningTracklistWithCompletion___block_invoke_94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifiers];
  (*(v2 + 16))(v2, v3);
}

- (void)getRemotePlaybackQueueRepresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPCModelPlaybackContext *)self request];
  v6 = [v5 copy];

  if (v6)
  {
    v37 = v4;
    v7 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
    if ([v6 conformsToProtocol:&unk_1F45B4200])
    {
      v8 = v6;
      v9 = [v8 playbackRequestEnvironment];

      if (!v9)
      {
        v10 = [(MPCModelPlaybackContext *)self playbackRequestEnvironment];
        [v8 setPlaybackRequestEnvironment:v10];
      }

      v11 = [v8 playbackRequestEnvironment];
      v12 = [v11 userIdentity];

      v7 = v12;
    }

    v13 = objc_alloc_init(_MPCProtoTracklist);
    v14 = [(MPCModelPlaybackContext *)self shuffleType];
    if (v14 == 1000)
    {
      v15 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v14 = [v15 musicShuffleType];
    }

    v38 = v7;
    if (v13)
    {
      *&v13->_has |= 1u;
      v13->_shuffleMode = v14 != 0;
    }

    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = __Block_byref_object_copy__19399;
    v69[4] = __Block_byref_object_dispose__19400;
    v70 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 1;
    v16 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCModelPlaybackContext.MPCPlaybackQueue.serialQueue", 0);
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    [v6 setLabel:@"com.apple.MediaPlaybackCore.MPCModelPlaybackIntentDataSource.remotePlaybackQueueResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setDisableImplicitSectioning:1];
    }

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_63;
    v60[3] = &unk_1E8236070;
    v18 = v17;
    v61 = v18;
    v19 = v16;
    v62 = v19;
    v63 = self;
    v20 = v13;
    v64 = v20;
    v65 = v69;
    v66 = v67;
    [v6 performWithResponseHandler:v60];
    v21 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v59 = 0;
    v22 = [v21 getPropertiesForUserIdentity:v38 error:&v59];
    v23 = v59;
    v36 = v22;
    v24 = [v22 DSID];
    v25 = [v24 unsignedLongLongValue];

    if (v25)
    {
      v35 = v23;
      v26 = MEMORY[0x1E69E4680];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v25];
      v28 = [v26 specificAccountWithDSID:v27];
      v29 = [v28 identityAllowingDelegation:1];

      dispatch_group_enter(v18);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_80;
      v49[3] = &unk_1E82360E8;
      v50 = v21;
      v30 = v29;
      v51 = v30;
      v58 = v25;
      v52 = v18;
      v56 = v69;
      v57 = v67;
      v53 = v19;
      v54 = self;
      v55 = v20;
      [v50 getDelegationUUIDsForUserIdentity:v30 completionHandler:v49];

      v23 = v35;
    }

    else
    {
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_4_90;
      v45[3] = &unk_1E8236110;
      v47 = v69;
      v46 = v23;
      v48 = v67;
      dispatch_group_async(v18, v19, v45);
      v30 = v46;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_5;
    v39[3] = &unk_1E8236138;
    v40 = v20;
    v41 = self;
    v42 = v37;
    v43 = v67;
    v44 = v69;
    v33 = v37;
    v34 = v20;
    dispatch_group_notify(v18, v19, v39);

    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v69, 8);

    v32 = v38;
  }

  else
  {
    v31 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke;
    block[3] = &unk_1E8239528;
    v72 = v4;
    v32 = v4;
    dispatch_async(v31, block);
  }
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:6 debugDescription:@"Tracklist token missing model request (nil)."];
  (*(v1 + 16))(v1, 0, v2);
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2;
  v13[3] = &unk_1E8236048;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v14 = v6;
  v15 = v9;
  v16 = v5;
  v17 = v10;
  v18 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  dispatch_group_async(v7, v8, v13);
  dispatch_group_leave(*(a1 + 32));
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_80(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 firstObject];
  if (![v3 count])
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];

    v7 = *(a1 + 32);
    v34 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v7 addDelegationUUIDs:v8 forUserIdentity:*(a1 + 40) completionHandler:0];

    v4 = v6;
  }

  v9 = +[MPCPlaybackAccountManager sharedManager];
  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = &v35 + 1;
    quot = *(a1 + 96);
    do
    {
      v13 = lldiv(quot, 10);
      quot = v13.quot;
      if (v13.rem >= 0)
      {
        LOBYTE(v14) = v13.rem;
      }

      else
      {
        v14 = -v13.rem;
      }

      *(v11 - 2) = v14 + 48;
      v15 = (v11 - 2);
      --v11;
    }

    while (v13.quot);
    if (v10 < 0)
    {
      *(v11 - 2) = 45;
      v15 = (v11 - 2);
    }

    v16 = CFStringCreateWithBytes(0, v15, &v35 - v15, 0x8000100u, 0);
  }

  else
  {
    v16 = @"0";
  }

  v17 = [v9 accountForDSID:v16];

  v18 = [v17 hasCatalogPlaybackCapability];
  v19 = [v17 hasDelegationCapability];
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2_84;
  v24[3] = &unk_1E82360C0;
  v31 = *(a1 + 96);
  v32 = v18;
  v33 = v19;
  v25 = v4;
  v26 = v17;
  v30 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v20;
  v29 = *(a1 + 72);
  v22 = v17;
  v23 = v4;
  dispatch_group_async(v28, v21, v24);
  dispatch_group_leave(*(a1 + 48));
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = objc_alloc(MEMORY[0x1E6970510]);
    v3 = [*(a1 + 32) data];
    if (v3)
    {
      v12 = [v2 initWithIdentifier:@"com.apple.music.playbackqueue.tracklist" data:v3 options:MEMORY[0x1E695E0F8]];
    }

    else
    {
      v7 = [MEMORY[0x1E695DEF0] data];
      v12 = [v2 initWithIdentifier:@"com.apple.music.playbackqueue.tracklist" data:v7 options:MEMORY[0x1E695E0F8]];
    }

    [v12 setRequestingImmediatePlayback:1];
    v8 = [*(a1 + 40) playActivityRecommendationData];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    }

    else
    {
      v9 = 0;
    }

    [v12 setSiriRecommendationIdentifier:v9];
    (*(*(a1 + 48) + 16))();

    v10 = v12;
    goto LABEL_14;
  }

  v4 = *(a1 + 48);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:0 userInfo:0];
    (*(v4 + 16))(v4, 0, v11);
    v10 = v11;
LABEL_14:

    return;
  }

  v5 = *(v4 + 16);
  v6 = *(a1 + 48);

  v5(v6, 0);
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2_84(uint64_t a1)
{
  v2 = +[_MPCProtoDelegateInfo currentDeviceDelegateInfo];
  v3 = v2;
  if (!v2)
  {
    [(_MPCProtoDelegateInfo *)0 setUuid:?];
    if ((*(a1 + 96) & 1) == 0 || (*(a1 + 97) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  *(v2 + 124) |= 2u;
  *(v2 + 40) = 1;
  v4 = *(a1 + 88);
  *(v2 + 124) |= 1u;
  *(v2 + 32) = v4;
  [(_MPCProtoDelegateInfo *)v2 setUuid:?];
  if (*(a1 + 96) != 1)
  {
    PBRepeatedInt32Add();
    goto LABEL_16;
  }

  PBRepeatedInt32Add();
  if (*(a1 + 97))
  {
    PBRepeatedInt32Add();
LABEL_5:
    v5 = *(a1 + 40);
    v19 = 0;
    v6 = [v5 delegateTokenAWithError:&v19];
    v7 = v19;
    v8 = v19;
    if (v6)
    {
      if (v3)
      {
        PBRepeatedInt32Add();
      }

      [(_MPCProtoDelegateInfo *)v3 setTokenA:v6];
    }

    else
    {
      v9 = *(*(a1 + 72) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, v7);
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    v12 = [*(a1 + 48) delegateTokenB];
    if (v12)
    {
      v13 = [[_MPCProtoDelegateInfoTokenB alloc] initWithData:v12];
      dispatch_group_enter(*(a1 + 56));
      v14 = *(a1 + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3_87;
      v15[3] = &unk_1E8236098;
      v16 = v3;
      v18 = *(a1 + 72);
      v17 = *(a1 + 56);
      [v14 getDelegateTokenEWithTokenB:v13 completion:v15];
    }
  }

LABEL_16:
  [(_MPCProtoTracklist *)*(a1 + 64) addAccountInfo:v3];
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3_87(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    [(_MPCProtoDelegateInfo *)*(a1 + 32) setTokenE:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 64) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  else
  {
    v6 = [*(a1 + 40) startItemIdentifiers];
    if (*(a1 + 48))
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__19399;
      v29 = __Block_byref_object_dispose__19400;
      v30 = 0;
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [*(a1 + 48) results];
      v9 = [*(a1 + 40) playActivityFeatureName];
      v10 = [*(a1 + 40) playActivityQueueGroupingID];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3;
      v18[3] = &unk_1E8236020;
      v11 = v9;
      v19 = v11;
      v12 = v10;
      v20 = v12;
      v13 = v8;
      v21 = v13;
      v24 = &v25;
      v22 = v6;
      v14 = v7;
      v23 = v14;
      [v13 enumerateSectionIdentifiersUsingBlock:v18];
      v15 = *(a1 + 56);
      if (v15)
      {
        objc_storeStrong((v15 + 16), v7);
      }

      v16 = v26[5];
      if (v16)
      {
        v17 = *(a1 + 56);
        if (v17)
        {
          objc_storeStrong((v17 + 32), v16);
        }
      }

      _Block_object_dispose(&v25, 8);
    }
  }
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(_MPCProtoContainer);
  v7 = objc_alloc_init(_MPCProtoContainerIdentifierSet);
  v8 = [v5 modelKind];
  v9 = [v8 identityKind];
  v10 = [MEMORY[0x1E6970638] identityKind];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_8:
    if (v6)
    {
      *&v6->_has |= 1u;
      v6->_containerType = 1;
    }

    v18 = [v5 universalStore];
    v19 = [v18 adamID];
    if (v19)
    {
      if (v7)
      {
        *&v7->_has |= 4u;
        v7->_storeAdamID = v19;
      }
    }

    else
    {
      v20 = [v5 universalStore];
      v21 = [v20 subscriptionAdamID];
      if (v7)
      {
        *&v7->_has |= 4u;
        v7->_storeAdamID = v21;
      }
    }

    v22 = [v5 personalizedStore];
    v23 = [v22 cloudAlbumID];
    if (v7)
    {
      objc_storeStrong(&v7->_cloudCollectionID, v23);
    }

    goto LABEL_30;
  }

  v13 = [v5 modelKind];
  v14 = [v13 identityKind];
  v15 = [MEMORY[0x1E6970730] identityKind];
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_20;
  }

  v17 = [v14 isEqual:v15];

  if (v17)
  {
LABEL_20:
    if (v6)
    {
      *&v6->_has |= 1u;
      v6->_containerType = 5;
    }

    v24 = [v5 personalizedStore];
    v25 = [v24 cloudID];
    if (v7)
    {
      *&v7->_has |= 1u;
      v7->_cloudID = v25;
    }

    v26 = [v5 universalStore];
    v27 = [v26 globalPlaylistID];
    if (v7)
    {
      objc_storeStrong(&v7->_storePlaylistGlobalID, v27);
    }

    v28 = [v5 universalStore];
    v29 = [v28 universalCloudLibraryID];
    if (v7)
    {
      objc_storeStrong(&v7->_cloudUniversalLibraryID, v29);
    }

    v22 = [v5 versionHash];
    if (v7)
    {
      objc_storeStrong(&v7->_storePlaylistVersionHash, v22);
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  *&v6->_has |= 1u;
  v6->_containerType = 0;
LABEL_31:
  v30 = *(a1 + 32);
  if (v30 && v6)
  {
    objc_storeStrong(&v6->_playActivityFeatureName, v30);
  }

LABEL_34:
  v31 = *(a1 + 40);
  if (v31)
  {
    if (v6)
    {
      objc_storeStrong(&v6->_playActivityQueueGroupingID, v31);
      goto LABEL_38;
    }

LABEL_43:
    v32 = 0;
    goto LABEL_40;
  }

  if (!v6)
  {
    goto LABEL_43;
  }

LABEL_38:
  objc_storeStrong(&v6->_identifierSet, v7);
  v32 = v6->_identifierSet;
  if (v32)
  {
    *&v32->_has |= 2u;
    v32->_delegateInfoID = 1;
  }

LABEL_40:

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 48), "totalItemCount")}];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_4;
  v40 = &unk_1E8235FF8;
  v43 = *(a1 + 72);
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  v44 = a2;
  v41 = v35;
  v42 = v33;
  v36 = v33;
  [v34 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:&v37];
  if (v6)
  {
    objc_storeStrong(&v6->_items, v33);
  }

  [*(a1 + 64) addObject:{v6, v37, v38, v39, v40}];
}

void __96__MPCModelPlaybackContext_MPCPlaybackQueue__getRemotePlaybackQueueRepresentationWithCompletion___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!*(*(*(a1 + 6) + 8) + 40))
  {
    if ([*(a1 + 4) mpc_intersectsSet:v5 ignoringModelKind:1])
    {
      v6 = objc_alloc_init(_MPCProtoTracklistIndexPath);
      v7 = *(*(a1 + 6) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(*(*(a1 + 6) + 8) + 40);
      if (v9)
      {
        v10 = *(a1 + 7);
        *(v9 + 24) |= 1u;
        *(v9 + 8) = v10;
        v11 = *(*(*(a1 + 6) + 8) + 40);
        if (v11)
        {
          *(v11 + 24) |= 2u;
          *(v11 + 16) = a2;
        }
      }
    }
  }

  v12 = objc_alloc_init(_MPCProtoItem);
  v13 = objc_alloc_init(_MPCProtoItemIdentifierSet);
  v14 = [v5 personalizedStore];
  v15 = [v14 cloudID];
  v16 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
  if (v13)
  {
    *&v13->_has |= 1u;
    v13->_cloudID = v15;
  }

  v17 = [v5 universalStore];
  v18 = [v17 adamID];
  if (v13)
  {
    *&v13->_has |= 8u;
    v13->_storeAdamID = v18;
  }

  v19 = [v5 universalStore];
  v20 = [v19 subscriptionAdamID];
  if (v13)
  {
    *&v13->_has |= 0x10u;
    v13->_storeSubscriptionAdamID = v20;
  }

  v21 = [v5 universalStore];
  v22 = [v21 universalCloudLibraryID];
  if (v13)
  {
    objc_storeStrong(&v13->_cloudUniversalLibraryID, v22);
  }

  v23 = [v5 universalStore];
  v24 = [v23 purchasedAdamID];
  if (v13)
  {
    *&v13->_has |= 4u;
    v13->_purchaseHistoryID = v24;
  }

  v25 = [v5 modelKind];
  v26 = [v25 identityKind];
  v27 = [MEMORY[0x1E6970778] identityKind];
  v28 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
  if (v26 == v27 || ([v26 isEqual:v27] & 1) != 0)
  {
    goto LABEL_27;
  }

  v54 = a1;
  v29 = [v5 modelKind];
  v30 = [v29 identityKind];
  v31 = [MEMORY[0x1E6970728] identityKind];
  v32 = v31;
  if (v30 == v31)
  {

    a1 = v54;
    v16 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
    v28 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
LABEL_27:

    goto LABEL_28;
  }

  v33 = [v30 isEqual:v31];

  a1 = v54;
  v16 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
  v28 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
  if (v33)
  {
LABEL_28:
    if (v12)
    {
      *&v12->_has |= 1u;
      v12->_mediaType = 1;
      v44 = [v5 shouldExcludeFromShuffle];
      *&v12->_has |= 2u;
      v12->_excludeFromShuffle = v44;
      goto LABEL_30;
    }

    [v5 shouldExcludeFromShuffle];
    goto LABEL_49;
  }

  v34 = [v5 modelKind];
  v35 = [v34 identityKind];
  v36 = [MEMORY[0x1E69707B0] identityKind];
  v37 = v36;
  if (v35 == v36)
  {

LABEL_42:
    if (v12)
    {
      *&v12->_has |= 1u;
      v53 = 6;
LABEL_47:
      v12->_mediaType = v53;
      goto LABEL_30;
    }

LABEL_49:
    v45 = 0;
    goto LABEL_32;
  }

  v38 = [v35 isEqual:v36];

  if (v38)
  {
    goto LABEL_42;
  }

  v39 = [v5 modelKind];
  v40 = [v39 identityKind];
  v41 = [MEMORY[0x1E69706F0] identityKind];
  v42 = v41;
  if (v40 == v41)
  {

LABEL_45:
    if (v12)
    {
      *&v12->_has |= 1u;
      v53 = 5;
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  v43 = [v40 isEqual:v41];

  if (v43)
  {
    goto LABEL_45;
  }

  if (!v12)
  {
    goto LABEL_49;
  }

LABEL_30:
  objc_storeStrong((&v12->super.super.isa + v28[392]), v13);
  v45 = *(&v12->super.super.isa + v28[392]);
  if (v45)
  {
    *(v45 + v16[394]) |= 2u;
    v45[2] = 1;
  }

LABEL_32:

  v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = [v5 library];
    v48 = [v47 containedPersistentID];
    v49 = v48;
    if (!v48)
    {
      v54 = [v5 library];
      v49 = [v54 persistentID];
    }

    if (v12)
    {
      v50 = *(&v12->super.super.isa + v28[392]);
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;
    v52 = [v51 dictionaryRepresentation];
    *buf = 134218242;
    v56 = v49;
    v57 = 2114;
    v58 = v52;
    _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEBUG, "XDLib: => %lld => %{public}@", buf, 0x16u);

    if (!v48)
    {
    }
  }

  [*(a1 + 5) addObject:v12];
}

@end