@interface HUAlarmEditViewController
+ (CGSize)desiredContentSize;
- (BOOL)_isAlarmTypeMedia;
- (BOOL)_isMusicAlarmSupportedInAccessory;
- (BOOL)_isNewAlarm;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isEdited;
- (HUAlarmEditViewController)initWithMediaProfileContainer:(id)a3 alarm:(id)a4;
- (HUAlarmEditViewControllerDelegate)delegate;
- (double)_volumeSettingForCurrentEditingAlarm;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_configureSoundForMediaTypeAlarm:(id)a3;
- (id)_dateComponents;
- (id)_datePickerCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_deleteAlarmButtonCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_mediaPropertiesTypeCellForTableView:(id)a3 atIndexpath:(id)a4;
- (id)_setupCell:(id)a3 forTableView:(id)a4 indexPath:(id)a5;
- (id)_volumeIconMaximum;
- (id)_volumeIconMinimum;
- (id)_volumeSliderCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_volumeTypeCellForTableView:(id)a3 atIndexpath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonClicked:(id)a3;
- (void)_checkAndPrepareEditingAlarmForMediaTypeAlarm;
- (void)_chooseMediaTapped;
- (void)_configureMediaIconView:(id)a3 withImage:(id)a4;
- (void)_didTap:(id)a3;
- (void)_doneButtonClicked:(id)a3;
- (void)_handlePickerChanged;
- (void)_loadArtworkForMediaAlarm;
- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)a3 storeKitErrorObject:(id)a4;
- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)a3;
- (void)_updateAppleMusicSubscriptionStatus;
- (void)_updateCellForTableView:(id)a3 indexPath:(id)a4;
- (void)_updateEnableStateForDoneButton:(BOOL)a3;
- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4;
- (void)datePickerCell:(id)a3 didSelectDate:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)mediaPicker:(id)a3 didPickPlaybackArchive:(id)a4;
- (void)mediaPickerDidPickPlaybackArchive:(id)a3;
- (void)saveAlarmOnlyIfEdited:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4;
- (void)startEditingSetting:(int64_t)a3;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

- (HUAlarmEditViewController)initWithMediaProfileContainer:(id)a3 alarm:(id)a4
{
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = HUAlarmEditViewController;
  v9 = [(HUAlarmEditViewController *)&v43 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, a3);
    v10->_accessorySupportsMusicAlarm = [(HUAlarmEditViewController *)v10 _isMusicAlarmSupportedInAccessory];
    v10->_isCustomVolumeSelected = 0;
    v10->_isDatePickerWheelScrolled = 0;
    objc_storeStrong(&v10->_originalAlarm, a4);
    v11 = [v7 hf_parentRoom];
    objc_storeStrong(&v10->_selectedRoom, v11);
    if (v8)
    {
      v12 = [v8 mutableCopy];
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
      v15 = [MEMORY[0x277D296F0] alarm];
      v16 = v10->_editedAlarm;
      v10->_editedAlarm = v15;

      v14 = _HULocalizedStringWithDefaultValue(@"HUCreateNewAlarm", @"HUCreateNewAlarm", 1);
      v17 = [(HUAlarmEditViewController *)v10 mediaProfileContainer];
      v18 = [v17 mediaProfiles];
      v19 = [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:v18];
      [v19 floatValue];
      [(HUAlarmEditViewController *)v10 setSelectedCustomVolumeLevel:v20];
    }

    if (_os_feature_enabled_impl())
    {
      v21 = [(MTMutableAlarm *)v10->_editedAlarm siriContext];
      v22 = *MEMORY[0x277CFCED0];
      v23 = [v21 objectForKey:*MEMORY[0x277CFCED0]];

      if (!v23)
      {
        if (v21)
        {
          v24 = [v21 mutableCopy];
        }

        else
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v25 = v24;
        v26 = [v7 accessories];
        v27 = [v26 anyObject];
        v28 = COAlarmSiriContextTargetReferenceForAccessory();
        [v25 setObject:v28 forKey:v22];

        [(MTMutableAlarm *)v10->_editedAlarm setSiriContext:v25];
        v14 = v41;
        v11 = v42;
      }
    }

    v10->_editingAlarmSetting = -1;
    [(HUAlarmEditViewController *)v10 setTitle:v14];
    [(HUAlarmEditViewController *)v10 setEdgesForExtendedLayout:0];
    v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v10 action:sel__cancelButtonClicked_];
    v30 = [(HUAlarmEditViewController *)v10 navigationItem];
    [v30 setLeftBarButtonItem:v29];

    LODWORD(v29) = [(HUAlarmEditViewController *)v10 accessorySupportsMusicAlarm];
    v31 = objc_alloc(MEMORY[0x277D751E0]);
    if (v29)
    {
      v32 = [v31 initWithBarButtonSystemItem:0 target:v10 action:sel__doneButtonClicked_];
      v33 = [(HUAlarmEditViewController *)v10 navigationItem];
      [v33 setRightBarButtonItem:v32];

      if ([(HUAlarmEditViewController *)v10 _isNewAlarm]|| ![(HUAlarmEditViewController *)v10 _isAlarmTypeMedia])
      {
        v34 = [(HUAlarmEditViewController *)v10 _hasUserSelectedToneAlarm];
      }

      else
      {
        v34 = [(HUAlarmEditViewController *)v10 _isAlarmTypeMedia];
      }

      [(HUAlarmEditViewController *)v10 _updateEnableStateForDoneButton:v34];
    }

    else
    {
      v35 = [v31 initWithBarButtonSystemItem:3 target:v10 action:sel__doneButtonClicked_];
      v36 = [(HUAlarmEditViewController *)v10 navigationItem];
      [v36 setRightBarButtonItem:v35];
    }

    if ((HUIsPhoneIdiom() & 1) == 0)
    {
      [objc_opt_class() desiredContentSize];
      [(HUAlarmEditViewController *)v10 setPreferredContentSize:?];
    }

    v37 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v10 action:sel__didTap_];
    tapGestureRecognizer = v10->_tapGestureRecognizer;
    v10->_tapGestureRecognizer = v37;

    v39 = [(HUAlarmEditViewController *)v10 view];
    [v39 addGestureRecognizer:v10->_tapGestureRecognizer];

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer setDelegate:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(NSURLSessionDataTask *)self->_artworkFetchTask cancel];
  v3 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
  [v3 removeTarget:self action:sel__handlePickerChanged forControlEvents:4096];

  v4.receiver = self;
  v4.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v4 dealloc];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v9 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(HUAlarmEditViewController *)self traitCollection];
  if ([v7 horizontalSizeClass] == 1 && objc_msgSend(v6, "horizontalSizeClass") == 2 && objc_msgSend(v6, "verticalSizeClass") == 2)
  {
    v8 = [MEMORY[0x277D14CE8] isAMac];

    if ((v8 & 1) == 0)
    {
      [(HUAlarmEditViewController *)self saveAlarmOnlyIfEdited:1];
    }
  }

  else
  {
  }
}

