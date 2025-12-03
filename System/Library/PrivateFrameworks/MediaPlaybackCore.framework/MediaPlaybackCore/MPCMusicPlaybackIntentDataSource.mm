@interface MPCMusicPlaybackIntentDataSource
+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers;
- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion;
- (void)getArchiveFromIntent:(id)intent configuration:(id)configuration completion:(id)completion;
- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion;
- (void)getRepresentativeObjectFromIntent:(id)intent properties:(id)properties completion:(id)completion;
- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion;
@end

@implementation MPCMusicPlaybackIntentDataSource

- (void)getRepresentativeObjectFromIntent:(id)intent properties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__MPCMusicPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke;
  v13[3] = &unk_1E8237E70;
  v16 = completionCopy;
  v17 = a2;
  v14 = propertiesCopy;
  selfCopy = self;
  v11 = propertiesCopy;
  v12 = completionCopy;
  [(MPCMusicPlaybackIntentDataSource *)self _getPlaybackContextForIntent:intent withCompletion:v13];
}

void __92__MPCMusicPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([v5 shuffleType] == 1000)
    {
      v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v6 setShuffleType:{objc_msgSend(v7, "musicShuffleType")}];
    }

    v8 = objc_alloc_init([v6 queueFeederClass]);
    v9 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__MPCMusicPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_2;
    v14[3] = &unk_1E8237E48;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v17 = v10;
    v18 = v11;
    v12 = *(a1 + 32);
    v14[4] = *(a1 + 40);
    v15 = v8;
    v16 = v12;
    v13 = v8;
    [v13 getRepresentativeMetadataForPlaybackContext:v6 properties:v9 completion:v14];
  }
}

void __92__MPCMusicPlaybackIntentDataSource_getRepresentativeObjectFromIntent_properties_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    (*(a1[7] + 16))();
  }

  else
  {
    if (!v7)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a1[8] object:a1[4] file:@"MPCMusicPlaybackIntentDataSource.m" lineNumber:293 description:{@"%@ did not produce representative model object or error", a1[5]}];
    }

    v10 = [v7 flattenedGenericObject];
    v11 = [v10 copyWithPropertySet:a1[6]];

    v12 = [v11 type];
    v13 = a1[7];
    if (v12)
    {
      (*(v13 + 16))(v13, v11, v8, 0);
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v18 = @"modelObject";
      v19[0] = v7;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v16 = [v14 msv_errorWithDomain:@"MPCError" code:1 userInfo:v15 debugDescription:{@"No matching properties for reprentative object: %@", v11}];
      (*(v13 + 16))(v13, 0, v8, v16);
    }
  }
}

- (void)getRemotePlaybackQueueFromIntent:(id)intent destination:(int64_t)destination completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  actionAfterQueueLoad = [intentCopy actionAfterQueueLoad];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__MPCMusicPlaybackIntentDataSource_getRemotePlaybackQueueFromIntent_destination_completion___block_invoke;
  v13[3] = &unk_1E8237E20;
  v15 = completionCopy;
  destinationCopy = destination;
  v14 = intentCopy;
  v17 = actionAfterQueueLoad == 20;
  v11 = completionCopy;
  v12 = intentCopy;
  [(MPCMusicPlaybackIntentDataSource *)self _getPlaybackContextForIntent:v12 withCompletion:v13];
}

