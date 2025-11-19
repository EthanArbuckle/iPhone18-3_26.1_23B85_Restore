@interface CKUtilities
+ (BOOL)isIMStickerSaveable:(id)a3;
+ (BOOL)isIpad;
+ (BOOL)isIphone;
+ (BOOL)isMessagePromotionsNotificationDisabled;
+ (BOOL)isMessageTransactionsNotificationDisabled;
+ (BOOL)isMessageUnknownSenderNotificationDisabled;
+ (BOOL)userDefaultBoolForKey:(id)a3;
+ (double)_intervalSinceDate:(id)a3;
+ (id)deviceSpecificNameForKey:(id)a3;
+ (id)imMessageForIMMessageItem:(id)a3;
+ (id)quickSaveConfirmationAlertForMediaObjects:(id)a3 momentShareURL:(id)a4 popoverSource:(id)a5 metricsSource:(id)a6 cancelHandler:(id)a7 preSaveHandler:(id)a8 postSaveHandler:(id)a9 postAnyActionHandler:(id)a10;
+ (id)quickSaveConfirmationAlertWithPhotoCount:(unint64_t)a3 videoCount:(unint64_t)a4 otherCount:(unint64_t)a5 alreadySavedCount:(unint64_t)a6 popoverSource:(id)a7 cancelHandler:(id)a8 saveHandler:(id)a9 navigationHandler:(id)a10;
+ (id)saveableStickerForMediaObject:(id)a3;
+ (id)saveableStickerFromChatItem:(id)a3;
+ (id)threadIdentifierForMessagePart:(id)a3;
+ (id)threadOriginatorForMessagePart:(id)a3;
+ (int64_t)systemGlassLegibilitySetting;
+ (unint64_t)daysUntilJunkFilterDeletionForDate:(id)a3;
+ (unint64_t)indexOfChatItem:(id)a3 inChatItemsArray:(id)a4;
+ (unint64_t)messageJunkStatus;
+ (unint64_t)orientationMaskFromInterfaceOrientation:(int64_t)a3;
+ (void)_loadUIKitGlassLegibilityFunctions;
+ (void)onboardRecentlyDeletedIfNeeded:(id)a3 deviceType:(int64_t)a4 actionHandler:(id)a5;
+ (void)openCKVSettings;
@end

@implementation CKUtilities

+ (BOOL)isIpad
{
  if (isIpad_onceToken != -1)
  {
    +[CKUtilities isIpad];
  }

  return isIpad_isIpad;
}

void __21__CKUtilities_isIpad__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isIpad_isIpad = (v1 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (BOOL)userDefaultBoolForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 nsUserDefaultsStandardUserDefaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

+ (BOOL)isIphone
{
  if (isIphone_onceToken != -1)
  {
    +[CKUtilities isIphone];
  }

  return isIphone_isIphone;
}

void __23__CKUtilities_isIphone__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  isIphone_isIphone = [v0 userInterfaceIdiom] == 0;
}

+ (id)threadIdentifierForMessagePart:(id)a3
{
  v3 = a3;
  v4 = [v3 threadIdentifier];
  if (![v4 length])
  {
    v5 = [v3 message];
    v6 = [v5 guid];

    [v3 originalMessagePartRange];
    [v3 index];
    ThreadIdentifierWithOriginatorGUID = IMMessageCreateThreadIdentifierWithOriginatorGUID();

    v4 = ThreadIdentifierWithOriginatorGUID;
  }

  return v4;
}

+ (id)threadOriginatorForMessagePart:(id)a3
{
  v3 = a3;
  v4 = [v3 threadIdentifier];
  if ([v4 length])
  {
    v5 = [v3 threadOriginator];
  }

  else
  {
    v6 = [v3 message];

    v5 = [v6 _imMessageItem];
    v3 = v6;
  }

  return v5;
}

+ (id)imMessageForIMMessageItem:(id)a3
{
  v3 = a3;
  v4 = [v3 account];
  v5 = _IMBestAccountForIMItem();

  IMMessageFromIMItem = _CreateIMMessageFromIMItem();

  return IMMessageFromIMItem;
}

+ (id)deviceSpecificNameForKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699BE70] sharedInstance];
  v5 = [v4 deviceType];

  if ((v5 - 1) > 6)
  {
    v6 = v3;
  }

  else
  {
    v6 = [v3 stringByAppendingString:off_1E72EF690[v5 - 1]];
  }

  v7 = v6;

  return v7;
}

