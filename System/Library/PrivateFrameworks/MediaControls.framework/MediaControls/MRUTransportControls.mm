@interface MRUTransportControls
- (BOOL)isEqual:(id)equal;
- (MRUTransportControls)initWithMPCResponse:(id)response;
- (id)centerItemFromResponse:(id)response;
- (id)leadingItemFromResponse:(id)response;
- (id)leftItemFromResponse:(id)response;
- (id)rightItemFromResponse:(id)response;
@end

@implementation MRUTransportControls

- (MRUTransportControls)initWithMPCResponse:(id)response
{
  responseCopy = response;
  v16.receiver = self;
  v16.super_class = MRUTransportControls;
  v5 = [(MRUTransportControls *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MRUTransportControls *)v5 leadingItemFromResponse:responseCopy];
    leadingItem = v6->_leadingItem;
    v6->_leadingItem = v7;

    v9 = [(MRUTransportControls *)v6 leftItemFromResponse:responseCopy];
    leftItem = v6->_leftItem;
    v6->_leftItem = v9;

    v11 = [(MRUTransportControls *)v6 centerItemFromResponse:responseCopy];
    centerItem = v6->_centerItem;
    v6->_centerItem = v11;

    v13 = [(MRUTransportControls *)v6 rightItemFromResponse:responseCopy];
    rightItem = v6->_rightItem;
    v6->_rightItem = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      leftItem = [(MRUTransportControls *)v5 leftItem];
      v7 = [leftItem isEqual:self->_leftItem];

      centerItem = [(MRUTransportControls *)v5 centerItem];
      v9 = v7 & [centerItem isEqual:self->_centerItem];

      rightItem = [(MRUTransportControls *)v5 rightItem];
      v11 = [rightItem isEqual:self->_rightItem];

      leadingItem = [(MRUTransportControls *)v5 leadingItem];

      v13 = v9 & v11 & [leadingItem isEqual:self->_leadingItem];
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)leadingItemFromResponse:(id)response
{
  responseCopy = response;
  if (_os_feature_enabled_impl())
  {
    tracklist = [responseCopy tracklist];
    playingItem = [tracklist playingItem];

    likeCommand = [playingItem likeCommand];
    if (likeCommand)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      value = [likeCommand value];
      v10 = +[MRUAssetsProvider favoritePackageName];
      if (value)
      {
        v11 = @"On";
      }

      else
      {
        v11 = @"Off";
      }

      if (value)
      {
        v12 = @".On";
      }

      else
      {
        v12 = @".Off";
      }

      v13 = [MRUCAPackageAsset packageNamed:v10 glyphState:v11];

      v14 = +[MRUAssetsProvider favoriteSymbol];
      v15 = [MRUAsset packageAsset:v13 symbolName:v14 image:0];

      [v15 setAccessibilityIdentifier:@"favorite"];
      v16 = [likeCommand changeValue:value ^ 1u];
      v17 = [@"favorite" stringByAppendingString:v12];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48__MRUTransportControls_leadingItemFromResponse___block_invoke;
      aBlock[3] = &unk_1E7663D30;
      v25 = v16;
      v26 = v8;
      v27 = v17;
      v18 = v17;
      v19 = v8;
      v20 = v16;
      v21 = _Block_copy(aBlock);
      v22 = [[MRUTransportControlItem alloc] initWithIdentifier:v18 asset:v15 mainAction:v21 holdBeganAction:0 holdEndAction:0];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __48__MRUTransportControls_leadingItemFromResponse___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MRUTransportControls_leadingItemFromResponse___block_invoke_2;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 completion:v4];
}

void __48__MRUTransportControls_leadingItemFromResponse___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

