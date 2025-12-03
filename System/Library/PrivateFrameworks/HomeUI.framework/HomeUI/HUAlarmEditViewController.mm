@interface HUAlarmEditViewController
+ (CGSize)desiredContentSize;
- (BOOL)_isAlarmTypeMedia;
- (BOOL)_isMusicAlarmSupportedInAccessory;
- (BOOL)_isNewAlarm;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isEdited;
- (HUAlarmEditViewController)initWithMediaProfileContainer:(id)container alarm:(id)alarm;
- (HUAlarmEditViewControllerDelegate)delegate;
- (double)_volumeSettingForCurrentEditingAlarm;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_configureSoundForMediaTypeAlarm:(id)alarm;
- (id)_dateComponents;
- (id)_datePickerCellForTableView:(id)view atIndexPath:(id)path;
- (id)_deleteAlarmButtonCellForTableView:(id)view atIndexPath:(id)path;
- (id)_mediaPropertiesTypeCellForTableView:(id)view atIndexpath:(id)indexpath;
- (id)_setupCell:(id)cell forTableView:(id)view indexPath:(id)path;
- (id)_volumeIconMaximum;
- (id)_volumeIconMinimum;
- (id)_volumeSliderCellForTableView:(id)view atIndexPath:(id)path;
- (id)_volumeTypeCellForTableView:(id)view atIndexpath:(id)indexpath;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonClicked:(id)clicked;
- (void)_checkAndPrepareEditingAlarmForMediaTypeAlarm;
- (void)_chooseMediaTapped;
- (void)_configureMediaIconView:(id)view withImage:(id)image;
- (void)_didTap:(id)tap;
- (void)_doneButtonClicked:(id)clicked;
- (void)_handlePickerChanged;
- (void)_loadArtworkForMediaAlarm;
- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)reason storeKitErrorObject:(id)object;
- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)content;
- (void)_updateAppleMusicSubscriptionStatus;
- (void)_updateCellForTableView:(id)view indexPath:(id)path;
- (void)_updateEnableStateForDoneButton:(BOOL)button;
- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm;
- (void)datePickerCell:(id)cell didSelectDate:(id)date;
- (void)dealloc;
- (void)loadView;
- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive;
- (void)mediaPickerDidPickPlaybackArchive:(id)archive;
- (void)saveAlarmOnlyIfEdited:(BOOL)edited;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value;
- (void)startEditingSetting:(int64_t)setting;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation HUAlarmEditViewController

+ (CGSize)desiredContentSize
{
  v2 = 320.0;
  v3 = 509.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (HUAlarmEditViewController)initWithMediaProfileContainer:(id)container alarm:(id)alarm
{
  containerCopy = container;
  alarmCopy = alarm;
  v43.receiver = self;
  v43.super_class = HUAlarmEditViewController;
  v9 = [(HUAlarmEditViewController *)&v43 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, container);
    v10->_accessorySupportsMusicAlarm = [(HUAlarmEditViewController *)v10 _isMusicAlarmSupportedInAccessory];
    v10->_isCustomVolumeSelected = 0;
    v10->_isDatePickerWheelScrolled = 0;
    objc_storeStrong(&v10->_originalAlarm, alarm);
    hf_parentRoom = [containerCopy hf_parentRoom];
    objc_storeStrong(&v10->_selectedRoom, hf_parentRoom);
    if (alarmCopy)
    {
      v12 = [alarmCopy mutableCopy];
      editedAlarm = v10->_editedAlarm;
      v10->_editedAlarm = v12;

      v14 = _HULocalizedStringWithDefaultValue(@"HUAlarmEdit", @"HUAlarmEdit", 1);
      if ([(HUAlarmEditViewController *)v10 accessorySupportsMusicAlarm]&& v10->_editedAlarm)
      {
        [(HUAlarmEditViewController *)v10 _checkAndPrepareEditingAlarmForMediaTypeAlarm];
      }
    }

    else
    {
      alarm = [MEMORY[0x277D296F0] alarm];
      v16 = v10->_editedAlarm;
      v10->_editedAlarm = alarm;

      v14 = _HULocalizedStringWithDefaultValue(@"HUCreateNewAlarm", @"HUCreateNewAlarm", 1);
      mediaProfileContainer = [(HUAlarmEditViewController *)v10 mediaProfileContainer];
      mediaProfiles = [mediaProfileContainer mediaProfiles];
      v19 = [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:mediaProfiles];
      [v19 floatValue];
      [(HUAlarmEditViewController *)v10 setSelectedCustomVolumeLevel:v20];
    }

    if (_os_feature_enabled_impl())
    {
      siriContext = [(MTMutableAlarm *)v10->_editedAlarm siriContext];
      v22 = *MEMORY[0x277CFCED0];
      v23 = [siriContext objectForKey:*MEMORY[0x277CFCED0]];

      if (!v23)
      {
        if (siriContext)
        {
          v24 = [siriContext mutableCopy];
        }

        else
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v25 = v24;
        accessories = [containerCopy accessories];
        anyObject = [accessories anyObject];
        v28 = COAlarmSiriContextTargetReferenceForAccessory();
        [v25 setObject:v28 forKey:v22];

        [(MTMutableAlarm *)v10->_editedAlarm setSiriContext:v25];
        v14 = v41;
        hf_parentRoom = v42;
      }
    }

    v10->_editingAlarmSetting = -1;
    [(HUAlarmEditViewController *)v10 setTitle:v14];
    [(HUAlarmEditViewController *)v10 setEdgesForExtendedLayout:0];
    v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v10 action:sel__cancelButtonClicked_];
    navigationItem = [(HUAlarmEditViewController *)v10 navigationItem];
    [navigationItem setLeftBarButtonItem:v29];

    LODWORD(v29) = [(HUAlarmEditViewController *)v10 accessorySupportsMusicAlarm];
    v31 = objc_alloc(MEMORY[0x277D751E0]);
    if (v29)
    {
      v32 = [v31 initWithBarButtonSystemItem:0 target:v10 action:sel__doneButtonClicked_];
      navigationItem2 = [(HUAlarmEditViewController *)v10 navigationItem];
      [navigationItem2 setRightBarButtonItem:v32];

      if ([(HUAlarmEditViewController *)v10 _isNewAlarm]|| ![(HUAlarmEditViewController *)v10 _isAlarmTypeMedia])
      {
        _hasUserSelectedToneAlarm = [(HUAlarmEditViewController *)v10 _hasUserSelectedToneAlarm];
      }

      else
      {
        _hasUserSelectedToneAlarm = [(HUAlarmEditViewController *)v10 _isAlarmTypeMedia];
      }

      [(HUAlarmEditViewController *)v10 _updateEnableStateForDoneButton:_hasUserSelectedToneAlarm];
    }

    else
    {
      v35 = [v31 initWithBarButtonSystemItem:3 target:v10 action:sel__doneButtonClicked_];
      navigationItem3 = [(HUAlarmEditViewController *)v10 navigationItem];
      [navigationItem3 setRightBarButtonItem:v35];
    }

    if ((HUIsPhoneIdiom() & 1) == 0)
    {
      [objc_opt_class() desiredContentSize];
      [(HUAlarmEditViewController *)v10 setPreferredContentSize:?];
    }

    v37 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v10 action:sel__didTap_];
    tapGestureRecognizer = v10->_tapGestureRecognizer;
    v10->_tapGestureRecognizer = v37;

    view = [(HUAlarmEditViewController *)v10 view];
    [view addGestureRecognizer:v10->_tapGestureRecognizer];

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer setDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(NSURLSessionDataTask *)self->_artworkFetchTask cancel];
  timePicker = [(HUAlarmEditView *)self->_editAlarmView timePicker];
  [timePicker removeTarget:self action:sel__handlePickerChanged forControlEvents:4096];

  v4.receiver = self;
  v4.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v4 dealloc];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v9 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [(HUAlarmEditViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "horizontalSizeClass") == 2 && objc_msgSend(collectionCopy, "verticalSizeClass") == 2)
  {
    isAMac = [MEMORY[0x277D14CE8] isAMac];

    if ((isAMac & 1) == 0)
    {
      [(HUAlarmEditViewController *)self saveAlarmOnlyIfEdited:1];
    }
  }

  else
  {
  }
}

