id sub_1D461074C()
{
  if (qword_1ED82C570 != -1)
  {
    sub_1D4610790();
  }

  v1 = qword_1ED82C578;

  return v1;
}

uint64_t sub_1D46107F0()
{
  qword_1ED82C578 = os_log_create("com.apple.inputAnalytics.client", "IATextInputActions");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D4610D40()
{
  qword_1ED82C558 = os_log_create("com.apple.inputAnalytics.client", "IAXPCClient");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1D4610F0C()
{
  if (qword_1ED82C550 != -1)
  {
    sub_1D4610844();
  }

  v1 = qword_1ED82C558;

  return v1;
}

id sub_1D461102C()
{
  if (qword_1ED82C560 != -1)
  {
    sub_1D4611018();
  }

  v1 = qword_1ED82C568;

  return v1;
}

uint64_t sub_1D4611070()
{
  qword_1ED82C568 = os_log_create("com.apple.inputAnalytics.client", "IASignalAnalytics");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1D4611170()
{
  if (qword_1ED82C580 != -1)
  {
    sub_1D461115C();
  }

  v1 = qword_1ED82C588;

  return v1;
}

uint64_t sub_1D46111B4()
{
  qword_1ED82C588 = os_log_create("com.apple.inputAnalytics", "IAServerStats");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D4611D90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4612204(uint64_t a1, const char *a2)
{
  qword_1ED82C590 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^[a-z]{2,3}([_-][A-Z][a-z]{3})?$", 0, 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D461238C()
{
  qword_1ED82C5A0 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D461247C(uint64_t a1, const char *a2)
{
  qword_1ED82C5B0 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"^(([A-Z]{2})|([0-9]{3})|([A-Z][a-z]{3}))$", 0, 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D4612604()
{
  qword_1ED82C5C0 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D4612860(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_q_flushRecentActions(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_analyzer(*(a1 + 32), v4, v5);
  objc_msgSend_enumerateAnalytics(v6, v7, v8);

  v11 = objc_msgSend_analyzer(*(a1 + 32), v9, v10);
  objc_msgSend_reset(v11, v12, v13);

  v16 = objc_msgSend_serverDelegate(*(a1 + 32), v14, v15);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v22 = objc_msgSend_serverDelegate(*(a1 + 32), v18, v19);
    objc_msgSend_didEndEnumeratingAnalytics(v22, v20, v21);
  }
}

void sub_1D4612A0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v5 = objc_msgSend_analyzer(*(a1 + 32), a2, a3);
  objc_msgSend_setKeyboardTrialParameters_(v5, v4, v3);
}

uint64_t sub_1D4616220(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    objc_msgSend_setDictationBeganCount_(v4, a2, 1);
    if (*(a1 + 49) == 1)
    {
      objc_msgSend_setMultiModalDictationBeganCount_(*(a1 + 32), v5, 1);
    }
  }

  else
  {
    objc_msgSend_setModelessUsedAtLeastOnceCount_(v4, a2, 1);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v6, sel_mergeOrConsumeAction_, v7);
}

void sub_1D4616AF4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1D4616B14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1D4616B58(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D4616B90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1D4616BF4()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.inputAnalytics.signalAnalyticsClient", v2);
  v1 = qword_1ED82C5E8;
  qword_1ED82C5E8 = v0;
}

void sub_1D461724C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = [IASignalAnalyticsObject alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = objc_msgSend_UUIDString(*(a1 + 48), v5, v6);
  v9 = objc_msgSend_initWithChannel_signal_sessionIdString_creationTimestamp_payload_(v2, v8, v3, v4, v7, *(a1 + 56), *(a1 + 64));

  v10 = sub_1D461102C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = objc_msgSend_description(*(a1 + 48), v11, v12);
    objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 56), v16, v17);
    v19 = v18;
    v22 = objc_msgSend_timestamp(v9, v20, v21);
    objc_msgSend_timeIntervalSinceReferenceDate(v22, v23, v24);
    v26 = v25;
    v29 = objc_msgSend_description(*(a1 + 64), v27, v28);
    v45 = 138479107;
    v46 = v13;
    v47 = 2113;
    v48 = v14;
    v49 = 2113;
    v50 = v15;
    v51 = 2049;
    v52 = v19;
    v53 = 2049;
    v54 = v26;
    v55 = 2117;
    v56 = v29;
    _os_log_impl(&dword_1D460F000, v10, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ sessionID:%{private}@ creationTimestamp:%{private}f timestamp:%{private}f payload:%{sensitive}@", &v45, 0x3Eu);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v30, v31))
  {
    v34 = objc_msgSend_xpcClient(*(a1 + 72), v32, v33);
    v37 = objc_msgSend_server(v34, v35, v36);

    v39 = objc_opt_respondsToSelector();
    if (v39)
    {
      objc_msgSend_didAction_(v37, v38, v9);
    }

    else
    {
      v41 = sub_1D461102C();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D4B0(v41, v42, v43);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v40, v39 & 1);
  }

  v44 = *MEMORY[0x1E69E9840];
}

void sub_1D46177F4(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [IASignalAnalyticsObject alloc];
  v4 = objc_msgSend_initWithChannel_signal_sessionIdString_creationTimestamp_payload_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v5 = sub_1D461102C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 56), v6, v7);
    v12 = v11;
    v15 = objc_msgSend_timestamp(v4, v13, v14);
    objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17);
    v19 = v18;
    v22 = objc_msgSend_description(*(a1 + 64), v20, v21);
    v38 = 138479107;
    v39 = v8;
    v40 = 2113;
    v41 = v9;
    v42 = 2113;
    v43 = v10;
    v44 = 2049;
    v45 = v12;
    v46 = 2049;
    v47 = v19;
    v48 = 2117;
    v49 = v22;
    _os_log_impl(&dword_1D460F000, v5, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ uniqueStringId:%{private}@ creationTimestamp:%{private}f timestamp:%{private}f payload:%{sensitive}@", &v38, 0x3Eu);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v23, v24))
  {
    v27 = objc_msgSend_xpcClient(*(a1 + 72), v25, v26);
    v30 = objc_msgSend_server(v27, v28, v29);

    v32 = objc_opt_respondsToSelector();
    if (v32)
    {
      objc_msgSend_didAction_(v30, v31, v4);
    }

    else
    {
      v34 = sub_1D461102C();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D5E0(v34, v35, v36);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v33, v32 & 1);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1D46179FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_1D4617A60(uint64_t a1, const char *a2)
{
  v6[59] = *MEMORY[0x1E69E9840];
  v5[0] = @"EmojiKeyPlaneSwitched";
  v5[1] = @"GenmojiButtonPressed";
  v6[0] = &unk_1F4FE6188;
  v6[1] = &unk_1F4FE61A0;
  v5[2] = @"EmojiSearchInvoked";
  v5[3] = @"ExistingGenmojiLongPressedThenNewEmojiSelected";
  v6[2] = &unk_1F4FE61B8;
  v6[3] = &unk_1F4FE61D0;
  v5[4] = @"CreateNewEmojiButtonShown";
  v5[5] = @"EmojiSearchDismissed";
  v6[4] = &unk_1F4FE61E8;
  v6[5] = &unk_1F4FE6200;
  v5[6] = @"CreateNewEmojiDismissed";
  v5[7] = @"CreateNewEmojiSelected";
  v6[6] = &unk_1F4FE6218;
  v6[7] = &unk_1F4FE6230;
  v5[8] = @"PersonIdentificationStarted";
  v5[9] = @"CancelButtonPressed";
  v6[8] = &unk_1F4FE6248;
  v6[9] = &unk_1F4FE6260;
  v5[10] = @"AmbiguousPersonFound";
  v5[11] = @"GenericPersonFound";
  v6[10] = &unk_1F4FE6278;
  v6[11] = &unk_1F4FE6290;
  v5[12] = @"TaggedPersonFound";
  v5[13] = @"PersonNotFound";
  v6[12] = &unk_1F4FE62A8;
  v6[13] = &unk_1F4FE62C0;
  v5[14] = @"PromptIsEmpty";
  v5[15] = @"ImageGenerated";
  v6[14] = &unk_1F4FE62D8;
  v6[15] = &unk_1F4FE62F0;
  v5[16] = @"ImageNotGenerated";
  v5[17] = @"PillSelected";
  v6[16] = &unk_1F4FE6308;
  v6[17] = &unk_1F4FE6320;
  v5[18] = @"ImageInserted";
  v5[19] = @"MenuButtonPressed";
  v6[18] = &unk_1F4FE6338;
  v6[19] = &unk_1F4FE6350;
  v5[20] = @"PlusCharacterButtonPressed";
  v5[21] = @"CharacterChosen";
  v6[20] = &unk_1F4FE6368;
  v6[21] = &unk_1F4FE6380;
  v5[22] = @"PreviouslySelectedCharacterChosen";
  v5[23] = @"PhotoChosen";
  v6[22] = &unk_1F4FE6398;
  v6[23] = &unk_1F4FE63B0;
  v5[24] = @"PhotoChosenFirstTime";
  v5[25] = @"PreviouslySelectedPhotoChosen";
  v6[24] = &unk_1F4FE63C8;
  v6[25] = &unk_1F4FE63E0;
  v5[26] = @"DoneButtonPressed";
  v5[27] = @"AppearanceSelected";
  v6[26] = &unk_1F4FE63F8;
  v6[27] = &unk_1F4FE6410;
  v5[28] = @"SkinToneSelected";
  v5[29] = @"AddButtonPressed";
  v6[28] = &unk_1F4FE6428;
  v6[29] = &unk_1F4FE6440;
  v5[30] = @"CharacterDeleted";
  v5[31] = @"PhotoPicked";
  v6[30] = &unk_1F4FE6458;
  v6[31] = &unk_1F4FE6470;
  v5[32] = @"AllPhotosTabSelected";
  v5[33] = @"SuggestedPhotosTabSelected";
  v6[32] = &unk_1F4FE6488;
  v6[33] = &unk_1F4FE64A0;
  v5[34] = @"CopySelected";
  v5[35] = @"ShareSheetSelected";
  v6[34] = &unk_1F4FE64B8;
  v6[35] = &unk_1F4FE64D0;
  v5[36] = @"SaveToStickersSelected";
  v5[37] = @"AddCaptionSelected";
  v6[36] = &unk_1F4FE64E8;
  v6[37] = &unk_1F4FE6500;
  v5[38] = @"ImageGenerationStarted";
  v5[39] = @"RetryRequested";
  v6[38] = &unk_1F4FE6518;
  v6[39] = &unk_1F4FE6530;
  v5[40] = @"UISuspended";
  v5[41] = @"UIResumed";
  v6[40] = &unk_1F4FE6548;
  v6[41] = &unk_1F4FE6560;
  v5[42] = @"BlobIndexChanged";
  v5[43] = @"DidPersonalizeStatus";
  v6[42] = &unk_1F4FE6578;
  v6[43] = &unk_1F4FE6590;
  v5[44] = @"PeoplePickerAppeared";
  v5[45] = @"PeoplePickerDisappeared";
  v6[44] = &unk_1F4FE65A8;
  v6[45] = &unk_1F4FE65C0;
  v5[46] = @"PeoplePickerGridAppeared";
  v5[47] = @"PeoplePickerGridUpdated";
  v6[46] = &unk_1F4FE65D8;
  v6[47] = &unk_1F4FE65F0;
  v5[48] = @"PeoplePickerItemSelected";
  v5[49] = @"PeoplePickerPickerRequested";
  v6[48] = &unk_1F4FE6608;
  v6[49] = &unk_1F4FE6620;
  v5[50] = @"FacePickerCarouselUpdatingFaces";
  v5[51] = @"FacePickerCarouselFacesUpdated";
  v6[50] = &unk_1F4FE6638;
  v6[51] = &unk_1F4FE6650;
  v5[52] = @"FacePickerCarouselPreviewLoaded";
  v5[53] = @"FacePickerCarouselDismissed";
  v6[52] = &unk_1F4FE6668;
  v6[53] = &unk_1F4FE6680;
  v5[54] = @"EditButtonPressed";
  v5[55] = @"BeginGeneration";
  v6[54] = &unk_1F4FE6698;
  v6[55] = &unk_1F4FE66B0;
  v5[56] = @"MessagesSendMenuButtonPressed";
  v5[57] = @"FinalImageGenerated";
  v6[56] = &unk_1F4FE66C8;
  v6[57] = &unk_1F4FE66E0;
  v5[58] = @"UIAppeared";
  v6[58] = &unk_1F4FE66F8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 59);
  v3 = qword_1EC7D6620;
  qword_1EC7D6620 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D461802C(uint64_t a1, const char *a2)
{
  v6[29] = *MEMORY[0x1E69E9840];
  v5[0] = @"InputSafety";
  v5[1] = @"InputCopyright";
  v6[0] = &unk_1F4FE6188;
  v6[1] = &unk_1F4FE61A0;
  v5[2] = @"FictionalCharacter";
  v5[3] = @"InputMultipleFaces";
  v6[2] = &unk_1F4FE61B8;
  v6[3] = &unk_1F4FE61D0;
  v5[4] = @"OutputImageHasMultipleFaces";
  v5[5] = @"OutputImageHasFace";
  v6[4] = &unk_1F4FE61E8;
  v6[5] = &unk_1F4FE6200;
  v5[6] = @"OutputCaptionDescribesMultipleFaces";
  v5[7] = @"OutputCaptionDescribesPerson";
  v6[6] = &unk_1F4FE6218;
  v6[7] = &unk_1F4FE6230;
  v5[8] = @"OutputSafety";
  v5[9] = @"InputLanguage";
  v6[8] = &unk_1F4FE6248;
  v6[9] = &unk_1F4FE6260;
  v5[10] = @"InputLexicon";
  v5[11] = @"InputScript";
  v6[10] = &unk_1F4FE6278;
  v6[11] = &unk_1F4FE6290;
  v5[12] = @"RequiresRewrite";
  v5[13] = @"PromptErrorOther";
  v6[12] = &unk_1F4FE62A8;
  v6[13] = &unk_1F4FE62C0;
  v5[14] = @"PolicyViolationOther";
  v5[15] = @"PolicyViolationInputImagePersonalizationPolicy";
  v6[14] = &unk_1F4FE62D8;
  v6[15] = &unk_1F4FE62F0;
  v5[16] = @"PolicyViolationDetectedFacesPolicy";
  v5[17] = @"PolicyViolationNonPersonalizedGeneratedImageCaptionPolicy";
  v6[16] = &unk_1F4FE6308;
  v6[17] = &unk_1F4FE6320;
  v5[18] = @"Other";
  v5[19] = @"Timeout";
  v6[18] = &unk_1F4FE6338;
  v6[19] = &unk_1F4FE6350;
  v5[20] = @"Cancel";
  v5[21] = @"NoFaceDetectedInConditioningImage";
  v6[20] = &unk_1F4FE6368;
  v6[21] = &unk_1F4FE6380;
  v5[22] = @"PublicFigure";
  v5[23] = @"PromptErrorUnresolvedAmbiguities";
  v6[22] = &unk_1F4FE6398;
  v6[23] = &unk_1F4FE63B0;
  v5[24] = @"PromptErrorPersonalizationUnavailable";
  v5[25] = @"PromptErrorPersonalizationUnavailableForEntities";
  v6[24] = &unk_1F4FE63C8;
  v6[25] = &unk_1F4FE63E0;
  v5[26] = @"OtherDisallowedConcepts";
  v5[27] = @"OtherDisallowedConceptsGenericEntity";
  v6[26] = &unk_1F4FE63F8;
  v6[27] = &unk_1F4FE6410;
  v5[28] = @"UserCancelled";
  v6[28] = &unk_1F4FE6428;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 29);
  v3 = qword_1EC7D6630;
  qword_1EC7D6630 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D4618334(uint64_t a1, const char *a2)
{
  v6[21] = *MEMORY[0x1E69E9840];
  v5[0] = @"AlphabeticKeyboard";
  v5[1] = @"EmojiKeyboard";
  v6[0] = &unk_1F4FE6188;
  v6[1] = &unk_1F4FE61A0;
  v5[2] = @"EmojiSearchKeyboardCreateNewEmojiDisplayed";
  v5[3] = @"CreationSheet";
  v6[2] = &unk_1F4FE61B8;
  v6[3] = &unk_1F4FE61D0;
  v5[4] = @"CreationSheetPersonIdentification";
  v5[5] = @"CreationSheetGenerating";
  v6[4] = &unk_1F4FE61E8;
  v6[5] = &unk_1F4FE6200;
  v5[6] = @"CreationSheetGeneratingPill";
  v5[7] = @"CreationSheetResults";
  v6[6] = &unk_1F4FE6218;
  v6[7] = &unk_1F4FE6230;
  v5[8] = @"CreationSheetResultsPill";
  v5[9] = @"CreationSheetNoResults";
  v6[8] = &unk_1F4FE6248;
  v6[9] = &unk_1F4FE6260;
  v5[10] = @"PeopleChooserSheet";
  v5[11] = @"CreateNewCharacterSheet";
  v6[10] = &unk_1F4FE6278;
  v6[11] = &unk_1F4FE6290;
  v5[12] = @"CreateCharacterSheet";
  v5[13] = @"PhotoChooserSheet";
  v6[12] = &unk_1F4FE62A8;
  v6[13] = &unk_1F4FE62C0;
  v5[14] = @"CreationSheetMenu";
  v5[15] = @"EditPhotoMenu";
  v6[14] = &unk_1F4FE62D8;
  v6[15] = &unk_1F4FE62F0;
  v5[16] = @"AddCaptionMenu";
  v5[17] = @"Genmoji";
  v6[16] = &unk_1F4FE6308;
  v6[17] = &unk_1F4FE6320;
  v5[18] = @"ImagePlayground";
  v5[19] = @"ImageWand";
  v6[18] = &unk_1F4FE6338;
  v6[19] = &unk_1F4FE6350;
  v5[20] = @"ThirdParty";
  v6[20] = &unk_1F4FE6368;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 21);
  v3 = qword_1EC7D6610;
  qword_1EC7D6610 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D461859C(uint64_t a1, const char *a2)
{
  v6[34] = *MEMORY[0x1E69E9840];
  v5[0] = @"CreationStarted";
  v5[1] = @"PreviewGenerated";
  v6[0] = &unk_1F4FE6710;
  v6[1] = &unk_1F4FE6728;
  v5[2] = @"RetryRequested";
  v5[3] = @"PreviewNotGenerated";
  v6[2] = &unk_1F4FE6740;
  v6[3] = &unk_1F4FE6758;
  v5[4] = @"FinalImageGenerated";
  v5[5] = @"ImageIndexChanged";
  v6[4] = &unk_1F4FE6770;
  v6[5] = &unk_1F4FE6788;
  v5[6] = @"CancelButtonPressed";
  v5[7] = @"ShareButtonPressed";
  v6[6] = &unk_1F4FE67A0;
  v6[7] = &unk_1F4FE67B8;
  v5[8] = @"CopyButtonPressed";
  v5[9] = @"SaveButtonPressed";
  v6[8] = &unk_1F4FE67D0;
  v6[9] = &unk_1F4FE67E8;
  v5[10] = @"UIAppeared";
  v5[11] = @"UIResumed";
  v6[10] = &unk_1F4FE6800;
  v6[11] = &unk_1F4FE6818;
  v5[12] = @"UISuspended";
  v5[13] = @"PreviewGenerationStarted";
  v6[12] = &unk_1F4FE6830;
  v6[13] = &unk_1F4FE6848;
  v5[14] = @"ImageInserted";
  v5[15] = @"StartGenerationPreviewStream";
  v6[14] = &unk_1F4FE6860;
  v6[15] = &unk_1F4FE6878;
  v5[16] = @"RewriteStarted";
  v5[17] = @"RewriteEnded";
  v6[16] = &unk_1F4FE6890;
  v6[17] = &unk_1F4FE68A8;
  v5[18] = @"RewriteFailed";
  v5[19] = @"ImagePlaygroundGridViewInsert";
  v6[18] = &unk_1F4FE68C0;
  v6[19] = &unk_1F4FE68D8;
  v5[20] = @"ImagePlaygroundGridViewCopy";
  v5[21] = @"ImagePlaygroundGridViewDuplicate";
  v6[20] = &unk_1F4FE68F0;
  v6[21] = &unk_1F4FE6908;
  v5[22] = @"ImagePlaygroundGridViewAddCaption";
  v5[23] = @"ImagePlaygroundGridViewShare";
  v6[22] = &unk_1F4FE6920;
  v6[23] = &unk_1F4FE6938;
  v5[24] = @"ImagePlaygroundGridViewEdit";
  v5[25] = @"ImagePlaygroundGridViewDelete";
  v6[24] = &unk_1F4FE6950;
  v6[25] = &unk_1F4FE6968;
  v5[26] = @"ImagePlaygroundDetailsViewCopy";
  v5[27] = @"ImagePlaygroundDetailsViewDuplicate";
  v6[26] = &unk_1F4FE6980;
  v6[27] = &unk_1F4FE6998;
  v5[28] = @"ImagePlaygroundDetailsViewAddCaption";
  v5[29] = @"ImagePlaygroundDetailsViewShare";
  v6[28] = &unk_1F4FE69B0;
  v6[29] = &unk_1F4FE69C8;
  v5[30] = @"ImagePlaygroundDetailsViewEdit";
  v5[31] = @"ImagePlaygroundDetailsViewDelete";
  v6[30] = &unk_1F4FE69E0;
  v6[31] = &unk_1F4FE69F8;
  v5[32] = @"MontaraHandoffAccepted";
  v5[33] = @"MontaraHandoffCanceled";
  v6[32] = &unk_1F4FE6A10;
  v6[33] = &unk_1F4FE6A28;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 34);
  v3 = qword_1EC7D65F0;
  qword_1EC7D65F0 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D461890C(uint64_t a1, const char *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"Genmoji";
  v5[1] = @"ImagePlayground";
  v6[0] = &unk_1F4FE6710;
  v6[1] = &unk_1F4FE6728;
  v5[2] = @"ImageWand";
  v5[3] = @"ThirdParty";
  v6[2] = &unk_1F4FE6740;
  v6[3] = &unk_1F4FE6758;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 4);
  v3 = qword_1EC7D6600;
  qword_1EC7D6600 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D4618A14(uint64_t a1, const char *a2)
{
  v6[35] = *MEMORY[0x1E69E9840];
  v5[0] = @"ComposeFieldInFocus";
  v5[1] = @"ComposeFieldOutOfFocus";
  v6[0] = &unk_1F4FE6A40;
  v6[1] = &unk_1F4FE6A58;
  v5[2] = @"ComposeTextModified";
  v5[3] = @"IntentRequested";
  v6[2] = &unk_1F4FE6A70;
  v6[3] = &unk_1F4FE6A88;
  v5[4] = @"IntentGenerated";
  v5[5] = @"IntentNotShown";
  v6[4] = &unk_1F4FE6AA0;
  v6[5] = &unk_1F4FE6AB8;
  v5[6] = @"IntentShown";
  v5[7] = @"IntentEngaged";
  v6[6] = &unk_1F4FE6AD0;
  v6[7] = &unk_1F4FE6AE8;
  v5[8] = @"IntentDismissed";
  v5[9] = @"InitialResponseRequested";
  v6[8] = &unk_1F4FE6B00;
  v6[9] = &unk_1F4FE6B18;
  v5[10] = @"InitialResponseFailed";
  v5[11] = @"InitialResponseCompleted";
  v6[10] = &unk_1F4FE6B30;
  v6[11] = &unk_1F4FE6B48;
  v5[12] = @"QuestionnaireRequested";
  v5[13] = @"QuestionnaireNotShown";
  v6[12] = &unk_1F4FE6B60;
  v6[13] = &unk_1F4FE6B78;
  v5[14] = @"QuestionnaireShown";
  v5[15] = @"QuestionnaireDismissed";
  v6[14] = &unk_1F4FE6B90;
  v6[15] = &unk_1F4FE6BA8;
  v5[16] = @"QuestionnaireAnswerModified";
  v5[17] = @"RewriteRequested";
  v6[16] = &unk_1F4FE6BC0;
  v6[17] = &unk_1F4FE6BD8;
  v5[18] = @"RewriteFailed";
  v5[19] = @"RewriteCompleted";
  v6[18] = &unk_1F4FE6BF0;
  v6[19] = &unk_1F4FE6C08;
  v5[20] = @"ResultsAccepted";
  v5[21] = @"ResultsRejected";
  v6[20] = &unk_1F4FE6C20;
  v6[21] = &unk_1F4FE6C38;
  v5[22] = @"AppSuspended";
  v5[23] = @"AppResumed";
  v6[22] = &unk_1F4FE6C50;
  v6[23] = &unk_1F4FE6C68;
  v5[24] = @"AppKilled";
  v5[25] = @"UISuspended";
  v6[24] = &unk_1F4FE6C80;
  v6[25] = &unk_1F4FE6C98;
  v5[26] = @"UIResumed";
  v5[27] = @"UITerminated";
  v6[26] = &unk_1F4FE6CB0;
  v6[27] = &unk_1F4FE6CC8;
  v5[28] = @"ActionsRequested";
  v5[29] = @"ActionsGenerated";
  v6[28] = &unk_1F4FE6CE0;
  v6[29] = &unk_1F4FE6CF8;
  v5[30] = @"PollActionRequested";
  v5[31] = @"PollActionGenerated";
  v6[30] = &unk_1F4FE6D10;
  v6[31] = &unk_1F4FE6D28;
  v5[32] = @"PollActionNotShown";
  v5[33] = @"PollActionShown";
  v6[32] = &unk_1F4FE6D40;
  v6[33] = &unk_1F4FE6D58;
  v5[34] = @"PollActionEngaged";
  v6[34] = &unk_1F4FE6D70;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 35);
  v3 = qword_1EC7D65E0;
  qword_1EC7D65E0 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D4618DFC(uint64_t a1)
{
  qword_1EC7D6650 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D461A8F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_sessionErrors(v2, v4, v5);
  objc_msgSend_logErrorCodeIfNotNil_(v7, v6, v3);
}

void sub_1D461ACCC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = objc_msgSend_sessionActionsEnumFromSource_(IATextInputActionsUtils, v11, a3);
    if (v23[3] == 1)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1D461AE24;
      v17[3] = &unk_1E848A540;
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v20 = a3;
      v21 = v13;
      v15 = *(a1 + 32);
      v19 = &v22;
      v17[4] = v15;
      v18 = v14;
      objc_msgSend_enumerateObjectsUsingBlock_(v5, v16, v17);
    }

    else
    {
      objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v12, MEMORY[0x1E695E118]);
    }

    _Block_object_dispose(&v22, 8);
  }
}

void sub_1D461AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D461AE24(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFB0];
  v6 = a2;
  v9 = objc_msgSend_null(v5, v7, v8);
  isEqual = objc_msgSend_isEqual_(v6, v10, v9);

  if ((isEqual & 1) == 0)
  {
    v13 = objc_msgSend_sessionActionsEnumFromSource_type_(IATextInputActionsUtils, v12, a1[7], a3);
    v14 = (a1 + 6);
    *(*(a1[6] + 8) + 24) = v13;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      sub_1D462DB64();
    }

    v15 = a1[5];
    v16 = MEMORY[0x1E695E118];

    objc_msgSend_setObject_atIndexedSubscript_(v15, v14, v16);
  }
}

