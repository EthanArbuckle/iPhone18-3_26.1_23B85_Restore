@interface HUSymptomStatusBannerItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUSymptomStatusBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUSymptomStatusBannerItem;
  v4 = [(HUStatusBannerItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D140C0]];
  v5 = *MEMORY[0x277D13D50];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13D50]];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:v5];

    v4 = v7;
  }

  v8 = *MEMORY[0x277D13FB8];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  if ([v9 BOOLValue])
  {
    v10 = [v4 type];

    if (v10 != 114)
    {
      v11 = [MEMORY[0x277D2C900] futureWithResult:v3];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = [v3 mutableCopy];
  v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D140A8]];
  v14 = [v13 count] > 1;
  v15 = [*(a1 + 32) _sortedObjectDisplayNamesForHomeKitObjects:v13];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__11;
  v42 = __Block_byref_object_dispose__11;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__11;
  v36 = __Block_byref_object_dispose__11;
  if ([v15 count] == 1)
  {
    [v15 firstObject];
  }

  else
  {
    [MEMORY[0x277CD1650] hf_userFriendlyLocalizedCapitalizedDescription:*MEMORY[0x277CCE8B0]];
  }
  v37 = ;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke_2;
  v24[3] = &unk_277DBCDD0;
  v16 = v4;
  v17 = *(a1 + 32);
  v25 = v16;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v29 = &v38;
  v31 = v14;
  v19 = v12;
  v28 = v19;
  v30 = &v32;
  v20 = __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke_2(v24);
  v21 = *MEMORY[0x277D13E20];
  [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v19 setObject:v33[5] forKeyedSubscript:*MEMORY[0x277D13F60]];
  if ([v39[5] length])
  {
    [v19 setObject:v39[5] forKeyedSubscript:*MEMORY[0x277D13F68]];
  }

  v22 = [v19 objectForKeyedSubscript:v21];

  if (!v22)
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
  }

  [v19 setObject:&unk_282491688 forKeyedSubscript:@"bannerItemCategory"];
  v11 = [MEMORY[0x277D2C900] futureWithResult:v19];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

LABEL_15:

  return v11;
}

