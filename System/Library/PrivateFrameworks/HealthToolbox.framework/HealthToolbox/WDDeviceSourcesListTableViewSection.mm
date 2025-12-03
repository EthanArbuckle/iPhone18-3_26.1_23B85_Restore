@interface WDDeviceSourcesListTableViewSection
- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view;
- (id)_uuidStringForDevice:(id)device;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (id)noneString;
- (id)titleForHeader;
- (unint64_t)numberOfRows;
- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error;
- (void)applicationWillEnterForeground;
- (void)dataSourceDidUpdate;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
- (void)reloadDevices;
- (void)setSourceListDataSource:(id)source;
- (void)setSources:(id)sources devices:(id)devices;
@end

@implementation WDDeviceSourcesListTableViewSection

- (void)setSourceListDataSource:(id)source
{
  v4.receiver = self;
  v4.super_class = WDDeviceSourcesListTableViewSection;
  [(WDSourcesListTableViewSection *)&v4 setSourceListDataSource:source];
  [(WDDeviceSourcesListTableViewSection *)self reloadDevices];
}

- (void)dataSourceDidUpdate
{
  dataSource = [(WDSourcesListTableViewSection *)self dataSource];
  sources = [dataSource sources];
  orderedDeviceSources = [sources orderedDeviceSources];
  [(WDDeviceSourcesListTableViewSection *)self setSources:orderedDeviceSources devices:self->_devices];

  [(WDDeviceSourcesListTableViewSection *)self reloadDevices];
}

- (void)reloadDevices
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__3;
  v12[4] = __Block_byref_object_dispose__3;
  v13 = [MEMORY[0x277CBEB58] set];
  objc_initWeak(&location, self);
  dataSource = [(WDSourcesListTableViewSection *)self dataSource];
  healthStore = [dataSource healthStore];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke;
  v6[3] = &unk_2796E8210;
  v9 = v12;
  v5 = healthStore;
  v7 = v5;
  objc_copyWeak(&v10, &location);
  selfCopy = self;
  [v5 healthPeripheralsWithCustomProperties:&unk_28642E020 withCompletion:v6];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v18 = v5;
  v19 = a3;
  if (v19)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_cold_1(v19, v6);
    }
  }

  else if (v5 && [v5 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = *(*(*(a1 + 48) + 8) + 40);
          v12 = [v10 identifier];
          v13 = [v12 UUIDString];
          [v11 addObject:v13];

          _HKInitializeLogging();
          v14 = HKLogWellnessDashboard();
          LODWORD(v12) = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

          if (v12)
          {
            v15 = HKLogWellnessDashboard();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31 = v10;
              _os_log_impl(&dword_251E85000, v15, OS_LOG_TYPE_INFO, "Bluetooth devices retrieved: %@", buf, 0xCu);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = 0;
      _os_log_impl(&dword_251E85000, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth devices not returned, %{public}@", buf, 0xCu);
    }
  }

  v16 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_324;
  v20[3] = &unk_2796E8210;
  v23 = *(a1 + 48);
  v21 = v16;
  objc_copyWeak(&v24, (a1 + 56));
  v22 = *(a1 + 40);
  [v21 healthPeripheralsWithFilter:1 handler:v20];
  objc_destroyWeak(&v24);

  v17 = *MEMORY[0x277D85DE8];
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_324(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if (![v11 type])
          {
            v12 = *(*(*(a1 + 48) + 8) + 40);
            v13 = [v11 identifier];
            v14 = [v13 UUIDString];
            [v12 addObject:v14];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_324_cold_1(v6, v7);
    }
  }

  v15 = [objc_alloc(MEMORY[0x277CCD328]) initWithHealthStore:*(a1 + 32)];
  v16 = *(*(*(a1 + 48) + 8) + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_326;
  v19[3] = &unk_2796E81E8;
  objc_copyWeak(&v20, (a1 + 56));
  v17 = *MEMORY[0x277CCBC50];
  v19[4] = *(a1 + 40);
  [v15 fetchGymkitAndBluetoothDevicesMatchingValues:v16 forProperty:v17 completion:v19];
  objc_destroyWeak(&v20);

  v18 = *MEMORY[0x277D85DE8];
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_326(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_2;
  block[3] = &unk_2796E81C0;
  objc_copyWeak(&v7, (a1 + 40));
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  v4 = [v2 allObjects];
  [WeakRetained setSources:v3 devices:v4];
}

- (void)setSources:(id)sources devices:(id)devices
{
  v48 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  devicesCopy = devices;
  objc_storeStrong(&self->_sources, sources);
  objc_storeStrong(&self->_devices, devices);
  v9 = [MEMORY[0x277CBEB58] set];
  [(WDDeviceSourcesListTableViewSection *)self setIdentifiers:v9];

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(devicesCopy, "count") + objc_msgSend(sourcesCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = sourcesCopy;
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        source = [v16 source];
        _isHiddenSource = [source _isHiddenSource];

        if ((_isHiddenSource & 1) == 0)
        {
          v19 = [[WDSource alloc] initWithSource:v16 device:0];
          [(NSArray *)v10 addObject:v19];

          identifiers = self->_identifiers;
          source2 = [v16 source];
          bundleIdentifier = [source2 bundleIdentifier];
          [(NSMutableSet *)identifiers addObject:bundleIdentifier];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v13);
  }

  v37 = v11;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = devicesCopy;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v38 + 1) + 8 * j);
        localDevice = [MEMORY[0x277CCD2E8] localDevice];
        v30 = [v28 isEqual:localDevice];

        if ((v30 & 1) == 0 && (![v28 _isAppleManufacturer] || !objc_msgSend(v28, "_isAppleModel") || (objc_msgSend(v28, "_isAppleHardwareVersion") & 1) == 0))
        {
          v31 = self->_identifiers;
          localIdentifier = [v28 localIdentifier];
          LOBYTE(v31) = [(NSMutableSet *)v31 containsObject:localIdentifier];

          if ((v31 & 1) == 0)
          {
            v33 = [[WDSource alloc] initWithSource:0 device:v28];
            [(NSArray *)v10 addObject:v33];
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v25);
  }

  [(NSArray *)v10 sortUsingComparator:&__block_literal_global_12];
  list = self->_list;
  self->_list = v10;

  delegate = [(WDTableViewSection *)self delegate];
  [delegate reloadTable];

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __58__WDDeviceSourcesListTableViewSection_setSources_devices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)applicationWillEnterForeground
{
  [(WDDeviceSourcesListTableViewSection *)self reloadDevices];
  v3.receiver = self;
  v3.super_class = WDDeviceSourcesListTableViewSection;
  [(WDTableViewSection *)&v3 applicationWillEnterForeground];
}

- (unint64_t)numberOfRows
{
  result = [(NSArray *)self->_list count];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)titleForHeader
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"DEVICES_LIST_HEADER" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)noneString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"DEVICES_NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

  return v3;
}

