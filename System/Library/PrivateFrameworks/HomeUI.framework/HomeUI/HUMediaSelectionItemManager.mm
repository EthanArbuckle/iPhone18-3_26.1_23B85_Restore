@interface HUMediaSelectionItemManager
- (HFMediaPlaybackActionBuilder)actionBuilder;
- (HFPlaybackArchive)pickedPlaybackArchive;
- (HUMediaSelectionItemManager)initWithDelegate:(id)delegate mediaPlaybackActionBuilder:(id)builder;
- (HUMediaSelectionItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)_volumeForMediaAction;
- (id)selectedPlaybackStateItemBasedOnActionBuilderState;
- (id)selectedVolumeItemBasedOnActionBuilderState;
- (void)mediaPlaybackOptionsItem:(id)item switchedOn:(BOOL)on;
- (void)mediaVolumeValueChanged:(double)changed;
- (void)setPickedPlaybackArchive:(id)archive;
- (void)setSelectedPlaybackStateItem:(id)item;
- (void)setSelectedVolumeItem:(id)item;
@end

@implementation HUMediaSelectionItemManager

- (HUMediaSelectionItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_mediaPlaybackActionBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaSelectionItemManager.m" lineNumber:73 description:{@"%s is unavailable; use %@ instead", "-[HUMediaSelectionItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUMediaSelectionItemManager)initWithDelegate:(id)delegate mediaPlaybackActionBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = HUMediaSelectionItemManager;
  v8 = [(HFItemManager *)&v12 initWithDelegate:delegate sourceItem:0];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CDD348]);
    cloudServiceController = v8->_cloudServiceController;
    v8->_cloudServiceController = v9;

    objc_storeStrong(&v8->_actionSetBuilder, builder);
  }

  return v8;
}

- (HFMediaPlaybackActionBuilder)actionBuilder
{
  actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
  mediaAction = [actionSetBuilder mediaAction];

  return mediaAction;
}

- (id)selectedPlaybackStateItemBasedOnActionBuilderState
{
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  targetPlayState = [actionBuilder targetPlayState];

  if (targetPlayState == 1)
  {
    actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
    playbackArchive = [actionBuilder2 playbackArchive];

    if (playbackArchive)
    {
      [(HUMediaSelectionItemManager *)self playbackStatePlayItem];
    }

    else
    {
      [(HUMediaSelectionItemManager *)self playbackStateResumeItem];
    }
  }

  else if (targetPlayState == 2)
  {
    [(HUMediaSelectionItemManager *)self playbackStatePauseItem];
  }

  else
  {
    [(HUMediaSelectionItemManager *)self playbackStateAdjustVolumeOnlyItem];
  }
  v5 = ;

  return v5;
}

- (id)selectedVolumeItemBasedOnActionBuilderState
{
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  targetVolume = [actionBuilder targetVolume];

  if (targetVolume)
  {
    [(HUMediaSelectionItemManager *)self useCustomVolumeItem];
  }

  else
  {
    [(HUMediaSelectionItemManager *)self useCurrentVolumeItem];
  }
  v5 = ;

  return v5;
}

