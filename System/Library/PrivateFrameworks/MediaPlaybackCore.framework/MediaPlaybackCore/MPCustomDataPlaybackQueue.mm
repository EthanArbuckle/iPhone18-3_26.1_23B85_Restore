@interface MPCustomDataPlaybackQueue
@end

@implementation MPCustomDataPlaybackQueue

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = [v7 userIdentity];
    v10 = [v9 accountDSID];

    v11 = [v7 delegationProperties];
    v12 = [v11 storeAccountID];

    if (v12)
    {
      v13 = &v58 + 1;
      quot = v12;
      do
      {
        v15 = lldiv(quot, 10);
        quot = v15.quot;
        if (v15.rem >= 0)
        {
          LOBYTE(v16) = v15.rem;
        }

        else
        {
          v16 = -v15.rem;
        }

        *(v13 - 2) = v16 + 48;
        v17 = (v13 - 2);
        --v13;
      }

      while (v15.quot);
      if (v12 < 0)
      {
        *(v13 - 2) = 45;
        v17 = (v13 - 2);
      }

      v18 = CFStringCreateWithBytes(0, v17, &v58 - v17, 0x8000100u, 0);

      v10 = v18;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[2];
    }

    v20 = v19;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_2;
    v51[3] = &unk_1E8236188;
    v52 = *(a1 + 32);
    v21 = v10;
    v53 = v21;
    v54 = *(a1 + 40);
    v56 = *(a1 + 72);
    v57 = *(a1 + 88);
    v55 = *(a1 + 48);
    [v20 enumerateObjectsUsingBlock:v51];

    v22 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
    v23 = [*(a1 + 40) lazyMapWithSections:&__block_literal_global_19699 items:&__block_literal_global_30_19700];
    v24 = [v23 mutableCopy];
    v25 = [v24 copy];
    [(MPCModelStorePlaybackItemsRequest *)v22 setSectionedModelObjects:v25];

    v26 = objc_alloc_init(MPCModelPlaybackContext);
    v27 = *(a1 + 56);
    v28 = v26;
    v29 = [v27 featureName];

    if (v29)
    {
      v30 = [v27 featureName];
      [(MPCModelPlaybackContext *)v28 setPlayActivityFeatureName:v30];
    }

    v31 = [v27 queueGroupingID];

    if (v31)
    {
      v32 = [v27 queueGroupingID];
      [(MPCModelPlaybackContext *)v28 setPlayActivityQueueGroupingID:v32];
    }

    v33 = [v27 siriRecommendationIdentifier];
    v34 = [v33 dataUsingEncoding:4];

    if (v34)
    {
      v35 = [v27 siriRecommendationIdentifier];
      v36 = [v35 dataUsingEncoding:4];
      [(MPCModelPlaybackContext *)v28 setPlayActivityRecommendationData:v36];
    }

    v37 = [v27 siriAssetInfo];

    if (v37)
    {
      v38 = [v27 siriAssetInfo];
      [(MPCModelPlaybackContext *)v28 setSiriAssetInfo:v38];
    }

    v39 = [v27 siriReferenceIdentifier];

    if (v39)
    {
      v40 = [v27 siriReferenceIdentifier];
      [(MPCModelPlaybackContext *)v28 setSiriReferenceIdentifier:v40];
    }

    v41 = [v27 siriWHAMetricsInfo];

    if (v41)
    {
      v42 = [v27 siriWHAMetricsInfo];
      [(MPCModelPlaybackContext *)v28 setSiriWHAMetricsInfo:v42];
    }

    v43 = [v27 privateListeningOverride];

    if (v43)
    {
      v44 = [v27 privateListeningOverride];
      [(MPCModelPlaybackContext *)v28 setPrivateListeningOverride:v44];
    }

    v45 = [v27 userIdentity];

    if (v45)
    {
      v46 = [v27 userIdentity];
      [(MPCModelPlaybackContext *)v28 setUserIdentity:v46];
    }

    if ([v27 isRequestingImmediatePlayback])
    {
      v47 = 20;
    }

    else
    {
      v47 = 0;
    }

    [(MPCModelPlaybackContext *)v28 setActionAfterQueueLoad:v47];

    [(MPCModelPlaybackContext *)v28 setPlaybackRequestEnvironment:v7];
    if (v8)
    {
      [(MPCModelPlaybackContext *)v28 setPrivateListeningOverride:v8];
    }

    [(MPCModelPlaybackContext *)v28 setRequest:v22];
    [(MPCModelPlaybackContext *)v28 setStartItemIdentifiers:*(*(*(a1 + 88) + 8) + 40)];
    v48 = *(a1 + 32);
    if (v48 && (*(v48 + 40) & 1) != 0 && *(v48 + 24) == 1)
    {
      [(MPCModelPlaybackContext *)v28 setShuffleType:1];
    }

    v49 = [*(a1 + 56) mediaRemoteOptions];
    v50 = [v49 objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];

    if (v50)
    {
      -[MPCModelPlaybackContext setQueueEndAction:](v28, "setQueueEndAction:", [v50 integerValue]);
    }

    [(MPCModelPlaybackContext *)v28 setPlayActivityFeatureName:*(*(*(a1 + 72) + 8) + 40)];
    [(MPCModelPlaybackContext *)v28 setPlayActivityQueueGroupingID:*(*(*(a1 + 80) + 8) + 40)];
    (*(*(a1 + 64) + 16))();
  }
}

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = objc_alloc_init(MPCModelRadioPlaybackContext);
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 featureName];

    if (v12)
    {
      v13 = [v10 featureName];
      [(MPCModelRadioPlaybackContext *)v11 setPlayActivityFeatureName:v13];
    }

    v14 = [v10 queueGroupingID];

    if (v14)
    {
      v15 = [v10 queueGroupingID];
      [(MPCModelRadioPlaybackContext *)v11 setPlayActivityQueueGroupingID:v15];
    }

    v16 = [v10 siriRecommendationIdentifier];
    v17 = [v16 dataUsingEncoding:4];

    if (v17)
    {
      v18 = [v10 siriRecommendationIdentifier];
      v19 = [v18 dataUsingEncoding:4];
      [(MPCModelRadioPlaybackContext *)v11 setPlayActivityRecommendationData:v19];
    }

    v20 = [v10 siriAssetInfo];

    if (v20)
    {
      v21 = [v10 siriAssetInfo];
      [(MPCModelRadioPlaybackContext *)v11 setSiriAssetInfo:v21];
    }

    v22 = [v10 siriReferenceIdentifier];

    if (v22)
    {
      v23 = [v10 siriReferenceIdentifier];
      [(MPCModelRadioPlaybackContext *)v11 setSiriReferenceIdentifier:v23];
    }

    v24 = [v10 siriWHAMetricsInfo];

    if (v24)
    {
      v25 = [v10 siriWHAMetricsInfo];
      [(MPCModelRadioPlaybackContext *)v11 setSiriWHAMetricsInfo:v25];
    }

    v26 = [v10 privateListeningOverride];

    if (v26)
    {
      v27 = [v10 privateListeningOverride];
      [(MPCModelRadioPlaybackContext *)v11 setPrivateListeningOverride:v27];
    }

    v28 = [v10 userIdentity];

    if (v28)
    {
      v29 = [v10 userIdentity];
      [(MPCModelRadioPlaybackContext *)v11 setUserIdentity:v29];
    }

    if ([v10 isRequestingImmediatePlayback])
    {
      v30 = 20;
    }

    else
    {
      v30 = 0;
    }

    [(MPCModelRadioPlaybackContext *)v11 setActionAfterQueueLoad:v30];

    [(MPCModelRadioPlaybackContext *)v11 setPlaybackRequestEnvironment:v7];
    if (v8)
    {
      [(MPCModelRadioPlaybackContext *)v11 setPrivateListeningOverride:v8];
    }

    v31 = *(a1 + 40);
    if (v31)
    {
      v32 = v31[3];
      if (!v32 || (v33 = v32, [(MPCModelRadioPlaybackContext *)v11 setPlayActivityFeatureName:v33], v33, (v31 = *(a1 + 40)) != 0))
      {
        v34 = v31[4];
        if (!v34 || (v35 = v34, [(MPCModelRadioPlaybackContext *)v11 setPlayActivityQueueGroupingID:v35], v35, (v31 = *(a1 + 40)) != 0))
        {
          if (!v31[5] || (v36 = objc_alloc(MEMORY[0x1E6970750]), v37 = objc_alloc(MEMORY[0x1E6970550]), [MEMORY[0x1E6970758] identityKind], v38 = objc_claimAutoreleasedReturnValue(), v53[0] = MEMORY[0x1E69E9820], v53[1] = 3221225472, v53[2] = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_7, v53[3] = &unk_1E82389D8, v54 = *(a1 + 40), v39 = objc_msgSend(v37, "initWithSource:modelKind:block:", @"RSQ-Proto", v38, v53), v40 = objc_msgSend(v36, "initWithIdentifiers:block:", v39, &__block_literal_global_48), -[MPCModelRadioPlaybackContext setRadioStation:](v11, "setRadioStation:", v40), v40, v39, v38, v54, (v31 = *(a1 + 40)) != 0))
          {
            v41 = v31[6];
            if (!v41)
            {
              goto LABEL_35;
            }

            v42 = v41;
            v43 = [MEMORY[0x1E695DFF8] URLWithString:v42];
            if (v43)
            {
              [(MPCModelRadioPlaybackContext *)v11 setStationURL:v43];
            }

            v31 = *(a1 + 40);
            if (v31)
            {
LABEL_35:
              v44 = v31[7];
              if (v44)
              {
                v45 = v44;
                v46 = _MPCProtoRadioContentReferenceToICRadioContentReference(v45);

                if (v46)
                {
                  v47 = [[MPCModelRadioContentReference alloc] initWithICRadioContentReference:v46];
                  [(MPCModelRadioPlaybackContext *)v11 setSeedContentReference:v47];

                  v48 = *(a1 + 40);
                  if (v48)
                  {
                    v49 = *(v48 + 16);
                    if (v49)
                    {
                      v50 = v49;
                      v51 = _MPCProtoRadioContentReferenceToICRadioContentReference(v50);

                      if (v51)
                      {
                        v52 = [[MPCModelRadioContentReference alloc] initWithICRadioContentReference:v51];
                        [(MPCModelRadioPlaybackContext *)v11 setNowPlayingContentReference:v52];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_8;
  v3[3] = &unk_1E8237EE8;
  v4 = *(a1 + 32);
  [a2 setRadioIdentifiersWithBlock:v3];
}

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = *(v2 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setStationStringID:v5];
}

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = objc_opt_class();

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x1E6970550]);
  v15 = [MEMORY[0x1E69706A0] kindWithModelClass:v12];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ____MPIdentifierSetWithMPCProtoContainer_block_invoke;
  v35[3] = &unk_1E8236300;
  v36 = v11;
  v37 = v9;
  v38 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  v19 = [v14 initWithSource:@"RSQ-Proto" modelKind:v15 block:v35];

  [*(a1 + 48) appendSection:v19];
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (v11)
    {
      v20 = v18[4];
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v20);
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    if (v11)
    {
      v21 = v18[5];
    }

    else
    {
      v21 = 0;
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v21);
  }

  if (v11)
  {
    v22 = v18[3];
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_3;
  v30[3] = &unk_1E8236160;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v33 = *(a1 + 80);
  v26 = *(a1 + 56);
  v34 = a3;
  v27 = *(a1 + 48);
  *&v28 = v26;
  *(&v28 + 1) = v27;
  *&v29 = v24;
  *(&v29 + 1) = v25;
  v31 = v29;
  v32 = v28;
  [v23 enumerateObjectsUsingBlock:v30];
}

id __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 modelKind];
  v4 = [objc_alloc(objc_msgSend(v3 "modelClass"))];

  v5 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v4];

  return v5;
}

id __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 modelKind];
  v4 = [objc_alloc(objc_msgSend(v3 "modelClass"))];

  v5 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v4];

  return v5;
}

void __89__MPCustomDataPlaybackQueue_MPCAdditions__getMusicPlaybackContextWithOptions_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = objc_opt_class();

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x1E6970550]);
  v15 = [MEMORY[0x1E69706A0] kindWithModelClass:v12];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ____MPIdentifierSetWithMPCProtoItem_block_invoke;
  v24[3] = &unk_1E8236300;
  v25 = v11;
  v26 = v9;
  v27 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  v19 = [v14 initWithSource:@"RSQ-Proto" modelKind:v15 block:v24];

  v20 = *(*(a1 + 64) + 8);
  v22 = *(v20 + 40);
  v21 = (v20 + 40);
  if (!v22)
  {
    v23 = *(a1 + 48);
    if (v23)
    {
      if (*(v23 + 16) == a3 && *(v23 + 8) == *(a1 + 72))
      {
        objc_storeStrong(v21, v19);
      }
    }
  }

  [*(a1 + 56) appendItem:v19];
}

@end