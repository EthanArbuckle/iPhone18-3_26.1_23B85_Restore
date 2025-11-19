uint64_t sub_256023E20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256023E58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256023E94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256023F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_256024004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25602405C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_2560240C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_2560240F8()
{
  v1 = sub_25605347C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2560241D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256024210()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_256024248()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_256024284()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_256025368(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXLTSpeechTranscriber setupAudioEngineTap];
    }

    objc_end_catch();
    JUMPOUT(0x256025350);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id AXLCLiveCaptionsSelectedLocaleIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v9 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getAXSettingsClass_block_invoke;
    v5[3] = &unk_27981CC28;
    v5[4] = &v6;
    __getAXSettingsClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedInstance];
  v3 = [v2 liveCaptionsSelectedLocaleIdentifier];

  return v3;
}

void sub_25602CFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXLCLocString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.accessibility.LiveTranscription"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v5;
}

uint64_t isInternalInstall()
{
  if (isInternalInstall__AXIsInternalInstallOnceToken != -1)
  {
    isInternalInstall_cold_1();
  }

  return isInternalInstall__AXIsInternalInstall;
}

uint64_t __isInternalInstall_block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalInstall__AXIsInternalInstall = result;
  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27981CC48;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25602D6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25602E098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void handleInputBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = AXLogLiveTranscription();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    handleInputBuffer_cold_1(a5, v12);
  }

  v13 = +[AXLTAudioOutManager sharedInstance];
  [v13 handleInputBufferWithContext:a1 audioQueue:a2 audioBuffer:a3 timestamp:a4 packetCount:a5 packetDesc:a6];
}

uint64_t sub_256030270()
{
  result = sub_25605380C();
  byte_27F8260B8 = result;
  return result;
}

uint64_t sub_256030290()
{
  result = sub_25605380C();
  byte_27F8260B9 = result;
  return result;
}

id sub_2560302B0()
{
  result = AXLogLiveTranscription();
  if (result)
  {
    qword_27F8260C0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_256030300@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_256033148(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_256030354()
{
  v1 = *v0;
  sub_2560539CC();
  MEMORY[0x259C57720](v1);
  return sub_256053A0C();
}

uint64_t sub_25603039C()
{
  v1 = *v0;
  sub_2560539CC();
  MEMORY[0x259C57720](v1);
  return sub_256053A0C();
}

unint64_t sub_2560303E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_256033158(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AXLiveCaptionSourceInfo.appID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
  v2 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8);

  return v1;
}

uint64_t AXLiveCaptionSourceInfo.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
  v2 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8);

  return v1;
}

uint64_t sub_256030604@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v4 = sub_25605347C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2560307A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v4 = sub_25605347C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_256030830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v5 = sub_25605347C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2560308BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

id AXLiveCaptionSourceInfo.__allocating_init(sourceType:pid:appID:appName:locale:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = &v33 - v14;
  v16 = sub_25605347C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = (MEMORY[0x28223BE20])();
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v36 = v8;
  v24 = objc_allocWithZone(v8);
  *&v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] = a1;
  *&v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] = a2;
  v25 = &v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID];
  v26 = v33;
  v27 = v34;
  *v25 = a3;
  *(v25 + 1) = v26;
  v28 = &v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
  v29 = v35;
  *v28 = v27;
  *(v28 + 1) = v29;
  sub_2560331D0(a7, v15, &qword_27F8256A8, &qword_2560559A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_256033238(v15, &qword_27F8256A8, &qword_2560559A0);
    sub_25605343C();
    (*(v17 + 32))(&v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v21, v16);
  }

  else
  {
    v30 = *(v17 + 32);
    v30(v23, v15, v16);
    v30(&v24[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v23, v16);
  }

  v37.receiver = v24;
  v37.super_class = v36;
  v31 = objc_msgSendSuper2(&v37, sel_init, v33, v34, v35);
  sub_256033238(a7, &qword_27F8256A8, &qword_2560559A0);
  return v31;
}

id AXLiveCaptionSourceInfo.init(sourceType:pid:appID:appName:locale:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_25605347C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  *&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] = a1;
  *&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] = a2;
  v24 = &v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID];
  v25 = v34;
  v26 = v35;
  *v24 = a3;
  *(v24 + 1) = v25;
  v27 = &v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
  v28 = v36;
  *v27 = v26;
  *(v27 + 1) = v28;
  sub_2560331D0(a7, v15, &qword_27F8256A8, &qword_2560559A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_256033238(v15, &qword_27F8256A8, &qword_2560559A0);
    sub_25605343C();
    (*(v17 + 32))(&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v21, v16);
  }

  else
  {
    v29 = *(v17 + 32);
    v29(v23, v15, v16);
    v29(&v7[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale], v23, v16);
  }

  v30 = type metadata accessor for AXLiveCaptionSourceInfo(0);
  v37.receiver = v7;
  v37.super_class = v30;
  v31 = objc_msgSendSuper2(&v37, sel_init);
  sub_256033238(a7, &qword_27F8256A8, &qword_2560559A0);
  return v31;
}

uint64_t sub_2560310D0()
{
  v1 = v0;
  v2 = sub_25605347C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2560538FC();

  strcpy(v19, "source type:");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v7 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = 0xE800000000000000;
      v9 = 0x6B6E696C6E776F64;
      goto LABEL_10;
    }

    if (v7 == 3)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6B6E696C7075;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 0xE300000000000000;
      v9 = 6515053;
LABEL_10:
      MEMORY[0x259C57450](v9, v8);

      MEMORY[0x259C57450](0x203A64697020, 0xE600000000000000);
      LODWORD(v17) = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid);
      v10 = sub_25605397C();
      MEMORY[0x259C57450](v10);

      MEMORY[0x259C57450](0x656D614E70706120, 0xEA0000000000203ALL);
      MEMORY[0x259C57450](*(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8));
      MEMORY[0x259C57450](0x3A656C61636F6C20, 0xE900000000000020);
      v11 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
      swift_beginAccess();
      (*(v3 + 16))(v6, v1 + v11, v2);
      v12 = sub_2560533DC();
      v14 = v13;
      (*(v3 + 8))(v6, v2);
      MEMORY[0x259C57450](v12, v14);

      return v19[0];
    }

    if (v7 == 1)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6D6574737973;
      goto LABEL_10;
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);
  result = sub_25605399C();
  __break(1u);
  return result;
}

uint64_t sub_25603138C(uint64_t a1)
{
  v3 = sub_25605347C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_2560331D0(a1, v20, &qword_27F8256B0, &qword_2560559A8);
  if (!v21)
  {
    sub_256033238(v20, &qword_27F8256B0, &qword_2560559A8);
    goto LABEL_11;
  }

  type metadata accessor for AXLiveCaptionSourceInfo(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  v11 = v19;
  if (*(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType) != *&v19[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType] || *(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid) != *&v19[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid] || (*(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID) != *&v19[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID] || *(v1 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8) != *&v19[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8]) && (sub_25605398C() & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v13 = v4[2];
  v13(v10, v1 + v12, v3);
  v14 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v13(v8, &v11[v14], v3);
  v15 = MEMORY[0x259C57160](v10, v8);

  v16 = v4[1];
  v16(v8, v3);
  v16(v10, v3);
  return v15 & 1;
}

uint64_t sub_2560316B8()
{
  v1 = v0;
  v2 = sub_25605347C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_256053A1C();
  MEMORY[0x259C57720](*(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType));
  v7 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_pid);
  sub_2560539EC();
  v8 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
  v9 = *(v0 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8);
  sub_2560536EC();
  v10 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v10, v2);
  sub_2560332F0(&qword_27F8256B8, MEMORY[0x277CC9788]);
  sub_25605367C();
  (*(v3 + 8))(v6, v2);
  return sub_2560539FC();
}

id AXLiveCaption.init(source:transcriptionResult:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v43 = sub_25605332C();
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25605335C();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256C0, &qword_2560559B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_25605350C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  sub_2560533AC();
  v46 = a2;
  sub_2560331D0(a2, v13, &qword_27F8256C0, &qword_2560559B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_256033238(v13, &qword_27F8256C0, &qword_2560559B0);
    *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = 3;
    sub_25605334C();
    (*(v6 + 32))(&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v9, v44);
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_2560534FC();
    sub_25605331C();
    v22 = v44;
    (*(v6 + 8))(v9, v44);
    sub_2560332F0(&qword_27F8256C8, MEMORY[0x277CC8B30]);
    v20 = sub_25605373C();
    v21 = v23;
    sub_2560534FC();
    (*(v6 + 32))(&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v9, v22);
    v24 = sub_25605354C();
    (*(v15 + 8))(v18, v14);
    v25 = 1;
    if (v24)
    {
      v25 = 2;
    }

    *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = v25;
  }

  v26 = &v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
  *v26 = v20;
  v26[1] = v21;
  v27 = v45;
  if (qword_27F825628 != -1)
  {
    swift_once();
  }

  v28 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v29 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v28))
  {
    v30 = v19;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315650;
    v33 = *(v27 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
    v34 = *(v27 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8);

    v35 = sub_256032BA0(v33, v34, &v47);

    *(v31 + 4) = v35;
    *(v31 + 12) = 1024;
    *(v31 + 14) = *&v30[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] == 2;

    *(v31 + 18) = 2080;
    v36 = *v26;
    v37 = v26[1];

    v38 = sub_256032BA0(v36, v37, &v47);

    *(v31 + 20) = v38;
    _os_log_impl(&dword_256022000, v29, v28, "AXLiveCaption: Created for source: %s, final: %{BOOL}d, caption: %s", v31, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v32, -1, -1);
    MEMORY[0x259C57FC0](v31, -1, -1);
  }

  else
  {
  }

  *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] = v27;
  *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = 100;
  v39 = type metadata accessor for AXLiveCaption(0);
  v48.receiver = v19;
  v48.super_class = v39;
  v40 = objc_msgSendSuper2(&v48, sel_init);
  sub_256033238(v46, &qword_27F8256C0, &qword_2560559B0);
  return v40;
}

id sub_256031F70(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_25605335C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2560533AC();
  *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType] = 4;
  v12 = &v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  sub_25605334C();
  result = (*(v8 + 32))(&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText], v11, v7);
  *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] = a1;
  if (a3)
  {
    if (*&a2 == 0.0)
    {
      v14 = 100;
    }

    else
    {
      v14 = -1;
    }

    *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = v14;
    goto LABEL_10;
  }

  v15 = round(*&a2 * 100.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 < 9.22337204e18)
  {
    *&v3[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState] = v15;
LABEL_10:
    v16 = type metadata accessor for AXLiveCaption(0);
    v17.receiver = v3;
    v17.super_class = v16;
    return objc_msgSendSuper2(&v17, sel_init);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t AXLiveCaption.timeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_timeStamp;
  v4 = sub_2560533BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2560322DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_25605369C();

  return v6;
}

uint64_t sub_256032338()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption);
  v2 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8);

  return v1;
}

uint64_t sub_25603246C()
{
  v1 = sub_25605335C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_256033338();
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText, v1);
  return sub_25605383C();
}

id sub_2560325A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25605369C();

  return v5;
}

uint64_t sub_256032618()
{
  v1 = sub_25605347C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType);
  if (v6 == 4)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2560538FC();

    v22 = 0xD000000000000015;
    v23 = 0x80000002560568F0;
    MEMORY[0x259C57450](0x6174537465737361, 0xEA00000000006574);

    MEMORY[0x259C57450](0x207465737361202CLL, 0xEF203A6574617473);
    v24 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_assetState);
    v7 = sub_25605397C();
    MEMORY[0x259C57450](v7);

    return v22;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_2560538FC();
  v24 = v22;
  v25 = v23;
  MEMORY[0x259C57450](0xD000000000000015, 0x80000002560568F0);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v9 = 0xE500000000000000;
      v10 = 0x6C616E6966;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v9 = 0xE700000000000000;
      v10 = 0x65636E656C6973;
      goto LABEL_12;
    }

LABEL_14:
    v22 = v6;
    result = sub_25605399C();
    __break(1u);
    return result;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v9 = 0xE700000000000000;
      v10 = 0x6C616974726170;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v9 = 0xE400000000000000;
  v10 = 1701736302;
LABEL_12:
  MEMORY[0x259C57450](v10, v9);

  MEMORY[0x259C57450](0x6C2074786574202CLL, 0xEF203A6874676E65);
  v11 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption);
  v12 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8);
  v22 = sub_2560536FC();
  v13 = sub_25605397C();
  MEMORY[0x259C57450](v13);

  MEMORY[0x259C57450](0x656D614E70706120, 0xEA0000000000203ALL);
  v14 = *(v0 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source);
  v15 = *(v14 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
  v16 = *(v14 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8);

  MEMORY[0x259C57450](v15, v16);

  MEMORY[0x259C57450](0x3A656C61636F6C20, 0xE900000000000020);
  v17 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v2 + 16))(v5, v14 + v17, v1);
  v18 = sub_2560533DC();
  v20 = v19;
  (*(v2 + 8))(v5, v1);
  MEMORY[0x259C57450](v18, v20);

  return v24;
}

id AXLiveCaption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_256032A90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_256032BA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_256032C6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2560337B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_256032C6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_256032D78(a5, a6);
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
    result = sub_25605392C();
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

uint64_t sub_256032D78(uint64_t a1, unint64_t a2)
{
  v4 = sub_256032DC4(a1, a2);
  sub_256032EF4(&unk_286816D00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_256032DC4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_256032FE0(v5, 0);
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

  result = sub_25605392C();
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
        v10 = sub_25605371C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_256032FE0(v10, 0);
        result = sub_2560538EC();
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

uint64_t sub_256032EF4(uint64_t result)
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

  result = sub_256033054(result, v12, 1, v3);
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

void *sub_256032FE0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256F8, &qword_256055BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_256033054(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256F8, &qword_256055BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_256033148(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_256033158(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2560331D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_256033238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2560332B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2560332F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_256033338()
{
  result = qword_27F8256D0;
  if (!qword_27F8256D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8256D0);
  }

  return result;
}

unint64_t sub_256033388()
{
  result = qword_27F8256D8;
  if (!qword_27F8256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8256D8);
  }

  return result;
}

unint64_t sub_2560333E0()
{
  result = qword_27F8256E0;
  if (!qword_27F8256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8256E0);
  }

  return result;
}

uint64_t sub_25603345C()
{
  result = sub_25605347C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2560335E4()
{
  result = sub_2560533BC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25605335C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2560337B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_256033834()
{
  result = [objc_allocWithZone(type metadata accessor for AXLiveCaptions()) init];
  qword_27F825700 = result;
  return result;
}

id AXLiveCaptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXLiveCaptions.shared.getter()
{
  if (qword_27F825638 != -1)
  {
    swift_once();
  }

  v1 = qword_27F825700;

  return v1;
}

uint64_t static AXLiveCaptions.supportedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256037640;

  return sub_25604ED4C();
}

uint64_t sub_256033B5C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25603763C;

  return sub_25604ED4C();
}

uint64_t static AXLiveCaptions.installedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256033CA4;

  return sub_25604F244();
}

uint64_t sub_256033CA4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_256033F0C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_256033FB4;

  return sub_25604F244();
}

uint64_t sub_256033FB4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  sub_25605347C();
  v3 = sub_25605374C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t static AXLiveCaptions.defaultLocale()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for AXLCTranscriber();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_2560341F0;

  return sub_25604ED4C();
}

uint64_t sub_2560341F0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2560342F0, 0, 0);
}

uint64_t sub_2560342F0()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_25605347C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_25603B53C(v3, v1, v4);

  sub_256033238(v3, &qword_27F8256A8, &qword_2560559A0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_256034540(const void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v1[2] = swift_task_alloc();
  v4 = sub_25605347C();
  v1[3] = v4;
  v5 = *(v4 - 8);
  v1[4] = v5;
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = _Block_copy(a1);
  v1[7] = type metadata accessor for AXLCTranscriber();
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v1;
  v7[1] = sub_256034690;

  return sub_25604ED4C();
}

uint64_t sub_256034690(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_256034790, 0, 0);
}

uint64_t sub_256034790()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  (*(v5 + 56))(v6, 1, 1, v7);
  sub_25603B53C(v6, v1, v4);

  sub_256033238(v6, &qword_27F8256A8, &qword_2560559A0);
  v8 = sub_25605340C();
  (*(v5 + 8))(v4, v7);
  (v3)[2](v3, v8);

  _Block_release(v3);

  v9 = v0[1];

  return v9();
}

id AXLiveCaptions.init()()
{
  *&v0[OBJC_IVAR___AXLiveCaptions_clients] = MEMORY[0x277D84F98];
  v1 = [objc_allocWithZone(AXLTSpeechTranscriber) initWithDelegate_];
  *&v0[OBJC_IVAR___AXLiveCaptions_micTranscriber] = v1;
  v2 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___AXLiveCaptions_audioTranscriber] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AXLiveCaptions();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_256034AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_25604C9C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_256035AB0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25604D000();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_25604C508(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_256034B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_25604CCC4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25605347C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_256035B1C(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_25604D3D8();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_25605347C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_25604C69C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_25605347C();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_256034FB0(uint64_t a1)
{
  v49[3] = *MEMORY[0x277D85DE8];
  v3 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v4 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49[0] = v6;
    *v5 = 136315138;
    v7 = sub_2560536BC();
    v9 = sub_256032BA0(v7, v8, v49);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_256022000, v4, v3, "APIv2 stop sourceType: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x259C57FC0](v6, -1, -1);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v16 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
      v49[0] = 0;
      v17 = [v16 _stopTranscriptionForPID_error_];
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_26;
      }

      v32 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
      v49[0] = 0;
      v17 = [v32 _stopTranscriptionForPID_error_];
    }

    v13 = v49[0];
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (!a1)
  {
    v10 = OBJC_IVAR___AXLiveCaptions_micTranscriber;
    v11 = *(v1 + OBJC_IVAR___AXLiveCaptions_micTranscriber);
    v49[0] = 0;
    v12 = [v11 stopTranscription_];
    v13 = v49[0];
    if (v12)
    {
      v14 = *(v1 + v10);
      v15 = v49[0];
      [v14 setSuppressUsingIndependentInputRoute_];
LABEL_20:
      if (qword_27F825620 != -1)
      {
        swift_once();
      }

      v34 = byte_27F8260B8;
      v35 = 0x27F825000;
      if (os_log_type_enabled(v4, byte_27F8260B8))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *v36 = 136315394;
        v38 = sub_2560536BC();
        v40 = sub_256032BA0(v38, v39, v49);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = OBJC_IVAR___AXLiveCaptions_clients;
        swift_beginAccess();
        v42 = *(v1 + v41);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825730, &qword_256055BF8);
        sub_256036E40();
        v43 = sub_25605365C();
        v45 = v44;

        v46 = sub_256032BA0(v43, v45, v49);
        v35 = 0x27F825000uLL;

        *(v36 + 14) = v46;
        _os_log_impl(&dword_256022000, v4, v34, "APIv2 removed client for key: %s, clients: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v37, -1, -1);
        MEMORY[0x259C57FC0](v36, -1, -1);
      }

      v47 = *(v35 + 1808);
      swift_beginAccess();
      sub_256034AB0(0, 0, a1);
      result = swift_endAccess();
LABEL_25:
      v48 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_13:
    v20 = v13;
    v21 = sub_25605337C();

    swift_willThrow();
    v22 = sub_25605381C();
    if (os_log_type_enabled(v4, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49[0] = v25;
      *v23 = 136315394;
      v26 = sub_2560536BC();
      v28 = sub_256032BA0(v26, v27, v49);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v30;
      *v24 = v30;
      _os_log_impl(&dword_256022000, v4, v22, "APIv2 stop sourceType: %s, error: %@", v23, 0x16u);
      sub_256033238(v24, &qword_27F825728, &qword_256055BF0);
      MEMORY[0x259C57FC0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x259C57FC0](v25, -1, -1);
      MEMORY[0x259C57FC0](v23, -1, -1);
    }

    result = swift_willThrow();
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    v18 = *(v1 + OBJC_IVAR___AXLiveCaptions_audioTranscriber);
    v49[0] = 0;
    v19 = [v18 stopTranscription_];
    v13 = v49[0];
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_19:
    v33 = v13;
    goto LABEL_20;
  }

LABEL_26:
  v49[0] = a1;
  result = sub_25605399C();
  __break(1u);
  return result;
}

id AXLiveCaptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLiveCaptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXLiveCaptions.liveCaptionsResult(_:)(unint64_t a1)
{
  if (qword_27F825628 != -1)
  {
LABEL_22:
    swift_once();
  }

  v3 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  log = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v3))
  {
    v4 = a1;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(*&v4[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source] + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType);

    _os_log_impl(&dword_256022000, log, v3, "APIv2 liveCaptionsResult sourceType: %ld", v5, 0xCu);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  v28 = a1;
  a1 = OBJC_IVAR___AXLiveCaptions_clients;
  swift_beginAccess();
  v26 = a1;
  v27 = v1;
  v6 = *(&v1->isa + a1);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(&v1->isa + a1);

  v12 = 0;
  v1 = log;
  while (v9)
  {
    a1 = v9;
LABEL_15:
    v9 = (a1 - 1) & a1;
    if (os_log_type_enabled(v1, v3))
    {
      v14 = *(*(v6 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(a1)))));
      a1 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *a1 = 136315138;
      v16 = sub_25605397C();
      v18 = v3;
      v19 = sub_256032BA0(v16, v17, &v30);
      v1 = log;

      *(a1 + 4) = v19;
      v3 = v18;
      _os_log_impl(&dword_256022000, log, v18, "APIv2 liveCaptionsResult client: %s", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C57FC0](v15, -1, -1);
      MEMORY[0x259C57FC0](a1, -1, -1);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= v10)
    {
      break;
    }

    a1 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (a1)
    {
      v12 = v13;
      goto LABEL_15;
    }
  }

  v21 = *(&v27->isa + v26);
  if (*(v21 + 16))
  {
    result = sub_256035AB0(*(*(v28 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source) + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType));
    if (v22)
    {
      v23 = *(v21 + 56) + 16 * result;
      v24 = *v23;
      v25 = *(v23 + 8);
      v30 = v28;

      v24(&v30);
    }
  }

  return result;
}