- (void)setSelectedPlaybackStateItem:(id)item
{
  itemCopy = item;
  if (self->_selectedPlaybackStateItem != itemCopy)
  {
    v26 = itemCopy;
    objc_storeStrong(&self->_selectedPlaybackStateItem, item);
    latestResults = [(HFStaticItem *)v26 latestResults];

    if (latestResults)
    {
      latestResults2 = [(HFStaticItem *)v26 latestResults];
      v9 = [latestResults2 objectForKeyedSubscript:@"HOMediaSelectionPlayControlResultKey"];
      integerValue = [v9 integerValue];

      actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
      [actionBuilder setTargetPlayState:integerValue];
    }

    playbackStatePlayItem = [(HUMediaSelectionItemManager *)self playbackStatePlayItem];
    if (playbackStatePlayItem == v26)
    {
    }

    else
    {
      actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
      playbackArchive = [actionBuilder2 playbackArchive];

      if (playbackArchive)
      {
        actionBuilder3 = [(HUMediaSelectionItemManager *)self actionBuilder];
        playbackArchive2 = [actionBuilder3 playbackArchive];
        [(HUMediaSelectionItemManager *)self setLastSelectedArchive:playbackArchive2];

        actionBuilder4 = [(HUMediaSelectionItemManager *)self actionBuilder];
        [(HFStaticItem *)actionBuilder4 setPlaybackArchive:0];
        goto LABEL_9;
      }
    }

    actionBuilder4 = [(HUMediaSelectionItemManager *)self playbackStatePlayItem];
    if (actionBuilder4 == v26)
    {
      actionBuilder5 = [(HUMediaSelectionItemManager *)self actionBuilder];
      playbackArchive3 = [actionBuilder5 playbackArchive];

      if (playbackArchive3)
      {
        goto LABEL_10;
      }

      actionBuilder4 = [(HUMediaSelectionItemManager *)self lastSelectedArchive];
      v24 = actionBuilder4;
      if (!actionBuilder4)
      {
        v24 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:0];
      }

      actionBuilder6 = [(HUMediaSelectionItemManager *)self actionBuilder];
      [actionBuilder6 setPlaybackArchive:v24];

      if (!actionBuilder4)
      {
      }
    }

LABEL_9:

LABEL_10:
    actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
    actionBuilder7 = [(HUMediaSelectionItemManager *)self actionBuilder];
    [actionSetBuilder updateAction:actionBuilder7];

    itemProviders = [(HFItemManager *)self itemProviders];
    v21 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:itemProviders senderSelector:a2];

    itemCopy = v26;
  }
}

- (void)setSelectedVolumeItem:(id)item
{
  itemCopy = item;
  if (self->_selectedVolumeItem != itemCopy)
  {
    v17 = itemCopy;
    objc_storeStrong(&self->_selectedVolumeItem, item);
    useCurrentVolumeItem = [(HUMediaSelectionItemManager *)self useCurrentVolumeItem];

    if (useCurrentVolumeItem == v17)
    {
      actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
      targetVolume = [actionBuilder targetVolume];
      [(HUMediaSelectionItemManager *)self setLastSelectedVolume:targetVolume];

      actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
      [actionBuilder2 setTargetVolume:0];
    }

    else
    {
      useCustomVolumeItem = [(HUMediaSelectionItemManager *)self useCustomVolumeItem];

      if (useCustomVolumeItem != v17)
      {
LABEL_7:
        actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
        actionBuilder3 = [(HUMediaSelectionItemManager *)self actionBuilder];
        [actionSetBuilder updateAction:actionBuilder3];

        itemProviders = [(HFItemManager *)self itemProviders];
        v16 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:itemProviders senderSelector:a2];

        itemCopy = v17;
        goto LABEL_8;
      }

      actionBuilder2 = [(HUMediaSelectionItemManager *)self _volumeForMediaAction];
      actionBuilder4 = [(HUMediaSelectionItemManager *)self actionBuilder];
      [actionBuilder4 setTargetVolume:actionBuilder2];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (HFPlaybackArchive)pickedPlaybackArchive
{
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  playbackArchive = [actionBuilder playbackArchive];

  return playbackArchive;
}

- (void)setPickedPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  mediaPlayerPlaybackArchive = [archiveCopy mediaPlayerPlaybackArchive];
  displayProperties = [mediaPlayerPlaybackArchive displayProperties];
  chosenMediaItem = [(HUMediaSelectionItemManager *)self chosenMediaItem];
  [chosenMediaItem setPlaybackArchiveDisplayProperties:displayProperties];

  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  [actionBuilder setPlaybackArchive:archiveCopy];

  actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
  actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
  [actionSetBuilder updateAction:actionBuilder2];

  itemProviders = [(HFItemManager *)self itemProviders];
  v12 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:itemProviders senderSelector:a2];
}

- (void)mediaPlaybackOptionsItem:(id)item switchedOn:(BOOL)on
{
  onCopy = on;
  itemCopy = item;
  shuffleItem = [(HUMediaSelectionItemManager *)self shuffleItem];

  if (shuffleItem == itemCopy)
  {
    actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
    playbackArchive = [actionBuilder playbackArchive];
    [playbackArchive setShuffleEnabled:onCopy];
  }

  else
  {
    repeatItem = [(HUMediaSelectionItemManager *)self repeatItem];

    if (repeatItem != itemCopy)
    {
      goto LABEL_6;
    }

    actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
    playbackArchive = [actionBuilder playbackArchive];
    [playbackArchive setRepeatEnabled:onCopy];
  }

LABEL_6:
  actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
  actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
  [actionSetBuilder updateAction:actionBuilder2];
}