uint64_t sub_1D461AF1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    v16 = v5;
    v5 = objc_msgSend_BOOLValue(v5, v5, v6);
    v7 = v16;
    if (v5)
    {
      v9 = objc_msgSend_sessionActionsString(*(a1 + 32), v16, v8);
      v11 = objc_msgSend_stringForSessionActionsEnum_(IATextInputActionsUtils, v10, a3);
      v13 = objc_msgSend_stringByAppendingString_(v9, v12, v11);
      objc_msgSend_setSessionActionsString_(*(a1 + 32), v14, v13);

      v7 = v16;
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v7);
}

void sub_1D461B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D461B248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D461B260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v9 = objc_msgSend_computeSessionActionsStringOnSession_(v6, v8, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1D461B36C;
  v17[3] = &unk_1E848A630;
  v10 = *(a1 + 32);
  v18 = v5;
  v19 = v10;
  v11 = *(a1 + 56);
  v20 = v9;
  v22 = v11;
  v16 = *(a1 + 40);
  v12 = v16;
  v21 = v16;
  v13 = v9;
  v14 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v15, v17);
}

void sub_1D461B36C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B484;
    v19[3] = &unk_1E848A608;
    v11 = *(a1 + 32);
    v25 = a3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B484(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B5A0;
    v19[3] = &unk_1E848A5E0;
    v11 = *(a1 + 32);
    v25 = *(a1 + 80);
    v26 = a3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);

  if ((isEqual & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1D461B6C0;
    v19[3] = &unk_1E848A5B8;
    v11 = *(a1 + 32);
    v25 = a3;
    v26 = *(a1 + 80);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = v11;
    v21 = v12;
    v14 = v13;
    v15 = *(a1 + 72);
    v22 = v14;
    v24 = v15;
    v18 = *(a1 + 56);
    v16 = v18;
    v23 = v18;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v17, v19);
  }
}