- (void)_didTap:(id)a3
{
  v3 = [(HUAlarmEditViewController *)self view];
  [v3 endEditing:1];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v9 = [v7 view];
    v10 = [v9 superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = 1;
      goto LABEL_6;
    }
  }

  v12 = [(HUAlarmEditViewController *)self tapGestureRecognizer];
  v13 = v12 != v6;

LABEL_6:
  return v13;
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(HUAlarmEditViewController *)self view];
  [v3 endEditing:1];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(HUAlarmEditViewController *)self view];
  [v3 endEditing:1];
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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v9 = [(HUAlarmEditView *)v3 initWithFrame:[(HUAlarmEditViewController *)self accessorySupportsMusicAlarm] supportsMusicAlarm:v5, v6, v7, v8];
  editAlarmView = self->_editAlarmView;
  self->_editAlarmView = v9;

  [(HUAlarmEditView *)self->_editAlarmView setAutoresizingMask:16];
  v11 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v11 setDataSource:self];

  v12 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v12 setDelegate:self];

  v13 = *MEMORY[0x277D76F30];
  v14 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v14 setRowHeight:v13];

  v15 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];

  v16 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v16 _setDisplaysCellContentStringsOnTapAndHold:1];

  if (HUIsPadIdiom())
  {
    [(HUAlarmEditView *)self->_editAlarmView setAutoresizingMask:18];
  }

  v17 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  v18 = objc_alloc(MEMORY[0x277D75D18]);
  v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v17 setTableFooterView:v19];

  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v20 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUSnoozeSwitchCellReuseIdentifier"];

    v21 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUVolumeSliderCellReuseIdentifier"];

    v22 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v22 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUChooseMediahCellReuseIdentifier"];

    v23 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"HURepeatMusicSwitchCellReuseIdentifier"];

    v24 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUShuffleMusicSwitchCellReuseIdentifier"];

    v25 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [v25 registerClass:v26 forCellReuseIdentifier:v28];

    v29 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v29 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUPlayToneCellIdentifier"];

    v30 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
    [v30 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUPlayMediaCellIdentifier"];

    [(HUAlarmEditViewController *)self _updateAppleMusicSubscriptionStatus];
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v32 = [(HUAlarmEditViewController *)self editedAlarm];
    [v31 setHour:{objc_msgSend(v32, "hour")}];

    v33 = [(HUAlarmEditViewController *)self editedAlarm];
    [v31 setMinute:{objc_msgSend(v33, "minute")}];

    v34 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    v35 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    v36 = [v35 calendar];
    v37 = [v36 dateFromComponents:v31];
    [v34 setDate:v37];

    v38 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    [v38 addTarget:self action:sel__handlePickerChanged forControlEvents:4096];
  }

  v39 = self->_editAlarmView;

  [(HUAlarmEditViewController *)self setView:v39];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v8 viewWillAppear:a3];
  self->_editingAlarmSetting = -1;
  v4 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v4 reloadData];

  v5 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  v6 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUAlarmEditViewController *)self delegate];
  [v5 alarmEditControllerGettingDismissed:self];

  v6.receiver = self;
  v6.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidUnload
{
  editAlarmView = self->_editAlarmView;
  self->_editAlarmView = 0;

  v4.receiver = self;
  v4.super_class = HUAlarmEditViewController;
  [(HUAlarmEditViewController *)&v4 viewDidUnload];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v4 = [(HUAlarmEditViewController *)self _isNewAlarm];
    v5 = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
    if (v4)
    {
      v6 = [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm];
      if (v5)
      {
        if (v6)
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

      if (!v6)
      {
        if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
LABEL_27:
          v9 = [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume];
LABEL_28:
          v10 = v9 == 0;
          v11 = 4;
          goto LABEL_30;
        }

        return 0;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D14CE8] isAMac];
      if (v5)
      {
        if ((v8 & 1) == 0)
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

      if ((v8 & 1) == 0 && (!HUIsPadIdiom() || ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]))
      {
        if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isNewAlarm])
        {
          return 3;
        }

        if (![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
        {
          v12 = [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume];
          v9 = HUIsPhoneIdiom();
          if (!v12)
          {
            goto LABEL_28;
          }

          if (!v9 || [(HUAlarmEditViewController *)self _isNewAlarm])
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (a4 > 2)
    {
      if (a4 <= 4)
      {
        if (a4 == 3)
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

      if (a4 == 5)
      {
        return ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]&& [(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]|| ![(HUAlarmEditViewController *)self _isNewAlarm]&& (HUIsPhoneIdiom() & 1) != 0;
      }

      if (a4 != 6)
      {
        return 0;
      }

      return HUIsPhoneIdiom();
    }

    if (!a4)
    {
      return 3;
    }

    if (a4 == 1)
    {
      return 2;
    }

    if (a4 != 2)
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

  else if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_setupCell:(id)a3 forTableView:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 row];
  v12 = [v10 section];
  if (v12 > 2)
  {
    if (v12 <= 4)
    {
      if (v12 == 3)
      {
        if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia]&& ![(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
        {
          v41 = [(HUAlarmEditViewController *)self _mediaPropertiesTypeCellForTableView:v9 atIndexpath:v10];
          goto LABEL_61;
        }

LABEL_26:
        v41 = [(HUAlarmEditViewController *)self _volumeTypeCellForTableView:v9 atIndexpath:v10];
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
        v41 = [(HUAlarmEditViewController *)self _volumeSliderCellForTableView:v9 atIndexPath:v10];
        goto LABEL_61;
      }

LABEL_47:
      v41 = [(HUAlarmEditViewController *)self _deleteAlarmButtonCellForTableView:v9 atIndexPath:v10];
      goto LABEL_61;
    }

    if (v12 == 5)
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

    if (v12 == 6)
    {
      goto LABEL_47;
    }

LABEL_51:
    v41 = v8;
LABEL_60:
    v8 = v41;
    goto LABEL_61;
  }

  if (!v12)
  {
    v32 = [v8 detailTextLabel];
    [v32 setAdjustsFontSizeToFitWidth:0];

    v33 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    v34 = [v8 textLabel];
    [v34 setTextColor:v33];

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v56 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditLabel", @"HUAlarmEditLabel", 1);
        v57 = [v8 textLabel];
        [v57 setText:v56];

        v39 = [(HUAlarmEditViewController *)self editedAlarm];
        v40 = [v39 displayTitle];
      }

      else
      {
        if (v11 != 3)
        {
          goto LABEL_51;
        }

        v50 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
        v51 = [v8 textLabel];
        [v51 setText:v50];

        v39 = [(HUAlarmEditViewController *)self selectedRoom];
        v40 = [v39 name];
      }
    }

    else
    {
      if (!v11)
      {
        v41 = [(HUAlarmEditViewController *)self _datePickerCellForTableView:v9 atIndexPath:v10];
        goto LABEL_61;
      }

      if (v11 != 1)
      {
        goto LABEL_51;
      }

      v35 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditRepeat", @"HUAlarmEditRepeat", 1);
      v36 = [v8 textLabel];
      [v36 setText:v35];

      v37 = [v8 detailTextLabel];
      [v37 setAdjustsFontSizeToFitWidth:1];

      v38 = [v8 detailTextLabel];
      [v38 setMinimumScaleFactor:0.705882353];

      v39 = [(HUAlarmEditViewController *)self editedAlarm];
      [v39 repeatSchedule];
      v40 = DateMaskToString();
    }

    v58 = v40;
    v59 = [v8 detailTextLabel];
    [v59 setText:v58];

    [v8 setAccessoryType:1];
    goto LABEL_51;
  }

  if (v12 == 1)
  {
    v42 = [v8 detailTextLabel];
    [v42 setAdjustsFontSizeToFitWidth:0];

    v43 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    v44 = [v8 textLabel];
    [v44 setTextColor:v43];

    if (v11 == 1)
    {
      v45 = [v9 dequeueReusableCellWithIdentifier:@"HUPlayMediaCellIdentifier" forIndexPath:v10];

      v52 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayMedia", @"HUAlarmPlayMedia", 1);
      v53 = [v45 textLabel];
      [v53 setText:v52];

      if ([(HUAlarmEditViewController *)self _shouldDisablePlayMedia])
      {
        v54 = [MEMORY[0x277D75348] systemGrayColor];
        v55 = [v45 textLabel];
        [v55 setTextColor:v54];

        if ([(HUAlarmEditViewController *)self _isNewAlarm])
        {
          [v45 setUserInteractionEnabled:0];
        }

        else
        {
          v70 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
          [v45 setUserInteractionEnabled:v70 != 0];
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
        v45 = v8;
LABEL_59:
        v41 = v45;
        goto LABEL_60;
      }

      v45 = [v9 dequeueReusableCellWithIdentifier:@"HUPlayToneCellIdentifier" forIndexPath:v10];

      v46 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayTone", @"HUAlarmPlayTone", 1);
      v47 = [v45 textLabel];
      [v47 setText:v46];

      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
      {
        goto LABEL_36;
      }
    }

    v48 = v45;
    v49 = 0;
    goto LABEL_58;
  }

  if (v12 != 2)
  {
    goto LABEL_51;
  }

  if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
  {
    goto LABEL_47;
  }

  v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"HUChooseMediahCellReuseIdentifier"];
  v14 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
  v15 = [v13 textLabel];
  [v15 setTextColor:v14];

  if (v11 == 1)
  {
    v60 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmChooseMedia", @"HUAlarmEditAlarmChooseMedia", 1);
    v61 = [v13 textLabel];
    [v61 setText:v60];

    v62 = [MEMORY[0x277D75348] hf_keyColor];
    v63 = [v13 textLabel];
    [v63 setTextColor:v62];

    v64 = [v13 imageView];
    [v64 setImage:0];
  }

  else if (!v11)
  {
    if ([(HUAlarmEditViewController *)self _isAlarmTypeMedia])
    {
      v16 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v17 = [v16 mediaPlayerPlaybackArchive];
      v18 = [v17 displayProperties];
      v19 = [v18 title];
      v20 = [v13 textLabel];
      [v20 setText:v19];

      v21 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v22 = [v21 mediaPlayerPlaybackArchive];
      v23 = [v22 displayProperties];
      v24 = [v23 subtitle];
      v25 = [v13 detailTextLabel];
      [v25 setText:v24];

      v26 = [v13 detailTextLabel];
      [v26 setAdjustsFontSizeToFitWidth:1];

      v27 = [v13 detailTextLabel];
      [v27 setMinimumScaleFactor:0.705882353];

      v28 = MEMORY[0x277D755B8];
      v29 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v30 = [v29 artworkImageData];
      v31 = [v28 imageWithData:v30];

      [(HUAlarmEditViewController *)self _configureMediaIconView:v13 withImage:v31];
      [v13 setUserInteractionEnabled:0];
    }

    else
    {
      [v13 setUserInteractionEnabled:1];
      v65 = [MEMORY[0x277D75348] hf_keyColor];
      v66 = [v13 textLabel];
      [v66 setTextColor:v65];

      v67 = [v13 imageView];
      [v67 setImage:0];

      v68 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmChooseMedia", @"HUAlarmEditAlarmChooseMedia", 1);
      v69 = [v13 textLabel];
      [v69 setText:v68];

      v31 = [v13 detailTextLabel];
      [v31 setText:0];
    }

    [v13 setAccessoryView:0];
  }

LABEL_62:

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [v7 section];
  v10 = [v6 dequeueReusableCellWithIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"HUAlarmEditViewControllerTableViewCellIdentifier"];
  }

  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (v9 == 1)
    {
      v21 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUAlarmEditTableViewCellIdentifier"];

      v22 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditDelete", @"HUAlarmEditDelete", 1);
      v23 = [v21 textLabel];
      [v23 setText:v22];

      v24 = [v21 textLabel];
      [v24 setTextAlignment:1];

      v25 = [MEMORY[0x277D75348] systemRedColor];
      v26 = [v21 textLabel];
      [v26 setTextColor:v25];

      v27 = v21;
LABEL_23:
      v11 = v27;
      v10 = v27;
      goto LABEL_24;
    }

    if (v9)
    {
      v11 = 0;
      goto LABEL_24;
    }

    v12 = [v10 detailTextLabel];
    [v12 setAdjustsFontSizeToFitWidth:0];

    [v10 setAccessoryType:1];
    v13 = [MEMORY[0x277D75348] hu_alarmsPrimaryTextColor];
    v14 = [v10 textLabel];
    [v14 setTextColor:v13];

    if (v8 == 2)
    {
      v32 = _HULocalizedStringWithDefaultValue(@"HUAlarmPlayInLabel", @"HUAlarmPlayInLabel", 1);
      v33 = [v10 textLabel];
      [v33 setText:v32];

      v34 = [(HUAlarmEditViewController *)self selectedRoom];
      v35 = [v34 name];
      v36 = [v10 detailTextLabel];
      [v36 setText:v35];

      [v10 setAccessoryType:1];
      goto LABEL_22;
    }

    if (v8 == 1)
    {
      v28 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditLabel", @"HUAlarmEditLabel", 1);
      v29 = [v10 textLabel];
      [v29 setText:v28];

      v19 = [(HUAlarmEditViewController *)self editedAlarm];
      v20 = [v19 displayTitle];
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
      v16 = [v10 textLabel];
      [v16 setText:v15];

      v17 = [v10 detailTextLabel];
      [v17 setAdjustsFontSizeToFitWidth:1];

      v18 = [v10 detailTextLabel];
      [v18 setMinimumScaleFactor:0.705882353];

      v19 = [(HUAlarmEditViewController *)self editedAlarm];
      [v19 repeatSchedule];
      v20 = DateMaskToString();
    }

    v30 = v20;
    v31 = [v10 detailTextLabel];
    [v31 setText:v30];

    goto LABEL_22;
  }

  v11 = 0;
  if (v9 <= 2)
  {
    if (v9 <= 2)
    {
LABEL_18:
      v11 = [(HUAlarmEditViewController *)self _setupCell:v10 forTableView:v6 indexPath:v7];
    }
  }

  else if (v9 <= 5 || v9 == 6)
  {
    goto LABEL_18;
  }