+ (unint64_t)messageJunkStatus
{
  if (!CKIsEligibleForBlackhole())
  {
    return 28;
  }

  if ([MEMORY[0x1E69A82A0] isFilterUnknownSendersEnabled])
  {
    return 30;
  }

  return 29;
}

+ (BOOL)isMessageUnknownSenderNotificationDisabled
{
  if (CKMessageUnknownSenderNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessageUnknownSenderNotificationDisabled];
  }

  return sSMSDefaultAllowUnknownSendersDisabled;
}

+ (BOOL)isMessageTransactionsNotificationDisabled
{
  if (CKMessageTransactionsNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessageTransactionsNotificationDisabled];
  }

  return sSMSDefaultAllowTransactionsDisabled;
}

+ (BOOL)isMessagePromotionsNotificationDisabled
{
  if (CKMessagePromotionsNotificationDisabled_onceToken != -1)
  {
    +[CKUtilities isMessagePromotionsNotificationDisabled];
  }

  return sSMSDefaultAllowPromotionsDisabled;
}

+ (void)openCKVSettings
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

+ (id)quickSaveConfirmationAlertWithPhotoCount:(unint64_t)a3 videoCount:(unint64_t)a4 otherCount:(unint64_t)a5 alreadySavedCount:(unint64_t)a6 popoverSource:(id)a7 cancelHandler:(id)a8 saveHandler:(id)a9 navigationHandler:(id)a10
{
  v76 = a7;
  v75 = a8;
  v15 = a9;
  v16 = a10;
  v17 = a4 + a3 + a5;
  if (!a3 || a5 | a4)
  {
    v19 = a4 != 0;
    v20 = (a5 | a3) == 0;
    if (v19 && v20)
    {
      v18 = @"_VIDEO";
    }

    else
    {
      v18 = @"_ITEM";
    }

    if (v19 && v20)
    {
      a3 = a4;
    }

    else
    {
      a3 += a4 + a5;
    }
  }

  else
  {
    v18 = @"_PHOTO";
  }

  v21 = v76;
  v74 = v15;
  if (a6)
  {
    if (v17 <= a6)
    {
      v27 = @"ALREADY_SAVED_CONFIRMATION_SINGLE";
      if (a3 > 1)
      {
        v27 = @"ALREADY_SAVED_CONFIRMATION_MULTIPLE";
      }

      v23 = v27;
      v22 = 0;
    }

    else
    {
      v22 = a6 != 1;
      if (a6 == 1)
      {
        v23 = @"ALREADY_SAVED_CONFIRMATION_PARTIAL_SINGLE";
      }

      else
      {
        v23 = @"ALREADY_SAVED_CONFIRMATION_PARTIAL_MULTIPLE";
      }
    }

    v72 = IMGetCachedDomainBoolForKeyWithDefaultValue();
LABEL_30:
    v28 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v29 = [v28 isRedesignedDetailsViewEnabled];

    if (v29)
    {
      [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:0];
    }

    else
    {
      [MEMORY[0x1E69789A8] sharedPhotoLibrary];
    }
    v73 = ;
    if ([v73 isCloudPhotoLibraryEnabled])
    {
      v30 = [(__CFString *)v23 stringByAppendingString:@"_ICPL"];

      v23 = v30;
    }

    v31 = [(__CFString *)v23 stringByAppendingString:v18];

    v69 = v31;
    if (v22)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = v31;
      v34 = CKFrameworkBundle();
      v35 = [v34 localizedStringForKey:v33 value:&stru_1F04268F8 table:@"ChatKit"];

      v36 = [v32 localizedStringWithFormat:v35, a6];

      v37 = [MEMORY[0x1E69DC668] sharedApplication];
      v38 = [v37 userInterfaceLayoutDirection];

      if (v38 == 1)
      {
        v39 = @"\u200F";
      }

      else
      {
        v39 = @"\u200E";
      }

      v40 = [(__CFString *)v39 stringByAppendingString:v36];
    }

    else
    {
      v36 = CKFrameworkBundle();
      v40 = [v36 localizedStringForKey:v31 value:&stru_1F04268F8 table:@"ChatKit"];
    }

    v70 = v40;

    v41 = v17 - a6;
    v71 = v17 == a6;
    if (v17 == a6)
    {
      v42 = @"SAVE_MULTIPLE_DUPLICATES";
      if (a6 == 1)
      {
        v42 = @"SAVE_SINGLE_DUPLICATE";
      }

      v43 = v42;
      v44 = CKFrameworkBundle();
      v45 = [v44 localizedStringForKey:v43 value:&stru_1F04268F8 table:@"ChatKit"];

      v46 = MEMORY[0x1E69DC648];
      v47 = CKFrameworkBundle();
      v48 = [v47 localizedStringForKey:@"SHOW_IN_PHOTOS" value:&stru_1F04268F8 table:@"ChatKit"];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __154__CKUtilities_quickSaveConfirmationAlertWithPhotoCount_videoCount_otherCount_alreadySavedCount_popoverSource_cancelHandler_saveHandler_navigationHandler___block_invoke;
      v83[3] = &unk_1E72EC218;
      v84 = v16;
      v49 = [v46 actionWithTitle:v48 style:0 handler:v83];
    }

    else
    {
      if (v41 >= v17)
      {
        if (v41 == 1)
        {
          v59 = @"SAVE_SINGLE";
        }

        else
        {
          v59 = @"SAVE_MULTIPLE";
        }

        v50 = [(__CFString *)v59 stringByAppendingString:v18];
        v54 = CKFrameworkBundle();
        v58 = [v54 localizedStringForKey:v50 value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        v50 = [@"SAVE_COUNT" stringByAppendingString:v18];
        v51 = MEMORY[0x1E696AEC0];
        v52 = CKFrameworkBundle();
        v53 = [v52 localizedStringForKey:v50 value:&stru_1F04268F8 table:@"ChatKit"];
        v54 = [v51 localizedStringWithFormat:v53, v41];

        v55 = [MEMORY[0x1E69DC668] sharedApplication];
        v56 = [v55 userInterfaceLayoutDirection];

        if (v56 == 1)
        {
          v57 = @"\u200F";
        }

        else
        {
          v57 = @"\u200E";
        }

        v58 = [(__CFString *)v57 stringByAppendingString:v54];
      }

      v45 = v58;

      v49 = 0;
    }

    v60 = MEMORY[0x1E69DC648];
    v61 = CKFrameworkBundle();
    v62 = [v61 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __154__CKUtilities_quickSaveConfirmationAlertWithPhotoCount_videoCount_otherCount_alreadySavedCount_popoverSource_cancelHandler_saveHandler_navigationHandler___block_invoke_2;
    v81[3] = &unk_1E72EC218;
    v82 = v75;
    v63 = [v60 actionWithTitle:v62 style:1 handler:v81];

    v64 = MEMORY[0x1E69DC648];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __154__CKUtilities_quickSaveConfirmationAlertWithPhotoCount_videoCount_otherCount_alreadySavedCount_popoverSource_cancelHandler_saveHandler_navigationHandler___block_invoke_3;
    v77[3] = &unk_1E72EF500;
    v15 = v74;
    v78 = v74;
    v79 = v71;
    v80 = v72;
    v65 = [v64 actionWithTitle:v45 style:0 handler:v77];
    v66 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v70 preferredStyle:0];
    v26 = v66;
    v21 = v76;
    if (v16 && v49)
    {
      [v66 addAction:v49];
    }

    [v26 addAction:v65];
    [v26 setPreferredAction:v65];
    [v26 addAction:v63];
    objc_opt_class();
    v23 = v69;
    if (objc_opt_isKindOfClass())
    {
      v67 = [v26 popoverPresentationController];
      [v67 setBarButtonItem:v76];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_63:

        goto LABEL_64;
      }

      v67 = [v26 popoverPresentationController];
      [v67 setSourceView:v76];
    }

    v15 = v74;
    goto LABEL_63;
  }

  v24 = @"QUICK_SAVE_CONFIRMATION_SINGLE";
  if (a3 > 1)
  {
    v24 = @"QUICK_SAVE_CONFIRMATION_MULTIPLE";
  }

  v23 = v24;
  if (!IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    v72 = 0;
    v22 = 0;
    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Found that we did not need to show quick save confirmation alert. Calling save handler now instead.", buf, 2u);
    }
  }

  if (v15)
  {
    (*(v15 + 2))(v15, 0);
  }

  v26 = 0;
