@interface _IMBalloonExtensionApp
- (BOOL)isBetaPlugin;
- (BOOL)isEnabled;
- (BOOL)isLaunchProhibited;
- (BOOL)isPreDawnAndAppStoreStickerGenre;
- (BOOL)isStickerPackOnly;
- (BOOL)linkedBeforeSDKVersion:(id)a3;
- (BOOL)shouldDelayViewControllerPresentation;
- (BOOL)shouldForceIntoSendMenu;
- (BOOL)showInBrowser;
- (BOOL)showInSendMenu;
- (BOOL)showableInBrowser;
- (_IMBalloonExtensionApp)initWithPluginBundle:(id)a3 extension:(id)a4;
- (_IMBalloonExtensionApp)initWithPluginBundle:(id)a3 extension:(id)a4 pluginKitProxyClass:(Class)a5 proxy:(id)a6;
- (double)presentationDelay;
- (id)_bundleIDToPresentationDelayMapping;
- (id)_bundleIDsForDawnSendMenuTemporaryDisplayOverride;
- (id)_bundleIDsForDelayedPresentationOptIn;
- (id)appStoreGenre;
- (id)appStoreGenreID;
- (id)appStoreSubgenres;
- (id)applicationType;
- (id)itemID;
- (id)plugin;
- (id)version;
@end

@implementation _IMBalloonExtensionApp

- (BOOL)isStickerPackOnly
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v5 = v3;
  v10 = 0;
  if (v3)
  {
    v6 = objc_msgSend_objectForInfoDictionaryKey_ofClass_(v3, v4, @"LSApplicationIsStickerProvider", 0);
    v9 = objc_msgSend_BOOLValue(v6, v7, v8);

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)isPreDawnAndAppStoreStickerGenre
{
  v4 = objc_msgSend_linkedBeforeDawn(self, a2, v2);
  v7 = objc_msgSend_appStoreGenreID(self, v5, v6);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v7, v8, &unk_1F1BA1818);

  v12 = objc_msgSend_appStoreGenre(self, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"Stickers");

  v17 = objc_msgSend_appStoreSubgenres(self, v15, v16);
  v19 = objc_msgSend_containsObject_(v17, v18, @"Stickers");

  if (isEqualToNumber & 1 | ((v4 & 1) == 0))
  {
    v20 = v4;
  }

  else
  {
    v20 = isEqualToString | v19;
  }

  return v20 & 1;
}

- (id)appStoreGenreID
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v6 = objc_msgSend_containingBundle(v3, v4, v5);

  v9 = objc_msgSend_genreID(v6, v7, v8);

  return v9;
}

- (id)appStoreGenre
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v6 = objc_msgSend_containingBundle(v3, v4, v5);

  v9 = objc_msgSend_genre(v6, v7, v8);

  return v9;
}

- (id)appStoreSubgenres
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v6 = objc_msgSend_containingBundle(v3, v4, v5);

  v9 = objc_msgSend_subgenres(v6, v7, v8);

  return v9;
}

- (BOOL)shouldForceIntoSendMenu
{
  v4 = objc_msgSend_extension(self, a2, v2);
  v7 = objc_msgSend_infoDictionary(v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x1E695E4F0]);
  if (v11 && objc_msgSend_linkedBeforeDawn(self, v9, v10))
  {
    v14 = objc_msgSend__bundleIDsForDawnSendMenuTemporaryDisplayOverride(self, v12, v13);
    v16 = objc_msgSend_containsObject_(v14, v15, v11);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEnabled
{
  v4 = objc_msgSend_plugin(self, a2, v2);
  v7 = objc_msgSend_userElection(v4, v5, v6) & 0xFE;

  if (!v7)
  {
    return 1;
  }

  v10 = objc_msgSend_applicationType(self, v8, v9);
  v12 = sub_1A84E8A54(v11);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, **(v13 + 1448), v12);

  if (isEqualToString)
  {
    v19 = objc_msgSend_plugin(self, v17, v18);
    objc_msgSend_setUserElection_(v19, v20, 0);

    objc_msgSend_setIsEnabledUnremovableApp_(self, v21, 0);
    return 1;
  }

  return 0;
}

- (id)plugin
{
  v3 = objc_msgSend_extension(self, a2, v2);
  v6 = objc_msgSend__plugIn(v3, v4, v5);

  return v6;
}