- (void)mediaVolumeValueChanged:(double)changed
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:changed];
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  [actionBuilder setTargetVolume:v4];

  actionSetBuilder = [(HUMediaSelectionItemManager *)self actionSetBuilder];
  actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
  [actionSetBuilder updateAction:actionBuilder2];
}

- (id)_buildItemProvidersForHome:(id)home
{
  v92[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_alloc(MEMORY[0x277D14B38]);
  v91[0] = *MEMORY[0x277D13F60];
  v6 = v91[0];
  v7 = HFLocalizedString();
  v91[1] = @"HOMediaSelectionPlayControlResultKey";
  v92[0] = v7;
  v92[1] = &unk_2824917A8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v9 = [v5 initWithResults:v8];
  [(HUMediaSelectionItemManager *)self setPlaybackStateAdjustVolumeOnlyItem:v9];

  v10 = objc_alloc(MEMORY[0x277D14B38]);
  v89[0] = v6;
  v11 = HFLocalizedString();
  v89[1] = @"HOMediaSelectionPlayControlResultKey";
  v90[0] = v11;
  v90[1] = &unk_2824917C0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v13 = [v10 initWithResults:v12];
  [(HUMediaSelectionItemManager *)self setPlaybackStatePauseItem:v13];

  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v87[0] = v6;
  v15 = HFLocalizedString();
  v87[1] = @"HOMediaSelectionPlayControlResultKey";
  v88[0] = v15;
  v88[1] = &unk_2824917D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v17 = [v14 initWithResults:v16];
  [(HUMediaSelectionItemManager *)self setPlaybackStateResumeItem:v17];

  v18 = objc_alloc(MEMORY[0x277D14B38]);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke;
  v78[3] = &unk_277DB7478;
  v78[4] = self;
  v19 = [v18 initWithResultsBlock:v78];
  [(HUMediaSelectionItemManager *)self setPlaybackStatePlayItem:v19];

  playbackStatePlayItem = [(HUMediaSelectionItemManager *)self playbackStatePlayItem];
  v86[0] = playbackStatePlayItem;
  playbackStatePauseItem = [(HUMediaSelectionItemManager *)self playbackStatePauseItem];
  v86[1] = playbackStatePauseItem;
  playbackStateResumeItem = [(HUMediaSelectionItemManager *)self playbackStateResumeItem];
  v86[2] = playbackStateResumeItem;
  playbackStateAdjustVolumeOnlyItem = [(HUMediaSelectionItemManager *)self playbackStateAdjustVolumeOnlyItem];
  v86[3] = playbackStateAdjustVolumeOnlyItem;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:4];
  [(HUMediaSelectionItemManager *)self setPlaybackStateItems:v24];

  selectedPlaybackStateItemBasedOnActionBuilderState = [(HUMediaSelectionItemManager *)self selectedPlaybackStateItemBasedOnActionBuilderState];
  [(HUMediaSelectionItemManager *)self setSelectedPlaybackStateItem:selectedPlaybackStateItemBasedOnActionBuilderState];

  objc_initWeak(&location, self);
  v26 = objc_alloc(MEMORY[0x277D14B38]);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2;
  v76[3] = &unk_277DBDDF0;
  v76[4] = self;
  v76[5] = a2;
  v27 = [v26 initWithResultsBlock:v76];
  [(HUMediaSelectionItemManager *)self setMediaPickerItem:v27];

  v28 = [HUMediaItem alloc];
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  playbackArchive = [actionBuilder playbackArchive];
  mediaPlayerPlaybackArchive = [playbackArchive mediaPlayerPlaybackArchive];
  displayProperties = [mediaPlayerPlaybackArchive displayProperties];
  v33 = [(HUMediaItem *)v28 initWithPlaybackArchiveDisplayProperties:displayProperties];
  [(HUMediaSelectionItemManager *)self setChosenMediaItem:v33];

  chosenMediaItem = [(HUMediaSelectionItemManager *)self chosenMediaItem];
  v85[0] = chosenMediaItem;
  mediaPickerItem = [(HUMediaSelectionItemManager *)self mediaPickerItem];
  v85[1] = mediaPickerItem;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  [(HUMediaSelectionItemManager *)self setMediaPickerRowItems:v36];

  v37 = objc_alloc(MEMORY[0x277D14B38]);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_73;
  v74[3] = &unk_277DB7448;
  objc_copyWeak(&v75, &location);
  v38 = [v37 initWithResultsBlock:v74];
  [(HUMediaSelectionItemManager *)self setRepeatItem:v38];

  v39 = objc_alloc(MEMORY[0x277D14B38]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2_77;
  v72[3] = &unk_277DB7448;
  objc_copyWeak(&v73, &location);
  v40 = [v39 initWithResultsBlock:v72];
  [(HUMediaSelectionItemManager *)self setShuffleItem:v40];

  repeatItem = [(HUMediaSelectionItemManager *)self repeatItem];
  v84[0] = repeatItem;
  shuffleItem = [(HUMediaSelectionItemManager *)self shuffleItem];
  v84[1] = shuffleItem;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
  [(HUMediaSelectionItemManager *)self setPlaybackOptionsItems:v43];

  v44 = objc_alloc(MEMORY[0x277D14B38]);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_3_81;
  v71[3] = &unk_277DB7478;
  v71[4] = self;
  v45 = [v44 initWithResultsBlock:v71];
  [(HUMediaSelectionItemManager *)self setUseCurrentVolumeItem:v45];

  v46 = objc_alloc(MEMORY[0x277D14B38]);
  v82 = v6;
  v47 = HFLocalizedString();
  v83 = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v49 = [v46 initWithResults:v48];
  [(HUMediaSelectionItemManager *)self setUseCustomVolumeItem:v49];

  selectedVolumeItemBasedOnActionBuilderState = [(HUMediaSelectionItemManager *)self selectedVolumeItemBasedOnActionBuilderState];
  [(HUMediaSelectionItemManager *)self setSelectedVolumeItem:selectedVolumeItemBasedOnActionBuilderState];

  v51 = objc_alloc(MEMORY[0x277D14B38]);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_4_88;
  v69[3] = &unk_277DB7448;
  objc_copyWeak(&v70, &location);
  v52 = [v51 initWithResultsBlock:v69];
  [(HUMediaSelectionItemManager *)self setVolumeSliderItem:v52];

  useCurrentVolumeItem = [(HUMediaSelectionItemManager *)self useCurrentVolumeItem];
  v81[0] = useCurrentVolumeItem;
  useCustomVolumeItem = [(HUMediaSelectionItemManager *)self useCustomVolumeItem];
  v81[1] = useCustomVolumeItem;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  [(HUMediaSelectionItemManager *)self setCustomVolumeItems:v55];

  volumeSliderItem = [(HUMediaSelectionItemManager *)self volumeSliderItem];
  v80 = volumeSliderItem;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  [(HUMediaSelectionItemManager *)self setVolumeSliderItems:v57];

  v58 = MEMORY[0x277CBEB58];
  playbackStateItems = [(HUMediaSelectionItemManager *)self playbackStateItems];
  v60 = [v58 setWithArray:playbackStateItems];

  mediaPickerRowItems = [(HUMediaSelectionItemManager *)self mediaPickerRowItems];
  [v60 addObjectsFromArray:mediaPickerRowItems];

  customVolumeItems = [(HUMediaSelectionItemManager *)self customVolumeItems];
  [v60 addObjectsFromArray:customVolumeItems];

  volumeSliderItems = [(HUMediaSelectionItemManager *)self volumeSliderItems];
  [v60 addObjectsFromArray:volumeSliderItems];

  playbackOptionsItems = [(HUMediaSelectionItemManager *)self playbackOptionsItems];
  [v60 addObjectsFromArray:playbackOptionsItems];

  v65 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v60];
  v79 = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];

  objc_destroyWeak(&v70);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&location);

  return v66;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke(id *a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D2C900];
  v16[0] = *MEMORY[0x277D13F60];
  v6 = HFLocalizedString();
  v17[0] = v6;
  v17[1] = &unk_2824917D8;
  v7 = *MEMORY[0x277D13EA8];
  v16[1] = @"HOMediaSelectionPlayControlResultKey";
  v16[2] = v7;
  v8 = MEMORY[0x277CCABB0];
  v9 = [MEMORY[0x277D14CE8] supportsMediaPicker];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v1 = [a1[4] lastSelectedArchive];
    if (v1)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      a1 = [a1[4] actionBuilder];
      v2 = [a1 playbackArchive];
      v3 = [v2 mediaPlayerPlaybackArchive];
      v11 = v3 == 0;
      v10 = 1;
    }
  }

  v12 = [v8 numberWithInt:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [v5 futureWithResult:v13];

  if (v10)
  {
  }

  if ((v9 & 1) == 0)
  {
  }

  return v14;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionPickerButton", @"HUMediaSelectionPickerButton", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  if (+[HUMediaAccountUtilities isMusicAppInstalled])
  {
    v41 = +[HUMediaAccountUtilities isAppleMusicSubscriptionAvailable];
    v4 = [*(a1 + 32) actionSetBuilder];
    v5 = [v4 mediaAction];
    v6 = [v5 mediaProfiles];

    v7 = [v6 hf_appleTVMediaProfiles];
    v40 = v6;
    v8 = [v6 hf_homePodMediaProfiles];
    v9 = [v7 setByAddingObjectsFromSet:v8];
    v10 = MEMORY[0x277D2C900];
    v62 = @"HOMediaSelectionPickingForExternalPlayerKey";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    v63[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v39 = [v10 futureWithResult:v12];

    if (![v9 count])
    {
      v13 = MEMORY[0x277CBEB98];
      v38 = [*(a1 + 32) actionSetBuilder];
      v14 = [v38 home];
      v15 = [v14 hf_primaryResidentDevice];
      v16 = [v15 hf_linkedAccessory];
      v17 = [v16 mediaProfile];
      v18 = [v13 na_setWithSafeObject:v17];

      v19 = [v18 hf_appleTVMediaProfiles];

      v20 = [v18 hf_homePodMediaProfiles];

      v9 = v18;
      v8 = v20;
      v7 = v19;
    }

    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413314;
      v53 = v22;
      v54 = 2112;
      v55 = v23;
      v56 = 2112;
      v57 = v9;
      v58 = 2112;
      v59 = v7;
      v60 = 2112;
      v61 = v8;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ appleMediaProfiles [%@] appleTVMediaProfiles [%@] homePodMediaProfiles [%@]", buf, 0x34u);
    }

    v24 = MEMORY[0x277D2C900];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_59;
    v45[3] = &unk_277DBDDC8;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v46 = v9;
    v47 = v25;
    v49 = v8;
    v50 = v26;
    v48 = v7;
    v27 = v8;
    v28 = v7;
    v29 = v9;
    v30 = [v24 futureWithBlock:v45];
    v31 = MEMORY[0x277D2C900];
    v51[0] = v41;
    v51[1] = v39;
    v51[2] = v30;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    v33 = [v31 combineAllFutures:v32];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_7;
    v42[3] = &unk_277DB7D10;
    v34 = v2;
    v35 = *(a1 + 40);
    v43 = v34;
    v44 = v35;
    v36 = [v33 flatMap:v42];
  }

  else
  {
    [v2 setObject:&unk_2824917A8 forKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
    v36 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  return v36;
}

void __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_59(uint64_t a1, void *a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  v48 = v5;
  if (v5 && [*(a1 + 32) count])
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v66 = v7;
      v67 = 2112;
      v68 = v8;
      v69 = 2112;
      v70 = v48;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ iTunes Account [%@]", buf, 0x20u);
    }

    v9 = [*(a1 + 40) home];
    v10 = [v9 isMultiUserEnabled];

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v66 = v12;
      v67 = 2112;
      v68 = v13;
      v69 = 1024;
      LODWORD(v70) = v10;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ isMultiUserEnabled [%d]", buf, 0x1Cu);
    }

    v43 = v3;
    v46 = v10;
    if (v10)
    {
      v14 = [*(a1 + 40) home];
      v15 = [v14 currentUser];
      v16 = [*(a1 + 40) home];
      v17 = [v15 mediaContentProfileAccessControlForHome:v16];
      v18 = [v17 accessories];

      v19 = objc_alloc(MEMORY[0x277D14C98]);
      v20 = [*(a1 + 40) home];
      v21 = [*(a1 + 40) home];
      v22 = [v21 currentUser];
      v23 = [v19 initWithHome:v20 user:v22 nameStyle:0];
      v47 = [v23 isIdentifyVoiceEnabled];
    }

    else
    {
      v47 = 0;
      v18 = MEMORY[0x277CBEBF8];
    }

    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      v26 = NSStringFromSelector(*(a1 + 64));
      obja = [*(a1 + 40) home];
      v27 = [obja hf_displayName];
      v28 = [*(a1 + 40) home];
      v29 = [v28 currentUser];
      v30 = [v29 name];
      *buf = 138413570;
      v66 = v25;
      v67 = 2112;
      v68 = v26;
      v69 = 2112;
      v70 = v27;
      v71 = 2112;
      v72 = v30;
      v73 = 2112;
      v74 = v18;
      v75 = 1024;
      v76 = v47;
      _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@ home [%@] currentUser [%@] appleTVsWithTVProfiles [%@] vrEnabled [%d]", buf, 0x3Au);
    }

    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = *(a1 + 32);
    v32 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v61;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v61 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v60 + 1) + 8 * i);
          v37 = MEMORY[0x277D2C900];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_63;
          v51[3] = &unk_277DBDDA0;
          v52 = *(a1 + 48);
          v53 = v36;
          v54 = *(a1 + 56);
          v58 = v46;
          v38 = v18;
          v59 = v47;
          v39 = *(a1 + 40);
          v55 = v38;
          v56 = v39;
          v57 = v48;
          v40 = [v37 futureWithBlock:v51];
          [v31 addObject:v40];
        }

        v33 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v33);
    }

    v41 = [MEMORY[0x277D2C900] combineAllFutures:v31];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_5;
    v49[3] = &unk_277DB7628;
    v3 = v43;
    v50 = v43;
    v42 = [v41 addCompletionBlock:v49];
  }

  else
  {
    v77 = @"HOMediaSelectionShowLibraryContentKey";
    v78[0] = MEMORY[0x277CBEC28];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [v3 finishWithResult:v18];
  }
}