void sub_1D461B6C0(uint64_t a1, void *a2, void *a3)
{
  v128[27] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((objc_msgSend_isAllZeroes(v6, v7, v8) & 1) == 0)
  {
    v123 = v5;
    v10 = objc_msgSend_componentsSeparatedByString_(v5, v9, @"≡");
    v124 = objc_msgSend_lookupAppBundle_(IAUtility, v11, *(a1 + 32));
    isEmojiSearchSetInFlagOptions = objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v12, *(a1 + 80));
    isMarkedTextSetInFlagOptions = objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v14, *(a1 + 80));
    v115 = objc_alloc(MEMORY[0x1E695DF90]);
    v127[0] = 0x1F4FDE458;
    v120 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v16, *(a1 + 88));
    v128[0] = v120;
    v127[1] = 0x1F4FDE478;
    v119 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v17, *(a1 + 96));
    v128[1] = v119;
    v127[2] = 0x1F4FDE498;
    v18 = MEMORY[0x1E696AD98];
    v21 = objc_msgSend_netCharacters(v6, v19, v20);
    v118 = objc_msgSend_numberWithLong_(v18, v22, v21);
    v128[2] = v118;
    v127[3] = 0x1F4FDE4B8;
    v23 = MEMORY[0x1E696AD98];
    v26 = objc_msgSend_userRemovedCharacters(v6, v24, v25);
    v117 = objc_msgSend_numberWithLong_(v23, v27, v26);
    v128[3] = v117;
    v127[4] = 0x1F4FDE4D8;
    v28 = MEMORY[0x1E696AD98];
    v31 = objc_msgSend_netEmojiCharacters(v6, v29, v30);
    v116 = objc_msgSend_numberWithLong_(v28, v32, v31);
    v128[4] = v116;
    v127[5] = 0x1F4FDE4F8;
    v33 = MEMORY[0x1E696AD98];
    v36 = objc_msgSend_userRemovedEmojiCharacters(v6, v34, v35);
    v114 = objc_msgSend_numberWithLong_(v33, v37, v36);
    v128[5] = v114;
    v127[6] = 0x1F4FDE518;
    v113 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v38, isEmojiSearchSetInFlagOptions);
    v128[6] = v113;
    v127[7] = 0x1F4FDE538;
    v112 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v39, isMarkedTextSetInFlagOptions);
    v128[7] = v112;
    v127[8] = 0x1F4FDE558;
    v40 = MEMORY[0x1E696AD98];
    v122 = v6;
    v43 = objc_msgSend_inputActions(v6, v41, v42);
    v111 = objc_msgSend_numberWithLong_(v40, v44, v43);
    v128[8] = v111;
    v127[9] = 0x1F4FDE6D8;
    v45 = MEMORY[0x1E696AD98];
    v47 = objc_msgSend_log10WholeNumberForUnsignedInt_(IATextInputActionsUtils, v46, *(*(a1 + 40) + 88));
    v110 = objc_msgSend_numberWithUnsignedLong_(v45, v48, v47);
    v128[9] = v110;
    v127[10] = 0x1F4FDE6F8;
    v49 = MEMORY[0x1E696AD98];
    v51 = objc_msgSend_log10WholeNumberForUnsignedInt_(IATextInputActionsUtils, v50, *(*(a1 + 40) + 96));
    v109 = objc_msgSend_numberWithUnsignedLong_(v49, v52, v51);
    v128[10] = v109;
    v127[11] = 0x1F4FDE718;
    v53 = MEMORY[0x1E696AD98];
    v55 = objc_msgSend_log10IntegerForInt_(IATextInputActionsUtils, v54, *(*(a1 + 40) + 104));
    v108 = objc_msgSend_numberWithUnsignedLong_(v53, v56, v55);
    v128[11] = v108;
    v127[12] = 0x1F4FDE738;
    v58 = *(a1 + 40);
    v59 = *(v58 + 120);
    if (v59 + *(v58 + 128))
    {
      v60 = MEMORY[0x1E695E118];
    }

    else
    {
      v60 = MEMORY[0x1E695E110];
    }

    v128[12] = v60;
    v127[13] = 0x1F4FDE758;
    v107 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v57, v59);
    v128[13] = v107;
    v127[14] = 0x1F4FDE778;
    v106 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v61, *(*(a1 + 40) + 128));
    v128[14] = v106;
    v127[15] = 0x1F4FDE578;
    v105 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v62, *(*(a1 + 40) + 80));
    v128[15] = v105;
    v127[16] = 0x1F4FDE598;
    v104 = objc_msgSend_sessionActionsString(*(a1 + 48), v63, v64);
    v128[16] = v104;
    v127[17] = 0x1F4FDE5B8;
    v65 = MEMORY[0x1E696AD98];
    HasOnlyPrimaryInput = objc_msgSend_sessionHasOnlyPrimaryInput(*(a1 + 48), v66, v67);
    v103 = objc_msgSend_numberWithBool_(v65, v69, HasOnlyPrimaryInput);
    v128[17] = v103;
    v127[18] = 0x1F4FDE5D8;
    v70 = MEMORY[0x1E696AD98];
    HasDictation = objc_msgSend_sessionHasDictation(*(a1 + 48), v71, v72);
    v75 = objc_msgSend_numberWithBool_(v70, v74, HasDictation);
    v128[18] = v75;
    v127[19] = 0x1F4FDDF18;
    v77 = objc_msgSend_objectAtIndexedSubscript_(v10, v76, 0);
    v128[19] = v77;
    v127[20] = 0x1F4FDDF38;
    v79 = objc_msgSend_objectAtIndexedSubscript_(v10, v78, 1);
    v128[20] = v79;
    v127[21] = 0x1F4FDE5F8;
    v81 = objc_msgSend_objectAtIndexedSubscript_(v10, v80, 2);
    v128[21] = v81;
    v127[22] = 0x1F4FDE618;
    v83 = objc_msgSend_objectAtIndexedSubscript_(v10, v82, 3);
    v128[22] = v83;
    v127[23] = 0x1F4FDE638;
    v85 = objc_msgSend_objectAtIndexedSubscript_(v10, v84, 4);
    v128[23] = v85;
    v127[24] = 0x1F4FDE658;
    v121 = v10;
    v87 = objc_msgSend_objectAtIndexedSubscript_(v10, v86, 5);
    v128[24] = v87;
    v128[25] = v124;
    v127[25] = 0x1F4FDE678;
    v127[26] = 0x1F4FDE698;
    v128[26] = *(*(*(a1 + 64) + 8) + 40);
    v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v88, v128, v127, 27);
    v91 = objc_msgSend_initWithDictionary_(v115, v90, v89);

    v94 = objc_msgSend_keyboardTrialParameters(*(a1 + 40), v92, v93);

    if (v94)
    {
      v97 = objc_msgSend_keyboardTrialParameters(*(a1 + 40), v95, v96);
      objc_msgSend_addEntriesFromDictionary_(v91, v98, v97);
    }

    v99 = *(*(*(a1 + 72) + 8) + 40);
    if (v99)
    {
      v125 = 0x1F4FDE6B8;
      v126 = v99;
      v100 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v95, &v126, &v125, 1);
      objc_msgSend_addEntriesFromDictionary_(v91, v101, v100);
    }

    (*(*(a1 + 56) + 16))();

    v6 = v122;
    v5 = v123;
  }

  v102 = *MEMORY[0x1E69E9840];
}