unint64_t sub_256035A38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2560539CC();
  sub_2560536EC();
  v6 = sub_256053A0C();

  return sub_256035BA0(a1, a2, v6);
}

unint64_t sub_256035AB0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2560539CC();
  MEMORY[0x259C57720](a1);
  v4 = sub_256053A0C();

  return sub_256035C58(a1, v4);
}

unint64_t sub_256035B1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25605347C();
  sub_256036F84(&qword_27F8256B8);
  v5 = sub_25605366C();

  return sub_256035CC4(a1, v5);
}

unint64_t sub_256035BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25605398C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_256035C58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_256035CC4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_256036F84(&qword_27F825740);
      v16 = sub_25605368C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t _s17LiveTranscription14AXLiveCaptionsC18formattedLocaleIDs4fromSaySSGSay10Foundation0F0VG_tFZ_0(uint64_t a1)
{
  v42 = sub_25605347C();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825758, &unk_256055CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = (&v33 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825760, &qword_2560561B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  i = 0;
  v36 = a1;
  v18 = *(a1 + 16);
  v33 = v2 + 16;
  v39 = (v6 + 48);
  v40 = (v6 + 56);
  v38 = (v2 + 32);
  v19 = MEMORY[0x277D84F90];
  v35 = v2;
  v37 = (v2 + 8);
  v20 = v18 == 0;
  if (v18)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v18; ; ++i)
  {
    (*v40)(v13, v21, 1, v5);
    sub_25603757C(v13, v16, &qword_27F825760, &qword_2560561B0);
    if ((*v39)(v16, 1, v5) == 1)
    {
      return v19;
    }

    (*v38)(v41, &v16[*(v5 + 48)], v42);
    v47 = sub_2560533DC();
    v48 = v26;
    v45 = 95;
    v46 = 0xE100000000000000;
    v43 = 45;
    v44 = 0xE100000000000000;
    sub_2560375E4();
    v27 = sub_25605387C();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_25604B9C4(0, *(v19 + 2) + 1, 1, v19);
    }

    v31 = *(v19 + 2);
    v30 = *(v19 + 3);
    if (v31 >= v30 >> 1)
    {
      v19 = sub_25604B9C4((v30 > 1), v31 + 1, 1, v19);
    }

    result = (*v37)(v41, v42);
    *(v19 + 2) = v31 + 1;
    v32 = &v19[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
    v20 = i >= v18;
    if (i == v18)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v20)
    {
      break;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_15;
    }

    v23 = v34;
    v22 = v35;
    v24 = v36 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * i;
    v25 = *(v5 + 48);
    *v34 = i;
    (*(v22 + 16))(v23 + v25, v24, v42);
    sub_25603757C(v23, v13, &qword_27F825758, &unk_256055CB0);
    v21 = 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2560362AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v117 = a4;
  v118 = a5;
  v114 = a3;
  v125[3] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v111 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v115 = &v111 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v116 = &v111 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v111 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v111 - v23;
  v25 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v26 = qword_27F8260C0;
  sub_2560374E0(a2, v24);
  v27 = os_log_type_enabled(v26, v25);
  v121 = a1;
  v119 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v113 = v6;
    v29 = v26;
    v30 = v28;
    v31 = swift_slowAlloc();
    v112 = v15;
    v32 = v31;
    v125[0] = v31;
    *v30 = 136315394;
    v124 = a1;
    v33 = sub_2560536BC();
    v35 = sub_256032BA0(v33, v34, v125);
    a1 = v121;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    sub_2560374E0(v24, v22);
    v36 = sub_2560536BC();
    v38 = v37;
    sub_256033238(v24, &qword_27F8256A8, &qword_2560559A0);
    v39 = sub_256032BA0(v36, v38, v125);

    *(v30 + 14) = v39;
    _os_log_impl(&dword_256022000, v29, v25, "APIv2 start sourceType:%s locale: %s", v30, 0x16u);
    swift_arrayDestroy();
    v40 = v32;
    v15 = v112;
    MEMORY[0x259C57FC0](v40, -1, -1);
    v41 = v30;
    v26 = v29;
    v6 = v113;
    MEMORY[0x259C57FC0](v41, -1, -1);
  }

  else
  {
    sub_256033238(v24, &qword_27F8256A8, &qword_2560559A0);
  }

  v42 = v120;
  v43 = OBJC_IVAR___AXLiveCaptions_micTranscriber;
  [*(v6 + OBJC_IVAR___AXLiveCaptions_micTranscriber) setTranscriberVersion_];
  v44 = OBJC_IVAR___AXLiveCaptions_audioTranscriber;
  [*(v6 + OBJC_IVAR___AXLiveCaptions_audioTranscriber) setTranscriberVersion_];
  [*(v6 + v43) setDelegate_];
  [*(v6 + v44) setDelegate_];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v67 = *(v6 + v44);
      v68 = @"Call";
      v69 = sub_25605369C();
      v70 = AXLCLocString(v69);

      if (v70)
      {
        sub_2560374E0(v119, v15);
        v71 = sub_25605347C();
        v72 = *(v71 - 8);
        v73 = 0;
        if ((*(v72 + 48))(v15, 1, v71) != 1)
        {
          v73 = sub_25605340C();
          (*(v72 + 8))(v15, v71);
        }

        v125[0] = 0;
        v74 = [v67 _startTranscriptionForPID_appID_appName_locale_error_];

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_38;
      }

      v83 = *(v6 + v44);
      v84 = @"Call";
      v85 = sub_25605369C();
      v86 = AXLCLocString(v85);

      if (v86)
      {
        sub_2560374E0(v119, v42);
        v87 = sub_25605347C();
        v88 = v42;
        v89 = *(v87 - 8);
        v90 = 0;
        if ((*(v89 + 48))(v88, 1, v87) != 1)
        {
          v90 = sub_25605340C();
          (*(v89 + 8))(v88, v87);
        }

        v125[0] = 0;
        v74 = [v83 _startTranscriptionForPID_appID_appName_locale_error_];

LABEL_29:
        v53 = v125[0];
        if ((v74 & 1) == 0)
        {
LABEL_11:
          v54 = v53;
          v55 = sub_25605337C();

          v122 = v55;
          swift_willThrow();
          v56 = v121;
          v57 = sub_25605381C();
          if (os_log_type_enabled(v26, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v125[0] = v60;
            *v58 = 136315394;
            v124 = v56;
            v61 = sub_2560536BC();
            v63 = sub_256032BA0(v61, v62, v125);

            *(v58 + 4) = v63;
            *(v58 + 12) = 2112;
            v64 = v122;
            v65 = _swift_stdlib_bridgeErrorToNSError();
            *(v58 + 14) = v65;
            *v59 = v65;
            _os_log_impl(&dword_256022000, v26, v57, "APIv2 start sourceType: %s, error: %@", v58, 0x16u);
            sub_256033238(v59, &qword_27F825728, &qword_256055BF0);
            MEMORY[0x259C57FC0](v59, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x259C57FC0](v60, -1, -1);
            MEMORY[0x259C57FC0](v58, -1, -1);
          }

          result = swift_willThrow();
LABEL_35:
          v110 = *MEMORY[0x277D85DE8];
          return result;
        }

LABEL_30:
        v91 = v121;
        v92 = v53;
        if (qword_27F825620 != -1)
        {
          swift_once();
        }

        v93 = byte_27F8260B8;
        if (os_log_type_enabled(v26, byte_27F8260B8))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v125[0] = v95;
          *v94 = 136315394;
          v124 = v91;
          v96 = sub_2560536BC();
          v98 = sub_256032BA0(v96, v97, v125);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2080;
          v99 = OBJC_IVAR___AXLiveCaptions_clients;
          swift_beginAccess();
          v100 = *(v6 + v99);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825730, &qword_256055BF8);
          sub_256036E40();
          v101 = sub_25605365C();
          v103 = v102;
          v91 = v121;

          v104 = sub_256032BA0(v101, v103, v125);

          *(v94 + 14) = v104;
          _os_log_impl(&dword_256022000, v26, v93, "APIv2 added client for key: %s, clients: %s", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v95, -1, -1);
          MEMORY[0x259C57FC0](v94, -1, -1);
        }

        v105 = swift_allocObject();
        v106 = v118;
        *(v105 + 16) = v117;
        *(v105 + 24) = v106;
        v107 = OBJC_IVAR___AXLiveCaptions_clients;
        swift_beginAccess();

        v108 = *(v6 + v107);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = *(v6 + v107);
        *(v6 + v107) = 0x8000000000000000;
        sub_25604C9C0(sub_256037550, v105, v91, isUniquelyReferenced_nonNull_native);
        *(v6 + v107) = v123;
        result = swift_endAccess();
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!a1)
  {
    [*(v6 + v43) setSuppressUsingIndependentInputRoute_];
    v45 = *(v6 + v43);
    v46 = v116;
    sub_2560374E0(v119, v116);
    v47 = sub_25605347C();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    v50 = v45;
    v51 = 0;
    if (v49 != 1)
    {
      v51 = sub_25605340C();
      (*(v48 + 8))(v46, v47);
    }

    v125[0] = 0;
    v52 = [v50 startTranscriptionWithLocale:v51 error:v125];

    v53 = v125[0];
    if ((v52 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (a1 == 1)
  {
    v75 = *(v6 + v44);
    v76 = v115;
    sub_2560374E0(v119, v115);
    v77 = sub_25605347C();
    v78 = *(v77 - 8);
    v79 = (*(v78 + 48))(v76, 1, v77);
    v80 = v75;
    v81 = 0;
    if (v79 != 1)
    {
      v81 = sub_25605340C();
      (*(v78 + 8))(v76, v77);
    }

    v125[0] = 0;
    v82 = [v80 startTranscriptionWithLocale:v81 error:v125];

    v53 = v125[0];
    if ((v82 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_38:
  v125[0] = a1;
  result = sub_25605399C();
  __break(1u);
  return result;
}

unint64_t sub_256036E40()
{
  result = qword_27F825738;
  if (!qword_27F825738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825738);
  }

  return result;
}

uint64_t sub_256036F84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25605347C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_256036FD0()
{
  result = qword_27F825748;
  if (!qword_27F825748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F825748);
  }

  return result;
}

uint64_t sub_25603701C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2560370C8;

  return sub_256034540(v2);
}

uint64_t sub_2560370C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2560371BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_256037638;

  return sub_25604B038(v2, v3, v5);
}

uint64_t sub_25603727C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_256037638;

  return sub_25604B120(a1, v4, v5, v7);
}

uint64_t sub_256037348()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_256037638;

  return sub_256033F0C(v2);
}

uint64_t sub_2560373F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_256037638;

  return sub_256033B5C(v2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2560374E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_256037550(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25603757C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2560375E4()
{
  result = qword_27F825768;
  if (!qword_27F825768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825768);
  }

  return result;
}

uint64_t AXLTCaption.appID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);
  v2 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID + 8);

  return v1;
}

uint64_t AXLTCaption.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);
  v2 = *(v0 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName + 8);

  return v1;
}

uint64_t sub_2560378C8()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_256037994(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2560379EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_256037AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v5 = sub_25605335C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_256037B40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25605335C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_256037C58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v4 = sub_25605335C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_256037CE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v4 = sub_25605335C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_256037EF0()
{
  v1 = sub_25605335C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25603AB14(0, &qword_27F8256D0, 0x277CCA898);
  v6 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  return sub_25605383C();
}

id sub_256038008(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_25605369C();

  return v6;
}

uint64_t sub_25603808C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2560380EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2560536AC();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_256038164(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2560381C0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2560382D0()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256038368(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_256038460()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2560384F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2560385F0()
{
  v1 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256038688(char a1)
{
  v3 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AXLTCaption.__allocating_init(id:appID:appName:time:text:segments:placeholder:actionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a8;
  v42 = a7;
  v40 = a6;
  v39 = a5;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v47 = a12;
  v48 = a13;
  v46 = a11;
  v43 = a10;
  v41 = a9;
  v15 = sub_25605335C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v13);
  v21 = &v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = &v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v24 = &v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v26 = &v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  v28 = &v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  swift_beginAccess();
  v30 = v42;
  *v21 = v40;
  v21[1] = v30;
  swift_beginAccess();
  v31 = v41;
  *v22 = v44;
  v22[1] = v31;
  swift_beginAccess();
  *&v20[v23] = v43;
  sub_25605334C();
  (*(v16 + 32))(&v20[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v19, v15);
  swift_beginAccess();
  v32 = v24[1];
  v33 = v47;
  *v24 = v46;
  v24[1] = v33;

  swift_beginAccess();
  *&v20[v25] = v48;
  v49.receiver = v20;
  v49.super_class = v45;
  return objc_msgSendSuper2(&v49, sel_init);
}

id AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a8;
  v42 = a7;
  v40 = a6;
  v39 = a5;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v46 = a12;
  v47 = a13;
  v45 = a11;
  v43 = a10;
  v41 = a9;
  v15 = sub_25605335C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v23 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v25 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  v27 = &v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  swift_beginAccess();
  v29 = v42;
  *v20 = v40;
  v20[1] = v29;
  swift_beginAccess();
  v30 = v41;
  *v21 = v44;
  v21[1] = v30;
  swift_beginAccess();
  v31 = *&v13[v22];
  *&v13[v22] = v43;

  sub_25605334C();
  (*(v16 + 32))(&v13[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v19, v15);
  swift_beginAccess();
  v32 = v23[1];
  v33 = v46;
  *v23 = v45;
  v23[1] = v33;

  swift_beginAccess();
  *&v13[v24] = v47;
  v34 = type metadata accessor for AXLTCaption();
  v48.receiver = v13;
  v48.super_class = v34;
  return objc_msgSendSuper2(&v48, sel_init);
}

id AXLTCaption.__allocating_init(id:liveCaption:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_256039C84(a1, a2);

  return v6;
}

id AXLTCaption.init(id:liveCaption:)(uint64_t a1, void *a2)
{
  v3 = sub_256039C84(a1, a2);

  return v3;
}

id AXLTCaption.__allocating_init(caption:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_256039F04(a1);

  return v4;
}

id AXLTCaption.init(caption:)(void *a1)
{
  v2 = sub_256039F04(a1);

  return v2;
}

id AXLTCaption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLTCaption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTCaption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *mergeCaptions(_:_:)(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v3 = sub_25605335C();
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v96 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v81 - v8;
  MEMORY[0x28223BE20](v7);
  v99 = &v81 - v9;
  v10 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id);
  v12 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID + 8);
  v88 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);
  v89 = v11;
  v87 = v12;
  v13 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName + 8);
  v86 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);
  v14 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time);
  v15 = v10;
  swift_beginAccess();
  v16 = *v14;
  v17 = v14[1];
  v85 = v16;
  v18 = (v15 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v91 = v18;
  v19 = *v18;
  v83 = v18[1];
  v84 = v19;
  v20 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v90 = *(v15 + v20);
  v21 = (v15 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder);
  v98 = v15;
  swift_beginAccess();
  v22 = v21[1];
  v94 = *v21;
  v82 = v22;
  v23 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  v93 = *(v15 + v23);
  v92 = type metadata accessor for AXLTCaption();
  v24 = objc_allocWithZone(v92);
  v25 = &v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = &v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v28 = &v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  *&v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  v30 = v88;
  *&v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = v89;
  v31 = &v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  v32 = v87;
  *v31 = v30;
  v31[1] = v32;
  v33 = &v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v33 = v86;
  v33[1] = v13;
  swift_beginAccess();
  *v25 = v85;
  v25[1] = v17;
  swift_beginAccess();
  v34 = v83;
  *v26 = v84;
  v26[1] = v34;

  v35 = v90;

  v36 = v82;

  swift_beginAccess();
  v37 = *&v24[v27];
  *&v24[v27] = v35;

  v38 = v99;
  sub_25605334C();
  (*(v100 + 32))(&v24[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v38, v101);
  swift_beginAccess();
  v39 = v28[1];
  *v28 = v94;
  v28[1] = v36;

  swift_beginAccess();
  v40 = v92;
  *&v24[v29] = v93;
  v105.receiver = v24;
  v105.super_class = v40;
  v41 = objc_msgSendSuper2(&v105, sel_init);
  v43 = *v91;
  v42 = v91[1];
  v44 = v97;
  v45 = (v97 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v103 = v43;
  v104 = v42;
  swift_bridgeObjectRetain_n();

  MEMORY[0x259C57450](10, 0xE100000000000000);

  MEMORY[0x259C57450](v46, v47);

  v48 = v103;
  v49 = v104;
  v50 = &v41[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  swift_beginAccess();
  v51 = *(v50 + 1);
  *v50 = v48;
  *(v50 + 1) = v49;

  v52 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v102 = *&v41[v52];
  v53 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v54 = *(v44 + v53);

  sub_256039890(v55);
  v56 = *&v41[v52];
  *&v41[v52] = v102;
  v94 = v41;

  v57 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  v58 = *(v44 + v57);
  v59 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  *&v41[v59] = v58;
  v60 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  v61 = v98;
  swift_beginAccess();
  v63 = v100;
  v62 = v101;
  v64 = *(v100 + 16);
  v65 = v95;
  v64(v95, v61 + v60, v101);
  v66 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  v67 = v44 + v66;
  v68 = v96;
  v64(v96, v67, v62);
  v69 = v99;
  sub_25605333C();
  v70 = *(v63 + 8);
  v71 = v94;
  v70(v68, v62);
  v70(v65, v62);
  v72 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  swift_beginAccess();
  (*(v63 + 40))(&v71[v72], v69, v62);
  swift_endAccess();
  v73 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  v74 = v98;
  swift_beginAccess();
  v75 = *(v74 + v73);
  v76 = 1;
  if ((v75 & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
    v78 = v97;
    swift_beginAccess();
    v76 = *(v78 + v77);
  }

  v79 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  v71[v79] = v76;
  return v71;
}

Swift::String __swiftcall mergeStrings(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  if (a2.value._object)
  {
    v4 = a2.value._countAndFlagsBits;
  }

  else
  {
    v4 = 0;
  }

  if (a2.value._object)
  {
    v5 = a2.value._object;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v9 = countAndFlagsBits;

  MEMORY[0x259C57450](10, 0xE100000000000000);

  MEMORY[0x259C57450](v4, v5);

  v6 = v9;
  v7 = object;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_256039890(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25605393C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_25605393C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_256039980(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_256039AA8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_256039980(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25605393C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25605391C();
  *v1 = result;
  return result;
}

void (*sub_256039A20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C57650](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_256039AA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_256039AA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25605393C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25605393C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25603AB5C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825820, &qword_256055E18);
            v9 = sub_256039A20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25603AB14(0, &qword_27F825818, 0x277CDCF18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AXLTCaption()
{
  result = qword_27F825808;
  if (!qword_27F825808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_256039C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v7 = &v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  v8 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v2[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = a1;
  v9 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_source);
  v10 = *(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8);
  v11 = &v3[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  *v11 = *(v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
  *(v11 + 1) = v10;
  v12 = (v9 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
  v13 = *v12;
  v14 = v12[1];
  v15 = &v3[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v15 = v13;
  *(v15 + 1) = v14;
  v16 = objc_opt_self();

  v17 = sub_25605339C();
  v18 = [v16 dateToString_];

  v19 = sub_2560536AC();
  v21 = v20;

  swift_beginAccess();
  v22 = v5[1];
  *v5 = v19;
  v5[1] = v21;

  v24 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption);
  v23 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8);
  swift_beginAccess();
  v25 = *(v6 + 1);
  *v6 = v24;
  *(v6 + 1) = v23;

  v26 = OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_attributedText;
  v27 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;
  v28 = sub_25605335C();
  (*(*(v28 - 8) + 16))(&v3[v27], a2 + v26, v28);
  v29 = *(a2 + OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_resultType);
  swift_beginAccess();
  *&v3[v8] = v29;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AXLTCaption();
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_256039F04(uint64_t a1)
{
  v3 = sub_25605335C();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments] = MEMORY[0x277D84F90];
  v9 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v47 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType] = 0;
  v49 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType] = 0;
  v48 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged] = 0;
  *&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id] = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_id);
  v11 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID);
  v43 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID + 8);
  v10 = v43;
  v12 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appID];
  *v12 = v11;
  v12[1] = v10;
  v13 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName + 8);
  v14 = &v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName];
  *v14 = *(a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_appName);
  v14[1] = v13;
  v15 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_time);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];
  swift_beginAccess();
  *v6 = v17;
  v6[1] = v16;
  v18 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_text);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  swift_beginAccess();
  *v7 = v19;
  v7[1] = v20;
  v21 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_segments;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_beginAccess();
  *&v1[v8] = v22;
  v23 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText;

  swift_beginAccess();
  v25 = v45;
  v24 = v46;
  v26 = a1 + v23;
  v27 = v44;
  (*(v45 + 16))(v44, v26, v46);
  (*(v25 + 32))(&v1[OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_attributedText], v27, v24);
  v28 = (a1 + OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_placeholder);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  v31 = v9[1];
  *v9 = v30;
  v9[1] = v29;

  v32 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_actionType;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = v47;
  swift_beginAccess();
  *&v1[v34] = v33;
  v35 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_privileged;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v48;
  swift_beginAccess();
  v1[v36] = v35;
  v37 = OBJC_IVAR____TtC17LiveTranscription11AXLTCaption_resultType;
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = v49;
  swift_beginAccess();
  *&v1[v39] = v38;
  v40 = type metadata accessor for AXLTCaption();
  v50.receiver = v1;
  v50.super_class = v40;
  return objc_msgSendSuper2(&v50, sel_init);
}