- (id)leftItemFromResponse:(id)response
{
  responseCopy = response;
  tracklist = [responseCopy tracklist];
  playingItem = [tracklist playingItem];

  tracklist2 = [responseCopy tracklist];

  changeItemCommand = [tracklist2 changeItemCommand];
  previousItem = [changeItemCommand previousItem];

  v9 = objc_opt_class();
  v63 = NSStringFromClass(v9);
  v10 = +[MRUAssetsProvider forwardBackwardPackageName];
  v11 = *(MEMORY[0x1E69792E8] + 80);
  *&v78.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v78.m33 = v11;
  v12 = *(MEMORY[0x1E69792E8] + 112);
  *&v78.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v78.m43 = v12;
  v13 = *(MEMORY[0x1E69792E8] + 16);
  *&v78.m11 = *MEMORY[0x1E69792E8];
  *&v78.m13 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 48);
  *&v78.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v78.m23 = v14;
  CATransform3DRotate(&v79, &v78, 3.14159265, 0.0, 0.0, 1.0);
  v15 = [MRUCAPackageAsset packageNamed:v10 glyphState:0 permanentTransform:&v79];

  v16 = +[MRUAssetsProvider backwardSymbol];
  v17 = [MRUAsset packageAsset:v15 symbolName:v16 image:0];

  [v17 setAccessibilityIdentifier:@"backward"];
  seekCommand = [playingItem seekCommand];
  preferredBackwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
  v20 = [preferredBackwardJumpIntervals count];

  v62 = playingItem;
  v64 = v15;
  if (!v20)
  {
    v61 = v17;
    if (!previousItem)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v26 = @"backward";
      v48 = v63;
      v47 = v61;
      goto LABEL_10;
    }

    seekCommand2 = [playingItem seekCommand];
    v50 = [seekCommand2 beginSeekWithDirection:-1];

    seekCommand3 = [playingItem seekCommand];
    endSeek = [seekCommand3 endSeek];

    v41 = 0;
    v53 = previousItem;
    v40 = 0;
    if (v50 && endSeek)
    {
      v54 = [@"backward" stringByAppendingString:@".seek.began"];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_2;
      v73[3] = &unk_1E7663D30;
      v74 = v50;
      v55 = v63;
      v75 = v55;
      v76 = v54;
      v56 = v54;
      v40 = _Block_copy(v73);
      v57 = [@"backward" stringByAppendingString:@".seek.end"];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_44;
      v69[3] = &unk_1E7663D30;
      v70 = endSeek;
      v71 = v55;
      v72 = v57;
      v58 = v57;
      v41 = _Block_copy(v69);
    }

    v26 = @"backward";
    v48 = v63;
    v47 = v61;
    v39 = "_TtC13MediaControls18WaveformController";
    v46 = v53;
LABEL_9:
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = *(v39 + 247);
    v65[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_46;
    v65[3] = &unk_1E7663D30;
    v42 = v46;
    v66 = v42;
    v67 = v48;
    v26 = v26;
    v68 = v26;
    v45 = _Block_copy(v65);

    v43 = v40;
    v44 = v41;
    goto LABEL_10;
  }

  seekCommand4 = [playingItem seekCommand];
  preferredBackwardJumpIntervals2 = [seekCommand4 preferredBackwardJumpIntervals];
  firstObject = [preferredBackwardJumpIntervals2 firstObject];
  [firstObject doubleValue];
  v25 = v24;

  v26 = [@"backward" stringByAppendingFormat:@".jump: %f", *&v25];
  seekCommand5 = [playingItem seekCommand];
  v28 = [seekCommand5 jumpByInterval:v25];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke;
  aBlock[3] = &__block_descriptor_40_e43___CAPackage_24__0__CAPackage_8__NSLocale_16l;
  *&aBlock[4] = v25;
  v29 = _Block_copy(aBlock);
  v30 = MEMORY[0x1E696AEC0];
  v31 = +[MRUAssetsProvider skipForwardBackwardPackageName];
  v32 = [v30 stringWithFormat:@"%@-%f", v31, *&v25];

  v33 = [MRUCAPackageConfigurator configuratorWithIdentifier:v32 configurationBlock:v29];
  v34 = +[MRUAssetsProvider skipForwardBackwardPackageName];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v36 = [MRUCAPackageAsset packageNamed:v34 locale:currentLocale configurator:v33];

  v37 = [MRUAssetsProvider goBackwardSymbolForTimeInterval:v25];
  v38 = [MRUAsset packageAsset:v36 symbolName:v37];

  v39 = "_TtC13MediaControls18WaveformController";
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = v28;
  v64 = v36;
  v47 = v38;
  v48 = v63;
  if (v28)
  {
    goto LABEL_9;
  }