- (void)_didTap:(id)tap
{
  view = [(HUAlarmEditViewController *)self view];
  [view endEditing:1];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [touchCopy view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    view2 = [touchCopy view];
    superview = [view2 superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  tapGestureRecognizer = [(HUAlarmEditViewController *)self tapGestureRecognizer];
  v13 = tapGestureRecognizer != recognizerCopy;

LABEL_6:
  return v13;
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(HUAlarmEditViewController *)self view];
  [view endEditing:1];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  view = [(HUAlarmEditViewController *)self view];
  [view endEditing:1];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (HUIsVeryWidePhoneSize())
  {
    return 30;
  }

  if (HUIsPadIdiom())
  {
    return 30;
  }

  return 2;
}

- (void)loadView
{
  v3 = [HUAlarmEditView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = [(HUAlarmEditView *)v3 initWithFrame:[(HUAlarmEditViewController *)self accessorySupportsMusicAlarm] supportsMusicAlarm:v5, v6, v7, v8];
  editAlarmView = self->_editAlarmView;
  self->_editAlarmView = v9;

  [(HUAlarmEditView *)self->_editAlarmView setAutoresizingMask:16];
  settingsTable = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable setDataSource:self];

  settingsTable2 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable2 setDelegate:self];

  v13 = *MEMORY[0x277D76F30];
  settingsTable3 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable3 setRowHeight:v13];

  settingsTable4 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable4 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];

  settingsTable5 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable5 _setDisplaysCellContentStringsOnTapAndHold:1];

  if (HUIsPadIdiom())
  {
    [(HUAlarmEditView *)self->_editAlarmView setAutoresizingMask:18];
  }

  settingsTable6 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  v18 = objc_alloc(MEMORY[0x277D75D18]);
  v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [settingsTable6 setTableFooterView:v19];

  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    settingsTable7 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable7 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUSnoozeSwitchCellReuseIdentifier"];

    settingsTable8 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable8 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUVolumeSliderCellReuseIdentifier"];

    settingsTable9 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable9 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUChooseMediahCellReuseIdentifier"];

    settingsTable10 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable10 registerClass:objc_opt_class() forCellReuseIdentifier:@"HURepeatMusicSwitchCellReuseIdentifier"];

    settingsTable11 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable11 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUShuffleMusicSwitchCellReuseIdentifier"];

    settingsTable12 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [settingsTable12 registerClass:v26 forCellReuseIdentifier:v28];

    settingsTable13 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable13 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUPlayToneCellIdentifier"];

    settingsTable14 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [settingsTable14 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUPlayMediaCellIdentifier"];

    [(HUAlarmEditViewController *)self _updateAppleMusicSubscriptionStatus];
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
    [v31 setHour:{objc_msgSend(editedAlarm, "hour")}];

    editedAlarm2 = [(HUAlarmEditViewController *)self editedAlarm];
    [v31 setMinute:{objc_msgSend(editedAlarm2, "minute")}];

    timePicker = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    timePicker2 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    calendar = [timePicker2 calendar];
    v37 = [calendar dateFromComponents:v31];
    [timePicker setDate:v37];

    timePicker3 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    [timePicker3 addTarget:self action:sel__handlePickerChanged forControlEvents:4096];
  }

  v39 = self->_editAlarmView;

  [(HUAlarmEditViewController *)self setView:v39];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v8 viewWillAppear:appear];
  self->_editingAlarmSetting = -1;
  settingsTable = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable reloadData];

  settingsTable2 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  settingsTable3 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  indexPathForSelectedRow = [settingsTable3 indexPathForSelectedRow];
  [settingsTable2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(HUAlarmEditViewController *)self delegate];
  [delegate alarmEditControllerGettingDismissed:self];

  v6.receiver = self;
  v6.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidUnload
{
  editAlarmView = self->_editAlarmView;
  self->_editAlarmView = 0;

  v4.receiver = self;
  v4.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v4 viewDidUnload];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    _isNewAlarm = [(HUAlarmEditViewController *)self _isNewAlarm];
    _isAlarmTypeMedia = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
    if (_isNewAlarm)
    {
      _hasUserSelectedToneAlarm = [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm];
      if (_isAlarmTypeMedia)
      {
        if (_hasUserSelectedToneAlarm)
        {
          return 6;
        }

        if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
          if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
          {
            goto LABEL_27;
          }

          return 6;
        }

        return 3;
      }

      if (!_hasUserSelectedToneAlarm)
      {
        if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
LABEL_27:
          _hasUserSelectedCustomVolume = [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume];
LABEL_28:
          v10 = _hasUserSelectedCustomVolume == 0;
          v11 = 4;
          goto LABEL_30;
        }

        return 0;
      }
    }

    else
    {
      isAMac = [MEMORY[0x277D14CE8] isAMac];
      if (_isAlarmTypeMedia)
      {
        if ((isAMac & 1) == 0)
        {
          if ((HUIsPadIdiom() & 1) == 0)
          {
            v10 = ![(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume];
            v11 = 6;
LABEL_30:
            if (v10)
            {
              return v11;
            }

            else
            {
              return v11 + 1;
            }
          }

          return 6;
        }

        return 3;
      }

      if ((isAMac & 1) == 0 && (!HUIsPadIdiom() || ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]))
      {
        if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isNewAlarm])
        {
          return 3;
        }

        if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
          _hasUserSelectedCustomVolume2 = [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume];
          _hasUserSelectedCustomVolume = HUIsPhoneIdiom();
          if (!_hasUserSelectedCustomVolume2)
          {
            goto LABEL_28;
          }

          if (!_hasUserSelectedCustomVolume || [(HUAlarmEditViewController *)self _isNewAlarm])
          {
            return 5;
          }

          return 6;
        }

        return 0;
      }
    }

    return 2;
  }

  if (HUIsPadIdiom())
  {
    return 1;
  }

  if ([(HUAlarmEditViewController *)self _isNewAlarm])
  {
    return 1;
  }

  return 2;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (section > 2)
    {
      if (section <= 4)
      {
        if (section == 3)
        {
          if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| ![(HUAlarmEditViewController *)self _isNewAlarm]&& (![(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| [(HUAlarmEditViewController *)self _isNewAlarm]) && ([(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| [(HUAlarmEditViewController *)self _isNewAlarm]))
          {
            return 0;
          }
        }

        else if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| ![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
          return ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]&& [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]|| ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]&& ![(HUAlarmEditViewController *)self _isNewAlarm];
        }

        return 2;
      }

      if (section == 5)
      {
        return ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]&& [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]|| ![(HUAlarmEditViewController *)self _isNewAlarm]&& (HUIsPhoneIdiom() & 1) != 0;
      }

      if (section != 6)
      {
        return 0;
      }

      return HUIsPhoneIdiom();
    }

    if (!section)
    {
      return 3;
    }

    if (section == 1)
    {
      return 2;
    }

    if (section != 2)
    {
      return 0;
    }

    if ([(HUAlarmEditViewController *)self _isNewAlarm]&& ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
    {
      if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        return 1;
      }

      if ([MEMORY[0x277D14CE8] isAMac])
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      if ([(HUAlarmEditViewController *)self _isNewAlarm]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
        if ([(HUAlarmEditViewController *)self _isNewAlarm]|| ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
        {
          return 0;
        }

        return HUIsPhoneIdiom();
      }

      if ([MEMORY[0x277D14CE8] isAMac])
      {
        return 1;
      }

      if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else if (section)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_setupCell:(id)cell forTableView:(id)view indexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  pathCopy = path;
  v11 = [pathCopy row];
  section = [pathCopy section];
  if (section > 2)
  {
    if (section <= 4)
    {
      if (section == 3)
      {
        if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia]&& ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
        {
          v41 = [(HUAlarmEditViewController *)self _mediaPropertiesTypeCellForTableView:viewCopy atIndexpath:pathCopy];
          goto LABEL_61;
        }

LABEL_26:
        v41 = [(HUAlarmEditViewController *)self _volumeTypeCellForTableView:viewCopy atIndexpath:pathCopy];
LABEL_61:
        v13 = v41;
        goto LABEL_62;
      }

      if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
        if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
        {
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume])
      {
LABEL_46:
        v41 = [(HUAlarmEditViewController *)self _volumeSliderCellForTableView:viewCopy atIndexPath:pathCopy];
        goto LABEL_61;
      }

LABEL_47:
      v41 = [(HUAlarmEditViewController *)self _deleteAlarmButtonCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_61;
    }

    if (section == 5)
    {
      if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]&& [(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_46;
      }

      if ([(HUAlarmEditViewController *)self _isNewAlarm]&& ![(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    if (section == 6)
    {
      goto LABEL_47;
    }

LABEL_51:
    v41 = cellCopy;
LABEL_60:
    cellCopy = v41;
    goto LABEL_61;
  }

  if (!section)
  {
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setAdjustsFontSizeToFitWidth:0];

    hu_alarmsPrimaryTextColor = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    textLabel = [cellCopy textLabel];
    [textLabel setTextColor:hu_alarmsPrimaryTextColor];

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v56 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditLabel", @"HUAlarmEditLabel", 1);
        textLabel2 = [cellCopy textLabel];
        [textLabel2 setText:v56];

        editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
        displayTitle = [editedAlarm displayTitle];
      }

      else
      {
        if (v11 != 3)
        {
          goto LABEL_51;
        }

        v50 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
        textLabel3 = [cellCopy textLabel];
        [textLabel3 setText:v50];

        editedAlarm = [(HUAlarmEditViewController *)self selectedRoom];
        displayTitle = [editedAlarm name];
      }
    }

    else
    {
      if (!v11)
      {
        v41 = [(HUAlarmEditViewController *)self _datePickerCellForTableView:viewCopy atIndexPath:pathCopy];
        goto LABEL_61;
      }

      if (v11 != 1)
      {
        goto LABEL_51;
      }

      v35 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditRepeat", @"HUAlarmEditRepeat", 1);
      textLabel4 = [cellCopy textLabel];
      [textLabel4 setText:v35];

      detailTextLabel2 = [cellCopy detailTextLabel];
      [detailTextLabel2 setAdjustsFontSizeToFitWidth:1];

      detailTextLabel3 = [cellCopy detailTextLabel];
      [detailTextLabel3 setMinimumScaleFactor:0.705882353];

      editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
      [editedAlarm repeatSchedule];
      displayTitle = DateMaskToString();
    }

    v58 = displayTitle;
    detailTextLabel4 = [cellCopy detailTextLabel];
    [detailTextLabel4 setText:v58];

    [cellCopy setAccessoryType:1];
    goto LABEL_51;
  }

  if (section == 1)
  {
    detailTextLabel5 = [cellCopy detailTextLabel];
    [detailTextLabel5 setAdjustsFontSizeToFitWidth:0];

    hu_alarmsPrimaryTextColor2 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    textLabel5 = [cellCopy textLabel];
    [textLabel5 setTextColor:hu_alarmsPrimaryTextColor2];

    if (v11 == 1)
    {
      v45 = [viewCopy dequeueReusableCellWithIdentifier:@"HUPlayMediaCellIdentifier" forIndexPath:pathCopy];

      v52 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayMedia", @"HUAlarmPlayMedia", 1);
      textLabel6 = [v45 textLabel];
      [textLabel6 setText:v52];

      if ([(HUAlarmEditViewController *)self _shouldDisablePlayMedia])
      {
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        textLabel7 = [v45 textLabel];
        [textLabel7 setTextColor:systemGrayColor];

        if ([(HUAlarmEditViewController *)self _isNewAlarm])
        {
          [v45 setUserInteractionEnabled:0];
        }

        else
        {
          hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
          [v45 setUserInteractionEnabled:hfPlaybackArchive != 0];
        }
      }

      if (![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
LABEL_36:
        v48 = v45;
        v49 = 3;
LABEL_58:
        [v48 setAccessoryType:v49];
        goto LABEL_59;
      }
    }

    else
    {
      if (v11)
      {
        v45 = cellCopy;
LABEL_59:
        v41 = v45;
        goto LABEL_60;
      }

      v45 = [viewCopy dequeueReusableCellWithIdentifier:@"HUPlayToneCellIdentifier" forIndexPath:pathCopy];

      v46 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayTone", @"HUAlarmPlayTone", 1);
      textLabel8 = [v45 textLabel];
      [textLabel8 setText:v46];

      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
        goto LABEL_36;
      }
    }

    v48 = v45;
    v49 = 0;
    goto LABEL_58;
  }

  if (section != 2)
  {
    goto LABEL_51;
  }

  if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
  {
    goto LABEL_47;
  }

  v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"HUChooseMediahCellReuseIdentifier"];
  hu_alarmsPrimaryTextColor3 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
  textLabel9 = [v13 textLabel];
  [textLabel9 setTextColor:hu_alarmsPrimaryTextColor3];

  if (v11 == 1)
  {
    v60 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmChooseMedia", @"HUAlarmEditAlarmChooseMedia", 1);
    textLabel10 = [v13 textLabel];
    [textLabel10 setText:v60];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    textLabel11 = [v13 textLabel];
    [textLabel11 setTextColor:hf_keyColor];

    imageView = [v13 imageView];
    [imageView setImage:0];
  }

  else if (!v11)
  {
    if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia])
    {
      hfPlaybackArchive2 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      mediaPlayerPlaybackArchive = [hfPlaybackArchive2 mediaPlayerPlaybackArchive];
      displayProperties = [mediaPlayerPlaybackArchive displayProperties];
      title = [displayProperties title];
      textLabel12 = [v13 textLabel];
      [textLabel12 setText:title];

      hfPlaybackArchive3 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      mediaPlayerPlaybackArchive2 = [hfPlaybackArchive3 mediaPlayerPlaybackArchive];
      displayProperties2 = [mediaPlayerPlaybackArchive2 displayProperties];
      subtitle = [displayProperties2 subtitle];
      detailTextLabel6 = [v13 detailTextLabel];
      [detailTextLabel6 setText:subtitle];

      detailTextLabel7 = [v13 detailTextLabel];
      [detailTextLabel7 setAdjustsFontSizeToFitWidth:1];

      detailTextLabel8 = [v13 detailTextLabel];
      [detailTextLabel8 setMinimumScaleFactor:0.705882353];

      v28 = MEMORY[0x277D755B8];
      hfPlaybackArchive4 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      artworkImageData = [hfPlaybackArchive4 artworkImageData];
      detailTextLabel9 = [v28 imageWithData:artworkImageData];

      [(HUAlarmEditViewController *)self _configureMediaIconView:v13 withImage:detailTextLabel9];
      [v13 setUserInteractionEnabled:0];
    }

    else
    {
      [v13 setUserInteractionEnabled:1];
      hf_keyColor2 = [MEMORY[0x277D75348] hf_keyColor];
      textLabel13 = [v13 textLabel];
      [textLabel13 setTextColor:hf_keyColor2];

      imageView2 = [v13 imageView];
      [imageView2 setImage:0];

      v68 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmChooseMedia", @"HUAlarmEditAlarmChooseMedia", 1);
      textLabel14 = [v13 textLabel];
      [textLabel14 setText:v68];

      detailTextLabel9 = [v13 detailTextLabel];
      [detailTextLabel9 setText:0];
    }

    [v13 setAccessoryView:0];
  }

