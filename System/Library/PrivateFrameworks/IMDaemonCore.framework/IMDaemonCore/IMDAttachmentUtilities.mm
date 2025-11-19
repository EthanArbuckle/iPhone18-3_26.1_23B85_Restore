@interface IMDAttachmentUtilities
+ (BOOL)_doesWRMRecommendDisablingLQM;
+ (BOOL)_isNetworkUltraConstrained;
+ (BOOL)commonCapabilitiesSupportHighQualityPhotos:(id)a3;
+ (BOOL)isNetworkLowDataMode;
+ (BOOL)isPreviewAttachmentSizeEnabled;
+ (BOOL)shouldAllowBackwardsCompatibilitySizeOverride;
+ (BOOL)shouldAllowHighQualityPhotoUploadForNetworkConditions;
+ (BOOL)shouldSendLowResolutionOnly;
+ (BOOL)updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled;
+ (id)_fetchSizeLimitsForTransfer:(id)a3 mode:(unint64_t)a4;
+ (id)messageAttachmentSendableUTIs;
+ (id)messageAttachmentSendableUTIsForResourcePath:(id)a3;
+ (int64_t)largeFileSizeFor:(id)a3 allowedLargerRepresentation:(BOOL *)a4;
+ (unint64_t)_fileTransferSizeForSpatialImageFromServerBag:(id)a3;
+ (unint64_t)_minSizeForLargeAuxVideo;
+ (unint64_t)_smallerImageFileSize;
+ (unint64_t)freeSpaceInHomeDirectory;
+ (unint64_t)maxTransferAudioFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4;
+ (unint64_t)maxTransferVideoFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4;
+ (unint64_t)mmcsTargetReportSizeForHighQualityPhotoSize:(unint64_t)a3 commonCapabilities:(id)a4;
+ (unint64_t)modernHighQualityPhotoSizeLimit;
+ (unint64_t)tinyImageQualitySizeLimit;
+ (void)_fetchStandardSizeLimit:(unint64_t *)a3 highQualitySizeLimit:(unint64_t *)a4 forTransfer:(id)a5;
+ (void)_fileTransferSizeForAAVideoFromServerBag:(unint64_t *)a3 smallSize:(unint64_t *)a4 serverBag:(id)a5;
+ (void)_fileTransferSizeForAuxVideoFromServerBag:(unint64_t *)a3 smallSize:(unint64_t *)a4 serverBag:(id)a5;
+ (void)maxTransferFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4;
@end

@implementation IMDAttachmentUtilities

+ (unint64_t)freeSpaceInHomeDirectory
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSHomeDirectory();
  v4 = [v2 attributesOfFileSystemForPath:v3 error:0];

  v5 = [v4 objectForKey:*MEMORY[0x277CCA1D0]];
  v6 = [v5 longLongValue];

  return v6;
}

+ (id)messageAttachmentSendableUTIs
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 resourcePath];

  v5 = [a1 messageAttachmentSendableUTIsForResourcePath:v4];

  return v5;
}

+ (id)messageAttachmentSendableUTIsForResourcePath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "MessageAttachmentSendableUTIs called with resourcePath %@", &v18, 0xCu);
  }

  v5 = [(__CFString *)v3 stringByAppendingPathComponent:@"MessageSendableUTIs"];
  v6 = [v5 stringByAppendingPathExtension:@"plist"];

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "looking at path: %@", &v18, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v6];

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"does not exist >__<";
    if (v9)
    {
      v11 = @"exists!";
    }

    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "%@ %@", &v18, 0x16u);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "MessageAttachmentSendableUTIs got dict %@ from %@", &v18, 0x16u);
  }

  if (v12)
  {
    v14 = [(__CFString *)v12 objectForKey:@"MessageSendableUTIs"];
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got sendable UTI list: %@", &v18, 0xCu);
    }
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)shouldSendLowResolutionOnly
{
  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Low resolution only because network is ultra constrained", v4, 2u);
    }

    return 1;
  }

  else
  {

    return MEMORY[0x2821737E8]();
  }
}