void __92__MPCMusicPlaybackIntentDataSource_getRemotePlaybackQueueFromIntent_destination_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) privateListeningOverride];
  [v3 setPrivateListeningOverride:v4];

  v5 = *(a1 + 48);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v25 = 0;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v25];
      v14 = v25;
      v15 = [objc_alloc(MEMORY[0x1E6970510]) initWithIdentifier:@"com.apple.mediaplayer.playbackcontext" data:v13];
      v16 = v15;
      if (!v14)
      {
        [v15 setRequestingImmediatePlayback:*(a1 + 56)];
        [v16 _mediaRemotePlaybackQueue];
        v17 = [v3 siriReferenceIdentifier];
        [v16 setSiriRecommendationIdentifier:v17];

        v18 = [v3 siriAssetInfo];
        MRSystemAppPlaybackQueueSetSiriAssetInfo();

        v19 = [v3 playActivityFeatureName];
        MRSystemAppPlaybackQueueSetFeatureName();

        v20 = [v3 siriWHAMetricsInfo];
        MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();
      }

      (*(*(a1 + 40) + 16))();
    }

    else if (v5 == 3)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __92__MPCMusicPlaybackIntentDataSource_getRemotePlaybackQueueFromIntent_destination_completion___block_invoke_2;
      v21[3] = &unk_1E8237DF8;
      v24 = *(a1 + 56);
      v22 = v3;
      v23 = *(a1 + 40);
      [v22 getRemotePlaybackQueueRepresentationWithCompletion:v21];
    }
  }

  else
  {
    if (!v5)
    {
      v12 = *(a1 + 40);
      v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:@"Cannot get remote playback queue: Destination is unknown"];
      (*(v12 + 16))(v12, 0, v6);
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      [v6 setObject:v3 forKeyedSubscript:@"playbackContext"];
      v7 = [v3 siriReferenceIdentifier];
      [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B10D0]];

      v8 = [v3 privateListeningOverride];
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B11E0]];

      v9 = objc_alloc(MEMORY[0x1E6970510]);
      v10 = [MEMORY[0x1E695DEF0] data];
      v11 = [v9 initWithIdentifier:@"InProcess-com.apple.mediaplayer.playbackcontext" data:v10 options:v6];

      [v11 setRequestingImmediatePlayback:*(a1 + 56)];
      (*(*(a1 + 40) + 16))();

LABEL_9:
    }
  }
}

