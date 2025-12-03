@interface CKiCloudSyncStateBuilder
+ (id)_messagesInCloudCountStringWithLongCount:(unint64_t)count;
+ (id)_syncFooterTextWithStatusError:(id)error dateString:(id)string;
+ (id)_syncingMessagesStringWithLongCount:(unint64_t)count;
+ (id)accountMismatchStateForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)idleStateForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)noSyncStorageAlmostFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)noSyncStorageFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)noSyncStorageOverFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncCompleteForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncDownloadingForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncModelForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncPausedAirplaneModeForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncPausedCellularDataDisabledForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncPausedNoInternetConnectionForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
+ (id)syncUploadingForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor;
@end

@implementation CKiCloudSyncStateBuilder

+ (id)syncModelForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  var0 = descriptor->var0;
  if (descriptor->var0 > 4)
  {
    if (var0 <= 6)
    {
      if (var0 == 5)
      {
        v36 = *&descriptor->var0;
        var3 = descriptor->var3;
        var2 = descriptor->var2;
        v8 = var3;
        v38 = v8;
        var4 = descriptor->var4;
        if (self)
        {
          v9 = [self syncPausedCellularDataDisabledForDescriptor:&v36];
          goto LABEL_34;
        }
      }

      else
      {
        if (var0 != 6)
        {
          goto LABEL_36;
        }

        v32 = *&descriptor->var0;
        v12 = descriptor->var3;
        v33 = descriptor->var2;
        v8 = v12;
        v34 = v8;
        v35 = descriptor->var4;
        if (self)
        {
          v9 = [self accountMismatchStateForDescriptor:&v32];
          goto LABEL_34;
        }
      }
    }

    else
    {
      switch(var0)
      {
        case 7:
          v28 = *&descriptor->var0;
          v16 = descriptor->var3;
          v29 = descriptor->var2;
          v8 = v16;
          v30 = v8;
          v31 = descriptor->var4;
          if (self)
          {
            v9 = [self noSyncStorageAlmostFullForDescriptor:&v28];
            goto LABEL_34;
          }

          break;
        case 8:
          v24 = *&descriptor->var0;
          v18 = descriptor->var3;
          v25 = descriptor->var2;
          v8 = v18;
          v26 = v8;
          v27 = descriptor->var4;
          if (self)
          {
            v9 = [self noSyncStorageFullForDescriptor:&v24];
            goto LABEL_34;
          }

          break;
        case 9:
          v20 = *&descriptor->var0;
          v10 = descriptor->var3;
          v21 = descriptor->var2;
          v8 = v10;
          v22 = v8;
          v23 = descriptor->var4;
          if (self)
          {
            v9 = [self noSyncStorageOverFullForDescriptor:&v20];
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_36;
      }
    }
  }

  else if (var0 <= 1)
  {
    if (var0)
    {
      if (var0 != 1)
      {
        goto LABEL_36;
      }

      v52 = *&descriptor->var0;
      v11 = descriptor->var3;
      v53 = descriptor->var2;
      v8 = v11;
      v54 = v8;
      v55 = descriptor->var4;
      if (self)
      {
        v9 = [self syncUploadingForDescriptor:&v52];
        goto LABEL_34;
      }
    }

    else
    {
      v56 = *&descriptor->var0;
      v13 = descriptor->var3;
      v57 = descriptor->var2;
      v8 = v13;
      v58 = v8;
      v59 = descriptor->var4;
      if (self)
      {
        v9 = [self idleStateForDescriptor:&v56];
        goto LABEL_34;
      }
    }
  }

  else
  {
    switch(var0)
    {
      case 2:
        v48 = *&descriptor->var0;
        v15 = descriptor->var3;
        v49 = descriptor->var2;
        v8 = v15;
        v50 = v8;
        v51 = descriptor->var4;
        if (self)
        {
          v9 = [self syncDownloadingForDescriptor:&v48];
          goto LABEL_34;
        }

        break;
      case 3:
        v44 = *&descriptor->var0;
        v17 = descriptor->var3;
        v45 = descriptor->var2;
        v8 = v17;
        v46 = v8;
        v47 = descriptor->var4;
        if (self)
        {
          v9 = [self syncPausedNoInternetConnectionForDescriptor:&v44];
          goto LABEL_34;
        }

        break;
      case 4:
        v40 = *&descriptor->var0;
        v7 = descriptor->var3;
        v41 = descriptor->var2;
        v8 = v7;
        v42 = v8;
        v43 = descriptor->var4;
        if (self)
        {
          v9 = [self syncPausedAirplaneModeForDescriptor:&v40];
LABEL_34:
          v3 = v9;
          goto LABEL_36;
        }

        break;
      default:
        goto LABEL_36;
    }
  }

  v3 = 0;
LABEL_36:

  return v3;
}