void *sub_1D461CBBC(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(a1, a2, a3);
  }

  return a1;
}

void sub_1D461D3F0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = sub_1D4611170();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 32))
    {
      v3 = @"success";
    }

    else
    {
      v3 = @"failure";
    }

    *buf = 138477827;
    v15 = v3;
    _os_log_impl(&dword_1D460F000, v2, OS_LOG_TYPE_INFO, "Logging %{private}@", buf, 0xCu);
  }

  v5 = &unk_1F4FE6D88;
  v6 = *(a1 + 32) == 0;
  v11 = @"xpcFailureCount";
  v12 = @"xpcSuccessCount";
  if (v6)
  {
    v7 = &unk_1F4FE6D88;
  }

  else
  {
    v7 = &unk_1F4FE6DA0;
  }

  if (v6)
  {
    v5 = &unk_1F4FE6DA0;
  }

  v13[0] = v7;
  v13[1] = v5;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v13, &v11, 2);
  objc_msgSend_dispatchEvent_payload_(IAEventDispatcher, v9, @"com.apple.inputAnalytics.serverStats", v8, v11, v12);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D461D7D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v4 = qword_1ED82C520;
  qword_1ED82C520 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void sub_1D461D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D461E318(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1D4620318(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1D4620338(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_1D4620350(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1D4620370(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id sub_1D4620388()
{
  if (qword_1EC7D6668 != -1)
  {
    sub_1D462E3C4();
  }

  v1 = qword_1EC7D6660;

  return v1;
}

uint64_t sub_1D46203CC()
{
  v0 = os_log_create("com.apple.inputAnalytics.server", "IASAnalyzerErrors");
  v1 = qword_1EC7D6660;
  qword_1EC7D6660 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4620410()
{
  if (qword_1ED82C538 != -1)
  {
    sub_1D462E3D8();
  }

  v1 = qword_1ED82C530;

  return v1;
}

uint64_t sub_1D4620454()
{
  v0 = os_log_create("com.apple.inputAnalytics.server", "IATextInputActions");
  v1 = qword_1ED82C530;
  qword_1ED82C530 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D4620700()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7[0] = @"IADataStoreBoolean";
  v7[1] = @"IADataStoreCounter";
  v7[2] = @"IADataStoreDaterange";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1, v7, 3);
  v4 = objc_msgSend_initWithArray_(v0, v3, v2);
  v5 = qword_1EC7D6670;
  qword_1EC7D6670 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D4620EDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id sub_1D4620EF8()
{
  if (qword_1ED82C518 != -1)
  {
    sub_1D462E7A8();
  }

  v1 = qword_1EC7D6638;

  return v1;
}

uint64_t sub_1D4620F3C()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "GlomojiAnalytics");
  v1 = qword_1EC7D6638;
  qword_1EC7D6638 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4620F80()
{
  if (qword_1EC7D6688 != -1)
  {
    sub_1D462E7BC();
  }

  v1 = qword_1EC7D6680;

  return v1;
}

uint64_t sub_1D4620FC4()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IATextInputUserPreferenceAnalytics");
  v1 = qword_1EC7D6680;
  qword_1EC7D6680 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4621008()
{
  if (qword_1EC7D6640 != -1)
  {
    sub_1D462E7D0();
  }

  v1 = qword_1EC7D6648;

  return v1;
}

uint64_t sub_1D462104C()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IADefaultsDataStore");
  v1 = qword_1EC7D6648;
  qword_1EC7D6648 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1D4621090()
{
  if (qword_1EC7D6698 != -1)
  {
    sub_1D462E7E4();
  }

  v1 = qword_1EC7D6690;

  return v1;
}

uint64_t sub_1D46210D4()
{
  v0 = os_log_create("com.apple.inputAnalytics.client", "IAEventDispatcher");
  v1 = qword_1EC7D6690;
  qword_1EC7D6690 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1D4621C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1D4621C64(void *a1)
{
  v2 = sub_1D4610F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E7F8(a1);
  }
}

void sub_1D4621CB0(void *a1)
{
  v2 = sub_1D4610F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E86C(a1);
  }
}

void sub_1D4621CFC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E8E0(v2, v3, v4);
  }
}

void sub_1D4621D50(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1D4610F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1D462E8E0(v2, v3, v4);
  }
}

void sub_1D4621FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4621FC8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = sub_1D4610F0C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1D460F000, v2, OS_LOG_TYPE_INFO, "invalidateConnection successfully invalidated 0x%lx", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void *sub_1D462211C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(result[4] + 8) + 24);
  v4 = *(*(result[5] + 8) + 24);
  v5 = *(*(result[6] + 8) + 24);
  return result;
}