- (_IMBalloonExtensionApp)initWithPluginBundle:(id)a3 extension:(id)a4
{
  v6 = qword_1ED767688;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    sub_1A84E1DF8();
  }

  v9 = qword_1ED767690;
  v10 = qword_1ED767690;
  v12 = objc_msgSend_initWithPluginBundle_extension_pluginKitProxyClass_proxy_(self, v11, v8, v7, v9, 0);

  return v12;
}

- (_IMBalloonExtensionApp)initWithPluginBundle:(id)a3 extension:(id)a4 pluginKitProxyClass:(Class)a5 proxy:(id)a6
{
  v174 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v15 = v12;
  if (v11 && !v12)
  {
    v16 = objc_msgSend_identifier(v11, v13, v14);
    v15 = objc_msgSend_pluginKitProxyForIdentifier_(a5, v17, v16);
  }

  v18 = objc_msgSend_containingBundle(v15, v13, v14);
  v168.receiver = self;
  v168.super_class = _IMBalloonExtensionApp;
  v19 = [(IMBalloonApp *)&v168 initWithPluginBundle:v10 appBundle:v18];

  if (v19)
  {
    objc_storeStrong(&v19->_extension, a4);
    objc_storeStrong(&v19->_proxy, v15);
    v22 = objc_msgSend_bundleIdentifier(v15, v20, v21);
    v25 = objc_msgSend_infoDictionary(v11, v23, v24);
    v27 = objc_msgSend_objectForKey_(v25, v26, @"NSExtension");
    v29 = objc_msgSend_objectForKey_(v27, v28, @"MSMessagePayloadProviderIdentifier");

    if (objc_msgSend_length(v29, v30, v31))
    {
      v34 = v29;

      v22 = v34;
    }

    v35 = objc_msgSend_teamID(v15, v32, v33);
    v38 = v35;
    if (v35)
    {
      v39 = v35;
    }

    else
    {
      v40 = objc_msgSend_containingBundle(v15, v36, v37);
      v43 = objc_msgSend_teamID(v40, v41, v42);
      v44 = v43;
      v45 = @"0000000000";
      if (v43)
      {
        v45 = v43;
      }

      v39 = v45;
    }

    v48 = objc_msgSend_bundleIdentifier(v10, v46, v47);
    v50 = objc_msgSend_stringByAppendingFormat_(v48, v49, @":%@:%@", v39, v22);

    objc_msgSend_setIdentifier_(v19, v51, v50);
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = sub_1A83545B8;
    v166[3] = &unk_1E7813400;
    v52 = v50;
    v167 = v52;
    objc_msgSend_setRequestInterruptionBlock_(v11, v53, v166);
    v56 = objc_msgSend_localizedName(v15, v54, v55);
    v59 = objc_msgSend_length(v56, v57, v58);

    if (v59)
    {
      v62 = objc_msgSend_localizedName(v15, v60, v61);
    }

    else
    {
      v64 = objc_msgSend_localizedShortName(v15, v60, v61);
      v67 = objc_msgSend_length(v64, v65, v66);

      if (!v67)
      {
LABEL_17:
        v165 = v39;
        v71 = objc_msgSend_browserDisplayName(v19, v68, v69);
        v74 = objc_msgSend_length(v71, v72, v73);

        if (!v74)
        {
          v171 = xmmword_1E7813420;
          v172 = *off_1E7813430;
          v173 = 150;
          v75 = MEMORY[0x1E696AEC0];
          v76 = IMFileLocationTrimFileName();
          v77 = v173;
          v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78, &stru_1F1B76F98);
          v81 = objc_msgSend_stringWithFormat_(v75, v80, @"Unexpected false '%@' in %s at %s:%d. %@", @"[self.browserDisplayName length] > 0", "[_IMBalloonExtensionApp initWithPluginBundle:extension:pluginKitProxyClass:proxy:]", v76, v77, v79);

          v82 = IMGetAssertionFailureHandler();
          if (v82)
          {
            v82(v81);
          }

          else
          {
            v85 = objc_msgSend_warning(MEMORY[0x1E69A6138], v83, v84);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              sub_1A84DF284(v81, v85);
            }
          }
        }

        v86 = objc_opt_class();
        v88 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v87, @"MSHideInAppDrawer", v86, 2);
        v91 = objc_msgSend_BOOLValue(v88, v89, v90);

        if (v91)
        {
          objc_msgSend_setShowInBrowser_(v19, v92, 0);
          objc_msgSend_setShowInSendMenu_(v19, v93, 0);
        }

        v94 = objc_opt_class();
        v96 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v95, @"MSCanSendDataPayloads", v94, 2);
        v99 = objc_msgSend_BOOLValue(v96, v97, v98);

        if (v99)
        {
          objc_msgSend_setCanSendDataPayloads_(v19, v100, 1);
        }

        v101 = objc_opt_class();
        v103 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v102, @"MSShouldBalloonHideAppIcon", v101, 2);
        v106 = objc_msgSend_BOOLValue(v103, v104, v105);

        if (v106)
        {
          objc_msgSend_setShouldBalloonHideAppIcon_(v19, v107, 1);
        }

        v108 = objc_opt_class();
        v110 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v109, @"MSShouldBreadcrumbHideAppIcon", v108, 2);
        v113 = objc_msgSend_BOOLValue(v110, v111, v112);

        if (v113)
        {
          objc_msgSend_setShouldBreadcrumbHideAppIcon_(v19, v114, 1);
        }

        v115 = objc_opt_class();
        v117 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v116, @"MSShouldHideAppSwitcher", v115, 2);
        v120 = objc_msgSend_BOOLValue(v117, v118, v119);

        if (v120)
        {
          objc_msgSend_setShouldHideAppSwitcher_(v19, v121, 1);
        }

        v122 = objc_opt_class();
        v124 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v123, @"MSPrefersNoLoadingBubbles", v122, 2);
        v127 = objc_msgSend_BOOLValue(v124, v125, v126);

        if (v127)
        {
          objc_msgSend_setPrefersNoLoadingBubbles_(v19, v128, 1);
        }

        v129 = objc_opt_class();
        v131 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v130, @"MSSupportedPresentationContexts", v129, 2);
        v133 = objc_msgSend_presentationContextsForInfoPlistArray_(v19, v132, v131);
        objc_msgSend_setPresentationContexts_(v19, v134, v133);
        v135 = objc_opt_class();
        v137 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v136, @"NSStickerSharingLevel", v135, 2);
        if (objc_msgSend_length(v137, v138, v139))
        {
          if (objc_msgSend_caseInsensitiveCompare_(@"Messages", v140, v137))
          {
            if (!objc_msgSend_caseInsensitiveCompare_(@"OS", v141, v137))
            {
              objc_msgSend_setStickerSharingLevel_(v19, v142, 0);
            }
          }

          else
          {
            objc_msgSend_setStickerSharingLevel_(v19, v141, 1);
          }
        }

        v143 = objc_opt_class();
        v145 = objc_msgSend_objectForInfoDictionaryKey_ofClass_inScope_(v15, v144, @"MSHideAttributionInformation", v143, 2);
        v148 = objc_msgSend_BOOLValue(v145, v146, v147);

        if (v148)
        {
          objc_msgSend_setShouldHideAttributionInformation_(v19, v149, 1);
        }

        v151 = objc_msgSend_infoDictionary(v11, v149, v150);
        v153 = objc_msgSend_objectForKeyedSubscript_(v151, v152, @"LSExecutableSDKVersion");
        v157 = v153;
        if (v153 && objc_msgSend_length(v153, v154, v155))
        {
          sub_1A84E8A28(v156);
          v159 = v169;
          v160 = v170;
        }

        else
        {
          sub_1A84E8A9C(v156);
          v162 = *(v161 + 1776);
          v159 = *v162;
          v160 = v162[1];
        }

        v171 = v159;
        v172 = v160;
        objc_msgSend_setSdkVersionNumber_(v19, v158, &v171);

        goto LABEL_48;
      }

      v62 = objc_msgSend_localizedShortName(v15, v68, v69);
    }

    v70 = v62;
    objc_msgSend_setBrowserDisplayName_(v19, v63, v62);

    goto LABEL_17;
  }