LABEL_24:

  return v11;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    if ([(HUAlarmEditViewController *)self _isNewAlarm]|| [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm])
    {
      if (a4 == 1)
      {
LABEL_5:
        v6 = _HULocalizedStringWithDefaultValue(@"HUAlarmMediaActionPlayUnavailableMessage", @"HUAlarmMediaActionPlayUnavailableMessage", 1);
        goto LABEL_8;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)_updateCellForTableView:(id)a3 indexPath:(id)a4
{
  v16 = a4;
  v5 = [(HUAlarmEditViewController *)self accessorySupportsMusicAlarm];
  v6 = v16;
  if (v5)
  {
    v7 = [v16 section];
    v8 = [v16 row];
    v9 = v8;
    if (v7 != 4)
    {
      if (v7 == 1)
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

          v10 = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
LABEL_17:
          v13 = v10;
          goto LABEL_18;
        }

        if (!v8)
        {
          [(HUAlarmEditViewController *)self setIsPlayMediaSelected:0];
          [(HUAlarmEditViewController *)self setIsCustomVolumeSelected:0];
          v10 = [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm];
          goto LABEL_17;
        }

LABEL_19:
        v14 = [(HUAlarmEditViewController *)self editAlarmView];
        v15 = [v14 settingsTable];
        [v15 reloadData];

        v6 = v16;
        goto LABEL_20;
      }

      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_19;
      }
    }

    if (v9 == 1)
    {
      v11 = self;
      v12 = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_19;
      }

      v11 = self;
      v12 = 0;
    }

    [(HUAlarmEditViewController *)v11 setIsCustomVolumeSelected:v12];
    goto LABEL_19;
  }