void __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:*(a1 + 40)];
  v5 = [*(a1 + 48) containsObject:*(a1 + 40)];
  v6 = v5;
  if ((v4 & 1) == 0 && (v5 & 1) == 0)
  {
    [v3 finishWithResult:MEMORY[0x277CBEC28]];
  }

  if (*(a1 + 80) != 1)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    v7 = [*(a1 + 40) accessories];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2_64;
    v18[3] = &unk_277DB8EC0;
    v19 = *(a1 + 56);
    v8 = [v7 na_any:v18];

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v12 = MEMORY[0x277CCABB0];
      v13 = *(a1 + 72);
      v11 = [*(a1 + 40) hf_appleMusicCurrentLoggedInAccount];
      v14 = [v12 numberWithBool:{objc_msgSend(v13, "hasSameAppleMusicServiceAltDSID:", v11)}];
      [v3 finishWithResult:v14];

      goto LABEL_12;
    }
  }

  else if (!v6 || *(a1 + 81) != 1)
  {
    goto LABEL_11;
  }

  v9 = [MEMORY[0x277D14400] sharedInstance];
  v10 = [*(a1 + 64) home];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_4;
  v15[3] = &unk_277DB7C78;
  v16 = v3;
  v17 = *(a1 + 72);
  [v9 getHomeMediaAccountForHome:v10 withCompletion:v15];

  v11 = v16;