LABEL_10:
  v59 = [[MRUTransportControlItem alloc] initWithIdentifier:v26 asset:v47 mainAction:v45 holdBeganAction:v43 holdEndAction:v44];

  return v59;
}

id __45__MRUTransportControls_leftItemFromResponse___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [MRUCAPackageAsset prepareSkipPackage:v5 forInterval:0 isForwards:a3 locale:*(a1 + 32)];

  return v5;
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_2(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_3;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 completion:v4];
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_3(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_44(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_2_45;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 completion:v4];
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_2_45(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_46(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MRUTransportControls_leftItemFromResponse___block_invoke_2_47;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 options:0x10000 completion:v4];
}

void __45__MRUTransportControls_leftItemFromResponse___block_invoke_2_47(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

- (id)centerItemFromResponse:(id)response
{
  responseCopy = response;
  tracklist = [responseCopy tracklist];
  playingItem = [tracklist playingItem];

  play = [responseCopy play];
  pause = [responseCopy pause];
  stop = [responseCopy stop];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = +[MRUAssetsProvider playSymbol];
  if (stop)
  {
    if (playingItem)
    {
      [playingItem duration];
      if (v29)
      {
        v12 = +[MRUAssetsProvider stopSymbol];
        v13 = @"stop";
        v14 = stop;
LABEL_8:

        v15 = v14;
        v11 = v12;
        play = v15;
        goto LABEL_10;
      }
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }
  }

  if (pause)
  {
    v12 = +[MRUAssetsProvider pauseSymbol];
    v13 = @"pause";
    v14 = pause;
    goto LABEL_8;
  }

  v13 = @"play";
LABEL_10:
  v16 = +[MRUAssetsProvider playPauseStopPackageName];
  v17 = [MRUCAPackageAsset packageNamed:v16 glyphState:v13];

  v18 = [MRUAsset packageAsset:v17 symbolName:v11 image:0];
  [v18 setAccessibilityIdentifier:v13];
  if (play)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__MRUTransportControls_centerItemFromResponse___block_invoke;
    aBlock[3] = &unk_1E7663D30;
    v23 = play;
    v24 = v10;
    v25 = v13;
    v19 = _Block_copy(aBlock);
  }

  else
  {
    v19 = 0;
  }

  v20 = [[MRUTransportControlItem alloc] initWithIdentifier:v13 asset:v18 mainAction:v19];

  return v20;
}

void __47__MRUTransportControls_centerItemFromResponse___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__MRUTransportControls_centerItemFromResponse___block_invoke_2;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 options:0x10000 completion:v4];
}

void __47__MRUTransportControls_centerItemFromResponse___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

