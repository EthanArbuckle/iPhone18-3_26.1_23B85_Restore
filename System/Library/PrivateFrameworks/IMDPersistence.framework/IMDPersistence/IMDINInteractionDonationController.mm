@interface IMDINInteractionDonationController
+ (id)sharedController;
- (id)_createSOSImage;
- (id)createImageForNickname:(id)nickname;
- (id)createInteractionWithContext:(id)context updateHandler:(id)handler;
- (id)createPersonFromHandle:(id)handle contact:(id)contact context:(id)context interactionUpdatedHandler:(id)handler;
- (id)createPersonHandleFromHandle:(id)handle contact:(id)contact;
- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection;
@end

@implementation IMDINInteractionDonationController

+ (id)sharedController
{
  if (qword_1EBA53AD8 != -1)
  {
    sub_1B7CF83B0();
  }

  v3 = qword_1EBA53AA8;

  return v3;
}

- (id)createPersonHandleFromHandle:(id)handle contact:(id)contact
{
  v49 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  if (!MEMORY[0x1B8CAF9C0](handleCopy))
  {
    if (!IMStringIsEmail())
    {
      v16 = 0;
      v18 = 0;
      goto LABEL_35;
    }

    if (!contactCopy)
    {
      v16 = 0;
      v18 = 1;
      goto LABEL_35;
    }

    v11 = IMNormalizeFormattedString();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = objc_msgSend_emailAddresses(contactCopy, v23, v24);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v25, &v39, v47, 16);
    if (!v16)
    {
      v18 = 1;
      goto LABEL_33;
    }

    v38 = contactCopy;
    v28 = *v40;
    v18 = 1;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v12);
        }

        v30 = objc_msgSend_value(*(*(&v39 + 1) + 8 * i), v26, v27);
        v31 = IMNormalizeFormattedString();

        if (objc_msgSend_isEqual_(v31, v32, v11))
        {
          v16 = INPersonHandleLabelForCNLabeledValue();

          v18 = 1;
          goto LABEL_29;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v26, &v39, v47, 16);
      if (v16)
      {
        continue;
      }

      goto LABEL_29;
    }
  }

  if (!contactCopy)
  {
    v16 = 0;
    v18 = 2;
    goto LABEL_35;
  }

  v7 = objc_alloc(MEMORY[0x1E695CF50]);
  v11 = objc_msgSend_initWithStringValue_(v7, v8, handleCopy);
  if (v11)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = objc_msgSend_phoneNumbers(contactCopy, v9, v10);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v43, v48, 16);
    if (!v16)
    {
      v18 = 2;
      goto LABEL_33;
    }

    v38 = contactCopy;
    v17 = *v44;
    v18 = 2;
    while (2)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_value(*(*(&v43 + 1) + 8 * j), v14, v15);
        isLikePhoneNumber = objc_msgSend_isLikePhoneNumber_(v20, v21, v11);

        if (isLikePhoneNumber)
        {
          v16 = INPersonHandleLabelForCNLabeledValue();
          v18 = 2;
          goto LABEL_29;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v43, v48, 16);
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_29:
    contactCopy = v38;
LABEL_33:

    goto LABEL_34;
  }

  v16 = 0;
  v18 = 2;
LABEL_34:

LABEL_35:
  v33 = objc_alloc(MEMORY[0x1E696E948]);
  v35 = objc_msgSend_initWithValue_type_label_(v33, v34, handleCopy, v18, v16);

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)createImageForNickname:(id)nickname
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_avatar(nickname, a2, nickname);
  if (objc_msgSend_imageExists(v3, v4, v5))
  {
    v8 = objc_msgSend_imageFilePath(v3, v6, v7);
    if (objc_msgSend_length(v8, v9, v10))
    {
      v12 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v11, v8);
      v14 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v13, v12);
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Using image file path: %@", &v18, 0xCu);
      }
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Image file path is nil", &v18, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Image does not exist at nickname file path", &v18, 2u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_createSOSImage
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2);
  v6 = objc_msgSend_resourcePath(v3, v4, v5);

  v8 = objc_msgSend_stringByAppendingPathComponent_(v6, v7, @"Icons");
  v10 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, @"SOS_lt_60.png");

  v12 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v11, v10);
  v14 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v13, v12);

  return v14;
}