void *sub_1D462217C(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return objc_msgSend_setObject_forKey_(a1, a2, a3);
  }

  return a1;
}

void sub_1D4623B10(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@=%@", a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

uint64_t sub_1D4627C68()
{

  return objc_opt_class();
}

void sub_1D4627E38()
{
  v0 = qword_1ED82C5D8;
  qword_1ED82C5D8 = &unk_1F4FE6DB8;
}

uint64_t sub_1D46284AC@<X0>(const char **a1@<X0>, const char **a2@<X1>, const char **a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v67 = a7;
  v68 = a6;
  v66 = a5;
  v69 = a8;
  v70 = a3;
  v11 = *(*(sub_1D462AD20(&qword_1EC7D65B0, &qword_1D4631F10) - 8) + 64);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v71 = &v60 - v12;
  v13 = sub_1D462EF34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = (v14 + 56);
  v17 = (v15)(&v60 - v12, 1, 1, v13);
  v18 = (a2 >> 56) & 0xF;
  v19 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = MEMORY[0x1E699C5C8];
  if (v18)
  {
    v64 = &v60;
    MEMORY[0x1EEE9AC00](v17);
    v65 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = &v60 - v12;
    v22 = sub_1D462EF44();
    v63 = &v60;
    v23 = *(*(v22 - 8) + 64);
    MEMORY[0x1EEE9AC00](v22);
    v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v62 = v19;
    *v25 = v19;
    v25[1] = a2;
    (*(v26 + 104))(v25, *v20);
    v60 = "T@NSString,N,C";
    v27 = sub_1D462AD20(&qword_1EC7D65B8, &qword_1D4631F18);
    v61 = &v60;
    v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v27 - 8);
    v30 = &v60 - v29;
    v31 = sub_1D462EF24();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    swift_bridgeObjectRetain_n();
    v20 = MEMORY[0x1E699C5C8];
    v32 = v71;
    sub_1D462EF14();
    sub_1D462BF60(v32, &qword_1EC7D65B0, &qword_1D4631F10);
    (v15)(v21, 0, 1, v13);
    v33 = v21;
    v12 = v65;
    v17 = sub_1D462BFC0(v33, v32);
  }

  v65 = &v60;
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v60 - v12;
  v35 = (v15)(&v60 - v12, 1, 1, v13);
  v36 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v36 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v64 = &v60;
    MEMORY[0x1EEE9AC00](v35);
    v63 = v16;
    v37 = sub_1D462EF44();
    v62 = &v60;
    v38 = *(*(v37 - 8) + 64);
    MEMORY[0x1EEE9AC00](v37);
    v40 = (&v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v40 = v70;
    v40[1] = a4;
    (*(v41 + 104))(v40, *v20);
    v61 = v15;
    v42 = sub_1D462AD20(&qword_1EC7D65B8, &qword_1D4631F18);
    v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v42 - 8);
    v45 = &v60 - v44;
    v46 = sub_1D462EF24();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    swift_bridgeObjectRetain_n();
    sub_1D462EF14();
    sub_1D462BF60(v34, &qword_1EC7D65B0, &qword_1D4631F10);
    (v61)(&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v13);
    sub_1D462BFC0(&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  }

  v47 = sub_1D462EEF4();
  v70 = &v60;
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = (*(v50 + 16))(&v60 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
  MEMORY[0x1EEE9AC00](v51);
  v52 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = v71;
  v54 = sub_1D462C030(v71, &v60 - v52, &qword_1EC7D65B0, &qword_1D4631F10);
  MEMORY[0x1EEE9AC00](v54);
  sub_1D462C030(v34, &v60 - v52, &qword_1EC7D65B0, &qword_1D4631F10);
  objc_allocWithZone(sub_1D462EF54());

  v55 = sub_1D462EF04();
  sub_1D462BF60(v34, &qword_1EC7D65B0, &qword_1D4631F10);
  sub_1D462BF60(v53, &qword_1EC7D65B0, &qword_1D4631F10);
  v56 = v69;
  *v69 = v55;
  v57 = *MEMORY[0x1E699C210];
  v58 = sub_1D462EEE4();
  return (*(*(v58 - 8) + 104))(v56, v57, v58);
}

uint64_t sub_1D4628C9C()
{
  v0 = sub_1D462EF84();
  sub_1D462C0F8(v0, qword_1EC7D66A8);
  sub_1D462B8C0(v0, qword_1EC7D66A8);
  return sub_1D462EF74();
}

id sub_1D4628D80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1D462EF94();

  return v6;
}

