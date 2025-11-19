@interface NDOFollowUp
+ (id)allPossibleFollowUpTargetBundleIdentifiers;
+ (id)followUpTargetBundleIDsForDevice:(id)a3;
+ (id)possibleUniqueIdentifiersForSerialNumber:(id)a3;
+ (id)uniqueFollowUpIdentifiersForDevice:(id)a3;
+ (id)uniqueIdentfierForSerialNumber:(id)a3 bundleId:(id)a4;
- (BOOL)_checkConversionEligibilityForDevice:(id)a3;
- (BOOL)_postFollowUpWithDevicesInfo:(id)a3 repostAllowed:(BOOL)a4;
- (NDOFollowUp)init;
- (NDOFollowUp)initWithFollowUpProvider:(id)a3;
- (id)_pendingFollowUpItemsForSerialNumber:(id)a3;
- (id)_setupFollowUpNotificationWithDeviceInfo:(id)a3;
- (id)followUpItemsForDeviceInfo:(id)a3;
- (id)followUpSaleFlowSourceForBundleId:(id)a3 device:(id)a4;
- (id)refreshFollowupWithDeviceInfos:(id)a3 clearUntrackedDeviceFollowups:(BOOL)a4 andForcePostFollowup:(BOOL)a5;
- (unint64_t)pendingFollowUpCount;
- (void)_clearFollowUpForSerialNumber:(id)a3;
- (void)_clearFollowUpWithDevices:(id)a3;
- (void)_setupFollowUpItem:(id)a3 withDeviceInfo:(id)a4;
- (void)dismissFollowUpForSerialNumber:(id)a3;
- (void)dismissNotificationForSerialNumber:(id)a3;
- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)a3;
- (void)postFollowUpWithDeviceInfo:(id)a3;
@end

@implementation NDOFollowUp

- (NDOFollowUp)init
{
  v3 = objc_opt_new();
  v4 = [(NDOFollowUp *)self initWithFollowUpProvider:v3];

  return v4;
}

- (NDOFollowUp)initWithFollowUpProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NDOFollowUp;
  v5 = [(NDOFollowUp *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NDOFollowUp *)v5 setFollowUpProvider:v4];
  }

  return v6;
}

+ (id)uniqueIdentfierForSerialNumber:(id)a3 bundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([NDOTypeChecking isNotEmptyString:v5]&& [NDOTypeChecking isNotEmptyString:v6]&& [NDOTypeChecking isNotEmptyString:@"com.apple.NewDeviceOutreach"])
  {
    v7 = [v5 sha256Hash];
    v8 = [@"com.apple.NewDeviceOutreach" stringByAppendingFormat:@".%@.%@", v6, v7];
  }

  else
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp uniqueIdentfierForSerialNumber:bundleId:];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_postFollowUpWithDevicesInfo:(id)a3 repostAllowed:(BOOL)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke;
  v12[3] = &unk_279975CA8;
  v14 = a4;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke_70;
  v11[3] = &unk_279975CD0;
  v11[4] = self;
  [v9 enumerateObjectsUsingBlock:v11];
  LOBYTE(self) = [v9 count] != 0;

  return self;
}