+ (id)_fetchSizeLimitsForTransfer:(id)a3 mode:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = 0;
  v31 = 0;
  [a1 _fetchStandardSizeLimit:&v31 highQualitySizeLimit:&v30 forTransfer:v6];
  v7 = v31;
  v8 = [v6 isAuxVideo];
  v9 = [v6 type];
  v10 = *MEMORY[0x277CC20B0];
  if (UTTypeConformsTo(v9, *MEMORY[0x277CC20B0]))
  {
    if ((v8 & 1) == 0)
    {
      v11 = [a1 tinyImageQualitySizeLimit];
      if (v11 < v31)
      {
        v7 = v11;
      }
    }
  }

  v12 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v13 = [v12 objectForKey:@"ck-imessage-always-send-LQM-for-standard-size_overwrite"];
  v14 = [v13 BOOLValue];

  if (UTTypeConformsTo([v6 type], v10) && (v14 & 1) == 0)
  {
    v31 = [a1 _smallerImageFileSize];
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
      *buf = 138412290;
      v38 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Overwrite standard Size to tiny size %@", buf, 0xCu);
    }
  }

  if ([a1 shouldEnablePreviewTranscodingQualityForTransfer:v6 isSending:1])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v6 guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "tinyImageQualitySizeLimit")}];
      *buf = 138412546;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Attempting to send transfer %@ with low quality image mode on. Forcing size limit to be %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "tinyImageQualitySizeLimit")}];
    v36 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
    v32 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v32;
  }

  else if (a4 == 1)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v33 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v33;
  }

  else
  {
    if (a4)
    {
      v25 = 0;
      goto LABEL_24;
    }

    if (![a1 shouldSendLowResolutionOnly])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
      v34[0] = v22;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
      v34[1] = v29;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

      goto LABEL_22;
    }

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v35 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v35;
  }

  v25 = [v23 arrayWithObjects:v24 count:1];
LABEL_22:

LABEL_24:
  v26 = IMLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "limits before sorting %@", buf, 0xCu);
  }

  v21 = [v25 __message_sortedDedupedNonZeroNumberArray];

  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v21;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "limits after sorting %@", buf, 0xCu);
  }

LABEL_28:

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (int64_t)largeFileSizeFor:(id)a3 allowedLargerRepresentation:(BOOL *)a4
{
  v5 = a3;
  if (qword_27D8CFE18 != -1)
  {
    sub_22B7D21C8();
  }

  v6 = off_27D8CFE10;
  if (off_27D8CFE10)
  {
    v10 = 0;
    v11 = 0;
    v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v6(v5, &v10, &v11, v7, a4);

    v8 = v10;
  }

  else
  {
    v8 = IMiMessageMaxFileSizeForUTI();
  }

  return v8;
}

+ (void)maxTransferFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  [v6 IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v7 phoneNumber:0 simID:0];
}

+ (unint64_t)maxTransferAudioFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v8 = [v6 IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v7 phoneNumber:0 simID:0];

  return v8;
}

+ (unint64_t)maxTransferVideoFileSizeForWifi:(unint64_t *)a3 cell:(unint64_t *)a4
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v8 = [v6 IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v7 phoneNumber:0 simID:0];

  return v8;
}

+ (void)_fileTransferSizeForAuxVideoFromServerBag:(unint64_t *)a3 smallSize:(unint64_t *)a4 serverBag:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [v7 objectForKey:@"att-aux-video-max-file-size"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v7 objectForKey:@"att-aux-video-min-file-size"];

  v11 = [v10 unsignedIntegerValue];
  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Server bag results for aux video big %lu small %lu ", &v15, 0x16u);
  }

  v13 = 0x100000;
  if (v11)
  {
    v13 = v11;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_fileTransferSizeForAAVideoFromServerBag:(unint64_t *)a3 smallSize:(unint64_t *)a4 serverBag:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = [a5 objectForKey:@"att-aa-video-max-file-size"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntegerValue];
  }

  else
  {
    v9 = 104857600;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    if (!v8)
    {
      v11 = @"YES";
    }

    v13 = 134218242;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Server bag results for max stereo video %lu default(%@)", &v13, 0x16u);
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_fileTransferSizeForSpatialImageFromServerBag:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKey:@"att-spatial-image-max-file-size"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 20971520;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (!v4)
    {
      v7 = @"YES";
    }

    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server bag results for max spatial image %lu default(%@)", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)shouldAllowHighQualityPhotoUploadForNetworkConditions
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D19270] sharedInstance];
  v3 = [v2 isWiFiUsable];

  v4 = [MEMORY[0x277D19270] sharedInstance];
  v5 = [v4 hasLTEDataConnection];

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if ((v3 | v5))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    if (v5)
    {
      v7 = @"YES";
    }

    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "shouldAllowHighQualityPhotoUploadForNetworkConditions: (%@), isWifiUsable: (%@), hasLTE: (%@)", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return (v3 | v5) & 1;
}