unint64_t sub_25603A2E0()
{
  result = qword_27F825800;
  if (!qword_27F825800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825800);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_25603A450()
{
  result = sub_25605335C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25603AB14(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25603AB5C()
{
  result = qword_27F825828;
  if (!qword_27F825828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F825820, &qword_256055E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F825828);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t static AXLCTranscriber.supportedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256037640;

  return sub_25604ED4C();
}

uint64_t static AXLCTranscriber.installedLocales()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_256033CA4;

  return sub_25604F244();
}

uint64_t static AXLCTranscriber.defaultLocale()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_25603AE28;

  return sub_25604ED4C();
}

uint64_t sub_25603AE28(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_25603AF28, 0, 0);
}

uint64_t sub_25603AF28()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_25605347C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_25603B53C(v3, v1, v4);

  sub_256033238(v3, &qword_27F8256A8, &qword_2560559A0);

  v6 = v0[1];

  return v6();
}

id sub_25603B028()
{
  result = [objc_allocWithZone(type metadata accessor for AXLCTranscriber()) init];
  qword_27F825830 = result;
  return result;
}

id static AXLCTranscriber.shared.getter()
{
  if (qword_27F825640 != -1)
  {
    swift_once();
  }

  v1 = qword_27F825830;

  return v1;
}

uint64_t sub_25603B280(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25603763C;

  return sub_25604ED4C();
}

uint64_t sub_25603B494(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_256033FB4;

  return sub_25604F244();
}

uint64_t sub_25603B53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v330 = a2;
  v318 = a3;
  v323 = sub_25605345C();
  v321 = *(v323 - 8);
  v4 = *(v321 + 64);
  MEMORY[0x28223BE20](v323);
  v311 = &v295 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8259C8, &qword_2560561C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v316 = (&v295 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825758, &unk_256055CB0);
  v10 = *(v9 - 8);
  v337 = v9;
  v338 = v10;
  isa = v10[8].isa;
  MEMORY[0x28223BE20](v9);
  v329 = (&v295 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825760, &qword_2560561B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v327 = &v295 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v326 = &v295 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v295 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v295 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v300 = &v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v303 = &v295 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v307 = &v295 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v312 = &v295 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v295 - v34;
  v339 = sub_25605347C();
  v36 = *(v339 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v339);
  v296 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v297 = &v295 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v298 = &v295 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v302 = &v295 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v299 = &v295 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v301 = &v295 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v304 = &v295 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v306 = &v295 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v328 = &v295 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v322 = &v295 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v317 = &v295 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v305 = &v295 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v308 = &v295 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v309 = &v295 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v313 = &v295 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v310 = &v295 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v72 = &v295 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v295 - v74;
  MEMORY[0x28223BE20](v73);
  v77 = &v295 - v76;
  v336 = a1;
  sub_2560331D0(a1, v35, &qword_27F8256A8, &qword_2560559A0);
  v79 = v36 + 48;
  v78 = *(v36 + 48);
  v80 = v35;
  v81 = v35;
  v82 = v339;
  v83 = v78(v81, 1, v339);
  v324 = v77;
  v331 = v36;
  if (v83 == 1)
  {
    sub_25605343C();
    v84 = v78;
    if (v78(v80, 1, v82) != 1)
    {
      sub_256033238(v80, &qword_27F8256A8, &qword_2560559A0);
    }
  }

  else
  {
    (*(v36 + 32))(v77, v80, v82);
    v84 = v78;
  }

  v85 = 0x746E6572727563;
  v86 = v84(v336, 1, v82);
  v87 = v82;
  v315 = v79;
  v314 = v84;
  if (v86 == 1)
  {
    v319 = 0x746E6572727563;
    v320 = 0xE700000000000000;
    v88 = v331;
  }

  else
  {
    v89 = 0xE700000000000000;
    sub_25605343C();
    v90 = MEMORY[0x259C57160](v324, v75);
    v88 = v331;
    (*(v331 + 8))(v75, v87);
    if ((v90 & 1) == 0)
    {
      v85 = 0x64656469766F7270;
    }

    v319 = v85;
    if ((v90 & 1) == 0)
    {
      v89 = 0xE800000000000000;
    }

    v320 = v89;
  }

  i = 0;
  v92 = *(v330 + 16);
  v332 = v88 + 2;
  v93 = v337;
  v334 = v338 + 6;
  v335 = v338 + 7;
  v338 = v88 + 4;
  v94 = MEMORY[0x277D84F90];
  v336 = v88 + 1;
  v333 = v92;
  v95 = v92 == 0;
  if (v92)
  {
    goto LABEL_14;
  }

LABEL_13:
  v96 = 1;
  for (i = v92; ; ++i)
  {
    v101 = v335->isa;
    (v335->isa)(v21, v96, 1, v93);
    sub_25603757C(v21, v23, &qword_27F825760, &qword_2560561B0);
    v102 = v334->isa;
    if ((v334->isa)(v23, 1, v93) == 1)
    {
      break;
    }

    (v338->isa)(v72, &v23[*(v93 + 48)], v87);
    v344 = sub_2560533DC();
    v345 = v103;
    v342 = 95;
    v343 = 0xE100000000000000;
    v340 = 45;
    v341 = 0xE100000000000000;
    v293 = sub_2560375E4();
    v294 = v293;
    v292 = v293;
    v291 = MEMORY[0x277D837D0];
    v104 = sub_25605387C();
    v88 = v105;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = sub_25604B9C4(0, *(v94 + 2) + 1, 1, v94);
    }

    v107 = *(v94 + 2);
    v106 = *(v94 + 3);
    if (v107 >= v106 >> 1)
    {
      v94 = sub_25604B9C4((v106 > 1), v107 + 1, 1, v94);
    }

    v87 = v339;
    (v336->isa)(v72, v339);
    *(v94 + 2) = v107 + 1;
    v108 = &v94[16 * v107];
    *(v108 + 4) = v104;
    *(v108 + 5) = v88;
    v93 = v337;
    v92 = v333;
    v95 = i >= v333;
    if (i == v333)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v95)
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:

      v151 = v338->isa;
      v275 = v302;
      (v338->isa)(v302, i, v87);
      v276 = sub_25605382C();
      v277 = v298;
      (v332->isa)(v298, v275, v87);
      v278 = os_log_type_enabled(v88, v276);
      v279 = v324;
      if (v278)
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v344 = v281;
        *v280 = 136315138;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
        v282 = sub_25605397C();
        v283 = v277;
        v285 = v284;
        v286 = v336->isa;
        (v336->isa)(v283, v87);
        v287 = sub_256032BA0(v282, v285, &v344);

        *(v280 + 4) = v287;
        _os_log_impl(&dword_256022000, v316, v276, "TranscriberV2: default is locale with US region: %s", v280, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v281);
        MEMORY[0x259C57FC0](v281, -1, -1);
        MEMORY[0x259C57FC0](v280, -1, -1);
        v286(v279, v87);
      }

      else
      {
        v289 = v336->isa;
        (v336->isa)(v277, v87);
        v289(v279, v87);
      }

      v166 = v318;
      v167 = &v333;
LABEL_47:
      v168 = *(v167 - 32);
      return v151(v166, v168, v87);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_104;
    }

    v97 = v331;
    v98 = v329;
    v99 = v330 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * i;
    v100 = *(v93 + 48);
    *v329 = i;
    (*(v97 + 16))(v98 + v100, v99, v87);
    sub_25603757C(v98, v21, &qword_27F825758, &unk_256055CB0);
    v96 = 0;
  }

  v344 = sub_2560533DC();
  v345 = v109;
  v342 = 95;
  v343 = 0xE100000000000000;
  v340 = 45;
  v341 = 0xE100000000000000;
  v294 = sub_2560375E4();
  v325 = v294;
  v292 = v294;
  v291 = MEMORY[0x277D837D0];
  v110 = sub_25605387C();
  v112 = v111;

  v344 = v110;
  v345 = v112;
  MEMORY[0x28223BE20](v113);
  v293 = &v344;
  j = &unk_27F826000;
  if (sub_25604D64C(sub_25605113C, &v291, v94))
  {

    LOBYTE(v115) = sub_25605382C();
    if (qword_27F825630 != -1)
    {
LABEL_116:
      swift_once();
    }

    v116 = *(j + 192);
    v117 = v310;
    v118 = v324;
    (v332->isa)(v310, v324, v87);
    v119 = os_log_type_enabled(v116, v115);
    v120 = v319;
    if (v119)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v344 = v122;
      *v121 = 136315394;
      v123 = sub_256032BA0(v120, v320, &v344);

      *(v121 + 4) = v123;
      *(v121 + 12) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
      v124 = sub_25605397C();
      v126 = v125;
      (v336->isa)(v117, v87);
      v127 = sub_256032BA0(v124, v126, &v344);

      *(v121 + 14) = v127;
      _os_log_impl(&dword_256022000, v116, v115, "TranscriberV2: default is %s locale: %s", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v122, -1, -1);
      MEMORY[0x259C57FC0](v121, -1, -1);
    }

    else
    {

      (v336->isa)(v117, v87);
    }

    return (v338->isa)(v318, v118, v87);
  }

  else
  {
    v310 = v110;
    v128 = v311;
    sub_25605346C();
    v129 = v316;
    sub_25605344C();
    v130 = v129;
    (*(v321 + 8))(v128, v323);
    v131 = sub_2560533FC();
    v132 = *(v131 - 8);
    if ((*(v132 + 48))(v130, 1, v131) == 1)
    {
      sub_256033238(v130, &qword_27F8259C8, &qword_2560561C0);
      v321 = 0;
      v323 = 0xE000000000000000;
    }

    else
    {
      v321 = sub_2560533EC();
      v323 = v134;
      (*(v132 + 8))(v130, v131);
    }

    v135 = v319;
    v136 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v316 = qword_27F8260C0;
    if (os_log_type_enabled(qword_27F8260C0, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v344 = v138;
      *v137 = 136315650;
      *(v137 + 4) = sub_256032BA0(v135, v320, &v344);
      *(v137 + 12) = 2080;
      *(v137 + 14) = sub_256032BA0(v310, v112, &v344);
      *(v137 + 22) = 2080;
      *(v137 + 24) = sub_256032BA0(v321, v323, &v344);
      _os_log_impl(&dword_256022000, v316, v136, "TranscriberV2: Searching default locale for %s locale identifier: %s languageCode: %s", v137, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v138, -1, -1);
      MEMORY[0x259C57FC0](v137, -1, -1);
    }

    v139 = v312;
    sub_256045F14(v310, v112, v135, v320, v330, v94, v312);

    LOBYTE(v115) = v315;
    v140 = v314(v139, 1, v87);
    v141 = v337;
    if (v140 != 1)
    {

      v151 = v338->isa;
      v152 = v313;
      (v338->isa)(v313, v139, v87);
      v153 = sub_25605382C();
      v154 = v309;
      (v332->isa)(v309, v152, v87);
      v155 = v316;
      if (os_log_type_enabled(v316, v153))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v344 = v157;
        *v156 = 136315394;
        v158 = sub_256032BA0(v319, v320, &v344);

        *(v156 + 4) = v158;
        *(v156 + 12) = 2080;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
        v159 = sub_25605397C();
        v160 = v154;
        v162 = v161;
        v163 = v336->isa;
        (v336->isa)(v160, v87);
        v164 = sub_256032BA0(v159, v162, &v344);

        *(v156 + 14) = v164;
        _os_log_impl(&dword_256022000, v155, v153, "TranscriberV2: default is %s locale from supported locales: %s", v156, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v157, -1, -1);
        MEMORY[0x259C57FC0](v156, -1, -1);
        v163(v324, v87);
      }

      else
      {

        v165 = v336->isa;
        (v336->isa)(v154, v87);
        v165(v324, v87);
      }

      v166 = v318;
      v167 = &v343;
      goto LABEL_47;
    }

    sub_256033238(v139, &qword_27F8256A8, &qword_2560559A0);
    v142 = [objc_opt_self() _deviceLanguage];
    if (v142)
    {
      v143 = v142;
      v144 = sub_2560536AC();
      v115 = v145;

      v146 = sub_25605382C();
      if (os_log_type_enabled(v316, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v344 = v148;
        *v147 = 136315138;
        *(v147 + 4) = sub_256032BA0(v144, v115, &v344);
        _os_log_impl(&dword_256022000, v316, v146, "TranscriberV2: Searching default locale for device language: %s", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v148);
        MEMORY[0x259C57FC0](v148, -1, -1);
        MEMORY[0x259C57FC0](v147, -1, -1);
      }

      v149 = v307;
      sub_256045F14(v144, v115, 0x4C20656369766544, 0xEF65676175676E61, v330, v94, v307);

      v150 = v339;
      LOBYTE(v115) = v315;
      if (v314(v149, 1, v339) != 1)
      {

        v182 = v338->isa;
        v183 = v308;
        (v338->isa)(v308, v149, v150);
        v184 = sub_25605382C();
        v185 = v305;
        (v332->isa)(v305, v183, v150);
        v186 = v316;
        v187 = os_log_type_enabled(v316, v184);
        v188 = v324;
        if (v187)
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v344 = v190;
          *v189 = 136315394;
          *(v189 + 4) = sub_256032BA0(0x4C20656369766544, 0xEF65676175676E61, &v344);
          *(v189 + 12) = 2080;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
          v191 = sub_25605397C();
          v192 = v185;
          v193 = v186;
          v195 = v194;
          v196 = v336->isa;
          (v336->isa)(v192, v150);
          v197 = sub_256032BA0(v191, v195, &v344);

          *(v189 + 14) = v197;
          _os_log_impl(&dword_256022000, v193, v184, "TranscriberV2: default is %s locale from supported locales: %s", v189, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v190, -1, -1);
          MEMORY[0x259C57FC0](v189, -1, -1);
          v196(v324, v150);
        }

        else
        {
          v262 = v336->isa;
          (v336->isa)(v185, v150);
          v262(v188, v150);
        }

        return v182(v318, v308, v150);
      }

      sub_256033238(v149, &qword_27F8256A8, &qword_2560559A0);
      v87 = v150;
    }

    else
    {
    }

    v169 = v324;
    v170 = HIBYTE(v323) & 0xF;
    if ((v323 & 0x2000000000000000) == 0)
    {
      v170 = v321 & 0xFFFFFFFFFFFFLL;
    }

    v171 = v317;
    if (v170)
    {
      v172 = v333;
      if (v333)
      {
        v319 = (*(v331 + 80) + 32) & ~*(v331 + 80);
        v115 = v330 + v319;
        v173 = *(v331 + 72);
        v320 = *(v331 + 16);
        v330 = MEMORY[0x277D84F90];
        v313 = v173;
        do
        {
          v174 = v339;
          v320(v171, v115, v339);
          sub_2560533DC();
          v175 = sub_25605372C();

          if (v175)
          {
            v176 = v338->isa;
            (v338->isa)(v322, v171, v174);
            v177 = v330;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v344 = v177;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25604D6F8(0, *(v177 + 16) + 1, 1);
              v171 = v317;
              v177 = v344;
            }

            v180 = *(v177 + 16);
            v179 = *(v177 + 24);
            if (v180 >= v179 >> 1)
            {
              sub_25604D6F8(v179 > 1, v180 + 1, 1);
              v171 = v317;
              v177 = v344;
            }

            *(v177 + 16) = v180 + 1;
            v330 = v177;
            v181 = v177 + v319;
            v173 = v313;
            v176(v181 + v180 * v313, v322, v339);
            v141 = v337;
          }

          else
          {
            (v336->isa)(v171, v174);
          }

          v115 += v173;
          --v172;
        }

        while (v172);
      }

      else
      {
        v330 = MEMORY[0x277D84F90];
      }

      v198 = sub_25605382C();
      v199 = os_log_type_enabled(v316, v198);
      v200 = v330;
      if (v199)
      {
        v115 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v344 = v201;
        *v115 = 136315394;
        *(v115 + 4) = sub_256032BA0(v321, v323, &v344);
        *(v115 + 12) = 2080;
        v202 = MEMORY[0x259C574B0](v200, v339);
        v204 = sub_256032BA0(v202, v203, &v344);

        *(v115 + 14) = v204;
        _os_log_impl(&dword_256022000, v316, v198, "TranscriberV2: Searching default locale for languageCode: %s from locales: %s", v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v201, -1, -1);
        MEMORY[0x259C57FC0](v115, -1, -1);
      }

      j = 0;
      v205 = MEMORY[0x277D84F90];
      v330 = v200;
      v206 = *(v200 + 16);
      v87 = v339;
      v207 = v327;
      v208 = v206;
      if (v206)
      {
        goto LABEL_71;
      }

LABEL_70:
      v209 = 1;
      for (j = v206; ; ++j)
      {
        v101(v207, v209, 1, v141);
        v214 = v326;
        sub_25603757C(v207, v326, &qword_27F825760, &qword_2560561B0);
        if (v102(v214, 1, v141) == 1)
        {
          break;
        }

        (v338->isa)(v328, v214 + *(v141 + 48), v87);
        v344 = sub_2560533DC();
        v345 = v215;
        v342 = 95;
        v343 = 0xE100000000000000;
        v340 = 45;
        v341 = 0xE100000000000000;
        v293 = v325;
        v294 = v325;
        v292 = v325;
        v291 = MEMORY[0x277D837D0];
        v216 = sub_25605387C();
        v115 = v217;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v205 = sub_25604B9C4(0, *(v205 + 2) + 1, 1, v205);
        }

        v219 = *(v205 + 2);
        v218 = *(v205 + 3);
        if (v219 >= v218 >> 1)
        {
          v205 = sub_25604B9C4((v218 > 1), v219 + 1, 1, v205);
        }

        v87 = v339;
        (v336->isa)(v328, v339);
        *(v205 + 2) = v219 + 1;
        v220 = &v205[16 * v219];
        *(v220 + 4) = v216;
        *(v220 + 5) = v115;
        v141 = v337;
        v207 = v327;
        v206 = v208;
        if (j == v208)
        {
          goto LABEL_70;
        }

LABEL_71:
        if ((j & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        if (j >= *(v330 + 16))
        {
          goto LABEL_115;
        }

        v210 = v331;
        v211 = v330 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * j;
        v212 = *(v141 + 48);
        v213 = v329;
        *v329 = j;
        (*(v210 + 16))(v213 + v212, v211, v87);
        sub_25603757C(v213, v207, &qword_27F825758, &unk_256055CB0);
        v209 = 0;
      }

      v221 = sub_25605380C();
      v88 = v316;
      v222 = os_log_type_enabled(v316, v221);
      v223 = v323;
      if (v222)
      {
        v224 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v344 = v225;
        *v224 = 136315138;
        v226 = MEMORY[0x259C574B0](v205, MEMORY[0x277D837D0]);
        v228 = sub_256032BA0(v226, v227, &v344);
        v88 = v316;

        *(v224 + 4) = v228;
        _os_log_impl(&dword_256022000, v88, v221, "TranscriberV2: localeIDsWithLanguageCode: %s", v224, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v225);
        MEMORY[0x259C57FC0](v225, -1, -1);
        MEMORY[0x259C57FC0](v224, -1, -1);
      }

      v229 = *(v330 + 16);
      if (v208 && v229 == 1)
      {

        if (*(v330 + 16))
        {
          v230 = *(v331 + 16);
          v231 = v306;
          v230(v306, v330 + ((*(v331 + 80) + 32) & ~*(v331 + 80)), v87);

          v232 = sub_25605382C();
          v233 = v304;
          v230(v304, v231, v87);
          v234 = os_log_type_enabled(v88, v232);
          v235 = v324;
          if (v234)
          {
            v236 = swift_slowAlloc();
            v237 = v88;
            v238 = swift_slowAlloc();
            v344 = v238;
            *v236 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
            v239 = sub_25605397C();
            v240 = v233;
            v242 = v241;
            v243 = v336->isa;
            (v336->isa)(v240, v87);
            v244 = sub_256032BA0(v239, v242, &v344);

            *(v236 + 4) = v244;
            _os_log_impl(&dword_256022000, v237, v232, "TranscriberV2: default is the only locale with language code: %s", v236, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v238);
            MEMORY[0x259C57FC0](v238, -1, -1);
            MEMORY[0x259C57FC0](v236, -1, -1);
            v243(v235, v87);
          }

          else
          {
            v263 = v336->isa;
            (v336->isa)(v233, v87);
            v263(v235, v87);
          }

          return (v338->isa)(v318, v306, v87);
        }

        __break(1u);
      }

      else
      {
        if (v229 < 2)
        {

          v169 = v324;
          goto LABEL_98;
        }

        v245 = v321;
        v246 = sub_2560536CC();
        v247 = v303;
        sub_256046820(v245, v223, v246, v248, v330, v205, v303);

        v249 = v314;
        if (v314(v247, 1, v87) != 1)
        {

          v151 = v338->isa;
          v264 = v301;
          (v338->isa)(v301, v247, v87);
          v265 = sub_25605382C();
          v266 = v299;
          (v332->isa)(v299, v264, v87);
          if (os_log_type_enabled(v88, v265))
          {
            v267 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            v344 = v268;
            *v267 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
            v269 = sub_25605397C();
            v270 = v266;
            v272 = v271;
            v273 = v336->isa;
            (v336->isa)(v270, v87);
            v274 = sub_256032BA0(v269, v272, &v344);

            *(v267 + 4) = v274;
            _os_log_impl(&dword_256022000, v316, v265, "TranscriberV2: default is locale with language with language region: %s", v267, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v268);
            MEMORY[0x259C57FC0](v268, -1, -1);
            MEMORY[0x259C57FC0](v267, -1, -1);
            v273(v324, v87);
          }

          else
          {
            v288 = v336->isa;
            (v336->isa)(v266, v87);
            v288(v324, v87);
          }

          v166 = v318;
          v168 = v264;
          return v151(v166, v168, v87);
        }

        sub_256033238(v247, &qword_27F8256A8, &qword_2560559A0);
        i = v300;
        sub_256046820(v245, v223, 21333, 0xE200000000000000, v330, v205, v300);

        if (v249(i, 1, v87) != 1)
        {
          goto LABEL_105;
        }

        result = sub_256033238(i, &qword_27F8256A8, &qword_2560559A0);
        v169 = v324;
        if (!v208)
        {

          goto LABEL_98;
        }

        if (*(v330 + 16))
        {
          v250 = *(v331 + 16);
          v251 = v297;
          v250(v297, v330 + ((*(v331 + 80) + 32) & ~*(v331 + 80)), v87);

          v252 = sub_25605382C();
          v253 = v296;
          v250(v296, v251, v87);
          if (os_log_type_enabled(v88, v252))
          {
            v254 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v344 = v255;
            *v254 = 136315138;
            sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
            v256 = sub_25605397C();
            v257 = v253;
            v259 = v258;
            v260 = v336->isa;
            (v336->isa)(v257, v87);
            v261 = sub_256032BA0(v256, v259, &v344);

            *(v254 + 4) = v261;
            _os_log_impl(&dword_256022000, v316, v252, "TranscriberV2: default is first locale with language code: %s", v254, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v255);
            MEMORY[0x259C57FC0](v255, -1, -1);
            MEMORY[0x259C57FC0](v254, -1, -1);
            v260(v169, v87);
          }

          else
          {
            v290 = v336->isa;
            (v336->isa)(v253, v87);
            v290(v169, v87);
          }

          return (v338->isa)(v318, v251, v87);
        }
      }

      __break(1u);
      return result;
    }

LABEL_98:
    sub_25605382C();
    sub_2560534AC();
    sub_2560533CC();
    return (v336->isa)(v169, v87);
  }
}