void __58__NDOFollowUp__postFollowUpWithDevicesInfo_repostAllowed___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 warranty];

  if (!v4)
  {
    v18 = _NDOLogSystem();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = [v3 device];
    v38 = 136446467;
    v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v40 = 2113;
    v41 = v19;
    v20 = "%{public}s: No warranty downloaded for device. Don't post a followup for %{private}@";
LABEL_15:
    _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, v20, &v38, 0x16u);

    goto LABEL_31;
  }

  v5 = [v3 warranty];
  v6 = [v5 acOfferDisplay];

  if (!v6)
  {
    v18 = _NDOLogSystem();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = [v3 device];
    v38 = 136446467;
    v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v40 = 2113;
    v41 = v19;
    v20 = "%{public}s: Device NOT eligible. Don't post a followup for %{private}@";
    goto LABEL_15;
  }

  v7 = [v3 warranty];
  v8 = [v7 acOfferEligibleUntil];
  [v8 timeIntervalSinceNow];
  v10 = v9;

  if (v10 <= 0.0)
  {
    v18 = _NDOLogSystem();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = [v3 device];
    v38 = 136446467;
    v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v40 = 2113;
    v41 = v19;
    v20 = "%{public}s: Device no longer eligible. Don't post a followup for %{private}@";
    goto LABEL_15;
  }

  v11 = [v3 device];
  v12 = [v11 serialNumber];
  v13 = [NDOFollowUpDismissalTracker followUpIsDismissedForSerial:v12];

  if (v13 && (*(a1 + 48) & 1) == 0 && ![*(a1 + 32) _checkConversionEligibilityForDevice:v3])
  {
    v18 = _NDOLogSystem();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = [v3 device];
    v38 = 136446467;
    v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
    v40 = 2113;
    v41 = v19;
    v20 = "%{public}s: Followup already dismissed for %{private}@, leaving unposted";
    goto LABEL_15;
  }

  v14 = [v3 warranty];
  v15 = [v14 acOfferFollowupDisplayDate];

  v16 = [v3 warranty];
  v17 = v16;
  if (v15)
  {
    v18 = [v16 acOfferFollowupDisplayDate];
  }

  else
  {
    v21 = [v16 acOfferEligibleUntil];
    v22 = [v3 warranty];
    [v22 acOfferDurationBeforeEndDate];
    v18 = [v21 dateByAddingTimeInterval:-v23];
  }

  v24 = [v3 device];
  v25 = [v24 activationDate];

  if (v25)
  {
    [v25 timeIntervalSinceNow];
    v27 = v26;
    [v18 timeIntervalSinceNow];
    if (v27 > v28)
    {
      v29 = _NDOLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136446210;
        v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
        _os_log_impl(&dword_25BD52000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: Using initial postdate as it is later than FollowupDisplay Date", &v38, 0xCu);
      }

      v30 = v25;
      v18 = v30;
    }
  }

  [v18 timeIntervalSinceNow];
  if (v31 <= 0.0)
  {
    v35 = _NDOLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v3 device];
      v38 = 136446467;
      v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
      v40 = 2113;
      v41 = v36;
      _os_log_impl(&dword_25BD52000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible. Post new  followup for %{private}@", &v38, 0x16u);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    [v18 timeIntervalSinceNow];
    if (v32 > 0.0)
    {
      v33 = _NDOLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v3 device];
        v38 = 136446723;
        v39 = "[NDOFollowUp _postFollowUpWithDevicesInfo:repostAllowed:]_block_invoke";
        v40 = 2113;
        v41 = v34;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&dword_25BD52000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible with future post date. Cannot post followup for %{private}@ on: %@", &v38, 0x20u);
      }
    }
  }

LABEL_31:
  v37 = *MEMORY[0x277D85DE8];
}

+ (id)followUpTargetBundleIDsForDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 deviceType];
  v5 = objc_opt_new();
  v6 = v5;
  switch(v4)
  {
    case 3:
      goto LABEL_4;
    case 1:
      [v5 addObject:*MEMORY[0x277CFE3F8]];
      if ([v3 isActiveWatch])
      {
        v7 = MEMORY[0x277CFE3D8];
        goto LABEL_5;
      }

      break;
    case 0:
LABEL_4:
      v7 = MEMORY[0x277CFE3F8];
LABEL_5:
      [v6 addObject:*v7];
      break;
    default:
      v8 = _NDOLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[NDOFollowUp followUpTargetBundleIDsForDevice:];
      }

      break;
  }

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v14 = 136446722;
    v15 = "+[NDOFollowUp followUpTargetBundleIDsForDevice:]";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s DeviceType:%@ bundleIDs%@", &v14, 0x20u);
  }

  v11 = [v6 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)followUpItemsForDeviceInfo:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 warranty];
  v5 = [v3 device];
  v6 = [v5 serialNumber];

  if (v4 && [v4 acOfferDisplay] && v6)
  {
    v23 = v6;
    v24 = v4;
    v7 = [v3 device];
    v8 = [NDOFollowUp followUpTargetBundleIDsForDevice:v7];

    v26 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      v13 = *MEMORY[0x277CFE448];
      obj = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = objc_alloc_init(MEMORY[0x277CFE508]);
          v17 = [v3 device];
          v18 = [v17 serialNumber];
          v19 = [NDOFollowUp uniqueIdentfierForSerialNumber:v18 bundleId:v15];

          [v16 setUniqueIdentifier:v19];
          [v16 setGroupIdentifier:v13];
          [v16 setExtensionIdentifier:@"com.apple.NewDeviceOutreach.Extension"];
          [v16 setTargetBundleIdentifier:v15];
          [(NDOFollowUp *)self _setupFollowUpItem:v16 withDeviceInfo:v3];
          [v26 addObject:v16];
        }

        v9 = obj;
        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v20 = [v26 copy];
    v6 = v23;
    v4 = v24;
  }

  else
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp followUpItemsForDeviceInfo:];
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)postFollowUpWithDeviceInfo:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 warranty];
  v61 = v4;
  v6 = [v4 device];
  v7 = [v6 serialNumber];

  v64 = v5;
  if (v5 && [v5 acOfferDisplay] && v7)
  {
    [(NDOFollowUp *)self followUpItemsForDeviceInfo:v61];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v76 = 0u;
    v8 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v74;
      v12 = 0x277CBE000uLL;
      *&v9 = 136446722;
      v57 = v9;
      v58 = v7;
      v59 = self;
      v60 = *v74;
      do
      {
        v13 = 0;
        v62 = v10;
        do
        {
          if (*v74 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v73 + 1) + 8 * v13);
          v15 = [(NDOFollowUp *)self followUpProvider];
          v72 = 0;
          v16 = [v15 postFollowUpItem:v14 error:&v72];
          v17 = v72;

          v18 = _NDOLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v19 = @"success";
            if (!v16)
            {
              v19 = v17;
            }

            v78 = v7;
            v79 = 2112;
            v80 = v19;
            _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, "Posted follow-up: serialNumber:%@ -> %@", buf, 0x16u);
          }

          if (v16)
          {
            v20 = MEMORY[0x277CBEB18];
            v21 = [*(v12 + 3024) standardUserDefaults];
            v22 = [v21 objectForKey:@"FollowupPostedSerialNumberHashes"];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = MEMORY[0x277CBEBF8];
            }

            v25 = [v20 arrayWithArray:v24];

            v26 = [v7 sha256Hash];
            v27 = [v25 containsObject:v26];

            if ((v27 & 1) == 0)
            {
              v28 = [v7 sha256Hash];
              [v25 addObject:v28];

              v29 = [*(v12 + 3024) standardUserDefaults];
              [v29 setObject:v25 forKey:@"FollowupPostedSerialNumberHashes"];

              v83 = @"devicetype";
              v30 = [v61 device];
              v31 = [v30 deviceTypeString];
              v84 = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];

              v67 = MEMORY[0x277D85DD0];
              v68 = 3221225472;
              v69 = __42__NDOFollowUp_postFollowUpWithDeviceInfo___block_invoke;
              v70 = &unk_279975CF8;
              v71 = v32;
              v33 = v32;
              AnalyticsSendEventLazy();
            }

            v34 = [*(v12 + 3024) standardUserDefaults];
            v35 = [v34 dictionaryForKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];
            v36 = [v35 mutableCopy];

            if (v36)
            {
              v37 = [v36 allKeys];
              v38 = [v37 count];

              if (v38)
              {
                v39 = MEMORY[0x277CBEB58];
                v40 = [v7 sha256Hash];
                v41 = [v36 objectForKeyedSubscript:v40];
                v42 = v41;
                if (v41)
                {
                  v43 = v41;
                }

                else
                {
                  v43 = MEMORY[0x277CBEBF8];
                }

                v44 = [v39 setWithArray:v43];

                self = v59;
                if (!v44)
                {
LABEL_27:
                  v44 = [MEMORY[0x277CBEB58] set];
                }

                v46 = [v64 eligibilityEventId];
                v47 = [NDOTypeChecking isNotEmptyString:v46];

                if (v47)
                {
                  v48 = [v64 eligibilityEventId];
                  [v44 addObject:v48];

                  v49 = [v44 allObjects];
                  v50 = [v61 device];
                  v51 = [v50 serialNumber];
                  v52 = [v51 sha256Hash];
                  [v36 setObject:v49 forKeyedSubscript:v52];

                  v53 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                  [v53 setObject:v36 forKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];

                  v54 = _NDOLogSystem();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    v55 = [v64 eligibilityEventId];
                    *buf = v57;
                    v78 = "[NDOFollowUp postFollowUpWithDeviceInfo:]";
                    v79 = 2112;
                    v80 = v55;
                    v81 = 2112;
                    v82 = v44;
                    _os_log_debug_impl(&dword_25BD52000, v54, OS_LOG_TYPE_DEBUG, "%{public}s: saving for event: %@ with events: %@", buf, 0x20u);
                  }

                  v7 = v58;
                  self = v59;
                  v10 = v62;
                }

                else
                {
                  v54 = _NDOLogSystem();
                  v10 = v62;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    [(NDOFollowUp *)&v65 postFollowUpWithDeviceInfo:v66, v54];
                  }
                }

                v11 = v60;
                v12 = 0x277CBE000;
                goto LABEL_35;
              }
            }

            v45 = objc_opt_new();

            v36 = v45;
            goto LABEL_27;
          }

LABEL_35:

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v10);
    }
  }

  else
  {
    obj = _NDOLogSystem();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp postFollowUpWithDeviceInfo:];
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

id __42__NDOFollowUp_postFollowUpWithDeviceInfo___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412546;
    v8 = @"com.apple.newdeviceoutreach.followupDisplayCount";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "Posting for event: %@ with value: %@", &v7, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_checkConversionEligibilityForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  v5 = [v4 serialNumber];
  v6 = [v5 sha256Hash];
  v7 = [v6 stringByAppendingString:@".dismissed"];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 objectForKey:v7];

  if (!v9 || ([v3 warranty], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "acOfferFollowupDisplayDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v12 = [v3 warranty];
  v13 = [v12 acOfferFollowupDisplayDate];
  v14 = [v9 compare:v13];

  if (v14 != -1)
  {
    v15 = _NDOLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(NDOFollowUp *)v3 _checkConversionEligibilityForDevice:v9, v15];
    }

    goto LABEL_7;
  }

  v18 = MEMORY[0x277CBEB18];
  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [v19 objectForKey:@"FollowupPostedSerialNumberHashes"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v23 = [v18 arrayWithArray:v22];

  v24 = [v3 device];
  v25 = [v24 serialNumber];
  v26 = [v25 sha256Hash];
  v27 = [v23 containsObject:v26];

  if (v27)
  {
    v28 = [v3 device];
    v29 = [v28 serialNumber];
    v30 = [v29 sha256Hash];
    [v23 removeObject:v30];

    v31 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v31 setObject:v23 forKey:@"FollowupPostedSerialNumberHashes"];
  }

  v16 = 1;