LABEL_64:

  return v26;
}

uint64_t __154__CKUtilities_quickSaveConfirmationAlertWithPhotoCount_videoCount_otherCount_alreadySavedCount_popoverSource_cancelHandler_saveHandler_navigationHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __154__CKUtilities_quickSaveConfirmationAlertWithPhotoCount_videoCount_otherCount_alreadySavedCount_popoverSource_cancelHandler_saveHandler_navigationHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    IMSetDomainBoolForKey();
  }
}

+ (id)quickSaveConfirmationAlertForMediaObjects:(id)a3 momentShareURL:(id)a4 popoverSource:(id)a5 metricsSource:(id)a6 cancelHandler:(id)a7 preSaveHandler:(id)a8 postSaveHandler:(id)a9 postAnyActionHandler:(id)a10
{
  v108 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v58 = a7;
  v57 = a8;
  v59 = a9;
  v60 = a10;
  v51 = v16;
  v52 = [v16 count];
  if (v52)
  {
    v50 = a1;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v17 = v16;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = [v17 countByEnumeratingWithState:&v100 objects:v107 count:16];
    if (v21)
    {
      v22 = *v101;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v101 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = [*(*(&v100 + 1) + 8 * i) UTIType];
          if (IMUTITypeIsPhoto())
          {
            ++v20;
          }

          else if (IMUTITypeIsVideo())
          {
            ++v19;
          }

          else
          {
            ++v18;
          }
        }

        v21 = [v17 countByEnumeratingWithState:&v100 objects:v107 count:16];
      }

      while (v21);
    }

    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__15;
    v94 = __Block_byref_object_dispose__15;
    v95 = 0;
    v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v17;
    v25 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
    if (v25)
    {
      v26 = *v87;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v87 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v86 + 1) + 8 * j);
          v29 = [v28 syndicationIdentifier];
          if (v29)
          {
            [v63 addObject:v29];
          }

          else
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v105 = v28;
              _os_log_error_impl(&dword_19020E000, v30, OS_LOG_TYPE_ERROR, "syndicationIdentifier for media object was nil. %@", buf, 0xCu);
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
      }

      while (v25);
    }

    if ([v63 count] == v52)
    {
      v31 = dispatch_group_create();
      dispatch_group_enter(v31);
      v32 = [MEMORY[0x1E69A5C30] sharedInstance];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke;
      v82[3] = &unk_1E72EF528;
      v84 = &v96;
      v85 = &v90;
      v33 = v31;
      v83 = v33;
      [v32 fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:v63 completion:v82];

      if (v20)
      {
        v34 = [MEMORY[0x1E69A82F0] sharedInstance];
        [v34 sendSavePhotoEvent];
      }

      v35 = dispatch_time(0, 1000000000);
      if (dispatch_group_wait(v33, v35))
      {
        v36 = IMLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          +[CKUtilities quickSaveConfirmationAlertForMediaObjects:momentShareURL:popoverSource:metricsSource:cancelHandler:preSaveHandler:postSaveHandler:postAnyActionHandler:];
        }
      }
    }

    else
    {
      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[CKUtilities quickSaveConfirmationAlertForMediaObjects:momentShareURL:popoverSource:metricsSource:cancelHandler:preSaveHandler:postSaveHandler:postAnyActionHandler:];
      }
    }

    v39 = v97[3] == v52;
    v40 = v91[5];
    if (v40)
    {
      v41 = v79;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1784;
      v79[3] = &unk_1E72EF550;
      v80[1] = &v90;
      v81 = v39;
      v49 = v80;
      v80[0] = v60;
    }

    else
    {
      v41 = 0;
    }

    v61 = _Block_copy(v41);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_2;
    aBlock[3] = &unk_1E72EF578;
    v78 = v39;
    v76 = v58;
    v42 = v60;
    v77 = v42;
    v43 = _Block_copy(aBlock);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1785;
    v72[3] = &unk_1E72EF5A0;
    v53 = v63;
    v73 = v53;
    v74 = v59;
    v44 = _Block_copy(v72);
    v45 = v97[3];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_2_1787;
    v64[3] = &unk_1E72EF5C8;
    v68 = v57;
    v65 = obj;
    v66 = v54;
    v46 = v44;
    v69 = v46;
    v67 = v56;
    v70 = v42;
    v71 = v39;
    v38 = [v50 quickSaveConfirmationAlertWithPhotoCount:v20 videoCount:v19 otherCount:v18 alreadySavedCount:v45 popoverSource:v55 cancelHandler:v43 saveHandler:v64 navigationHandler:v61];
    if (!v38 && IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "Save confirmation won't be presented", buf, 2u);
      }
    }

    if (v40)
    {
    }

    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v96, 8);
  }

  else
  {
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[CKUtilities quickSaveConfirmationAlertForMediaObjects:momentShareURL:popoverSource:metricsSource:cancelHandler:preSaveHandler:postSaveHandler:postAnyActionHandler:];
    }

    v38 = 0;
  }

  return v38;
}