id __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = 0;
  switch(v2)
  {
    case 1:
    case 20:
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = @"HUBannerSymptom_NeediCloudCredential_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NeediCloudCrentialFix" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v17 = *(*(*(a1 + 64) + 8) + 40);
      v18 = _HULocalizedStringWithDefaultValue(v17, v17, 1);
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_NeediCloudCredential";
      goto LABEL_34;
    case 2:
      v51 = *(*(a1 + 64) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = @"HUBannerSymptom_NeediTunesCredential_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NeediTunesCredential" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v53 = *(*(*(a1 + 64) + 8) + 40);
      v54 = _HULocalizedStringWithDefaultValue(v53, v53, 1);
      v55 = *(*(a1 + 72) + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v54;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_NeediTunesCredential";
      goto LABEL_34;
    case 3:
      goto LABEL_8;
    case 4:
    case 5:
    case 14:
      if (*(a1 + 80))
      {
        v4 = @"HUBannerSymptom_NoNetwork_Title_Multiple";
      }

      else
      {
        v4 = @"HUBannerSymptom_NoNetwork_Title";
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v4);
      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NoNetwork.NeedWiFiFix" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v5 = *(*(*(a1 + 64) + 8) + 40);
      v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);
      v7 = *(*(a1 + 72) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"HUBannerSymptom_Description_NoNetwork";
      goto LABEL_37;
    case 6:
    case 15:
      goto LABEL_39;
    case 7:
      if (*(a1 + 80))
      {
        v57 = @"HUBannerSymptom_NeedsService_Title_Multiple";
      }

      else
      {
        v57 = @"HUBannerSymptom_NeedsService_Title";
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v57);
      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NeedsService" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v58 = *(*(*(a1 + 64) + 8) + 40);
      v59 = _HULocalizedStringWithDefaultValue(v58, v58, 1);
      v60 = *(*(a1 + 72) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_NeedsService";
      goto LABEL_34;
    case 8:
      v45 = *(*(a1 + 64) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = @"HUBannerSymptom_StereoVersionMismatch_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.StereoVersionMismatch.HomePodSoftwareUpdateRequired" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v47 = *(*(*(a1 + 64) + 8) + 40);
      v48 = _HULocalizedStringWithDefaultValue(v47, v47, 1);
      v49 = *(*(a1 + 72) + 8);
      v50 = *(v49 + 40);
      *(v49 + 40) = v48;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_StereoVersionMismatch";
      goto LABEL_34;
    case 9:
      v75 = *(*(a1 + 64) + 8);
      v76 = *(v75 + 40);
      *(v75 + 40) = @"HUBannerSymptom_StereoNotFound_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.StereoNotFound.HomePodConnectionProblem" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v77 = *(*(*(a1 + 64) + 8) + 40);
      v78 = _HULocalizedStringWithDefaultValue(v77, v77, 1);
      v79 = *(*(a1 + 72) + 8);
      v80 = *(v79 + 40);
      *(v79 + 40) = v78;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_StereoNotFound";
      goto LABEL_34;
    case 10:
      if (*(a1 + 80))
      {
        v27 = @"HUBannerSymptom_NoNetwork_Title_Multiple";
      }

      else
      {
        v27 = @"HUBannerSymptom_NoNetwork_Title";
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v27);
      v28 = *(*(*(a1 + 64) + 8) + 40);
      v29 = _HULocalizedStringWithDefaultValue(v28, v28, 1);
      v30 = *(*(a1 + 72) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      if ([MEMORY[0x277D14CE8] useWLANInsteadOfWiFi])
      {
        v14 = @"HUBannerSymptom_Description_WLAN";
      }

      else
      {
        v14 = @"HUBannerSymptom_Description_WiFi";
      }

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      goto LABEL_34;
    case 11:
      v38 = [MEMORY[0x277D14CE8] networkSSID];

      if (!v38)
      {
        goto LABEL_46;
      }

      v39 = *(*(a1 + 64) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = @"HUBannerSymptom_NetworkMismatch_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NetworkMismatch" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = _HULocalizedStringWithDefaultValue(v41, v41, 1);
      v43 = *(*(a1 + 72) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"HUBannerSymptom_Description_NetworkMismatch";
      goto LABEL_37;
    case 12:
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = @"HUBannerSymptom_TargetControl_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.TargetControl.AppleTVRequired" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v23 = *(*(*(a1 + 64) + 8) + 40);
      v24 = _HULocalizedStringWithDefaultValue(v23, v23, 1);
      v25 = *(*(a1 + 72) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_TargetControl";
      goto LABEL_34;
    case 13:
      v32 = *(*(a1 + 64) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = @"HUBannerSymptom_VPNProfileExpired_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.VPNProfileExpired" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v34 = *(*(*(a1 + 64) + 8) + 40);
      v35 = _HULocalizedStringWithDefaultValue(v34, v34, 1);
      v36 = *(*(a1 + 72) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = @"HUBannerSymptom_Description_VPNProfileExpired";
      goto LABEL_34;
    case 16:
      v88 = *(*(a1 + 64) + 8);
      v89 = *(v88 + 40);
      *(v88 + 40) = @"HUBannerSymptom_ProfileExpired_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NeedNetworkProfileFix" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v90 = *(*(*(a1 + 64) + 8) + 40);
      v91 = _HULocalizedStringWithDefaultValue(v90, v90, 1);
      v92 = *(*(a1 + 72) + 8);
      v93 = *(v92 + 40);
      *(v92 + 40) = v91;

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"HUBannerSymptom_Description_ProfileExpired";
      goto LABEL_37;
    case 17:
      v69 = *(*(a1 + 64) + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = @"HUBannerSymptom_ProfileInstall_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NeedNetworkProfileInstall" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v71 = *(*(*(a1 + 64) + 8) + 40);
      v72 = _HULocalizedStringWithDefaultValue(v71, v71, 1);
      v73 = *(*(a1 + 72) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"HUBannerSymptom_Description_ProfileInstall";
      goto LABEL_37;
    case 18:
      v82 = *(*(a1 + 64) + 8);
      v83 = *(v82 + 40);
      *(v82 + 40) = @"HUBannerSymptom_NetworkNotShareable_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.NetworkNotShareable" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v84 = *(*(*(a1 + 64) + 8) + 40);
      v85 = _HULocalizedStringWithDefaultValue(v84, v84, 1);
      v86 = *(*(a1 + 72) + 8);
      v87 = *(v86 + 40);
      *(v86 + 40) = v85;

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = @"HUBannerSymptom_Description_NetworkNotShareable";
      goto LABEL_37;
    case 19:
      v62 = [MEMORY[0x277D14CE8] networkSSID];

      if (!v62)
      {
        goto LABEL_46;
      }

      v63 = *(*(a1 + 64) + 8);
      v64 = *(v63 + 40);
      *(v63 + 40) = @"HUBannerSymptom_CaptiveLeaseRenewal_Title";

      [*(a1 + 56) setObject:@"Home.Banners.Symptoms.CaptiveLeaseRenewal" forKeyedSubscript:*MEMORY[0x277D13DC8]];
      v65 = *(*(*(a1 + 64) + 8) + 40);
      v66 = _HULocalizedStringWithDefaultValue(v65, v65, 1);
      v67 = *(*(a1 + 72) + 8);
      v68 = *(v67 + 40);
      *(v67 + 40) = v66;

      if ([MEMORY[0x277D14CE8] useWLANInsteadOfWiFi])
      {
        v11 = @"HUBannerSymptom_Description_CaptiveLeaseRenewal_WLAN";
      }

      else
      {
        v11 = @"HUBannerSymptom_Description_CaptiveLeaseRenewal_WiFi";
      }

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
LABEL_37:
      v81 = [v9 _descriptionForLocalizedStringKey:v11 representedHomeKitObjects:v10 options:2];
      goto LABEL_38;
    default:
      if (v2 == 114)
      {
        if (!_os_feature_enabled_impl())
        {
LABEL_46:
          v3 = 0;
          goto LABEL_39;
        }

        v95 = [*(a1 + 48) na_flatMap:&__block_literal_global_105];
        v96 = [v95 na_firstObjectPassingTest:&__block_literal_global_74_0];

        if (v96)
        {
          v97 = [v96 symptomsHandler];
          v98 = [v97 symptoms];
          v99 = [v98 na_any:&__block_literal_global_78_0];

          if (v99)
          {
            v100 = *(*(a1 + 64) + 8);
            v101 = *(v100 + 40);
            *(v100 + 40) = @"HUBannerSymptom_InternetOutage_Title";

            [*(a1 + 56) setObject:@"Home.Banners.Symptoms.InternetOutage" forKeyedSubscript:*MEMORY[0x277D13DC8]];
            v102 = *(*(*(a1 + 64) + 8) + 40);
            v103 = _HULocalizedStringWithDefaultValue(v102, v102, 1);
            v104 = *(*(a1 + 72) + 8);
            v105 = *(v104 + 40);
            *(v104 + 40) = v103;

            v106 = [MEMORY[0x277D755D0] configurationWithScale:0];
            v107 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
            v108 = [v106 configurationByApplyingConfiguration:v107];

            v109 = [objc_alloc(MEMORY[0x277D14B78]) initWithSystemImageName:@"wifi.exclamationmark" configuration:v108];
            v110 = [objc_alloc(MEMORY[0x277D14728]) initWithSymbolIconConfiguration:v109];
            [*(a1 + 56) setObject:v110 forKeyedSubscript:*MEMORY[0x277D13E88]];

            [*(a1 + 56) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13FB8]];
            [*(a1 + 56) setObject:0 forKeyedSubscript:*MEMORY[0x277D13DE8]];
            v111 = [v96 wifiNetworkInfo];
            v112 = [v111 SSID];
            v3 = HULocalizedStringWithFormat(@"HUBannerSymptom_Description_InternetOutage", @"%@", v113, v114, v115, v116, v117, v118, v112);

LABEL_53:
            goto LABEL_39;
          }

          v119 = HFLogForCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v120 = "Primary resident was not the accessory with internet outage. Hiding HUSymptomStatusBannerItem.";
            v121 = buf;
            goto LABEL_51;
          }
        }

        else
        {
          v119 = HFLogForCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v123 = 0;
            v120 = "Could not find primary resident for HMSymptomTypeNetworkIssueInternetOutage. Hiding HUSymptomStatusBannerItem.";
            v121 = &v123;
LABEL_51:
            _os_log_impl(&dword_20CEB6000, v119, OS_LOG_TYPE_DEFAULT, v120, v121, 2u);
          }
        }

        v3 = 0;
        goto LABEL_53;
      }

      if (v2 == 999)
      {
LABEL_8:
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = @"HUBannerSymptom_Description_General";
LABEL_34:
        v81 = [v12 _descriptionForLocalizedStringKey:v14 representedHomeKitObjects:v13];
LABEL_38:
        v3 = v81;
      }

LABEL_39:

      return v3;
  }
}

id __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28251AF08])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 accessories];

  return v5;
}

unint64_t __57__HUSymptomStatusBannerItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 hf_linkedResidentDevice];
  v3 = ([v2 status] >> 1) & 1;

  return v3;
}

@end