+ (unint64_t)modernHighQualityPhotoSizeLimit
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"hq-photo-size-limit"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 104857600;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (!v4)
    {
      v7 = @"YES";
    }

    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Results for high quality photo size limit: %lu is default: (%@)", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)commonCapabilitiesSupportHighQualityPhotos:(id)a3
{
  v3 = [a3 objectForKey:@"supports-high-quality-photo-file-sizes"];
  v4 = v3 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 integerValue] == 1;

  return v4;
}

+ (BOOL)shouldAllowBackwardsCompatibilitySizeOverride
{
  LOBYTE(v2) = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"disable-hq-photo-mmcs-reported-size-override"];
  v5 = v4;
  if (v4)
  {
    v2 = [v4 BOOLValue] ^ 1;
  }

  return v2;
}

+ (unint64_t)mmcsTargetReportSizeForHighQualityPhotoSize:(unint64_t)a3 commonCapabilities:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D18A10];
  v7 = a4;
  v8 = [v6 sharedInstanceForBagType:1];
  v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v10 = [v9 isHighQualityPhotosEnabled];

  v11 = [a1 commonCapabilitiesSupportHighQualityPhotos:v7];
  v12 = [a1 shouldAllowBackwardsCompatibilitySizeOverride];
  v13 = [a1 modernHighQualityPhotoSizeLimit];
  v14 = a3;
  if ((v11 & 1) == 0)
  {
    v14 = a3;
    if (v10)
    {
      v14 = a3;
      if (v12)
      {
        v14 = a3;
        if (v13 >= a3)
        {
          v15 = [v8 objectForKey:@"hq-photo-mmcs-reported-size-override"];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 unsignedIntegerValue];
          }

          else
          {
            v17 = 0x100000;
          }

          if (v17 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v17;
          }
        }
      }
    }
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = @"NO";
    v26 = 2048;
    v24 = 134219010;
    if (v12)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v25 = v14;
    v27 = a3;
    if (v11)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v28 = 2112;
    if (v10)
    {
      v19 = @"YES";
    }

    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Determined MMCS photo upload size to report: %lu, actual file size: %lu, allowCompatibilityOverride: %@, recipients support hqp: %@, hqp enabled: %@", &v24, 0x34u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)_isNetworkUltraConstrained
{
  v2 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
  v3 = [v2 isUltraConstrained];

  return v3;
}