LABEL_12:
}

uint64_t __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_3;
  v8[3] = &unk_277DB8EC0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "hasSameAppleMusicServiceAltDSID:", a2)}];
  [v2 finishWithResult:v3];
}

void __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 na_all:&__block_literal_global_125];
  v4 = *(a1 + 32);
  v7 = @"HOMediaSelectionShowLibraryContentKey";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 finishWithResult:v6];
}

uint64_t __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_7(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [*(a1 + 32) addEntriesFromDictionary:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = *(a1 + 32);
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ mediaPicker result [%@]", buf, 0x16u);
  }

  v15 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v15;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_73(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained actionBuilder];
  v3 = [v2 playbackArchive];
  [v3 isRepeatEnabled];

  v4 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierRepeat", @"HUMediaSelectionQueueModifierRepeat", 1);
  v11[0] = v5;
  v10[1] = *MEMORY[0x277D14068];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 futureWithResult:v7];

  return v8;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_2_77(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained actionBuilder];
  v3 = [v2 playbackArchive];
  [v3 isShuffleEnabled];

  v4 = MEMORY[0x277D2C900];
  v10[0] = *MEMORY[0x277D13F60];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierShuffle", @"HUMediaSelectionQueueModifierShuffle", 1);
  v11[0] = v5;
  v10[1] = *MEMORY[0x277D14068];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 futureWithResult:v7];

  return v8;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_3_81(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v11[0] = *MEMORY[0x277D13F60];
  v3 = HFLocalizedString();
  v11[1] = *MEMORY[0x277D13EA8];
  v12[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) selectedPlaybackStateItem];
  v6 = [*(a1 + 32) playbackStateAdjustVolumeOnlyItem];
  v7 = [v4 numberWithInt:v5 == v6];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v2 futureWithResult:v8];

  return v9;
}