uint64_t sub_25603DD28(const void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v1[2] = swift_task_alloc();
  v4 = sub_25605347C();
  v1[3] = v4;
  v5 = *(v4 - 8);
  v1[4] = v5;
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = _Block_copy(a1);
  v1[7] = swift_getObjCClassMetadata();
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v1;
  v7[1] = sub_256034690;

  return sub_25604ED4C();
}

uint64_t sub_25603DEF8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_2560537AC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  v16 = a1;
  v17 = a2;

  sub_25603E5A8(0, 0, v12, &unk_256055E90, v14);
}

uint64_t sub_25603E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_25603E0FC;

  return sub_25603F5EC(a5, a6, a7, a8);
}

uint64_t sub_25603E0FC(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_25603E1FC, 0, 0);
}

uint64_t sub_25603E1FC()
{
  v28 = v0;
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
    if (v1)
    {
      v2 = (*(v0 + 24) + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID);
      v3 = *&v1[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID] == *v2 && *&v1[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appID + 8] == v2[1];
      if (!v3 && (sub_25605398C() & 1) == 0)
      {
        v4 = qword_27F825628;
        v5 = v1;
        if (v4 != -1)
        {
          swift_once();
        }

        v6 = byte_27F8260B9;
        if (qword_27F825630 != -1)
        {
          swift_once();
        }

        v7 = qword_27F8260C0;
        if (os_log_type_enabled(qword_27F8260C0, v6))
        {
          v8 = *(v0 + 24);
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v27 = v10;
          *v9 = 136315650;
          *(v9 + 4) = sub_256032BA0(*(v8 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v8 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v27);
          *(v9 + 12) = 2080;
          v11 = *&v5[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName];
          v12 = *&v5[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8];

          v13 = sub_256032BA0(v11, v12, &v27);

          *(v9 + 14) = v13;
          *(v9 + 22) = 2080;
          v14 = [objc_opt_self() currentThread];
          v15 = [v14 description];
          v16 = sub_2560536AC();
          v18 = v17;

          v19 = sub_256032BA0(v16, v18, &v27);

          *(v9 + 24) = v19;
          _os_log_impl(&dword_256022000, v7, v6, "TranscriberV2: startTranscription Skipped Source: %s Transcribing Source: %s thread: %s", v9, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v10, -1, -1);
          MEMORY[0x259C57FC0](v9, -1, -1);
        }
      }
    }

    else
    {
      v20 = sub_25605381C();
      if (qword_27F825630 != -1)
      {
        swift_once();
      }

      v21 = qword_27F8260C0;
      if (os_log_type_enabled(qword_27F8260C0, v20))
      {
        v22 = *(v0 + 24);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_256032BA0(*(v22 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v22 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v27);
        _os_log_impl(&dword_256022000, v21, v20, "TranscriberV2: startTranscription Skipped Source: %s Transcribing Source: NULL", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x259C57FC0](v24, -1, -1);
        MEMORY[0x259C57FC0](v23, -1, -1);
      }
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_25603E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2560331D0(a3, v27 - v11, &qword_27F825750, &qword_256055E80);
  v13 = sub_2560537AC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_256033238(v12, &qword_27F825750, &qword_256055E80);
  }

  else
  {
    sub_25605379C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25605377C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2560536DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_256033238(a3, &qword_27F825750, &qword_256055E80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_256033238(a3, &qword_27F825750, &qword_256055E80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25603EA0C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_2560537AC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  sub_25603E5A8(0, 0, v6, &unk_256055EA0, v8);
}

uint64_t sub_25603EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_25603EBB8;

  return sub_256043700(a5);
}

uint64_t sub_25603EBB8(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_25603ECB8, 0, 0);
}

uint64_t sub_25603ECB8()
{
  v15 = v0;
  if ((*(v0 + 32) & 1) == 0)
  {
    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v1 = byte_27F8260B9;
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v2 = qword_27F8260C0;
    if (os_log_type_enabled(qword_27F8260C0, v1))
    {
      v3 = *(v0 + 16);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_256032BA0(*(v3 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v3 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v14);
      *(v4 + 12) = 2080;
      v6 = [objc_opt_self() currentThread];
      v7 = [v6 description];
      v8 = sub_2560536AC();
      v10 = v9;

      v11 = sub_256032BA0(v8, v10, &v14);

      *(v4 + 14) = v11;
      _os_log_impl(&dword_256022000, v2, v1, "TranscriberV2: stopTranscription Skip Source: %s thread: %s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v5, -1, -1);
      MEMORY[0x259C57FC0](v4, -1, -1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25603EFF0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_2560537AC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;
  v12 = a1;
  v13 = a2;
  sub_25603E5A8(0, 0, v8, &unk_256055EB0, v10);
}

uint64_t sub_25603F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25603F134, 0, 0);
}

uint64_t sub_25603F134()
{
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v0 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_25603F1C8, v0, 0);
}

uint64_t sub_25603F1C8()
{
  v1 = *(v0 + 16);
  sub_256044E38(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25603F350()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_2560537AC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_25603E5A8(0, 0, v4, &unk_256055EC0, v6);
}

uint64_t sub_25603F454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2560370C8;

  return sub_256044788();
}

uint64_t sub_25603F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = swift_getObjectType();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256C0, &qword_2560559B0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825968, &qword_2560560A8);
  v5[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825970, &qword_2560560B0);
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825960, &unk_256056098) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825978, &qword_2560560B8) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v15 = sub_2560535BC();
  v5[35] = v15;
  v16 = *(v15 - 8);
  v5[36] = v16;
  v17 = *(v16 + 64) + 15;
  v5[37] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825980, &qword_2560560C0);
  v5[38] = v18;
  v19 = *(v18 - 8);
  v5[39] = v19;
  v20 = *(v19 + 64) + 15;
  v5[40] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v5[41] = v21;
  v22 = *(v21 - 8);
  v5[42] = v22;
  v23 = *(v22 + 64) + 15;
  v5[43] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  v5[44] = v24;
  v25 = *(v24 - 8);
  v5[45] = v25;
  v26 = *(v25 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v27 = sub_2560534BC();
  v5[48] = v27;
  v28 = *(v27 - 8);
  v5[49] = v28;
  v29 = *(v28 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v30 = sub_2560534EC();
  v5[52] = v30;
  v31 = *(v30 - 8);
  v5[53] = v31;
  v32 = *(v31 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v34 = sub_25605347C();
  v5[57] = v34;
  v35 = *(v34 - 8);
  v5[58] = v35;
  v36 = *(v35 + 64) + 15;
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v37 = qword_27F826120;
  v5[62] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_25603FB48, v37, 0);
}

uint64_t sub_25603FB48()
{
  v61 = v0;
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  *(v0 + 504) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  if (*(v1 + v2))
  {
    v4 = *(v0 + 480);
    v3 = *(v0 + 488);
    v5 = *(v0 + 472);
    v6 = *(v0 + 440);
    v7 = *(v0 + 448);
    v8 = *(v0 + 432);
    v10 = *(v0 + 400);
    v9 = *(v0 + 408);
    v12 = *(v0 + 368);
    v11 = *(v0 + 376);
    v48 = *(v0 + 344);
    v49 = *(v0 + 320);
    v50 = *(v0 + 296);
    v51 = *(v0 + 272);
    v52 = *(v0 + 264);
    v53 = *(v0 + 256);
    v54 = *(v0 + 248);
    v55 = *(v0 + 224);
    v56 = *(v0 + 208);
    log = *(v0 + 200);

    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    v15 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v16 = qword_27F8260C0;
    *(v0 + 512) = qword_27F8260C0;
    if (os_log_type_enabled(v16, v15))
    {
      v17 = v16;
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v60 = loga;
      *v20 = 136315394;
      *(v20 + 4) = sub_256032BA0(*(v19 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v19 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v60);
      *(v20 + 12) = 2080;
      v21 = v18;
      v16 = v17;
      v22 = v21;
      v23 = [v21 description];
      v24 = sub_2560536AC();
      v26 = v25;

      v27 = sub_256032BA0(v24, v26, &v60);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_256022000, v16, v15, "TranscriberV2: startTranscription for source: %s audioFormat: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](loga, -1, -1);
      MEMORY[0x259C57FC0](v20, -1, -1);
    }

    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v28 = byte_27F8260B9;
    *(v0 + 680) = byte_27F8260B9;
    if (os_log_type_enabled(v16, v28))
    {
      v29 = swift_slowAlloc();
      logb = v16;
      v60 = swift_slowAlloc();
      v30 = v60;
      *v29 = 136315138;
      v31 = [objc_opt_self() currentThread];
      v32 = [v31 description];
      v33 = sub_2560536AC();
      v35 = v34;

      v36 = sub_256032BA0(v33, v35, &v60);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_256022000, logb, v28, "thread: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C57FC0](v30, -1, -1);
      MEMORY[0x259C57FC0](v29, -1, -1);
    }

    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v39 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = *(v1 + v2);
    *(v1 + v2) = v40;
    v42 = v40;

    v43 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback;
    *(v0 + 520) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback;
    v44 = (v37 + v43);
    v45 = *v44;
    v46 = v44[1];
    *v44 = v39;
    v44[1] = v38;

    sub_2560502B0(v45);
    v47 = swift_task_alloc();
    *(v0 + 528) = v47;
    *v47 = v0;
    v47[1] = sub_256040034;

    return sub_25604ED4C();
  }
}

uint64_t sub_256040034(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_256040134, 0, 0);
}

uint64_t sub_256040134()
{
  v1 = v0[67];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[56];
  v7 = v0[24];
  v8 = v0[19];
  v9 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v0[68] = v10;
  v0[69] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v8 + v9, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_25603B53C(v6, v1, v3);

  sub_256033238(v6, &qword_27F8256A8, &qword_2560559A0);

  return MEMORY[0x2822009F8](sub_25604026C, v2, 0);
}

uint64_t sub_25604026C()
{
  v97 = v0;
  v1 = *(*(v0 + 184) + *(v0 + 504));
  v2 = *(v0 + 152);
  if (v1)
  {
    *(v0 + 560) = type metadata accessor for AXLiveCaptionSourceInfo(0);
    v3 = v1;
    v4 = sub_25605384C();

    if (v4)
    {
      v5 = *(*(v0 + 184) + *(v0 + 504));
      if (v5)
      {
        v6 = *(v0 + 552);
        v7 = *(v0 + 480);
        v8 = *(v0 + 456);
        v9 = *(v0 + 464);
        (*(v0 + 544))(v7, *(v0 + 488), v8);
        v10 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
        swift_beginAccess();
        v11 = *(v9 + 40);
        v12 = v5;
        v11(&v5[v10], v7, v8);
        swift_endAccess();
      }

      v13 = *(v0 + 552);
      v14 = *(v0 + 544);
      v15 = *(v0 + 512);
      v16 = *(v0 + 488);
      v17 = *(v0 + 472);
      v18 = *(v0 + 456);
      v19 = sub_25605382C();
      v14(v17, v16, v18);
      if (os_log_type_enabled(v15, v19))
      {
        log = *(v0 + 512);
        v21 = *(v0 + 464);
        v20 = *(v0 + 472);
        v22 = *(v0 + 456);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v96 = v24;
        *v23 = 136315138;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
        v25 = sub_25605397C();
        v27 = v26;
        v28 = *(v21 + 8);
        v28(v20, v22);
        v29 = sub_256032BA0(v25, v27, &v96);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_256022000, log, v19, "TranscriberV2: Corrected Locale: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x259C57FC0](v24, -1, -1);
        MEMORY[0x259C57FC0](v23, -1, -1);
      }

      else
      {
        v28 = *(*(v0 + 464) + 8);
        v28(*(v0 + 472), *(v0 + 456));
      }

      *(v0 + 568) = v28;
      v89 = *(v0 + 544);
      v91 = *(v0 + 552);
      v79 = *(v0 + 480);
      v81 = *(v0 + 456);
      v83 = *(v0 + 488);
      v39 = *(v0 + 440);
      v40 = *(v0 + 424);
      v85 = *(v0 + 432);
      v87 = *(v0 + 416);
      v41 = *(v0 + 400);
      v42 = *(v0 + 408);
      v44 = *(v0 + 384);
      v43 = *(v0 + 392);
      loga = *(v0 + 184);
      sub_2560534DC();
      (*(v43 + 104))(v41, *MEMORY[0x277CDC9B8], v44);
      v45 = sub_2560534CC();
      sub_25604D8F0(v42, v41);
      (*(v43 + 8))(v42, v44);
      v45(v0 + 16, 0);
      sub_25605353C();
      v89(v79, v83, v81);
      (*(v40 + 16))(v85, v39, v87);
      v46 = sub_25605351C();
      *(v0 + 576) = v46;
      v47 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber;
      *(v0 + 584) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber;
      v48 = *(&loga->isa + v47);
      *(&loga->isa + v47) = v46;

      v49 = swift_task_alloc();
      *(v0 + 592) = v49;
      *v49 = v0;
      v49[1] = sub_256040948;
      v50 = *(v0 + 488);
      v51 = *(v0 + 184);

      return sub_256046DA4(v50);
    }
  }

  else
  {
  }

  if (os_log_type_enabled(*(v0 + 512), *(v0 + 680)))
  {
    v30 = *(v0 + 504);
    v31 = *(v0 + 184);
    v32 = *(v0 + 152);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v96 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_256032BA0(*(v32 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v32 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v96);
    *(v33 + 12) = 2080;
    v35 = *(v31 + v30);
    if (v35)
    {
      v36 = (v35 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
      v38 = *v36;
      v37 = v36[1];
    }

    else
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    v53 = *(v0 + 680);
    v54 = *(v0 + 512);
    v55 = *(v0 + 488);
    v56 = *(v0 + 456);
    v57 = *(v0 + 464);
    v58 = sub_256032BA0(v38, v37, &v96);

    *(v33 + 14) = v58;
    _os_log_impl(&dword_256022000, v54, v53, "TranscriberV2 startTranscription failed after locale check, for source: %s new source: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v34, -1, -1);
    MEMORY[0x259C57FC0](v33, -1, -1);
    (*(v57 + 8))(v55, v56);
  }

  else
  {
    (*(*(v0 + 464) + 8))(*(v0 + 488), *(v0 + 456));
  }

  v59 = *(v0 + 504);
  v60 = *(v0 + 184);
  v61 = (v60 + *(v0 + 520));
  v62 = *(v60 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
  *(v60 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v63 = *(v60 + v59);
  *(v60 + v59) = 0;

  v64 = *v61;
  v65 = v61[1];
  *v61 = 0;
  v61[1] = 0;
  sub_2560502B0(v64);
  v67 = *(v0 + 480);
  v66 = *(v0 + 488);
  v68 = *(v0 + 472);
  v69 = *(v0 + 440);
  v70 = *(v0 + 448);
  v71 = *(v0 + 432);
  v73 = *(v0 + 400);
  v72 = *(v0 + 408);
  v75 = *(v0 + 368);
  v74 = *(v0 + 376);
  v77 = *(v0 + 344);
  v78 = *(v0 + 320);
  v80 = *(v0 + 296);
  v82 = *(v0 + 272);
  v84 = *(v0 + 264);
  v86 = *(v0 + 256);
  v88 = *(v0 + 248);
  v90 = *(v0 + 224);
  v92 = *(v0 + 208);
  logb = *(v0 + 200);

  v76 = *(v0 + 8);

  return v76(0);
}

uint64_t sub_256040948(char a1)
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 681) = a1;

  return MEMORY[0x2822009F8](sub_256040A60, v3, 0);
}

uint64_t sub_256040A60()
{
  v206 = v0;
  if ((*(v0 + 681) & 1) == 0)
  {
    v25 = *(v0 + 512);
    v26 = sub_25605381C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 576);
    v29 = *(v0 + 568);
    if (v27)
    {
      v30 = *(v0 + 512);
      v200 = *(v0 + 488);
      v192 = *(v0 + 464);
      oslog = *(v0 + 456);
      v188 = *(v0 + 440);
      v32 = *(v0 + 416);
      v31 = *(v0 + 424);
      v33 = *(v0 + 152);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v205 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_256032BA0(*(v33 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v33 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v205);
      _os_log_impl(&dword_256022000, v30, v26, "TranscriberV2: startTranscription failed, no assets, for source: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x259C57FC0](v35, -1, -1);
      MEMORY[0x259C57FC0](v34, -1, -1);

      (*(v31 + 8))(v188, v32);
      v36 = oslog;
      v37 = v200;
    }

    else
    {
      v47 = *(v0 + 488);
      v48 = *(v0 + 456);
      v49 = *(v0 + 464);
      v50 = *(v0 + 440);
      v51 = *(v0 + 416);
      v52 = *(v0 + 424);
      v53 = *(v0 + 576);

      (*(v52 + 8))(v50, v51);
      v37 = v47;
      v36 = v48;
    }

    v29(v37, v36);
    goto LABEL_20;
  }

  v1 = *(*(v0 + 184) + *(v0 + 504));
  if (!v1 || (v2 = *(v0 + 560), v3 = *(v0 + 152), v4 = v1, LOBYTE(v2) = sub_25605384C(), v4, v3, (v2 & 1) == 0))
  {
    if (os_log_type_enabled(*(v0 + 512), *(v0 + 680)))
    {
      v38 = *(v0 + 504);
      v39 = *(v0 + 184);
      v40 = *(v0 + 152);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v205 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_256032BA0(*(v40 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v40 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v205);
      *(v41 + 12) = 2080;
      v43 = *(v39 + v38);
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
        v46 = *v44;
        v45 = v44[1];
      }

      else
      {
        v45 = 0xE300000000000000;
        v46 = 7104878;
      }

      v185 = *(v0 + 576);
      v201 = *(v0 + 568);
      v62 = *(v0 + 680);
      v63 = *(v0 + 512);
      v189 = *(v0 + 464);
      v193 = *(v0 + 456);
      osloga = *(v0 + 488);
      v64 = *(v0 + 440);
      v65 = *(v0 + 416);
      v66 = *(v0 + 424);
      v67 = sub_256032BA0(v46, v45, &v205);

      *(v41 + 14) = v67;
      _os_log_impl(&dword_256022000, v63, v62, "TranscriberV2: startTranscription failed after assets check, for source: %s, new source: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v42, -1, -1);
      MEMORY[0x259C57FC0](v41, -1, -1);

      (*(v66 + 8))(v64, v65);
      v201(osloga, v193);
    }

    else
    {
      v54 = *(v0 + 576);
      v55 = *(v0 + 568);
      v56 = *(v0 + 488);
      v57 = *(v0 + 456);
      v58 = *(v0 + 464);
      v59 = *(v0 + 440);
      v60 = *(v0 + 416);
      v61 = *(v0 + 424);

      (*(v61 + 8))(v59, v60);
      v55(v56, v57);
    }

LABEL_20:
    v68 = *(v0 + 504);
    v69 = *(v0 + 584);
    v70 = *(v0 + 184);
    v71 = (v70 + *(v0 + 520));
    v72 = *(v70 + v69);
    *(v70 + v69) = 0;

    v73 = *(v70 + v68);
    *(v70 + v68) = 0;

    v74 = *v71;
    v75 = v71[1];
    *v71 = 0;
    v71[1] = 0;
    sub_2560502B0(v74);
    v77 = *(v0 + 480);
    v76 = *(v0 + 488);
    v78 = *(v0 + 472);
    v79 = *(v0 + 440);
    v80 = *(v0 + 448);
    v81 = *(v0 + 432);
    v83 = *(v0 + 400);
    v82 = *(v0 + 408);
    v85 = *(v0 + 368);
    v84 = *(v0 + 376);
    v178 = *(v0 + 344);
    v179 = *(v0 + 320);
    v181 = *(v0 + 296);
    v182 = *(v0 + 272);
    v184 = *(v0 + 264);
    v186 = *(v0 + 256);
    v190 = *(v0 + 248);
    v194 = *(v0 + 224);
    oslogb = *(v0 + 208);
    v202 = *(v0 + 200);

    v86 = *(v0 + 8);

    return v86(0);
  }

  v5 = *(v0 + 184);
  v6 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat;
  *(v0 + 600) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat;
  if (*(v5 + v6))
  {
    v7 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter;
    v8 = *(v5 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
    *(v5 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

    v9 = *(v5 + v6);
    if (v9)
    {
      v10 = *(v0 + 160);
      v11 = v9;
      v12 = [v11 isEqual_];
      v13 = *(v0 + 512);
      if ((v12 & 1) == 0)
      {
        v158 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:*(v0 + 160) toFormat:v11];
        v159 = *(v5 + v7);
        *(v5 + v7) = v158;

        v160 = sub_25605382C();
        if (os_log_type_enabled(v13, v160))
        {
          v204 = *(v0 + 512);
          v161 = *(v0 + 160);
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v205 = v163;
          *v162 = 136315394;
          v164 = v161;
          v165 = [v164 description];
          v166 = sub_2560536AC();
          v168 = v167;

          v169 = sub_256032BA0(v166, v168, &v205);

          *(v162 + 4) = v169;
          *(v162 + 12) = 2080;
          v11 = v11;
          v170 = [v11 description];
          v171 = sub_2560536AC();
          v173 = v172;

          v174 = sub_256032BA0(v171, v173, &v205);

          *(v162 + 14) = v174;
          _os_log_impl(&dword_256022000, v204, v160, "TranscriberV2: audio converter from: %s to %s", v162, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v163, -1, -1);
          MEMORY[0x259C57FC0](v162, -1, -1);
        }

        else
        {
        }

        goto LABEL_29;
      }

      v14 = sub_25605382C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 512);
        v16 = *(v0 + 160);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v205 = v18;
        *v17 = 136315138;
        v19 = v16;
        v20 = [v19 description];
        v21 = sub_2560536AC();
        v23 = v22;

        v24 = sub_256032BA0(v21, v23, &v205);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_256022000, v15, v14, "TranscriberV2: No conversion needed, audioFormat: %s)", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x259C57FC0](v18, -1, -1);
        MEMORY[0x259C57FC0](v17, -1, -1);
      }
    }

    else
    {
      v93 = *(v0 + 512);
      v94 = *(v0 + 160);
      v95 = sub_25605382C();
      if (os_log_type_enabled(v93, v95))
      {
        v96 = *(v0 + 512);
        v97 = *(v0 + 160);
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v205 = v99;
        *v98 = 136315138;
        v100 = v97;
        v101 = [v100 description];
        v102 = sub_2560536AC();
        v104 = v103;

        v105 = sub_256032BA0(v102, v104, &v205);

        *(v98 + 4) = v105;
        _os_log_impl(&dword_256022000, v96, v95, "TranscriberV2: No bestAudioFormat, audioFormat: %s)", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x259C57FC0](v99, -1, -1);
        MEMORY[0x259C57FC0](v98, -1, -1);
      }
    }

    v11 = *(v0 + 160);
LABEL_29:
    *(v0 + 632) = v11;
    v106 = *(v0 + 376);
    v107 = *(v0 + 344);
    v109 = *(v0 + 312);
    v108 = *(v0 + 320);
    v110 = *(v0 + 304);
    sub_2560535DC();
    (*(v109 + 104))(v108, *MEMORY[0x277D85778], v110);
    sub_2560537BC();
    (*(v109 + 8))(v108, v110);
    sub_25605359C();
    if (qword_27F825658 != -1)
    {
      swift_once();
    }

    v176 = *(v0 + 576);
    v203 = *(v0 + 680);
    v111 = *(v0 + 368);
    v112 = *(v0 + 376);
    v114 = *(v0 + 352);
    v113 = *(v0 + 360);
    v115 = *(v0 + 336);
    v195 = *(v0 + 344);
    oslogc = *(v0 + 512);
    v116 = *(v0 + 288);
    v117 = *(v0 + 296);
    v118 = *(v0 + 280);
    v177 = *(v0 + 272);
    v183 = *(v0 + 264);
    v187 = *(v0 + 256);
    v191 = *(v0 + 328);
    v119 = *(v0 + 184);
    v120 = __swift_project_value_buffer(v118, qword_27F825848);
    (*(v116 + 16))(v117, v120, v118);
    v180 = *(v113 + 16);
    v180(v111, v112, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_256055E40;
    v122 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0]);
    *(v121 + 32) = v176;
    *(v121 + 40) = v122;
    v123 = sub_25605358C();
    (*(*(v123 - 8) + 56))(v177, 1, 1, v123);
    v124 = sub_2560535FC();
    v125 = *(v124 + 48);
    v126 = *(v124 + 52);
    swift_allocObject();

    sub_2560535EC();
    v175 = sub_25605062C();
    v127 = sub_25605357C();
    v128 = *(v119 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer);
    *(v119 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer) = v127;

    v180(v183, v112, v114);
    (*(v113 + 56))(v183, 0, 1, v114);
    v129 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
    swift_beginAccess();
    sub_25605058C(v183, v119 + v129, &qword_27F825960, &unk_256056098);
    swift_endAccess();
    (*(v115 + 16))(v187, v195, v191);
    (*(v115 + 56))(v187, 0, 1, v191);
    v130 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_25605058C(v187, v119 + v130, &qword_27F825930, &qword_256056068);
    swift_endAccess();
    if (os_log_type_enabled(oslogc, v203))
    {
      v131 = *(v0 + 680);
      v132 = *(v0 + 512);
      v133 = *(v0 + 152);
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v205 = v135;
      *v134 = 136315394;
      *(v134 + 4) = sub_256032BA0(*(v133 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v133 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v205);
      *(v134 + 12) = 2080;
      v136 = [objc_opt_self() currentThread];
      v137 = [v136 description];
      v138 = sub_2560536AC();
      v140 = v139;

      v141 = sub_256032BA0(v138, v140, &v205);

      *(v134 + 14) = v141;
      _os_log_impl(&dword_256022000, v132, v131, "TranscriberV2: startTranscription Started Source: %s thread: %s", v134, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v135, -1, -1);
      MEMORY[0x259C57FC0](v134, -1, -1);
    }

    v142 = *(v0 + 576);
    v143 = *(v0 + 248);
    v145 = *(v0 + 216);
    v144 = *(v0 + 224);
    sub_25605352C();
    *(v0 + 640) = swift_getOpaqueTypeConformance2();
    sub_2560537EC();
    v147 = sub_2560506F4(&qword_27F8258F8, v146, type metadata accessor for AXLCTranscriberActor);
    *(v0 + 648) = v147;
    *(v0 + 656) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName;
    *(v0 + 664) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType;
    v148 = *(v0 + 640);
    v149 = *(v0 + 496);
    v150 = *(v0 + 232);
    v151 = *(v0 + 216);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v153 = *(MEMORY[0x277D856D8] + 4);
    v154 = swift_task_alloc();
    *(v0 + 672) = v154;
    *v154 = v0;
    v154[1] = sub_2560429B0;
    v155 = *(v0 + 248);
    v156 = *(v0 + 232);
    v157 = *(v0 + 208);

    return MEMORY[0x282200310](v157, v149, v147, v0 + 144, v156, AssociatedConformanceWitness);
  }

  v88 = *(v0 + 576);
  sub_25605359C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
  v89 = swift_allocObject();
  *(v0 + 608) = v89;
  *(v89 + 16) = xmmword_256055E40;
  v90 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0]);
  *(v89 + 32) = v88;
  *(v89 + 40) = v90;
  v91 = *(MEMORY[0x277CDCA40] + 4);

  v92 = swift_task_alloc();
  *(v0 + 616) = v92;
  *v92 = v0;
  v92[1] = sub_256041AA8;

  return MEMORY[0x28212BBE0](v89);
}

uint64_t sub_256041AA8(uint64_t a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 496);
  v6 = *v1;
  *(*v1 + 624) = a1;

  return MEMORY[0x2822009F8](sub_256041BDC, v4, 0);
}

uint64_t sub_256041BDC()
{
  v181 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 504);
  v3 = *(v0 + 184);
  v4 = *(v3 + v1);
  *(v3 + v1) = *(v0 + 624);

  v5 = *(v3 + v2);
  if (v5)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 152);
    v8 = v5;
    LOBYTE(v6) = sub_25605384C();

    if (v6)
    {
      v9 = *(v0 + 600);
      v10 = *(v0 + 184);
      v11 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter;
      v12 = *(v10 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
      *(v10 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

      v13 = *(v10 + v9);
      if (v13)
      {
        v14 = *(v0 + 160);
        v15 = v13;
        v16 = [v15 isEqual_];
        v17 = *(v0 + 512);
        if ((v16 & 1) == 0)
        {
          v137 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:*(v0 + 160) toFormat:v15];
          v138 = *(v10 + v11);
          *(v10 + v11) = v137;

          v139 = sub_25605382C();
          if (os_log_type_enabled(v17, v139))
          {
            v179 = *(v0 + 512);
            v140 = *(v0 + 160);
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v180 = v142;
            *v141 = 136315394;
            v143 = v140;
            v144 = [v143 description];
            v145 = sub_2560536AC();
            v147 = v146;

            v148 = sub_256032BA0(v145, v147, &v180);

            *(v141 + 4) = v148;
            *(v141 + 12) = 2080;
            v15 = v15;
            v149 = [v15 description];
            v150 = sub_2560536AC();
            v152 = v151;

            v153 = sub_256032BA0(v150, v152, &v180);

            *(v141 + 14) = v153;
            _os_log_impl(&dword_256022000, v179, v139, "TranscriberV2: audio converter from: %s to %s", v141, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C57FC0](v142, -1, -1);
            MEMORY[0x259C57FC0](v141, -1, -1);
          }

          else
          {
          }

          goto LABEL_20;
        }

        v18 = sub_25605382C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v0 + 512);
          v20 = *(v0 + 160);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v180 = v22;
          *v21 = 136315138;
          v23 = v20;
          v24 = [v23 description];
          v25 = sub_2560536AC();
          v27 = v26;

          v28 = sub_256032BA0(v25, v27, &v180);

          *(v21 + 4) = v28;
          _os_log_impl(&dword_256022000, v19, v18, "TranscriberV2: No conversion needed, audioFormat: %s)", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x259C57FC0](v22, -1, -1);
          MEMORY[0x259C57FC0](v21, -1, -1);
        }
      }

      else
      {
        v72 = *(v0 + 512);
        v73 = *(v0 + 160);
        v74 = sub_25605382C();
        if (os_log_type_enabled(v72, v74))
        {
          v75 = *(v0 + 512);
          v76 = *(v0 + 160);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v180 = v78;
          *v77 = 136315138;
          v79 = v76;
          v80 = [v79 description];
          v81 = sub_2560536AC();
          v83 = v82;

          v84 = sub_256032BA0(v81, v83, &v180);

          *(v77 + 4) = v84;
          _os_log_impl(&dword_256022000, v75, v74, "TranscriberV2: No bestAudioFormat, audioFormat: %s)", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x259C57FC0](v78, -1, -1);
          MEMORY[0x259C57FC0](v77, -1, -1);
        }
      }

      v15 = *(v0 + 160);
LABEL_20:
      *(v0 + 632) = v15;
      v85 = *(v0 + 376);
      v86 = *(v0 + 344);
      v88 = *(v0 + 312);
      v87 = *(v0 + 320);
      v89 = *(v0 + 304);
      sub_2560535DC();
      (*(v88 + 104))(v87, *MEMORY[0x277D85778], v89);
      sub_2560537BC();
      (*(v88 + 8))(v87, v89);
      sub_25605359C();
      if (qword_27F825658 != -1)
      {
        swift_once();
      }

      v155 = *(v0 + 576);
      v178 = *(v0 + 680);
      v90 = *(v0 + 368);
      v91 = *(v0 + 376);
      v93 = *(v0 + 352);
      v92 = *(v0 + 360);
      v94 = *(v0 + 336);
      v172 = *(v0 + 344);
      oslogb = *(v0 + 512);
      v95 = *(v0 + 288);
      v96 = *(v0 + 296);
      v97 = *(v0 + 280);
      v156 = *(v0 + 272);
      v162 = *(v0 + 264);
      v166 = *(v0 + 256);
      v169 = *(v0 + 328);
      v98 = *(v0 + 184);
      v99 = __swift_project_value_buffer(v97, qword_27F825848);
      (*(v95 + 16))(v96, v99, v97);
      v159 = *(v92 + 16);
      v159(v90, v91, v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_256055E40;
      v101 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0]);
      *(v100 + 32) = v155;
      *(v100 + 40) = v101;
      v102 = sub_25605358C();
      (*(*(v102 - 8) + 56))(v156, 1, 1, v102);
      v103 = sub_2560535FC();
      v104 = *(v103 + 48);
      v105 = *(v103 + 52);
      swift_allocObject();

      sub_2560535EC();
      v154 = sub_25605062C();
      v106 = sub_25605357C();
      v107 = *(v98 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer);
      *(v98 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer) = v106;

      v159(v162, v91, v93);
      (*(v92 + 56))(v162, 0, 1, v93);
      v108 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
      swift_beginAccess();
      sub_25605058C(v162, v98 + v108, &qword_27F825960, &unk_256056098);
      swift_endAccess();
      (*(v94 + 16))(v166, v172, v169);
      (*(v94 + 56))(v166, 0, 1, v169);
      v109 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
      swift_beginAccess();
      sub_25605058C(v166, v98 + v109, &qword_27F825930, &qword_256056068);
      swift_endAccess();
      if (os_log_type_enabled(oslogb, v178))
      {
        v110 = *(v0 + 680);
        v111 = *(v0 + 512);
        v112 = *(v0 + 152);
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v180 = v114;
        *v113 = 136315394;
        *(v113 + 4) = sub_256032BA0(*(v112 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v112 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v180);
        *(v113 + 12) = 2080;
        v115 = [objc_opt_self() currentThread];
        v116 = [v115 description];
        v117 = sub_2560536AC();
        v119 = v118;

        v120 = sub_256032BA0(v117, v119, &v180);

        *(v113 + 14) = v120;
        _os_log_impl(&dword_256022000, v111, v110, "TranscriberV2: startTranscription Started Source: %s thread: %s", v113, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v114, -1, -1);
        MEMORY[0x259C57FC0](v113, -1, -1);
      }

      v121 = *(v0 + 576);
      v122 = *(v0 + 248);
      v124 = *(v0 + 216);
      v123 = *(v0 + 224);
      sub_25605352C();
      *(v0 + 640) = swift_getOpaqueTypeConformance2();
      sub_2560537EC();
      v126 = sub_2560506F4(&qword_27F8258F8, v125, type metadata accessor for AXLCTranscriberActor);
      *(v0 + 648) = v126;
      *(v0 + 656) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName;
      *(v0 + 664) = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_sourceType;
      v127 = *(v0 + 640);
      v128 = *(v0 + 496);
      v129 = *(v0 + 232);
      v130 = *(v0 + 216);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v132 = *(MEMORY[0x277D856D8] + 4);
      v133 = swift_task_alloc();
      *(v0 + 672) = v133;
      *v133 = v0;
      v133[1] = sub_2560429B0;
      v134 = *(v0 + 248);
      v135 = *(v0 + 232);
      v136 = *(v0 + 208);

      return MEMORY[0x282200310](v136, v128, v126, v0 + 144, v135, AssociatedConformanceWitness);
    }
  }

  if (os_log_type_enabled(*(v0 + 512), *(v0 + 680)))
  {
    v29 = *(v0 + 504);
    v30 = *(v0 + 184);
    v31 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v180 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_256032BA0(*(v31 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v31 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v180);
    *(v32 + 12) = 2080;
    v34 = *(v30 + v29);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName);
      v37 = *v35;
      v36 = v35[1];
    }

    else
    {
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    v164 = *(v0 + 576);
    v176 = *(v0 + 568);
    v46 = *(v0 + 680);
    v47 = *(v0 + 512);
    v167 = *(v0 + 464);
    v170 = *(v0 + 456);
    oslog = *(v0 + 488);
    v48 = *(v0 + 440);
    v49 = *(v0 + 416);
    v50 = *(v0 + 424);
    v51 = sub_256032BA0(v37, v36, &v180);

    *(v32 + 14) = v51;
    _os_log_impl(&dword_256022000, v47, v46, "TranscriberV2: startTranscription failed after best audio format check, for source: %s, new source: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v33, -1, -1);
    MEMORY[0x259C57FC0](v32, -1, -1);

    (*(v50 + 8))(v48, v49);
    v176(oslog, v170);
  }

  else
  {
    v38 = *(v0 + 576);
    v39 = *(v0 + 568);
    v40 = *(v0 + 488);
    v41 = *(v0 + 456);
    v42 = *(v0 + 464);
    v43 = *(v0 + 440);
    v44 = *(v0 + 416);
    v45 = *(v0 + 424);

    (*(v45 + 8))(v43, v44);
    v39(v40, v41);
  }

  v52 = *(v0 + 584);
  v53 = *(v0 + 504);
  v54 = *(v0 + 184);
  v55 = (v54 + *(v0 + 520));
  v56 = *(v54 + v52);
  *(v54 + v52) = 0;

  v57 = *(v54 + v53);
  *(v54 + v53) = 0;

  v58 = *v55;
  v59 = v55[1];
  *v55 = 0;
  v55[1] = 0;
  sub_2560502B0(v58);
  v61 = *(v0 + 480);
  v60 = *(v0 + 488);
  v62 = *(v0 + 472);
  v63 = *(v0 + 440);
  v64 = *(v0 + 448);
  v65 = *(v0 + 432);
  v67 = *(v0 + 400);
  v66 = *(v0 + 408);
  v69 = *(v0 + 368);
  v68 = *(v0 + 376);
  v157 = *(v0 + 344);
  v158 = *(v0 + 320);
  v160 = *(v0 + 296);
  v161 = *(v0 + 272);
  v163 = *(v0 + 264);
  v165 = *(v0 + 256);
  v168 = *(v0 + 248);
  v171 = *(v0 + 224);
  osloga = *(v0 + 208);
  v177 = *(v0 + 200);

  v70 = *(v0 + 8);

  return v70(0);
}