+ (unint64_t)_minSizeForLargeAuxVideo
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D19270] sharedInstance];
  if ([v2 isWiFiEnabled])
  {
    v3 = [MEMORY[0x277D19270] sharedInstance];
    v4 = [v3 isWiFiUsable];

    if (v4)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [MEMORY[0x277D19270] sharedInstance];
  v5 = [v7 hasLTEDataConnection];

  v6 = 1;
LABEL_6:
  v8 = [MEMORY[0x277D19270] sharedInstance];
  v9 = [v8 isWiFiUsable];

  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Low bandwidth cellular because network is ultra constrained", &v24, 2u);
    }

    v5 = 0;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v24 = 138412290;
    v25 = v12;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "  Low Bandwidth Cell: %@", &v24, 0xCu);
  }

  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v24 = 138412290;
    v25 = v14;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " High Bandwidth Cell: %@", &v24, 0xCu);
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (v9)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v24 = 138412290;
    v25 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "      High Bandwidth: %@", &v24, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v24 = 138412290;
    v25 = @"YES";
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "    Wants Misc Types: %@", &v24, 0xCu);
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "      ** This is an aux video type", &v24, 2u);
  }

  v19 = 0x200000;
  if (v9 & 1 | ((v5 & 1) == 0))
  {
    v19 = 3145728;
  }

  if (v5 & 1 | ((v6 & 1) == 0) | v9 & 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x100000;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = 134217984;
    v25 = (v20 >> 10);
    _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "  Max File Size: %lld kb", &v24, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (void)_fetchStandardSizeLimit:(unint64_t *)a3 highQualitySizeLimit:(unint64_t *)a4 forTransfer:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v48 = 0;
  v49 = 0;
  v9 = [v8 localURL];
  v10 = IMIsAAVideoURL();

  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 guid];
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Overriding file size for AA video transfer %@", buf, 0xCu);
    }

    *buf = 0;
    v47 = 0;
    v13 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    [a1 _fileTransferSizeForAAVideoFromServerBag:buf smallSize:&v47 serverBag:v13];

    v14 = *buf;
    if (v14 >= [a1 _maxAllowedStereoVideoSize])
    {
      v15 = [a1 _maxAllowedStereoVideoSize];
    }

    else
    {
      v15 = *buf;
    }

    v48 = v15;
    v49 = v15;
  }

  else if ([v8 isAuxVideo])
  {
    v46 = 0;
    v47 = 0;
    v16 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    [a1 _fileTransferSizeForAuxVideoFromServerBag:&v47 smallSize:&v46 serverBag:v16];

    v18 = v46;
    v17 = v47;
    v48 = v46;
    if (v17 <= [a1 _minSizeForLargeAuxVideo])
    {
      v19 = [a1 _minSizeForLargeAuxVideo];
    }

    else
    {
      v19 = v47;
    }

    v49 = v19;
    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v8 guid];
      *buf = 138412802;
      *&buf[4] = v27;
      v51 = 2048;
      v52 = v18;
      v53 = 2048;
      v54 = v19;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Overriding file size for Aux video transfer %@ to small %lu large %lu", buf, 0x20u);
    }
  }

  else
  {
    v20 = [v8 type];
    IsImage = IMUTTypeIsImage();

    v22 = [v8 type];
    if (IsImage)
    {
      v23 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v24 = [v23 isHighQualityPhotosEnabled];

      if (v24)
      {
        v25 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
        IMiMessageSizeLimitsForTransferType();

        if ([a1 shouldAllowHighQualityPhotoUploadForNetworkConditions])
        {
          v49 = [a1 modernHighQualityPhotoSizeLimit];
        }
      }

      else
      {
        v29 = [v8 localURL];
        v30 = IMIsSpatialMedia();

        if (v30)
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v8 guid];
            *buf = 138412290;
            *&buf[4] = v32;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Overriding file size for spatial image transfer %@", buf, 0xCu);
          }

          v33 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
          v34 = [a1 _fileTransferSizeForSpatialImageFromServerBag:v33];

          if (v34 >= [a1 _maxAllowedSpatialImageSize])
          {
            v34 = [a1 _maxAllowedSpatialImageSize];
          }

          v48 = v34;
          v49 = v34;
        }

        else
        {
          v35 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
          IMiMessageSizeLimitsForTransferType();
        }
      }

      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v36 = [v8 guid];
        *buf = 138412802;
        *&buf[4] = v36;
        v51 = 2048;
        v52 = v49;
        v53 = 2048;
        v54 = v48;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Setting file size for image transfer: %@. bigSize: %lu smallSize: %lu", buf, 0x20u);
      }
    }

    else
    {
      v28 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      IMiMessageSizeLimitsForTransferType();
    }
  }

  v37 = [MEMORY[0x277D1A990] sharedInstance];
  v38 = [v37 getValueFromDomain:@"com.apple.imessage" forKey:@"TranscodeSizeLimitsKB"];

  if (v38 && [v38 count] == 2)
  {
    v39 = [v38 objectAtIndex:0];
    LODWORD(v40) = [v39 unsignedIntValue];

    v41 = [v38 objectAtIndex:1];
    v42 = [v41 unsignedIntValue];

    if (v40 >= v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = v40;
    }

    if (v40 <= v42)
    {
      v40 = v42;
    }

    else
    {
      v40 = v40;
    }

    v44 = IMLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      *&buf[4] = v48 >> 10;
      v51 = 2048;
      v52 = v49 >> 10;
      v53 = 2048;
      v54 = v43;
      v55 = 2048;
      v56 = v40;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Overriding Transcode sizes limits due to default TranscodeSizeLimitsKB: (%lu, %lu) to (%lu, %lu)", buf, 0x2Au);
    }

    v48 = v43 << 10;
    v49 = v40 << 10;
  }

  if (a3)
  {
    *a3 = v48;
  }

  if (a4)
  {
    *a4 = v49;
  }

  v45 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_smallerImageFileSize
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"madrid-small-image-size"];
  v4 = [v3 unsignedIntegerValue];

  if (v4)
  {
    v5 = [v2 objectForKey:@"madrid-small-image-size"];
    v6 = [v5 unsignedIntegerValue];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Small image size ovverriden by server %@", &v11, 0xCu);
    }
  }

  else
  {
    v6 = 512000;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isPreviewAttachmentSizeEnabled
{
  if ([MEMORY[0x277D1A8F8] IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:0 simID:0] && !objc_msgSend(a1, "didLQMSettingChanged") || (IMGetCachedDomainBoolForKey() & 1) != 0)
  {
    return 1;
  }

  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"send-preview-image"];
  v6 = [v5 BOOLValue];

  return v6;
}