LABEL_20:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [v6 section];
  [v13 deselectRowAtIndexPath:v6 animated:1];
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (v8 == 1)
    {
LABEL_31:
      v11 = [(HUAlarmEditViewController *)self delegate];
      v12 = [(HUAlarmEditViewController *)self originalAlarm];
      [v11 alarmEditController:self didDeleteAlarm:v12];

      goto LABEL_32;
    }

    if (v8 || v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v9 = v7 + 1;
    v10 = self;
LABEL_27:
    [(HUAlarmEditViewController *)v10 startEditingSetting:v9];
    goto LABEL_32;
  }

  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
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

    v10 = self;
    v9 = v7;
    goto LABEL_27;
  }

  if (v8 <= 4)
  {
    if (v8 != 3 && HUIsPhoneIdiom() && ![(HUAlarmEditViewController *)self _isNewAlarm]&& ![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
    {
      goto LABEL_31;
    }

LABEL_20:
    [(HUAlarmEditViewController *)self _updateCellForTableView:v13 indexPath:v6];
    goto LABEL_32;
  }

  if (v8 == 5)
  {
    if (![(HUAlarmEditViewController *)self _isNewAlarm]&& (![(HUAlarmEditViewController *)self _hasUserSelectedCustomVolume]|| ![(HUAlarmEditViewController *)self _isAlarmTypeMedia]))
    {
      goto LABEL_31;
    }
  }

  else if (v8 == 6 && ![(HUAlarmEditViewController *)self _isNewAlarm])
  {
    goto LABEL_31;
  }

LABEL_32:
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v6 = @"HUAlarmEditAlarmSound";
  }

  else
  {
    if (a4 == 4)
    {
      if ([(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| ![(HUAlarmEditViewController *)self _isAlarmTypeMedia])
      {
        goto LABEL_11;
      }
    }

    else if (a4 != 3 || [(HUAlarmEditViewController *)self _hasUserSelectedToneAlarm]|| [(HUAlarmEditViewController *)self _isAlarmTypeMedia])
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == 2 && -[HUAlarmEditViewController _isAlarmTypeMedia](self, "_isAlarmTypeMedia") && !objc_msgSend(v5, "row"))
  {
    v6 = 100.0;
  }

  else
  {
    v6 = *MEMORY[0x277D76F30];
  }

  return v6;
}

- (void)_configureMediaIconView:(id)a3 withImage:(id)a4
{
  v19 = a3;
  v6 = a4;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    if (v6)
    {
      v7 = [v6 hu_imageScaledToSize:2 contentMode:{72.0, 72.0}];
      v8 = [v19 imageView];
      [v8 setImage:v7];
    }

    else
    {
      v7 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
      v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"music"];
      v10 = [v9 imageWithSymbolConfiguration:v7];
      v11 = [v19 imageView];
      [v11 setImage:v10];

      v12 = [v19 imageView];
      [v12 setContentMode:4];

      v8 = [MEMORY[0x277D75348] systemGrayColor];
      v13 = [v19 imageView];
      [v13 setTintColor:v8];
    }

    v14 = [v19 imageView];
    v15 = [v14 layer];
    [v15 setCornerRadius:4.0];

    v16 = [v19 imageView];
    [v16 setClipsToBounds:1];

    v17 = [v19 imageView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:1];

    v18 = [v19 imageView];
    [v18 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
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
    v4 = [(HUAlarmEditViewController *)self editedAlarm];
    [v3 setHour:{objc_msgSend(v4, "hour")}];

    v5 = [(HUAlarmEditViewController *)self editedAlarm];
    [v3 setMinute:{objc_msgSend(v5, "minute")}];
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
    v5 = [(HUAlarmEditViewController *)self mediaProfileContainer];
    v6 = [v4 setWithObject:v5];
    v14 = [(HUMediaSourceListViewController *)v3 initForMediaProfileContainers:v6 forTarget:1];

    [v14 setDelegate:self];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
    [(HUAlarmEditViewController *)self presentViewController:v7 animated:1 completion:0];
LABEL_9:

    return;
  }

  v8 = +[HUMediaAccountUtilities isMusicAppInstalled];
  v9 = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
  v14 = v9;
  if (!v8)
  {
    v7 = [v9 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
    [(HUAlarmEditViewController *)self _presentMediaPickerUnavailablePromptWithReason:0 storeKitErrorObject:v7];
    goto LABEL_9;
  }

  v10 = [v9 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];

  if (v10)
  {
    v14 = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
    v7 = [v14 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
    v11 = [v7 integerValue];
    v12 = [(HUAlarmEditViewController *)self appleMusicSubcriptionResult];
    v13 = [v12 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];
    [(HUAlarmEditViewController *)self _presentMediaPickerUnavailablePromptWithReason:v11 storeKitErrorObject:v13];

    goto LABEL_9;
  }

  [(HUAlarmEditViewController *)self _presentMediaPickerWithOptionsShowsLibraryContent:1];
}

- (id)_deleteAlarmButtonCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"HUAlarmEditTableViewCellIdentifier", a4}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUAlarmEditTableViewCellIdentifier"];
  }

  v5 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditDelete", @"HUAlarmEditDelete", 1);
  v6 = [v4 textLabel];
  [v6 setText:v5];

  v7 = [v4 textLabel];
  [v7 setTextAlignment:1];

  v8 = [MEMORY[0x277D75348] systemRedColor];
  v9 = [v4 textLabel];
  [v9 setTextColor:v8];

  return v4;
}