id __58__HUMediaSelectionItemManager__buildItemProvidersForHome___block_invoke_4_88(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained actionBuilder];
  v5 = [v4 targetVolume];

  [v2 setObject:v5 forKeyedSubscript:@"HOMediaVolumeResultKey"];
  v6 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CBEB98];
  playbackStateItems = [(HUMediaSelectionItemManager *)self playbackStateItems];
  v8 = [v6 setWithArray:playbackStateItems];
  v9 = [itemsCopy intersectsSet:v8];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMediaSelectionActionSectionIdentifier"];
    playbackStateItems2 = [(HUMediaSelectionItemManager *)self playbackStateItems];
    [v10 setItems:playbackStateItems2];

    [array addObject:v10];
  }

  v12 = MEMORY[0x277CBEB98];
  mediaPickerRowItems = [(HUMediaSelectionItemManager *)self mediaPickerRowItems];
  v14 = [v12 setWithArray:mediaPickerRowItems];
  v15 = [itemsCopy intersectsSet:v14];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMediaSelectionPickerSectionIdentifier"];
    mediaPickerRowItems2 = [(HUMediaSelectionItemManager *)self mediaPickerRowItems];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __64__HUMediaSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v45[3] = &unk_277DBDE18;
    v46 = itemsCopy;
    v18 = [mediaPickerRowItems2 na_filter:v45];
    [v16 setItems:v18];

    [array addObject:v16];
  }

  v19 = MEMORY[0x277CBEB98];
  playbackOptionsItems = [(HUMediaSelectionItemManager *)self playbackOptionsItems];
  v21 = [v19 setWithArray:playbackOptionsItems];
  v22 = [itemsCopy intersectsSet:v21];

  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMediaSelectionOptionsSectionIdentifier"];
    playbackOptionsItems2 = [(HUMediaSelectionItemManager *)self playbackOptionsItems];
    [v23 setItems:playbackOptionsItems2];

    [array addObject:v23];
  }

  v25 = MEMORY[0x277CBEB98];
  customVolumeItems = [(HUMediaSelectionItemManager *)self customVolumeItems];
  v27 = [v25 setWithArray:customVolumeItems];
  v28 = [itemsCopy intersectsSet:v27];

  if (v28)
  {
    v29 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMediaSelectionVolumeSelectionSectionIdentifier"];
    customVolumeItems2 = [(HUMediaSelectionItemManager *)self customVolumeItems];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __64__HUMediaSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
    v43[3] = &unk_277DBDE18;
    v44 = itemsCopy;
    v31 = [customVolumeItems2 na_filter:v43];
    [v29 setItems:v31];

    v32 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionVolumeSectionTitle", @"HUMediaSelectionVolumeSectionTitle", 1);
    [v29 setHeaderTitle:v32];

    [array addObject:v29];
  }

  v33 = MEMORY[0x277CBEB98];
  volumeSliderItems = [(HUMediaSelectionItemManager *)self volumeSliderItems];
  v35 = [v33 setWithArray:volumeSliderItems];
  v36 = [itemsCopy intersectsSet:v35];

  if (v36)
  {
    v37 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HOMediaSelectionVolumeSliderSectionIdentifier"];
    volumeSliderItems2 = [(HUMediaSelectionItemManager *)self volumeSliderItems];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __64__HUMediaSelectionItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
    v41[3] = &unk_277DBDE18;
    v42 = itemsCopy;
    v39 = [volumeSliderItems2 na_filter:v41];
    [v37 setItems:v39];

    [array addObject:v37];
  }

  return array;
}

