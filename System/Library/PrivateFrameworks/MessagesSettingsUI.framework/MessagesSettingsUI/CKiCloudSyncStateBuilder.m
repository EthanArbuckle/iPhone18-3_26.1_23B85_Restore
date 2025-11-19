@interface CKiCloudSyncStateBuilder
+ (id)_messagesInCloudCountStringWithLongCount:(unint64_t)a3;
+ (id)_syncFooterTextWithStatusError:(id)a3 dateString:(id)a4;
+ (id)_syncingMessagesStringWithLongCount:(unint64_t)a3;
+ (id)accountMismatchStateForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)idleStateForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)noSyncStorageAlmostFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)noSyncStorageFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)noSyncStorageOverFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncCompleteForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncDownloadingForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncModelForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncPausedAirplaneModeForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncPausedCellularDataDisabledForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncPausedNoInternetConnectionForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
+ (id)syncUploadingForDescriptor:(CKiCloudSyncStatusDescriptor *)a3;
@end

@implementation CKiCloudSyncStateBuilder

+ (id)syncModelForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  var0 = a3->var0;
  if (a3->var0 > 4)
  {
    if (var0 <= 6)
    {
      if (var0 == 5)
      {
        v36 = *&a3->var0;
        var3 = a3->var3;
        var2 = a3->var2;
        v8 = var3;
        v38 = v8;
        var4 = a3->var4;
        if (a1)
        {
          v9 = [a1 syncPausedCellularDataDisabledForDescriptor:&v36];
          goto LABEL_34;
        }
      }

      else
      {
        if (var0 != 6)
        {
          goto LABEL_36;
        }

        v32 = *&a3->var0;
        v12 = a3->var3;
        v33 = a3->var2;
        v8 = v12;
        v34 = v8;
        v35 = a3->var4;
        if (a1)
        {
          v9 = [a1 accountMismatchStateForDescriptor:&v32];
          goto LABEL_34;
        }
      }
    }

    else
    {
      switch(var0)
      {
        case 7:
          v28 = *&a3->var0;
          v16 = a3->var3;
          v29 = a3->var2;
          v8 = v16;
          v30 = v8;
          v31 = a3->var4;
          if (a1)
          {
            v9 = [a1 noSyncStorageAlmostFullForDescriptor:&v28];
            goto LABEL_34;
          }

          break;
        case 8:
          v24 = *&a3->var0;
          v18 = a3->var3;
          v25 = a3->var2;
          v8 = v18;
          v26 = v8;
          v27 = a3->var4;
          if (a1)
          {
            v9 = [a1 noSyncStorageFullForDescriptor:&v24];
            goto LABEL_34;
          }

          break;
        case 9:
          v20 = *&a3->var0;
          v10 = a3->var3;
          v21 = a3->var2;
          v8 = v10;
          v22 = v8;
          v23 = a3->var4;
          if (a1)
          {
            v9 = [a1 noSyncStorageOverFullForDescriptor:&v20];
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

      v52 = *&a3->var0;
      v11 = a3->var3;
      v53 = a3->var2;
      v8 = v11;
      v54 = v8;
      v55 = a3->var4;
      if (a1)
      {
        v9 = [a1 syncUploadingForDescriptor:&v52];
        goto LABEL_34;
      }
    }

    else
    {
      v56 = *&a3->var0;
      v13 = a3->var3;
      v57 = a3->var2;
      v8 = v13;
      v58 = v8;
      v59 = a3->var4;
      if (a1)
      {
        v9 = [a1 idleStateForDescriptor:&v56];
        goto LABEL_34;
      }
    }
  }

  else
  {
    switch(var0)
    {
      case 2:
        v48 = *&a3->var0;
        v15 = a3->var3;
        v49 = a3->var2;
        v8 = v15;
        v50 = v8;
        v51 = a3->var4;
        if (a1)
        {
          v9 = [a1 syncDownloadingForDescriptor:&v48];
          goto LABEL_34;
        }

        break;
      case 3:
        v44 = *&a3->var0;
        v17 = a3->var3;
        v45 = a3->var2;
        v8 = v17;
        v46 = v8;
        v47 = a3->var4;
        if (a1)
        {
          v9 = [a1 syncPausedNoInternetConnectionForDescriptor:&v44];
          goto LABEL_34;
        }

        break;
      case 4:
        v40 = *&a3->var0;
        v7 = a3->var3;
        v41 = a3->var2;
        v8 = v7;
        v42 = v8;
        v43 = a3->var4;
        if (a1)
        {
          v9 = [a1 syncPausedAirplaneModeForDescriptor:&v40];
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

+ (id)idleStateForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:0];
  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:1];
  if (a3->var4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SYNC_PAUSED" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];
  }

  else
  {
    v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:1];
    [(CKiCloudSyncStateModel *)v5 setSyncStatus:v7];
  }

  return v5;
}

+ (id)syncUploadingForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  if (a3->var2)
  {
    v5 = [a1 _syncingMessagesStringWithLongCount:?];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SYNCING_WITH_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  }

  v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v8 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v8 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v8 setSyncStatusMacButtonType:1];
  v9 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
  [(CKiCloudSyncStateModel *)v8 setMessagesInCloudCount:v9];

  [(CKiCloudSyncStateModel *)v8 setSyncStatus:v5];
  [(CKiCloudSyncStateModel *)v8 setSyncStatusFooterText:v7];
  [(CKiCloudSyncStateModel *)v8 setLastSyncedDateString:v7];
  [(CKiCloudSyncStateModel *)v8 setSyncAvailable:1];

  return v8;
}

