id NHSSLogDefault()
{
  if (NHSSLogDefault_onceToken != -1)
  {
    NHSSLogDefault_cold_1();
  }

  v1 = NHSSLogDefault___logObj;

  return v1;
}

uint64_t __NHSSLogDefault_block_invoke()
{
  NHSSLogDefault___logObj = os_log_create("com.apple.NanoHomeScreenServices", "Default");

  return MEMORY[0x2821F96F8]();
}

uint64_t _NHSSPrivacyDefaultsMicrophonePermissionFromNumber(void *a1)
{
  result = [a1 integerValue];
  v2 = 1970168948;
  if (result == 1735552628)
  {
    v2 = 1735552628;
  }

  if (result != 1684369017)
  {
    return v2;
  }

  return result;
}

void sub_25B175414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B175E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_25B176178()
{
  v0 = sub_25B1771B8();
  __swift_allocate_value_buffer(v0, qword_27FA3E928);
  __swift_project_value_buffer(v0, qword_27FA3E928);
  return sub_25B1771A8();
}

uint64_t NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1771C8();
  v4 = sub_25B1771C8();
  v5 = sub_25B1771C8();
  v6 = [v1 widgetSuggestionsUnmuteDateForContainerBundleIdentifier:v3 extensionBundleIdentifier:v4 kind:v5];

  if (v6)
  {
    sub_25B177168();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_25B177188();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_25B176320(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  sub_25B17659C(a1, &v9 - v5);
  v7 = *a2;
  return NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v6);
}

uint64_t NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  sub_25B17659C(a1, &v14 - v5);
  v7 = sub_25B177188();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_25B177148();
    (*(v8 + 8))(v6, v7);
  }

  v10 = sub_25B1771C8();
  v11 = sub_25B1771C8();
  v12 = sub_25B1771C8();
  [v2 setWidgetSuggestionsUnmuteDate:v9 forContainerBundleIdentifier:v10 extensionBundleIdentifier:v11 kind:v12];

  return sub_25B17660C(a1);
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

uint64_t sub_25B17659C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B17660C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter(v4);
  return sub_25B176730;
}

void sub_25B176730(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_25B17659C(v3, v2);
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v2);
    sub_25B17660C(v3);
  }

  else
  {
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v3);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall NHSSSmartStackSuggestionDefaults.muteSoundDetectionPermissionPrompt()()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E940, &qword_25B177BC8) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = sub_25B177188();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  if ([v1 soundDetectionButtonDismissedOnce])
  {
    sub_25B177128();
    (*(v9 + 56))(v5, 0, 1, v8);
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v5);
  }

  else
  {
    v32 = v18;
    NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.getter(v7);
    v19 = *(v9 + 48);
    if (v19(v7, 1, v8) == 1)
    {
      sub_25B177118();
      if (v19(v7, 1, v8) != 1)
      {
        sub_25B17660C(v7);
      }
    }

    else
    {
      (*(v9 + 32))(v32, v7, v8);
    }

    [v1 defaultMuteForTodayDuration];
    sub_25B177178();
    sub_25B177138();
    v20 = *(v9 + 8);
    v20(v13, v8);
    if (sub_25B177158())
    {
      v31 = v20;
      v21 = [v1 soundDetectionButtonDismissedOnce];
      if (qword_27FA3E920 != -1)
      {
        swift_once();
      }

      v22 = sub_25B1771B8();
      __swift_project_value_buffer(v22, qword_27FA3E928);
      v23 = sub_25B177198();
      v24 = sub_25B1771E8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240192;
        *(v25 + 4) = v21;
        _os_log_impl(&dword_25B171000, v23, v24, "User is muting permission prompt. Has already dismissed once? %{BOOL,public}d.", v25, 8u);
        MEMORY[0x25F863190](v25, -1, -1);
      }

      if ((v21 & 1) == 0)
      {
        [v1 setSoundDetectionButtonDismissedOnce_];
      }

      (*(v9 + 16))(v5, v16, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      NHSSSmartStackSuggestionDefaults.soundDetectionButtonUnmuteDate.setter(v5);
      v26 = v31;
      v31(v16, v8);
      v26(v32, v8);
    }

    else
    {
      if (qword_27FA3E920 != -1)
      {
        swift_once();
      }

      v27 = sub_25B1771B8();
      __swift_project_value_buffer(v27, qword_27FA3E928);
      v28 = sub_25B177198();
      v29 = sub_25B1771D8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_25B171000, v28, v29, "Existing unmute date is after proposed unmute date; keep existing unmute date.", v30, 2u);
        MEMORY[0x25F863190](v30, -1, -1);
      }

      v20(v16, v8);
      v20(v32, v8);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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