void __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1784(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [@"photos://asset?uuid=" stringByAppendingString:v2];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v11 = 0;
  v6 = [v5 openSensitiveURL:v4 withOptions:0 error:&v11];
  v7 = v11;

  v8 = IMLogHandleForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v2;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_DEFAULT, "Navigated to asset %{public}@ in Photos", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1784_cold_1();
  }

  _TrackSaveDialogOptionSelected(*MEMORY[0x1E69A75F8], *(a1 + 48));
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_2(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_DEFAULT, "User canceled save.", v5, 2u);
  }

  _TrackSaveDialogOptionSelected(*MEMORY[0x1E69A75D0], *(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1785(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v6 = [MEMORY[0x1E69A5C30] sharedInstance];
    v7 = [*(a1 + 32) allObjects];
    [v6 cacheCompletedSaveForSyndicationIdentifiers:v7];

    v5 = v9;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9);
    v5 = v9;
  }
}

void __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_2_1787(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) count];
      *buf = 134217984;
      v21 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Will save %tu items", buf, 0xCu);
    }
  }

  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Will attempt to save through moment share", buf, 2u);
    }
  }

  if ((CKSaveMomentShareFromURL(*(a1 + 40), *(a1 + 32), *(a1 + 64)) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Moment share save failed. Will fallback to media object save", buf, 2u);
      }
    }