LABEL_62:

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  section = [pathCopy section];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];
  }

  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (section == 1)
    {
      v21 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUAlarmEditTableViewCellIdentifier"];

      v22 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditDelete", @"HUAlarmEditDelete", 1);
      textLabel = [v21 textLabel];
      [textLabel setText:v22];

      textLabel2 = [v21 textLabel];
      [textLabel2 setTextAlignment:1];

      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      textLabel3 = [v21 textLabel];
      [textLabel3 setTextColor:systemRedColor];

      v27 = v21;
LABEL_23:
      v11 = v27;
      v10 = v27;
      goto LABEL_24;
    }

    if (section)
    {
      v11 = 0;
      goto LABEL_24;
    }

    detailTextLabel = [v10 detailTextLabel];
    [detailTextLabel setAdjustsFontSizeToFitWidth:0];

    [v10 setAccessoryType:1];
    hu_alarmsPrimaryTextColor = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    textLabel4 = [v10 textLabel];
    [textLabel4 setTextColor:hu_alarmsPrimaryTextColor];

    if (v8 == 2)
    {
      v32 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
      textLabel5 = [v10 textLabel];
      [textLabel5 setText:v32];

      selectedRoom = [(HUAlarmEditViewController *)self selectedRoom];
      name = [selectedRoom name];
      detailTextLabel2 = [v10 detailTextLabel];
      [detailTextLabel2 setText:name];

      [v10 setAccessoryType:1];
      goto LABEL_22;
    }

    if (v8 == 1)
    {
      v28 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditLabel", @"HUAlarmEditLabel", 1);
      textLabel6 = [v10 textLabel];
      [textLabel6 setText:v28];

      editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
      displayTitle = [editedAlarm displayTitle];
    }

    else
    {
      if (v8)
      {
LABEL_22:
        v27 = v10;
        goto LABEL_23;
      }

      v15 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditRepeat", @"HUAlarmEditRepeat", 1);
      textLabel7 = [v10 textLabel];
      [textLabel7 setText:v15];

      detailTextLabel3 = [v10 detailTextLabel];
      [detailTextLabel3 setAdjustsFontSizeToFitWidth:1];

      detailTextLabel4 = [v10 detailTextLabel];
      [detailTextLabel4 setMinimumScaleFactor:0.705882353];

      editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
      [editedAlarm repeatSchedule];
      displayTitle = DateMaskToString();
    }

    v30 = displayTitle;
    detailTextLabel5 = [v10 detailTextLabel];
    [detailTextLabel5 setText:v30];

    goto LABEL_22;
  }

  v11 = 0;
  if (section <= 2)
  {
    if (section <= 2)
    {
LABEL_18:
      v11 = [(HUAlarmEditViewController *)self _setupCell:v10 forTableView:viewCopy indexPath:pathCopy];
    }
  }

  else if (section <= 5 || section == 6)
  {
    goto LABEL_18;
  }