void __92__MPCMusicPlaybackIntentDataSource_getRemotePlaybackQueueFromIntent_destination_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    [v10 setRequestingImmediatePlayback:*(a1 + 48)];
    v6 = v10;
    [v10 _mediaRemotePlaybackQueue];
    v7 = [*(a1 + 32) siriAssetInfo];
    MRSystemAppPlaybackQueueSetSiriAssetInfo();

    v8 = [*(a1 + 32) playActivityFeatureName];
    MRSystemAppPlaybackQueueSetFeatureName();

    v9 = [*(a1 + 32) siriWHAMetricsInfo];
    MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getArchiveFromIntent:(id)intent configuration:(id)configuration completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = intentCopy;
    v21 = 2114;
    v22 = intentCopy;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | intent=%{public}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke;
  v15[3] = &unk_1E8237DD0;
  v17 = configurationCopy;
  v18 = completionCopy;
  v16 = intentCopy;
  v12 = configurationCopy;
  v13 = completionCopy;
  v14 = intentCopy;
  [(MPCMusicPlaybackIntentDataSource *)self _getPlaybackContextForIntent:v14 withCompletion:v15];
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v186 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | returning nil [getPlaybackContext failed] error=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [*(a1 + 32) privateListeningOverride];
    [v5 setPrivateListeningOverride:v9];

    v121 = objc_alloc_init([v5 queueFeederClass]);
    [v5 setShuffleType:0];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | validating context [] playbackContext=%{public}@", buf, 0x16u);
    }

    v122 = v5;

    v12 = *(a1 + 32);
    v120 = a1;
    if (v12)
    {
      v118 = objc_alloc(MEMORY[0x1E69708B0]);
      v168[0] = *MEMORY[0x1E6970158];
      v13 = objc_alloc(MEMORY[0x1E69708B0]);
      v14 = *MEMORY[0x1E696FF10];
      v167[0] = *MEMORY[0x1E696FFB0];
      v167[1] = v14;
      v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
      v165 = *MEMORY[0x1E69701C8];
      v15 = MEMORY[0x1E69708B0];
      v164 = *MEMORY[0x1E696FC68];
      v16 = v164;
      v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v164 count:1];
      v116 = [v15 propertySetWithProperties:v117];
      v166 = v116;
      v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      v113 = [v13 initWithProperties:v115 relationships:v114];
      *buf = v113;
      v168[1] = *MEMORY[0x1E69700D8];
      v17 = objc_alloc(MEMORY[0x1E69708B0]);
      v18 = *MEMORY[0x1E696FBF8];
      v163[0] = *MEMORY[0x1E696FC38];
      v163[1] = v18;
      v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];
      v161 = *MEMORY[0x1E69700D0];
      v19 = MEMORY[0x1E69708B0];
      v160 = v16;
      v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v160 count:1];
      v111 = [v19 propertySetWithProperties:v112];
      v162 = v111;
      v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v108 = [v17 initWithProperties:v110 relationships:v109];
      *&buf[8] = v108;
      v168[2] = *MEMORY[0x1E69700E0];
      v20 = MEMORY[0x1E69708B0];
      v21 = *MEMORY[0x1E696FC60];
      v159[0] = v16;
      v159[1] = v21;
      v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
      v106 = [v20 propertySetWithProperties:v107];
      *&buf[16] = v106;
      v168[3] = *MEMORY[0x1E6970118];
      v22 = MEMORY[0x1E69708B0];
      v23 = *MEMORY[0x1E696FDC0];
      v158[0] = *MEMORY[0x1E696FE10];
      v158[1] = v23;
      v158[2] = *MEMORY[0x1E696FE18];
      v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:3];
      v104 = [v22 propertySetWithProperties:v105];
      v170 = v104;
      v168[4] = *MEMORY[0x1E6970160];
      v24 = objc_alloc(MEMORY[0x1E69708B0]);
      v25 = *MEMORY[0x1E6970030];
      v157[0] = *MEMORY[0x1E6970098];
      v157[1] = v25;
      v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:2];
      v155 = *MEMORY[0x1E6970220];
      v26 = MEMORY[0x1E69708B0];
      v154 = *MEMORY[0x1E69700C8];
      v27 = v154;
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
      v102 = [v26 propertySetWithProperties:v103];
      v156 = v102;
      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
      v99 = [v24 initWithProperties:v101 relationships:v100];
      v171 = v99;
      v168[5] = *MEMORY[0x1E6970168];
      v28 = objc_alloc(MEMORY[0x1E69708B0]);
      v29 = *MEMORY[0x1E69700A0];
      v153[0] = *MEMORY[0x1E69700B0];
      v153[1] = v29;
      v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
      v151 = *MEMORY[0x1E6970230];
      v30 = MEMORY[0x1E69708B0];
      v150 = v27;
      v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
      v97 = [v30 propertySetWithProperties:v98];
      v152 = v97;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      v94 = [v28 initWithProperties:v96 relationships:v95];
      v172 = v94;
      v168[6] = *MEMORY[0x1E6970170];
      v31 = MEMORY[0x1E69708B0];
      v32 = *MEMORY[0x1E69700B8];
      v149[0] = v27;
      v149[1] = v32;
      v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:2];
      v92 = [v31 propertySetWithProperties:v93];
      v173 = v92;
      v168[7] = *MEMORY[0x1E6970110];
      v33 = MEMORY[0x1E69708B0];
      v34 = *MEMORY[0x1E696FD30];
      v148[0] = *MEMORY[0x1E696FD80];
      v148[1] = v34;
      v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
      v90 = [v33 propertySetWithProperties:v91];
      v174 = v90;
      v168[8] = *MEMORY[0x1E6970108];
      v35 = MEMORY[0x1E69708B0];
      v36 = *MEMORY[0x1E696FD20];
      v147[0] = *MEMORY[0x1E696FD28];
      v147[1] = v36;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
      v88 = [v35 propertySetWithProperties:v89];
      v175 = v88;
      v168[9] = *MEMORY[0x1E6970128];
      v37 = objc_alloc(MEMORY[0x1E69708B0]);
      v39 = *MEMORY[0x1E696FE38];
      v146[0] = *MEMORY[0x1E696FE60];
      v38 = v146[0];
      v146[1] = v39;
      v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:2];
      v144 = *MEMORY[0x1E69701B0];
      v40 = MEMORY[0x1E69708B0];
      v143 = *MEMORY[0x1E696FE40];
      v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
      v86 = [v40 propertySetWithProperties:v87];
      v145 = v86;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
      v83 = [v37 initWithProperties:v85 relationships:v84];
      v176 = v83;
      v168[10] = *MEMORY[0x1E6970130];
      v41 = objc_alloc(MEMORY[0x1E69708B0]);
      v42 = *MEMORY[0x1E696FE48];
      v142[0] = *MEMORY[0x1E696FE50];
      v142[1] = v42;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
      v140 = *MEMORY[0x1E69701B8];
      v43 = MEMORY[0x1E69708B0];
      v139 = v38;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
      v81 = [v43 propertySetWithProperties:v82];
      v141 = v81;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      v78 = [v41 initWithProperties:v80 relationships:v79];
      v177 = v78;
      v168[11] = *MEMORY[0x1E6970138];
      v44 = MEMORY[0x1E69708B0];
      v45 = *MEMORY[0x1E696FE70];
      v138[0] = *MEMORY[0x1E696FEA8];
      v138[1] = v45;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
      v76 = [v44 propertySetWithProperties:v77];
      v178 = v76;
      v168[12] = *MEMORY[0x1E6970140];
      v46 = MEMORY[0x1E69708B0];
      v47 = *MEMORY[0x1E696FE90];
      v137[0] = *MEMORY[0x1E696FE98];
      v137[1] = v47;
      v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
      v74 = [v46 propertySetWithProperties:v75];
      v179 = v74;
      v168[13] = *MEMORY[0x1E69700E8];
      v48 = MEMORY[0x1E69708B0];
      v136 = *MEMORY[0x1E696FC70];
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
      v72 = [v48 propertySetWithProperties:v73];
      v180 = v72;
      v168[14] = *MEMORY[0x1E69700F8];
      v49 = MEMORY[0x1E69708B0];
      v50 = *MEMORY[0x1E696FCD0];
      v135[0] = *MEMORY[0x1E696FCD8];
      v135[1] = v50;
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
      v51 = [v49 propertySetWithProperties:v71];
      v181 = v51;
      v168[15] = *MEMORY[0x1E69700F0];
      v52 = MEMORY[0x1E69708B0];
      v53 = *MEMORY[0x1E696FC78];
      v134[0] = *MEMORY[0x1E696FC80];
      v134[1] = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
      v55 = [v52 propertySetWithProperties:v54];
      v182 = v55;
      v168[16] = *MEMORY[0x1E6970150];
      v56 = MEMORY[0x1E69708B0];
      v57 = *MEMORY[0x1E696FEF0];
      v133[0] = *MEMORY[0x1E696FEF8];
      v133[1] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
      v59 = [v56 propertySetWithProperties:v58];
      v183 = v59;
      v168[17] = *MEMORY[0x1E6970148];
      v60 = MEMORY[0x1E69708B0];
      v61 = *MEMORY[0x1E696FEE0];
      v132[0] = *MEMORY[0x1E696FEE8];
      v132[1] = v61;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      v63 = [v60 propertySetWithProperties:v62];
      v184 = v63;
      v168[18] = *MEMORY[0x1E6970100];
      v64 = MEMORY[0x1E69708B0];
      v131 = *MEMORY[0x1E696FCF8];
      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
      v66 = [v64 propertySetWithProperties:v65];
      v185 = v66;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v168 count:19];
      v119 = [v118 initWithProperties:MEMORY[0x1E695E0F0] relationships:v67];

      v68 = v120;
      v12 = *(v120 + 32);
    }

    else
    {
      v119 = 0;
      v68 = a1;
    }

    v123[0] = MEMORY[0x1E69E9820];
    v123[1] = 3221225472;
    v123[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_15;
    v123[3] = &unk_1E8237DA8;
    v124 = v12;
    v130 = *(v68 + 48);
    v125 = v121;
    v126 = v119;
    v127 = *(v68 + 40);
    v5 = v122;
    v128 = v122;
    v129 = 0;
    v69 = v119;
    v70 = v121;
    [v70 getRepresentativeMetadataForPlaybackContext:v128 properties:v69 completion:v123];

    v6 = 0;
  }
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x1E69E9840];
  v88 = a2;
  v86 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v9 = v8;
  v89 = v7;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | returning nil [getRepresentativeMetadata failed] error=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v88 identifiers];
      *buf = 134218242;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | using playback context [valid representative metadata] modelObject.identifiers=%{public}@", buf, 0x16u);
    }

    v13 = [*(a1 + 40) firstModelPlayEvent];
    v14 = [v13 genericObjectRepresentation];
    v15 = v14;
    v16 = v88;
    if (v14)
    {
      v16 = v14;
    }

    v85 = v16;

    v17 = [v85 flattenedGenericObject];
    v18 = [v17 copyWithPropertySet:*(a1 + 48)];

    v19 = [v18 identifiers];
    v20 = [v19 preferredStoreStringIdentifierForPersonID:0];

    v21 = *(a1 + 32);
    v22 = v18;
    if (v21)
    {
      v23 = objc_alloc_init(MEMORY[0x1E6970830]);
      switch([v22 type])
      {
        case 0:
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          [v24 handleFailureInMethod:sel_generateNowPlayingContentItemWithMetadataObject_ object:v21 file:@"MPCPlaybackIntent.m" lineNumber:402 description:@"Cannot handle unknown generic object metadata."];

          goto LABEL_26;
        case 1:
          v45 = [v22 song];
          v46 = [v45 title];
          [v23 setTitle:v46];

          v25 = [v22 song];
          v26 = [v25 artist];
          v47 = [v26 name];
          [v23 setSubtitle:v47];

          goto LABEL_34;
        case 2:
          v33 = [v22 album];
          v34 = [v33 title];
          [v23 setTitle:v34];

          v25 = [v22 album];
          v26 = [v25 artist];
          v35 = [v26 name];
          [v23 setSubtitle:v35];

          goto LABEL_34;
        case 3:
          v25 = [v22 artist];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 4:
          v25 = [v22 playlist];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 5:
          v48 = [MEMORY[0x1E696AAA8] currentHandler];
          [v48 handleFailureInMethod:sel_generateNowPlayingContentItemWithMetadataObject_ object:v21 file:@"MPCPlaybackIntent.m" lineNumber:405 description:@"Expected a flattened generic object."];

LABEL_26:
          v49 = 0;
          goto LABEL_36;
        case 6:
          v50 = [v22 tvEpisode];
          v51 = [v50 title];
          [v23 setTitle:v51];

          v25 = [v22 tvEpisode];
          v26 = [v25 show];
          v52 = [v26 title];
          [v23 setSubtitle:v52];

          goto LABEL_34;
        case 7:
          v36 = [v22 season];
          v37 = [v36 show];
          v38 = [v37 title];
          [v23 setTitle:v38];

          v39 = MEMORY[0x1E696AEC0];
          v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
          v26 = [v25 localizedStringForKey:@"SEASON_DISPLAY_FORMAT_%@" value:&stru_1F454A698 table:@"MediaPlayer"];
          v40 = MEMORY[0x1E696AD98];
          v41 = [v22 season];
          v42 = [v40 numberWithInteger:{objc_msgSend(v41, "number")}];
          v43 = [v42 stringValue];
          v44 = [v39 stringWithFormat:v26, v43];
          [v23 setSubtitle:v44];

          goto LABEL_34;
        case 8:
          v25 = [v22 show];
          v26 = [v25 title];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 9:
          v25 = [v22 movie];
          v26 = [v25 title];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 10:
          v25 = [v22 mediaClip];
          v26 = [v25 title];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 11:
          v27 = [v22 podcast];
          v28 = [v27 title];
          [v23 setTitle:v28];

          v25 = [v22 podcast];
          v26 = [v25 author];
          v29 = [v26 name];
          [v23 setSubtitle:v29];

          goto LABEL_34;
        case 12:
          v30 = [v22 podcastEpisode];
          v31 = [v30 title];
          [v23 setTitle:v31];

          v25 = [v22 podcastEpisode];
          v26 = [v25 podcast];
          v32 = [v26 title];
          [v23 setSubtitle:v32];

          goto LABEL_34;
        case 13:
          v25 = [v22 radioStation];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 14:
          v25 = [v22 composer];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 15:
          v25 = [v22 genre];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 16:
          v25 = [v22 curator];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 17:
          v25 = [v22 socialPerson];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 18:
          v25 = [v22 radioStationEvent];
          v26 = [v25 title];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 19:
          v25 = [v22 recordLabel];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 20:
          v25 = [v22 creditsArtist];
          v26 = [v25 name];
          [v23 setTitle:v26];
          goto LABEL_34;
        case 21:
          v25 = [v22 group];
          v26 = [v25 title];
          [v23 setTitle:v26];
LABEL_34:

          break;
        default:
          break;
      }

      v49 = v23;
LABEL_36:
    }

    else
    {
      v49 = 0;
    }

    v53 = *(a1 + 32);
    v54 = v22;
    v55 = v54;
    if (v53)
    {
      v87 = 0;
      switch([v54 type])
      {
        case 0:
          v56 = [MEMORY[0x1E696AAA8] currentHandler];
          [v56 handleFailureInMethod:sel_artworkCatalogForMetadataModelObject_ object:v53 file:@"MPCPlaybackIntent.m" lineNumber:531 description:@"Cannot handle unknown generic object metadata."];
          goto LABEL_40;
        case 1:
          v56 = [v55 song];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 2:
          v56 = [v55 album];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 3:
          v56 = [v55 artist];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 4:
          v56 = [v55 playlist];
          v60 = [v56 artworkCatalog];
          v61 = v60;
          if (v60)
          {
            v87 = v60;
          }

          else
          {
            v62 = [v55 playlist];
            v87 = [v62 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          goto LABEL_69;
        case 5:
          v57 = [v55 playlistEntry];
          v58 = [v57 type];

          v87 = 0;
          if (v58 > 1)
          {
            if (v58 == 2)
            {
              v56 = [v55 playlistEntry];
              v83 = [v56 tvEpisode];
              v87 = [v83 artworkCatalog];
            }

            else
            {
              if (v58 != 3)
              {
                break;
              }

LABEL_66:
              v56 = [v55 movie];
              v87 = [v56 artworkCatalog];
            }
          }

          else if (v58)
          {
            if (v58 != 1)
            {
              break;
            }

            v56 = [v55 playlistEntry];
            v59 = [v56 song];
            v87 = [v59 artworkCatalog];
          }

          else
          {
            v56 = [MEMORY[0x1E696AAA8] currentHandler];
            [v56 handleFailureInMethod:sel_artworkCatalogForMetadataModelObject_ object:v53 file:@"MPCPlaybackIntent.m" lineNumber:550 description:@"Cannot handle unknown playlist entry when capturing metadata."];
LABEL_40:
            v87 = 0;
          }

LABEL_69:

          break;
        case 6:
          v56 = [v55 tvEpisode];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 7:
          v56 = [v55 season];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 8:
          v56 = [v55 show];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 9:
          goto LABEL_66;
        case 10:
          v56 = [v55 mediaClip];
          v87 = [v56 previewArtworkCatalog];
          goto LABEL_69;
        case 11:
          v56 = [v55 podcast];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 12:
          v56 = [v55 podcastEpisode];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 13:
          v56 = [v55 radioStation];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 15:
          v56 = [v55 genre];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 16:
          v56 = [v55 curator];
          v87 = [v56 editorialArtworkCatalog];
          goto LABEL_69;
        case 17:
          v56 = [v55 socialPerson];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 18:
          v56 = [v55 radioStationEvent];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 19:
          v56 = [v55 recordLabel];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        case 20:
          v56 = [v55 creditsArtist];
          v87 = [v56 artworkCatalog];
          goto LABEL_69;
        default:
          break;
      }
    }

    else
    {
      v87 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v122 = __Block_byref_object_copy__25085;
    v123 = __Block_byref_object_dispose__25086;
    v124 = 0;
    v115[0] = 0;
    v115[1] = v115;
    v115[2] = 0x3032000000;
    v115[3] = __Block_byref_object_copy__25085;
    v115[4] = __Block_byref_object_dispose__25086;
    v116 = 0;
    v63 = dispatch_group_create();
    v64 = v63;
    if (v87)
    {
      dispatch_group_enter(v63);
      v65 = *(a1 + 56);
      if (v65)
      {
        [v65 preferredArtworkSize];
        [v87 setFittingSize:?];
      }

      v66 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(a1 + 32);
        v68 = [v87 hasExportableArtworkProperties];
        *v117 = 134218240;
        v118 = v67;
        v119 = 1024;
        LODWORD(v120) = v68;
        _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | hasExportableArtworkProperties=%d", v117, 0x12u);
      }

      if ([v87 hasExportableArtworkProperties])
      {
        dispatch_group_enter(v64);
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_16;
        v111[3] = &unk_1E8237C90;
        v112 = *(a1 + 32);
        v114 = v115;
        v113 = v64;
        [v87 requestExportableArtworkPropertiesWithCompletion:v111];
      }

      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_19;
      v108[3] = &unk_1E8237CB8;
      v110 = buf;
      v109 = v64;
      [v87 requestImageWithCompletion:v108];
    }

    v69 = MSVNanoIDCreateTaggedPointer();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_2;
    aBlock[3] = &unk_1E8237D58;
    v98 = *(a1 + 32);
    v105 = *(a1 + 80);
    v99 = *(a1 + 40);
    v100 = *(a1 + 64);
    v70 = v64;
    v101 = v70;
    v71 = v69;
    v102 = v71;
    v84 = v20;
    v103 = v84;
    v72 = v49;
    v104 = v72;
    v106 = buf;
    v107 = v115;
    v73 = _Block_copy(aBlock);
    v74 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    [v74 setObject:*(a1 + 64) forKeyedSubscript:@"original"];
    [v74 setObject:v71 forKeyedSubscript:@"sessionID"];
    if ([*(a1 + 40) supplementalPlaybackContextBehavior] == 1 && (objc_msgSend(*(a1 + 40), "supplementalPlaybackContextWithReason:", 3), v75 = objc_claimAutoreleasedReturnValue(), (v76 = v75) != 0))
    {
      [v75 setShuffleType:0];
      [v76 setActionAfterQueueLoad:{objc_msgSend(*(a1 + 64), "actionAfterQueueLoad")}];
      v77 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = *(a1 + 32);
        *v117 = 134218242;
        v118 = v78;
        v119 = 2114;
        v120 = v76;
        _os_log_impl(&dword_1C5C61000, v77, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | validating supplemental context [] supplementalContext=%{public}@", v117, 0x16u);
      }

      v79 = v55;
      v80 = objc_alloc_init([v76 queueFeederClass]);
      v81 = *(a1 + 48);
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_153;
      v90[3] = &unk_1E8237D80;
      v91 = *(a1 + 32);
      v92 = *(a1 + 72);
      v93 = v88;
      v94 = v74;
      v82 = v76;
      v95 = v82;
      v96 = v73;
      [v80 getRepresentativeMetadataForPlaybackContext:v82 properties:v81 completion:v90];

      v55 = v79;
    }

    else
    {
      (*(v73 + 2))(v73, v74);
    }

    _Block_object_dispose(v115, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 resolvedURLString], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v17 = 134218242;
      v18 = v8;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | could not resolve artworkImageURL, error=%{public}@", &v17, 0x16u);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v5 resolvedURLString];
      v17 = 134218242;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | resolved artworkImageURL=%{public}@", &v17, 0x16u);
    }

    v13 = MEMORY[0x1E695DFF8];
    v7 = [v5 resolvedURLString];
    v14 = [v13 URLWithString:v7];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1C6954960](a2, *MEMORY[0x1E69B1368]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v27 = v5;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | creating archive [] payload=%{public}@", buf, 0x16u);
  }

  v25 = 0;
  v6 = [MEMORY[0x1E69B1468] encodedDataWithRootObject:v3 error:&v25];
  v7 = v25;
  if (v7)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    if ([*(a1 + 40) conformsToProtocol:&unk_1F45B6358])
    {
      v8 = *(a1 + 40);
      if ([v8 section:@"<ARCHIVE LOADER>" supportsShuffleType:1])
      {
        v9 = 6;
      }

      else
      {
        v9 = 0;
      }

      v10 = objc_opt_class();

      if ([v10 supportsAutoPlay])
      {
        v11 = v9 | 8;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      v11 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_134;
    block[3] = &unk_1E8237D30;
    v12 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = v6;
    v24 = v11;
    v20 = *(a1 + 72);
    v13 = *(a1 + 80);
    v14 = *(a1 + 104);
    v21 = v13;
    v23 = v14;
    v16 = *(a1 + 88);
    v15 = v16;
    v22 = v16;
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
  }
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_153(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v22 = 134218242;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | ignoring supplemental context [getRepresentativeMetadata failed] error=%{public}@", &v22, 0x16u);
    }

    goto LABEL_11;
  }

  v11 = [*(a1 + 48) identifiers];
  v12 = [v7 identifiers];
  v13 = [v11 intersectsSet:v12];

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v15 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = [*(a1 + 48) identifiers];
      v21 = [v7 identifiers];
      v22 = 134218498;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | ignoring supplemental context [identifiers do not match] modelObject.identifiers=%{public}@ supplementalModelObject.identifiers=%{public}@", &v22, 0x20u);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v22 = 134217984;
    v23 = v16;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[MPCPlaybackIntent:%p] getArchiveFromIntent: | using supplemental context [identifiers match]", &v22, 0xCu);
  }

  [*(a1 + 56) setObject:*(a1 + 64) forKeyedSubscript:@"supplemental"];