LABEL_8:

  return v16;
}

+ (id)uniqueFollowUpIdentifiersForDevice:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 serialNumber];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [NDOFollowUp followUpTargetBundleIDsForDevice:v3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([NDOTypeChecking isNotEmptyString:v11])
          {
            v12 = [v3 serialNumber];
            v13 = [NDOFollowUp uniqueIdentfierForSerialNumber:v12 bundleId:v11];
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
  }

  else
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp uniqueFollowUpIdentifiersForDevice:];
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)allPossibleFollowUpTargetBundleIdentifiers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFE3F8];
  v6[0] = *MEMORY[0x277CFE3D8];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)possibleUniqueIdentifiersForSerialNumber:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([NDOTypeChecking isNotEmptyString:v4])
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [a1 allPossibleFollowUpTargetBundleIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 uniqueIdentfierForSerialNumber:v4 bundleId:*(*(&v15 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[NDOFollowUp possibleUniqueIdentifiersForSerialNumber:];
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_clearFollowUpWithDevices:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NDOFollowUp uniqueFollowUpIdentifiersForDevice:*(*(&v19 + 1) + 8 * v10)];
        [v5 addObjectsFromArray:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [(NDOFollowUp *)self followUpProvider];
  v18 = 0;
  v13 = [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v5 error:&v18];
  v14 = v18;

  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"success";
    if (!v13)
    {
      v16 = v14;
    }

    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_25BD52000, v15, OS_LOG_TYPE_DEFAULT, "Cleared follow-up: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_pendingFollowUpItemsForSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [(NDOFollowUp *)self followUpProvider];
  v18 = 0;
  v6 = [v5 pendingFollowUpItems:&v18];
  v7 = v18;

  if (v7)
  {
    v8 = _NDOLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _pendingFollowUpItemsForSerialNumber:];
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = MEMORY[0x277CCAC30];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __52__NDOFollowUp__pendingFollowUpItemsForSerialNumber___block_invoke;
    v16 = &unk_279975D20;
    v17 = v4;
    v11 = [v10 predicateWithBlock:&v13];
    v9 = [v6 filteredArrayUsingPredicate:{v11, v13, v14, v15, v16}];

    v8 = v17;
  }

  return v9;
}

uint64_t __52__NDOFollowUp__pendingFollowUpItemsForSerialNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"FollowupSerialNumber"];
  if ([NDOTypeChecking isNotEmptyString:v4])
  {
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_clearFollowUpForSerialNumber:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = v4;
  v6 = [(NDOFollowUp *)self _pendingFollowUpItemsForSerialNumber:v4];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [NDOTypeChecking isNotEmptyString:v12];

        if (v13)
        {
          v14 = [v11 uniqueIdentifier];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  v15 = [(NDOFollowUp *)self followUpProvider];
  v16 = [v5 copy];
  v23 = 0;
  v17 = [v15 clearPendingFollowUpItemsWithUniqueIdentifiers:v16 error:&v23];
  v18 = v23;

  v19 = _NDOLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"success";
    if (!v17)
    {
      v20 = v18;
    }

    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "Cleared follow-up: %@", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dismissFollowUpForSerialNumber:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NDOFollowUp *)self followUpProvider];
  v6 = [NDOFollowUp possibleUniqueIdentifiersForSerialNumber:v4];

  v12 = 0;
  v7 = [v5 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:&v12];
  v8 = v12;

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"success";
    if (!v7)
    {
      v10 = v8;
    }

    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "Dismissed follow-up: %@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotificationForSerialNumber:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(NDOFollowUp *)self _pendingFollowUpItemsForSerialNumber:a3];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [(NDOFollowUp *)self followUpProvider];
        v18 = 0;
        v12 = [v11 clearNotificationForItem:v10 error:&v18];
        v13 = v18;

        v14 = _NDOLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v15 = @"success";
          if (!v12)
          {
            v15 = v13;
          }

          v24 = v15;
          v25 = 2112;
          v26 = v10;
          _os_log_impl(&dword_25BD52000, v14, OS_LOG_TYPE_DEFAULT, "Cleared follow-up notification: %@ for item: %@", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)refreshFollowupWithDeviceInfos:(id)a3 clearUntrackedDeviceFollowups:(BOOL)a4 andForcePostFollowup:(BOOL)a5
{
  v5 = a4;
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v45 = self;
  v8 = [(NDOFollowUp *)self followUpProvider];
  v67 = 0;
  v9 = [v8 pendingFollowUpItems:&v67];
  v10 = v67;

  if (v10)
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:];
    }
  }

  v46 = v10;
  v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v64;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v64 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v63 + 1) + 8 * i) userInfo];
        v18 = [v17 objectForKeyedSubscript:@"FollowupSerialNumber"];

        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v14);
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v22 = [MEMORY[0x277CBEB58] setWithSet:v12];
  }

  else
  {
    v22 = 0;
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke;
  v57[3] = &unk_279975D48;
  v23 = v22;
  v58 = v23;
  v44 = v12;
  v59 = v44;
  v43 = v19;
  v60 = v43;
  v41 = v20;
  v61 = v41;
  v24 = v21;
  v62 = v24;
  v47 = v7;
  [v7 enumerateObjectsUsingBlock:v57];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = v23;
  v26 = [v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v54;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [NDODevice deviceWithName:*(*(&v53 + 1) + 8 * j) serialNumber:*(*(&v53 + 1) + 8 * j) activationDate:0 deviceType:0, v41];
        v31 = _NDOLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v69 = v30;
          _os_log_impl(&dword_25BD52000, v31, OS_LOG_TYPE_DEFAULT, "No longer tracking device %{private}@, clearing", buf, 0xCu);
        }

        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v27);
  }

  if (v24 && [v24 count])
  {
    [(NDOFollowUp *)v45 _clearFollowUpWithDevices:v24];
  }

  v32 = [MEMORY[0x277CBEB18] array];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_116;
  v49[3] = &unk_279975D70;
  v50 = obj;
  v51 = v45;
  v33 = v32;
  v52 = v33;
  v34 = obj;
  [v43 enumerateObjectsUsingBlock:v49];
  if (v42 && [v42 count])
  {
    v35 = [(NDOFollowUp *)v45 _postFollowUpWithDevicesInfo:v42 repostAllowed:1];
    v36 = _NDOLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = @"NO";
      if (v35)
      {
        v37 = @"success";
      }

      *buf = 138412290;
      v69 = v37;
      _os_log_impl(&dword_25BD52000, v36, OS_LOG_TYPE_DEFAULT, "Reposted follow-up: %@", buf, 0xCu);
    }

    if (v35)
    {
      [v33 addObjectsFromArray:v42];
    }
  }

  v38 = [v33 copy];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 serialNumber];

  if (!v5)
  {
    v21 = _NDOLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v3 device];
    v8 = [v7 serialNumber];
    [v6 removeObject:v8];
  }

  v9 = [v3 warranty];

  if (!v9)
  {
    v22 = _NDOLogSystem();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v23 = [v3 device];
    v56 = 136446467;
    v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
    v58 = 2113;
    v59 = v23;
    v24 = "%{public}s: No warranty downloaded for device. Remove the followup for %{private}@";
LABEL_20:
    _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, v24, &v56, 0x16u);

    goto LABEL_21;
  }

  v10 = [v3 warranty];
  v11 = [v10 acOfferDisplay];

  if (!v11)
  {
    v22 = _NDOLogSystem();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v23 = [v3 device];
    v56 = 136446467;
    v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
    v58 = 2113;
    v59 = v23;
    v24 = "%{public}s: Device NOT eligible. Remove the followup for %{private}@";
    goto LABEL_20;
  }

  v12 = [v3 warranty];
  v13 = [v12 acOfferEligibleUntil];
  [v13 timeIntervalSinceNow];
  v15 = v14;

  if (v15 <= 0.0)
  {
    v22 = _NDOLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v3 device];
      v56 = 136446467;
      v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v58 = 2113;
      v59 = v23;
      v24 = "%{public}s: Device no longer eligible. Remove the followup for %{private}@";
      goto LABEL_20;
    }