LABEL_24:

  return v11;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    if ([(HUAlarmEditViewController *)self _isNewAlarm]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
    {
      if (section == 1)
      {
LABEL_5:
        v6 = _HULocalizedStringWithDefaultValue(@"HUAlarmMediaActionPlayUnavailableMessage", @"HUAlarmMediaActionPlayUnavailableMessage", 1);
        goto LABEL_8;
      }
    }

    else if (section == 2)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)_updateCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  accessorySupportsMusicAlarm = [(HUAlarmEditViewController *)self accessorySupportsMusicAlarm];
  v6 = pathCopy;
  if (accessorySupportsMusicAlarm)
  {
    section = [pathCopy section];
    v8 = [pathCopy row];
    v9 = v8;
    if (section != 4)
    {
      if (section == 1)
      {
        if (v8 == 1)
        {
          [(HUAlarmEditViewController *)self setIsPlayMediaSelected:1];
          if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
          {
            v13 = 0;
LABEL_18:
            [(HUAlarmEditViewController *)self _updateEnableStateForDoneButton:v13];
            goto LABEL_19;
          }

          _isAlarmTypeMedia = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
LABEL_17:
          v13 = _isAlarmTypeMedia;
          goto LABEL_18;
        }

        if (!v8)
        {
          [(HUAlarmEditViewController *)self setIsPlayMediaSelected:0];
          [(HUAlarmEditViewController *)self setIsCustomVolumeSelected:0];
          _isAlarmTypeMedia = [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm];
          goto LABEL_17;
        }

LABEL_19:
        editAlarmView = [(HUAlarmEditViewController *)self editAlarmView];
        settingsTable = [editAlarmView settingsTable];
        [settingsTable reloadData];

        v6 = pathCopy;
        goto LABEL_20;
      }

      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_19;
      }
    }

    if (v9 == 1)
    {
      selfCopy2 = self;
      v12 = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_19;
      }

      selfCopy2 = self;
      v12 = 0;
    }

    [(HUAlarmEditViewController *)selfCopy2 setIsCustomVolumeSelected:v12];
    goto LABEL_19;
  }

LABEL_20:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  section = [pathCopy section];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (section == 1)
    {
LABEL_31:
      delegate = [(HUAlarmEditViewController *)self delegate];
      originalAlarm = [(HUAlarmEditViewController *)self originalAlarm];
      [delegate alarmEditController:self didDeleteAlarm:originalAlarm];

      goto LABEL_32;
    }

    if (section || v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v9 = v7 + 1;
    selfCopy2 = self;
LABEL_27:
    [(HUAlarmEditViewController *)selfCopy2 startEditingSetting:v9];
    goto LABEL_32;
  }

  if (section <= 2)
  {
    if (section)
    {
      if (section != 1)
      {
        if (section != 2)
        {
          goto LABEL_32;
        }

        if ([(HUAlarmEditViewController *)self _isNewAlarm]|| [(HUAlarmEditViewController *)self _isAlarmTypeMedia]|| ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
        {
          [(HUAlarmEditViewController *)self _chooseMediaTapped];
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if ((v7 - 1) > 2)
    {
      goto LABEL_32;
    }

    selfCopy2 = self;
    v9 = v7;
    goto LABEL_27;
  }

  if (section <= 4)
  {
    if (section != 3 && HUIsPhoneIdiom() && ![(HUAlarmEditViewController *)self _isNewAlarm]&& ![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
    {
      goto LABEL_31;
    }

LABEL_20:
    [(HUAlarmEditViewController *)self _updateCellForTableView:viewCopy indexPath:pathCopy];
    goto LABEL_32;
  }

  if (section == 5)
  {
    if (![(HUAlarmEditViewController *)self _isNewAlarm]&& (![(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]|| ![(HUAlarmEditViewController *)self _isAlarmTypeMedia]))
    {
      goto LABEL_31;
    }
  }

  else if (section == 6 && ![(HUAlarmEditViewController *)self _isNewAlarm])
  {
    goto LABEL_31;
  }

LABEL_32:
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    goto LABEL_11;
  }

  if (section == 1)
  {
    v6 = @"HUAlarmEditAlarmSound";
  }

  else
  {
    if (section == 4)
    {
      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| ![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_11;
      }
    }

    else if (section != 3 || [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isAlarmTypeMedia])
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }

    v6 = @"HUAlarmEditAlarmVolume";
  }

  v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
LABEL_12:

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2 && -[HUAlarmEditViewController _isAlarmTypeMedia](self, "_isAlarmTypeMedia") && !objc_msgSend(pathCopy, "row"))
  {
    v6 = 100.0;
  }

  else
  {
    v6 = *MEMORY[0x277D76F30];
  }

  return v6;
}

- (void)_configureMediaIconView:(id)view withImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (imageCopy)
    {
      v7 = [imageCopy hu_imageScaledToSize:2 contentMode:{72.0, 72.0}];
      imageView = [viewCopy imageView];
      [imageView setImage:v7];
    }

    else
    {
      v7 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
      v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"music"];
      v10 = [v9 imageWithSymbolConfiguration:v7];
      imageView2 = [viewCopy imageView];
      [imageView2 setImage:v10];

      imageView3 = [viewCopy imageView];
      [imageView3 setContentMode:4];

      imageView = [MEMORY[0x277D75348] systemGrayColor];
      imageView4 = [viewCopy imageView];
      [imageView4 setTintColor:imageView];
    }

    imageView5 = [viewCopy imageView];
    layer = [imageView5 layer];
    [layer setCornerRadius:4.0];

    imageView6 = [viewCopy imageView];
    [imageView6 setClipsToBounds:1];

    imageView7 = [viewCopy imageView];
    [imageView7 setTranslatesAutoresizingMaskIntoConstraints:1];

    imageView8 = [viewCopy imageView];
    [imageView8 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }
}

- (id)_dateComponents
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_116_1);
    }

    v3 = qword_27C837EE0;
    editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
    [v3 setHour:{objc_msgSend(editedAlarm, "hour")}];

    editedAlarm2 = [(HUAlarmEditViewController *)self editedAlarm];
    [v3 setMinute:{objc_msgSend(editedAlarm2, "minute")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __44__HUAlarmEditViewController__dateComponents__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_27C837EE0;
  qword_27C837EE0 = v0;
}

- (void)_chooseMediaTapped
{
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    return;
  }

  if (_os_feature_enabled_impl())
  {
    v3 = [HUMediaSourceListViewController alloc];
    v4 = MEMORY[0x277CBEB98];
    mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
    v6 = [v4 setWithObject:mediaProfileContainer];
    appleMusicSubcriptionResult2 = [(HUMediaSourceListViewController *)v3 initForMediaProfileContainers:v6 forTarget:1];

    [appleMusicSubcriptionResult2 setDelegate:self];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:appleMusicSubcriptionResult2];
    [(HUAlarmEditViewController *)self presentViewController:v7 animated:1 completion:0];
LABEL_9:

    return;
  }

  v8 = +[HUMediaAccountUtilities isMusicAppInstalled];
  appleMusicSubcriptionResult = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
  appleMusicSubcriptionResult2 = appleMusicSubcriptionResult;
  if (!v8)
  {
    v7 = [appleMusicSubcriptionResult objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
    [(HUAlarmEditViewController *)self _presentMediaPickerUnavailablePromptWithReason:0 storeKitErrorObject:v7];
    goto LABEL_9;
  }

  v10 = [appleMusicSubcriptionResult objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];

  if (v10)
  {
    appleMusicSubcriptionResult2 = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
    v7 = [appleMusicSubcriptionResult2 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
    integerValue = [v7 integerValue];
    appleMusicSubcriptionResult3 = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
    v13 = [appleMusicSubcriptionResult3 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
    [(HUAlarmEditViewController *)self _presentMediaPickerUnavailablePromptWithReason:integerValue storeKitErrorObject:v13];

    goto LABEL_9;
  }

  [(HUAlarmEditViewController *)self _presentMediaPickerWithOptionsShowsLibraryContent:1];
}

- (id)_deleteAlarmButtonCellForTableView:(id)view atIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"HUAlarmEditTableViewCellIdentifier", path}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUAlarmEditTableViewCellIdentifier"];
  }

  v5 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditDelete", @"HUAlarmEditDelete", 1);
  textLabel = [v4 textLabel];
  [textLabel setText:v5];

  textLabel2 = [v4 textLabel];
  [textLabel2 setTextAlignment:1];

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  textLabel3 = [v4 textLabel];
  [textLabel3 setTextColor:systemRedColor];

  return v4;
}

