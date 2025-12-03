@interface MPUPlaybackAlertController
+ (id)contentRestrictedPlaybackAlertControllerForContentType:(int64_t)type dismissalBlock:(id)block;
+ (id)genericAlertControllerForItem:(id)item error:(id)error dismissalBlock:(id)block;
+ (id)playbackAlertControllerForItem:(id)item contentType:(int64_t)type error:(id)error dismissalBlock:(id)block;
+ (id)userRemovedAlertControllerForItem:(id)item dismissalBlock:(id)block;
+ (int64_t)playbackAlertTypeForError:(id)error;
@end

@implementation MPUPlaybackAlertController

+ (id)contentRestrictedPlaybackAlertControllerForContentType:(int64_t)type dismissalBlock:(id)block
{
  blockCopy = block;
  mEMORY[0x277CD6040] = [MEMORY[0x277CD6040] sharedRestrictionsMonitor];
  hasRestrictionsPasscode = [mEMORY[0x277CD6040] hasRestrictionsPasscode];

  v8 = MPULocalizedString();
  v9 = MPULocalizedString();
  v10 = [self alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = MPULocalizedString();
  if (hasRestrictionsPasscode)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke;
    v25[3] = &unk_2798A3178;
    v13 = &v26;
    v26 = blockCopy;
    v14 = v25;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_2;
    v23[3] = &unk_2798A3178;
    v13 = &v24;
    v24 = blockCopy;
    v14 = v23;
  }

  v15 = [v11 actionWithTitle:v12 style:0 handler:v14];
  [v10 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = MPULocalizedString();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_3;
  v21[3] = &unk_2798A3178;
  v22 = blockCopy;
  v18 = blockCopy;
  v19 = [v16 actionWithTitle:v17 style:0 handler:v21];
  [v10 addAction:v19];

  return v10;
}

uint64_t __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke(uint64_t a1)
{
  v2 = [getLSApplicationWorkspaceClass() defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=RESTRICTIONS"];
  [v2 openSensitiveURL:v3 withOptions:0];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getMCProfileConnectionClass_softClass;
  v20 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getMCProfileConnectionClass_block_invoke;
    v15 = &unk_2798A3268;
    v16 = &v17;
    __getMCProfileConnectionClass_block_invoke(&v12);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 sharedConnection];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v7 = getMCFeatureExplicitContentAllowedSymbolLoc_ptr;
  v20 = getMCFeatureExplicitContentAllowedSymbolLoc_ptr;
  if (!getMCFeatureExplicitContentAllowedSymbolLoc_ptr)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getMCFeatureExplicitContentAllowedSymbolLoc_block_invoke;
    v15 = &unk_2798A3268;
    v16 = &v17;
    v8 = ManagedConfigurationLibrary();
    v9 = dlsym(v8, "MCFeatureExplicitContentAllowed");
    *(v16[1] + 24) = v9;
    getMCFeatureExplicitContentAllowedSymbolLoc_ptr = *(v16[1] + 24);
    v7 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v7)
  {
    v11 = __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_2_cold_1();
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v11);
  }

  [v6 setBoolValue:1 forSetting:*v7];

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

uint64_t __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)playbackAlertControllerForItem:(id)item contentType:(int64_t)type error:(id)error dismissalBlock:(id)block
{
  itemCopy = item;
  errorCopy = error;
  blockCopy = block;
  v13 = [self playbackAlertTypeForError:errorCopy];
  v14 = v13;
  if (v13 == 1)
  {
LABEL_4:
    v15 = [self genericAlertControllerForItem:itemCopy error:errorCopy dismissalBlock:blockCopy];
    goto LABEL_6;
  }

  if (v13 != 4)
  {
    if (v13 != 3)
    {
      v16 = 0;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v15 = [self userRemovedAlertControllerForItem:itemCopy dismissalBlock:blockCopy];
LABEL_6:
  v16 = v15;
  if (v15)
  {
    *(v15 + 1328) = v14;
    objc_storeStrong((v15 + 1336), item);
    objc_storeStrong(v16 + 168, error);
  }

LABEL_9:

  return v16;
}

+ (int64_t)playbackAlertTypeForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  [errorCopy code];
  v5 = errorCopy;
  v6 = v5;
  if (v5 && ([v5 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CE5DC0]), v7, v8) && (objc_msgSend(v6, "userInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", *MEMORY[0x277CCA7E8]), v10 = objc_claimAutoreleasedReturnValue(), v9, v11 = objc_msgSend(v10, "code"), v10) && (v12 = v11, objc_msgSend(v10, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CCA590]), v13, v10, v14) && (v12 + 42597) < 3)
  {

    v15 = 4;
  }

  else
  {
    v15 = v6 != 0;
  }

  return v15;
}