LABEL_21:

    v25 = *(a1 + 64);
    v26 = [v3 device];
    [v25 addObject:v26];

    goto LABEL_22;
  }

  v16 = *(a1 + 40);
  v17 = [v3 device];
  v18 = [v17 serialNumber];
  LODWORD(v16) = [v16 containsObject:v18];

  if (v16)
  {
    v19 = _NDOLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v3 device];
      v56 = 136446467;
      v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v58 = 2113;
      v59 = v20;
      _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible. Update the followup for %{private}@", &v56, 0x16u);
    }

    [*(a1 + 48) addObject:v3];
    goto LABEL_22;
  }

  v28 = [v3 warranty];
  if (![v28 scIntervalFollowupEligible])
  {
    goto LABEL_30;
  }

  v29 = [v3 warranty];
  v30 = [v29 eligibilityEventId];
  if (!v30)
  {

LABEL_30:
LABEL_31:
    v21 = _NDOLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v3 device];
      v56 = 136446467;
      v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v58 = 2113;
      v59 = v45;
      _os_log_impl(&dword_25BD52000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Followup already dismissed/not present for %{private}@, leaving unposted", &v56, 0x16u);
    }

LABEL_13:

    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v3 warranty];
  v33 = [v32 eligibilityEventId];
  v34 = [v33 isEqualToString:&stru_286D686B8];

  if (v34)
  {
    goto LABEL_31;
  }

  v35 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v36 = [v35 dictionaryForKey:@"FollowupDisplayedSerialNumberHashesWithEvents"];

  if (!v36)
  {
    goto LABEL_33;
  }

  v37 = [v3 device];
  v38 = [v37 serialNumber];
  v39 = [v38 sha256Hash];
  v40 = [v36 objectForKeyedSubscript:v39];

  if (v40)
  {
    v41 = [v3 device];
    v42 = [v41 serialNumber];
    v43 = [v42 sha256Hash];
    v44 = [v36 objectForKeyedSubscript:v43];
  }

  else
  {
LABEL_33:
    v44 = 0;
  }

  v46 = [v3 warranty];
  v47 = [v46 eligibilityEventId];
  v48 = [v44 containsObject:v47];

  v49 = [v3 device];
  v50 = [v49 serialNumber];
  v51 = [NDOFollowUpDismissalTracker followUpIsDismissedForSerial:v50];

  v52 = _NDOLogSystem();
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
  if (v48 && v51)
  {
    if (v53)
    {
      v54 = [v3 device];
      v56 = 136446467;
      v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v58 = 2113;
      v59 = v54;
      _os_log_impl(&dword_25BD52000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: Followup already dismissed/not present/no eligible events found for %{private}@, leaving unposted", &v56, 0x16u);
    }
  }

  else
  {
    if (v53)
    {
      v55 = [v3 device];
      v56 = 136446467;
      v57 = "[NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:]_block_invoke";
      v58 = 2113;
      v59 = v55;
      _os_log_impl(&dword_25BD52000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: Device eligible for re-post due to eligible event. Re-post the followup for %{private}@", &v56, 0x16u);
    }

    [*(a1 + 56) addObject:v3];
  }

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
}

void __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_116(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v3 device];
        v10 = [v9 serialNumber];
        v11 = [v8 userInfo];
        v12 = [v11 objectForKeyedSubscript:@"FollowupSerialNumber"];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          [*(v20 + 40) _setupFollowUpItem:v8 withDeviceInfo:v3];
          v14 = [*(v20 + 40) followUpProvider];
          v22 = 0;
          v15 = [v14 postFollowUpItem:v8 error:&v22];
          v16 = v22;

          v17 = _NDOLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = @"success";
            if (!v15)
            {
              v18 = v16;
            }

            *buf = 138412290;
            v28 = v18;
            _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "Updated follow-up: %@", buf, 0xCu);
          }

          [*(v20 + 48) addObject:v3];
          goto LABEL_15;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