uint64_t sub_2560429B0()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;

  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_256043204;
  }

  else
  {
    v5 = sub_256042AC4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_256042AC4()
{
  v91 = v0;
  v1 = *(v0 + 208);
  v2 = sub_25605350C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 512);
    v5 = byte_27F8260B8;
    if (os_log_type_enabled(v4, byte_27F8260B8))
    {
      v88 = *(v0 + 632);
      v84 = *(v0 + 488);
      v86 = *(v0 + 568);
      v79 = *(v0 + 464);
      v82 = *(v0 + 456);
      v73 = *(v0 + 424);
      v75 = *(v0 + 416);
      v77 = *(v0 + 440);
      v67 = *(v0 + 576);
      v68 = *(v0 + 360);
      v69 = *(v0 + 352);
      v71 = *(v0 + 376);
      v66 = *(v0 + 344);
      v6 = *(v0 + 152) + *(v0 + 656);
      v7 = *(v0 + 336);
      v65 = *(v0 + 328);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v90 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_256032BA0(*v6, *(v6 + 8), &v90);
      *(v8 + 12) = 2080;
      v10 = [objc_opt_self() currentThread];
      v11 = [v10 description];
      v12 = sub_2560536AC();
      v14 = v13;

      v15 = sub_256032BA0(v12, v14, &v90);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_256022000, v4, v5, "TranscriberV2: startTranscription Finished Source: %s thread: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v9, -1, -1);
      MEMORY[0x259C57FC0](v8, -1, -1);

      (*(v7 + 8))(v66, v65);
      (*(v68 + 8))(v71, v69);
      (*(v73 + 8))(v77, v75);
    }

    else
    {
      v88 = *(v0 + 632);
      v43 = *(v0 + 576);
      v84 = *(v0 + 488);
      v86 = *(v0 + 568);
      v80 = *(v0 + 464);
      v82 = *(v0 + 456);
      v44 = *(v0 + 440);
      v46 = *(v0 + 416);
      v45 = *(v0 + 424);
      v47 = *(v0 + 376);
      v49 = *(v0 + 352);
      v48 = *(v0 + 360);
      v51 = *(v0 + 336);
      v50 = *(v0 + 344);
      v52 = *(v0 + 328);

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v44, v46);
    }

    v86(v84, v82);

    v54 = *(v0 + 480);
    v53 = *(v0 + 488);
    v55 = *(v0 + 472);
    v56 = *(v0 + 440);
    v57 = *(v0 + 448);
    v58 = *(v0 + 432);
    v60 = *(v0 + 400);
    v59 = *(v0 + 408);
    v62 = *(v0 + 368);
    v61 = *(v0 + 376);
    v70 = *(v0 + 344);
    v72 = *(v0 + 320);
    v74 = *(v0 + 296);
    v76 = *(v0 + 272);
    v78 = *(v0 + 264);
    v81 = *(v0 + 256);
    v83 = *(v0 + 248);
    v85 = *(v0 + 224);
    v87 = *(v0 + 208);
    v89 = *(v0 + 200);

    v63 = *(v0 + 8);

    return v63(1);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 152);
    (*(v3 + 32))(v16, v1, v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v18 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
    v19 = AXLiveCaption.init(source:transcriptionResult:)(v17, v16);
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 512);
    v21 = byte_27F8260B8;
    if (os_log_type_enabled(v20, byte_27F8260B8))
    {
      v22 = *(v0 + 664);
      v23 = *(v0 + 152);
      v24 = &v23[*(v0 + 656)];
      v25 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v90 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_256032BA0(*v24, *(v24 + 1), &v90);
      *(v26 + 12) = 2048;
      *(v26 + 14) = *&v23[v22];

      *(v26 + 22) = 2080;
      v28 = *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption];
      v29 = *&v19[OBJC_IVAR____TtC17LiveTranscription13AXLiveCaption_caption + 8];

      v30 = sub_256032BA0(v28, v29, &v90);

      *(v26 + 24) = v30;
      _os_log_impl(&dword_256022000, v20, v21, "TranscriberV2: Source: %s, sourceType: %ld transcription: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v27, -1, -1);
      MEMORY[0x259C57FC0](v26, -1, -1);
    }

    v31 = *(v0 + 176);
    (*(v0 + 168))(v19);

    v32 = *(v0 + 648);
    v33 = *(v0 + 640);
    v34 = *(v0 + 496);
    v35 = *(v0 + 232);
    v36 = *(v0 + 216);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = *(MEMORY[0x277D856D8] + 4);
    v39 = swift_task_alloc();
    *(v0 + 672) = v39;
    *v39 = v0;
    v39[1] = sub_2560429B0;
    v40 = *(v0 + 248);
    v41 = *(v0 + 232);
    v42 = *(v0 + 208);

    return MEMORY[0x282200310](v42, v34, v32, v0 + 144, v41, AssociatedConformanceWitness);
  }
}