uint64_t sub_1D4628DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D462EFA4();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id sub_1D4628F08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_modelInfo];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_featureDomain] = a1;
  *&v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_action] = a2;
  v10 = 1701736270;
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1701736270;
  }

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_originalContent];
  *v13 = v11;
  v13[1] = v12;
  if (a6)
  {
    v10 = a5;
    v14 = a6;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = &v8[OBJC_IVAR___IAFeedbackServiceSwiftBridge_generatedContent];
  *v15 = v10;
  v15[1] = v14;
  v16 = *(v9 + 1);
  *v9 = a7;
  *(v9 + 1) = a8;

  v18.receiver = v8;
  v18.super_class = IAFeedbackServiceSwiftBridge;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1D4629098()
{
  v66 = v0;
  if (qword_1EC7D66A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D462EF84();
  *(v0 + 40) = sub_1D462B8C0(v2, qword_1EC7D66A8);
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F014();

  v6 = &dword_1E848B000;
  v7 = &dword_1E848B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v65 = v10;
    *v9 = 136315651;
    *(v0 + 24) = [v8 featureDomain];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v11 = sub_1D462EFB4();
    v13 = sub_1D462B8F8(v11, v12, &v65);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2085;
    v14 = [v8 originalContent];
    v15 = sub_1D462EFA4();
    v17 = v16;

    v18 = sub_1D462B8F8(v15, v17, &v65);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2085;
    v19 = [v8 generatedContent];
    v20 = sub_1D462EFA4();
    v22 = v21;

    v23 = sub_1D462B8F8(v20, v22, &v65);
    v7 = &dword_1E848B000;

    *(v9 + 24) = v23;
    v6 = &dword_1E848B000;
    _os_log_impl(&dword_1D460F000, v4, v5, "reportPresented with domain '%s', input '%{sensitive}s', output '%{sensitive}s'", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6DC650](v10, -1, -1);
    MEMORY[0x1DA6DC650](v9, -1, -1);
  }

  v24 = *(v0 + 32);
  v25 = sub_1D462EEF4();
  *(v0 + 48) = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  *(v0 + 56) = v28;
  v29 = [v24 *(v6 + 7)];
  if (!v29)
  {
    v30 = MEMORY[0x1E699C2A0];
    goto LABEL_9;
  }

  if (v29 == 1)
  {
    v30 = MEMORY[0x1E699C288];
LABEL_9:
    v31 = *(v0 + 32);
    (*(v26 + 104))(v28, *v30, v25);
    v32 = sub_1D462EEE4();
    *(v0 + 64) = v32;
    v33 = *(v32 - 8);
    *(v0 + 72) = v33;
    v34 = *(v33 + 64) + 15;
    v64 = swift_task_alloc();
    *(v0 + 80) = v64;
    v35 = [v31 originalContent];
    v63 = sub_1D462EFA4();
    v37 = v36;

    v38 = [v31 *(v7 + 10)];
    v39 = sub_1D462EFA4();
    v41 = v40;

    v42 = swift_task_alloc();
    (*(v26 + 16))(v42, v28, v25);
    v43 = [v31 modelInfo];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1D462EFA4();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_1D46284AC(v63, v37, v39, v41, v42, v45, v47, v64);

    v60 = *(v26 + 8);
    *(v0 + 88) = v60;
    *(v0 + 96) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v42, v25);

    v61 = *(MEMORY[0x1E699C240] + 4);
    v62 = swift_task_alloc();
    *(v0 + 104) = v62;
    *v62 = v0;
    v62[1] = sub_1D46296D0;

    return MEMORY[0x1EEE03F18]();
  }

  v48 = *(v0 + 32);
  v49 = sub_1D462EF64();
  v50 = sub_1D462F024();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 32);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v52 = 136315138;
    *(v0 + 16) = [v51 *(v6 + 7)];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v54 = sub_1D462EFB4();
    v56 = sub_1D462B8F8(v54, v55, &v65);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_1D460F000, v49, v50, "Unexpected feature domain: %s.", v52, 0xCu);
    sub_1D462BEB4(v53);
    MEMORY[0x1DA6DC650](v53, -1, -1);
    MEMORY[0x1DA6DC650](v52, -1, -1);
  }

  v57 = *(v0 + 56);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1D46296D0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D462988C;
  }

  else
  {
    v3 = sub_1D46297E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D46297E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2(v3, v4);

  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D462988C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F024();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D460F000, v4, v5, "Unexpected error: %@.", v8, 0xCu);
    sub_1D462BF60(v9, &qword_1EC7D65A8, &qword_1D4631F08);
    MEMORY[0x1DA6DC650](v9, -1, -1);
    MEMORY[0x1DA6DC650](v8, -1, -1);
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[7];
  v15 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v13(v14, v15);

  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D4629B90(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D462C358;

  return sub_1D4629078();
}