- (unint64_t)pendingFollowUpCount
{
  v2 = [(NDOFollowUp *)self followUpProvider];
  v8 = 0;
  v3 = [v2 pendingFollowUpItems:&v8];
  v4 = v8;
  v5 = [v3 count];

  if (v4)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:];
    }
  }

  return v5;
}

- (id)followUpSaleFlowSourceForBundleId:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 isEqualToString:*MEMORY[0x277CFE3F8]])
  {
    if ([v6 deviceType] == 1)
    {
      v7 = @"WATCH_SETTINGS_FOLLOWUP";
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 sourceFromDeviceType];
      v7 = [v9 stringWithFormat:@"%@%@", v10, @"_FOLLOWUP"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setupFollowUpItem:(id)a3 withDeviceInfo:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v93 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v94 = 2113;
    v95 = v6;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private}@", buf, 0x16u);
  }

  v8 = [v6 warranty];
  v9 = [v8 acOfferEligibleUntil];
  v10 = [v9 dateByAddingTimeInterval:-0.001];
  [v5 setExpirationDate:v10];

  v11 = [v6 warranty];
  LODWORD(v9) = [v11 acOfferSettingsRowBadge];

  if (v9)
  {
    v12 = [v6 warranty];
    v13 = [v12 acOfferEligibleUntil];
    v14 = [v6 warranty];
    [v14 acOfferBadgeDurationBeforeEndDate];
    v16 = [v13 dateByAddingTimeInterval:-v15];

    v17 = [MEMORY[0x277CBEAA8] date];
    if ([v16 compare:v17] == -1)
    {
      v19 = [v6 warranty];
      v20 = [v19 acOfferEligibleUntil];
      v21 = [MEMORY[0x277CBEAA8] date];
      v18 = [v20 compare:v21] == 1;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = _NDOLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v93 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v94 = 1024;
    LODWORD(v95) = v18;
    _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldShowRowBadge: %d", buf, 0x12u);
  }

  if (v18)
  {
    v23 = 2;
  }

  else
  {
    v23 = 18;
  }

  v88 = v5;
  [v5 setDisplayStyle:v23];
  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  v90[0] = @"FollowupWarranty";
  v25 = [v6 warranty];
  v26 = [v25 dictionaryRepresentation];
  v27 = v26;
  if (!v26)
  {
    v27 = objc_opt_new();
  }

  v91[0] = v27;
  v90[1] = @"FollowupSerialNumber";
  v28 = [v6 device];
  v29 = [v28 serialNumber];
  v30 = *MEMORY[0x277CFE3F0];
  v31 = *MEMORY[0x277CFE3E8];
  v91[1] = v29;
  v91[2] = v31;
  v32 = *MEMORY[0x277CFE4D0];
  v90[2] = v30;
  v90[3] = v32;
  v91[3] = MEMORY[0x277CBEC38];
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:4];
  v34 = [v24 initWithDictionary:v33];

  if (!v26)
  {
  }

  v35 = v5;
  v36 = [v5 targetBundleIdentifier];
  v37 = [v6 device];
  v38 = [(NDOFollowUp *)self followUpSaleFlowSourceForBundleId:v36 device:v37];

  if ([NDOTypeChecking isNotEmptyString:v38])
  {
    [v34 setObject:v38 forKey:@"com.applecare.followup.saleflowsource"];
  }

  v39 = [v6 warranty];
  v40 = [v39 eligibilityEventId];
  v41 = [NDOTypeChecking isNotEmptyString:v40];

  if (v41)
  {
    v42 = [v6 warranty];
    v43 = [v42 eligibilityEventId];
    [v34 setObject:v43 forKey:@"FollowupEligibilityEventId"];
  }

  v44 = [v6 warranty];
  v45 = [v44 acLocalizedOfferSingularDesc];

  if (v45)
  {
    v46 = [v6 warranty];
    v47 = [v46 acLocalizedOfferSingularDesc];
    [v34 setObject:v47 forKey:*MEMORY[0x277CFE4E0]];
  }

  else
  {
    v46 = _NDOLogSystem();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpItem:withDeviceInfo:];
    }
  }

  v48 = [v6 warranty];
  v49 = [v48 acLocalizedOfferPluralDescFormat];

  if (v49)
  {
    v50 = [v6 warranty];
    v51 = [v50 acLocalizedOfferPluralDescFormat];
    [v34 setObject:v51 forKey:*MEMORY[0x277CFE4D8]];
  }

  else
  {
    v50 = _NDOLogSystem();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpItem:withDeviceInfo:];
    }
  }

  v52 = [v6 warranty];
  v53 = [v52 acLocalizedGroupedOfferFooterLabel];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = &stru_286D686B8;
  }

  [v34 setObject:v55 forKey:*MEMORY[0x277CFE4B0]];

  v56 = [v6 device];
  v57 = [v56 name];

  if (v57)
  {
    goto LABEL_34;
  }

  v61 = [v6 warranty];
  v62 = [v61 acLocalizedOfferLongLabel];

  if (v62)
  {
    v63 = [v6 warranty];
    v57 = [v63 acLocalizedOfferLongLabel];

    if (v57)
    {
LABEL_34:
      [v34 setObject:v57 forKey:*MEMORY[0x277CFE4B8]];
    }
  }

  [v5 setUserInfo:v34];
  v58 = [v6 warranty];
  v59 = [v58 acLocalizedGroupedOfferCTA];
  if (v59)
  {
    goto LABEL_36;
  }

  v64 = [v6 warranty];
  v60 = [v64 acLocalizedOfferCTA];

  if (!v60)
  {
    v58 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v59 = [v58 localizedStringForKey:@"FUP_ACTION_LABEL" value:&stru_286D686B8 table:@"Localizable"];
LABEL_36:
    v60 = v59;
  }

  v65 = [MEMORY[0x277CFE4F8] actionWithLabel:v60 url:0];
  [v65 setIdentifier:@"com.followup.ndo_followup_open_action"];
  v66 = [v6 warranty];
  v67 = [v66 acLocalizedOfferLabel];
  [v5 setTitle:v67];

  v68 = [v6 warranty];
  v69 = [v68 acLocalizedOfferDesc];
  [v5 setInformativeFooterText:v69];

  v89 = v65;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  [v5 setActions:v70];

  v71 = [v6 warranty];
  LODWORD(v69) = [v71 showNotificationToggle];

  if (v69)
  {
    v86 = v38;
    v72 = [v6 warranty];
    v73 = [v72 acOfferEligibleUntil];
    v74 = [v6 warranty];
    [v74 showNotificationBeforeEndDate];
    v76 = [v73 dateByAddingTimeInterval:-v75];

    v77 = [MEMORY[0x277CBEAA8] date];
    if ([v76 compare:v77] == -1)
    {
      v79 = [v6 warranty];
      v80 = [v79 acOfferEligibleUntil];
      v81 = [MEMORY[0x277CBEAA8] date];
      v78 = [v80 compare:v81] == 1;
    }

    else
    {
      v78 = 0;
    }

    v82 = _NDOLogSystem();
    v35 = v88;
    v38 = v86;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v93 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
      v94 = 2112;
      v95 = v76;
      _os_log_impl(&dword_25BD52000, v82, OS_LOG_TYPE_DEFAULT, "%{public}s: NotificationDate: %@", buf, 0x16u);
    }

    if (v78)
    {
      v83 = [(NDOFollowUp *)self _setupFollowUpNotificationWithDeviceInfo:v6];
      [v88 setNotification:v83];

      v78 = 1;
    }
  }

  else
  {
    v78 = 0;
  }

  v84 = _NDOLogSystem();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v93 = "[NDOFollowUp _setupFollowUpItem:withDeviceInfo:]";
    v94 = 1024;
    LODWORD(v95) = v78;
    _os_log_impl(&dword_25BD52000, v84, OS_LOG_TYPE_DEFAULT, "%{public}s: shouldShowNotification: %d", buf, 0x12u);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)migrateLegacyFollowUpIfNeededWithDeviceInfo:(id)a3
{
  v6 = a3;
  v4 = [v6 device];
  v5 = [v4 serialNumber];
  [(NDOFollowUp *)self dismissFollowUpForSerialNumber:v5];

  [(NDOFollowUp *)self postFollowUpWithDeviceInfo:v6];
}

