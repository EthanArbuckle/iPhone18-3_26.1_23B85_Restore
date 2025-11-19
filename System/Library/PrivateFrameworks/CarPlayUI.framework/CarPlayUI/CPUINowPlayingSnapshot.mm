@interface CPUINowPlayingSnapshot
+ (NSArray)knownJumpIntervals;
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)shouldEnableBackButton;
- (BOOL)shouldEnableNextButton;
- (BOOL)showsStopButton;
- (CPUINowPlayingSnapshot)initWithResponse:(id)a3;
- (NSNumber)jumpBackInterval;
- (NSNumber)jumpForwardInterval;
- (id)_getSongIsNext:(BOOL)a3;
- (id)commandWithType:(unint64_t)a3;
@end

@implementation CPUINowPlayingSnapshot

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var5;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[2].var2;
  *&retstr->var7 = self[2].var4;
  return self;
}

- (NSNumber)jumpForwardInterval
{
  v2 = [(CPUINowPlayingSnapshot *)self responseItem];
  v3 = [v2 seekCommand];
  v4 = [v3 preferredForwardJumpIntervals];
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)shouldEnableNextButton
{
  v3 = [(CPUINowPlayingSnapshot *)self jumpForwardInterval];

  if (v3)
  {
    return 1;
  }

  v5 = [(CPUINowPlayingSnapshot *)self tracklist];
  v6 = [v5 changeItemCommand];
  v7 = [v6 nextItem];

  if (!v7)
  {
    return 0;
  }

  v8 = [(CPUINowPlayingSnapshot *)self song];
  v4 = v8 != 0;

  return v4;
}

- (NSNumber)jumpBackInterval
{
  v2 = [(CPUINowPlayingSnapshot *)self responseItem];
  v3 = [v2 seekCommand];
  v4 = [v3 preferredBackwardJumpIntervals];
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)shouldEnableBackButton
{
  v3 = [(CPUINowPlayingSnapshot *)self jumpBackInterval];

  if (v3)
  {
    return 1;
  }

  v5 = [(CPUINowPlayingSnapshot *)self tracklist];
  v6 = [v5 changeItemCommand];
  v7 = [v6 previousItem];

  if (!v7)
  {
    return 0;
  }

  v8 = [(CPUINowPlayingSnapshot *)self song];
  v4 = v8 != 0;

  return v4;
}

- (id)_getSongIsNext:(BOOL)a3
{
  v3 = a3;
  v5 = [(MPCPlayerResponseTracklist *)self->_tracklist items];
  v6 = [v5 totalItemCount];

  v7 = [(MPCPlayerResponseTracklist *)self->_tracklist playingItem];
  v8 = [(MPCPlayerResponseTracklist *)self->_tracklist items];
  v9 = [v8 firstItem];
  v10 = [v7 isEqual:v9];

  if (v6 == 3 || v6 == 2 && v10 == v3)
  {
    v12 = [(MPCPlayerResponseTracklist *)self->_tracklist items];
    v13 = v12;
    if (v3)
    {
      [v12 lastItem];
    }

    else
    {
      [v12 firstItem];
    }
    v14 = ;

    objc_opt_class();
    v15 = [v14 metadataObject];
    v16 = [v15 anyObject];
    if (objc_opt_isKindOfClass())
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CPUINowPlayingSnapshot)initWithResponse:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v54.receiver = self;
  v54.super_class = CPUINowPlayingSnapshot;
  v6 = [(CPUINowPlayingSnapshot *)&v54 init];
  if (v6)
  {
    v7 = [v5 playerPath];
    v8 = [v7 representedBundleID];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v8;

    objc_storeStrong(&v6->_response, a3);
    v10 = [v5 tracklist];
    v11 = [v10 playingItemIndexPath];

    v12 = CarPlayUIGeneralLogging();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [(CPUINowPlayingSnapshot *)v6 bundleIdentifier];
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_243134000, v12, OS_LOG_TYPE_DEFAULT, "Received MPRequestResponseController response for %{public}@ with playing index path %{public}@", buf, 0x16u);
      }

      v15 = [v5 tracklist];
      v16 = [v15 items];
      v12 = [v16 itemAtIndexPath:v11];

      objc_storeStrong(&v6->_responseItem, v12);
      v57 = 0;
      v56 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v12)
      {
        [v12 duration];
      }

      v17 = [v12 metadataObject];
      v18 = [v17 anyObject];

      v19 = [v5 tracklist];
      v20 = [v19 items];
      v21 = [v20 sectionAtIndex:{objc_msgSend(v11, "section")}];

      if (v21)
      {
        v22 = [v21 metadataObject];
        v6->_isRadioPlayback = [v22 type] == 13;
      }

      else
      {
        v6->_isRadioPlayback = 0;
      }

      v23 = [v18 title];
      title = v6->_title;
      v6->_title = v23;

      if ([v18 shouldShowComposer])
      {
        [v18 composer];
      }

      else
      {
        [v18 artist];
      }
      v25 = ;
      v26 = [v25 name];
      artist = v6->_artist;
      v6->_artist = v26;

      if (v6->_isRadioPlayback)
      {
        v28 = [v21 metadataObject];
        v29 = [v28 radioStation];
        v30 = [v29 attributionLabel];

        if (v30)
        {
          v31 = v30;
          v32 = v6->_artist;
          v6->_artist = v31;
        }

        else
        {
          v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v33 = [v18 artist];
          v34 = [v33 name];

          if ([v34 length])
          {
            [(NSString *)v32 addObject:v34];
          }

          v53 = v34;
          v35 = [v18 composer];
          v36 = [v35 name];

          if ([v18 shouldShowComposer] && objc_msgSend(v36, "length"))
          {
            v37 = MEMORY[0x277CCACA8];
            v52 = CPUILocalizedStringForKey(@"COMPOSED_BY_TITLE_%@");
            v38 = [v37 localizedStringWithFormat:v52, v36];

            [(NSString *)v32 addObject:v38];
          }

          v39 = [(NSString *)v32 count];
          if (v39)
          {
            v39 = [(NSString *)v32 componentsJoinedByString:@" — "];
          }

          v40 = v6->_artist;
          v6->_artist = v39;
        }
      }

      v41 = [v18 album];
      v42 = [v41 title];
      album = v6->_album;
      v6->_album = v42;

      v44 = [v18 artworkCatalog];
      artworkCatalog = v6->_artworkCatalog;
      v6->_artworkCatalog = v44;

      v46 = *&buf[16];
      *&v6->_durationSnapshot.snapshotTime = *buf;
      *&v6->_durationSnapshot.endTime = v46;
      *&v6->_durationSnapshot.elapsedDuration = v56;
      *&v6->_durationSnapshot.isLiveContent = v57;
      v6->_state = [v5 state];
      v47 = [v5 tracklist];
      tracklist = v6->_tracklist;
      v6->_tracklist = v47;

      song = v6->_song;
      v6->_song = v18;
      v50 = v18;
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_243134000, v12, OS_LOG_TYPE_DEFAULT, "Received MPRequestResponseController response without any available now playing item.", buf, 2u);
    }
  }

  return v6;
}