+ (id)genericAlertControllerForItem:(id)item error:(id)error dismissalBlock:(id)block
{
  v104[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  blockCopy = block;
  v84 = errorCopy;
  domain = [errorCopy domain];
  v82 = *MEMORY[0x277CE5DC0];
  if ([domain isEqualToString:?])
  {
    code = [errorCopy code];

    if (code == -11819)
    {
      v10 = 0;
      goto LABEL_75;
    }
  }

  else
  {
  }

  v11 = v84;
  v12 = v11;
  if (!v11)
  {
    v18 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = *MEMORY[0x277CD5638];
  v15 = *MEMORY[0x277CCA7E8];
  v16 = v11;
  while (![v13 count])
  {
    userInfo = [v16 userInfo];
    v18 = [userInfo objectForKey:v14];

    if ([v18 count])
    {

      if (v18)
      {
        goto LABEL_16;
      }

LABEL_22:
      v76 = 0;
      goto LABEL_23;
    }

    v19 = [userInfo objectForKey:v15];

    v16 = v19;
    v13 = v18;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v18 = v13;
LABEL_13:
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_16:
  v100 = 0;
  v101 = &v100;
  v102 = 0x2050000000;
  v20 = getISDialogClass_softClass;
  v103 = getISDialogClass_softClass;
  if (!getISDialogClass_softClass)
  {
    v95 = MEMORY[0x277D85DD0];
    v96 = 3221225472;
    v97 = __getISDialogClass_block_invoke;
    v98 = &unk_2798A3268;
    v99 = &v100;
    __getISDialogClass_block_invoke(&v95);
    v20 = v101[3];
  }

  v21 = v20;
  _Block_object_dispose(&v100, 8);
  v22 = [[v20 alloc] initWithDialogDictionary:v18];
  v76 = v22;
  if (!v22)
  {
    goto LABEL_22;
  }

  if (![v22 isDisplayable] || objc_msgSend(v76, "kind"))
  {
LABEL_23:
    v30 = v16;
    v16 = v12;

    if ([0 length])
    {
      v83 = 0;
      v31 = 0;
      v28 = 0;
LABEL_68:
      if ([v31 length] || objc_msgSend(v28, "length"))
      {
        v10 = [self alertControllerWithTitle:v28 message:v31 preferredStyle:1];
        v60 = MEMORY[0x277D750F8];
        v61 = MPULocalizedString();
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_3;
        v87[3] = &unk_2798A3178;
        v88 = blockCopy;
        v62 = [v60 actionWithTitle:v61 style:1 handler:v87];
        [v10 addAction:v62];

        userInfo2 = [v83 userInfo];
        v64 = [userInfo2 objectForKey:*MEMORY[0x277CD5620]];
        if ([v64 length])
        {
          v65 = [userInfo2 objectForKey:*MEMORY[0x277CD5618]];
          v66 = MEMORY[0x277D750F8];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_4;
          v85[3] = &unk_2798A31F0;
          v86 = v65;
          v67 = v65;
          v68 = [v66 actionWithTitle:v64 style:0 handler:v85];
          [v10 addAction:v68];
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_74;
    }

    v28 = 0;
    v31 = 0;
    v70 = &v97;
    v81 = *MEMORY[0x277CCA738];
    v78 = *MEMORY[0x277CD5630];
    v73 = *MEMORY[0x277CCA450];
    v77 = *MEMORY[0x277CD5628];
    v72 = *MEMORY[0x277CCA470];
    v32 = *MEMORY[0x277CCA7E8];
    v74 = *MEMORY[0x277CCA590];
    while (1)
    {
      if ([v31 length] || !v16)
      {
        v83 = 0;
        goto LABEL_68;
      }

      userInfo3 = [v16 userInfo];
      domain2 = [v16 domain];
      if ([domain2 isEqualToString:v81])
      {
        v35 = [v16 code] == -1;

        if (v35)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }

      mediaLibrary = [userInfo3 objectForKey:v78];

      if (![mediaLibrary length])
      {
        v37 = [userInfo3 objectForKey:v73];

        mediaLibrary = v37;
      }

      v38 = [userInfo3 objectForKey:v77];

      if (![v38 length])
      {
        v39 = [userInfo3 objectForKey:v72];

        v38 = v39;
      }

      domain3 = [v16 domain];
      v41 = [domain3 isEqualToString:v82];

      if (v41)
      {
        break;
      }

      v31 = v38;
      v28 = mediaLibrary;
LABEL_50:
      if ([v31 length] || objc_msgSend(v28, "length"))
      {
        v16 = v16;

        v83 = v16;
        goto LABEL_68;
      }

LABEL_52:
      v55 = [userInfo3 objectForKey:v32];

      v16 = v55;
      if ([v28 length])
      {
        v83 = 0;
        v16 = v55;
        goto LABEL_68;
      }
    }

    v42 = [userInfo3 objectForKey:v32];
    domain4 = [v42 domain];
    v44 = [domain4 isEqualToString:v74];

    if (v44)
    {
      code2 = [v42 code];
      if ((code2 + 42590) <= 6)
      {
        if ([itemCopy usesSubscriptionLease])
        {
          if (code2 == -42584)
          {
            v28 = MPULocalizedString();

            v46 = MEMORY[0x277CCACA8];
            v47 = MPULocalizedString();
            mainTitle = [itemCopy mainTitle];
            v31 = [v46 localizedStringWithFormat:v47, mainTitle, v70];

            mediaItem = [itemCopy mediaItem];
            if (!mediaItem)
            {
LABEL_61:

              goto LABEL_49;
            }

            mediaItem2 = [itemCopy mediaItem];
            mediaLibrary = [mediaItem2 mediaLibrary];

            v104[0] = mediaItem;
            v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:1];
            [mediaLibrary removeItems:v50];

LABEL_43:
            goto LABEL_61;
          }

          v100 = 0;
          v101 = &v100;
          v102 = 0x2050000000;
          v51 = getICEnvironmentMonitorClass_softClass;
          v103 = getICEnvironmentMonitorClass_softClass;
          if (!getICEnvironmentMonitorClass_softClass)
          {
            v95 = MEMORY[0x277D85DD0];
            v96 = 3221225472;
            v97 = __getICEnvironmentMonitorClass_block_invoke;
            v98 = &unk_2798A3268;
            v99 = &v100;
            __getICEnvironmentMonitorClass_block_invoke(&v95);
            v51 = v101[3];
          }

          v52 = v51;
          _Block_object_dispose(&v100, 8);
          sharedMonitor = [v51 sharedMonitor];
          v54 = [sharedMonitor networkType] == 0;

          if (v54)
          {
            if ([itemCopy isAssetLoaded])
            {
              mediaItem = [itemCopy asset];
            }

            else
            {
              mediaItem = 0;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([mediaItem URL], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isFileURL"), v56, !v57))
            {
              v31 = v38;
              v28 = mediaLibrary;
              goto LABEL_61;
            }

            MGGetBoolAnswer();
            MGGetBoolAnswer();
            [itemCopy type];
            v31 = MPULocalizedString();

            if (code2 == -42587)
            {
              v28 = MPULocalizedString();
            }

            else
            {
              [itemCopy type];
              v28 = MPULocalizedString();

              mEMORY[0x277CD5D88] = [MEMORY[0x277CD5D88] sharedController];
              isCloudLibraryEnabled = [mEMORY[0x277CD5D88] isCloudLibraryEnabled];

              if (!isCloudLibraryEnabled)
              {
                goto LABEL_61;
              }

              MPULocalizedString();
              v31 = mediaLibrary = v31;
            }

            goto LABEL_43;
          }
        }
      }
    }

    v31 = v38;
    v28 = mediaLibrary;
LABEL_49:

    goto LABEL_50;
  }

  title = [v76 title];
  message = [v76 message];
  v25 = [self alertControllerWithTitle:title message:message preferredStyle:1];

  buttons = [v76 buttons];
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  LOBYTE(v98) = 0;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke;
  v89[3] = &unk_2798A31C8;
  v94 = &v95;
  v76 = v76;
  v90 = v76;
  v93 = blockCopy;
  v27 = v25;
  v91 = v27;
  v28 = buttons;
  v92 = v28;
  [v28 enumerateObjectsUsingBlock:v89];
  v29 = v92;
  v10 = v27;

  _Block_object_dispose(&v95, 8);
LABEL_74:

LABEL_75:

  return v10;
}

void __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 actionType];
  if (v6 || (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v7 = MEMORY[0x277D750F8];
    v8 = [v5 title];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_2;
    v11[3] = &unk_2798A31A0;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v9 = [v7 actionWithTitle:v8 style:v6 == 0 handler:v11];

    [*(a1 + 40) addAction:v9];
    if (([*(a1 + 32) noDefaultButton] & 1) == 0)
    {
      v10 = [*(a1 + 32) defaultButtonIndex];
      if ((~v10 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v10 = [*(a1 + 48) count] - 1;
      }

      if (v10 == a3)
      {
        [*(a1 + 40) setPreferredAction:v9];
      }
    }

    if (!v6)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }
}

uint64_t __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performDefaultActionForDialog:*(a1 + 40)];
  [*(a1 + 40) incrementDisplayCount];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__MPUPlaybackAlertController_genericAlertControllerForItem_error_dismissalBlock___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = [MEMORY[0x277CBEBC0] URLWithString:?];
    if (v1)
    {
      v3 = v1;
      v2 = [getLSApplicationWorkspaceClass() defaultWorkspace];
      [v2 openSensitiveURL:v3 withOptions:0];

      v1 = v3;
    }
  }
}

+ (id)userRemovedAlertControllerForItem:(id)item dismissalBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  mediaItem = [itemCopy mediaItem];
  mediaLibrary = [mediaItem mediaLibrary];
  deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];

  if (mediaLibrary == deviceMediaLibrary)
  {
    if (mediaItem)
    {
      mediaType = [mediaItem mediaType];
    }

    else if ([itemCopy type] == 2)
    {
      mediaType = -256;
    }

    else
    {
      mediaType = 255;
    }

    v13 = [mediaItem valueForProperty:*MEMORY[0x277CD5888]];
    longLongValue = [v13 longLongValue];

    v57 = blockCopy;
    v54 = mediaType;
    if ((mediaType & 0x800) != 0)
    {
      v15 = @"MUSIC_VIDEO";
    }

    else if ((mediaType & 0x402) != 0)
    {
      v15 = @"PODCAST";
    }

    else if ((mediaType & 0x200) != 0)
    {
      v15 = @"EPISODE";
    }

    else if ((mediaType & 0x100) != 0)
    {
      v15 = @"MOVIE";
    }

    else if ((mediaType & 4) != 0)
    {
      v15 = @"AUDIOBOOK";
    }

    else if (mediaType)
    {
      v15 = @"SONG";
    }

    else if ((mediaType & 0xF000) != 0)
    {
      v15 = @"VIDEO";
    }

    else
    {
      v15 = @"TRACK";
    }

    v16 = @"REBUY";
    if (!longLongValue)
    {
      v16 = @"NOT_AVAILABLE";
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = v16;
    v19 = [v17 stringWithFormat:@"USER_REMOVED_ALERT_%@_TITLE_%@", v18, v15];
    v20 = MPULocalizedString();

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"USER_REMOVED_ALERT_%@_MESSAGE_%@", v18, v15];

    v22 = MPULocalizedString();

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"USER_REMOVED_ALERT_DELETE_BUTTON_%@", v15];
    v24 = MPULocalizedString();

    v55 = v22;
    v56 = v20;
    v11 = [self alertControllerWithTitle:v20 message:v22 preferredStyle:1];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke;
    v69[3] = &unk_2798A3218;
    v70 = mediaItem;
    v25 = v57;
    v71 = v25;
    v26 = MEMORY[0x259C88CF0](v69);
    v27 = MEMORY[0x277D750F8];
    if (longLongValue)
    {
      v28 = MPULocalizedString();
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_2;
      v67[3] = &unk_2798A3178;
      v52 = v25;
      v68 = v52;
      v29 = [v27 actionWithTitle:v28 style:1 handler:v67];
      [v11 addAction:v29];

      v30 = MEMORY[0x277D750F8];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_3;
      v65[3] = &unk_2798A3178;
      v53 = v26;
      v66 = v26;
      v31 = [v30 actionWithTitle:v24 style:2 handler:v65];
      [v11 addAction:v31];

      storeItemID = [itemCopy storeItemID];
      if (!storeItemID || ([MEMORY[0x277CCACA8] stringWithFormat:@"itms://?action=lookup&ids=%@", storeItemID, 0], (v33 = objc_claimAutoreleasedReturnValue()) == 0) || (v34 = v33, objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v33), v35 = objc_claimAutoreleasedReturnValue(), v34, !v35))
      {
        if ((v54 & 4) != 0)
        {
          v36 = @"audiobooks";
        }

        else if ((v54 & 0x1008) != 0)
        {
          v36 = @"itunes-u";
        }

        else
        {
          if ((v54 & 0x100) != 0)
          {
            v36 = @"movies";
          }

          else
          {
            v36 = @"music-videos";
          }

          if ((v54 & 0x900) == 0)
          {
            if ((v54 & 0x402) != 0)
            {
              v36 = @"podcasts";
            }

            else if ((v54 & 0x200) != 0)
            {
              v36 = @"tv-shows";
            }

            else if ((v54 & 0xE000) != 0)
            {
              v36 = @"movie";
            }

            else
            {
              v36 = @"music";
            }
          }
        }

        v42 = MEMORY[0x277CBEBC0];
        v43 = MEMORY[0x277CCACA8];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v46 = [v43 stringWithFormat:@"itms://?action=%@&libraryid=%@", v36, bundleIdentifier];
        v35 = [v42 URLWithString:v46];
      }

      v47 = MEMORY[0x277D750F8];
      v48 = MPULocalizedString();
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_4;
      v62[3] = &unk_2798A3240;
      v63 = v35;
      v64 = v52;
      v49 = v35;
      v50 = [v47 actionWithTitle:v48 style:0 handler:v62];
      [v11 addAction:v50];

      v38 = &v68;
      v26 = v53;
      v41 = &v66;
    }

    else
    {
      v37 = MPULocalizedString();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_5;
      v60[3] = &unk_2798A3178;
      v38 = &v61;
      v61 = v25;
      v39 = [v27 actionWithTitle:v37 style:1 handler:v60];
      [v11 addAction:v39];

      v40 = MEMORY[0x277D750F8];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_6;
      v58[3] = &unk_2798A3178;
      v41 = &v59;
      v59 = v26;
      storeItemID = [v40 actionWithTitle:v24 style:2 handler:v58];
      [v11 addAction:storeItemID];
    }

    blockCopy = v57;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mediaLibrary];
    v6[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 removeItems:v4];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __79__MPUPlaybackAlertController_userRemovedAlertControllerForItem_dismissalBlock___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __100__MPUPlaybackAlertController_contentRestrictedPlaybackAlertControllerForContentType_dismissalBlock___block_invoke_2_cold_1()
{
  dlerror();
  abort_report_np();
  return __getLSApplicationWorkspaceClass_block_invoke_cold_1();
}

@end