uint64_t sub_256043204()
{
  v69 = v0;
  v1 = v0[64];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2 = v0[18];
  v3 = sub_25605381C();
  if (os_log_type_enabled(v1, v3))
  {
    v4 = v0[64];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_256022000, v4, v3, "TranscriberV2: transcriber error: %@", v5, 0xCu);
    sub_256033238(v6, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v6, -1, -1);
    MEMORY[0x259C57FC0](v5, -1, -1);
  }

  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v9 = v0[64];
  v10 = byte_27F8260B8;
  if (os_log_type_enabled(v9, byte_27F8260B8))
  {
    v66 = v0[79];
    v62 = v0[61];
    v64 = v0[71];
    v57 = v0[58];
    v60 = v0[57];
    v51 = v0[53];
    v53 = v0[52];
    v55 = v0[55];
    v45 = v0[72];
    v46 = v0[45];
    v47 = v0[44];
    v49 = v0[47];
    v44 = v0[43];
    v11 = v0[19] + v0[82];
    v12 = v0[42];
    v43 = v0[41];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_256032BA0(*v11, *(v11 + 8), &v68);
    *(v13 + 12) = 2080;
    v15 = [objc_opt_self() currentThread];
    v16 = [v15 description];
    v17 = sub_2560536AC();
    v19 = v18;

    v20 = sub_256032BA0(v17, v19, &v68);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_256022000, v9, v10, "TranscriberV2: startTranscription Finished Source: %s thread: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v14, -1, -1);
    MEMORY[0x259C57FC0](v13, -1, -1);

    (*(v12 + 8))(v44, v43);
    (*(v46 + 8))(v49, v47);
    (*(v51 + 8))(v55, v53);
  }

  else
  {
    v66 = v0[79];
    v21 = v0[72];
    v62 = v0[61];
    v64 = v0[71];
    v58 = v0[58];
    v60 = v0[57];
    v22 = v0[55];
    v24 = v0[52];
    v23 = v0[53];
    v25 = v0[47];
    v27 = v0[44];
    v26 = v0[45];
    v29 = v0[42];
    v28 = v0[43];
    v30 = v0[41];

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
  }

  v64(v62, v60);

  v32 = v0[60];
  v31 = v0[61];
  v33 = v0[59];
  v34 = v0[55];
  v35 = v0[56];
  v36 = v0[54];
  v38 = v0[50];
  v37 = v0[51];
  v40 = v0[46];
  v39 = v0[47];
  v48 = v0[43];
  v50 = v0[40];
  v52 = v0[37];
  v54 = v0[34];
  v56 = v0[33];
  v59 = v0[32];
  v61 = v0[31];
  v63 = v0[28];
  v65 = v0[26];
  v67 = v0[25];

  v41 = v0[1];

  return v41(1);
}

uint64_t sub_256043700(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825960, &unk_256056098) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v8 = qword_27F826120;
  v2[19] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256043880, v8, 0);
}

uint64_t sub_256043880()
{
  v70 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  *(v0 + 160) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v3 = *(v1 + v2);
  if (v3 && (v4 = *(v0 + 88), type metadata accessor for AXLiveCaptionSourceInfo(0), v5 = v3, v6 = v4, v7 = sub_25605384C(), v6, v5, (v7 & 1) != 0))
  {
    v8 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v9 = qword_27F8260C0;
    *(v0 + 168) = qword_27F8260C0;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v69 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_256032BA0(*(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName), *(v10 + OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8), &v69);
      _os_log_impl(&dword_256022000, v9, v8, "TranscriberV2: stopTranscription for source: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x259C57FC0](v12, -1, -1);
      MEMORY[0x259C57FC0](v11, -1, -1);
    }

    if (qword_27F825628 != -1)
    {
      swift_once();
    }

    v13 = byte_27F8260B9;
    *(v0 + 216) = byte_27F8260B9;
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v69 = v15;
      *v14 = 136315138;
      v16 = [objc_opt_self() currentThread];
      v17 = [v16 description];
      v18 = sub_2560536AC();
      v20 = v19;

      v21 = sub_256032BA0(v18, v20, &v69);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_256022000, v9, v13, "stopTranscription thread: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x259C57FC0](v15, -1, -1);
      MEMORY[0x259C57FC0](v14, -1, -1);
    }

    v22 = *(v0 + 144);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v25 = *(v0 + 96);
    v26 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    *(v0 + 176) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_2560331D0(v25 + v26, v22, &qword_27F825930, &qword_256056068);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = *(v0 + 144);
    if (v27)
    {
      sub_256033238(*(v0 + 144), &qword_27F825930, &qword_256056068);
    }

    else
    {
      v37 = *(v0 + 120);
      v36 = *(v0 + 128);
      v38 = *(v0 + 112);
      (*(v37 + 16))(v36, *(v0 + 144), v38);
      sub_256033238(v28, &qword_27F825930, &qword_256056068);
      sub_2560537DC();
      (*(v37 + 8))(v36, v38);
    }

    v39 = *(v0 + 96);
    v40 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer;
    *(v0 + 184) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer;
    v41 = *(v39 + v40);
    *(v0 + 192) = v41;
    if (v41)
    {
      v42 = *(MEMORY[0x277CDCA48] + 4);

      v43 = swift_task_alloc();
      *(v0 + 200) = v43;
      *v43 = v0;
      v43[1] = sub_256043F9C;

      return MEMORY[0x28212BBF0]();
    }

    v44 = *(v0 + 216);
    v45 = *(v0 + 168);
    if (os_log_type_enabled(v45, *(v0 + 216)))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136315138;
      v48 = [objc_opt_self() currentThread];
      v49 = [v48 description];
      v50 = sub_2560536AC();
      v52 = v51;

      v53 = sub_256032BA0(v50, v52, &v69);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_256022000, v45, v44, "stopTranscription thread: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x259C57FC0](v47, -1, -1);
      MEMORY[0x259C57FC0](v46, -1, -1);
      v40 = *(v0 + 184);
      v39 = *(v0 + 96);
    }

    v54 = *(v0 + 176);
    v55 = *(v0 + 160);
    v56 = *(v0 + 136);
    v57 = *(v0 + 120);
    v68 = *(v0 + 112);
    v58 = *(v0 + 104);
    v59 = *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
    *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
    v29 = 1;
    (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
    v61 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
    swift_beginAccess();
    sub_25605058C(v58, v39 + v61, &qword_27F825960, &unk_256056098);
    swift_endAccess();
    (*(v57 + 56))(v56, 1, 1, v68);
    swift_beginAccess();
    sub_25605058C(v56, v39 + v54, &qword_27F825930, &qword_256056068);
    swift_endAccess();
    v62 = *(v39 + v40);
    *(v39 + v40) = 0;

    v63 = *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
    *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

    v64 = *(v39 + v55);
    *(v39 + v55) = 0;

    v65 = (v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    v66 = *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    v67 = *(v39 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
    *v65 = 0;
    v65[1] = 0;
    sub_2560502B0(v66);
  }

  else
  {
    v29 = 0;
  }

  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  v33 = *(v0 + 104);

  v34 = *(v0 + 8);

  return v34(v29);
}

uint64_t sub_256043F9C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_2560443BC;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 152);

    v5 = sub_2560440C4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2560440C4()
{
  v35 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v34 = v4;
    *v3 = 136315138;
    v5 = [objc_opt_self() currentThread];
    v6 = [v5 description];
    v7 = sub_2560536AC();
    v9 = v8;

    v10 = sub_256032BA0(v7, v9, &v34);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_256022000, v2, v1, "stopTranscription thread: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x259C57FC0](v4, -1, -1);
    MEMORY[0x259C57FC0](v3, -1, -1);
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  swift_beginAccess();
  sub_25605058C(v17, v18 + v21, &qword_27F825960, &unk_256056098);
  swift_endAccess();
  (*(v16 + 56))(v14, 1, 1, v15);
  swift_beginAccess();
  sub_25605058C(v14, v18 + v12, &qword_27F825930, &qword_256056068);
  swift_endAccess();
  v22 = *(v18 + v11);
  *(v18 + v11) = 0;

  v23 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
  *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v24 = *(v18 + v13);
  *(v18 + v13) = 0;

  v25 = (v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v26 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v27 = *(v18 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
  *v25 = 0;
  v25[1] = 0;
  sub_2560502B0(v26);
  v29 = *(v0 + 136);
  v28 = *(v0 + 144);
  v30 = *(v0 + 128);
  v31 = *(v0 + 104);

  v32 = *(v0 + 8);

  return v32(1);
}

uint64_t sub_2560443BC()
{
  v45 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = sub_25605381C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 208);
  if (v4)
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_256022000, v6, v3, "TranscriberV2: finalizeAndFinishThroughEndOfInput error: %@", v7, 0xCu);
    sub_256033238(v8, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v8, -1, -1);
    MEMORY[0x259C57FC0](v7, -1, -1);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 168);
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v13 = 136315138;
    v15 = [objc_opt_self() currentThread];
    v16 = [v15 description];
    v17 = sub_2560536AC();
    v19 = v18;

    v20 = sub_256032BA0(v17, v19, &v44);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_256022000, v12, v11, "stopTranscription thread: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C57FC0](v14, -1, -1);
    MEMORY[0x259C57FC0](v13, -1, -1);
  }

  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter) = 0;

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
  v31 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  swift_beginAccess();
  sub_25605058C(v27, v28 + v31, &qword_27F825960, &unk_256056098);
  swift_endAccess();
  (*(v26 + 56))(v24, 1, 1, v25);
  swift_beginAccess();
  sub_25605058C(v24, v28 + v22, &qword_27F825930, &qword_256056068);
  swift_endAccess();
  v32 = *(v28 + v21);
  *(v28 + v21) = 0;

  v33 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
  *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber) = 0;

  v34 = *(v28 + v23);
  *(v28 + v23) = 0;

  v35 = (v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v36 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
  v37 = *(v28 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);
  *v35 = 0;
  v35[1] = 0;
  sub_2560502B0(v36);
  v39 = *(v0 + 136);
  v38 = *(v0 + 144);
  v40 = *(v0 + 128);
  v41 = *(v0 + 104);

  v42 = *(v0 + 8);

  return v42(1);
}

uint64_t sub_256044788()
{
  v1[8] = v0;
  v2 = sub_25605347C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825950, &qword_256056088) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v6 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_2560448D8, v6, 0);
}

unint64_t sub_2560448D8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v61 = v3;
  v62 = v2;
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v56 = (63 - v7) >> 6;
  v57 = v4;
  v63 = (v1 + 16);
  v64 = (v1 + 32);
  v59 = (v1 + 8);
  v60 = v1;

  v10 = 0;
  v58 = v5;
  while (1)
  {
    if (!v8)
    {
      if (v56 <= v10 + 1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v56;
      }

      v14 = v13 - 1;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v56)
        {
          v46 = v0[14];
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
          (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
          v8 = 0;
          v10 = v14;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v12 = v10;
LABEL_16:
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[9];
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = v18 | (v12 << 6);
    (*(v60 + 16))(v16, *(v57 + 48) + *(v60 + 72) * v19, v17);
    v20 = *(*(v57 + 56) + 8 * v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
    v22 = *(v21 + 48);
    (*(v60 + 32))(v15, v16, v17);
    *(v15 + v22) = v20;
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
LABEL_17:
    v23 = v0[15];
    sub_25603757C(v0[14], v23, &qword_27F825950, &qword_256056088);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825958, &qword_256056090);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = v0[9];
    v26 = *(v0[15] + *(v24 + 48));
    (*v64)(v0[12]);
    if (v26 == -1.0)
    {
      v27 = v0[11];
      v28 = *v63;
      (*v63)(v27, v0[12], v0[9]);
      swift_beginAccess();
      v29 = *(v62 + v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v62 + v61);
      *(v62 + v61) = 0x8000000000000000;
      result = sub_256035B1C(v27);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_38;
      }

      v37 = v32;
      if (v31[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = result;
          sub_25604D164();
          result = v48;
        }
      }

      else
      {
        v38 = v0[11];
        sub_25604BD60(v36, isUniquelyReferenced_nonNull_native);
        result = sub_256035B1C(v38);
        if ((v37 & 1) != (v39 & 1))
        {
          v55 = v0[9];

          return sub_2560539BC();
        }
      }

      v40 = v0[11];
      v41 = v0[9];
      if (v37)
      {
        *(v31[7] + 8 * result) = 0;
        v11 = *v59;
        (*v59)(v40, v41);
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v42 = result;
        v28(v31[6] + *(v60 + 72) * result, v40, v41);
        *(v31[7] + 8 * v42) = 0;
        v11 = *(v60 + 8);
        result = v11(v40, v41);
        v43 = v31[2];
        v35 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v35)
        {
          goto LABEL_39;
        }

        v31[2] = v44;
      }

      v45 = *(v62 + v61);
      *(v62 + v61) = v31;

      swift_endAccess();
    }

    else
    {
      v11 = *v59;
    }

    v5 = v58;
    result = v11(v0[12], v0[9]);
  }

  v50 = v0[13];
  v49 = v0[14];
  v51 = v0[11];
  v52 = v0[12];
  v53 = v0[15];

  v54 = v0[1];

  return v54();
}

uint64_t sub_256044E38(void *a1, void *a2)
{
  v3 = v2;
  v113 = a1;
  v5 = sub_2560535DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v110 = &v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825930, &qword_256056068);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v108 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825938, &qword_256056070);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v109 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v112 = &v105 - v22;
  v23 = sub_25605347C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v29 = *&v3[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source];
  if (!v29)
  {
    v56 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v57 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v56);
    if (result)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v117[0] = v59;
      *v58 = 136315138;
      v60 = a2;
      v61 = [v60 description];
      v62 = sub_2560536AC();
      v64 = v63;

      v65 = sub_256032BA0(v62, v64, v117);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_256022000, v57, v56, "TranscriberV2: addBuffer skip, transcriber hasn't started for source: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x259C57FC0](v59, -1, -1);
      v66 = v58;
      return MEMORY[0x259C57FC0](v66, -1, -1);
    }

    return result;
  }

  v106 = v8;
  v107 = v9;
  type metadata accessor for AXLiveCaptionSourceInfo(0);
  v30 = a2;
  v31 = v29;
  v32 = sub_25605384C();

  if ((v32 & 1) == 0)
  {
    v67 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v40 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v67);
    if (result)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v117[0] = v43;
      *v42 = 136315394;
      v68 = v30;
      v69 = [v68 description];
      v70 = sub_2560536AC();
      v72 = v71;

      v73 = sub_256032BA0(v70, v72, v117);

      *(v42 + 4) = v73;
      *(v42 + 12) = 2080;
      v116 = *&v3[v28];
      v74 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825940, &qword_256056078);
      v75 = sub_2560536BC();
      v77 = sub_256032BA0(v75, v76, v117);

      *(v42 + 14) = v77;
      v54 = "TranscriberV2: addBuffer skip for source: %s, started for source: %s";
      v55 = v67;
      goto LABEL_21;
    }

    return result;
  }

  v33 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v24 + 16))(v27, &v30[v33], v23);
  v34 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v35 = *&v3[v34];
  if (!*(v35 + 16))
  {
    goto LABEL_24;
  }

  v36 = sub_256035B1C(v27);
  if ((v37 & 1) == 0)
  {

LABEL_24:
    (*(v24 + 8))(v27, v23);
    goto LABEL_25;
  }

  v38 = *(*(v35 + 56) + 8 * v36);
  (*(v24 + 8))(v27, v23);

  if (v38 != 1.0)
  {
    v39 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v40 = qword_27F8260C0;
    result = os_log_type_enabled(qword_27F8260C0, v39);
    if (result)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v115[0] = v43;
      *v42 = 136315394;
      v44 = v30;
      v45 = [v44 description];
      v46 = sub_2560536AC();
      v48 = v47;

      v49 = sub_256032BA0(v46, v48, v115);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      v50 = v38 * 100.0;
      if (COERCE__INT64(fabs(v38 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v50 > -9.22337204e18)
      {
        if (v50 < 9.22337204e18)
        {
          v114 = v50;
          v51 = sub_25605397C();
          v53 = sub_256032BA0(v51, v52, v115);

          *(v42 + 14) = v53;
          v54 = "TranscriberV2: addBuffer skip for source: %s, assets are not ready progress: %s";
          v55 = v39;
LABEL_21:
          _os_log_impl(&dword_256022000, v40, v55, v54, v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v43, -1, -1);
          v66 = v42;
          return MEMORY[0x259C57FC0](v66, -1, -1);
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    return result;
  }

LABEL_25:
  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v78 = byte_27F8260B8;
  v79 = v113;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v80 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v78))
  {
    v81 = v79;
    v82 = v3;
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v115[0] = v84;
    *v83 = 67109634;
    *(v83 + 4) = [v81 frameLength];

    *(v83 + 8) = 2080;
    *(v83 + 10) = sub_256032BA0(*&v30[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName], *&v30[OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_appName + 8], v115);
    *(v83 + 18) = 1024;
    *(v83 + 20) = *&v82[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter] != 0;

    _os_log_impl(&dword_256022000, v80, v78, "TranscriberV2: addBuffer size: %u source: %s converting: %{BOOL}d", v83, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x259C57FC0](v84, -1, -1);
    MEMORY[0x259C57FC0](v83, -1, -1);
  }

  result = sub_256045A74(v79);
  if (result)
  {
    v85 = result;
    v86 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    sub_2560331D0(&v3[v86], v17, &qword_27F825930, &qword_256056068);
    v87 = v106;
    v88 = v107;
    if ((*(v107 + 48))(v17, 1, v106))
    {

      sub_256033238(v17, &qword_27F825930, &qword_256056068);
      v89 = 1;
      v90 = v112;
    }

    else
    {
      v98 = v110;
      (*(v88 + 16))(v110, v17, v87);
      sub_256033238(v17, &qword_27F825930, &qword_256056068);
      v99 = v85;
      sub_2560535CC();
      v90 = v112;
      sub_2560537CC();

      (*(v88 + 8))(v98, v87);
      v89 = 0;
    }

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825948, &qword_256056080);
    (*(*(v100 - 8) + 56))(v90, v89, 1, v100);
    v101 = v90;
  }

  else
  {
    v91 = v107;
    if (*&v3[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter])
    {
      return result;
    }

    v92 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
    swift_beginAccess();
    v93 = &v3[v92];
    v94 = v108;
    sub_2560331D0(v93, v108, &qword_27F825930, &qword_256056068);
    v95 = v106;
    if ((*(v91 + 48))(v94, 1, v106))
    {
      sub_256033238(v94, &qword_27F825930, &qword_256056068);
      v96 = 1;
      v97 = v109;
    }

    else
    {
      v102 = v110;
      (*(v91 + 16))(v110, v94, v95);
      sub_256033238(v94, &qword_27F825930, &qword_256056068);
      v103 = v79;
      sub_2560535CC();
      v97 = v109;
      sub_2560537CC();
      (*(v91 + 8))(v102, v95);
      v96 = 0;
    }

    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825948, &qword_256056080);
    (*(*(v104 - 8) + 56))(v97, v96, 1, v104);
    v101 = v97;
  }

  return sub_256033238(v101, &qword_27F825938, &qword_256056070);
}