LABEL_48:

  v163 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)version
{
  v3 = objc_msgSend_extension(self, a2, v2);
  v6 = objc_msgSend_version(v3, v4, v5);

  return v6;
}

- (id)itemID
{
  v4 = objc_msgSend_appBundle(self, a2, v2);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = &unk_1F1BA17E8;
LABEL_5:
    if (!objc_msgSend_isEqual_(v8, v5, &unk_1F1BA17E8))
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v8 = objc_msgSend_itemID(v4, v5, v6);
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = objc_msgSend_identifier(self, v5, v7);

  if (v9)
  {
    if (qword_1EB2EA3B0 != -1)
    {
      sub_1A84E1E0C();
    }

    v12 = qword_1EB2EA3A8;
    v13 = objc_msgSend_identifier(self, v10, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, v13);

    v8 = v15;
  }

LABEL_10:

  return v8;
}

- (BOOL)shouldDelayViewControllerPresentation
{
  v4 = objc_msgSend_extension(self, a2, v2);
  v7 = objc_msgSend_infoDictionary(v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x1E695E4F0]);
  if (v11)
  {
    v12 = objc_msgSend__bundleIDsForDelayedPresentationOptIn(self, v9, v10);
    v14 = objc_msgSend_containsObject_(v12, v13, v11);

    if (v14)
    {
      v16 = objc_msgSend_BOOLValueForKey_withDefault_(v7, v15, @"MSOptInToDelayedPresentation", 0);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (double)presentationDelay
{
  v4 = objc_msgSend_extension(self, a2, v2);
  v7 = objc_msgSend_infoDictionary(v4, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"MSPresentationDelay");
  v13 = objc_msgSend_objectForKeyedSubscript_(v7, v10, *MEMORY[0x1E695E4F0]);
  if (v9)
  {
    objc_msgSend_floatValue(v9, v11, v12);
    v15 = v14;
  }

  else
  {
    v16 = objc_msgSend__bundleIDToPresentationDelayMapping(self, v11, v12);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v13);
    v9 = v18;
    if (v18)
    {
      objc_msgSend_floatValue(v18, v19, v20);
      v15 = v21;
    }

    else
    {
      v15 = 1.0;
    }
  }

  return v15;
}

- (BOOL)linkedBeforeSDKVersion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_sdkVersionNumber(self, v5, v6);
  sub_1A84E8A9C(v7);
  v9 = *(v8 + 1776);
  v15 = *(v9 + 16);
  if (sub_1A84E89FC(*v9))
  {
    sub_1A84E8A28(0.0);
    objc_msgSend_sdkVersionNumber(self, v10, v11);
    v12 = sub_1A84E89FC(0.0) == -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_bundleIDToPresentationDelayMapping
{
  if (qword_1EB2EA3C0 != -1)
  {
    sub_1A84E1E20();
  }

  v3 = qword_1EB2EA3B8;

  return v3;
}

- (id)_bundleIDsForDawnSendMenuTemporaryDisplayOverride
{
  if (qword_1EB2EA3D0 != -1)
  {
    sub_1A84E1E34();
  }

  v3 = qword_1EB2EA3C8;

  return v3;
}

- (id)_bundleIDsForDelayedPresentationOptIn
{
  if (qword_1EB2EA3E0 != -1)
  {
    sub_1A84E1E48();
  }

  v3 = qword_1EB2EA3D8;

  return v3;
}

- (BOOL)isBetaPlugin
{
  v3 = objc_msgSend_containingBundle(self->_proxy, a2, v2);
  isBetaApp = objc_msgSend_isBetaApp(v3, v4, v5);

  return isBetaApp;
}

- (id)applicationType
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v6 = objc_msgSend_containingBundle(v3, v4, v5);
  v9 = objc_msgSend_applicationType(v6, v7, v8);

  return v9;
}

- (BOOL)showInSendMenu
{
  v3.receiver = self;
  v3.super_class = _IMBalloonExtensionApp;
  return [(IMBalloonApp *)&v3 showInSendMenu];
}

- (BOOL)showInBrowser
{
  v16.receiver = self;
  v16.super_class = _IMBalloonExtensionApp;
  v3 = [(IMBalloonApp *)&v16 showInBrowser];
  if (v3)
  {
    v6 = objc_msgSend_applicationType(self, v4, v5);
    v8 = sub_1A84E8A54(v7);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, **(v9 + 1448), v8);

    if (isEqualToString)
    {
      LOBYTE(v3) = objc_msgSend_isEnabledUnremovableApp(self, v13, v14);
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)showableInBrowser
{
  v16.receiver = self;
  v16.super_class = _IMBalloonExtensionApp;
  v3 = [(IMBalloonApp *)&v16 showInBrowser];
  if (v3)
  {
    v6 = objc_msgSend_applicationType(self, v4, v5);
    v8 = sub_1A84E8A54(v7);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, **(v9 + 1448), v8);

    if (isEqualToString)
    {
      LOBYTE(v3) = objc_msgSend_isEnabledUnremovableApp(self, v13, v14) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)isLaunchProhibited
{
  v3 = objc_msgSend_proxy(self, a2, v2);
  v6 = objc_msgSend_containingBundle(v3, v4, v5);
  isLaunchProhibited = objc_msgSend_isLaunchProhibited(v6, v7, v8);

  return isLaunchProhibited;
}

@end