uint64_t sub_1D4629C58()
{
  v88 = v0;
  if (qword_1EC7D66A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1D462EF84();
  *(v0 + 56) = sub_1D462B8C0(v2, qword_1EC7D66A8);
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F014();

  v6 = &dword_1E848B000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v87 = v9;
    *v8 = 136315907;
    *(v0 + 32) = [v7 featureDomain];
    type metadata accessor for IAFBKSInteractionFeatureDomain(0);
    v10 = sub_1D462EFB4();
    v12 = sub_1D462B8F8(v10, v11, &v87);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 40) = [v7 action];
    type metadata accessor for IAFBKSEvaluationAction(0);
    v13 = sub_1D462EFB4();
    v15 = sub_1D462B8F8(v13, v14, &v87);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2085;
    v16 = [v7 originalContent];
    v17 = sub_1D462EFA4();
    v19 = v18;

    v20 = sub_1D462B8F8(v17, v19, &v87);

    *(v8 + 24) = v20;
    *(v8 + 32) = 2085;
    v21 = [v7 generatedContent];
    v22 = sub_1D462EFA4();
    v24 = v23;

    v25 = sub_1D462B8F8(v22, v24, &v87);

    *(v8 + 34) = v25;
    _os_log_impl(&dword_1D460F000, v4, v5, "launchFeedback with domain '%s', action '%s', input '%{sensitive}s', output '%{sensitive}s'", v8, 0x2Au);
    swift_arrayDestroy();
    v26 = v9;
    v6 = &dword_1E848B000;
    MEMORY[0x1DA6DC650](v26, -1, -1);
    MEMORY[0x1DA6DC650](v8, -1, -1);
  }

  v27 = *(v0 + 48);
  v28 = sub_1D462EEF4();
  *(v0 + 64) = v28;
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  *(v0 + 72) = v32;
  v33 = sub_1D462EEB4();
  *(v0 + 80) = v33;
  v34 = *(v33 - 8);
  v35 = v34;
  *(v0 + 88) = v34;
  v36 = *(v34 + 64) + 15;
  v85 = swift_task_alloc();
  *(v0 + 96) = v85;
  v37 = [v27 featureDomain];
  if (v37)
  {
    if (v37 != 1)
    {
      v68 = *(v0 + 48);
      v69 = sub_1D462EF64();
      v70 = sub_1D462F024();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = *(v0 + 48);
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v87 = v73;
        *v72 = 136315138;
        *(v0 + 16) = [v71 &selRef_count];
        type metadata accessor for IAFBKSInteractionFeatureDomain(0);
        v74 = sub_1D462EFB4();
        v76 = sub_1D462B8F8(v74, v75, &v87);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_1D460F000, v69, v70, "Unexpected feature domain: %s.", v72, 0xCu);
        sub_1D462BEB4(v73);
        MEMORY[0x1DA6DC650](v73, -1, -1);
        MEMORY[0x1DA6DC650](v72, -1, -1);
      }

      goto LABEL_18;
    }

    v38 = MEMORY[0x1E699C288];
  }

  else
  {
    v38 = MEMORY[0x1E699C2A0];
  }

  v39 = *(v0 + 48);
  (*(v30 + 104))(v32, *v38, v29);
  v40 = [v39 *(v6 + 8)];
  if ((v40 - 1) < 3)
  {
    v41 = *(v0 + 48);
    (*(v35 + 104))(v85, **(&unk_1E848AE00 + (v40 - 1)), v33);
    v42 = sub_1D462EEE4();
    *(v0 + 104) = v42;
    v43 = *(v42 - 8);
    *(v0 + 112) = v43;
    v44 = *(v43 + 64) + 15;
    v45 = swift_task_alloc();
    *(v0 + 120) = v45;
    v46 = [v41 originalContent];
    v86 = sub_1D462EFA4();
    v48 = v47;

    v49 = [v41 generatedContent];
    v84 = sub_1D462EFA4();
    v51 = v50;

    v52 = swift_task_alloc();
    (*(v30 + 16))(v52, v32, v29);
    v53 = [v41 modelInfo];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1D462EFA4();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    sub_1D46284AC(v86, v48, v84, v51, v52, v55, v57, v45);

    v81 = *(v30 + 8);
    *(v0 + 128) = v81;
    *(v0 + 136) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81(v52, v29);

    v82 = *(MEMORY[0x1E699C220] + 4);
    v83 = swift_task_alloc();
    *(v0 + 144) = v83;
    *v83 = v0;
    v83[1] = sub_1D462A4C4;

    return MEMORY[0x1EEE03F00](v85, 1);
  }

  v58 = v6;
  v59 = *(v0 + 48);
  v60 = sub_1D462EF64();
  v61 = sub_1D462F024();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v0 + 48);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v87 = v64;
    *v63 = 136315138;
    *(v0 + 24) = [v62 v58 + 2296];
    type metadata accessor for IAFBKSEvaluationAction(0);
    v65 = sub_1D462EFB4();
    v67 = sub_1D462B8F8(v65, v66, &v87);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_1D460F000, v60, v61, "Unexpected action: %s.", v63, 0xCu);
    sub_1D462BEB4(v64);
    MEMORY[0x1DA6DC650](v64, -1, -1);
    MEMORY[0x1DA6DC650](v63, -1, -1);
  }

  (*(v30 + 8))(v32, v29);
LABEL_18:
  v77 = *(v0 + 96);
  v78 = *(v0 + 72);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1D462A4C4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D462A6B0;
  }

  else
  {
    v3 = sub_1D462A5D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D462A5D8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v5 + 8))(v3, v4);
  v2(v6, v7);

  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D462A6B0()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1D462EF64();
  v5 = sub_1D462F024();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D460F000, v4, v5, "Unexpected error: %@.", v8, 0xCu);
    sub_1D462BF60(v9, &qword_1EC7D65A8, &qword_1D4631F08);
    MEMORY[0x1DA6DC650](v9, -1, -1);
    MEMORY[0x1DA6DC650](v8, -1, -1);
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v16 + 8))(v14, v15);
  v13(v17, v18);

  v19 = v0[12];
  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D462A9E4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D462AA8C;

  return sub_1D4629C38();
}

uint64_t sub_1D462AA8C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

id IAFeedbackServiceSwiftBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IAFeedbackServiceSwiftBridge()
{
  result = qword_1EC7D66C0;
  if (!qword_1EC7D66C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D66C0);
  }

  return result;
}

uint64_t sub_1D462AD20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D462AD68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D462C354;

  return sub_1D462A9E4(v2, v3);
}

uint64_t sub_1D462AE14(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D462C354;

  return v7();
}

uint64_t sub_1D462AEFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D462C354;

  return sub_1D462AE14(v2, v3, v5);
}

uint64_t sub_1D462AFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D462B0A4;

  return v8();
}

uint64_t sub_1D462B0A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D462B198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D462C354;

  return sub_1D462AFBC(a1, v4, v5, v7);
}