- (id)cellForRow:(unint64_t)row table:(id)table
{
  tableCopy = table;
  identifiers = [(WDDeviceSourcesListTableViewSection *)self identifiers];

  if (identifiers)
  {
    if ([(NSArray *)self->_list count])
    {
      [(WDDeviceSourcesListTableViewSection *)self _sourceCellForRow:row tableView:tableCopy];
    }

    else
    {
      [(WDSourcesListTableViewSection *)self noneCellForTableView:tableCopy];
    }
    v9 = ;
  }

  else
  {
    v8 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
    v9 = [tableCopy dequeueReusableCellWithIdentifier:v8];
  }

  return v9;
}

- (id)_sourceCellForRow:(unint64_t)row tableView:(id)view
{
  viewCopy = view;
  v7 = [viewCopy dequeueReusableCellWithIdentifier:@"WDSourcesListTableViewSectionSource"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDSourcesListTableViewSectionSource"];
    [v7 setAccessoryType:1];
  }

  v8 = [(WDDeviceSourcesListTableViewSection *)self _sourceForRow:row];
  name = [v8 name];
  textLabel = [v7 textLabel];
  [textLabel setText:name];

  v11 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel2 = [v7 textLabel];
  [textLabel2 setFont:v11];

  device = [v8 device];

  if (device)
  {
    mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
    device2 = [v8 device];
    v16 = [mEMORY[0x277D127A8] iconForDevice:device2];
    imageView = [v7 imageView];
    [imageView setImage:v16];
  }

  else
  {
    sourceModel = [v8 sourceModel];
    icon = [sourceModel icon];

    sourceModel2 = [v8 sourceModel];
    v21 = sourceModel2;
    if (icon)
    {
      icon2 = [sourceModel2 icon];
      imageView2 = [v7 imageView];
      [imageView2 setImage:icon2];
    }

    else
    {
      source = [sourceModel2 source];

      objc_initWeak(&location, self);
      mEMORY[0x277D127A8]2 = [MEMORY[0x277D127A8] sharedImageManager];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke;
      v34[3] = &unk_2796E6C50;
      v26 = v7;
      v35 = v26;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke_2;
      v29[3] = &unk_2796E6CA0;
      objc_copyWeak(&v33, &location);
      v27 = source;
      v30 = v27;
      v31 = v26;
      v32 = viewCopy;
      [mEMORY[0x277D127A8]2 loadIconForSource:v27 syncHandler:v34 asyncHandler:v29];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

void __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 imageView];
  [v4 setImage:v3];
}

void __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke_3;
  v9[3] = &unk_2796E6C78;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v15);
}

