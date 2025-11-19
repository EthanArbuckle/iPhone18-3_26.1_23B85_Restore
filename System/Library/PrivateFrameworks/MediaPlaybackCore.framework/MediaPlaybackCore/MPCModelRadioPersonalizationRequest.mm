@interface MPCModelRadioPersonalizationRequest
- (MPCModelRadioPersonalizationRequest)init;
- (MPCModelRadioPersonalizationRequest)initWithRadioStationTracks:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPCModelRadioPersonalizationRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MPCModelRadioPersonalizationRequest;
  v5 = [(MPCModelRadioPersonalizationRequest *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(MPSectionedCollection *)self->_radioStationTracks copyWithZone:a3];
    v7 = v5[8];
    v5[8] = v6;
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if ([(MPCModelRadioPersonalizationRequest *)self analyticsSignpostsEnabled])
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ModelRadioPersonalizationRequest", "", buf, 2u);
    }
  }

  v9 = [(MPCModelRadioPersonalizationRequest *)self copy];
  v10 = objc_alloc(MEMORY[0x1E69704B8]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke;
  v14[3] = &unk_1E8235460;
  v14[4] = v9;
  v14[5] = self;
  v15 = v4;
  v16 = v6;
  v11 = v4;
  v12 = [v10 initWithStartHandler:v14];

  return v12;
}

void __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemKind];
  v5 = [v4 modelClass];

  v6 = [*(a1 + 32) itemProperties];
  if (v5)
  {
    v7 = [v5 requiredStoreLibraryPersonalizationProperties];
    v8 = [v6 propertySetByCombiningWithPropertySet:v7];

    v6 = v8;
  }

  v9 = [[MPCModelRadioStationTrackGenericObjectBuilder alloc] initWithRequestedProperties:v6];
  v10 = MEMORY[0x1E696AB50];
  v11 = *(*(a1 + 32) + 64);
  v12 = [v10 setWithCapacity:{objc_msgSend(v11, "totalItemCount")}];
  v13 = objc_alloc_init(MEMORY[0x1E6970818]);
  v14 = objc_alloc_init(MEMORY[0x1E6970818]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_2;
  v26[3] = &unk_1E8235410;
  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v11;
  v27 = v12;
  v28 = v9;
  v15 = v3;
  v29 = v15;
  v16 = v12;
  [v11 enumerateSectionsUsingBlock:v26];
  v17 = [objc_alloc(MEMORY[0x1E69709E0]) initWithUnpersonalizedRequest:*(a1 + 32) unpersonalizedContentDescriptors:v13];
  [v17 setRepresentedObjects:v14];
  [v17 setMatchAlbumArtistsOnNameAndStoreID:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_6;
  v21[3] = &unk_1E8235438;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v24 = v18;
  v25 = v19;
  v22 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v23 = v15;
  v20 = v15;
  [v17 performWithResponseHandler:v21];
}

void __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) appendSection:v5];
  [*(a1 + 40) appendSection:v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_3;
  v11[3] = &unk_1E82353E8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v12 = v7;
  v13 = v8;
  v14 = v5;
  v15 = v9;
  v16 = *(a1 + 32);
  v10 = v5;
  [v6 enumerateItemsInSectionAtIndex:a3 usingBlock:v11];
}

void __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[MPCModelRadioPersonalizationResponse alloc] initWithRequest:*(a1 + 40) personalizationResponse:v5];
    (*(*(a1 + 56) + 16))();
    if ([*(a1 + 32) analyticsSignpostsEnabled])
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v9 = v8;
      v10 = *(a1 + 64);
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        LOWORD(v13) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_END, v10, "ModelRadioPersonalizationRequest", " enableTelemetry=YES ", &v13, 2u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
  if ([*(a1 + 32) analyticsSignpostsEnabled])
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v7 = v11;
    v12 = *(a1 + 64);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = 138543362;
      v14 = v6;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, &v7->super.super, OS_SIGNPOST_INTERVAL_END, v12, "ModelRadioPersonalizationRequest", "error=%{public}@", &v13, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
  [*(a1 + 48) finishWithError:v6];
}

void __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeAdamID];
  v5 = objc_alloc(MEMORY[0x1E6970550]);
  v6 = [MEMORY[0x1E6970778] identityKind];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_4;
  v15[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
  v15[4] = v4;
  v7 = [v5 initWithSource:@"RadioPersonalization" modelKind:v6 block:v15];

  v8 = MPContainerUniqueIDPrefix();
  v9 = MEMORY[0x1C6954980](v8, [*(a1 + 32) countForObject:v8]);
  [*(a1 + 32) addObject:v8];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) containsVideo];
  v12 = [*(a1 + 56) userIdentity];
  v13 = [v10 genericObjectForRadioStationTrack:v3 radioStationContainsVideo:v11 containerUniqueID:v9 userIdentity:v12];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v13 personalizationStyle:1];
    [*(a1 + 64) appendItem:v14];
    [*(a1 + 72) appendItem:v3];
  }
}

uint64_t __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__MPCModelRadioPersonalizationRequest_newOperationWithResponseHandler___block_invoke_5;
  v3[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v3[4] = *(a1 + 32);
  return [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

- (MPCModelRadioPersonalizationRequest)initWithRadioStationTracks:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MPCModelRadioPersonalizationRequest;
  v5 = [(MPCModelRadioPersonalizationRequest *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    radioStationTracks = v5->_radioStationTracks;
    v5->_radioStationTracks = v6;

    v8 = [MEMORY[0x1E6970770] kindWithVariants:3];
    v9 = MEMORY[0x1E6970670];
    v15 = *MEMORY[0x1E6970158];
    v16[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 kindWithRelationshipKinds:v10];
    [(MPCModelRadioPersonalizationRequest *)v5 setItemKind:v11];

    v12 = [MEMORY[0x1E6970758] identityKind];
    [(MPCModelRadioPersonalizationRequest *)v5 setSectionKind:v12];
  }

  return v5;
}

- (MPCModelRadioPersonalizationRequest)init
{
  v3 = objc_alloc_init(MEMORY[0x1E6970938]);
  v4 = [(MPCModelRadioPersonalizationRequest *)self initWithRadioStationTracks:v3];

  return v4;
}

@end