- (id)_volumeSliderCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"HUVolumeSliderCellReuseIdentifier" forIndexPath:path];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setDelegate:self];
  [v8 setMinimumValue:0.0];
  [v8 setMaximumValue:100.0];
  _volumeIconMinimum = [(HUAlarmEditViewController *)self _volumeIconMinimum];
  [v8 setMinimumValueImage:_volumeIconMinimum];

  _volumeIconMaximum = [(HUAlarmEditViewController *)self _volumeIconMaximum];
  [v8 setMaximumValueImage:_volumeIconMaximum];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v8 setTintColor:systemGrayColor];

  [v8 setShowValue:0];
  [v8 setHidden:{-[HUAlarmEditViewController _hasUserSelectedCustomVolume](self, "_hasUserSelectedCustomVolume") ^ 1}];
  [(HUAlarmEditViewController *)self _volumeSettingForCurrentEditingAlarm];
  [v8 setValue:?];
  [v8 value];
  [(HUAlarmEditViewController *)self setSelectedCustomVolumeLevel:?];

  return v8;
}

- (id)_volumeIconMinimum
{
  if (qword_27C837EF0 != -1)
  {
    dispatch_once(&qword_27C837EF0, &__block_literal_global_123_1);
  }

  v3 = qword_27C837EE8;

  return v3;
}

void __47__HUAlarmEditViewController__volumeIconMinimum__block_invoke()
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.fill"];
  v0 = [MEMORY[0x277D75348] systemGrayColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = qword_27C837EE8;
  qword_27C837EE8 = v1;
}

- (id)_volumeIconMaximum
{
  if (qword_27C837F00 != -1)
  {
    dispatch_once(&qword_27C837F00, &__block_literal_global_128_0);
  }

  v3 = qword_27C837EF8;

  return v3;
}

void __47__HUAlarmEditViewController__volumeIconMaximum__block_invoke()
{
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"speaker.wave.3.fill"];
  v0 = [MEMORY[0x277D75348] systemGrayColor];
  v1 = [v3 imageWithTintColor:v0];
  v2 = qword_27C837EF8;
  qword_27C837EF8 = v1;
}

- (id)_datePickerCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  if (![(HUAlarmEditViewController *)self isDatePickerWheelScrolled])
  {
    _dateComponents = [(HUAlarmEditViewController *)self _dateComponents];
    [v10 setTimeComponents:_dateComponents];

    timeComponents = [v10 timeComponents];
    [(HUAlarmEditViewController *)self setCurrentDatePickerTimeComponents:timeComponents];
  }

  [v10 setDelegate:self];
  [v10 setHideTitleLabel:1];
  [v10 setLeftMargin:8.0];
  [v10 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v10;
}

- (id)_mediaPropertiesTypeCellForTableView:(id)view atIndexpath:(id)indexpath
{
  v39[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  indexpathCopy = indexpath;
  if (![indexpathCopy row])
  {
    v24 = [viewCopy dequeueReusableCellWithIdentifier:@"HURepeatMusicSwitchCellReuseIdentifier" forIndexPath:indexpathCopy];
    objc_opt_class();
    v9 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = v9;
    }

    else
    {
      v25 = 0;
    }

    v11 = v25;

    hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    isRepeatEnabled = [hfPlaybackArchive isRepeatEnabled];

    v28 = objc_alloc(MEMORY[0x277D14B38]);
    v38[0] = *MEMORY[0x277D13F60];
    v29 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierRepeat", @"HUMediaSelectionQueueModifierRepeat", 1);
    v39[0] = v29;
    v38[1] = *MEMORY[0x277D14068];
    if (isRepeatEnabled)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    v31 = [MEMORY[0x277CCABB0] numberWithInt:v30];
    v38[2] = *MEMORY[0x277D13DC8];
    v39[1] = v31;
    v39[2] = @"kHUAlarmEditViewControllerTableViewCellRepeatMusicSwitchCellReuseIdentifier";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v19 = [v28 initWithResults:v32];

    v33 = [v19 updateWithOptions:MEMORY[0x277CBEC10]];
    [v11 setItem:v19];
    hfPlaybackArchive2 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v11 setOn:{objc_msgSend(hfPlaybackArchive2, "isRepeatEnabled")}];

    hfPlaybackArchive3 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    isRepeatSupported = [hfPlaybackArchive3 isRepeatSupported];
    goto LABEL_17;
  }

  if ([indexpathCopy row] == 1)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"HUShuffleMusicSwitchCellReuseIdentifier" forIndexPath:indexpathCopy];
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

    hfPlaybackArchive4 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    isRepeatEnabled2 = [hfPlaybackArchive4 isRepeatEnabled];

    v14 = objc_alloc(MEMORY[0x277D14B38]);
    v36[0] = *MEMORY[0x277D13F60];
    v15 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierShuffle", @"HUMediaSelectionQueueModifierShuffle", 1);
    v37[0] = v15;
    v36[1] = *MEMORY[0x277D14068];
    if (isRepeatEnabled2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    v36[2] = *MEMORY[0x277D13DC8];
    v37[1] = v17;
    v37[2] = @"kHUAlarmEditViewControllerTableViewCellShuffleMusicSwitchCellReuseIdentifier";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v19 = [v14 initWithResults:v18];

    v20 = [v19 updateWithOptions:MEMORY[0x277CBEC10]];
    [v11 setItem:v19];
    hfPlaybackArchive5 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v11 setOn:{objc_msgSend(hfPlaybackArchive5, "isShuffleEnabled")}];

    hfPlaybackArchive3 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    isRepeatSupported = [hfPlaybackArchive3 isShuffleSupported];
LABEL_17:
    [v11 setDisabled:isRepeatSupported ^ 1u];

    [v11 updateUIWithAnimation:0];
    [v11 setDelegate:self];

    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)_volumeTypeCellForTableView:(id)view atIndexpath:(id)indexpath
{
  indexpathCopy = indexpath;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUVolumeTypeReuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUVolumeTypeReuseIdentifier"];
  }

  v8 = [indexpathCopy row];
  if (v8 == 1)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmUseCustomVolume", @"HUAlarmEditAlarmUseCustomVolume", 1);
    textLabel = [v7 textLabel];
    [textLabel setText:v13];

    if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_12;
    }

    v9 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmUseCurrentVolume", @"HUAlarmEditAlarmUseCurrentVolume", 1);
    textLabel2 = [v7 textLabel];
    [textLabel2 setText:v9];

    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setAdjustsFontSizeToFitWidth:1];

    if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume])
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }
  }

  [v7 setAccessoryType:v12];
LABEL_12:

  return v7;
}

- (BOOL)_isAlarmTypeMedia
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    if (hfPlaybackArchive)
    {
      v4 = ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isNewAlarm
{
  originalAlarm = [(HUAlarmEditViewController *)self originalAlarm];
  v3 = originalAlarm == 0;

  return v3;
}

- (BOOL)isEdited
{
  if ([(HUAlarmEditViewController *)self _isNewAlarm])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    originalAlarm = [(HUAlarmEditViewController *)self originalAlarm];
    editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
    v3 = [originalAlarm isEqual:editedAlarm] ^ 1;
  }

  return v3;
}