void __67__WDDeviceSourcesListTableViewSection__sourceCellForRow_tableView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error
{
  imageCopy = image;
  cellCopy = cell;
  if (imageCopy && !error)
  {
    sourceCopy = source;
    v14 = [view indexPathForCell:cellCopy];
    v15 = -[WDDeviceSourcesListTableViewSection _sourceForRow:](self, "_sourceForRow:", [v14 row]);
    sourceModel = [v15 sourceModel];
    source = [sourceModel source];

    LODWORD(v15) = [source isEqual:sourceCopy];
    if (v15)
    {
      imageView = [cellCopy imageView];
      [imageView setImage:imageCopy];
    }
  }
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  completionCopy = completion;
  list = [(WDDeviceSourcesListTableViewSection *)self list];
  v8 = [list count];

  if (v8 <= row)
  {
    completionCopy[2](completionCopy, 1, 1);
    goto LABEL_28;
  }

  v9 = [(WDDeviceSourcesListTableViewSection *)self _sourceForRow:row];
  sourceModel = [v9 sourceModel];
  source = [sourceModel source];

  if (!source)
  {
    device = [v9 device];
    v14 = device;
    if (device && [device _isConnectedGymDevice])
    {
      delegate7 = [(HKTableViewController *)[WDDeviceStoredDataViewController alloc] initWithUsingInsetStyling:1];
      [(WDDeviceStoredDataViewController *)delegate7 setDevice:v14];
      _connectedGymDeviceFullName = [v14 _connectedGymDeviceFullName];
      [(WDDeviceStoredDataViewController *)delegate7 setDisplayName:_connectedGymDeviceFullName];

      delegate = [(WDTableViewSection *)self delegate];
      profile = [delegate profile];
      [(WDStoredDataByCategoryViewController *)delegate7 setProfile:profile];

      delegate2 = [(WDTableViewSection *)self delegate];
      [delegate2 pushViewController:delegate7];
    }

    else
    {
      delegate7 = [(HKTableViewController *)[WDDeviceStoredDataViewController alloc] initWithUsingInsetStyling:1];
      [(WDDeviceStoredDataViewController *)delegate7 setDevice:v14];
      name = [v14 name];
      if (name)
      {
        [(WDDeviceStoredDataViewController *)delegate7 setDisplayName:name];
      }

      else
      {
        model = [v14 model];
        if (model)
        {
          [(WDDeviceStoredDataViewController *)delegate7 setDisplayName:model];
        }

        else
        {
          manufacturer = [v14 manufacturer];
          v30 = manufacturer;
          if (manufacturer)
          {
            v31 = manufacturer;
          }

          else
          {
            v31 = &stru_28641D9B8;
          }

          [(WDDeviceStoredDataViewController *)delegate7 setDisplayName:v31];
        }
      }

      delegate3 = [(WDTableViewSection *)self delegate];
      profile2 = [delegate3 profile];
      [(WDStoredDataByCategoryViewController *)delegate7 setProfile:profile2];

      delegate2 = [(WDDeviceSourcesListTableViewSection *)self _uuidStringForDevice:v14];
      v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:delegate2];
      if (v34)
      {
        [(WDStoredDataByCategoryViewController *)delegate7 setIsBluetoothDevice:1];
      }

      [(WDStoredDataByCategoryViewController *)delegate7 setDeviceIdentifier:v34];
      delegate4 = [(WDTableViewSection *)self delegate];
      [delegate4 pushViewController:delegate7];
    }

    goto LABEL_27;
  }

  if ([source _isAppleWatch])
  {
    v12 = WDWatchStoredDataViewController;
  }

  else
  {
    if (![source _hasFirstPartyBundleID])
    {
      v23 = objc_alloc(MEMORY[0x277D12AC8]);
      delegate5 = [(WDTableViewSection *)self delegate];
      profile3 = [delegate5 profile];
      healthStore = [profile3 healthStore];
      delegate6 = [(WDTableViewSection *)self delegate];
      profile4 = [delegate6 profile];
      displayTypeController = [profile4 displayTypeController];
      v14 = [v23 initWithHealthStore:healthStore displayTypeController:displayTypeController source:source useInsetStyling:1];

      goto LABEL_15;
    }

    v12 = WDLocalDeviceStoredDataViewController;
  }

  v14 = [[v12 alloc] initWithUsingInsetStyling:1];
  [v14 setSource:source];
  delegate5 = [(WDTableViewSection *)self delegate];
  profile3 = [delegate5 profile];
  [v14 setProfile:profile3];
LABEL_15:

  delegate7 = [(WDTableViewSection *)self delegate];
  [(WDDeviceStoredDataViewController *)delegate7 pushViewController:v14];
LABEL_27:

  completionCopy[2](completionCopy, 1, 0);
LABEL_28:
}

- (id)_uuidStringForDevice:(id)device
{
  deviceCopy = device;
  bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    bluetoothIdentifier2 = [deviceCopy bluetoothIdentifier];
LABEL_5:
    v7 = bluetoothIdentifier2;
    goto LABEL_6;
  }

  localIdentifier = [deviceCopy localIdentifier];

  if (localIdentifier)
  {
    bluetoothIdentifier2 = [deviceCopy localIdentifier];
    goto LABEL_5;
  }

  v7 = &stru_28641D9B8;
LABEL_6:

  return v7;
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve Bluetooth devices, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__WDDeviceSourcesListTableViewSection_reloadDevices__block_invoke_324_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "BTLE services not returned, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end