- (id)createPersonFromHandle:(id)handle contact:(id)contact context:(id)context interactionUpdatedHandler:(id)handler
{
  v107 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  contextCopy = context;
  handlerCopy = handler;
  v16 = objc_msgSend_identifier(contactCopy, v14, v15);
  v18 = objc_msgSend_createPersonHandleFromHandle_contact_(self, v17, handleCopy, contactCopy);
  v20 = objc_msgSend_componentsForContact_(MEMORY[0x1E696ADF0], v19, contactCopy);
  if (objc_msgSend_hasSuffix_(handleCopy, v21, *MEMORY[0x1E69A6EA0]))
  {
    v22 = IMSharedUtilitiesFrameworkBundle();
    objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v25 = LABEL_5:;

    v28 = objc_msgSend__createSOSImage(self, v26, v27);
    v29 = 0;
    goto LABEL_19;
  }

  if (IMIsStringStewieEmergency())
  {
    v22 = IMSharedUtilitiesFrameworkBundle();
    objc_msgSend_localizedStringForKey_value_table_(v22, v24, @"STEWIE_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    goto LABEL_5;
  }

  if (IMIsStringStewieRoadside())
  {
    v32 = objc_msgSend_chatDisplayName(contextCopy, v30, v31);
    v33 = v32;
    if (v32)
    {
      v25 = v32;
    }

    else
    {
      v41 = IMSharedUtilitiesFrameworkBundle();
      v25 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"STEWIE_NOTIFICATION_ROADSIDE_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-Avocet");
    }

LABEL_18:

    v29 = 0;
    v28 = 0;
    goto LABEL_19;
  }

  if ((MEMORY[0x1B8CAF990](handleCopy) & 1) != 0 || objc_msgSend___im_isChatBot(handleCopy, v34, v35))
  {
    v33 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F40], v34, v35);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = sub_1B7B85EE0;
    v99[3] = &unk_1E7CBB350;
    v100 = handlerCopy;
    v37 = objc_msgSend_businessNameForUID_updateHandler_(v33, v36, handleCopy, v99);
    if (objc_msgSend_length(v37, v38, v39))
    {
      v40 = v37;
    }

    else
    {
      v43 = IMLogHandleForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "No cached business name, using placeholder business name, will call interaction update handler if business name fetch completes", buf, 2u);
      }

      v40 = objc_msgSend_placeholderBusinessNameForBrandURI_(MEMORY[0x1E69A7F40], v44, handleCopy);
    }

    v25 = v40;

    goto LABEL_18;
  }

  if (contactCopy && objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v34, contactCopy))
  {
    v50 = objc_msgSend_sharedDefaults(MEMORY[0x1E695CE40], v34, v35);
    v53 = objc_msgSend_shortNameFormatPrefersNicknames(v50, v51, v52);
    v25 = _IMDCoreSpotlightFullNameForContact(contactCopy, v53);
    if (objc_msgSend_length(v25, v54, v55))
    {
      log = v50;
      v56 = v25;
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v102 = handleCopy;
        v103 = 2112;
        v104 = v56;
        v105 = 2112;
        v106 = v16;
        _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_INFO, "For handle %@ used contacts to determine displayName %@ and image. Using contactID: %@", buf, 0x20u);
      }

      v25 = v56;
      v50 = log;
    }
  }

  else
  {
    v25 = 0;
  }

  if (objc_msgSend_length(v25, v34, v35))
  {
    v29 = 0;
    v28 = 0;
  }

  else
  {
    loga = v25;
    v60 = _IMDCoreSpotlightNicknameForAddress(handleCopy);
    if (v60)
    {
      v91 = v60;
      v61 = _IMDContactNameForNickname(v60, 0);
      v64 = objc_msgSend_length(v61, v62, v63);
      v29 = v64 != 0;
      v89 = v61;
      if (v64)
      {
        v87 = v61;

        v28 = objc_msgSend_createImageForNickname_(self, v65, v91);
        v66 = IMLogHandleForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v102 = handleCopy;
          v103 = 2112;
          v104 = v87;
          v105 = 2112;
          v106 = v28;
          _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_INFO, "For handle %@ used nickname to determine displayName %@ and image %@", buf, 0x20u);
        }

        loga = v87;
      }

      else
      {
        v28 = 0;
      }

      v60 = v91;
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v25 = loga;
  }

  if (!objc_msgSend_length(v25, v58, v59))
  {
    logb = v25;
    v69 = _IMDCoreSpotlightSuggestedNameForAddress(handleCopy);
    v92 = v69;
    if (objc_msgSend_length(v69, v70, v71))
    {
      v72 = v69;

      v73 = IMLogHandleForCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v102 = handleCopy;
        v103 = 2112;
        v104 = v72;
        _os_log_impl(&dword_1B7AD5000, v73, OS_LOG_TYPE_INFO, "For handle %@ used nickname to determine displayName %@ and no image", buf, 0x16u);
      }

      v29 = 1;
      logb = v72;
    }

    v25 = logb;
  }

  if (!objc_msgSend_length(v25, v67, v68))
  {
    v93 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v74, v75);
    if (!objc_msgSend_length(v93, v76, v77))
    {
      v86 = v93;
LABEL_54:

      goto LABEL_19;
    }

    logc = v25;
    v90 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v78, v79);
    v82 = objc_msgSend_lowercaseString(v90, v80, v81);
    isEqualToString = objc_msgSend_isEqualToString_(handleCopy, v83, v82);

    if (isEqualToString)
    {
      v25 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v84, v85);

      logd = IMLogHandleForCategory();
      if (os_log_type_enabled(logd, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v102 = handleCopy;
        v103 = 2112;
        v104 = v25;
        _os_log_impl(&dword_1B7AD5000, logd, OS_LOG_TYPE_INFO, "For handle %@ used uncanonicalized address to determine displayName %@ and no image", buf, 0x16u);
      }

      v86 = logd;
      goto LABEL_54;
    }

    v25 = logc;
  }