- (id)_volumeSliderCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"HUVolumeSliderCellReuseIdentifier" forIndexPath:a4];
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
  v9 = [(HUAlarmEditViewController *)self _volumeIconMinimum];
  [v8 setMinimumValueImage:v9];

  v10 = [(HUAlarmEditViewController *)self _volumeIconMaximum];
  [v8 setMaximumValueImage:v10];

  v11 = [MEMORY[0x277D75348] systemGrayColor];
  [v8 setTintColor:v11];

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

- (id)_datePickerCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  if (![(HUAlarmEditViewController *)self isDatePickerWheelScrolled])
  {
    v11 = [(HUAlarmEditViewController *)self _dateComponents];
    [v10 setTimeComponents:v11];

    v12 = [v10 timeComponents];
    [(HUAlarmEditViewController *)self setCurrentDatePickerTimeComponents:v12];
  }

  [v10 setDelegate:self];
  [v10 setHideTitleLabel:1];
  [v10 setLeftMargin:8.0];
  [v10 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v10;
}

- (id)_mediaPropertiesTypeCellForTableView:(id)a3 atIndexpath:(id)a4
{
  v39[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v7 row])
  {
    v24 = [v6 dequeueReusableCellWithIdentifier:@"HURepeatMusicSwitchCellReuseIdentifier" forIndexPath:v7];
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

    v26 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v27 = [v26 isRepeatEnabled];

    v28 = objc_alloc(MEMORY[0x277D14B38]);
    v38[0] = *MEMORY[0x277D13F60];
    v29 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierRepeat", @"HUMediaSelectionQueueModifierRepeat", 1);
    v39[0] = v29;
    v38[1] = *MEMORY[0x277D14068];
    if (v27)
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
    v34 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v11 setOn:{objc_msgSend(v34, "isRepeatEnabled")}];

    v22 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v23 = [v22 isRepeatSupported];
    goto LABEL_17;
  }

  if ([v7 row] == 1)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"HUShuffleMusicSwitchCellReuseIdentifier" forIndexPath:v7];
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

    v12 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v13 = [v12 isRepeatEnabled];

    v14 = objc_alloc(MEMORY[0x277D14B38]);
    v36[0] = *MEMORY[0x277D13F60];
    v15 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierShuffle", @"HUMediaSelectionQueueModifierShuffle", 1);
    v37[0] = v15;
    v36[1] = *MEMORY[0x277D14068];
    if (v13)
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
    v21 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v11 setOn:{objc_msgSend(v21, "isShuffleEnabled")}];

    v22 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v23 = [v22 isShuffleSupported];