- (void)saveAlarmOnlyIfEdited:(BOOL)edited
{
  editedCopy = edited;
  v33 = *MEMORY[0x277D85DE8];
  if (![(HUAlarmEditViewController *)self isEdited]&& editedCopy)
  {
    return;
  }

  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    timePicker = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    calendar = [timePicker calendar];
    timePicker2 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    date = [timePicker2 date];
    currentDatePickerTimeComponents = [calendar components:96 fromDate:date];

    goto LABEL_12;
  }

  currentDatePickerTimeComponents = [(HUAlarmEditViewController *)self currentDatePickerTimeComponents];
  _isAlarmTypeMedia = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!_isAlarmTypeMedia)
  {
    if (v8)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Saving Regular Alarm", &v31, 2u);
    }

    timePicker = [(HUAlarmEditViewController *)self editedAlarm];
    [timePicker setSound:0];
    goto LABEL_16;
  }

  if (v8)
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Saving Media Type Alarm", &v31, 2u);
  }

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v10 = [(HUAlarmEditViewController *)self _configureSoundForMediaTypeAlarm:hfPlaybackArchive];
    editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
    [editedAlarm setSound:v10];
  }

  timePicker = HFLogForCategory();
  if (os_log_type_enabled(timePicker, OS_LOG_TYPE_DEFAULT))
  {
    calendar = [(HUAlarmEditViewController *)self editedAlarm];
    timePicker2 = [calendar sound];
    v31 = 138412290;
    v32 = timePicker2;
    _os_log_impl(&dword_20CEB6000, timePicker, OS_LOG_TYPE_DEFAULT, "Alarm Sound ..%@", &v31, 0xCu);
LABEL_12:
  }

LABEL_16:

  hour = [currentDatePickerTimeComponents hour];
  editedAlarm2 = [(HUAlarmEditViewController *)self editedAlarm];
  [editedAlarm2 setHour:hour];

  minute = [currentDatePickerTimeComponents minute];
  editedAlarm3 = [(HUAlarmEditViewController *)self editedAlarm];
  [editedAlarm3 setMinute:minute];

  editedAlarm4 = [(HUAlarmEditViewController *)self editedAlarm];
  selectedRoom = [(HUAlarmEditViewController *)self selectedRoom];
  mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
  [editedAlarm4 hf_moveToRoom:selectedRoom withMediaProfileContainer:mediaProfileContainer];

  LODWORD(selectedRoom) = [(HUAlarmEditViewController *)self _isNewAlarm];
  v23 = HFLogForCategory();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (selectedRoom)
  {
    if (v24)
    {
      editedAlarm5 = [(HUAlarmEditViewController *)self editedAlarm];
      v26 = [editedAlarm5 description];
      v31 = 138412290;
      v32 = v26;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "New Alarm - Alarm Desc %@", &v31, 0xCu);
    }

    delegate = [(HUAlarmEditViewController *)self delegate];
    editedAlarm6 = [(HUAlarmEditViewController *)self editedAlarm];
    [delegate alarmEditController:self didAddAlarm:editedAlarm6];
  }

  else
  {
    if (v24)
    {
      editedAlarm7 = [(HUAlarmEditViewController *)self editedAlarm];
      v30 = [editedAlarm7 description];
      v31 = 138412290;
      v32 = v30;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Edit Alarm - Alarm Desc %@", &v31, 0xCu);
    }

    delegate = [(HUAlarmEditViewController *)self delegate];
    editedAlarm6 = [(HUAlarmEditViewController *)self editedAlarm];
    [delegate alarmEditController:self didEditAlarm:editedAlarm6];
  }
}

- (void)_cancelButtonClicked:(id)clicked
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUAlarmEditViewController _cancelButtonClicked:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) canceling", &v6, 0x16u);
  }

  delegate = [(HUAlarmEditViewController *)self delegate];
  [delegate alarmEditControllerDidCancel:self];
}

- (void)_doneButtonClicked:(id)clicked
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[HUAlarmEditViewController _doneButtonClicked:]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) done", &v5, 0x16u);
  }

  [(HUAlarmEditViewController *)self saveAlarmOnlyIfEdited:0];
}

- (void)startEditingSetting:(int64_t)setting
{
  self->_editingAlarmSetting = setting;
  v5 = [HUAlarmEditSettingViewController alloc];
  editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
  mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
  selectedRoom = [(HUAlarmEditViewController *)self selectedRoom];
  loggedInAppleMusicAccountDSID = [(HUAlarmEditViewController *)self loggedInAppleMusicAccountDSID];
  v11 = [(HUAlarmEditSettingViewController *)v5 initWithAlarm:editedAlarm setting:setting mediaProfileContainer:mediaProfileContainer selectedRoom:selectedRoom loggedInAppleMusicAccountDSID:loggedInAppleMusicAccountDSID];

  [(HUAlarmEditSettingViewController *)v11 setDelegate:self];
  [(HUAlarmEditViewController *)self preferredContentSize];
  [(HUAlarmEditSettingViewController *)v11 setPreferredContentSize:?];
  navigationController = [(HUAlarmEditViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)_handlePickerChanged
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {

    [(HUAlarmEditViewController *)self setIsDatePickerWheelScrolled:1];
  }
}

- (void)_updateEnableStateForDoneButton:(BOOL)button
{
  buttonCopy = button;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    navigationItem = [(HUAlarmEditViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:buttonCopy];
  }
}

- (void)_updateAppleMusicSubscriptionStatus
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appleMusicSubcriptionResult = self->_appleMusicSubcriptionResult;
    self->_appleMusicSubcriptionResult = v3;

    mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
    mediaProfiles = [mediaProfileContainer mediaProfiles];
    hf_homePodMediaProfiles = [mediaProfiles hf_homePodMediaProfiles];
    mediaProfileContainer2 = [(HUAlarmEditViewController *)self mediaProfileContainer];
    hf_home = [mediaProfileContainer2 hf_home];
    v10 = [HUMediaAccountUtilities determineMediaPickerAvailabilityForHomePodProfiles:hf_homePodMediaProfiles inHome:hf_home];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__HUAlarmEditViewController__updateAppleMusicSubscriptionStatus__block_invoke;
    v15[3] = &unk_277DBB4C8;
    objc_copyWeak(&v16, &location);
    v11 = [v10 addSuccessBlock:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__HUAlarmEditViewController__updateAppleMusicSubscriptionStatus__block_invoke_2;
    v13[3] = &unk_277DB94D0;
    objc_copyWeak(&v14, &location);
    v12 = [v10 addFailureBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __64__HUAlarmEditViewController__updateAppleMusicSubscriptionStatus__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained appleMusicSubcriptionResult];
    [v4 setDictionary:v5];
  }
}

void __64__HUAlarmEditViewController__updateAppleMusicSubscriptionStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained appleMusicSubcriptionResult];
    [v4 setObject:v5 forKey:@"HUAppleMusicSubscriptionErrorKey"];
  }
}

- (void)_loadArtworkForMediaAlarm
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
  mediaPlayerPlaybackArchive = [hfPlaybackArchive mediaPlayerPlaybackArchive];

  displayProperties = [mediaPlayerPlaybackArchive displayProperties];
  artworkImageURL = [displayProperties artworkImageURL];
  if (artworkImageURL)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = artworkImageURL;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Loading artwork for Media Alarm [%@]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__HUAlarmEditViewController__loadArtworkForMediaAlarm__block_invoke;
    v11[3] = &unk_277DBD2B8;
    objc_copyWeak(&v12, buf);
    v9 = [mEMORY[0x277CCAD30] dataTaskWithURL:artworkImageURL completionHandler:v11];
    [(HUAlarmEditViewController *)self setArtworkFetchTask:v9];

    artworkFetchTask = [(HUAlarmEditViewController *)self artworkFetchTask];
    [artworkFetchTask resume];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __54__HUAlarmEditViewController__loadArtworkForMediaAlarm__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HUAlarmEditViewController__loadArtworkForMediaAlarm__block_invoke_2;
  block[3] = &unk_277DB76C8;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
}

