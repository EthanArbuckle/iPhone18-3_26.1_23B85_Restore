@interface IXSAppUninstallAlert
+ (id)_loadHBMCloudSyncUtilityClass;
- (BOOL)appHasInstalledFonts;
- (BOOL)appIsRemovable;
- (BOOL)needsShowFontsButton;
- (id)_customDeleteStringForMessagesApp;
- (id)appInstalledFonts;
- (id)customizedLocalizedStringForKey:(id)key;
- (id)localizedStringForKey:(id)key withFormatHint:(id)hint;
- (id)message;
- (id)optionalButtonForNotRemovableAppActionURL;
- (id)optionalButtonForNotRemovableAppLabel;
- (id)otherButtonLabel;
- (id)title;
- (int64_t)installedFontCount;
- (void)dealloc;
- (void)otherButtonActionWithCompletion:(id)completion;
@end

@implementation IXSAppUninstallAlert

- (BOOL)appIsRemovable
{
  v4.receiver = self;
  v4.super_class = IXSAppUninstallAlert;
  if ([(IXSUninstallAlert *)&v4 appIsRemovable])
  {
    return 1;
  }

  else
  {
    return [(IXSAppUninstallAlert *)self appManagedByManagedSettings];
  }
}

+ (id)_loadHBMCloudSyncUtilityClass
{
  if (qword_100121D28 != -1)
  {
    sub_10009D1D4();
  }

  v3 = qword_100121D30;

  return v3;
}

- (BOOL)appHasInstalledFonts
{
  fontFamilies = self->_fontFamilies;
  if (fontFamilies)
  {
    LOBYTE(fontFamilies) = [(NSArray *)fontFamilies count]!= 0;
  }

  return fontFamilies;
}

- (BOOL)needsShowFontsButton
{
  appHasInstalledFonts = [(IXSAppUninstallAlert *)self appHasInstalledFonts];
  if (appHasInstalledFonts)
  {
    LOBYTE(appHasInstalledFonts) = [(NSArray *)self->_fontFamilies count]> 0xA;
  }

  return appHasInstalledFonts;
}

- (int64_t)installedFontCount
{
  fontFamilies = [(IXSAppUninstallAlert *)self fontFamilies];
  v3 = [fontFamilies count];

  return v3;
}