LABEL_17:
    [v11 setDisabled:v23 ^ 1u];

    [v11 updateUIWithAnimation:0];
    [v11 setDelegate:self];

    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (id)_volumeTypeCellForTableView:(id)a3 atIndexpath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUVolumeTypeReuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HUVolumeTypeReuseIdentifier"];
  }

  v8 = [v6 row];
  if (v8 == 1)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmUseCustomVolume", @"HUAlarmEditAlarmUseCustomVolume", 1);
    v14 = [v7 textLabel];
    [v14 setText:v13];

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
    v10 = [v7 textLabel];
    [v10 setText:v9];

    v11 = [v7 detailTextLabel];
    [v11 setAdjustsFontSizeToFitWidth:1];

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
    v3 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    if (v3)
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
  v2 = [(HUAlarmEditViewController *)self originalAlarm];
  v3 = v2 == 0;

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
    v4 = [(HUAlarmEditViewController *)self originalAlarm];
    v5 = [(HUAlarmEditViewController *)self editedAlarm];
    v3 = [v4 isEqual:v5] ^ 1;
  }

  return v3;
}

- (void)saveAlarmOnlyIfEdited:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  if (![(HUAlarmEditViewController *)self isEdited]&& v3)
  {
    return;
  }

  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v12 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    v13 = [v12 calendar];
    v14 = [(HUAlarmEditView *)self->_editAlarmView timePicker];
    v15 = [v14 date];
    v5 = [v13 components:96 fromDate:v15];

    goto LABEL_12;
  }

  v5 = [(HUAlarmEditViewController *)self currentDatePickerTimeComponents];
  v6 = [(HUAlarmEditViewController *)self _isAlarmTypeMedia];
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Saving Regular Alarm", &v31, 2u);
    }

    v12 = [(HUAlarmEditViewController *)self editedAlarm];
    [v12 setSound:0];
    goto LABEL_16;
  }

  if (v8)
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Saving Media Type Alarm", &v31, 2u);
  }

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v9 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    v10 = [(HUAlarmEditViewController *)self _configureSoundForMediaTypeAlarm:v9];
    v11 = [(HUAlarmEditViewController *)self editedAlarm];
    [v11 setSound:v10];
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(HUAlarmEditViewController *)self editedAlarm];
    v14 = [v13 sound];
    v31 = 138412290;
    v32 = v14;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Alarm Sound ..%@", &v31, 0xCu);
LABEL_12:
  }

LABEL_16:

  v16 = [v5 hour];
  v17 = [(HUAlarmEditViewController *)self editedAlarm];
  [v17 setHour:v16];

  v18 = [v5 minute];
  v19 = [(HUAlarmEditViewController *)self editedAlarm];
  [v19 setMinute:v18];

  v20 = [(HUAlarmEditViewController *)self editedAlarm];
  v21 = [(HUAlarmEditViewController *)self selectedRoom];
  v22 = [(HUAlarmEditViewController *)self mediaProfileContainer];
  [v20 hf_moveToRoom:v21 withMediaProfileContainer:v22];

  LODWORD(v21) = [(HUAlarmEditViewController *)self _isNewAlarm];
  v23 = HFLogForCategory();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v24)
    {
      v25 = [(HUAlarmEditViewController *)self editedAlarm];
      v26 = [v25 description];
      v31 = 138412290;
      v32 = v26;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "New Alarm - Alarm Desc %@", &v31, 0xCu);
    }

    v27 = [(HUAlarmEditViewController *)self delegate];
    v28 = [(HUAlarmEditViewController *)self editedAlarm];
    [v27 alarmEditController:self didAddAlarm:v28];
  }

  else
  {
    if (v24)
    {
      v29 = [(HUAlarmEditViewController *)self editedAlarm];
      v30 = [v29 description];
      v31 = 138412290;
      v32 = v30;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Edit Alarm - Alarm Desc %@", &v31, 0xCu);
    }

    v27 = [(HUAlarmEditViewController *)self delegate];
    v28 = [(HUAlarmEditViewController *)self editedAlarm];
    [v27 alarmEditController:self didEditAlarm:v28];
  }
}

- (void)_cancelButtonClicked:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUAlarmEditViewController _cancelButtonClicked:]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) canceling", &v6, 0x16u);
  }

  v5 = [(HUAlarmEditViewController *)self delegate];
  [v5 alarmEditControllerDidCancel:self];
}