LABEL_12:
  (*(*(a1 + 72) + 16))();
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_134(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6970888]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_2_136;
  v10[3] = &unk_1E8237D08;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v14 = *(a1 + 88);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v13 = *(a1 + 72);
  v9 = [v2 initWithBlock:v10];
  (*(*(a1 + 64) + 16))();
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_2_136(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:1];
  [v3 setSessionIdentifier:*(a1 + 32) type:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack" data:*(a1 + 40)];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 setBundleIdentifier:v5];

  [v3 setSupportedOptions:*(a1 + 80)];
  [v3 setFallbackStoreIdentifier:*(a1 + 48)];
  v6 = objc_alloc(MEMORY[0x1E6970890]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_3;
  v8[3] = &unk_1E8237CE0;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v7 = [v6 initWithBlock:v8];
  [v3 setDisplayProperties:v7];
}

void __82__MPCMusicPlaybackIntentDataSource_getArchiveFromIntent_configuration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = [v3 title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F454A698;
  }

  [v10 setTitle:v6];

  v7 = [*(a1 + 32) subtitle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F454A698;
  }

  [v10 setSubtitle:v9];

  [v10 setArtworkImageData:*(*(*(a1 + 40) + 8) + 40)];
  [v10 setArtworkImageURL:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)getSharedListeningTracklistFromIntent:(id)intent withCompletion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__MPCMusicPlaybackIntentDataSource_getSharedListeningTracklistFromIntent_withCompletion___block_invoke;
  v10[3] = &unk_1E8237C68;
  v11 = intentCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = intentCopy;
  [(MPCMusicPlaybackIntentDataSource *)self _getPlaybackContextForIntent:v9 withCompletion:v10];
}