+ (NSArray)knownJumpIntervals
{
  if (knownJumpIntervals_onceToken != -1)
  {
    +[CPUINowPlayingSnapshot knownJumpIntervals];
  }

  v3 = knownJumpIntervals___intervals;

  return v3;
}

void __44__CPUINowPlayingSnapshot_knownJumpIntervals__block_invoke()
{
  v0 = knownJumpIntervals___intervals;
  knownJumpIntervals___intervals = &unk_2855D84A0;
}

- (BOOL)showsStopButton
{
  v3 = [(CPUINowPlayingSnapshot *)self response];
  v4 = [v3 stop];
  v5 = v4 != 0;

  if (v4)
  {
    [(CPUINowPlayingSnapshot *)self durationSnapshot];
    if (v9 != 1)
    {
      return 0;
    }

    v6 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Playing livestreaming content.";
LABEL_7:
      _os_log_impl(&dword_243134000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v6 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Stop command is disabled.";
      goto LABEL_7;
    }
  }

  return v5;
}

- (id)commandWithType:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      switch(a3)
      {
        case 7uLL:
          v4 = [(CPUINowPlayingSnapshot *)self responseItem];
          v14 = [v4 seekCommand];
          v5 = v14;
          v15 = 1;
          break;
        case 8uLL:
          v4 = [(CPUINowPlayingSnapshot *)self responseItem];
          v14 = [v4 seekCommand];
          v5 = v14;
          v15 = -1;
          break;
        case 9uLL:
          v4 = [(CPUINowPlayingSnapshot *)self responseItem];
          v5 = [v4 seekCommand];
          v6 = [v5 endSeek];
          goto LABEL_26;
        default:
          goto LABEL_28;
      }

      v6 = [v14 beginSeekWithDirection:v15];
LABEL_26:
      v3 = v6;

      goto LABEL_27;
    }

    if (a3 == 5)
    {
      v9 = [(CPUINowPlayingSnapshot *)self responseItem];
      v4 = [v9 seekCommand];

      [v4 preferredForwardJumpIntervals];
    }

    else
    {
      v8 = [(CPUINowPlayingSnapshot *)self responseItem];
      v4 = [v8 seekCommand];

      [v4 preferredBackwardJumpIntervals];
    }
    v10 = ;
    v11 = [v10 firstObject];
    [v11 doubleValue];
    v13 = v12;

    v7 = [v4 jumpByInterval:v13];
  }

  else if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_28;
      }

      v4 = [(CPUINowPlayingSnapshot *)self response];
      v7 = [v4 play];
    }

    else
    {
      v4 = [(CPUINowPlayingSnapshot *)self response];
      v7 = [v4 stop];
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v4 = [(CPUINowPlayingSnapshot *)self tracklist];
        v5 = [v4 changeItemCommand];
        [v5 nextItem];
      }

      else
      {
        v4 = [(CPUINowPlayingSnapshot *)self tracklist];
        v5 = [v4 changeItemCommand];
        [v5 previousItem];
      }
      v6 = ;
      goto LABEL_26;
    }

    v4 = [(CPUINowPlayingSnapshot *)self response];
    v7 = [v4 pause];
  }

  v3 = v7;
LABEL_27:

LABEL_28:

  return v3;
}

@end