id sub_256045A74(id a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter);
  if (!v3)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v5 = v3;
  v6 = [v5 inputFormat];
  v7 = 0x27981C000uLL;
  [v6 sampleRate];
  v9 = v8;

  v10 = v9;
  v11 = [v5 outputFormat];
  [v11 sampleRate];
  v13 = v12;

  v14 = v13;
  v15 = [a1 frameCapacity] / (v10 / v14);
  if (COERCE_INT(fabs(v15)) > 2139095039)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 4295000000.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v5 outputFormat];
  v11 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v17 frameCapacity:v16];

  if (v11)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    aBlock[4] = sub_256050548;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_256045E0C;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    aBlock[0] = 0;
    [v5 convertToBuffer:v11 error:aBlock withInputFromBlock:v19];
    _Block_release(v19);
    v2 = aBlock[0];
    if (aBlock[0])
    {
      a1 = aBlock[0];
      LOBYTE(v7) = sub_25605381C();
      if (qword_27F825630 == -1)
      {
LABEL_8:
        v21 = qword_27F8260C0;
        if (os_log_type_enabled(qword_27F8260C0, v7))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          *(v22 + 4) = a1;
          *v23 = v2;
          v24 = a1;
          _os_log_impl(&dword_256022000, v21, v7, "TranscriberV2: Audio converter error: %@", v22, 0xCu);
          sub_256033238(v23, &qword_27F825728, &qword_256055BF0);
          MEMORY[0x259C57FC0](v23, -1, -1);
          MEMORY[0x259C57FC0](v22, -1, -1);
        }

        else
        {
        }

        goto LABEL_14;
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

id sub_256045E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t sub_256045E78()
{
  v0 = sub_25604E73C(&unk_286816D28);
  result = swift_arrayDestroy();
  off_27F825838 = v0;
  return result;
}

uint64_t sub_256045EC4()
{
  v0 = sub_25604F73C(&unk_286816E58);
  result = sub_256033238(&unk_286816E78, &qword_27F8259D8, &qword_2560561D0);
  off_27F825840 = v0;
  return result;
}

uint64_t sub_256045F14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v72 = a7;
  v73 = sub_25605347C();
  v10 = *(v73 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v73);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v78 = a1;
  v79 = a2;
  v76 = 95;
  v77 = 0xE100000000000000;
  v74 = 45;
  v75 = 0xE100000000000000;
  sub_2560375E4();
  v21 = sub_25605387C();
  v23 = v22;
  v71 = a6;
  v24 = *(a6 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = (v71 + 40);
    while (1)
    {
      v27 = *(v26 - 1) == v21 && *v26 == v23;
      if (v27 || (sub_25605398C() & 1) != 0)
      {
        break;
      }

      ++v25;
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_9;
      }
    }

    if (v25 >= *(v69 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = *(v10 + 16);
      v21 = v73;
      v24(v20, v69 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v73);
      LOBYTE(v23) = sub_25605382C();
      if (qword_27F825630 == -1)
      {
LABEL_17:
        v37 = qword_27F8260C0;
        v24(v18, v20, v21);
        if (os_log_type_enabled(v37, v23))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v78 = v39;
          *v38 = 136315394;
          *(v38 + 4) = sub_256032BA0(v67, v68, &v78);
          *(v38 + 12) = 2080;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
          v40 = sub_25605397C();
          v42 = v41;
          (*(v10 + 8))(v18, v21);
          v43 = sub_256032BA0(v40, v42, &v78);

          *(v38 + 14) = v43;
          _os_log_impl(&dword_256022000, v37, v23, "TranscriberV2: found default is %s locale from supported locales: %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C57FC0](v39, -1, -1);
          MEMORY[0x259C57FC0](v38, -1, -1);
        }

        else
        {
          (*(v10 + 8))(v18, v21);
        }

        v44 = v72;
        (*(v10 + 32))(v72, v20, v21);
        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_17;
  }

LABEL_9:
  v78 = v21;
  v79 = v23;
  v76 = 45;
  v77 = 0xE100000000000000;
  v28 = &v78;
  v29 = sub_25605386C();
  if (v29[2] < 3uLL)
  {
    goto LABEL_23;
  }

  if (v29[2])
  {
    v23 = v29[5];
    v78 = v29[4];
    v79 = v23;
    swift_bridgeObjectRetain_n();
    MEMORY[0x259C57450](45, 0xE100000000000000);

    if (v29[2] >= 2uLL)
    {
      v28 = v78;
      v30 = v79;
      v31 = v29[6];
      v32 = v29[7];

      v78 = v28;
      v79 = v30;

      MEMORY[0x259C57450](v31, v32);

      v21 = v78;
      v23 = v79;

      LOBYTE(v28) = sub_25605382C();
      if (qword_27F825630 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_13:
  v33 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v28))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v78 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_256032BA0(v67, v68, &v78);
    *(v34 + 12) = 2080;
    v36 = sub_256032BA0(v21, v23, &v78);

    *(v34 + 14) = v36;
    _os_log_impl(&dword_256022000, v33, v28, "TranscriberV2: found %s locale identifier with no region: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v35, -1, -1);
    MEMORY[0x259C57FC0](v34, -1, -1);
    goto LABEL_24;
  }

LABEL_23:

LABEL_24:
  v46 = v70;
  if (qword_27F825650 != -1)
  {
    swift_once();
  }

  v47 = off_27F825840;
  if (!*(off_27F825840 + 2))
  {

    goto LABEL_38;
  }

  v48 = sub_256035A38(v21, v23);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_38:
    v45 = 1;
    v44 = v72;
    v21 = v73;
    return (*(v10 + 56))(v44, v45, 1, v21);
  }

  v21 = v73;
  if (!v24)
  {
LABEL_36:
    v45 = 1;
    v44 = v72;
    return (*(v10 + 56))(v44, v45, 1, v21);
  }

  v51 = 0;
  v52 = (v47[7] + 16 * v48);
  v53 = *v52;
  v54 = v52[1];
  v55 = (v71 + 40);
  while (1)
  {
    v56 = *(v55 - 1) == v53 && *v55 == v54;
    if (v56 || (sub_25605398C() & 1) != 0)
    {
      break;
    }

    ++v51;
    v55 += 2;
    if (v24 == v51)
    {
      goto LABEL_36;
    }
  }

  if (v51 >= *(v69 + 16))
  {
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v10 + 16);
  v58 = v69 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v51;
  v51 = v66;
  v24(v66, v58, v21);
  LOBYTE(v53) = sub_25605382C();
  if (qword_27F825630 != -1)
  {
LABEL_52:
    swift_once();
  }

  v59 = qword_27F8260C0;
  v24(v46, v51, v21);
  if (os_log_type_enabled(v59, v53))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78 = v61;
    *v60 = 136315138;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
    v62 = sub_25605397C();
    v64 = v63;
    (*(v10 + 8))(v46, v21);
    v65 = sub_256032BA0(v62, v64, &v78);
    v51 = v66;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_256022000, v59, v53, "TranscriberV2: found default is mapped locale: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x259C57FC0](v61, -1, -1);
    MEMORY[0x259C57FC0](v60, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v46, v21);
  }

  v44 = v72;
  (*(v10 + 32))(v72, v51, v21);
LABEL_22:
  v45 = 0;
  return (*(v10 + 56))(v44, v45, 1, v21);
}

uint64_t sub_256046820@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a5;
  v13 = sub_25605347C();
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v52 = a1;
  v53 = a2;

  MEMORY[0x259C57450](45, 0xE100000000000000);

  MEMORY[0x259C57450](a3, a4);

  v21 = v52;
  v20 = v53;
  if (qword_27F825628 != -1)
  {
    swift_once();
  }

  v22 = byte_27F8260B9;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v50 = qword_27F8260C0;
  if (os_log_type_enabled(qword_27F8260C0, v22))
  {
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v23 = 136315394;
    *(v23 + 4) = sub_256032BA0(v21, v20, &v52);
    *(v23 + 12) = 2080;
    v24 = MEMORY[0x259C574B0](v49, v13);
    v48 = v13;
    v26 = a6;
    v27 = v19;
    v28 = a7;
    v29 = sub_256032BA0(v24, v25, &v52);
    v13 = v48;

    *(v23 + 14) = v29;
    a7 = v28;
    v19 = v27;
    a6 = v26;
    _os_log_impl(&dword_256022000, v50, v22, "TranscriberV2: trying identifier: %s locales: %s", v23, 0x16u);
    v30 = v47;
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v30, -1, -1);
    MEMORY[0x259C57FC0](v23, -1, -1);
  }

  v31 = *(a6 + 16);
  v32 = v51;
  if (v31)
  {
    v33 = 0;
    v34 = (a6 + 40);
    while (1)
    {
      result = *(v34 - 1);
      if (result == v21 && *v34 == v20)
      {
        break;
      }

      result = sub_25605398C();
      v32 = v51;
      if (result)
      {
        break;
      }

      ++v33;
      v34 += 2;
      if (v31 == v33)
      {
        goto LABEL_15;
      }
    }

    if (v33 >= *(v49 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = *(v32 + 16);
      v38(v19, v49 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v33, v13);
      v38(v17, v19, v13);
      if (os_log_type_enabled(v50, v22))
      {
        v39 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v52 = v49;
        *v39 = 136315394;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
        v40 = sub_25605397C();
        v42 = v41;
        (*(v51 + 8))(v17, v13);
        v43 = sub_256032BA0(v40, v42, &v52);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = sub_256032BA0(v21, v20, &v52);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_256022000, v50, v22, "TranscriberV2: found locale %s with identifier: %s", v39, 0x16u);
        v45 = v49;
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v45, -1, -1);
        MEMORY[0x259C57FC0](v39, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v17, v13);
      }

      (*(v51 + 32))(a7, v19, v13);
      return (*(v51 + 56))(a7, 0, 1, v13);
    }
  }

  else
  {
LABEL_15:

    v37 = *(v51 + 56);

    return v37(a7, 1, 1, v13);
  }

  return result;
}

uint64_t sub_256046DA4(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_25605347C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v2[33] = *(v4 + 64);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v5 = qword_27F826120;
  v2[40] = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256046EE0, v5, 0);
}

uint64_t sub_256046EE0()
{
  v1 = *(v0[30] + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber);
  v0[41] = v1;
  if (v1)
  {
    v0[42] = sub_25605362C();

    v0[43] = sub_25605360C();
    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825910, qword_256055FF8);
    v2 = swift_allocObject();
    v0[45] = v2;
    *(v2 + 16) = xmmword_256055E40;
    v3 = sub_2560506F4(&qword_27F825918, 255, MEMORY[0x277CDC9F0]);
    v0[46] = v3;
    *(v2 + 32) = v1;
    *(v2 + 40) = v3;
    v4 = *(MEMORY[0x277CDCC40] + 4);
    v14 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v5 = swift_task_alloc();
    v0[47] = v5;
    *v5 = v0;
    v5[1] = sub_2560470C8;

    return v14(v2);
  }

  else
  {
    v8 = v0[38];
    v7 = v0[39];
    v10 = v0[36];
    v9 = v0[37];
    v12 = v0[34];
    v11 = v0[35];

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_2560470C8(char a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 344);
  v5 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_256047220, v5, 0);
}