LABEL_19:
  v45 = objc_alloc(MEMORY[0x1E696E940]);
  isContactSuggestion_suggestionType = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_isContactSuggestion_suggestionType_(v45, v46, v18, v20, v25, v28, v16, 0, v29, 0);

  v48 = *MEMORY[0x1E69E9840];

  return isContactSuggestion_suggestionType;
}

- (id)createInteractionWithContext:(id)context updateHandler:(id)handler
{
  v247 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v6 = 0x1E695D000uLL;
  v231 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v11 = objc_msgSend_chatParticipants(contextCopy, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v240, v246, 16);
  if (!v13)
  {

LABEL_17:
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "None of the current chat participants match the current senderID, creating a new person.", buf, 2u);
    }

    v37 = objc_msgSend_senderHandleID(contextCopy, v35, v36);
    v18 = objc_msgSend_createPersonFromHandle_contact_context_interactionUpdatedHandler_(self, v38, v37, 0, contextCopy, handlerCopy);

    goto LABEL_20;
  }

  v16 = v13;
  v17 = contextCopy;
  v18 = 0;
  v19 = *v241;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v241 != v19)
      {
        objc_enumerationMutation(v11);
      }

      v21 = *(*(&v240 + 1) + 8 * i);
      v22 = objc_msgSend_handleID(v21, v14, v15);
      v25 = objc_msgSend_contact(v21, v23, v24);
      v27 = objc_msgSend_createPersonFromHandle_contact_context_interactionUpdatedHandler_(self, v26, v22, v25, v17, handlerCopy);

      if (objc_msgSend_isSender(v21, v28, v29))
      {
        v31 = v18 == 0;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        v18 = v27;
      }

      else
      {
        objc_msgSend_addObject_(v231, v30, v27);
      }
    }

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v240, v246, 16);
  }

  while (v16);

  contextCopy = v17;
  v6 = 0x1E695D000;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_20:
  v39 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v32, v33);
  v40 = MEMORY[0x1B8CAF9C0]();

  if (v40)
  {
    v43 = 2;
  }

  else
  {
    v44 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v41, v42);
    LODWORD(v43) = IMStringIsEmail();

    v43 = v43;
  }

  v45 = objc_alloc(MEMORY[0x1E696E948]);
  v48 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v46, v47);
  v50 = objc_msgSend_initWithValue_type_(v45, v49, v48, v43);

  v51 = objc_alloc(MEMORY[0x1E696E940]);
  v228 = v50;
  v53 = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_(v51, v52, v50, 0, 0, 0, 0, 0);
  objc_msgSend_setIsMe_(v53, v54, 1);
  v227 = v53;
  objc_msgSend_addObject_(v231, v55, v53);
  v58 = objc_msgSend_chatStyle(contextCopy, v56, v57);
  isFilteredValue = objc_msgSend_isFilteredValue(contextCopy, v59, v60);
  v61 = contextCopy;
  v64 = objc_msgSend_chatParticipants(contextCopy, v62, v63);
  v65 = objc_alloc_init(*(v6 + 3952));
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v66 = v64;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v235, v245, 16);
  if (v68)
  {
    v71 = v68;
    v72 = *v236;
    do
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v236 != v72)
        {
          objc_enumerationMutation(v66);
        }

        v74 = *(*(&v235 + 1) + 8 * j);
        v75 = objc_msgSend_handleID(v74, v69, v70);

        if (v75)
        {
          v76 = objc_msgSend_handleID(v74, v69, v70);
          objc_msgSend_addObject_(v65, v77, v76);
        }
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v235, v245, 16);
    }

    while (v71);
  }

  if (v58 == 45)
  {
    v230 = 0;
    v79 = v61;
  }

  else
  {
    v79 = v61;
    if (objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v78, isFilteredValue, v65) && (objc_msgSend_chatDisplayName(v61, v80, v81), v82 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend_length(v82, v83, v84), v82, v85))
    {
      v86 = objc_alloc(MEMORY[0x1E696EA50]);
      v89 = objc_msgSend_chatGUID(v61, v87, v88);
      v92 = objc_msgSend_chatDisplayName(v61, v90, v91);
      v230 = objc_msgSend_initWithVocabularyIdentifier_spokenPhrase_pronunciationHint_(v86, v93, v89, v92, 0);
    }

    else
    {
      v230 = 0;
    }
  }

  v94 = objc_alloc(MEMORY[0x1E696E9E8]);
  v97 = objc_msgSend_messagePlainBody(v79, v95, v96);
  v100 = objc_msgSend_chatGUID(v79, v98, v99);
  v103 = objc_msgSend_serviceName(v79, v101, v102);
  v105 = objc_msgSend_initWithRecipients_content_speakableGroupName_conversationIdentifier_serviceName_sender_(v94, v104, v231, v97, v230, v100, v103, v18);

  v108 = objc_msgSend_chatIdentifier(v79, v106, v107);
  objc_msgSend_setNotificationThreadIdentifier_(v105, v109, v108);

  objc_msgSend__setLaunchId_(v105, v110, @"com.apple.MobileSMS");
  v113 = objc_msgSend_sharedInstance(IMDGroupPhotoDonationManager, v111, v112);
  v116 = objc_msgSend_groupPhotoGuid(v79, v114, v115);
  v119 = objc_msgSend_chatGUID(v79, v117, v118);
  v122 = objc_msgSend_groupPhotoInternalFilePath(v79, v120, v121);
  objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v113, v123, v116, v119, v122);

  v126 = objc_msgSend_groupPhotoInternalFilePath(v79, v124, v125);
  v129 = objc_msgSend_im_lastPathComponent(v126, v127, v128);

  v132 = objc_msgSend_chatGUID(v79, v130, v131);
  v226 = v129;
  v133 = IMSharedHelperExternalLocationForFile();

  if (objc_msgSend_length(v133, v134, v135))
  {
    v225 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v136, v133);
    v140 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v138, v225);
    if (v140)
    {
      objc_msgSend_setImage_forParameterNamed_(v105, v139, v140, @"speakableGroupName");
    }
  }

  else
  {
    v225 = 0;
  }

  v141 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v136, v137);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v141, v142, v143);

  if (isTranscriptSharingEnabled)
  {
    v147 = objc_msgSend_chatIdentifier(v79, v145, v146);
    hasPrefix = objc_msgSend_hasPrefix_(v147, v148, *MEMORY[0x1E69A7DB0]);

    if (hasPrefix)
    {
      v153 = objc_msgSend__createSOSImage(self, v150, v151);
      if (v153)
      {
        objc_msgSend_setImage_forParameterNamed_(v105, v152, v153, @"speakableGroupName");
      }
    }
  }

  v233 = v133;
  v154 = objc_alloc_init(MEMORY[0x1E696E9F0]);
  isMentionOfMe = objc_msgSend_isMentionOfMe(v79, v155, v156);
  objc_msgSend_setMentionsCurrentUser_(v154, v158, isMentionOfMe);
  isReplyToMe = objc_msgSend_isReplyToMe(v79, v159, v160);
  objc_msgSend_setReplyToCurrentUser_(v154, v162, isReplyToMe);
  isNotifyAnyway = objc_msgSend_isNotifyAnyway(v79, v163, v164);
  objc_msgSend_setNotifyRecipientAnyway_(v154, v166, isNotifyAnyway);
  v169 = objc_msgSend_chatParticipants(v79, v167, v168);
  v172 = objc_msgSend_count(v169, v170, v171);
  objc_msgSend_setRecipientCount_(v154, v173, v172);

  if (objc_msgSend_isMergedBusinessThread(v79, v174, v175))
  {
    objc_msgSend_setBusinessChat_(v154, v176, 1);
  }

  objc_msgSend_setDonationMetadata_(v105, v176, v154);
  v177 = objc_alloc(MEMORY[0x1E696E9F8]);
  v223 = objc_msgSend_initWithCode_userActivity_(v177, v178, 3, 0);
  v221 = objc_alloc(MEMORY[0x1E696E8F8]);
  v181 = objc_msgSend_messageGUID(v79, v179, v180);
  v184 = objc_msgSend_chatGUID(v79, v182, v183);
  v187 = objc_msgSend_messagePlainBody(v79, v185, v186);
  objc_msgSend_messageDate(v79, v188, v189);
  v224 = v154;
  v190 = v222 = v105;
  v193 = objc_msgSend_serviceName(v79, v191, v192);
  v195 = objc_msgSend_initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_(v221, v194, v181, v184, v187, v190, v18, v231, v230, 1, v193);

  v244 = v195;
  v197 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v196, &v244, 1);
  objc_msgSend_setSentMessages_(v223, v198, v197);

  v199 = objc_alloc(MEMORY[0x1E696E8B8]);
  v201 = objc_msgSend_initWithIntent_response_(v199, v200, v222, v223);
  v204 = objc_msgSend_messageGUID(v79, v202, v203);
  objc_msgSend_setIdentifier_(v201, v205, v204);

  v208 = objc_msgSend_chatGUID(v79, v206, v207);
  objc_msgSend_setGroupIdentifier_(v201, v209, v208);

  objc_msgSend_setDirection_(v201, v210, 2);
  v211 = objc_alloc(MEMORY[0x1E696AB80]);
  v214 = objc_msgSend_messageDate(v79, v212, v213);
  started = objc_msgSend_initWithStartDate_duration_(v211, v215, v214, 0.0);
  objc_msgSend_setDateInterval_(v201, v217, started);

  objc_msgSend_setIntentHandlingStatus_(v201, v218, 3);
  v219 = *MEMORY[0x1E69E9840];

  return v201;
}

- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection
{
  contextCopy = context;
  v6 = [IMDINInteractionMessageDonationJob alloc];
  v8 = objc_msgSend_initWithContext_(v6, v7, contextCopy);

  return v8;
}

@end