- (id)_itemsToHideInSet:(id)set
{
  v27.receiver = self;
  v27.super_class = HUMediaSelectionItemManager;
  v4 = [(HFItemManager *)&v27 _itemsToHideInSet:set];
  v5 = [v4 mutableCopy];

  selectedPlaybackStateItem = [(HUMediaSelectionItemManager *)self selectedPlaybackStateItem];
  playbackStatePlayItem = [(HUMediaSelectionItemManager *)self playbackStatePlayItem];

  if (selectedPlaybackStateItem != playbackStatePlayItem)
  {
    mediaPickerRowItems = [(HUMediaSelectionItemManager *)self mediaPickerRowItems];
    [v5 addObjectsFromArray:mediaPickerRowItems];

    playbackOptionsItems = [(HUMediaSelectionItemManager *)self playbackOptionsItems];
    [v5 addObjectsFromArray:playbackOptionsItems];
LABEL_9:

    goto LABEL_10;
  }

  pickedPlaybackArchive = [(HUMediaSelectionItemManager *)self pickedPlaybackArchive];
  mediaPlayerPlaybackArchive = [pickedPlaybackArchive mediaPlayerPlaybackArchive];

  if (!mediaPlayerPlaybackArchive)
  {
    chosenMediaItem = [(HUMediaSelectionItemManager *)self chosenMediaItem];
    [v5 addObject:chosenMediaItem];

    playbackOptionsItems2 = [(HUMediaSelectionItemManager *)self playbackOptionsItems];
    [v5 addObjectsFromArray:playbackOptionsItems2];
  }

  pickedPlaybackArchive2 = [(HUMediaSelectionItemManager *)self pickedPlaybackArchive];
  isRepeatSupported = [pickedPlaybackArchive2 isRepeatSupported];

  if ((isRepeatSupported & 1) == 0)
  {
    repeatItem = [(HUMediaSelectionItemManager *)self repeatItem];
    [v5 addObject:repeatItem];
  }

  pickedPlaybackArchive3 = [(HUMediaSelectionItemManager *)self pickedPlaybackArchive];
  isShuffleSupported = [pickedPlaybackArchive3 isShuffleSupported];

  if ((isShuffleSupported & 1) == 0)
  {
    playbackOptionsItems = [(HUMediaSelectionItemManager *)self shuffleItem];
    [v5 addObject:playbackOptionsItems];
    goto LABEL_9;
  }

LABEL_10:
  selectedPlaybackStateItem2 = [(HUMediaSelectionItemManager *)self selectedPlaybackStateItem];
  playbackStatePauseItem = [(HUMediaSelectionItemManager *)self playbackStatePauseItem];

  if (selectedPlaybackStateItem2 == playbackStatePauseItem)
  {
    customVolumeItems = [(HUMediaSelectionItemManager *)self customVolumeItems];
    [v5 addObjectsFromArray:customVolumeItems];

    volumeSliderItems = [(HUMediaSelectionItemManager *)self volumeSliderItems];
    [v5 addObjectsFromArray:volumeSliderItems];
  }

  selectedVolumeItem = [(HUMediaSelectionItemManager *)self selectedVolumeItem];
  useCurrentVolumeItem = [(HUMediaSelectionItemManager *)self useCurrentVolumeItem];

  if (selectedVolumeItem == useCurrentVolumeItem)
  {
    volumeSliderItems2 = [(HUMediaSelectionItemManager *)self volumeSliderItems];
    [v5 addObjectsFromArray:volumeSliderItems2];
  }

  return v5;
}

- (id)_volumeForMediaAction
{
  actionBuilder = [(HUMediaSelectionItemManager *)self actionBuilder];
  targetVolume = [actionBuilder targetVolume];
  v5 = targetVolume;
  if (targetVolume)
  {
    v6 = targetVolume;
  }

  else
  {
    lastSelectedVolume = [(HUMediaSelectionItemManager *)self lastSelectedVolume];
    v8 = lastSelectedVolume;
    if (lastSelectedVolume)
    {
      v6 = lastSelectedVolume;
    }

    else
    {
      actionBuilder2 = [(HUMediaSelectionItemManager *)self actionBuilder];
      mediaProfiles = [actionBuilder2 mediaProfiles];
      v6 = [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:mediaProfiles];
    }
  }

  return v6;
}

@end