uint64_t sub_256047220()
{
  v107 = v0;
  v1 = sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = qword_27F8260C0;
  *(v0 + 384) = qword_27F8260C0;
  v7 = *(v4 + 16);
  *(v0 + 392) = v7;
  *(v0 + 400) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v103 = v7;
  if (os_log_type_enabled(v6, v1))
  {
    v8 = *(v0 + 496);
    v9 = *(v0 + 312);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v106 = v13;
    *v12 = 136315394;
    if (v8)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v8)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    loga = v6;
    v16 = sub_256032BA0(v14, v15, &v106);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
    v17 = sub_25605397C();
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v9, v10);
    v7 = v103;
    v21 = sub_256032BA0(v17, v19, &v106);
    v6 = loga;

    *(v12 + 14) = v21;
    _os_log_impl(&dword_256022000, loga, v1, "TranscriberV2: hasAssets: %s for locale: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C57FC0](v13, -1, -1);
    MEMORY[0x259C57FC0](v12, -1, -1);
  }

  else
  {
    v20 = *(*(v0 + 256) + 8);
    v20(*(v0 + 312), *(v0 + 248));
  }

  *(v0 + 408) = v20;
  if (*(v0 + 496) == 1)
  {
    v22 = *(v0 + 328);

    v23 = 1;
LABEL_35:
    v92 = *(v0 + 304);
    v91 = *(v0 + 312);
    v94 = *(v0 + 288);
    v93 = *(v0 + 296);
    v96 = *(v0 + 272);
    v95 = *(v0 + 280);

    v97 = *(v0 + 8);

    return v97(v23);
  }

  v24 = *(v0 + 240);
  v25 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  *(v0 + 416) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = 0.0;
  if (*(v26 + 16))
  {
    v28 = *(v0 + 232);

    v29 = sub_256035B1C(v28);
    if (v30)
    {
      v27 = *(*(v26 + 56) + 8 * v29);

      if (v27 == -1.0)
      {
        v31 = *(v0 + 304);
        v32 = *(v0 + 248);
        v33 = *(v0 + 232);
        v34 = sub_25605382C();
        v7(v31, v33, v32);
        v35 = os_log_type_enabled(v6, v34);
        v36 = *(v0 + 328);
        v37 = *(v0 + 304);
        v39 = *(v0 + 248);
        v38 = *(v0 + 256);
        if (v35)
        {
          v104 = *(v0 + 328);
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v106 = v41;
          *v40 = 136315138;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
          logb = v6;
          v42 = sub_25605397C();
          v44 = v43;
          v20(v37, v39);
          v45 = sub_256032BA0(v42, v44, &v106);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_256022000, logb, v34, "TranscriberV2: already tried to download asset and failed for locale: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x259C57FC0](v41, -1, -1);
          MEMORY[0x259C57FC0](v40, -1, -1);
        }

        else
        {
          v90 = *(v0 + 328);

          v20(v37, v39);
        }

        v23 = 0;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  *(v0 + 424) = v27;
  v46 = *(v0 + 296);
  v47 = *(v0 + 248);
  v48 = *(v0 + 232);
  v49 = sub_25605382C();
  v7(v46, v48, v47);
  v50 = os_log_type_enabled(v6, v49);
  v51 = *(v0 + 296);
  v52 = *(v0 + 248);
  v53 = *(v0 + 256);
  if (v50)
  {
    log = v6;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v106 = v55;
    *v54 = 136315394;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
    v56 = sub_25605397C();
    v58 = v57;
    v20(v51, v52);
    v59 = sub_256032BA0(v56, v58, &v106);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v61 = v27 * 100.0;
    if (COERCE__INT64(fabs(v27 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v61 > -9.22337204e18)
    {
      if (v61 < 9.22337204e18)
      {
        *(v0 + 224) = v61;
        v62 = sub_25605397C();
        v64 = sub_256032BA0(v62, v63, &v106);

        *(v54 + 14) = v64;
        _os_log_impl(&dword_256022000, log, v49, "TranscriberV2: starting to download asset for locale: %s progress: %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C57FC0](v55, -1, -1);
        MEMORY[0x259C57FC0](v54, -1, -1);
        goto LABEL_26;
      }

LABEL_40:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  v20(*(v0 + 296), *(v0 + 248));
LABEL_26:
  v65 = *(v0 + 240);
  v66 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  *(v0 + 432) = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  swift_beginAccess();
  v67 = *(v65 + v66);
  if (*(v67 + 16))
  {
    v68 = *(v0 + 232);

    v69 = sub_256035B1C(v68);
    if (v70)
    {
      logc = *(v0 + 328);
      v71 = *(v0 + 288);
      v72 = *(v0 + 256);
      v73 = *(v0 + 264);
      v74 = *(v0 + 240);
      v75 = *(v0 + 248);
      v76 = *(v0 + 232);
      v98 = *(*(v67 + 56) + 8 * v69);

      sub_256049600(*&v27, 0, v76);
      v77 = sub_25605364C();
      *(v0 + 216) = v77;
      swift_getKeyPath();
      v103(v71, v76, v75);
      v78 = (*(v72 + 80) + 24) & ~*(v72 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = v74;
      (*(v72 + 32))(v79 + v78, v71, v75);
      v80 = v74;
      v81 = sub_25605338C();

      v82 = *&v80[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver];
      *&v80[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver] = v81;

      v23 = 1;
      goto LABEL_35;
    }
  }

  v83 = *(v0 + 368);
  v84 = *(v0 + 352);
  v86 = *(v0 + 328);
  v85 = *(v0 + 336);
  *(v0 + 440) = sub_25605360C();
  v87 = swift_allocObject();
  *(v0 + 448) = v87;
  *(v87 + 16) = xmmword_256055E40;
  *(v87 + 32) = v86;
  *(v87 + 40) = v83;
  v88 = *(MEMORY[0x277CDCC58] + 4);
  v105 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

  v89 = swift_task_alloc();
  *(v0 + 456) = v89;
  *v89 = v0;
  v89[1] = sub_256047B98;

  return v105(v87, 0xD000000000000014, 0x8000000256057040);
}

uint64_t sub_256047B98(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v5 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 464) = a1;

  return MEMORY[0x2822009F8](sub_256047CF0, v5, 0);
}

uint64_t sub_256047CF0()
{
  v57 = v0;
  v1 = v0[58];
  if (v1)
  {
    v2 = v0[54];
    v3 = v0[53];
    v4 = v0[52];
    v51 = v0[50];
    v52 = v0[49];
    v5 = v0[36];
    v6 = v0[32];
    v54 = v0[33];
    v7 = v0[30];
    v8 = v0[31];
    v9 = v0[29];
    v52(v5, v9, v8);
    swift_beginAccess();
    v1;
    sub_256034B84(v1, v5);
    swift_endAccess();
    swift_beginAccess();
    v10 = *&v7[v4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *&v7[v4];
    *&v7[v4] = 0x8000000000000000;
    sub_25604CB20(v9, isUniquelyReferenced_nonNull_native, *&v3);
    *&v7[v4] = v56;
    swift_endAccess();
    sub_256049600(v3, 0, v9);
    v12 = sub_25605364C();
    v0[26] = v12;
    swift_getKeyPath();
    v52(v5, v9, v8);
    v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    (*(v6 + 32))(v14 + v13, v5, v8);
    v15 = v7;
    v16 = sub_25605338C();

    v17 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver;
    v0[59] = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver;
    v18 = *&v15[v17];
    *&v15[v17] = v16;

    v19 = *(MEMORY[0x277CDCD70] + 4);
    v20 = swift_task_alloc();
    v0[60] = v20;
    *v20 = v0;
    v20[1] = sub_256048174;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v22 = v0[49];
    v21 = v0[50];
    v23 = v0[48];
    v24 = v0[35];
    v25 = v0[31];
    v26 = v0[29];
    v27 = sub_25605382C();
    v22(v24, v26, v25);
    v28 = os_log_type_enabled(v23, v27);
    v29 = v0[51];
    if (v28)
    {
      log = v0[48];
      v55 = v0[41];
      v30 = v0[35];
      v32 = v0[31];
      v31 = v0[32];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v56 = v34;
      *v33 = 136315138;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
      v35 = sub_25605397C();
      v37 = v36;
      v29(v30, v32);
      v38 = sub_256032BA0(v35, v37, &v56);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_256022000, log, v27, "TranscriberV2: Asset present %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x259C57FC0](v34, -1, -1);
      MEMORY[0x259C57FC0](v33, -1, -1);
    }

    else
    {
      v39 = v0[41];
      v40 = v0[35];
      v41 = v0[31];
      v42 = v0[32];

      v29(v40, v41);
    }

    v44 = v0[38];
    v43 = v0[39];
    v46 = v0[36];
    v45 = v0[37];
    v48 = v0[34];
    v47 = v0[35];

    v49 = v0[1];

    return v49(1);
  }
}

uint64_t sub_256048174()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_2560483E4;
  }

  else
  {
    v6 = sub_2560482A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2560482A0()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[41];
  v7 = v0[29];
  v6 = v0[30];
  sub_256049600(0, 1, v7);
  v8 = *(v6 + v2);
  *(v6 + v2) = 0;

  swift_beginAccess();
  v9 = sub_256048738(v7);
  swift_endAccess();

  swift_beginAccess();
  sub_256048800(v7);
  swift_endAccess();

  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[34];
  v14 = v0[35];

  v16 = v0[1];

  return v16(1);
}

uint64_t sub_2560483E4()
{
  v45 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[29];
  v7 = sub_25605381C();
  v2(v4, v6, v5);
  if (os_log_type_enabled(v3, v7))
  {
    v8 = v0[61];
    v42 = v0[51];
    log = v0[48];
    v9 = v0[34];
    v10 = v0[31];
    v41 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v11 = 136315394;
    sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
    v14 = sub_25605397C();
    v16 = v15;
    v42(v9, v10);
    v17 = sub_256032BA0(v14, v16, &v44);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_256022000, log, v7, "TranscriberV2: asset downloading error: %s, %@", v11, 0x16u);
    sub_256033238(v12, &qword_27F825728, &qword_256055BF0);
    MEMORY[0x259C57FC0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C57FC0](v13, -1, -1);
    MEMORY[0x259C57FC0](v11, -1, -1);
  }

  else
  {
    v20 = v0[32] + 8;
    (v0[51])(v0[34], v0[31]);
  }

  v21 = v0[61];
  v22 = v0[58];
  v23 = v0[59];
  v24 = v0[54];
  v25 = v0[52];
  v26 = v0[41];
  v28 = v0[29];
  v27 = v0[30];
  sub_256049600(1, 1, v28);
  v29 = *(v27 + v23);
  *(v27 + v23) = 0;

  swift_beginAccess();
  v30 = sub_256048738(v28);
  swift_endAccess();

  swift_beginAccess();
  v31 = *(v27 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v27 + v25);
  *(v27 + v25) = 0x8000000000000000;
  sub_25604CB20(v28, isUniquelyReferenced_nonNull_native, -1.0);
  *(v27 + v25) = v44;
  swift_endAccess();

  v34 = v0[38];
  v33 = v0[39];
  v36 = v0[36];
  v35 = v0[37];
  v38 = v0[34];
  v37 = v0[35];

  v39 = v0[1];

  return v39(0);
}

uint64_t sub_256048738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_256035B1C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25604D3D8();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25605347C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25604C69C(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_256048800(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_256035B1C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25604D164();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25605347C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25604C69C(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_2560488DC(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_25605347C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = sub_2560537AC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v8 + 16))(v10, a4, v7);
  v17 = qword_27F825660;
  v18 = a3;
  v27 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = qword_27F826120;
  v21 = sub_2560506F4(&qword_27F8258F8, v19, type metadata accessor for AXLCTranscriberActor);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  *(v24 + 4) = v18;
  (*(v8 + 32))(&v24[v22], v10, v7);
  *&v24[v23] = v27;

  sub_25603E5A8(0, 0, v14, &unk_256056060, v24);
}

uint64_t sub_256048B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_25605347C();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825900, &qword_256055FF0);
  v6[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  if (qword_27F825660 != -1)
  {
    swift_once();
  }

  v13 = qword_27F826120;

  return MEMORY[0x2822009F8](sub_256048D00, v13, 0);
}

uint64_t sub_256048D00()
{
  v93 = v0;
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 88) + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 112);
    v5 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
    swift_beginAccess();
    v6 = *(v1 + 16);
    v6(v3, v2 + v5, v4);
    v7 = *(v1 + 56);
    v7(v3, 0, 1, v4);
    v8 = v6;
  }

  else
  {
    v7 = *(v1 + 56);
    v7(*(v0 + 184), 1, 1, *(v0 + 112));
    v8 = *(v1 + 16);
  }

  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v91 = v8;
  v8(v10, *(v0 + 96), v13);
  v7(v10, 0, 1, v13);
  v15 = *(v12 + 48);
  sub_2560331D0(v9, v11, &qword_27F8256A8, &qword_2560559A0);
  sub_2560331D0(v10, v11 + v15, &qword_27F8256A8, &qword_2560559A0);
  v16 = *(v14 + 48);
  if (v16(v11, 1, v13) == 1)
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 112);
    sub_256033238(*(v0 + 176), &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v17, &qword_27F8256A8, &qword_2560559A0);
    if (v16(v11 + v15, 1, v18) == 1)
    {
      sub_256033238(*(v0 + 160), &qword_27F8256A8, &qword_2560559A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_256033238(*(v0 + 160), &qword_27F825900, &qword_256055FF0);
    goto LABEL_32;
  }

  v19 = *(v0 + 112);
  sub_2560331D0(*(v0 + 160), *(v0 + 168), &qword_27F8256A8, &qword_2560559A0);
  v20 = v16(v11 + v15, 1, v19);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 168);
  if (v20 == 1)
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    sub_256033238(*(v0 + 176), &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
    (*(v25 + 8))(v23, v24);
    goto LABEL_9;
  }

  v90 = *(v0 + 160);
  v26 = *(v0 + 144);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  (*(v27 + 32))(v26, v11 + v15, v28);
  sub_2560506F4(&qword_27F825740, 255, MEMORY[0x277CC9788]);
  v89 = sub_25605368C();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_256033238(v22, &qword_27F8256A8, &qword_2560559A0);
  sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
  v29(v23, v28);
  sub_256033238(v90, &qword_27F8256A8, &qword_2560559A0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v30 = *(v0 + 88);
  v31 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  swift_beginAccess();
  v32 = *(v30 + v31);
  v33 = 0x27981C000uLL;
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

  v34 = *(v0 + 96);
  v35 = *(v30 + v31);

  v36 = sub_256035B1C(v34);
  if ((v37 & 1) == 0)
  {

    goto LABEL_23;
  }

  v38 = *(*(v32 + 56) + 8 * v36);

  if (v38 == -1.0 || v38 == 0.0 || ([*(v0 + 104) fractionCompleted], v39 != 0.0))
  {
LABEL_23:
    v61 = *(v0 + 96);
    [*(v0 + 104) fractionCompleted];
    v63 = v62;
    swift_beginAccess();
    v64 = *(v30 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v30 + v31);
    *(v30 + v31) = 0x8000000000000000;
    sub_25604CB20(v61, isUniquelyReferenced_nonNull_native, v63);
    *(v30 + v31) = v92;
    swift_endAccess();
    if (qword_27F825620 != -1)
    {
      swift_once();
    }

    v66 = byte_27F8260B8;
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v67 = qword_27F8260C0;
    v91(*(v0 + 128), *(v0 + 96), *(v0 + 112));
    v68 = os_log_type_enabled(v67, v66);
    v45 = *(v0 + 120);
    v43 = *(v0 + 128);
    v44 = *(v0 + 112);
    if (v68)
    {
      v69 = *(v0 + 104);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v92 = v48;
      *v47 = 136315394;
      [v69 fractionCompleted];
      v70 = sub_2560537FC();
      v72 = sub_256032BA0(v70, v71, &v92);

      *(v47 + 4) = v72;
      *(v47 + 12) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
      v73 = sub_25605397C();
      v75 = v74;
      (*(v45 + 8))(v43, v44);
      v76 = sub_256032BA0(v73, v75, &v92);
      v33 = 0x27981C000;

      *(v47 + 14) = v76;
      v56 = "TranscriberV2: Asset downloading updated progress: %s for locale: %s";
      v57 = v67;
      v58 = v66;
      v59 = v47;
      v60 = 22;
      goto LABEL_29;
    }

LABEL_30:
    (*(v45 + 8))(v43, v44);
    goto LABEL_31;
  }

  if (qword_27F825620 != -1)
  {
    swift_once();
  }

  v40 = byte_27F8260B8;
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v41 = qword_27F8260C0;
  v91(*(v0 + 136), *(v0 + 96), *(v0 + 112));
  v42 = os_log_type_enabled(v41, v40);
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);
  v45 = *(v0 + 120);
  if (!v42)
  {
    goto LABEL_30;
  }

  v46 = *(v0 + 104);
  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v92 = v48;
  *v47 = 134218498;
  *(v47 + 4) = v38;
  *(v47 + 12) = 2080;
  [v46 fractionCompleted];
  v49 = sub_2560537FC();
  v51 = sub_256032BA0(v49, v50, &v92);

  *(v47 + 14) = v51;
  *(v47 + 22) = 2080;
  sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
  v52 = sub_25605397C();
  v54 = v53;
  (*(v45 + 8))(v43, v44);
  v55 = sub_256032BA0(v52, v54, &v92);
  v33 = 0x27981C000;

  *(v47 + 24) = v55;
  v56 = "TranscriberV2: Asset downloading saved progress: %f, new progress: %s for locale: %s";
  v57 = v41;
  v58 = v40;
  v59 = v47;
  v60 = 32;
LABEL_29:
  _os_log_impl(&dword_256022000, v57, v58, v56, v59, v60);
  swift_arrayDestroy();
  MEMORY[0x259C57FC0](v48, -1, -1);
  MEMORY[0x259C57FC0](v47, -1, -1);
LABEL_31:
  v77 = *(v0 + 96);
  v78 = *(v0 + 88);
  [*(v0 + 104) *(v33 + 4056)];
  sub_256049600(v79, 0, v77);
LABEL_32:
  v81 = *(v0 + 176);
  v80 = *(v0 + 184);
  v83 = *(v0 + 160);
  v82 = *(v0 + 168);
  v85 = *(v0 + 136);
  v84 = *(v0 + 144);
  v86 = *(v0 + 128);

  v87 = *(v0 + 8);

  return v87();
}

void sub_256049600(uint64_t a1, int a2, uint64_t *a3)
{
  v88 = a3;
  v81 = a2;
  v82 = a1;
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v78 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v76[-v10];
  MEMORY[0x28223BE20](v9);
  v83 = &v76[-v11];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825900, &qword_256055FF0);
  v12 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v14 = &v76[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v87 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v76[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v76[-v22];
  v84 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source;
  v85 = v3;
  v24 = *(v3 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
    swift_beginAccess();
    v26 = v5[2];
    v26(v23, (v24 + v25), v4);
    v27 = v5[7];
    v27(v23, 0, 1, v4);
  }

  else
  {
    v27 = v5[7];
    v27(&v76[-v22], 1, 1, v4);
    v26 = v5[2];
  }

  v80 = v26;
  v26(v21, v88, v4);
  v27(v21, 0, 1, v4);
  v28 = *(v89 + 48);
  sub_2560331D0(v23, v14, &qword_27F8256A8, &qword_2560559A0);
  sub_2560331D0(v21, &v14[v28], &qword_27F8256A8, &qword_2560559A0);
  v86 = v5;
  v29 = v5[6];
  v30 = v29(v14, 1, v4);
  v89 = v4;
  if (v30 != 1)
  {
    v32 = v87;
    sub_2560331D0(v14, v87, &qword_27F8256A8, &qword_2560559A0);
    if (v29(&v14[v28], 1, v89) != 1)
    {
      v33 = v86;
      v34 = v89;
      v35 = v83;
      (v86[4])(v83, &v14[v28], v89);
      sub_2560506F4(&qword_27F825740, 255, MEMORY[0x277CC9788]);
      v77 = sub_25605368C();
      v36 = v33[1];
      v36(v35, v34);
      sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
      sub_256033238(v23, &qword_27F8256A8, &qword_2560559A0);
      v36(v87, v34);
      sub_256033238(v14, &qword_27F8256A8, &qword_2560559A0);
      v31 = v85;
      if ((v77 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
    sub_256033238(v23, &qword_27F8256A8, &qword_2560559A0);
    (v86[1])(v32, v89);
LABEL_9:
    sub_256033238(v14, &qword_27F825900, &qword_256055FF0);
    return;
  }

  sub_256033238(v21, &qword_27F8256A8, &qword_2560559A0);
  sub_256033238(v23, &qword_27F8256A8, &qword_2560559A0);
  if (v29(&v14[v28], 1, v89) != 1)
  {
    goto LABEL_9;
  }

  sub_256033238(v14, &qword_27F8256A8, &qword_2560559A0);
  v31 = v85;
LABEL_11:
  v37 = *(v31 + v84);
  if (v37)
  {
    if (v81)
    {
      if (v82)
      {
        v38 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
        v39 = v37;
        v40 = 1;
      }

      else
      {
        v59 = v37;
        v60 = sub_25605382C();
        if (qword_27F825630 != -1)
        {
          swift_once();
        }

        v61 = qword_27F8260C0;
        v62 = v78;
        v80(v78, v88, v89);
        if (os_log_type_enabled(v61, v60))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v90 = v64;
          *v63 = 136315138;
          sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
          v65 = v62;
          v66 = v89;
          v67 = sub_25605397C();
          LODWORD(v88) = v60;
          v69 = v68;
          (v86[1])(v65, v66);
          v70 = sub_256032BA0(v67, v69, &v90);

          *(v63 + 4) = v70;
          _os_log_impl(&dword_256022000, v61, v88, "TranscriberV2: asset is ready for locale: %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x259C57FC0](v64, -1, -1);
          MEMORY[0x259C57FC0](v63, -1, -1);
        }

        else
        {
          (v86[1])(v62, v89);
        }

        v71 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
        v39 = v59;
        v40 = 0;
      }

      v58 = 1;
    }

    else
    {
      v41 = qword_27F825620;
      v42 = v37;
      if (v41 != -1)
      {
        swift_once();
      }

      v43 = byte_27F8260B8;
      v44 = v79;
      if (qword_27F825630 != -1)
      {
        swift_once();
      }

      v45 = qword_27F8260C0;
      v80(v44, v88, v89);
      if (os_log_type_enabled(v45, v43))
      {
        v46 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v90 = v88;
        *v46 = 134218242;
        v47 = v82;
        *(v46 + 4) = v82;
        *(v46 + 12) = 2080;
        sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
        v48 = v42;
        v49 = v89;
        v50 = sub_25605397C();
        LODWORD(v87) = v43;
        v51 = v50;
        v53 = v52;
        v54 = v49;
        v42 = v48;
        (v86[1])(v44, v54);
        v55 = sub_256032BA0(v51, v53, &v90);

        *(v46 + 14) = v55;
        _os_log_impl(&dword_256022000, v45, v87, "TranscriberV2: asset downloading is: %f for locale: %s", v46, 0x16u);
        v56 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x259C57FC0](v56, -1, -1);
        MEMORY[0x259C57FC0](v46, -1, -1);
      }

      else
      {
        (v86[1])(v44, v89);
        v47 = v82;
      }

      v57 = objc_allocWithZone(type metadata accessor for AXLiveCaption(0));
      v39 = v42;
      v40 = v47;
      v58 = 0;
    }

    v72 = sub_256031F70(v39, v40, v58);
    v73 = v72;
    v74 = *(v31 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback);
    if (v74)
    {
      v75 = *(v31 + OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback + 8);

      v74(v73);

      sub_2560502B0(v74);
    }

    else
    {
    }
  }
}

id sub_256049FA8()
{
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_source] = 0;
  v1 = &v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_clientCallback];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_transcriber] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_speechAnalyzer] = 0;
  v2 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258E0, &qword_256055F58);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_inputStreamBuilder;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8258F0, &unk_256055F60);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_bestAudioFormat] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_converter] = 0;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_progressObserver] = 0;
  v6 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloaders;
  v7 = MEMORY[0x277D84F90];
  *&v0[v6] = sub_25605073C(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadProgresses;
  *&v0[v8] = sub_256050924(v7);
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadError] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC17LiveTranscription15AXLCTranscriber_downloadCompleted] = 0x3FF0000000000000;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AXLCTranscriber();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_25604A164()
{
  v0 = sub_2560535BC();
  __swift_allocate_value_buffer(v0, qword_27F825848);
  __swift_project_value_buffer(v0, qword_27F825848);
  return sub_2560535AC();
}

id AXLCTranscriber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLCTranscriber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25604A300()
{
  type metadata accessor for AXLCTranscriberActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27F826120 = v0;
  return result;
}

uint64_t sub_25604A33C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25604A378()
{
  if (qword_27F825660 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25604A3D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXLCTranscriberActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t static AXLCTranscriber.testDefaultLocales()()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_25604A4B0;

  return sub_25604ED4C();
}

uint64_t sub_25604A4B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 40);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_25604A5B0, 0, 0);
}

uint64_t sub_25604A5B0()
{
  sub_25605382C();
  if (qword_27F825630 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  sub_2560534AC();
  sub_25604A90C(0x53555F6E65, 0xE500000000000000, 0x53552D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x41435F6E65, 0xE500000000000000, 0x41432D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x45445F6564, 0xE500000000000000, 0x45442D6564, 0xE500000000000000, v1);
  sub_25604A90C(0x55415F6E65, 0xE500000000000000, 0x55412D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x42475F6E65, 0xE500000000000000, 0x42472D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x4E495F6E65, 0xE500000000000000, 0x4E492D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x47535F6E65, 0xE500000000000000, 0x47532D6E65, 0xE500000000000000, v1);
  sub_25604A90C(0x53455F7365, 0xE500000000000000, 0x53452D7365, 0xE500000000000000, v1);
  sub_25604A90C(0x584D5F7365, 0xE500000000000000, 0x584D2D7365, 0xE500000000000000, v1);
  sub_25604A90C(0x53555F7365, 0xE500000000000000, 0x53552D7365, 0xE500000000000000, v1);
  sub_25604A90C(0x41435F7266, 0xE500000000000000, 0x41432D7266, 0xE500000000000000, v1);
  sub_25604A90C(0x52465F7266, 0xE500000000000000, 0x52462D7266, 0xE500000000000000, v1);
  sub_25604A90C(0x53555F7266, 0xE500000000000000, 0x52462D7266, 0xE500000000000000, v1);
  sub_25604A90C(0x504A5F616ALL, 0xE500000000000000, 0x504A2D616ALL, 0xE500000000000000, v1);
  sub_25604A90C(0x524B5F6F6BLL, 0xE500000000000000, 0x524B2D6F6BLL, 0xE500000000000000, v1);
  sub_25604A90C(0x4E435F657579, 0xE600000000000000, 0x4E432D657579, 0xE600000000000000, v1);
  sub_25604A90C(0x4E435F687ALL, 0xE500000000000000, 0x4E432D687ALL, 0xE500000000000000, v1);
  sub_25604A90C(0x4B485F687ALL, 0xE500000000000000, 0x4B482D687ALL, 0xE500000000000000, v1);
  sub_25604A90C(0x2D746E61482D687ALL, 0xEA00000000005355, 0x4B482D687ALL, 0xE500000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25604A90C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v65 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = sub_25605347C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v62 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v59 = (&v58 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;

  v60 = a1;
  v61 = a2;
  sub_2560533CC();
  v25 = *(v14 + 16);
  v64 = v24;
  v25(v12, v24, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_25603B53C(v12, a5, v22);
  sub_256033238(v12, &qword_27F8256A8, &qword_2560559A0);
  v70[0] = sub_2560533DC();
  v70[1] = v26;
  v68 = 95;
  v69 = 0xE100000000000000;
  v66 = 45;
  v67 = 0xE100000000000000;
  sub_2560375E4();
  v27 = sub_25605387C();
  v29 = v28;
  v30 = v65;

  v63 = a3;
  if (v27 == a3 && v29 == v30 || (sub_25605398C() & 1) != 0)
  {
    v31 = sub_25605382C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v32 = qword_27F8260C0;
    v33 = v62;
    v25(v62, v22, v13);
    if (os_log_type_enabled(v32, v31))
    {
      v34 = swift_slowAlloc();
      v59 = v22;
      v35 = v34;
      v58 = swift_slowAlloc();
      v70[0] = v58;
      *v35 = 136315906;
      *(v35 + 4) = sub_256032BA0(v60, v61, v70);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_256032BA0(v63, v65, v70);
      *(v35 + 22) = 2080;
      v36 = sub_256032BA0(v27, v29, v70);

      *(v35 + 24) = v36;
      *(v35 + 32) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
      v37 = sub_25605397C();
      v39 = v38;
      v40 = *(v14 + 8);
      v40(v33, v13);
      v41 = sub_256032BA0(v37, v39, v70);

      *(v35 + 34) = v41;
      _os_log_impl(&dword_256022000, v32, v31, "Default locale test success, input: %s, expected: %s, got: %s, %s", v35, 0x2Au);
      v42 = v58;
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v42, -1, -1);
      MEMORY[0x259C57FC0](v35, -1, -1);
      v40(v59, v13);
      return (v40)(v64, v13);
    }

    v44 = *(v14 + 8);
    v44(v33, v13);
  }

  else
  {
    v58 = v27;
    v45 = sub_25605381C();
    if (qword_27F825630 != -1)
    {
      swift_once();
    }

    v46 = qword_27F8260C0;
    v47 = v59;
    v25(v59, v22, v13);
    v62 = v46;
    if (os_log_type_enabled(v46, v45))
    {
      v48 = v47;
      v49 = swift_slowAlloc();
      v50 = v22;
      v51 = swift_slowAlloc();
      v70[0] = v51;
      *v49 = 136315906;
      *(v49 + 4) = sub_256032BA0(v60, v61, v70);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_256032BA0(v63, v30, v70);
      *(v49 + 22) = 2080;
      v52 = sub_256032BA0(v58, v29, v70);

      *(v49 + 24) = v52;
      *(v49 + 32) = 2080;
      sub_2560506F4(&qword_27F825908, 255, MEMORY[0x277CC9788]);
      v53 = sub_25605397C();
      v55 = v54;
      v56 = *(v14 + 8);
      v56(v48, v13);
      v57 = sub_256032BA0(v53, v55, v70);

      *(v49 + 34) = v57;
      _os_log_impl(&dword_256022000, v62, v45, "Default locale test error, input: %s, expected: %s, got: %s, %s", v49, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C57FC0](v51, -1, -1);
      MEMORY[0x259C57FC0](v49, -1, -1);
      v56(v50, v13);
      return (v56)(v64, v13);
    }

    v44 = *(v14 + 8);
    v44(v47, v13);
  }

  v44(v22, v13);
  return (v44)(v64, v13);
}

uint64_t sub_25604B038(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_256037638;

  return v7();
}

uint64_t sub_25604B120(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_256037638;

  return v8();
}