+ (id)idleStateForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:0];
  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:1];
  if (descriptor->var4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SYNC_PAUSED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];
  }

  else
  {
    v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:1];
    [(CKiCloudSyncStateModel *)v5 setSyncStatus:v7];
  }

  return v5;
}

+ (id)syncUploadingForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  if (descriptor->var2)
  {
    v5 = [self _syncingMessagesStringWithLongCount:?];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SYNCING_WITH_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  }

  v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v8 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v8 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v8 setSyncStatusMacButtonType:1];
  v9 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v8 setMessagesInCloudCount:v9];

  [(CKiCloudSyncStateModel *)v8 setSyncStatus:v5];
  [(CKiCloudSyncStateModel *)v8 setSyncStatusFooterText:v7];
  [(CKiCloudSyncStateModel *)v8 setLastSyncedDateString:v7];
  [(CKiCloudSyncStateModel *)v8 setSyncAvailable:1];

  return v8;
}

+ (id)syncDownloadingForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v6 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v6 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v6 setSyncStatusMacButtonType:1];
  v7 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v6 setMessagesInCloudCount:v7];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SYNCING_WITH_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v6 setSyncStatus:v9];

  [(CKiCloudSyncStateModel *)v6 setSyncStatusFooterText:v5];
  [(CKiCloudSyncStateModel *)v6 setLastSyncedDateString:v5];
  [(CKiCloudSyncStateModel *)v6 setSyncAvailable:1];

  return v6;
}

+ (id)syncCompleteForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_COMPLETE_JUST_NOW" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:0];
  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:1];

  return v5;
}

+ (id)syncPausedNoInternetConnectionForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:3];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_PAUSED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_ERROR_NO_INTERNET" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETTINGS_CTA" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SYNC_ERROR_NO_INTERNET_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)syncPausedAirplaneModeForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:0];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_PAUSED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_ERROR_AIRPLANE_MODE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETTINGS_CTA" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SYNC_ERROR_AIRPLANE_MODE_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)syncPausedCellularDataDisabledForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:0];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_PAUSED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SYNC_ERROR_NO_CELLULAR_DATA" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETTINGS_CTA" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SYNC_ERROR_NO_CELLULAR_DATA_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)accountMismatchStateForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:3];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_FAILED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ICLOUD_ACCOUNT_MISMATCH" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETTINGS_CTA" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"ICLOUD_ACCOUNT_MISMATCH_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)noSyncStorageAlmostFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v7];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:1];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_ALMOST_FULL" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"GET_MORE_STORAGE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_ALMOST_FULL_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v15 = [v12 stringWithFormat:v14, v11];

  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v15];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v11];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v9];

  return v5;
}

+ (id)noSyncStorageFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:2];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NOT_SYNCING" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_FULL" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"GET_MORE_STORAGE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_FULL_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)noSyncStorageOverFullForDescriptor:(CKiCloudSyncStatusDescriptor *)descriptor
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:descriptor->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:2];
  v6 = [self _messagesInCloudCountStringWithLongCount:descriptor->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NOT_SYNCING" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_OVER_FULL" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"GET_MORE_STORAGE" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"YOUR_ICLOUD_STORAGE_IS_OVER_FULL_%@" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  v16 = [v13 stringWithFormat:v15, v12];

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:descriptor->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)_messagesInCloudCountStringWithLongCount:(unint64_t)count
{
  v4 = +[CKiCloudSettingsUtils sharedNumberFormatter];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"N_MESSAGE(S)" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    v10 = [v7 stringWithFormat:v9, count, v6];
  }

  else
  {
    v10 = @"Unknown";
  }

  return v10;
}

+ (id)_syncingMessagesStringWithLongCount:(unint64_t)count
{
  v4 = +[CKiCloudSettingsUtils sharedNumberFormatter];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SYNCING_N_MESSAGE(S)" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    v10 = [v7 stringWithFormat:v9, count, v6];
  }

  else
  {
    v10 = @"Unknown";
  }

  return v10;
}

+ (id)_syncFooterTextWithStatusError:(id)error dateString:(id)string
{
  errorCopy = error;
  v6 = errorCopy;
  if (string)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", errorCopy, string];
  }

  else
  {
    string = errorCopy;
  }

  v8 = string;

  return v8;
}

@end