- (void)_doneButtonClicked:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[HUAlarmEditViewController _doneButtonClicked:]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s(%@) done", &v5, 0x16u);
  }

  [(HUAlarmEditViewController *)self saveAlarmOnlyIfEdited:0];
}

- (void)startEditingSetting:(int64_t)a3
{
  self->_editingAlarmSetting = a3;
  v5 = [HUAlarmEditSettingViewController alloc];
  v6 = [(HUAlarmEditViewController *)self editedAlarm];
  v7 = [(HUAlarmEditViewController *)self mediaProfileContainer];
  v8 = [(HUAlarmEditViewController *)self selectedRoom];
  v9 = [(HUAlarmEditViewController *)self loggedInAppleMusicAccountDSID];
  v11 = [(HUAlarmEditSettingViewController *)v5 initWithAlarm:v6 setting:a3 mediaProfileContainer:v7 selectedRoom:v8 loggedInAppleMusicAccountDSID:v9];

  [(HUAlarmEditSettingViewController *)v11 setDelegate:self];
  [(HUAlarmEditViewController *)self preferredContentSize];
  [(HUAlarmEditSettingViewController *)v11 setPreferredContentSize:?];
  v10 = [(HUAlarmEditViewController *)self navigationController];
  [v10 pushViewController:v11 animated:1];
}

- (void)_handlePickerChanged
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {

    [(HUAlarmEditViewController *)self setIsDatePickerWheelScrolled:1];
  }
}

- (void)_updateEnableStateForDoneButton:(BOOL)a3
{
  v3 = a3;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v6 = [(HUAlarmEditViewController *)self navigationItem];
    v5 = [v6 rightBarButtonItem];
    [v5 setEnabled:v3];
  }
}

- (void)_updateAppleMusicSubscriptionStatus
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appleMusicSubcriptionResult = self->_appleMusicSubcriptionResult;
    self->_appleMusicSubcriptionResult = v3;

    v5 = [(HUAlarmEditViewController *)self mediaProfileContainer];
    v6 = [v5 mediaProfiles];
    v7 = [v6 hf_homePodMediaProfiles];
    v8 = [(HUAlarmEditViewController *)self mediaProfileContainer];
    v9 = [v8 hf_home];
    v10 = [HUMediaAccountUtilities determineMediaPickerAvailabilityForHomePodProfiles:v7 inHome:v9];

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
  v3 = [MEMORY[0x277CCAD30] sharedSession];
  v4 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
  v5 = [v4 mediaPlayerPlaybackArchive];

  v6 = [v5 displayProperties];
  v7 = [v6 artworkImageURL];
  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Loading artwork for Media Alarm [%@]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__HUAlarmEditViewController__loadArtworkForMediaAlarm__block_invoke;
    v11[3] = &unk_277DBD2B8;
    objc_copyWeak(&v12, buf);
    v9 = [v3 dataTaskWithURL:v7 completionHandler:v11];
    [(HUAlarmEditViewController *)self setArtworkFetchTask:v9];

    v10 = [(HUAlarmEditViewController *)self artworkFetchTask];
    [v10 resume];

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
  v3 = [(MTMutableAlarm *)self->_editedAlarm sound];
  v4 = [v3 toneIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [(MTMutableAlarm *)self->_editedAlarm sound];
    v7 = [v6 toneIdentifier];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [getTLToneManagerClass() sharedToneManager];
      v10 = [(MTMutableAlarm *)self->_editedAlarm sound];
      v11 = [v10 toneIdentifier];
      v12 = [v9 _underlyingPlaybackArchiveForToneIdentifier:v11];

      if (v12)
      {
        v13 = [(HUAlarmEditViewController *)self editedAlarm];
        v14 = [v13 sound];
        v15 = [v14 soundVolume];

        if (v15)
        {
          [(HUAlarmEditViewController *)self setIsCustomVolumeSelected:1];
          v16 = [(HUAlarmEditViewController *)self editedAlarm];
          v17 = [v16 sound];
          [v17 soundVolume];
        }

        else
        {
          v16 = [(HUAlarmEditViewController *)self mediaProfileContainer];
          v17 = [v16 mediaProfiles];
          [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:v17];
        }
        v20 = ;
        [v20 floatValue];
        [(HUAlarmEditViewController *)self setSelectedCustomVolumeLevel:v21];

        v22 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:v12];
        hfPlaybackArchive = self->_hfPlaybackArchive;
        self->_hfPlaybackArchive = v22;

        if (self->_hfPlaybackArchive)
        {
          v24 = [v12 displayProperties];
          v25 = [v24 artworkImageData];
          if (v25)
          {
          }

          else
          {
            v26 = [v12 displayProperties];
            v27 = [v26 artworkImageURL];

            if (v27)
            {
              [(HUAlarmEditViewController *)self _loadArtworkForMediaAlarm];
            }
          }

          [(HUAlarmEditViewController *)self setIsPlayMediaSelected:1];
          v18 = HFLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
            v29 = [v28 description];
            v30 = [(MTMutableAlarm *)self->_editedAlarm sound];
            v31 = [v30 toneIdentifier];
            v32 = 138412802;
            v33 = v29;
            v34 = 2112;
            v35 = v31;
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

- (id)_configureSoundForMediaTypeAlarm:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaPlayerPlaybackArchive];
  v6 = [v5 displayProperties];
  v7 = [v6 artworkImageData];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 displayProperties];
    v10 = [v9 artworkImageURL];

    if (v10)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Stripping artwork from Media Alarm", &v21, 2u);
      }

      v12 = [v5 copyWithOptions:8];
      v5 = v12;
    }
  }

  else
  {
  }

  v13 = [getTLToneManagerClass() sharedToneManager];
  v14 = [v13 _toneIdentifierWithUnderlyingPlaybackArchive:v5];

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
      v19 = [v4 mediaPlayerPlaybackArchive];
      v21 = 138413058;
      v22 = v16;
      v23 = 2112;
      v24 = v19;
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
      v22 = v5;
      _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "Failed to convert playback archive %@ into a tone identifier.", &v21, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isMusicAlarmSupportedInAccessory
{
  v2 = [(HUAlarmEditViewController *)self mediaProfileContainer];
  v3 = [v2 hf_supportsMusicAlarm];

  return v3;
}