- (id)_setupFollowUpNotificationWithDeviceInfo:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFE510]);
  v5 = [v3 warranty];
  v6 = [v5 acNotificationLocalizedOfferLabel];

  v7 = [v3 warranty];
  v8 = v7;
  if (v6)
  {
    [v7 acNotificationLocalizedOfferLabel];
  }

  else
  {
    [v7 acLocalizedOfferLabel];
  }
  v9 = ;
  [v4 setTitle:v9];

  v10 = [v3 warranty];
  v11 = [v10 acLocalizedNotificationOfferDesc];

  if (v11)
  {
    v12 = [v3 warranty];
    v13 = [v12 acLocalizedNotificationOfferDesc];
    [v4 setInformativeText:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v15 = v14;
  if (v14)
  {
    [v14 setIdentifier:@"com.followup.ndo_notification_open_action"];
    v16 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v17 = [v16 localizedStringForKey:@"DETAILS" value:&stru_286D686B8 table:@"Localizable"];
    [v15 setLabel:v17];

    [v4 setActivateAction:v15];
  }

  else
  {
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpNotificationWithDeviceInfo:];
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CFE4F8]);
  v20 = v19;
  if (v19)
  {
    [v19 setIdentifier:@"com.followup.ndo_notification_clear_action"];
    v21 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v22 = [v21 localizedStringForKey:@"CLEAR_NOTIFICATION" value:&stru_286D686B8 table:@"Localizable"];
    [v20 setLabel:v22];

    [v4 setClearAction:v20];
  }

  else
  {
    v23 = _NDOLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NDOFollowUp _setupFollowUpNotificationWithDeviceInfo:];
    }
  }

  [v4 setFrequency:0.0];
  v24 = [v4 options];
  v25 = *MEMORY[0x277CFE4A0];
  v31[0] = *MEMORY[0x277CFE498];
  v31[1] = v25;
  v26 = *MEMORY[0x277CFE480];
  v31[2] = *MEMORY[0x277CFE478];
  v31[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v28 = [v24 setByAddingObjectsFromArray:v27];
  [v4 setOptions:v28];

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)uniqueIdentfierForSerialNumber:bundleId:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)followUpTargetBundleIDsForDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)followUpItemsForDeviceInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)postFollowUpWithDeviceInfo:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "Missing eventID", buf, 2u);
}

- (void)postFollowUpWithDeviceInfo:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkConversionEligibilityForDevice:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 device];
  v7 = [a1 warranty];
  v8 = [v7 acOfferFollowupDisplayDate];
  v10 = 138478339;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_25BD52000, a3, OS_LOG_TYPE_DEBUG, "Device not eligible for conversion. %{private}@, followup dismissed date: %@, fup display date: %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)uniqueFollowUpIdentifiersForDevice:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)possibleUniqueIdentifiersForSerialNumber:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingFollowUpItemsForSerialNumber:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshFollowupWithDeviceInfos:clearUntrackedDeviceFollowups:andForcePostFollowup:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__NDOFollowUp_refreshFollowupWithDeviceInfos_clearUntrackedDeviceFollowups_andForcePostFollowup___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupFollowUpItem:withDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpItem:withDeviceInfo:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpNotificationWithDeviceInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupFollowUpNotificationWithDeviceInfo:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end