void __54__HUAlarmEditViewController__loadArtworkForMediaAlarm__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setArtworkFetchTask:0];
    v4 = *(a1 + 32);
    if (v4 || !*(a1 + 40))
    {
      if ([v4 code] == -999 && (objc_msgSend(*(a1 + 32), "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", *MEMORY[0x277CCA738]), v5, v6))
      {
        v7 = HFLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Loading artwork for Media Alarm cancelled.", &v13, 2u);
        }
      }

      else
      {
        v7 = HFLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          v13 = 138543362;
          v14 = v8;
          _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Failed to load artwort. Error: %{public}@", &v13, 0xCu);
        }
      }
    }

    else
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Loading artwork for Media Alarm done.", &v13, 2u);
      }

      v10 = *(a1 + 40);
      v11 = [v3 hfPlaybackArchive];
      [v11 setArtworkImageData:v10];

      v7 = [v3 editAlarmView];
      v12 = [v7 settingsTable];
      [v12 reloadData];
    }
  }
}

- (void)_checkAndPrepareEditingAlarmForMediaTypeAlarm
{
  v38 = *MEMORY[0x277D85DE8];
  sound = [(MTMutableAlarm *)self->_editedAlarm sound];
  toneIdentifier = [sound toneIdentifier];
  if (toneIdentifier)
  {
    v5 = toneIdentifier;
    sound2 = [(MTMutableAlarm *)self->_editedAlarm sound];
    toneIdentifier2 = [sound2 toneIdentifier];
    v8 = [toneIdentifier2 length];

    if (v8)
    {
      sharedToneManager = [getTLToneManagerClass() sharedToneManager];
      sound3 = [(MTMutableAlarm *)self->_editedAlarm sound];
      toneIdentifier3 = [sound3 toneIdentifier];
      v12 = [sharedToneManager _underlyingPlaybackArchiveForToneIdentifier:toneIdentifier3];

      if (v12)
      {
        editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
        sound4 = [editedAlarm sound];
        soundVolume = [sound4 soundVolume];

        if (soundVolume)
        {
          [(HUAlarmEditViewController *)self setIsCustomVolumeSelected:1];
          editedAlarm2 = [(HUAlarmEditViewController *)self editedAlarm];
          sound5 = [editedAlarm2 sound];
          [sound5 soundVolume];
        }

        else
        {
          editedAlarm2 = [(HUAlarmEditViewController *)self mediaProfileContainer];
          sound5 = [editedAlarm2 mediaProfiles];
          [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:sound5];
        }
        v20 = ;
        [v20 floatValue];
        [(HUAlarmEditViewController *)self setSelectedCustomVolumeLevel:v21];

        v22 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:v12];
        hfPlaybackArchive = self->_hfPlaybackArchive;
        self->_hfPlaybackArchive = v22;

        if (self->_hfPlaybackArchive)
        {
          displayProperties = [v12 displayProperties];
          artworkImageData = [displayProperties artworkImageData];
          if (artworkImageData)
          {
          }

          else
          {
            displayProperties2 = [v12 displayProperties];
            artworkImageURL = [displayProperties2 artworkImageURL];

            if (artworkImageURL)
            {
              [(HUAlarmEditViewController *)self _loadArtworkForMediaAlarm];
            }
          }

          [(HUAlarmEditViewController *)self setIsPlayMediaSelected:1];
          v18 = HFLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
            v29 = [hfPlaybackArchive description];
            sound6 = [(MTMutableAlarm *)self->_editedAlarm sound];
            toneIdentifier4 = [sound6 toneIdentifier];
            v32 = 138412802;
            v33 = v29;
            v34 = 2112;
            v35 = toneIdentifier4;
            v36 = 2112;
            v37 = v12;
            _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Editing Alarm is Media Alarm. Description %@, ToneIdentifier %@, playbackArchiveObj from TL %@", &v32, 0x20u);
          }

          goto LABEL_22;
        }

        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v32) = 0;
          v19 = "Editing Alarm - Error preparing hfPlaybackArchive. Treating as Regular Alarm";
          goto LABEL_17;
        }
      }

      else
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v32) = 0;
          v19 = "Editing Alarm - Error converting tone identifier into playback archive by TL. Treating as Regular Alarm";
LABEL_17:
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, v19, &v32, 2u);
        }
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  else
  {
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Editing Alarm toneIdentifier is nil. Treating as Regular Alarm", &v32, 2u);
  }

LABEL_23:
}

- (id)_configureSoundForMediaTypeAlarm:(id)alarm
{
  v29 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  mediaPlayerPlaybackArchive = [alarmCopy mediaPlayerPlaybackArchive];
  displayProperties = [mediaPlayerPlaybackArchive displayProperties];
  artworkImageData = [displayProperties artworkImageData];
  if (artworkImageData)
  {
    v8 = artworkImageData;
    displayProperties2 = [mediaPlayerPlaybackArchive displayProperties];
    artworkImageURL = [displayProperties2 artworkImageURL];

    if (artworkImageURL)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Stripping artwork from Media Alarm", &v21, 2u);
      }

      v12 = [mediaPlayerPlaybackArchive copyWithOptions:8];
      mediaPlayerPlaybackArchive = v12;
    }
  }

  else
  {
  }

  sharedToneManager = [getTLToneManagerClass() sharedToneManager];
  v14 = [sharedToneManager _toneIdentifierWithUnderlyingPlaybackArchive:mediaPlayerPlaybackArchive];

  if (v14)
  {
    if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume])
    {
      v15 = MEMORY[0x277CCABB0];
      [(HUAlarmEditViewController *)self _volumeSettingForCurrentEditingAlarm];
      v16 = [v15 numberWithDouble:?];
    }

    else
    {
      v16 = 0;
    }

    v17 = [MEMORY[0x277D29708] toneSoundWithIdentifier:v14 vibrationIdentifer:0 volume:v16];
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      mediaPlayerPlaybackArchive2 = [alarmCopy mediaPlayerPlaybackArchive];
      v21 = 138413058;
      v22 = v16;
      v23 = 2112;
      v24 = mediaPlayerPlaybackArchive2;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Saving as Media Alarm volume..%@ playback archive properties %@ ToneIdentifier from Tone Library %@ CustomSound %@", &v21, 0x2Au);
    }
  }

  else
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = mediaPlayerPlaybackArchive;
      _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "Failed to convert playback archive %@ into a tone identifier.", &v21, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isMusicAlarmSupportedInAccessory
{
  mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
  hf_supportsMusicAlarm = [mediaProfileContainer hf_supportsMusicAlarm];

  return hf_supportsMusicAlarm;
}

- (void)alarmEditSettingController:(id)controller didEditAlarm:(id)alarm
{
  alarmCopy = alarm;
  selectedRoom = [controller selectedRoom];
  [(HUAlarmEditViewController *)self setSelectedRoom:selectedRoom];

  v8 = [alarmCopy mutableCopy];
  [(HUAlarmEditViewController *)self setEditedAlarm:v8];

  settingsTable = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [settingsTable reloadData];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    textLabel = [cellCopy textLabel];
    text = [textLabel text];
    v8 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmSnooze", @"HUAlarmEditAlarmSnooze", 1);
    v9 = [text isEqualToString:v8];

    if (v9)
    {
      editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
      [editedAlarm setAllowsSnooze:onCopy];
    }

    else
    {
      textLabel2 = [cellCopy textLabel];
      text2 = [textLabel2 text];
      v13 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierRepeat", @"HUMediaSelectionQueueModifierRepeat", 1);
      v14 = [text2 isEqualToString:v13];

      if (v14)
      {
        editedAlarm = [(HUAlarmEditViewController *)self hfPlaybackArchive];
        [editedAlarm setRepeatEnabled:onCopy];
      }

      else
      {
        textLabel3 = [cellCopy textLabel];
        text3 = [textLabel3 text];
        v17 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierShuffle", @"HUMediaSelectionQueueModifierShuffle", 1);
        v18 = [text3 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_9;
        }

        editedAlarm = [(HUAlarmEditViewController *)self hfPlaybackArchive];
        [editedAlarm setShuffleEnabled:onCopy];
      }
    }
  }

LABEL_9:
}

- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {

    [(HUAlarmEditViewController *)self setSelectedCustomVolumeLevel:value];
  }
}

- (void)datePickerCell:(id)cell didSelectDate:(id)date
{
  cellCopy = cell;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    [(HUAlarmEditViewController *)self setIsDatePickerWheelScrolled:1];
    timeComponents = [cellCopy timeComponents];
    [(HUAlarmEditViewController *)self setCurrentDatePickerTimeComponents:timeComponents];
  }
}

- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive
{
  v17 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    artworkFetchTask = [(HUAlarmEditViewController *)self artworkFetchTask];
    [artworkFetchTask cancel];

    [(HUAlarmEditViewController *)self setHfPlaybackArchive:0];
    v7 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:archiveCopy];
    [(HUAlarmEditViewController *)self setHfPlaybackArchive:v7];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v10 = [hfPlaybackArchive description];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "didPickPlaybackArchive Media Alarm. Description %@", buf, 0xCu);
    }

    hfPlaybackArchive2 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [hfPlaybackArchive2 setAutoPlayEnabled:0];

    editAlarmView = [(HUAlarmEditViewController *)self editAlarmView];
    settingsTable = [editAlarmView settingsTable];
    [settingsTable reloadData];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HUAlarmEditViewController_mediaPicker_didPickPlaybackArchive___block_invoke;
    v14[3] = &unk_277DB8488;
    v14[4] = self;
    [(HUAlarmEditViewController *)self dismissViewControllerAnimated:1 completion:v14];
  }
}

uint64_t __64__HUAlarmEditViewController_mediaPicker_didPickPlaybackArchive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _isAlarmTypeMedia];

  return [v1 _updateEnableStateForDoneButton:v2];
}

- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)content
{
  contentCopy = content;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v5 = qword_27C837F18;
    v26 = qword_27C837F18;
    if (!qword_27C837F18)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPMediaPickerControllerClass_block_invoke_0;
      v21 = &unk_277DB7768;
      v22 = &v23;
      __getMPMediaPickerControllerClass_block_invoke_0(&v18);
      v5 = v24[3];
    }

    v6 = v5;
    _Block_object_dispose(&v23, 8);
    v7 = [[v5 alloc] initWithSupportedTypeIdentifiers:&unk_282492BE8 selectionMode:4];
    [v7 setShowsCloudItems:1];
    [v7 setShowsItemsWithProtectedAssets:1];
    [v7 setShowsCatalogContent:1];
    [v7 setShowsLibraryContent:contentCopy];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v9;

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v11 = qword_27C837F20;
    v26 = qword_27C837F20;
    if (!qword_27C837F20)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getMPPlaybackArchiveConfigurationClass_block_invoke_0;
      v21 = &unk_277DB7768;
      v22 = &v23;
      __getMPPlaybackArchiveConfigurationClass_block_invoke_0(&v18);
      v11 = v24[3];
    }

    v12 = fmax(v10, 4.0) * 64.0;
    v13 = v11;
    _Block_object_dispose(&v23, 8);
    v14 = [[v11 alloc] initWithPreferredArtworkSize:{v12, v12}];
    [v7 setPlaybackArchiveConfiguration:v14];

    [v7 setDelegate:self];
    [v7 setModalPresentationStyle:2];
    view = [(HUAlarmEditViewController *)self view];
    [view frame];
    [v7 setPreferredContentSize:{v16, v17}];

    [(HUAlarmEditViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)mediaPickerDidPickPlaybackArchive:(id)archive
{
  v15 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    artworkFetchTask = [(HUAlarmEditViewController *)self artworkFetchTask];
    [artworkFetchTask cancel];

    [(HUAlarmEditViewController *)self setHfPlaybackArchive:0];
    v6 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:archiveCopy];
    [(HUAlarmEditViewController *)self setHfPlaybackArchive:v6];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      hfPlaybackArchive = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v9 = [hfPlaybackArchive description];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "didPickPlaybackArchive Media Alarm. Description %@", &v13, 0xCu);
    }

    hfPlaybackArchive2 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [hfPlaybackArchive2 setAutoPlayEnabled:0];

    editAlarmView = [(HUAlarmEditViewController *)self editAlarmView];
    settingsTable = [editAlarmView settingsTable];
    [settingsTable reloadData];

    [(HUAlarmEditViewController *)self dismissViewControllerAnimated:1 completion:0];
    [(HUAlarmEditViewController *)self _updateEnableStateForDoneButton:[(HUAlarmEditViewController *)self _isAlarmTypeMedia]];
  }
}

- (double)_volumeSettingForCurrentEditingAlarm
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    return v3;
  }

  mediaProfileContainer = [(HUAlarmEditViewController *)self mediaProfileContainer];
  mediaProfiles = [mediaProfileContainer mediaProfiles];
  v6 = [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:mediaProfiles];
  [v6 floatValue];
  v8 = v7;

  if ([(HUAlarmEditViewController *)self _isNewAlarm])
  {
    [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
    v3 = v8;
    if (v9 != v8)
    {
LABEL_4:
      [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
      v3 = v10;
    }
  }

  else
  {
    editedAlarm = [(HUAlarmEditViewController *)self editedAlarm];
    sound = [editedAlarm sound];
    soundVolume = [sound soundVolume];

    if (soundVolume)
    {
      editedAlarm2 = [(HUAlarmEditViewController *)self editedAlarm];
      sound2 = [editedAlarm2 sound];
      soundVolume2 = [sound2 soundVolume];
      [soundVolume2 floatValue];
      v18 = v17;
      [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
      if (v19 == v18)
      {
        editedAlarm3 = [(HUAlarmEditViewController *)self editedAlarm];
        sound3 = [editedAlarm3 sound];
        soundVolume3 = [sound3 soundVolume];
        [soundVolume3 floatValue];
        v3 = v23;
      }

      else
      {
        [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
        v3 = v25;
      }

      goto LABEL_13;
    }

    [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
    v3 = v8;
    if (v24 != v8)
    {
      v3 = v8;
      if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_4;
      }
    }
  }

LABEL_13:
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if ([(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
    v29 = v28;
    v32 = 134219010;
    if ([(HUAlarmEditViewController *)self _isNewAlarm])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v33 = v8;
    v34 = 2112;
    v35 = v27;
    v36 = 2048;
    v37 = v29;
    v38 = 2112;
    v39 = v30;
    v40 = 2048;
    v41 = v3;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "Volume Setting:  Default Volume From Profile %f Custom Volume %@ User Toggled Volume Level %f New Alarm %@ VolumeSet %f", &v32, 0x34u);
  }

  return v3;
}

- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)reason storeKitErrorObject:(id)object
{
  objectCopy = object;
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    goto LABEL_16;
  }

  switch(reason)
  {
    case 2:
      v8 = [HUMediaAccountUtilities reasonForMediaPickerNotAvailable:2];
      v10 = 0;
      v21 = 0;
      v7 = 0;
      v9 = @"HUAlertError";
      if (v8)
      {
        goto LABEL_9;
      }

      break;
    case 1:
      v7 = [MEMORY[0x277CBEBC0] URLWithString:@"music://subscribe"];
      v10 = 1;
      v21 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptGetAppleMusicButton";
      v8 = @"HUMusicAlarmMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
      v9 = @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptTitle";
      goto LABEL_9;
    case 0:
      v7 = +[HUMediaAccountUtilities musicAppURL];
      v8 = @"HUTriggerMediaPickerUnavailableMusicAppUninstalledForMusicAlarmPromptMessage";
      v9 = @"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle";
      v10 = 1;
      v21 = @"HUMediaPickerUnavailableMusicAppUninstalledPromptOpenAppStoreButton";
      if (!v8)
      {
        break;
      }

LABEL_9:
      localizedDescription = _HULocalizedStringWithDefaultValue(v8, v8, 1);
      goto LABEL_12;
    default:
      v9 = 0;
      v7 = 0;
      v21 = 0;
      v10 = 0;
      break;
  }

  localizedDescription = [objectCopy localizedDescription];
  v8 = 0;
LABEL_12:
  v12 = MEMORY[0x277D75110];
  v13 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  v14 = [v12 alertControllerWithTitle:v13 message:localizedDescription preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v17 = [v15 actionWithTitle:v16 style:0 handler:0];
  [v14 addAction:v17];

  if (v10 && v7)
  {
    v18 = MEMORY[0x277D750F8];
    v19 = _HULocalizedStringWithDefaultValue(v21, v21, 1);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __96__HUAlarmEditViewController__presentMediaPickerUnavailablePromptWithReason_storeKitErrorObject___block_invoke;
    v25 = &unk_277DB7600;
    v26 = v7;
    v20 = [v18 actionWithTitle:v19 style:0 handler:&v22];
    [v14 addAction:v20];
  }

  [(HUAlarmEditViewController *)self presentViewController:v14 animated:1 completion:0, v21, v22, v23, v24, v25];

LABEL_16:
}

void __96__HUAlarmEditViewController__presentMediaPickerUnavailablePromptWithReason_storeKitErrorObject___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D148E8] sharedInstance];
  v2 = [v3 openURL:*(a1 + 32)];
}

- (HUAlarmEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end