void __89__MPCMusicPlaybackIntentDataSource_getSharedListeningTracklistFromIntent_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 134218242;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "[MPCPlaybackIntent:%p] getSharedListeningTracklistFromIntent: | returning nil [getPlaybackContext failed] error=%{public}@", &v9, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 getSharedListeningTracklistWithCompletion:*(a1 + 40)];
  }
}

- (void)_getPlaybackContextForIntent:(id)intent withCompletion:(id)completion
{
  v6 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v6 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMusicPlaybackIntentDataSource.m" lineNumber:45 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPCMusicPlaybackIntentDataSource class]"}];
  }
}

+ (BOOL)isValidInsertionIntent:(id)intent atPosition:(int)position forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  v9 = [self instanceMethodForSelector:{a2, *&position, destination, types, identifiers}];
  if (v9 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMusicPlaybackIntentDataSource.m" lineNumber:40 description:{@"Subclass %@ must implement -%@ defined in %@.", v13, v14, @"self"}];
  }

  return 0;
}

+ (BOOL)isValidReplaceIntent:(id)intent forDestination:(int64_t)destination supportedQueueTypes:(unint64_t)types supportedCustomDataQueueIdentifiers:(id)identifiers
{
  v8 = [self instanceMethodForSelector:{a2, destination, types, identifiers}];
  if (v8 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMusicPlaybackIntentDataSource.m" lineNumber:31 description:{@"Subclass %@ must implement -%@ defined in %@.", v12, v13, @"self"}];
  }

  return 0;
}

@end