+ (id)syncDownloadingForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v6 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v6 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v6 setSyncStatusMacButtonType:1];
  v7 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
  [(CKiCloudSyncStateModel *)v6 setMessagesInCloudCount:v7];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SYNCING_WITH_ICLOUD" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v6 setSyncStatus:v9];

  [(CKiCloudSyncStateModel *)v6 setSyncStatusFooterText:v5];
  [(CKiCloudSyncStateModel *)v6 setLastSyncedDateString:v5];
  [(CKiCloudSyncStateModel *)v6 setSyncAvailable:1];

  return v6;
}

+ (id)syncCompleteForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SYNC_COMPLETE_JUST_NOW" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
  [(CKiCloudSyncStateModel *)v5 setSyncStatus:v8];

  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:0];
  [(CKiCloudSyncStateModel *)v5 setSyncAvailable:1];

  return v5;
}

+ (id)syncPausedNoInternetConnectionForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:3];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)syncPausedAirplaneModeForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:0];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)syncPausedCellularDataDisabledForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:0];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)accountMismatchStateForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:3];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)noSyncStorageAlmostFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:1];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
  [(CKiCloudSyncStateModel *)v5 setMessagesInCloudCount:v6];

  v7 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
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

+ (id)noSyncStorageFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:2];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)noSyncStorageOverFullForDescriptor:(CKiCloudSyncStatusDescriptor *)a3
{
  v5 = objc_alloc_init(CKiCloudSyncStateModel);
  [(CKiCloudSyncStateModel *)v5 setSyncState:a3->var0];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacButtonType:2];
  v6 = [a1 _messagesInCloudCountStringWithLongCount:a3->var1];
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

  v17 = [CKiCloudSettingsUtils lastSyncedDateStringForDate:a3->var3 inContext:0];
  v18 = [CKiCloudSyncStateBuilder _syncFooterTextWithStatusError:v16 dateString:v17];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterText:v18];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusFooterSubstringForHyperlink:v12];
  [(CKiCloudSyncStateModel *)v5 setSyncStatusMacToolTipText:v10];
  [(CKiCloudSyncStateModel *)v5 setLastSyncedDateString:v17];

  return v5;
}

+ (id)_messagesInCloudCountStringWithLongCount:(unint64_t)a3
{
  v4 = +[CKiCloudSettingsUtils sharedNumberFormatter];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"N_MESSAGE(S)" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    v10 = [v7 stringWithFormat:v9, a3, v6];
  }

  else
  {
    v10 = @"Unknown";
  }

  return v10;
}

+ (id)_syncingMessagesStringWithLongCount:(unint64_t)a3
{
  v4 = +[CKiCloudSettingsUtils sharedNumberFormatter];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SYNCING_N_MESSAGE(S)" value:&stru_286A13F00 table:@"iCloudMessagesSettings"];
    v10 = [v7 stringWithFormat:v9, a3, v6];
  }

  else
  {
    v10 = @"Unknown";
  }

  return v10;
}

+ (id)_syncFooterTextWithStatusError:(id)a3 dateString:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v5, a4];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

@end