LABEL_17:
    v12 = [[CKMediaObjectExportManager alloc] initWithMediaObjects:*(a1 + 32)];
    v13 = v12;
    if (a2)
    {
      [(CKMediaObjectExportManager *)v12 setIgnoreSyndicationIdentifiers:1];
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Will save ignoring syndication state, since items are already saved", buf, 2u);
        }
      }
    }

    [(CKMediaObjectExportManager *)v13 setMetricsSource:*(a1 + 48)];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1789;
    v17[3] = &unk_1E72EF5A0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    [(CKMediaObjectExportManager *)v13 exportQueuedMediaObjectsWithCompletion:v17];
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, v8, v9, v10);
  }

  v16 = MEMORY[0x1E69A75D8];
  if (!a2)
  {
    v16 = MEMORY[0x1E69A75E8];
  }

  _TrackSaveDialogOptionSelected(*v16, *(a1 + 80));
}

void __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1789(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __166__CKUtilities_quickSaveConfirmationAlertForMediaObjects_momentShareURL_popoverSource_metricsSource_cancelHandler_preSaveHandler_postSaveHandler_postAnyActionHandler___block_invoke_1789_cold_1();
    }

    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Save succeeded", v7, 2u);
    }

LABEL_7:
  }

  (*(*(a1 + 40) + 16))();
}

+ (unint64_t)orientationMaskFromInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 30;
  }

  else
  {
    return qword_190DCEFE0[a3 - 1];
  }
}

+ (unint64_t)indexOfChatItem:(id)a3 inChatItemsArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfObject:v5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_15;
  }

  v8 = v5;
  if (![v6 count])
  {
LABEL_11:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v7 = 0;
  while (1)
  {
    v9 = [v6 objectAtIndex:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 transferGUIDs];
      v11 = [v8 transferGUID];
      v12 = [v10 containsObject:v11];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_10:

    if (++v7 >= [v6 count])
    {
      goto LABEL_11;
    }
  }

  v10 = [v9 transferGUID];
  v11 = [v8 transferGUID];
  v12 = [v10 isEqualToString:v11];
LABEL_9:
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
LABEL_15:

  return v7;
}

+ (void)onboardRecentlyDeletedIfNeeded:(id)a3 deviceType:(int64_t)a4 actionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 integerForKey:@"CKRecentlyDeletedOnboardingVersion"];

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [v10 BOOLForKey:@"CKRecentlyDeletedAlwaysShowOnboarding"];

  if (!v9 || (v11 & 1) != 0)
  {
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"RECENTLY_DELETED_INITIAL_DELETE_ONBOARDING_ALERT_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];

    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"RECENTLY_DELETED_INITIAL_DELETE_ONBOARDING_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16 = [CKAlertController alertControllerWithTitle:v15 message:v13 preferredStyle:1];

    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"OK" value:&stru_1F04268F8 table:@"ChatKit"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__CKUtilities_onboardRecentlyDeletedIfNeeded_deviceType_actionHandler___block_invoke;
    v20[3] = &unk_1E72EC218;
    v21 = v7;
    v19 = [CKAlertAction actionWithTitle:v18 style:0 handler:v20];
    [v16 addAction:v19];

    [v16 presentFromViewController:v6 animated:1 completion:&__block_literal_global_1800];
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __71__CKUtilities_onboardRecentlyDeletedIfNeeded_deviceType_actionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__CKUtilities_onboardRecentlyDeletedIfNeeded_deviceType_actionHandler___block_invoke_2()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 setInteger:1 forKey:@"CKRecentlyDeletedOnboardingVersion"];
}