- (id)rightItemFromResponse:(id)response
{
  tracklist = [response tracklist];
  playingItem = [tracklist playingItem];
  v56 = tracklist;
  changeItemCommand = [tracklist changeItemCommand];
  nextItem = [changeItemCommand nextItem];

  v7 = objc_opt_class();
  v54 = NSStringFromClass(v7);
  v8 = +[MRUAssetsProvider forwardBackwardPackageName];
  v9 = [MRUCAPackageAsset packageNamed:v8 glyphState:0];

  v10 = +[MRUAssetsProvider forwardSymbol];
  v11 = [MRUAsset packageAsset:v9 symbolName:v10 image:0];

  [v11 setAccessibilityIdentifier:@"forward"];
  seekCommand = [playingItem seekCommand];
  preferredForwardJumpIntervals = [seekCommand preferredForwardJumpIntervals];
  v14 = [preferredForwardJumpIntervals count];

  v55 = playingItem;
  v57 = v9;
  if (!v14)
  {
    v32 = v11;
    if (!nextItem)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v20 = @"forward";
      v41 = v54;
      goto LABEL_10;
    }

    seekCommand2 = [playingItem seekCommand];
    v43 = [seekCommand2 beginSeekWithDirection:1];

    seekCommand3 = [playingItem seekCommand];
    endSeek = [seekCommand3 endSeek];

    v35 = 0;
    v41 = v54;
    v53 = nextItem;
    v34 = 0;
    if (v43 && endSeek)
    {
      v46 = [@"forward" stringByAppendingString:@".seek.began"];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_2;
      v66[3] = &unk_1E7663D30;
      v67 = v43;
      v47 = v54;
      v68 = v47;
      v69 = v46;
      v48 = v46;
      v34 = _Block_copy(v66);
      v49 = [@"forward" stringByAppendingString:@".seek.end"];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_60;
      v62[3] = &unk_1E7663D30;
      v63 = endSeek;
      v64 = v47;
      v65 = v49;
      v50 = v49;
      v35 = _Block_copy(v62);
    }

    v20 = @"forward";
    v33 = "_TtC13MediaControls18WaveformController";
    v40 = v53;
LABEL_9:
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = *(v33 + 247);
    v58[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_62;
    v58[3] = &unk_1E7663D30;
    v36 = v40;
    v59 = v36;
    v60 = v41;
    v20 = v20;
    v61 = v20;
    v39 = _Block_copy(v58);

    v37 = v34;
    v38 = v35;
    goto LABEL_10;
  }

  seekCommand4 = [playingItem seekCommand];
  preferredForwardJumpIntervals2 = [seekCommand4 preferredForwardJumpIntervals];
  firstObject = [preferredForwardJumpIntervals2 firstObject];
  [firstObject doubleValue];
  v19 = v18;

  v20 = [@"forward" stringByAppendingFormat:@".jump: %f", *&v19];
  seekCommand5 = [playingItem seekCommand];
  v22 = [seekCommand5 jumpByInterval:v19];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke;
  aBlock[3] = &__block_descriptor_40_e43___CAPackage_24__0__CAPackage_8__NSLocale_16l;
  *&aBlock[4] = v19;
  v23 = _Block_copy(aBlock);
  v24 = MEMORY[0x1E696AEC0];
  v25 = +[MRUAssetsProvider skipForwardBackwardPackageName];
  v26 = [v24 stringWithFormat:@"%@-%f", v25, *&v19];

  v27 = [MRUCAPackageConfigurator configuratorWithIdentifier:v26 configurationBlock:v23];
  v28 = +[MRUAssetsProvider skipForwardBackwardPackageName];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v30 = [MRUCAPackageAsset packageNamed:v28 locale:currentLocale configurator:v27];

  v31 = [MRUAssetsProvider goForwardSymbolForTimeInterval:v19];
  v32 = [MRUAsset packageAsset:v30 symbolName:v31];

  v33 = "_TtC13MediaControls18WaveformController";
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v22;
  v57 = v30;
  v41 = v54;
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_10:
  v51 = [[MRUTransportControlItem alloc] initWithIdentifier:v20 asset:v32 mainAction:v39 holdBeganAction:v37 holdEndAction:v38];

  return v51;
}

id __46__MRUTransportControls_rightItemFromResponse___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [MRUCAPackageAsset prepareSkipPackage:v5 forInterval:1 isForwards:a3 locale:*(a1 + 32)];

  return v5;
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_2(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_3;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 completion:v4];
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_3(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_60(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_2_61;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 completion:v4];
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_2_61(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_62(id *a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MRUTransportControls_rightItemFromResponse___block_invoke_2_63;
  v4[3] = &unk_1E7664380;
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];
  [v2 performRequest:v3 options:0x10000 completion:v4];
}

void __46__MRUTransportControls_rightItemFromResponse___block_invoke_2_63(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = 138544130;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ perform request: %{public}@ | %{public}@ | error %{public}@", &v8, 0x2Au);
  }
}

@end