- (void)alarmEditSettingController:(id)a3 didEditAlarm:(id)a4
{
  v6 = a4;
  v7 = [a3 selectedRoom];
  [(HUAlarmEditViewController *)self setSelectedRoom:v7];

  v8 = [v6 mutableCopy];
  [(HUAlarmEditViewController *)self setEditedAlarm:v8];

  v9 = [(HUAlarmEditView *)self->_editAlarmView settingsTable];
  [v9 reloadData];
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v6 = [v19 textLabel];
    v7 = [v6 text];
    v8 = _HULocalizedStringWithDefaultValue(@"HUAlarmEditAlarmSnooze", @"HUAlarmEditAlarmSnooze", 1);
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [(HUAlarmEditViewController *)self editedAlarm];
      [v10 setAllowsSnooze:v4];
    }

    else
    {
      v11 = [v19 textLabel];
      v12 = [v11 text];
      v13 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierRepeat", @"HUMediaSelectionQueueModifierRepeat", 1);
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        v10 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
        [v10 setRepeatEnabled:v4];
      }

      else
      {
        v15 = [v19 textLabel];
        v16 = [v15 text];
        v17 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionQueueModifierShuffle", @"HUMediaSelectionQueueModifierShuffle", 1);
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_9;
        }

        v10 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
        [v10 setShuffleEnabled:v4];
      }
    }
  }

LABEL_9:
}

- (void)sliderValueTableViewCell:(id)a3 didChangeValue:(double)a4
{
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {

    [(HUAlarmEditViewController *)self setSelectedCustomVolumeLevel:a4];
  }
}

- (void)datePickerCell:(id)a3 didSelectDate:(id)a4
{
  v6 = a3;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    [(HUAlarmEditViewController *)self setIsDatePickerWheelScrolled:1];
    v5 = [v6 timeComponents];
    [(HUAlarmEditViewController *)self setCurrentDatePickerTimeComponents:v5];
  }
}

- (void)mediaPicker:(id)a3 didPickPlaybackArchive:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v6 = [(HUAlarmEditViewController *)self artworkFetchTask];
    [v6 cancel];

    [(HUAlarmEditViewController *)self setHfPlaybackArchive:0];
    v7 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:v5];
    [(HUAlarmEditViewController *)self setHfPlaybackArchive:v7];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v10 = [v9 description];
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "didPickPlaybackArchive Media Alarm. Description %@", buf, 0xCu);
    }

    v11 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v11 setAutoPlayEnabled:0];

    v12 = [(HUAlarmEditViewController *)self editAlarmView];
    v13 = [v12 settingsTable];
    [v13 reloadData];

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

- (void)_presentMediaPickerWithOptionsShowsLibraryContent:(BOOL)a3
{
  v3 = a3;
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
    [v7 setShowsLibraryContent:v3];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
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
    v15 = [(HUAlarmEditViewController *)self view];
    [v15 frame];
    [v7 setPreferredContentSize:{v16, v17}];

    [(HUAlarmEditViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)mediaPickerDidPickPlaybackArchive:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    v5 = [(HUAlarmEditViewController *)self artworkFetchTask];
    [v5 cancel];

    [(HUAlarmEditViewController *)self setHfPlaybackArchive:0];
    v6 = [objc_alloc(MEMORY[0x277D14948]) initWithMediaPlayerPlaybackArchive:v4];
    [(HUAlarmEditViewController *)self setHfPlaybackArchive:v6];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
      v9 = [v8 description];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "didPickPlaybackArchive Media Alarm. Description %@", &v13, 0xCu);
    }

    v10 = [(HUAlarmEditViewController *)self hfPlaybackArchive];
    [v10 setAutoPlayEnabled:0];

    v11 = [(HUAlarmEditViewController *)self editAlarmView];
    v12 = [v11 settingsTable];
    [v12 reloadData];

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

  v4 = [(HUAlarmEditViewController *)self mediaProfileContainer];
  v5 = [v4 mediaProfiles];
  v6 = [HUMediaAccountUtilities defaultCurrentVolumeForMediaProfiles:v5];
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
    v11 = [(HUAlarmEditViewController *)self editedAlarm];
    v12 = [v11 sound];
    v13 = [v12 soundVolume];

    if (v13)
    {
      v14 = [(HUAlarmEditViewController *)self editedAlarm];
      v15 = [v14 sound];
      v16 = [v15 soundVolume];
      [v16 floatValue];
      v18 = v17;
      [(HUAlarmEditViewController *)self selectedCustomVolumeLevel];
      if (v19 == v18)
      {
        v20 = [(HUAlarmEditViewController *)self editedAlarm];
        v21 = [v20 sound];
        v22 = [v21 soundVolume];
        [v22 floatValue];
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

- (void)_presentMediaPickerUnavailablePromptWithReason:(int64_t)a3 storeKitErrorObject:(id)a4
{
  v6 = a4;
  if (![(HUAlarmEditViewController *)self accessorySupportsMusicAlarm])
  {
    goto LABEL_16;
  }

  switch(a3)
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
      v11 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
      goto LABEL_12;
    default:
      v9 = 0;
      v7 = 0;
      v21 = 0;
      v10 = 0;
      break;
  }

  v11 = [v6 localizedDescription];
  v8 = 0;
LABEL_12:
  v12 = MEMORY[0x277D75110];
  v13 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  v14 = [v12 alertControllerWithTitle:v13 message:v11 preferredStyle:1];

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