- (id)customizedLocalizedStringForKey:(id)key
{
  keyCopy = key;
  appStringsBundle = [(IXSAppUninstallAlert *)self appStringsBundle];
  appStringsTableName = [(IXSAppUninstallAlert *)self appStringsTableName];
  v7 = appStringsTableName;
  v8 = 0;
  if (appStringsBundle)
  {
    if (appStringsTableName)
    {
      v9 = CFBundleCopyLocalizedString(appStringsBundle, keyCopy, 0, appStringsTableName);
      v8 = v9;
      if (v9 == keyCopy)
      {

        v10 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [(IXSUninstallAlert *)self bundleIdentifier];
          v13 = 136315906;
          v14 = "[IXSAppUninstallAlert customizedLocalizedStringForKey:]";
          v15 = 2112;
          v16 = keyCopy;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = bundleIdentifier;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: A value for the custom uninstall message key %@ was not found in the strings file named %@ for the current language in app %@; using default value instead", &v13, 0x2Au);
        }

        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)localizedStringForKey:(id)key withFormatHint:(id)hint
{
  keyCopy = key;
  hintCopy = hint;
  v8 = [(IXSAppUninstallAlert *)self customizedLocalizedStringForKey:keyCopy];
  if (!v8)
  {
    v10.receiver = self;
    v10.super_class = IXSAppUninstallAlert;
    v8 = [(IXSUninstallAlert *)&v10 localizedStringForKey:keyCopy withFormatHint:hintCopy];
  }

  return v8;
}

- (id)appInstalledFonts
{
  if ([(IXSAppUninstallAlert *)self appHasInstalledFonts]&& ![(IXSAppUninstallAlert *)self needsShowFontsButton])
  {
    v3 = [NSListFormatter localizedStringByJoiningStrings:self->_fontFamilies];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)title
{
  if ([(IXSUninstallAlert *)self appRemovability]== 1)
  {
    v3 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_TITLE_DELETE_WITH_NAME" withFormatHint:@"Delete “%@”?"];
    appRecord = [(IXSUninstallAlert *)self appRecord];
    localizedName = [appRecord localizedName];
    v6 = [NSString localizedStringWithFormat:v3, localizedName];
  }

  else
  {
    v6 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_TITLE_NOT_ALLOWED" withFormatHint:@"Uninstall Not Allowed"];
  }

  return v6;
}

- (id)_customDeleteStringForMessagesApp
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  bundleIdentifier = [appRecord bundleIdentifier];
  v28 = 0;
  v5 = sub_10003AF28(bundleIdentifier, 17, &v28);
  v6 = v28;

  if (!v5 || !v6)
  {
    v10 = +[IXSRemoteDeletionPromptManager sharedInstance];
    iCloudIsEnabledForMessages = [v10 iCloudIsEnabledForMessages];
    sharedMediaInMessagesCount = [v10 sharedMediaInMessagesCount];

    if (!iCloudIsEnabledForMessages)
    {
      goto LABEL_18;
    }

LABEL_6:
    if (sharedMediaInMessagesCount > 4)
    {
      if (sharedMediaInMessagesCount <= 6)
      {
        if (sharedMediaInMessagesCount == 5)
        {
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_FIVE";
          v14 = @"Five photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
        }

        else
        {
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_SIX";
          v14 = @"Six photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
        }

        goto LABEL_54;
      }

      switch(sharedMediaInMessagesCount)
      {
        case 7:
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_SEVEN";
          v14 = @"Seven photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
          goto LABEL_54;
        case 8:
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_EIGHT";
          v14 = @"Eight photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
          goto LABEL_54;
        case 9:
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_NINE";
          v14 = @"Nine photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
LABEL_54:
          sharedMediaInMessagesCount = [(IXSAppUninstallAlert *)self localizedStringForKey:v13 withFormatHint:v14];
          goto LABEL_55;
      }
    }

    else
    {
      if (sharedMediaInMessagesCount > 1)
      {
        if (sharedMediaInMessagesCount == 2)
        {
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_TWO";
          v14 = @"Two photos, videos, or other items shared with you will be deleted and no longer appear in “Photos”.";
        }

        else if (sharedMediaInMessagesCount == 3)
        {
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_THREE";
          v14 = @"Three photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
        }

        else
        {
          v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_FOUR";
          v14 = @"Four photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”.";
        }

        goto LABEL_54;
      }

      if (!sharedMediaInMessagesCount)
      {
LABEL_55:
        v22 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_FIRST" withFormatHint:@"Deleting this app will not delete your messages stored in iCloud."];
        v23 = v22;
        if (sharedMediaInMessagesCount)
        {
          v24 = [NSString stringWithFormat:@"%@\n\n%@", v22, sharedMediaInMessagesCount];
        }

        else
        {
          v24 = v22;
        }

        v21 = v24;

        goto LABEL_61;
      }

      if (sharedMediaInMessagesCount == 1)
      {
        v13 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_ONE";
        v14 = @"One photo, video, or other item shared with you will be deleted and no longer appear in “Photos”.";
        goto LABEL_54;
      }
    }

    v26 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND" withFormatHint:@"%lu photos, videos, and other items shared with you will be deleted and no longer appear in “Photos”."];
    sharedMediaInMessagesCount = [NSString stringWithFormat:v26, sharedMediaInMessagesCount];

    goto LABEL_55;
  }

  v7 = [v6 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_ICLOUD_ON_KEY"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_NUM_MEDIA_SHARED_KEY"];
  objc_opt_class();
  v16 = v15;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v9 || !v17)
  {

    goto LABEL_24;
  }

  bOOLValue = [v9 BOOLValue];
  sharedMediaInMessagesCount = [v17 unsignedIntegerValue];

  if (bOOLValue)
  {
    goto LABEL_6;
  }

LABEL_18:
  if (sharedMediaInMessagesCount <= 4)
  {
    if (sharedMediaInMessagesCount > 1)
    {
      if (sharedMediaInMessagesCount == 2)
      {
        v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_TWO";
        v20 = @"Deleting this app will also delete two photos, videos, or other items shared with you. This item will no longer appear in “Photos”.";
      }

      else if (sharedMediaInMessagesCount == 3)
      {
        v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_THREE";
        v20 = @"Deleting this app will also delete three photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
      }

      else
      {
        v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_FOUR";
        v20 = @"Deleting this app will also delete four photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
      }

      goto LABEL_60;
    }

    if (sharedMediaInMessagesCount)
    {
      if (sharedMediaInMessagesCount == 1)
      {
        v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_ONE";
        v20 = @"Deleting this app will also delete one photo, video, or other item shared with you. This item will no longer appear in “Photos”.";
        goto LABEL_60;
      }

      goto LABEL_65;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_61;
  }

  if (sharedMediaInMessagesCount <= 6)
  {
    if (sharedMediaInMessagesCount == 5)
    {
      v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_FIVE";
      v20 = @"Deleting this app will also delete five photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
    }

    else
    {
      v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_SIX";
      v20 = @"Deleting this app will also delete six photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
    }

    goto LABEL_60;
  }

  switch(sharedMediaInMessagesCount)
  {
    case 7:
      v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_SEVEN";
      v20 = @"Deleting this app will also delete seven photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
      goto LABEL_60;
    case 8:
      v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_EIGHT";
      v20 = @"Deleting this app will also delete eight photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
      goto LABEL_60;
    case 9:
      v19 = @"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD_NINE";
      v20 = @"Deleting this app will also delete nine photos, videos, and other items shared with you. This item will no longer appear in “Photos”.";
LABEL_60:
      v21 = [(IXSAppUninstallAlert *)self localizedStringForKey:v19 withFormatHint:v20];
      goto LABEL_61;
  }

LABEL_65:
  v27 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_MESSAGES_SECOND_WITHOUT_ICLOUD" withFormatHint:@"Deleting this app will also delete %lu photos, videos, and other items shared with you. These items will no longer appear in “Photos”."];
  v21 = [NSString localizedStringWithFormat:v27, sharedMediaInMessagesCount];

LABEL_61:

  return v21;
}

- (id)message
{
  if (![(IXSAppUninstallAlert *)self appIsRemovable])
  {
    v25 = 0;
    v5 = [(IXSUninstallAlert *)self isMDMRestrictedWithOrganizationName:&v25];
    v6 = v25;
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        appRecord = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_RESTRICTED_BY_ORGANIZATION" withFormatHint:@"This app cannot be deleted because it is required by %@."];
        [NSString localizedStringWithFormat:appRecord, v7];
        v9 = LABEL_7:;
LABEL_11:

LABEL_19:
        goto LABEL_20;
      }

      v11 = @"UNINSTALL_ICON_BODY_RESTRICTED_BY_UNKNOWN_ORGANIZATION";
      v12 = @"This app cannot be deleted because it is required.";
    }

    else
    {
      v11 = @"UNINSTALL_ICON_BODY_NOT_ALLOWED";
      v12 = @"It is not possible to uninstall this app at this time.";
    }

    v9 = [(IXSAppUninstallAlert *)self localizedStringForKey:v11 withFormatHint:v12];
    goto LABEL_19;
  }

  if ([(IXSAppUninstallAlert *)self appManagedByManagedSettings])
  {
    v3 = @"UNINSTALL_ICON_BODY_DELETE_APP_ENROLLED_IN_FAMILY_CONTROLS_WITH_NAME";
    v4 = @"“%@” is managing restrictions on this device, and deleting the app will require parent or guardian approval.";
LABEL_10:
    v7 = [(IXSAppUninstallAlert *)self localizedStringForKey:v3 withFormatHint:v4];
    appRecord = [(IXSUninstallAlert *)self appRecord];
    localizedName = [appRecord localizedName];
    v9 = [NSString localizedStringWithFormat:v7, localizedName];

    goto LABEL_11;
  }

  if ([(IXSAppUninstallAlert *)self deviceHasOneHomeEnabled])
  {
    v3 = @"UNINSTALL_ONE_HOME_ICON_BODY_DELETE_WITH_NAME";
    v4 = @"When you delete the “%@” app, you’ll delete it from any other Apple TVs with this default user. You will also delete all of its data.";
    goto LABEL_10;
  }

  installedFontCount = [(IXSAppUninstallAlert *)self installedFontCount];
  appRecord2 = [(IXSUninstallAlert *)self appRecord];
  bundleIdentifier = [appRecord2 bundleIdentifier];
  if (([bundleIdentifier isEqualToString:@"com.apple.MobileSMS"] & 1) == 0)
  {

    goto LABEL_24;
  }

  v16 = +[IXGlobalConfiguration sharedInstance];
  isiPad = [v16 isiPad];

  if (!isiPad || ([(IXSAppUninstallAlert *)self _customDeleteStringForMessagesApp], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_24:
    appHasiCloudDataOrDocuments = [(IXSUninstallAlert *)self appHasiCloudDataOrDocuments];
    needsShowFontsButton = [(IXSAppUninstallAlert *)self needsShowFontsButton];
    if (appHasiCloudDataOrDocuments)
    {
      if (needsShowFontsButton)
      {
        v21 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_AND_MANY_FONTS_LEAVES_DOCUMENTS_IN_CLOUD" withFormatHint:@"Deleting this app will also delete its data and %ld installed fonts, but any documents or data stored in iCloud will not be deleted."];
        [NSString localizedStringWithFormat:v21, installedFontCount];
        v9 = LABEL_33:;

        goto LABEL_20;
      }

      if (installedFontCount == 1)
      {
        v22 = @"UNINSTALL_ICON_BODY_DELETE_DATA_AND_FONTS_LEAVES_DOCUMENTS_IN_CLOUD_SINGULAR";
        v23 = @"Deleting this app will also delete its data and the installed font %@, but any documents or data stored in iCloud will not be deleted.";
      }

      else
      {
        if (!installedFontCount)
        {
          v21 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_LEAVES_DOCUMENTS_IN_CLOUD" withFormatHint:@"Deleting this app will also delete its data, but any documents or data stored in iCloud will not be deleted."];
          goto LABEL_32;
        }

        v22 = @"UNINSTALL_ICON_BODY_DELETE_DATA_AND_FONTS_LEAVES_DOCUMENTS_IN_CLOUD_PLURAL";
        v23 = @"Deleting this app will also delete its data and the installed fonts %@, but any documents or data stored in iCloud will not be deleted.";
      }

      goto LABEL_41;
    }

    if (needsShowFontsButton)
    {
      v21 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA_AND_MANY_FONTS" withFormatHint:@"Deleting this app will also delete its data and %ld installed fonts."];
      v24 = installedFontCount;
LABEL_32:
      [NSString localizedStringWithFormat:v21, v24];
      goto LABEL_33;
    }

    if (installedFontCount == 1)
    {
      v22 = @"UNINSTALL_ICON_BODY_DELETE_DATA_AND_FONTS_SINGULAR";
      v23 = @"Deleting this app will also delete its data and the following installed font: %@.";
    }

    else
    {
      if (!installedFontCount)
      {
        v9 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_BODY_DELETE_DATA" withFormatHint:@"Deleting this app will also delete its data."];
        goto LABEL_20;
      }

      v22 = @"UNINSTALL_ICON_BODY_DELETE_DATA_AND_FONTS_PLURAL";
      v23 = @"Deleting this app will also delete its data and the following installed fonts: %@.";
    }

LABEL_41:
    v7 = [(IXSAppUninstallAlert *)self localizedStringForKey:v22 withFormatHint:v23];
    appRecord = [(IXSAppUninstallAlert *)self appInstalledFonts];
    [NSString localizedStringWithFormat:v7, appRecord];
    goto LABEL_7;
  }

LABEL_20:

  return v9;
}

- (id)otherButtonLabel
{
  if ([(IXSAppUninstallAlert *)self needsShowFontsButton])
  {
    v3 = @"UNINSTALL_ICON_BUTTON_FONTS";
    v4 = @"Show Installed Fonts";
LABEL_5:
    v5 = [(IXSAppUninstallAlert *)self localizedStringForKey:v3 withFormatHint:v4];
    goto LABEL_7;
  }

  if ([(IXSUninstallAlert *)self needsDemoteOptionButton])
  {
    v3 = @"UNINSTALL_ICON_BUTTON_OFFLOAD";
    v4 = @"Offload";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)optionalButtonForNotRemovableAppLabel
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  bundleIdentifier = [appRecord bundleIdentifier];
  v10 = 0;
  v5 = sub_10003AF28(bundleIdentifier, 14, &v10);
  v6 = v10;

  if (v5)
  {
    v7 = [v6 objectForKeyedSubscript:@"UNINSTALL_ICON_OPTION_BUTTON_NOT_ALLOWED"];
  }

  else
  {
    if ([(IXSAppUninstallAlert *)self appIsRemovable])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(IXSAppUninstallAlert *)self localizedStringForKey:@"UNINSTALL_ICON_OPTION_BUTTON_NOT_ALLOWED" withFormatHint:0];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (id)optionalButtonForNotRemovableAppActionURL
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  bundleIdentifier = [appRecord bundleIdentifier];
  v12 = 0;
  v5 = sub_10003AF28(bundleIdentifier, 14, &v12);
  v6 = v12;

  if (v5)
  {
    v7 = [v6 objectForKeyedSubscript:@"SBUninstallIconOverrideNotAllowedButtonURL"];
    objc_opt_class();
    infoDictionary = v7;
    if (objc_opt_isKindOfClass())
    {
      v9 = infoDictionary;
    }

    else
    {
      v9 = 0;
    }

    appRecord2 = infoDictionary;
  }

  else
  {
    appRecord2 = [(IXSUninstallAlert *)self appRecord];
    infoDictionary = [appRecord2 infoDictionary];
    v9 = [infoDictionary objectForKey:@"SBUninstallIconOverrideNotAllowedButtonURL" ofClass:objc_opt_class()];
  }

  return v9;
}

- (void)otherButtonActionWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(IXSAppUninstallAlert *)self needsShowFontsButton])
  {
    bundleIdentifier = [(IXSUninstallAlert *)self bundleIdentifier];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100035E98;
    v7[3] = &unk_100101F50;
    v8 = completionCopy;
    [FSUserFontManager deleteAppDialogWithIdentifier:bundleIdentifier completionHandler:v7];
  }

  else if ([(IXSUninstallAlert *)self needsDemoteOptionButton])
  {
    (*(completionCopy + 2))(completionCopy, 5, 0);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10009D1E8(self, v6);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)dealloc
{
  appStringsBundle = self->_appStringsBundle;
  if (appStringsBundle)
  {
    CFRelease(appStringsBundle);
  }

  self->_appStringsBundle = 0;
  v4.receiver = self;
  v4.super_class = IXSAppUninstallAlert;
  [(IXSUninstallAlert *)&v4 dealloc];
}

@end