uint64_t sub_1D462B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1D462AD20(&qword_1EC7D65A0, &qword_1D4631EB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - v10;
  sub_1D462C030(a3, v24 - v10, &qword_1EC7D65A0, &qword_1D4631EB0);
  v12 = sub_1D462F004();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D462BF60(v11, &qword_1EC7D65A0, &qword_1D4631EB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D462EFF4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1D462EFE4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1D462EFC4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1D462BF60(a3, &qword_1EC7D65A0, &qword_1D4631EB0);

    return v22;
  }

LABEL_8:
  sub_1D462BF60(a3, &qword_1EC7D65A0, &qword_1D4631EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D462B560(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D462B658;

  return v7(a1);
}

uint64_t sub_1D462B658()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D462B750(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D462C354;

  return sub_1D462B560(a1, v5);
}

uint64_t sub_1D462B808(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D462B0A4;

  return sub_1D462B560(a1, v5);
}

uint64_t sub_1D462B8C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D462B8F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D462B9C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D462C098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1D462BEB4(v11);
  return v7;
}

unint64_t sub_1D462B9C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D462BAD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D462F044();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D462BAD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D462BB1C(a1, a2);
  sub_1D462BC4C(&unk_1F4FDA690);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D462BB1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D462BD38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D462F044();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D462EFD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D462BD38(v10, 0);
        result = sub_1D462F034();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D462BC4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D462BDAC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D462BD38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D462AD20(&qword_1EC7D65C0, &qword_1D4631F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D462BDAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D462AD20(&qword_1EC7D65C0, &qword_1D4631F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D462BEB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1D462BF14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D462BF60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1D462AD20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D462BFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D462AD20(&qword_1EC7D65B0, &qword_1D4631F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D462C030(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1D462AD20(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D462C098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1D462C0F8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1D462C15C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D462C19C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D462C354;

  return sub_1D4629B90(v2, v3);
}

uint64_t sub_1D462C248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D462C288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D462B0A4;

  return sub_1D462AFBC(a1, v4, v5, v7);
}

void sub_1D462C3AC()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462C3E8(void *a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_flagOptions(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4616B90(&dword_1D460F000, v3, v4, "[IATextInputActionsAnalytics] mergeOrConsumeAction: Unacceptable flagOptions value of %lu set for new action:%{private}@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1D462C50C()
{
  sub_1D4616B84();
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_description(v0, v0, v1);
  sub_1D4616ADC();
  sub_1D4616B90(&dword_1D460F000, v3, v4, "[IATextInputActionsAnalytics] didInsertText: selectedTextBefore:%{sensitive}@ withInputMode:%{private}@ called with nil text", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1D462C59C()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462C5D8()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  _os_log_debug_impl(&dword_1D460F000, v0, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didDeleteBackwardText:%{sensitive}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D462C64C()
{
  sub_1D4616B84();
  v8 = *MEMORY[0x1E69E9840];
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D462C6EC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringForType_(IATextInputActionsUtils, a2, a1);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D462C894()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1D462C914()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616B58(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] _didReplacementForText:%{sensitive}@ withText:%{sensitive}@ had disallowed empty text");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462C97C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1D462C9F8()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didCandidateBarReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CA60()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didCalloutBarReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CAC8()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didAutocorrectReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CB30()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didAutocorrectTapOnCompletionReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CB98()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didInlineCompletionReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CC00()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didInlineCompletionTapOnCompletionReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CC68()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didRevisionBubbleReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CD04(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringForReplaceWithCandidateType_(IATextInputActionsUtils, a2, a1);
  sub_1D4616B4C();
  sub_1D4616B30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D462CD9C()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didCompositionReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CE04()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didDecompositionReplacementForText:%{sensitive}@ withText:%{sensitive}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CE6C()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616B58(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didConversionForMarkedText:%{sensitive}@ withText:%{sensitive}@ marked text incorrectly set");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CED4()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616B58(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didConversionForMarkedText:%{sensitive}@ withText:%{sensitive}@ had disallowed empty text");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CF3C()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616AC4();
  sub_1D4616B58(&dword_1D460F000, v0, v1, "[IATextInputActionsAnalytics] didConversionForMarkedText:%{sensitive}@ withText:%{sensitive}@ had disallowed nil replacement");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462CFA4()
{
  sub_1D4616B84();
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_analyticsDelegate(v0, v0, v1);
  objc_msgSend_source(v2, v3, v4);
  sub_1D4616B30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D050()
{
  sub_1D4616B40();
  sub_1D4616B78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1D462D1F8()
{
  sub_1D4616B84();
  v8 = *MEMORY[0x1E69E9840];
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D462D2CC()
{
  sub_1D4616B84();
  v8 = *MEMORY[0x1E69E9840];
  v1 = objc_msgSend_stringForType_(IATextInputActionsUtils, v0, v0);
  sub_1D4616ADC();
  sub_1D4616B30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D462D380(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D418(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withNullableSessionID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D4B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "asyncSendSignal:toChannel:withNullableSessionID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D548(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "sendSignal:toChannel:withNullableUniqueStringID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D5E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_server(qword_1ED82C5F0, a2, a3);
  sub_1D46179E4();
  sub_1D46179FC(&dword_1D460F000, v4, v5, "asyncSendSignal:toChannel:withNullableUniqueStringID:withPayload: server does not respond to didAction. xpc client 0x%lx with server 0x%lx", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462D724()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D461BF04();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IASTextInputActionsAnalyzer] New key found - initializing new array for key %{private}@ with capacity %lu");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462D78C()
{
  sub_1D461BF1C();
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_count(v0, v1, v2);
  sub_1D4616B90(&dword_1D460F000, v3, v4, "Attempt to access index %lu, which is out of bounds for array with capacity %lu", v5, v6, v7, v8, 0);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1D462D814()
{
  sub_1D461BF1C();
  v3 = v2;
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v1, @"IASTextInputActionsAnalyzer.m", 255, @"Attempt to access index %lu, which is much larger than expected", v0);
}

void sub_1D462D884()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1D461BF04();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IASTextInputActionsAnalyzer] New key found - initializing new array for key %lu with capacity %lu", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462D8EC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1D461BF04();
  sub_1D4616AF4(&dword_1D460F000, v0, v1, "[IASTextInputActionsAnalyzer] New key found - initializing new dictionary for key %lu with capacity %lu", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462D994(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IASTextInputActionsAnalyzer.m", 355, @"nil raw action passed to [IASTextInputActionsAnalyzer consumeAction:]");
}

void sub_1D462DA08()
{
  sub_1D461BF1C();
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_analyzerSessionId(v1, v2, v3);
  v7 = objc_msgSend_description(v4, v5, v6);
  v17 = objc_msgSend_description(v0, v8, v9);
  sub_1D4616B90(&dword_1D460F000, v10, v11, "[%{private}@]nil inputMode passed to [IASTextInputActionsAnalyzer consumeAction:] in action '%{private}@'", v12, v13, v14, v15, 3u);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1D462DB64()
{
  sub_1D461BF1C();
  v3 = v2;
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, *(v3 + 64), *(v3 + 32), @"IASTextInputActionsAnalyzer.m", 524, @"Received sessionActions of NotYetKnown despite providing action type");

  *v0 = *(*(*v1 + 8) + 24);
}

void sub_1D462DC4C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1D460F000, a2, OS_LOG_TYPE_ERROR, "Invalid error code '%{private}@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462DE10()
{
  sub_1D462037C();
  sub_1D4620370(v1, v2, 5.7779e-34);
  sub_1D4620338(&dword_1D460F000, v3, v3, "Unable to initlialize object with name %@", v4);
}

void sub_1D462DE58(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to get strong reference to datastoreHandle for object with name %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462DEDC(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ is destroyed/stale", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462DFA4(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to persist base properties for object with name %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E028(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to destroy base properties for object with name %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E0AC(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Counter with name %@ attempted to be set below 0", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E130(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] month failed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E1B4(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] week failed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E238(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620350(&dword_1D460F000, v4, v5, "usageFrequency [%{private}@] daily failed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E2BC(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Unable to update start date for daterange with name %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E340(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Negative time interval found when cycling daterange with name %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E3EC(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = @"com.apple.";
  v5 = 2113;
  v6 = a1;
  _os_log_fault_impl(&dword_1D460F000, a2, OS_LOG_TYPE_FAULT, "IADefaultsDataStore datastoreName should start with '%{private}@', got '%{private}@'", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462E48C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  sub_1D4620EDC(&dword_1D460F000, v0, v1, "Object with name %@ not allowed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D462E4F4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  sub_1D4620EDC(&dword_1D460F000, v0, v1, "Type not recognized: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D462E55C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  sub_1D4620EDC(&dword_1D460F000, v0, v1, "Object could not be initialized: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D462E5C4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  sub_1D4620EDC(&dword_1D460F000, v0, v1, "Object with name %@ already exists", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1D462E62C(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ cannot be deleted because it does not exist", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E6B0(void *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_name(a1, a2, a3);
  sub_1D4616B4C();
  sub_1D4620318(&dword_1D460F000, v4, v5, "Object with name %@ cannot be deleted because it could not be destroyed", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D462E734()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D4616B4C();
  _os_log_debug_impl(&dword_1D460F000, v0, OS_LOG_TYPE_DEBUG, "Object with name %@ cannot be acquired because it does not exist, creating it instead", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D462E7F8(void *a1)
{
  sub_1D462211C(a1, *MEMORY[0x1E69E9840]);
  sub_1D4622144();
  _os_log_error_impl(&dword_1D460F000, v1, OS_LOG_TYPE_ERROR, "Interrupted 0x%lx _connection 0x%lx _server 0x%lx", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462E86C(void *a1)
{
  sub_1D462211C(a1, *MEMORY[0x1E69E9840]);
  sub_1D4622144();
  _os_log_error_impl(&dword_1D460F000, v1, OS_LOG_TYPE_ERROR, "Invalidated 0x%lx _connection 0x%lx _server 0x%lx", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D462E8E0(void *a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_localizedDescription(a1, a2, a3);
  v7 = objc_msgSend_localizedFailureReason(a1, v5, v6);
  sub_1D4622164();
  sub_1D4616B90(&dword_1D460F000, v8, v9, "Error on remote object proxy: %{private}@ %{private}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1D462E984()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EA08()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EA8C()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EB10()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EB94()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set insertedEmojiCount on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EC18()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set removedEmojiCount on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EC9C()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set insertedPunctuationCount on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462ED20()
{
  sub_1D4627C50();
  objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1D4627C68();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  sub_1D4627C5C();
  v10 = sub_1D4627C40(v4, v5, v6, v7, @"IATextInputActionsSessionAction.m", v8, @"Attempted to set removedPunctuationCount on an action of class %@, which does not support changing content", v9, v13, v14);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, v12);
}

void sub_1D462EE40(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IASAnalyzer.m", 66, @"To use createTimerWithDelay, queue must be set on the analyzer");
}