+ (unint64_t)daysUntilJunkFilterDeletionForDate:(id)a3
{
  if (!a3)
  {
    return 90;
  }

  [a1 _daysSinceDate:?];
  return vcvtpd_u64_f64(90.0 - v3);
}

+ (double)_intervalSinceDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  return v7 - v4;
}

+ (BOOL)isIMStickerSaveable:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 stickerSavingEnabled];

  if (v5)
  {
    v6 = [v3 stickerPackGUID];
    if ([v6 containsString:*MEMORY[0x1E69A68F8]])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 containsString:*MEMORY[0x1E69A69D8]];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Saving stickers is not supported.", v10, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

+ (id)saveableStickerFromChatItem:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 stickerSavingEnabled];

  if ((v6 & 1) == 0)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Saving stickers is not supported.", buf, 2u);
    }

    goto LABEL_23;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 mediaObject];
    v8 = [v7 transfer];
    v9 = [v8 attributionInfo];
    v10 = [v9 objectForKey:*MEMORY[0x1E69A6F98]];

    if ([v10 isEqualToString:&stru_1F04268F8] && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v11 = [v7 sticker];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v7 = v4;
    v10 = [v7 mediaObject];
    v12 = [v10 transfer];
    v13 = [v12 attributionInfo];
    v14 = [v13 objectForKey:*MEMORY[0x1E69A6F98]];

    if ([v14 isEqualToString:&stru_1F04268F8])
    {
      v11 = [v7 sticker];
    }

    else
    {
      v11 = 0;
    }
  }

  if (!v11)
  {
LABEL_21:
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CKUtilities saveableStickerFromChatItem:];
    }

    goto LABEL_23;
  }

  if ([a1 isIMStickerSaveable:v11])
  {
    goto LABEL_24;
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Sticker is not saveable. (e.g. it is from a sticker pack)", v17, 2u);
  }

LABEL_23:
  v11 = 0;
LABEL_24:

  return v11;
}

+ (id)saveableStickerForMediaObject:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 stickerSavingEnabled];

  if (v6)
  {
    v7 = [v4 sticker];
    if (v7)
    {
      if ([a1 isIMStickerSaveable:v7])
      {
        v7 = v7;
        v8 = v7;
        goto LABEL_13;
      }

      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Sticker is not saveable. (e.g. it is from a sticker pack)", v11, 2u);
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CKUtilities saveableStickerForMediaObject:];
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Saving stickers is not supported.", buf, 2u);
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

+ (void)_loadUIKitGlassLegibilityFunctions
{
  if (_loadUIKitGlassLegibilityFunctions_onceToken != -1)
  {
    +[CKUtilities _loadUIKitGlassLegibilityFunctions];
  }
}

__CFBundle *__49__CKUtilities__loadUIKitGlassLegibilityFunctions__block_invoke()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.UIKit");
  if (result)
  {
    result = CFBundleGetFunctionPointerForName(result, @"UIViewGlassGetLegibilitySetting");
    CKUIViewGlassGetLegibilitySetting = result;
  }

  return result;
}

+ (int64_t)systemGlassLegibilitySetting
{
  [a1 _loadUIKitGlassLegibilityFunctions];
  result = CKUIViewGlassGetLegibilitySetting;
  if (CKUIViewGlassGetLegibilitySetting)
  {

    return (result)();
  }

  return result;
}

+ (void)quickSaveConfirmationAlertForMediaObjects:momentShareURL:popoverSource:metricsSource:cancelHandler:preSaveHandler:postSaveHandler:postAnyActionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)quickSaveConfirmationAlertForMediaObjects:momentShareURL:popoverSource:metricsSource:cancelHandler:preSaveHandler:postSaveHandler:postAnyActionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)saveableStickerFromChatItem:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)saveableStickerForMediaObject:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end