+ (BOOL)isNetworkLowDataMode
{
  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Low Data Mode because network is ultra constrained", v10, 2u);
    }

    return 1;
  }

  else
  {
    v4 = [MEMORY[0x277D19270] sharedInstance];
    v5 = [v4 isWiFiUsable];

    v6 = [MEMORY[0x277D1A908] sharedInstance];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 isWiFiLowDataMode];
    }

    else
    {
      v8 = [v6 isLowDataMode];
    }

    v9 = v8;

    return v9;
  }
}

+ (unint64_t)tinyImageQualitySizeLimit
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if (v2)
  {
    v3 = v2;
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Preview size %lu from internal override", &v14, 0xCu);
    }

    v5 = v3 << 10;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x277D1A8F8] IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:0 simID:0];
  if (v6)
  {
    v5 = v6;
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = v5;
      v8 = "Preview size %lu from operator bundle";
LABEL_11:
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, v8, &v14, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"preview-attachment-photo-size"];
  v5 = [v10 integerValue];

  v7 = IMLogHandleForCategory();
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      v14 = 134217984;
      v15 = v5;
      v8 = "Preview size %lu from server bag";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v11)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Using hard coded preview size", &v14, 2u);
  }

  v5 = 358400;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled
{
  v3 = [MEMORY[0x277D1A8F8] IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:0 simID:0];
  v4 = [a1 didLQMSettingChanged];
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      IMSetDomainBoolForKey();
      return 1;
    }
  }

  else if ((v4 & 1) == 0)
  {
    IMSetDomainBoolForKey();
  }

  if (IMGetCachedDomainBoolForKey())
  {
    return 1;
  }

  v6 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v7 = [v6 objectForKey:@"send-preview-image"];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)_doesWRMRecommendDisablingLQM
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277D1A908] sharedInstance];
    v4 = [v3 wrmNetworkPreference];
    v5 = [MEMORY[0x277D1A908] sharedInstance];
    v6 = [v5 wrmCellScore];
    v19 = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "LQM-WRM Network pref is %@ and cellscore is %@", &v19, 0x16u);
  }

  v7 = [MEMORY[0x277D1A908] sharedInstance];
  v8 = [v7 wrmCellScore];
  v9 = [v8 intValue];

  v10 = [MEMORY[0x277D1A908] sharedInstance];
  v11 = [v10 wrmNetworkPreference];
  if ([v11 intValue])
  {
    v12 = 1;
  }

  else
  {
    v12 = (v9 - 1) >= 2;
  }

  v13 = !v12;

  if (v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "LQM-WRM Disabling LQM based on WRM recommendation", &v19, 2u);
    }
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (v13)
    {
      v16 = @"YES";
    }

    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "LQM-WRM _doesWRMRecommendDisablingLQM is %@", &v19, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

@end