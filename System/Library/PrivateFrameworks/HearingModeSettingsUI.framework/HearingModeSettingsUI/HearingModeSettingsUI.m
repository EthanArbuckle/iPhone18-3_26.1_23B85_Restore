BOOL isAudiogramValid(void *a1)
{
  v1 = a1;
  v2 = frequencyToHearingDecibelLevelMapFromAudiogram(v1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = requiredFrequencyBins();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __isAudiogramValid_block_invoke;
  v6[3] = &unk_2796F1CF0;
  v4 = v2;
  v7 = v4;
  v8 = &v9;
  [v3 enumerateObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return (v3 & 1) == 0;
}

void sub_251FB99B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id requiredFrequencyBins()
{
  v0 = requiredFrequencyBins_requiredFrequencyBins;
  if (!requiredFrequencyBins_requiredFrequencyBins)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_286441E30, &unk_286441E40, &unk_286441E50, &unk_286441E60, &unk_286441E70, &unk_286441E80, 0}];
    v2 = requiredFrequencyBins_requiredFrequencyBins;
    requiredFrequencyBins_requiredFrequencyBins = v1;

    v0 = requiredFrequencyBins_requiredFrequencyBins;
  }

  return v0;
}

id frequencyToHearingDecibelLevelMapFromAudiogram(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v3 = [v1 sensitivityPoints];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __frequencyToHearingDecibelLevelMapFromAudiogram_block_invoke;
    v7[3] = &unk_2796F1CC8;
    v9 = &v10;
    v4 = v2;
    v8 = v4;
    [v3 enumerateObjectsUsingBlock:v7];

    if (v11[3])
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_251FB9FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __frequencyToHearingDecibelLevelMapFromAudiogram_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 frequency];
  v8 = [MEMORY[0x277CCDAB0] hertzUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;

  v11 = requiredFrequencyBins();
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v14 = [v6 tests];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __frequencyToHearingDecibelLevelMapFromAudiogram_block_invoke_633;
    v28[3] = &unk_2796F1CA0;
    v28[4] = &v35;
    v28[5] = &v29;
    [v14 enumerateObjectsUsingBlock:v28];
    v15 = v36[5];
    if (v15 && v30[5])
    {
      v16 = [MEMORY[0x277CCDAB0] decibelHearingLevelUnit];
      [v15 doubleValueForUnit:v16];
      v18 = v17;

      v19 = v30[5];
      v20 = [MEMORY[0x277CCDAB0] decibelHearingLevelUnit];
      [v19 doubleValueForUnit:v20];
      v22 = v21;

      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v23 setObject:v24 forKey:@"left"];

      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
      [v23 setObject:v25 forKey:@"right"];

      v26 = *(a1 + 32);
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      [v26 setObject:v23 forKey:v27];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

void sub_251FBA2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __frequencyToHearingDecibelLevelMapFromAudiogram_block_invoke_633(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v10 = v3;
    v3 = [v3 side];
    v4 = v10;
    if (!v3)
    {
      v5 = [v10 clampedSensitivity];
      if (v5)
      {
        [v10 clampedSensitivity];
      }

      else
      {
        [v10 sensitivity];
      }
      v6 = ;
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);

      v4 = v10;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = v4;
    v3 = [v4 side];
    v4 = v11;
    if (v3 == 1)
    {
      v7 = [v11 clampedSensitivity];
      if (v7)
      {
        [v11 clampedSensitivity];
      }

      else
      {
        [v11 sensitivity];
      }
      v8 = ;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);

      v4 = v11;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __isAudiogramValid_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id hearing_log()
{
  if (hearing_log_onceToken[0] != -1)
  {
    hearing_log_cold_1();
  }

  v1 = hearing_log___logger;

  return v1;
}

uint64_t __hearing_log_block_invoke()
{
  v0 = os_log_create("com.apple.HearmingMode", "Headphone");
  v1 = hearing_log___logger;
  hearing_log___logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_251FBE838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251FBEBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_251FC128C()
{
  v0 = [objc_opt_self() makeStandardViewController];

  return v0;
}

id sub_251FC12CC(void *a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(a1);
  v2 = [objc_opt_self() makeStandardViewControllerAudioGramImportFlowProvider_];

  return v2;
}

id sub_251FC1418()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

id sub_251FC1450()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI20HMHearingTestService_enrollmentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_251FC14A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI20HMHearingTestService_enrollmentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_251FC1560(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
    [v3 pushViewController:v4 animated:1];
  }
}

id HMHearingTestService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMHearingTestService.init()()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI20HMHearingTestService_enrollmentViewController;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HMHearingTestService();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HMHearingTestService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMHearingTestService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t HearingFlowType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_251FC1934()
{
  v1 = *v0;
  sub_252004C00();
  MEMORY[0x2530967E0](v1);
  return sub_252004C20();
}

uint64_t sub_251FC19A8()
{
  v1 = *v0;
  sub_252004C00();
  MEMORY[0x2530967E0](v1);
  return sub_252004C20();
}

uint64_t *sub_251FC19EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_251FC1A58()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController;
  v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
LABEL_8:
    v7 = v2;
    return v3;
  }

  v4 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType);
  if (v4 == 1)
  {
    v5 = [objc_allocWithZone(HMHearingAidAudiogramViewController) init];
LABEL_7:
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    type metadata accessor for HearingAssistWelcomeController();
    v5 = sub_251FE4660(*(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_hmsClient), *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_headphoneDevice));
    goto LABEL_7;
  }

  v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType);
  result = sub_252004BA0();
  __break(1u);
  return result;
}

uint64_t sub_251FC1BAC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_251FC1BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

void (*sub_251FC1C80(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FC1A58();
  return sub_251FC1CC8;
}

void sub_251FC1CC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = v2;
}

id sub_251FC1D80()
{
  type metadata accessor for HearingFlowNavigationController();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  v2 = swift_unknownObjectRetain();
  return sub_251FE8AA8(v2, v1);
}

id HearingAssistFlowController.__allocating_init(withDevice:serviceClient:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController] = 0;
  *&v7[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_headphoneDevice] = a1;
  *&v7[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType] = a3;
  *&v7[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_hmsClient] = a2;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id HearingAssistFlowController.init(withDevice:serviceClient:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_headphoneDevice] = a1;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType] = a3;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_hmsClient] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for HearingAssistFlowController();
  return objc_msgSendSuper2(&v5, sel_init);
}

id HearingAssistFlowController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HearingAssistFlowController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAssistFlowController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251FC20EC()
{
  result = qword_27F4C6898;
  if (!qword_27F4C6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6898);
  }

  return result;
}

uint64_t sub_251FC224C()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C93B8);
  __swift_project_value_buffer(v0, qword_27F4C93B8);
  return sub_2520043C0();
}

uint64_t sub_251FC22C4()
{
  if (qword_27F4C7470 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C93B8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251FC2360@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C7470 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C93B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *AnyHearingFeatureContentProvider.headphoneDevice.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AnyHearingFeatureContentProvider.headphoneDevice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_251FC25B8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
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

uint64_t AnyHearingFeatureContentProvider.featureContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC2674(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_251FC2674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C68B0, &qword_2520071A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id AnyHearingFeatureContentProvider.__allocating_init(device:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_251FC5C94(a1);

  return v4;
}

id AnyHearingFeatureContentProvider.init(device:)(void *a1)
{
  v2 = sub_251FC5C94(a1);

  return v2;
}

uint64_t _s21HearingModeSettingsUI03AnyA22FeatureContentProviderC07featureG00abD00afG0_pSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  return sub_251FC6348(v1 + v3, a1, &qword_27F4C68B0, &qword_2520071A0);
}

uint64_t sub_251FC28AC()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_252003AD0();

  return v2;
}

uint64_t sub_251FC29C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v3, v10, &qword_27F4C68B0, &qword_2520071A0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = a1(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_251FC6470(v10, &qword_27F4C68B0, &qword_2520071A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v6 = sub_252003AD0();
  }

  return v6;
}

uint64_t AnyHearingFeatureContentProvider.devicePlatformName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v6, &qword_27F4C68B0, &qword_2520071A0);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = sub_252003BD0();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_251FC6470(v6, &qword_27F4C68B0, &qword_2520071A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v2 = sub_252003AD0();
  }

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.singleDeviceName.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v6, &qword_27F4C68B0, &qword_2520071A0);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = sub_252003BB0();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_251FC6470(v6, &qword_27F4C68B0, &qword_2520071A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v2 = sub_252003AD0();
  }

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.suggestionFitSymbols.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v3, v17, &qword_27F4C68B0, &qword_2520071A0);
  if (!v18)
  {
    result = sub_251FC6470(v17, &qword_27F4C68B0, &qword_2520071A0);
LABEL_5:
    v4 = 0xD000000000000019;
    v5 = 0x800000025200A6F0;
    v6 = 0x800000025200A710;
    v8 = 0x800000025200A740;
    v9 = 0xD00000000000002DLL;
    v7 = 0xD00000000000002ELL;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_252003C40();
  v4 = v11;
  v5 = v12;
  v7 = v13;
  v6 = v14;
  v9 = v15;
  v8 = v16;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v9;
  a1[5] = v8;
  return result;
}

uint64_t AnyHearingFeatureContentProvider.faultcheckUnknownImage.getter()
{
  sub_251FC6118();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520046B0();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v5, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = sub_252003C80();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    return v6;
  }

  result = sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.faultcheckFailedImage.getter()
{
  sub_251FC6118();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520046B0();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v5, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = sub_252003C60();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    return v6;
  }

  result = sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.occlusionLeftImage.getter()
{
  sub_252003DB0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520046B0();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v5, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = sub_252003BE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    return v6;
  }

  result = sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AnyHearingFeatureContentProvider.occlusionRightImage.getter()
{
  sub_252003DB0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2520046B0();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v5, v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = sub_252003C10();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    return v6;
  }

  result = sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_251FC3678(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_252003DB0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_2520046B0();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  v9 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v3 + v9, v14, &qword_27F4C68B0, &qword_2520071A0);
  v10 = v15;
  if (v15)
  {
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = a3(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    return v12;
  }

  result = sub_251FC6470(v14, &qword_27F4C68B0, &qword_2520071A0);
  if (v8)
  {
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t AnyHearingFeatureContentProvider.videoAirPodAdjust.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003BC0();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
    return 0xD00000000000001ALL;
  }

  return v2;
}

unint64_t AnyHearingFeatureContentProvider.videoAirPodLeftRight.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003C50();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
    return 0xD000000000000015;
  }

  return v2;
}

id sub_251FC3A6C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v3, v10, &qword_27F4C68B0, &qword_2520071A0);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = a1(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v6;
  }

  else
  {
    sub_251FC6470(v10, &qword_27F4C68B0, &qword_2520071A0);
    sub_252003DB0();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];

    return v9;
  }
}

uint64_t AnyHearingFeatureContentProvider.welcomeControllerDeviceSymbol.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003CA0();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
    return 0x7073646F70726961;
  }

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.isProductOfDifferentColors.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003C90();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
  }

  return v2 & 1;
}

unint64_t AnyHearingFeatureContentProvider.getAssetsDictionary.getter()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003C00();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return v2;
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
    return sub_251FC6164(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_251FC4138(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(a1 + v5, v11, &qword_27F4C68B0, &qword_2520071A0);
  v6 = v12;
  if (v12)
  {
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v8 = a1;
    v9 = a3(v6, v7);

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    sub_251FC6470(v11, &qword_27F4C68B0, &qword_2520071A0);
    return 0;
  }

  return v9;
}

uint64_t sub_251FC4230(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v3, v8, &qword_27F4C68B0, &qword_2520071A0);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = a1(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_251FC6470(v8, &qword_27F4C68B0, &qword_2520071A0);
    return 0;
  }

  return v6;
}

id sub_251FC4370(char a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v2 + v5, v10, &qword_27F4C68B0, &qword_2520071A0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = a2(a1 & 1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    sub_251FC6470(v10, &qword_27F4C68B0, &qword_2520071A0);
    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }
}

uint64_t AnyHearingFeatureContentProvider.featureTitleSettings.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v6, &qword_27F4C68B0, &qword_2520071A0);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = sub_252003C20();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_251FC6470(v6, &qword_27F4C68B0, &qword_2520071A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v2 = sub_252003AD0();
  }

  return v2;
}

id sub_251FC461C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2520046B0();

  return v5;
}

uint64_t AnyHearingFeatureContentProvider.featureFooterSettings.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v2, v19, &qword_27F4C68B0, &qword_2520071A0);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v3 = sub_252003C70();
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_251FC6470(v19, &qword_27F4C68B0, &qword_2520071A0);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_252004A70();
    MEMORY[0x253096310](0xD000000000000015, 0x800000025200A850);
    sub_251FC6348(v0 + v2, v19, &qword_27F4C68B0, &qword_2520071A0);
    if (v20)
    {
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v4 = sub_252003BF0();
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_251FC6470(v19, &qword_27F4C68B0, &qword_2520071A0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      v4 = sub_252003AD0();
      v6 = v9;
    }

    MEMORY[0x253096310](v4, v6);

    MEMORY[0x253096310](0xD000000000000073, 0x800000025200A870);
    sub_251FC6348(v1 + v2, v19, &qword_27F4C68B0, &qword_2520071A0);
    if (v20)
    {
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v10 = sub_252003BD0();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_251FC6470(v19, &qword_27F4C68B0, &qword_2520071A0);
      v13 = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v10 = sub_252003AD0();
      v12 = v15;
    }

    MEMORY[0x253096310](v10, v12);

    MEMORY[0x253096310](0xD000000000000039, 0x800000025200A8F0);
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v3 = sub_252003AD0();
  }

  return v3;
}

uint64_t AnyHearingFeatureContentProvider.fitWelcomeController(bluetoothDevice:contentProvider:)()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v0 + v1, v4, &qword_27F4C68B0, &qword_2520071A0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_252003C30();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_251FC6470(v4, &qword_27F4C68B0, &qword_2520071A0);
    return 0;
  }

  return v2;
}

uint64_t AnyHearingFeatureContentProvider.featureFlag.getter()
{
  sub_252003F10();
  v0 = sub_252003EF0();
  v1 = sub_252003ED0();

  return v1 & 1;
}

id AnyHearingFeatureContentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnyHearingFeatureContentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_251FC4EC0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AnyHearingFeatureContentProvider.suggestionFitSymbols.getter(v8);
  result = *v8;
  v5 = v8[1];
  v6 = v9;
  v7 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_251FC506C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v2, v5, &qword_27F4C68B0, &qword_2520071A0);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_252003CA0();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_251FC6470(v5, &qword_27F4C68B0, &qword_2520071A0);
    return 0x7073646F70726961;
  }

  return v3;
}

uint64_t sub_251FC5148()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v2, v5, &qword_27F4C68B0, &qword_2520071A0);
  v3 = v6;
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_252003C90();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_251FC6470(v5, &qword_27F4C68B0, &qword_2520071A0);
  }

  return v3 & 1;
}

unint64_t sub_251FC521C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v2, v5, &qword_27F4C68B0, &qword_2520071A0);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_252003C00();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v3;
  }

  else
  {
    sub_251FC6470(v5, &qword_27F4C68B0, &qword_2520071A0);
    return sub_251FC6164(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_251FC52FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v5 + v6, v11, &qword_27F4C68B0, &qword_2520071A0);
  v7 = v12;
  if (v12)
  {
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = a3(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    sub_251FC6470(v11, &qword_27F4C68B0, &qword_2520071A0);
    return 0;
  }

  return v9;
}

uint64_t sub_251FC5454()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent;
  swift_beginAccess();
  sub_251FC6348(v1 + v2, v5, &qword_27F4C68B0, &qword_2520071A0);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = sub_252003C30();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_251FC6470(v5, &qword_27F4C68B0, &qword_2520071A0);
    return 0;
  }

  return v3;
}

uint64_t sub_251FC552C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_252003AD0();

  return v2;
}

uint64_t sub_251FC55E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251FC56AC(v11, 0, 0, 1, a1, a2);
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
    sub_251FC6534(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_251FC56AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251FC57B8(a5, a6);
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
    result = sub_252004AA0();
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

uint64_t sub_251FC57B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_251FC5804(a1, a2);
  sub_251FC5934(&unk_28643AEA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251FC5804(uint64_t a1, unint64_t a2)
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

  v6 = sub_251FC5A20(v5, 0);
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

  result = sub_252004AA0();
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
        v10 = sub_252004760();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251FC5A20(v10, 0);
        result = sub_252004A60();
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

uint64_t sub_251FC5934(uint64_t result)
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

  result = sub_251FC5A94(result, v12, 1, v3);
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

void *sub_251FC5A20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6FB0, &qword_252007330);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251FC5A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6FB0, &qword_252007330);
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

unint64_t sub_251FC5B88(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_252004A20();

  return sub_251FC5BCC(a1, v5);
}

unint64_t sub_251FC5BCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_251FC63C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253096600](v9, a1);
      sub_251FC641C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_251FC5C94(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice;
  *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_headphoneDevice] = 0;
  v6 = &v2[OBJC_IVAR____TtC21HearingModeSettingsUI32AnyHearingFeatureContentProvider_featureContent];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  if (!a1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  v7 = a1;
  sub_252003E90();
  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_251FC6470(&v27, &qword_27F4C68D8, &qword_252007308);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C68F0, &qword_252007320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C68F8, &qword_252007328);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
      sub_251FC64D0(&v30, v33);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_252003CB0();
      swift_beginAccess();
      sub_251FC2674(&v30, v6);
      swift_endAccess();
      if (qword_27F4C7470 != -1)
      {
        swift_once();
      }

      v8 = sub_2520043D0();
      __swift_project_value_buffer(v8, qword_27F4C93B8);
      v9 = v2;
      v10 = sub_2520043B0();
      v11 = sub_2520048C0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v27 = v13;
        *v12 = 136315138;
        sub_251FC6348(v6, &v30, &qword_27F4C68B0, &qword_2520071A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C68B0, &qword_2520071A0);
        v14 = sub_2520049D0();
        v16 = v15;
        sub_251FC6470(&v30, &qword_27F4C68B0, &qword_2520071A0);
        v17 = sub_251FC55E0(v14, v16, &v27);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_251FB5000, v10, v11, "Feature Content created for Provider: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x253097030](v13, -1, -1);
        MEMORY[0x253097030](v12, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      goto LABEL_18;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

LABEL_13:
  sub_251FC6470(&v30, &qword_27F4C68E0, &qword_252007310);
  if (qword_27F4C7470 != -1)
  {
    swift_once();
  }

  v18 = sub_2520043D0();
  __swift_project_value_buffer(v18, qword_27F4C93B8);
  v19 = a1;
  v20 = sub_2520043B0();
  v21 = sub_2520048B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = a1;
    v24 = v19;
    _os_log_impl(&dword_251FB5000, v20, v21, "Failed to initialize AnyHearingFeatureContentProvider with %@: No feature content available", v22, 0xCu);
    sub_251FC6470(v23, &qword_27F4C68E8, &qword_252007318);
    MEMORY[0x253097030](v23, -1, -1);
    MEMORY[0x253097030](v22, -1, -1);
  }

LABEL_18:
  v26.receiver = v2;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_251FC6118()
{
  result = qword_27F4C68B8;
  if (!qword_27F4C68B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C68B8);
  }

  return result;
}

unint64_t sub_251FC6164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C68C8, &qword_2520072F8);
    v3 = sub_252004B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_251FC6348(v4, v13, &qword_27F4C68D0, &qword_252007300);
      result = sub_251FC5B88(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_251FC63B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251FC62A4()
{
  result = qword_27F4C68C0;
  if (!qword_27F4C68C0)
  {
    type metadata accessor for AnyHearingFeatureContentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C68C0);
  }

  return result;
}

uint64_t sub_251FC6348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_251FC63B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_251FC6470(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251FC64D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251FC6534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_251FC6600()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C93D0);
  __swift_project_value_buffer(v0, qword_27F4C93D0);
  return sub_2520043C0();
}

uint64_t sub_251FC6680()
{
  if (qword_27F4C7500 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C93D0);
}

uint64_t sub_251FC66E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C7500 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C93D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall HMHearingProtectionViewController.submitHPDeviceAnalytics(pid:lsrValue:)(Swift::Int pid, Swift::Bool lsrValue)
{
  v4 = [objc_allocWithZone(sub_252003D10()) init];
  v2 = sub_252004860();
  sub_252003CC0();

  v3 = sub_2520047F0();
  sub_252003CC0();

  sub_252003CD0();
}

uint64_t HMHearingProtectionViewController.setupListener(device:)@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6908, &qword_2520073C8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6910, &qword_2520073D0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v24 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6918, &qword_2520073D8);
  v14 = *(v24 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v24 - v16;
  sub_252003E80();
  sub_251FD67B8(&qword_27F4C6920, &qword_27F4C6908, &qword_2520073C8);
  sub_252004560();
  (*(v5 + 8))(v8, v4);
  sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
  v18 = sub_252004940();
  v26 = v18;
  v19 = sub_252004900();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_251FD67B8(&qword_27F4C6930, &qword_27F4C6910, &qword_2520073D0);
  sub_251FD3B60();
  sub_252004540();
  sub_251FC6470(v3, &qword_27F4C6900, &qword_2520073C0);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_251FD67B8(&qword_27F4C6938, &qword_27F4C6918, &qword_2520073D8);
  v20 = v24;
  v21 = sub_252004580();

  (*(v14 + 8))(v17, v20);
  result = sub_252004490();
  v23 = v25;
  v25[3] = result;
  *v23 = v21;
  return result;
}

uint64_t HMHearingProtectionViewController.loudSoundSpecifier.getter()
{
  v1 = v0;
  v2 = sub_2520042A0();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 headphoneDevice];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for AnyHearingFeatureContentProvider();
    v15 = v14;
    v16 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v14);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      AnyHearingFeatureContentProvider.devicePlatformName.getter();
    }

    else
    {
      v51 = v0;
      sub_252004620();
      sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
      sub_251FEAB30(v12);

      (*(v8 + 8))(v12, v7);
    }

    if (([v0 isCurrentNoiseModeOffWithDevice_] & 1) == 0)
    {
      v23 = [objc_opt_self() sharedInstance];
      v24 = [v0 address];
      if (!v24)
      {
        sub_2520046E0();
        v24 = sub_2520046B0();
      }

      [v23 activeHearingProtectionEnabledForAddress_];
    }

    if ([v1 isPPEEnabled] && objc_msgSend(v1, sel_shouldShowPPE))
    {
      v51 = v1;
    }

    else
    {
      v51 = v1;
    }

    sub_252004620();
    sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v12);
    v47 = *(v8 + 8);
    v47(v12, v7);
    v48 = v7;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_252004360();
    MEMORY[0x28223BE20](v28, v29);
    sub_252004310();

    if ([v1 isPPEEnabled] && objc_msgSend(v1, sel_shouldShowPPE))
    {
      sub_251FE78C4();
      v52 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
      v51 = v1;
      v30 = v1;
      sub_252004290();
      sub_252004340();
      (*(v49 + 8))(v6, v50);
      sub_252004330();
    }

    v51 = v1;
    sub_252004620();
    v31 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v12);
    v47(v12, v48);
    v52 = v31;
    v51 = v1;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    *(v32 + 24) = v15;
    v33 = v1;
    v46 = v15;
    v34 = v33;
    sub_252004290();
    sub_252004340();
    v35 = *(v49 + 8);
    v35(v6, v50);
    sub_252004330();

    if ([v34 isPPEEnabled] && objc_msgSend(v34, sel_shouldShowPPE))
    {
      v51 = v34;
      sub_252004620();
      sub_251FEAB30(v12);
      v47(v12, v48);
      v52 = v31;
      v51 = v34;
      v36 = swift_allocObject();
      *(v36 + 16) = 12856;
      *(v36 + 24) = 0xE200000000000000;
      v37 = v34;
      sub_252004290();
      sub_252004340();
      v38 = v50;
      v35(v6, v50);
      sub_252004330();

      sub_251FE78C4();
      v52 = v31;
      v51 = v37;
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v41 = v46;
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;
      v42 = v41;
      v43 = v37;
      sub_252004290();
      sub_252004340();
      v35(v6, v38);
      sub_252004330();
    }

    v22 = sub_252004350();
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v17 = sub_2520043D0();
    __swift_project_value_buffer(v17, qword_27F4C93D0);
    v18 = sub_2520043B0();
    v19 = sub_2520048B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_251FC55E0(0xD000000000000012, 0x800000025200AD10, &v51);
      _os_log_impl(&dword_251FB5000, v18, v19, "Hearing Protection: %s no device return empty", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x253097030](v21, -1, -1);
      MEMORY[0x253097030](v20, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v22;
}

void sub_251FC79E8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v51 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B00, &qword_252007808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v48 - v8;
  v10 = sub_252004680();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_2520046A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a2;
  sub_252004620();
  sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v19 = a2;
  v20 = sub_251FEAB30(v18);
  v22 = v21;
  v23 = *(v14 + 8);
  v23(v18, v13);
  v24 = [v19 isPPEEnabled];
  v50 = v19;
  if (v24 && [v19 shouldShowPPE])
  {
    v25 = MEMORY[0x277D837D0];
    sub_251FE78C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252007350;
    *(v26 + 56) = v25;
    v27 = sub_251FD6800();
    v28 = v49;
    *(v26 + 32) = v48;
    *(v26 + 40) = v28;
    *(v26 + 96) = v25;
    *(v26 + 104) = v27;
    *(v26 + 64) = v27;
    *(v26 + 72) = v20;
    *(v26 + 80) = v22;

    v29 = sub_2520046F0();
    v31 = v30;
  }

  else
  {
    v54 = v19;
    sub_252004670();
    sub_252004660();
    sub_252004640();
    sub_252004660();
    sub_252004690();
    v29 = sub_251FEAB30(v18);
    v31 = v32;
    v23(v18, v13);
  }

  v54 = v29;
  v55 = v31;
  v52 = v20;
  v53 = v22;
  v33 = sub_252003B50();
  (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  sub_251FD671C();
  v34 = sub_2520049F0();
  v36 = v35;
  v38 = v37;
  sub_251FC6470(v9, &qword_27F4C6B00, &qword_252007808);

  if (v38)
  {
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C6B10, 0x277D3FA10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v40)
    {
      sub_2520046E0();
      v40 = sub_2520046B0();
    }

    v41 = v51;
    [v51 setProperty:v40 forKey:{*MEMORY[0x277D3FF48], v48, v49}];

    v42 = sub_2520046B0();
    [v41 setProperty:v42 forKey:*MEMORY[0x277D3FF70]];

    v54 = v34;
    v55 = v36;
    v52 = v29;
    v53 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B18, &qword_252007810);
    sub_251FD67B8(&qword_27F4C6B20, &qword_27F4C6B18, &qword_252007810);
    v56.location = sub_2520049B0();
    v43 = NSStringFromRange(v56);
    if (!v43)
    {
      sub_2520046E0();
      v43 = sub_2520046B0();
    }

    [v41 setProperty:v43 forKey:*MEMORY[0x277D3FF58]];

    v44 = objc_opt_self();
    v45 = v50;
    v46 = [v44 valueWithNonretainedObject_];
    [v41 setProperty:v46 forKey:*MEMORY[0x277D3FF68]];

    if ([v45 isPPEEnabled])
    {
      [v45 shouldShowPPE];
    }

    v47 = sub_2520046B0();
    [v41 setProperty:v47 forKey:*MEMORY[0x277D3FF50]];
  }
}

void sub_251FC8024(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

id sub_251FC8094(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isCurrentNoiseModeOffWithDevice_])
  {
    v17 = a1;
    sub_252004620();
    sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v9);
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [a1 address];
    if (!v11)
    {
      sub_2520046E0();
      v11 = sub_2520046B0();
    }

    [v10 activeHearingProtectionEnabledForAddress_];

    v17 = a1;
    sub_252004620();
    sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v9);
    (*(v5 + 8))(v9, v4);
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v13 = sub_2520046B0();

  v14 = [v12 initWithString_];

  return v14;
}

void sub_251FC8328(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

void sub_251FC8398(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

void sub_251FC8408()
{
  v0 = sub_2520046A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_251FE78C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252007360;
    v9 = sub_252003EA0();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_251FD6800();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_2520046F0();

    v12 = sub_2520046B0();

    v13 = [objc_opt_self() alertControllerWithTitle:0 message:v12 preferredStyle:1];

    aBlock[0] = v7;
    sub_252004620();
    sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v5);
    v14 = *(v1 + 8);
    v14(v5, v0);
    v15 = swift_allocObject();
    v24 = v0;
    v16 = v15;
    *(v15 + 16) = v7;
    v17 = v7;
    v18 = sub_2520046B0();

    aBlock[4] = sub_251FD688C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251FC8818;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);

    v20 = objc_opt_self();
    v21 = [v20 actionWithTitle:v18 style:2 handler:v19];
    _Block_release(v19);

    [v13 addAction_];
    aBlock[0] = v17;
    sub_252004620();
    sub_251FEAB30(v5);
    v14(v5, v24);
    v22 = sub_2520046B0();

    v23 = [v20 actionWithTitle:v22 style:1 handler:0];

    [v13 addAction_];
    [v17 presentViewController:v13 animated:1 completion:0];
  }
}

void sub_251FC8818(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_251FC8880(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

id sub_251FC8908(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
  v5 = sub_2520047A0();

  return v5;
}

uint64_t HMHearingProtectionViewController.aboutSpecifiers.getter()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520042A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 headphoneDevice];
  if (v14)
  {
    v15 = v14;
    v34 = v9;
    type metadata accessor for AnyHearingFeatureContentProvider();
    v33 = v15;
    v16 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v15);
    v17 = AnyHearingFeatureContentProvider.featureFlag.getter();
    v35 = v8;
    if (v17)
    {
      AnyHearingFeatureContentProvider.devicePlatformName.getter();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_252004360();
    MEMORY[0x28223BE20](v27, v28);
    sub_252004310();

    v36[0] = v1;
    sub_252004620();
    v29 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v7);
    (*(v3 + 8))(v7, v2);
    v36[3] = v29;
    v36[0] = v1;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v1;
    sub_252004290();
    sub_252004340();

    (*(v34 + 8))(v13, v35);
    sub_252004330();

    v23 = sub_252004350();
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v18 = sub_2520043D0();
    __swift_project_value_buffer(v18, qword_27F4C93D0);
    v19 = sub_2520043B0();
    v20 = sub_2520048B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_251FC55E0(0x65705374756F6261, 0xEF73726569666963, v36);
      _os_log_impl(&dword_251FB5000, v19, v20, "Hearing Protection: %s no device return empty", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x253097030](v22, -1, -1);
      MEMORY[0x253097030](v21, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v23;
}

void sub_251FC8E88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B00, &qword_252007808);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v44 = &v39 - v8;
  v9 = sub_252004680();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_2520046A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  sub_252004620();
  sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v18 = sub_251FEAB30(v17);
  v20 = v19;
  v21 = *(v13 + 8);
  v21(v17, v12);
  v40 = a2;
  v47 = a2;
  sub_252004670();
  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004690();
  v22 = sub_251FEAB30(v17);
  v24 = v23;
  v21(v17, v12);
  v47 = v22;
  v48 = v24;
  v45 = v18;
  v46 = v20;
  v25 = sub_252003B50();
  v26 = v44;
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  sub_251FD671C();
  v27 = sub_2520049F0();
  v29 = v28;
  LOBYTE(v18) = v30;
  sub_251FC6470(v26, &qword_27F4C6B00, &qword_252007808);

  if (v18)
  {
  }

  else
  {
    v31 = v22;
    sub_251FD6770(0, &qword_27F4C6B10, 0x277D3FA10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v33)
    {
      sub_2520046E0();
      v33 = sub_2520046B0();
    }

    v34 = v41;
    [v41 setProperty:v33 forKey:*MEMORY[0x277D3FF48]];

    v35 = sub_2520046B0();
    [v34 setProperty:v35 forKey:*MEMORY[0x277D3FF70]];

    v47 = v27;
    v48 = v29;
    v45 = v31;
    v46 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B18, &qword_252007810);
    sub_251FD67B8(&qword_27F4C6B20, &qword_27F4C6B18, &qword_252007810);
    v49.location = sub_2520049B0();
    v36 = NSStringFromRange(v49);
    if (!v36)
    {
      sub_2520046E0();
      v36 = sub_2520046B0();
    }

    [v34 setProperty:v36 forKey:*MEMORY[0x277D3FF58]];

    v37 = [objc_opt_self() valueWithNonretainedObject_];
    [v34 setProperty:v37 forKey:*MEMORY[0x277D3FF68]];

    v38 = sub_2520046B0();
    [v34 setProperty:v38 forKey:*MEMORY[0x277D3FF50]];
  }
}

void sub_251FC93CC(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

uint64_t HMHearingProtectionViewController.safetySetupSpecifiers.getter()
{
  v1 = v0;
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 headphoneDevice];
  if (v14)
  {
    v15 = v14;
    v34 = v2;
    type metadata accessor for AnyHearingFeatureContentProvider();
    v33 = v15;
    v16 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v15);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      AnyHearingFeatureContentProvider.devicePlatformName.getter();
    }

    v32 = v16;
    v35[0] = v1;
    sub_252004620();
    v17 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
    sub_251FEAB30(v13);
    (*(v9 + 8))(v13, v8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_252004360();
    MEMORY[0x28223BE20](v21, v22);
    sub_252004310();

    sub_251FE78C4();
    v35[3] = v17;
    v35[0] = v1;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v1;
    sub_252004290();
    sub_252004340();

    (*(v3 + 8))(v7, v34);
    sub_252004330();

    v24 = sub_252004350();
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v25 = sub_2520043D0();
    __swift_project_value_buffer(v25, qword_27F4C93D0);
    v26 = sub_2520043B0();
    v27 = sub_2520048B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_251FC55E0(0xD000000000000015, 0x800000025200ADF0, v35);
      _os_log_impl(&dword_251FB5000, v26, v27, "Hearing Protection: %s no device return empty", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x253097030](v29, -1, -1);
      MEMORY[0x253097030](v28, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v24;
}

void sub_251FC9964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B00, &qword_252007808);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v39 - v11;
  v13 = sub_2520046A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v43 = a2;
  sub_252004620();
  sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v19 = sub_251FEAB30(v18);
  v21 = v20;
  (*(v14 + 8))(v18, v13);
  sub_251FE78C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_252007350;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v24 = sub_251FD6800();
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v19;
  *(v22 + 80) = v21;

  v25 = sub_2520046F0();
  v27 = v26;

  v43 = v25;
  v44 = v27;
  v41 = v19;
  v42 = v21;
  v28 = sub_252003B50();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_251FD671C();
  v29 = sub_2520049F0();
  v31 = v30;
  LOBYTE(v14) = v32;
  sub_251FC6470(v12, &qword_27F4C6B00, &qword_252007808);

  if (v14)
  {
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C6B10, 0x277D3FA10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v34)
    {
      sub_2520046E0();
      v34 = sub_2520046B0();
    }

    [a1 setProperty:v34 forKey:*MEMORY[0x277D3FF48]];

    v35 = sub_2520046B0();
    [a1 setProperty:v35 forKey:*MEMORY[0x277D3FF70]];

    v43 = v29;
    v44 = v31;
    v41 = v25;
    v42 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B18, &qword_252007810);
    sub_251FD67B8(&qword_27F4C6B20, &qword_27F4C6B18, &qword_252007810);
    v45.location = sub_2520049B0();
    v36 = NSStringFromRange(v45);
    if (!v36)
    {
      sub_2520046E0();
      v36 = sub_2520046B0();
    }

    [a1 setProperty:v36 forKey:*MEMORY[0x277D3FF58]];

    v37 = [objc_opt_self() valueWithNonretainedObject_];
    [a1 setProperty:v37 forKey:*MEMORY[0x277D3FF68]];

    v38 = sub_2520046B0();
    [a1 setProperty:v38 forKey:*MEMORY[0x277D3FF50]];
  }
}

void sub_251FC9E44(void *a1)
{
  v2 = sub_2520046B0();
  [a1 setIdentifier_];
}

uint64_t HMHearingProtectionViewController.lineSeparatorSpecifiers.getter()
{
  v1 = sub_2520042A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_252004360();
  v13[3] = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v13[0] = v0;
  v10 = v0;
  sub_252004290();
  sub_252004320();

  (*(v2 + 8))(v6, v1);
  sub_252004330();

  v11 = sub_252004350();

  return v11;
}

uint64_t sub_251FCA0A0(void *a1)
{
  v2 = type metadata accessor for HMHearingProtectionViewController.HearingProtectionSeporatorView();
  v3 = [objc_allocWithZone(v2) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];
  v6 = [objc_opt_self() tertiaryLabelColor];
  [v3 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007350;
  sub_252003DF0();
  *(inited + 32) = sub_252003DC0();
  *(inited + 72) = v2;
  *(inited + 40) = v8;
  *(inited + 48) = v3;
  v9 = v3;
  *(inited + 80) = sub_252003DE0();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  v11 = sub_252004600();

  [a1 setUserInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall HMHearingProtectionViewController.openSafetyInformation()()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HearingProtectionAboutViewController();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v20 = v0;
  sub_252004620();
  sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  v10 = sub_2520046B0();

  v11 = [v9 preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6950, &qword_2520073E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252007360;
    *(inited + 32) = 0x7365726464617462;
    *(inited + 40) = 0xE900000000000073;
    v13 = v11;
    v14 = [v1 address];
    v15 = sub_2520046E0();
    v17 = v16;

    v20 = v15;
    v21 = v17;
    v19[2] = 58;
    v19[3] = 0xE100000000000000;
    v19[0] = 45;
    v19[1] = 0xE100000000000000;
    sub_251FD5364();
    sub_251FD53B8();
    sub_252004870();

    sub_251FD4DB4(inited);
    swift_setDeallocating();
    sub_251FC6470(inited + 32, &qword_27F4C6968, &unk_2520073F0);
    v18 = sub_252004600();

    [v13 setUserInfo_];
  }

  [v8 setSpecifier_];
  [v1 showController_];
}

Swift::Void __swiftcall HMHearingProtectionViewController.setupPPE()()
{
  type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
  v5 = sub_251FD6770(0, &qword_27F4C6940, off_2796F16C8);
  v6 = &off_28643AF98;
  *&v4 = v0;
  v1 = v0;
  sub_251FE9B20(&v4);
  v3 = v2;
  [v1 presentViewController:v2 animated:1 completion:0];
}

Swift::Bool __swiftcall HMHearingProtectionViewController.shouldShowPPE()()
{
  v1 = [v0 headphoneDevice];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252003E60();

    v4 = sub_2520041D0();
    v5 = sub_2520041F0();
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v6 = sub_2520043D0();
    __swift_project_value_buffer(v6, qword_27F4C93D0);
    v7 = sub_2520043B0();
    v8 = sub_2520048C0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109632;
      *(v9 + 4) = v4 == 1;
      *(v9 + 8) = 1024;
      *(v9 + 10) = v5 == 2;
      *(v9 + 14) = 1024;
      *(v9 + 16) = v5 == 3;
      _os_log_impl(&dword_251FB5000, v7, v8, "HP PPE: PPE Capable?: %{BOOL}d, PPE Region Supported?: %{BOOL}d, PPE Region Rescinded?: %{BOOL}d", v9, 0x14u);
      MEMORY[0x253097030](v9, -1, -1);
    }

    LOBYTE(v1) = v4 == 1 && (v5 & 0xFE) == 2;
  }

  return v1;
}

Swift::Bool __swiftcall HMHearingProtectionViewController.isPPEEnabled()()
{
  v1 = [v0 headphoneDevice];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252003E60();

    LODWORD(v2) = sub_252004190();
    LOBYTE(v1) = v2 == 1;
  }

  return v1;
}

Swift::Void __swiftcall HMHearingProtectionViewController.disablePPE()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 headphoneDevice];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252003E60();

    v11 = sub_251FDFB88();
    (*(v3 + 16))(v7, v11, v2);
    v12 = sub_2520043B0();
    v13 = sub_2520048C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_251FB5000, v12, v13, "HP PPE: PPE Disabled", v14, 2u);
      MEMORY[0x253097030](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    sub_2520041A0();
    [v1 reloadSpecifiers];
  }
}

Swift::Void __swiftcall HMHearingProtectionViewController.enablePPE()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 headphoneDevice];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252003E60();

    sub_2520041A0();
    v11 = sub_251FDFB88();
    (*(v3 + 16))(v7, v11, v2);
    v12 = sub_2520043B0();
    v13 = sub_2520048C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_251FB5000, v12, v13, "HP PPE: PPE Enrollment Completed", v14, 2u);
      MEMORY[0x253097030](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    [v1 reloadSpecifiers];
  }
}

uint64_t PlaceCardUseCase.localizedStrings(_:)(void *a1)
{
  v3 = sub_252004680();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v18 = sub_2520046A0();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v12 = a1;
  v13 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a1);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  if ((AnyHearingFeatureContentProvider.featureFlag.getter() & 1) == 0)
  {
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:

    v20 = 0;
    sub_252004620();
    v14 = sub_251FEAB30(v10);
    v15 = *(v6 + 8);
    v16 = v18;
    v15(v10, v18);
    v19 = 0;
    sub_252004620();
    sub_251FEAB30(v10);

    v15(v10, v16);
    return v14;
  }

  AnyHearingFeatureContentProvider.devicePlatformName.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v11 == 1)
  {
    v21 = 1;
    sub_252004670();
    sub_252004660();
    sub_252004640();

    sub_252004660();
    sub_252004640();
  }

  else
  {

    v22 = 2;
    sub_252004670();
  }

  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004690();
  v14 = sub_251FEAB30(v10);
  (*(v6 + 8))(v10, v18);

  return v14;
}

uint64_t PlaceCardUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_252004C00();
  MEMORY[0x2530967E0](v1);
  return sub_252004C20();
}

id sub_251FCB324(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_251FCB39C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController_headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___totalAttenuation] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuation] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuationV2] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___fitPlaceCard] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___maintenanceCarePlaceCard] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___deviceInformationSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___regulatoryInformationSection] = 0;
  if (a2)
  {
    v5 = sub_2520046B0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HearingProtectionAboutViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

void sub_251FCB514()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HearingProtectionAboutViewController();
  v14.receiver = v0;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() redColor];
    [v10 setBackgroundColor_];

    v13[1] = v1;
    sub_252004620();
    sub_251FEAB30(v7);
    (*(v3 + 8))(v7, v2);
    v12 = sub_2520046B0();

    [v1 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_251FCB720()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_251FCB76C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_251FCB844(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v12);
  if (v15)
  {
    v16 = v15;
    v17 = sub_252003E60();
    v18 = sub_2520040A0();

    if (v18)
    {
      v50[0] = a1;
      sub_252004620();
      v19 = type metadata accessor for HearingProtectionAboutViewController();
      v49 = v16;
      v20 = v19;
      sub_251FEAB30(v14);
      v48 = v18;
      (*(v9 + 8))(v14, v8);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_252004360();
      MEMORY[0x28223BE20](v24, v25);
      sub_252004310();

      v51 = v20;
      v50[0] = a1;
      v26 = a1;
      sub_252004290();
      sub_252004320();

      v27 = *(v3 + 8);
      v28 = v27(v7, v2);
      MEMORY[0x28223BE20](v28, v29);
      v30 = v48;
      sub_252004330();

      v51 = v20;
      v50[0] = v26;
      v31 = v26;
      sub_252004290();
      sub_252004320();

      v32 = v27(v7, v2);
      MEMORY[0x28223BE20](v32, v33);
      sub_252004330();

      v51 = v20;
      v50[0] = v31;
      v31;
      sub_252004290();
      sub_252004320();

      v34 = v27(v7, v2);
      MEMORY[0x28223BE20](v34, v35);
      sub_252004330();

      v36 = sub_252004350();

      return v36;
    }

    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v43 = sub_2520043D0();
    __swift_project_value_buffer(v43, qword_27F4C93D0);
    v44 = sub_2520043B0();
    v45 = sub_2520048B0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_251FC55E0(0xD000000000000010, 0x800000025200BB10, v50);
      _os_log_impl(&dword_251FB5000, v44, v45, "Hearing Protection: %s no safetyInformation return empty", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x253097030](v47, -1, -1);
      MEMORY[0x253097030](v46, -1, -1);
    }
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v38 = sub_2520043D0();
    __swift_project_value_buffer(v38, qword_27F4C93D0);
    v39 = sub_2520043B0();
    v40 = sub_2520048B0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_251FC55E0(0xD000000000000010, 0x800000025200BB10, v50);
      _os_log_impl(&dword_251FB5000, v39, v40, "Hearing Protection: %s no device return empty", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x253097030](v42, -1, -1);
      MEMORY[0x253097030](v41, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_251FCBFB0(void *a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B00, &qword_252007808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v39 = &v36 - v6;
  v7 = sub_252004680();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = sub_2520046A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  v16 = sub_251FEAB30(v15);
  v18 = v17;
  v19 = *(v11 + 8);
  v19(v15, v10);
  v37 = a2;
  v42 = a2;
  sub_252004670();
  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004690();
  v20 = sub_251FEAB30(v15);
  v22 = v21;
  v19(v15, v10);
  v42 = v20;
  v43 = v22;
  v40 = v16;
  v41 = v18;
  v23 = sub_252003B50();
  v24 = v39;
  (*(*(v23 - 8) + 56))(v39, 1, 1, v23);
  sub_251FD671C();
  v25 = sub_2520049F0();
  v27 = v26;
  LOBYTE(v16) = v28;
  sub_251FC6470(v24, &qword_27F4C6B00, &qword_252007808);

  if (v16)
  {
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C6B10, 0x277D3FA10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v30)
    {
      sub_2520046E0();
      v30 = sub_2520046B0();
    }

    v31 = v38;
    [v38 setProperty:v30 forKey:*MEMORY[0x277D3FF48]];

    v32 = sub_2520046B0();
    [v31 setProperty:v32 forKey:*MEMORY[0x277D3FF70]];

    v42 = v25;
    v43 = v27;
    v40 = v20;
    v41 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B18, &qword_252007810);
    sub_251FD67B8(&qword_27F4C6B20, &qword_27F4C6B18, &qword_252007810);
    v44.location = sub_2520049B0();
    v33 = NSStringFromRange(v44);
    if (!v33)
    {
      sub_2520046E0();
      v33 = sub_2520046B0();
    }

    [v31 setProperty:v33 forKey:*MEMORY[0x277D3FF58]];

    v34 = [objc_opt_self() valueWithNonretainedObject_];
    [v31 setProperty:v34 forKey:*MEMORY[0x277D3FF68]];

    v35 = sub_2520046B0();
    [v31 setProperty:v35 forKey:*MEMORY[0x277D3FF50]];
  }
}

uint64_t sub_251FCC4B8(void *a1, void *a2, uint64_t a3)
{
  v35 = a1;
  v5 = sub_252004680();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 transparencyModeHours];
  v15 = [v14 integerValue];

  if ((v15 & 0x8000000000000000) != 0)
  {
    LODWORD(v18) = 1;
  }

  else
  {
    v16 = [a2 transparencyModeDays];
    v17 = [v16 integerValue];

    v18 = v17 >> 63;
  }

  v38 = a3;
  sub_252004620();
  v37 = type metadata accessor for HearingProtectionAboutViewController();
  v33 = sub_251FEAB30(v13);
  v34 = v19;
  v20 = v8;
  v36 = *(v9 + 8);
  v36(v13, v8);
  v38 = a3;
  if (v18)
  {
    sub_252004620();
  }

  else
  {
    sub_252004670();
    sub_252004660();
    v21 = [a2 transparencyModeHours];
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    sub_252004650();

    sub_252004660();
    v22 = [a2 transparencyModeDays];
    sub_252004650();

    sub_252004660();
    sub_252004690();
  }

  v32 = sub_251FEAB30(v13);
  v24 = v23;
  v36(v13, v8);
  v38 = a3;
  sub_252004670();
  sub_252004660();
  v25 = [a2 transparencyModeLowerBound];
  sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
  sub_252004650();

  sub_252004660();
  v26 = [a2 transparencyModeUpperBound];
  sub_252004650();

  sub_252004660();
  sub_252004690();
  v27 = sub_251FEAB30(v13);
  v29 = v28;
  v36(v13, v20);
  sub_251FD2624(v33, v34, v32, v24, v27, v29, v35);
}

uint64_t sub_251FCC920(void *a1, void *a2, uint64_t a3)
{
  v34 = a1;
  v5 = sub_252004680();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 adaptiveModeHours];
  v15 = [v14 integerValue];

  if ((v15 & 0x8000000000000000) != 0)
  {
    LODWORD(v18) = 1;
  }

  else
  {
    v16 = [a2 adaptiveModeDays];
    v17 = [v16 integerValue];

    v18 = v17 >> 63;
  }

  v37 = a3;
  sub_252004620();
  v36 = type metadata accessor for HearingProtectionAboutViewController();
  v32 = sub_251FEAB30(v13);
  v33 = v19;
  v35 = *(v9 + 8);
  v35(v13, v8);
  v37 = a3;
  if (v18)
  {
    sub_252004620();
  }

  else
  {
    sub_252004670();
    sub_252004660();
    v20 = [a2 adaptiveModeHours];
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    sub_252004650();

    sub_252004660();
    v21 = [a2 adaptiveModeDays];
    sub_252004650();

    sub_252004660();
    sub_252004690();
  }

  v31 = sub_251FEAB30(v13);
  v23 = v22;
  v35(v13, v8);
  v37 = a3;
  sub_252004670();
  sub_252004660();
  v24 = [a2 adaptiveModeLowerBound];
  sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
  sub_252004650();

  sub_252004660();
  v25 = [a2 adaptiveModeUpperBound];
  sub_252004650();

  sub_252004660();
  sub_252004690();
  v26 = sub_251FEAB30(v13);
  v28 = v27;
  v35(v13, v8);
  sub_251FD2624(v32, v33, v31, v23, v26, v28, v34);
}

uint64_t sub_251FCCD94(void *a1, void *a2, uint64_t a3)
{
  v34 = a1;
  v5 = sub_252004680();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 noiseCancellationModeHours];
  v15 = [v14 integerValue];

  if ((v15 & 0x8000000000000000) != 0)
  {
    LODWORD(v18) = 1;
  }

  else
  {
    v16 = [a2 noiseCancellationModeDays];
    v17 = [v16 integerValue];

    v18 = v17 >> 63;
  }

  v37 = a3;
  sub_252004620();
  v36 = type metadata accessor for HearingProtectionAboutViewController();
  v32 = sub_251FEAB30(v13);
  v33 = v19;
  v35 = *(v9 + 8);
  v35(v13, v8);
  v37 = a3;
  if (v18)
  {
    sub_252004620();
  }

  else
  {
    sub_252004670();
    sub_252004660();
    v20 = [a2 noiseCancellationModeHours];
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    sub_252004650();

    sub_252004660();
    v21 = [a2 noiseCancellationModeDays];
    sub_252004650();

    sub_252004660();
    sub_252004690();
  }

  v31 = sub_251FEAB30(v13);
  v23 = v22;
  v35(v13, v8);
  v37 = a3;
  sub_252004670();
  sub_252004660();
  v24 = [a2 noiseCancellationModeLowerBound];
  sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
  sub_252004650();

  sub_252004660();
  v25 = [a2 noiseCancellationModeUpperBound];
  sub_252004650();

  sub_252004660();
  sub_252004690();
  v26 = sub_251FEAB30(v13);
  v28 = v27;
  v35(v13, v8);
  sub_251FD2624(v32, v33, v31, v23, v26, v28, v34);
}

uint64_t sub_251FCD1FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___totalAttenuation);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___totalAttenuation) = a1;
}

uint64_t (*sub_251FCD214(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FCB824();
  return sub_251FCD25C;
}

uint64_t sub_251FCD288(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v12);
  if (v15)
  {
    v16 = v15;
    v17 = sub_252003E60();
    v18 = sub_2520040A0();

    if (v18)
    {
      v55[0] = a1;
      sub_252004620();
      v19 = type metadata accessor for HearingProtectionAboutViewController();
      v54 = v16;
      v20 = v19;
      sub_251FEAB30(v14);
      v52 = v3;
      v53 = v18;
      (*(v9 + 8))(v14, v8);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_252004360();
      MEMORY[0x28223BE20](v24, v25);
      sub_252004310();

      v56 = v20;
      v55[0] = a1;
      v26 = a1;
      sub_252004290();
      sub_252004320();

      v27 = *(v52 + 8);
      v28 = v27(v7, v2);
      MEMORY[0x28223BE20](v28, v29);
      sub_252004330();

      v56 = v20;
      v55[0] = v26;
      v30 = v26;
      sub_252004290();
      sub_252004320();

      v31 = v27(v7, v2);
      MEMORY[0x28223BE20](v31, v32);
      sub_252004330();

      v56 = v20;
      v55[0] = v30;
      v33 = v30;
      sub_252004290();
      sub_252004320();

      v34 = v27(v7, v2);
      MEMORY[0x28223BE20](v34, v35);
      v36 = v54;
      sub_252004330();

      v56 = v20;
      v55[0] = v33;
      v33;
      sub_252004290();
      sub_252004320();

      v37 = v27(v7, v2);
      MEMORY[0x28223BE20](v37, v38);
      sub_252004330();

      v39 = sub_252004350();

      return v39;
    }

    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v46 = sub_2520043D0();
    __swift_project_value_buffer(v46, qword_27F4C93D0);
    v47 = sub_2520043B0();
    v48 = sub_2520048B0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_251FC55E0(0xD000000000000012, 0x800000025200B8B0, v55);
      _os_log_impl(&dword_251FB5000, v47, v48, "Hearing Protection: %s no safetyInformation return empty", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x253097030](v50, -1, -1);
      MEMORY[0x253097030](v49, -1, -1);
    }
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v41 = sub_2520043D0();
    __swift_project_value_buffer(v41, qword_27F4C93D0);
    v42 = sub_2520043B0();
    v43 = sub_2520048B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_251FC55E0(0xD000000000000012, 0x800000025200B8B0, v55);
      _os_log_impl(&dword_251FB5000, v42, v43, "Hearing Protection: %s no device return empty", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x253097030](v45, -1, -1);
      MEMORY[0x253097030](v44, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_251FCDAD4(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v10 = sub_2520046B0();

  [a1 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
}

uint64_t sub_251FCDC24(void *a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v27 = a1;
  v4 = sub_252004680();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  v13 = sub_251FEAB30(v12);
  v25 = v14;
  v26 = v13;
  v15 = *(v8 + 8);
  v15(v12, v7);
  v28 = a2;
  sub_252004620();
  v23 = sub_251FEAB30(v12);
  v17 = v16;
  v15(v12, v7);
  v28 = a2;
  sub_252004670();
  sub_252004660();
  v18 = [v24 noiseReductionRating];
  sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
  sub_252004650();

  sub_252004660();
  sub_252004690();
  v19 = sub_251FEAB30(v12);
  v21 = v20;
  v15(v12, v7);
  sub_251FD2624(v26, v25, v23, v17, v19, v21, v27);
}

uint64_t sub_251FCDEE8(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  v20 = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v12 = sub_2520046B0();

  [v10 setText_];

  [v10 setTag_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AD8, &qword_2520077F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  v14 = sub_252003DF0();
  *(inited + 32) = sub_252003DC0();
  *(inited + 40) = v15;
  *(inited + 48) = v10;
  v16 = v10;
  sub_251FD4EC8(inited, &qword_27F4C6AF0, &qword_252007800);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C6AE0, &qword_2520077F8);
  sub_251FD6770(0, &qword_27F4C6AE8, 0x277D756B8);
  v17 = sub_252004600();

  [a1 setUserInfo_];

  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  return swift_unknownObjectRelease();
}

id sub_251FCE210()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  return v0;
}

uint64_t sub_251FCE2B8(void *a1, void *a2, void *a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  v34 = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v9);
  v12 = *(v5 + 8);
  v12(v9, v4);
  v13 = sub_2520046B0();

  [v10 setText_];

  [v10 setTag_];
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setNumberOfLines_];
  [v14 setLineBreakMode_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];
  type metadata accessor for AnyHearingFeatureContentProvider();
  v16 = v32;
  v17 = v32;
  v18 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v16);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.deviceGenerationSpecificName.getter();
  }

  else
  {
    v34 = a2;
    sub_252004620();
    sub_251FEAB30(v9);
    v12(v9, v4);
  }

  v19 = sub_2520046B0();

  [v14 setText_];

  [v14 setTextAlignment_];
  [v14 setTag_];

  v20 = *((*MEMORY[0x277D85000] & *a2) + 0x170);
  v21 = v20(v10);
  v22 = v20(v14);
  v23 = objc_allocWithZone(type metadata accessor for HearingProtectionAboutSplitView());
  v24 = sub_251FD3078(1, v21, v22);
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A28, &qword_252007768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  v26 = sub_252003DF0();
  *(inited + 32) = sub_252003DC0();
  *(inited + 40) = v27;
  *(inited + 48) = v24;
  v28 = v24;
  sub_251FD4EC8(inited, &qword_27F4C6A40, &qword_252007780);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C6A30, &qword_252007770);
  v29 = sub_252004600();

  v30 = v33;
  [v33 setUserInfo_];

  v34 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
  [v30 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  return swift_unknownObjectRelease();
}

uint64_t sub_251FCE850(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  v20 = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v12 = sub_2520046B0();

  [v10 setText_];

  [v10 setTag_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AD8, &qword_2520077F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  v14 = sub_252003DF0();
  *(inited + 32) = sub_252003DC0();
  *(inited + 40) = v15;
  *(inited + 48) = v10;
  v16 = v10;
  sub_251FD4EC8(inited, &qword_27F4C6AF0, &qword_252007800);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C6AE0, &qword_2520077F8);
  sub_251FD6770(0, &qword_27F4C6AE8, 0x277D756B8);
  v17 = sub_252004600();

  [a1 setUserInfo_];

  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  return swift_unknownObjectRelease();
}

uint64_t sub_251FCEB78(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuation);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuation) = a1;
}

uint64_t (*sub_251FCEB90(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FCD268();
  return sub_251FCEBD8;
}

uint64_t sub_251FCEC04(uint64_t *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((*MEMORY[0x277D85000] & *a1) + 0x90))(v12);
  if (v15)
  {
    v50 = a1;
    v44 = v15;
    sub_252004620();
    v16 = type metadata accessor for HearingProtectionAboutViewController();
    v49 = v3;
    v17 = v16;
    sub_251FEAB30(v14);
    v18 = *(v9 + 8);
    v18(v14, v8);
    v45 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_252004360();
    v46 = v2;
    MEMORY[0x28223BE20](v22, v23);
    sub_252004310();

    v50 = a1;
    sub_252004620();
    sub_251FEAB30(v14);
    v18(v14, v8);
    v51 = v17;
    v50 = a1;
    v24 = a1;
    sub_252004290();
    sub_252004340();

    v43 = *(v49 + 8);
    v48 = v8;
    v49 += 8;
    v25 = v8;
    v26 = v46;
    v43(v7, v46);
    v50 = v24;
    sub_252004620();
    v42 = v17;
    sub_251FEAB30(v14);
    v47 = v9 + 8;
    v27 = v45;
    v45(v14, v25);
    v51 = v17;
    v50 = v24;
    v28 = v24;
    sub_252004290();
    sub_252004340();

    v29 = v26;
    v30 = v43;
    v43(v7, v29);
    v50 = v28;
    sub_252004620();
    v31 = v42;
    sub_251FEAB30(v14);
    v27(v14, v48);
    v51 = v31;
    v50 = v28;
    v32 = v28;
    sub_252004290();
    sub_252004340();

    v33 = v46;
    v30(v7, v46);
    v50 = v32;
    sub_252004620();
    sub_251FEAB30(v14);
    v45(v14, v48);
    v51 = v31;
    v50 = v32;
    v34 = v32;
    sub_252004290();
    sub_252004340();

    v30(v7, v33);
    v35 = sub_252004350();
  }

  else
  {
    if (qword_27F4C7500 != -1)
    {
      swift_once();
    }

    v36 = sub_2520043D0();
    __swift_project_value_buffer(v36, qword_27F4C93D0);
    v37 = sub_2520043B0();
    v38 = sub_2520048B0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_251FC55E0(0xD000000000000014, 0x800000025200B6F0, &v50);
      _os_log_impl(&dword_251FB5000, v37, v38, "Hearing Protection: %s no device return empty", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x253097030](v40, -1, -1);
      MEMORY[0x253097030](v39, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v35;
}

void sub_251FCF3A8(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = a2;
  sub_252004620();
  type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v10 = sub_2520046B0();

  [a1 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
}

uint64_t sub_251FCF628(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuationV2);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuationV2) = a1;
}

uint64_t (*sub_251FCF640(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FCEBE4();
  return sub_251FCF688;
}

uint64_t sub_251FCF6B4(void *a1)
{
  v25 = sub_2520042A0();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520046A0();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a1;
  sub_252004620();
  v13 = type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v12);
  v23 = *(v8 + 8);
  v23(v12, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  *(&v29 + 1) = v13;
  *&v28 = a1;
  v17 = a1;
  sub_252004290();
  sub_252004320();

  v18 = *(v2 + 8);
  v22 = v2 + 8;
  v19 = v25;
  v18(v6, v25);
  v26 = v17;
  sub_252004330();

  *&v28 = v17;
  sub_252004620();
  sub_251FEAB30(v12);
  v23(v12, v24);
  v28 = 0u;
  v29 = 0u;
  swift_unknownObjectWeakInit();
  sub_252004290();
  MEMORY[0x2530970B0](v27);
  sub_252004340();

  v18(v6, v19);
  v20 = sub_252004350();

  return v20;
}

uint64_t sub_251FCFA68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v19 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v12 = objc_opt_self();
  v13 = [v12 sharedApplication];
  v14 = sub_252003AF0();
  v15 = [v13 canOpenURL_];

  if (v15)
  {
    v16 = [v12 sharedApplication];
    v17 = sub_252003AF0();
    sub_251FD4C8C(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_251FD6138(&qword_27F4C6A60);
    v18 = sub_252004600();

    [v16 openURL:v17 options:v18 completionHandler:0];
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_251FCFD00(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___fitPlaceCard);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___fitPlaceCard) = a1;
}

uint64_t (*sub_251FCFD18(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FCF694();
  return sub_251FCFD60;
}

uint64_t sub_251FCFD8C(void *a1)
{
  v25 = sub_2520042A0();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2520046A0();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a1;
  sub_252004620();
  v13 = type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v12);
  v23 = *(v8 + 8);
  v23(v12, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  *(&v29 + 1) = v13;
  *&v28 = a1;
  v17 = a1;
  sub_252004290();
  sub_252004320();

  v18 = *(v2 + 8);
  v22 = v2 + 8;
  v19 = v25;
  v18(v6, v25);
  v26 = v17;
  sub_252004330();

  *&v28 = v17;
  sub_252004620();
  sub_251FEAB30(v12);
  v23(v12, v24);
  v28 = 0u;
  v29 = 0u;
  swift_unknownObjectWeakInit();
  sub_252004290();
  MEMORY[0x2530970B0](v27);
  sub_252004340();

  v18(v6, v19);
  v20 = sub_252004350();

  return v20;
}

uint64_t sub_251FD0144()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v19 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v12 = objc_opt_self();
    v13 = [v12 sharedApplication];
    v14 = sub_252003AF0();
    v15 = [v13 canOpenURL_];

    if (v15)
    {
      v16 = [v12 sharedApplication];
      v17 = sub_252003AF0();
      sub_251FD4C8C(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_251FD6138(&qword_27F4C6A60);
      v18 = sub_252004600();

      [v16 openURL:v17 options:v18 completionHandler:0];
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_251FD03C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___maintenanceCarePlaceCard);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___maintenanceCarePlaceCard) = a1;
}

uint64_t (*sub_251FD03DC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FCFD6C();
  return sub_251FD0424;
}

uint64_t sub_251FD0450(void *a1)
{
  v26 = sub_2520042A0();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_252004620();
  v12 = type metadata accessor for HearingProtectionAboutViewController();
  sub_251FEAB30(v11);
  v13 = *(v7 + 8);
  v27 = v6;
  v13(v11, v6);
  v28 = v7 + 8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  v30 = a1;
  sub_252004620();
  sub_251FEAB30(v11);
  v13(v11, v6);
  v25 = v13;
  v31 = v12;
  v30 = a1;
  v17 = a1;
  sub_252004290();
  v24 = sub_252004320();

  v18 = *(v29 + 8);
  v29 += 8;
  v19 = v26;
  v18(v5, v26);
  v30 = v17;
  sub_252004620();
  sub_251FEAB30(v11);
  v13(v11, v27);
  v31 = v12;
  v30 = v17;
  v20 = v17;
  sub_252004290();
  sub_252004320();

  v18(v5, v19);
  v30 = v20;
  sub_252004620();
  sub_251FEAB30(v11);
  v25(v11, v27);
  v31 = v12;
  v30 = v20;
  v21 = v20;
  sub_252004290();
  sub_252004320();

  v18(v5, v19);
  v22 = sub_252004350();

  return v22;
}

uint64_t sub_251FD0934(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___deviceInformationSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___deviceInformationSection) = a1;
}

uint64_t (*sub_251FD094C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FD0430();
  return sub_251FD0994;
}

id sub_251FD09A0(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id sub_251FD09E4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingProtectionAboutViewController.RegulationImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithImage_, a1);

  return v3;
}

id sub_251FD0A7C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id sub_251FD0AD4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HearingProtectionAboutViewController.RegulationImageView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_highlightedImage_, a1, a2);

  return v5;
}

id sub_251FD0BA8(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_251FD0C28(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_251FD0CB4(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_251FD0D38(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_251FD0DF0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_251FD0E58(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251FE78C4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_252004360();
  v17 = type metadata accessor for HearingProtectionAboutViewController();
  v16 = a1;
  v11 = a1;
  sub_252004290();
  sub_252004320();

  (*(v3 + 8))(v7, v2);
  v15 = v11;
  sub_252004330();

  v12 = sub_252004350();

  return v12;
}

uint64_t sub_251FD1038(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___regulatoryInformationSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___regulatoryInformationSection) = a1;
}

uint64_t (*sub_251FD1050(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FD0DD0();
  return sub_251FD1098;
}

uint64_t sub_251FD10A4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

uint64_t sub_251FD10F4()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
  if (result)
  {
    v4 = result;
    v5 = sub_252003E50();

    v6 = [v5 firmwareVersion];
    if (v6)
    {
      v7 = sub_2520046E0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = (*((*v2 & *v1) + 0x150))();

    MEMORY[0x253096310](46, 0xE100000000000000);

    MEMORY[0x253096310](v7, v9);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_251FD12FC()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 specifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = [result userInfo];

  if (v10)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (*(&v52 + 1))
  {
    sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
    if (swift_dynamicCast())
    {
      v11 = v49;
      *&v51 = 0x7365726464617462;
      *(&v51 + 1) = 0xE900000000000073;
      v12 = [v49 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_252004A00();
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53 = v51;
      v54 = v52;
      if (*(&v52 + 1))
      {
        if (swift_dynamicCast())
        {
          v14 = v49;
          v13 = v50;
          sub_252003F10();
          v15 = sub_252003EF0();
          v16 = sub_252003EE0();

          if (*(v16 + 16))
          {
            v17 = sub_251FD4318(v14, v13);
            v19 = v18;

            if (v19)
            {
              v20 = *(*(v16 + 56) + 8 * v17);

              v21 = MEMORY[0x277D85000];
              v22 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
              v23 = v20;
              v24 = v22(v20);
              v25 = *((*v21 & *v1) + 0xC0);
              (v25)(v24);

              v26 = sub_252003E60();
              v27 = sub_2520041F0();

              if (v27 == 2 && (v28 = sub_252003E60(), v29 = sub_2520041D0(), v28, v29 == 1))
              {
                v30 = (*((*v21 & *v1) + 0xD8))();
              }

              else
              {
                v30 = v25();
              }

              v37 = v30;
              v38 = sub_252003E60();
              v39 = sub_2520041F0();

              if (v39 == 2 && (v40 = sub_252003E60(), v41 = sub_2520041D0(), v40, v41 == 1))
              {
                v42 = (*((*v21 & *v1) + 0x138))();
              }

              else
              {
                v42 = MEMORY[0x277D84F90];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69C8, &qword_252007400);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_252007370;
              *(inited + 32) = (*((*v21 & *v1) + 0xA8))();
              *(inited + 40) = v37;
              *(inited + 48) = (*((*v21 & *v1) + 0xF0))();
              *(inited + 56) = (*((*v21 & *v1) + 0x108))();
              *(inited + 64) = (*((*v21 & *v1) + 0x120))();
              *(inited + 72) = v42;
              v44 = sub_251FD1C74(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
              swift_arrayDestroy();
              sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
              v45 = sub_2520047A0();
              v46 = sub_2520046B0();
              [v1 setValue:v45 forKey:v46];

              v47 = sub_251FD1A78(v44);

              return v47;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_251FC6470(&v53, &qword_27F4C69B0, &unk_252007A00);
      }
    }
  }

  else
  {
    sub_251FC6470(&v53, &qword_27F4C69B0, &unk_252007A00);
  }

  sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
  v31 = sub_2520047A0();
  v32 = sub_2520046B0();
  [v1 setValue:v31 forKey:v32];

  v33 = sub_251FE77B8();
  (*(v3 + 16))(v7, v33, v2);
  v34 = sub_2520043B0();
  v35 = sub_2520048B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_251FB5000, v34, v35, "HearingProtectionAboutViewController dependencies not meet", v36, 2u);
    MEMORY[0x253097030](v36, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return sub_251FD1A78(MEMORY[0x277D84F90]);
}

char *sub_251FD1A78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_252004B20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_251FD46D0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x253096650](i, a1);
        sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_251FD46D0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_251FC63B0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_251FD46D0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_251FC63B0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_251FD1C74(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v3 = &unk_27F4C69D0;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_252004B20();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_252004B20();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_252004B20();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_252004A90();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_251FD67B8(&qword_27F4C6A78, v3, &qword_252007408);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_252007408);
        v19 = v3;
        v20 = sub_251FD4A54(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_252004B20();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_251FD1FDC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];
  [v4 addSubview_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252007380;
  v6 = [v4 leadingAnchor];
  v7 = [a1 &selRef_registerClass_forHeaderFooterViewReuseIdentifier_ + 1];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v4 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v4 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [a2 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-4.0];

  *(v5 + 56) = v17;
  v18 = [v4 leadingAnchor];
  v19 = [a2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v5 + 64) = v20;
  v21 = [v4 trailingAnchor];
  v22 = [a2 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v5 + 72) = v23;
  v24 = [a2 bottomAnchor];
  v25 = [v4 bottomAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor_];

  *(v5 + 80) = v26;
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v27 = sub_2520047A0();

  [v29 activateConstraints_];

  return v4;
}

id sub_251FD2398(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252007390;
  v5 = [v2 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [a1 bottomAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v17 = sub_2520047A0();

  [v3 activateConstraints_];

  return v2;
}

uint64_t sub_251FD2624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setNumberOfLines_];
  [v8 setLineBreakMode_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];
  v10 = sub_2520046B0();
  [v8 setText_];

  [v8 setTag_];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];
  v13 = sub_2520046B0();
  [v11 setText_];

  [v11 setTag_];
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setNumberOfLines_];
  [v14 setLineBreakMode_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = sub_2520046B0();
  [v14 setText_];

  [v14 setTag_];
  [v14 setTextAlignment_];
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v7) + 0x168))(v8, v11);
  v19 = *((*v17 & *v7) + 0x170);
  v20 = v18;
  v21 = v19(v14);
  v22 = objc_allocWithZone(type metadata accessor for HearingProtectionAboutSplitView());
  v23 = sub_251FD3078(0, v20, v21);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A28, &qword_252007768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  sub_252003DF0();
  *(inited + 32) = sub_252003DC0();
  *(inited + 40) = v25;
  *(inited + 48) = v23;
  v26 = v23;
  sub_251FD4EC8(inited, &qword_27F4C6A40, &qword_252007780);
  swift_setDeallocating();
  sub_251FC6470(inited + 32, &qword_27F4C6A30, &qword_252007770);
  v27 = sub_252004600();

  [a7 setUserInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
  [a7 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];

  return swift_unknownObjectRelease();
}

uint64_t UILabel.update(newFont:newColor:styleType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69E0, &qword_252007418);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - v11;
  v13 = [v3 tag];
  v14 = *(v8 + 56);
  *v12 = v13;
  v15 = sub_252003DD0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a3, v15);
  if ((*(v16 + 88))(&v12[v14], v15) != *MEMORY[0x277D12BF0] || v13 != 111)
  {
    return sub_251FC6470(v12, &qword_27F4C69E0, &qword_252007418);
  }

  [v3 setFont_];
  [v3 setTextColor_];
  return (*(v16 + 8))(&v12[v14], v15);
}

uint64_t sub_251FD2E7C(unsigned __int8 a1)
{
  sub_252004C00();
  MEMORY[0x2530967E0](a1);
  return sub_252004C20();
}

uint64_t sub_251FD2EDC()
{
  v1 = *v0;
  sub_252004C00();
  MEMORY[0x2530967E0](v1);
  return sub_252004C20();
}

uint64_t sub_251FD2F54()
{
  v1 = *v0;
  sub_252004C00();
  MEMORY[0x2530967E0](v1);
  return sub_252004C20();
}

id sub_251FD2FC8()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_251FD3078(char a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView] = 0;
  v3[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_usecase] = a1;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_leftContainer] = a2;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_rightContainer] = a3;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for HearingProtectionAboutSplitView();
  v6 = a2;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = sub_251FD2FC8();
  v10 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_leftContainer;
  [v9 addArrangedSubview_];

  v11 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView;
  v12 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_rightContainer;
  [*&v8[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView] addArrangedSubview_];
  v13 = v8[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_usecase];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2520073A0;
  v15 = [*&v8[v10] widthAnchor];
  v16 = [*&v8[v12] widthAnchor];
  if (v13)
  {
    if (v13 != 1)
    {
      v19 = [v15 constraintEqualToAnchor:v16 multiplier:0.5];

      *(v14 + 32) = v19;
      [*&v8[v11] setSpacing_];
      goto LABEL_7;
    }

    v17 = [v15 constraintEqualToAnchor_];
  }

  else
  {
    v17 = [v15 constraintEqualToAnchor:v16 multiplier:2.0];
  }

  v18 = v17;

  *(v14 + 32) = v18;
LABEL_7:
  v20 = objc_opt_self();
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v21 = sub_2520047A0();

  [v20 activateConstraints_];

  [v8 addSubview_];
  v22 = *&v8[v11];
  [v22 pinToOther_];

  return v8;
}

uint64_t sub_251FD331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v5 = [*(v3 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_rightContainer) subviews];
  sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
  v6 = sub_2520047B0();

  v7 = [*(v3 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView_leftContainer) subviews];
  v8 = sub_2520047B0();

  sub_251FD45E0(v8);
  v9 = v6;
  v23 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v10 = sub_252004B20();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_3:
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x253096650](v13, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x253096360]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2520047D0();
    }

    sub_2520047E0();
    v12 = v23;
  }

  while (v11 != v10);
LABEL_21:

  MEMORY[0x28223BE20](v17, v18);
  v20[2] = a1;
  v20[3] = v21;
  v20[4] = v22;
  sub_251FD3720(sub_251FD5E58, v20, v12);
}

uint64_t sub_251FD3578(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69E0, &qword_252007418);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = [v14 tag];
  v16 = *(v9 + 56);
  *v13 = v15;
  v17 = sub_252003DD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v16], a4, v17);
  if ((*(v18 + 88))(&v13[v16], v17) != *MEMORY[0x277D12BF0] || v15 != 111)
  {
    return sub_251FC6470(v13, &qword_27F4C69E0, &qword_252007418);
  }

  [v14 setFont_];
  [v14 setTextColor_];
  return (*(v18 + 8))(&v13[v16], v17);
}

void sub_251FD3720(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252004B20())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253096650](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id _sSo33HMHearingProtectionViewControllerC21HearingModeSettingsUIE0eb9SeporatorC0C5coderAESgSo7NSCoderC_tcfC_0(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_251FD3864()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingProtectionAboutSplitView____lazy_storage___stackView) = 0;
  sub_252004B10();
  __break(1u);
}

id sub_251FD3938(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_251FD3A14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

_DWORD *sub_251FD3AFC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
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

unint64_t sub_251FD3B60()
{
  result = qword_27F4C6D60;
  if (!qword_27F4C6D60)
  {
    sub_251FD6770(255, &qword_27F4C6928, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6D60);
  }

  return result;
}

uint64_t sub_251FD3BC8()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FD3C00()
{
  if (qword_27F4C7500 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C93D0);
  v1 = sub_2520043B0();
  v2 = sub_2520048C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251FB5000, v1, v2, "Hearing Protection: Listening mode changed, reload", v3, 2u);
    MEMORY[0x253097030](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_2520046B0();
    [v5 reloadSpecifierID:v6 animated:0];
  }
}

uint64_t sub_251FD3D50(uint64_t a1, id *a2)
{
  result = sub_2520046C0();
  *a2 = 0;
  return result;
}

uint64_t sub_251FD3DC8(uint64_t a1, id *a2)
{
  v3 = sub_2520046D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251FD3E48@<X0>(uint64_t *a1@<X8>)
{
  sub_2520046E0();
  v2 = sub_2520046B0();

  *a1 = v2;
  return result;
}

uint64_t sub_251FD3E8C()
{
  v1 = *v0;
  v2 = sub_2520046E0();
  v3 = MEMORY[0x253096350](v2);

  return v3;
}

uint64_t sub_251FD3EC8()
{
  v1 = *v0;
  sub_2520046E0();
  sub_252004730();
}

uint64_t sub_251FD3F1C()
{
  v1 = *v0;
  sub_2520046E0();
  sub_252004C00();
  sub_252004730();
  v2 = sub_252004C20();

  return v2;
}

uint64_t sub_251FD3F90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2520046E0();
  v6 = v5;
  if (v4 == sub_2520046E0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252004B90();
  }

  return v9 & 1;
}

uint64_t sub_251FD4018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2520046B0();

  *a2 = v5;
  return result;
}

uint64_t sub_251FD4060@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2520046E0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251FD408C(uint64_t a1)
{
  v2 = sub_251FD6138(&qword_27F4C6A60);
  v3 = sub_251FD6138(&unk_27F4C6B60);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251FD4130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251FD4178()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_251FD41B0()
{
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  MEMORY[0x253096310](1094870048, 0xE400000000000000);
  v1 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v2 = sub_2520046B0();

  v3 = [v1 initWithString_];

  return v3;
}

uint64_t sub_251FD4248()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FD4288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_251FC8408();
}

void sub_251FD42C0(const char **a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *a1;
    v4 = Strong;
    [Strong v3];
  }
}

unint64_t sub_251FD4318(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252004C00();
  sub_252004730();
  v6 = sub_252004C20();

  return sub_251FD4424(a1, a2, v6);
}

unint64_t sub_251FD4390(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2520046E0();
  sub_252004C00();
  sub_252004730();
  v4 = sub_252004C20();

  return sub_251FD44DC(a1, v4);
}

unint64_t sub_251FD4424(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_252004B90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251FD44DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2520046E0();
      v9 = v8;
      if (v7 == sub_2520046E0() && v9 == v10)
      {
        break;
      }

      v12 = sub_252004B90();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_251FD45E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_252004B20();
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

  v15 = sub_252004B20();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_251FD4800(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_251FD48A0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

char *sub_251FD46D0(char *a1, int64_t a2, char a3)
{
  result = sub_251FD46F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251FD46F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_251FD4800(uint64_t a1)
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
    sub_252004B20();
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
  result = sub_252004A90();
  *v1 = result;
  return result;
}

uint64_t sub_251FD48A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_252004B20();
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
      result = sub_252004B20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251FD67B8(&qword_27F4C6A50, &qword_27F4C6A48, &qword_252007788);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A48, &qword_252007788);
            v9 = sub_251FD4ADC(v13, i, a3);
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
        sub_251FD6770(0, &qword_27F4C6A08, 0x277D75D18);
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

void (*sub_251FD4A54(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253096650](a2, a3);
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
    return sub_251FD4AD4;
  }

  __break(1u);
  return result;
}

void (*sub_251FD4ADC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253096650](a2, a3);
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
    return sub_251FD6980;
  }

  __break(1u);
  return result;
}

unint64_t sub_251FD4B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC8, &qword_252007F60);
    v3 = sub_252004B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_251FC6348(v4, &v13, &qword_27F4C6AB8, &unk_2520084E0);
      v5 = v13;
      v6 = v14;
      result = sub_251FD4318(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251FC63B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251FD4C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A68, &qword_252007798);
    v3 = sub_252004B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_251FC6348(v4, &v11, &qword_27F4C6A70, &unk_2520077A0);
      v5 = v11;
      result = sub_251FD4390(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251FC63B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251FD4DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B28, &qword_252007818);
    v3 = sub_252004B50();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_251FD4318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_251FD4EC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252004B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_251FD4318(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sSo33HMHearingProtectionViewControllerC21HearingModeSettingsUIE09openAbouteB0yyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520043D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251FDFB88();
  (*(v12 + 16))(v16, v17, v11);
  v18 = sub_2520043B0();
  v19 = sub_2520048C0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_251FB5000, v18, v19, "About Hearing Protection Link tapped", v20, 2u);
    MEMORY[0x253097030](v20, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v22 = [objc_opt_self() sharedApplication];
  v23 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60);
  v24 = sub_252004600();

  [v22 openURL:v23 options:v24 completionHandler:0];

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_251FD5364()
{
  result = qword_27F4C6958;
  if (!qword_27F4C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6958);
  }

  return result;
}

unint64_t sub_251FD53B8()
{
  result = qword_27F4C6960;
  if (!qword_27F4C6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6960);
  }

  return result;
}

uint64_t _sSo33HMHearingProtectionViewControllerC21HearingModeSettingsUIE16openPPELearnMoreyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520043D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251FDFB88();
  (*(v12 + 16))(v16, v17, v11);
  v18 = sub_2520043B0();
  v19 = sub_2520048C0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_251FB5000, v18, v19, "HP PPE: PPELearnMore Link tapped", v20, 2u);
    MEMORY[0x253097030](v20, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v22 = [objc_opt_self() sharedApplication];
  v23 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60);
  v24 = sub_252004600();

  [v22 openURL:v23 options:v24 completionHandler:0];

  return (*(v6 + 8))(v10, v5);
}

uint64_t _sSo33HMHearingProtectionViewControllerC21HearingModeSettingsUIE26openLoudSoundReductionLinkyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520043D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251FDFB88();
  (*(v12 + 16))(v16, v17, v11);
  v18 = sub_2520043B0();
  v19 = sub_2520048C0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_251FB5000, v18, v19, "HP PPE: openLoudSoundReductionLink Link tapped", v20, 2u);
    MEMORY[0x253097030](v20, -1, -1);
  }

  (*(v12 + 8))(v16, v11);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v22 = [objc_opt_self() sharedApplication];
  v23 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60);
  v24 = sub_252004600();

  [v22 openURL:v23 options:v24 completionHandler:0];

  return (*(v6 + 8))(v10, v5);
}

void sub_251FD5B04()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController_headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___totalAttenuation) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuation) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___passiveAttenuationV2) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___fitPlaceCard) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___maintenanceCarePlaceCard) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___deviceInformationSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingProtectionAboutViewController____lazy_storage___regulatoryInformationSection) = 0;
  sub_252004B10();
  __break(1u);
}

unint64_t sub_251FD5E8C()
{
  result = qword_27F4C6A10;
  if (!qword_27F4C6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6A10);
  }

  return result;
}

unint64_t sub_251FD5EE4()
{
  result = qword_27F4C6A18;
  if (!qword_27F4C6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetUpSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetUpSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_251FD60EC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_251FD6138(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251FD617C(void *a1)
{
  v3 = [*(v1 + 16) traitCollection];
  [v3 userInterfaceStyle];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_2520046B0();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5];

  if (v7)
  {

    v8 = [objc_allocWithZone(type metadata accessor for HearingProtectionAboutViewController.RegulationImageView()) initWithImage_];

    v9 = v8;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setContentMode_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A88, &qword_2520077B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252007360;
    v11 = sub_252003DF0();
    *(inited + 32) = sub_252003DC0();
    *(inited + 40) = v12;
    *(inited + 48) = v9;
    v13 = v9;
    sub_251FD4EC8(inited, &qword_27F4C6A98, &unk_2520077C0);
    swift_setDeallocating();
    sub_251FC6470(inited + 32, &qword_27F4C6A90, &qword_2520077B8);
    v14 = sub_252004600();

    [a1 setUserInfo_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A38, &qword_252007778);
    [a1 setProperty:sub_252004BB0() forKey:{*MEMORY[0x277D3FE58], v11}];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_251FD6428()
{
  result = qword_27F4C6AB0;
  if (!qword_27F4C6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6AB0);
  }

  return result;
}

void sub_251FD6484(void *a1, char a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2520073B0;
  v7 = sub_2520042F0();
  *(inited + 32) = sub_2520042D0();
  *(inited + 40) = v8;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_2520042E0();
  *(inited + 88) = v9;
  v10 = (*((*MEMORY[0x277D85000] & *v5) + 0x90))();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA8, &unk_2520077D0);
  *(inited + 96) = v10;
  *(inited + 128) = sub_2520042C0();
  *(inited + 136) = v11;
  v12 = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  v16[3] = &type metadata for PlaceCardUseCase;
  v16[4] = sub_251FD6428();
  LOBYTE(v16[0]) = a2;
  v13 = sub_251FE8360(v16);
  *(inited + 168) = v12;
  *(inited + 144) = v13;
  sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  v14 = sub_252004600();

  [a1 setUserInfo_];

  v16[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC0, &unk_2520077E0);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  v15 = sub_2520047F0();
  [a1 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];
}

unint64_t sub_251FD671C()
{
  result = qword_27F4C6B08;
  if (!qword_27F4C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6B08);
  }

  return result;
}

uint64_t sub_251FD6770(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_251FD67B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251FD6800()
{
  result = qword_27F4C6B38;
  if (!qword_27F4C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6B38);
  }

  return result;
}

uint64_t sub_251FD6854()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSAttributedString __swiftcall HKAudiogramSample.audiogramSelectionDescription(date:font:)(Swift::String date, UIFont font)
{
  isa = font.super.isa;
  v98 = date;
  v3 = sub_252003B50();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_2520046A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result.super.isa = HKIntegerFormatter();
  if (!result.super.isa)
  {
    __break(1u);
    return result;
  }

  v12 = result.super.isa;
  sub_252004620();
  sub_251FD6770(0, &unk_27F4C6B70, off_2796F16A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  sub_252003B40();
  v16 = sub_252004700();
  v18 = v17;
  sub_252004620();
  v94 = v14;
  v95 = ObjCClassFromMetadata;
  v19 = [v14 bundleForClass_];
  sub_252003B40();
  v87 = sub_252004700();
  v21 = v20;
  v101 = v2;
  v22 = [v2 hearingLevelSummary];
  v23 = [v22 leftEarMetrics];

  v24 = [v23 averageSensitivity];
  HKHearingLevelClassificationForSensitivity();
  v25 = HKLocalizedStringForHearingLevelClassification();
  v99 = v16;
  v102 = v18;
  if (v25)
  {
    v26 = v25;
    v90 = sub_2520046E0();
    v91 = v27;
  }

  else
  {

    v90 = v16;
    v91 = v18;
  }

  v96 = v24;
  if (v24 && (v28 = [v24 _unit]) != 0)
  {
    v29 = v28;
    [v24 doubleValueForUnit_];
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  else
  {
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v100 = v12;
  v93 = v31;
  v32 = [(objc_class *)v12 stringFromNumber:v31];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2520046E0();
    v36 = v35;
  }

  else
  {

    v34 = v87;
    v36 = v21;
  }

  v103 = 10272;
  v104 = 0xE200000000000000;
  MEMORY[0x253096310](v34, v36);

  MEMORY[0x253096310](0x294C486264, 0xE500000000000000);
  v88 = v103;
  v89 = v104;
  v37 = [v101 hearingLevelSummary];
  v38 = [v37 rightEarMetrics];

  v39 = [v38 averageSensitivity];
  HKHearingLevelClassificationForSensitivity();
  v40 = HKLocalizedStringForHearingLevelClassification();
  if (v40)
  {
    v41 = v40;
    v99 = sub_2520046E0();
    v43 = v42;

    v44 = v100;
    v45 = isa;
    if (!v39)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v100;
    v43 = v102;
    v45 = isa;
    if (!v39)
    {
LABEL_18:
      v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      goto LABEL_19;
    }
  }

  v46 = [v39 &selRef_invalidAudiogramFooterLabel + 7];
  if (!v46)
  {
    goto LABEL_18;
  }

  v47 = v46;
  [v39 doubleValueForUnit_];
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];

LABEL_19:
  v102 = v43;
  isa = v49;
  v50 = [(objc_class *)v44 stringFromNumber:v49];
  if (v50)
  {
    v51 = v50;
    v52 = sub_2520046E0();
    v54 = v53;

    v21 = v54;
  }

  else
  {
    v52 = v87;
  }

  v85 = v10;
  v103 = 10272;
  v104 = 0xE200000000000000;
  MEMORY[0x253096310](v52, v21);

  MEMORY[0x253096310](0x294C486264, 0xE500000000000000);
  v86 = v103;
  v87 = v104;
  v55 = [(objc_class *)v45 fontDescriptor];
  v56 = [v55 fontDescriptorWithSymbolicTraits_];

  v92 = v39;
  if (v56)
  {
    [(objc_class *)v45 pointSize];
    v58 = [objc_opt_self() fontWithDescriptor:v56 size:v57];
  }

  else
  {
    v59 = objc_opt_self();
    [(objc_class *)v45 pointSize];
    v58 = [v59 boldSystemFontOfSize_];
  }

  v60 = objc_opt_self();
  v61 = v58;
  [(objc_class *)v45 pointSize];
  v62 = [v60 systemFontOfSize_];
  v63 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v64 = sub_251FF6300(v98._countAndFlagsBits, v98._object, v61);

  v65 = sub_251FF6CCC(10, 0xE100000000000000, v62);
  sub_252004620();
  v66 = v94;
  v67 = v95;
  v68 = [v94 bundleForClass_];
  sub_252003B40();
  v69 = sub_252004700();
  v71 = sub_251FF6300(v69, v70, v61);

  v103 = 32;
  v104 = 0xE100000000000000;
  MEMORY[0x253096310](v90, v91);

  MEMORY[0x253096310](v88, v89);

  v72 = sub_251FF6CCC(v103, v104, v62);

  v73 = sub_251FF6CCC(10, 0xE100000000000000, v62);

  sub_252004620();
  v74 = [v66 bundleForClass_];
  sub_252003B40();
  v75 = sub_252004700();
  v77 = sub_251FF6300(v75, v76, v61);

  v103 = 32;
  v104 = 0xE100000000000000;
  MEMORY[0x253096310](v99, v102);

  MEMORY[0x253096310](v86, v87);

  v78 = sub_251FF6CCC(v103, v104, v62);

  v79 = sub_251FF6CCC(10, 0xE100000000000000, v62);

  v80 = [v101 localizedIngestionSource];
  v81 = sub_2520046E0();
  v83 = v82;

  v84.super.isa = sub_251FF6CCC(v81, v83, v62);

  return v84;
}

Class sub_251FD7344(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2520046E0();
  v8 = v7;
  v9 = a4;
  v10 = a1;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v12.super.isa = HKAudiogramSample.audiogramSelectionDescription(date:font:)(v11, v9).super.isa;

  return v12.super.isa;
}

uint64_t HMHearingAidAudiogramViewController.flowController.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27F4C93E8);
  swift_endAccess();
  if (v1)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B80, &unk_252007A10);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_251FD74F0(v6);
    return 0;
  }
}

uint64_t sub_251FD74F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69B0, &unk_252007A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HMHearingAidAudiogramViewController.flowController.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_27F4C93E8, a1, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_251FD764C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 flowController];
  *a2 = result;
  return result;
}

id sub_251FD76AC()
{
  v0 = sub_2520046A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() linkButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_251FD6770(0, &unk_27F4C6B70, off_2796F16A0);
  sub_252004620();
  sub_251FEAB30(v5);
  (*(v1 + 8))(v5, v0);
  v7 = sub_2520046B0();

  [v6 setTitle:v7 forState:0];

  return v6;
}

double sub_251FD7840()
{
  result = *(v0 + OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inputSize);
  v2 = *(v0 + OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inputSize + 8);
  return result;
}

char *sub_251FD7888(void *a1)
{
  v2 = v1;
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button;
  v11 = [objc_opt_self() linkButton];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_251FD6770(0, &unk_27F4C6B70, off_2796F16A0);
  sub_252004620();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v12 = sub_2520046B0();

  [v11 setTitle:v12 forState:0];

  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inLabel] = a1;
  v13 = a1;
  [v13 bounds];
  v14 = &v2[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inputSize];
  *v14 = v15;
  *(v14 + 1) = v16;
  LODWORD(v17) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = _s29HearingAidAudiogramFooterViewCMa();
  v47.receiver = v2;
  v47.super_class = v18;
  v19 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button;
  [v19 addSubview_];
  v46 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252007380;
  v22 = [v13 topAnchor];
  v23 = [v19 0x2796F3950];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [v13 leadingAnchor];
  v26 = [v19 leadingAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v21 + 40) = v27;
  v28 = [v13 trailingAnchor];
  v29 = [v19 trailingAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v21 + 48) = v30;
  v31 = [*&v19[v20] topAnchor];
  v32 = [v13 bottomAnchor];

  v33 = [v31 constraintEqualToAnchor:v32 constant:2.0];
  *(v21 + 56) = v33;
  v34 = [*&v19[v20] leadingAnchor];
  v35 = [v19 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v21 + 64) = v36;
  v37 = [*&v19[v20] trailingAnchor];
  v38 = [v19 trailingAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v21 + 72) = v39;
  v40 = [*&v19[v20] bottomAnchor];
  v41 = [v19 bottomAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v21 + 80) = v42;
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v43 = sub_2520047A0();

  [v46 activateConstraints_];

  return v19;
}

double sub_251FD7EF4()
{
  v4.receiver = v0;
  v4.super_class = _s29HearingAidAudiogramFooterViewCMa();
  objc_msgSendSuper2(&v4, sel_intrinsicContentSize);
  v2 = v1;
  [*&v0[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inLabel] intrinsicContentSize];
  [*&v0[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button] intrinsicContentSize];
  return v2;
}

id sub_251FD7F70()
{
  v9.receiver = v0;
  v9.super_class = _s29HearingAidAudiogramFooterViewCMa();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  [v0 frame];
  v2 = v1;
  v4 = v3;
  [v0 frame];
  v6 = v5;
  [v0 intrinsicContentSize];
  return [v0 setFrame_];
}

id sub_251FD8158()
{
  v2.receiver = v0;
  v2.super_class = _s29HearingAidAudiogramFooterViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251FD81F8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEFE90]) initWithDelegate_];
  [v1 setAnalyticsClient_];
  return v1;
}

void __swiftcall HMHearingAidAudiogramViewController._tableFooterView(with:)(UIView *__return_ptr retstr, UILabel *with)
{
  [(UILabel *)with setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_allocWithZone(_s29HearingAidAudiogramFooterViewCMa());
  v4 = with;
  v5 = sub_251FD7888(v4);
  [(UILabel *)v4 bounds];
  [v5 setFrame_];
  [v5 layoutSubviews];
  v6 = *&v5[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button];
  sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v6;
  v9 = sub_2520049A0();
  [v8 addAction:v9 forControlEvents:{64, 0, 0, 0, sub_251FD98E0, v7}];
}

Swift::Void __swiftcall HMHearingAidAudiogramViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v4.super_class = HMHearingAidAudiogramViewController;
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1.value.super.isa);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_251FD85F4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_251FD6770(0, &unk_27F4C6C00, 0x277CCD030);
  v5 = sub_2520047A0();

  return v5;
}

uint64_t sub_251FD8690(uint64_t (*a1)(void), const char *a2)
{
  v5 = v2;
  v6 = sub_2520043D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v5 flowController];
  if (v12)
  {
    v13 = [v12 headphoneDevice];
    swift_unknownObjectRelease();
    v14 = sub_252003E60();
    v15 = a1();

    return v15;
  }

  else
  {
    v17 = sub_251FE87D8();
    (*(v7 + 16))(v11, v17, v6);
    v18 = sub_2520043B0();
    v19 = sub_2520048B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_251FB5000, v18, v19, a2, v20, 2u);
      MEMORY[0x253097030](v20, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    return MEMORY[0x277D84F90];
  }
}

Swift::Void __swiftcall HMHearingAidAudiogramViewController.addDeviceLisenters()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EF0, &qword_252007A20);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6BC0, &qword_252007A28);
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6BC8, &qword_252007A30);
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v42 - v25;
  v48 = v1;
  v27 = [v1 flowController];
  if (v27)
  {
    v43 = v17;
    v28 = [v27 headphoneDevice];
    swift_unknownObjectRelease();
    if (![v48 listener])
    {
      memset(v50, 0, sizeof(v50));
      sub_251FD74F0(v50);
      v33 = sub_252003E60();
      sub_2520040C0();

      v34 = sub_252004500();
      v35 = *(v44 + 8);
      v35(v16, v8);
      *&v50[0] = v34;
      v36 = sub_252003E60();
      sub_252004000();

      v37 = sub_252004500();
      v35(v13, v8);
      v49 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BD0, &qword_252007A38);
      sub_251FD67B8(&qword_27F4C6F10, &unk_27F4C6BD0, &qword_252007A38);
      sub_252004450();
      sub_251FD67B8(&qword_27F4C6BE0, &qword_27F4C6BC0, &qword_252007A28);
      v38 = v43;
      sub_252004560();
      (*(v45 + 8))(v21, v38);
      swift_allocObject();
      v39 = v48;
      swift_unknownObjectWeakInit();
      sub_251FD67B8(&unk_27F4C6BE8, &qword_27F4C6BC8, &qword_252007A30);
      v40 = v47;
      v41 = sub_252004580();

      (*(v46 + 8))(v26, v40);
      [v39 setListener_];

      return;
    }

    sub_252004A00();
    swift_unknownObjectRelease();

    sub_251FD74F0(v50);
  }

  v29 = sub_251FE87D8();
  (*(v3 + 16))(v7, v29, v2);
  v30 = sub_2520043B0();
  v31 = sub_2520048B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_251FB5000, v30, v31, "addDeviceLisenters early exit as we dont have a headphoneDevice no flow controller", v32, 2u);
    MEMORY[0x253097030](v32, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

void sub_251FD8E6C()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 flowController];
  if (v8)
  {
    v22 = [v8 headphoneDevice];
    swift_unknownObjectRelease();
    v9 = [v1 selectedSample];
    if (v9)
    {
      v10 = v9;
      sub_252003D50();
      sub_251FD9100();
      v11 = [v1 navigationController];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        sub_252003EB0();
        v14 = sub_2520046B0();

        v15 = [v13 makeTestResultsControllerWithSample:v10 bluetoothAddress:v14];

        [v12 pushViewController:v15 animated:1];
      }

      v16 = v22;

      return;
    }
  }

  v17 = sub_251FE87D8();
  (*(v3 + 16))(v7, v17, v2);
  v18 = sub_2520043B0();
  v19 = sub_2520048B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_251FB5000, v18, v19, "addDeviceLisenters early exit as we dont have a headphoneDevice no flow controller", v20, 2u);
    MEMORY[0x253097030](v20, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
}

void sub_251FD9100()
{
  sub_252003D90();
  v1 = sub_252003D70();
  v2 = [v0 flowController];
  if (v2)
  {
    v3 = [v2 headphoneDevice];
    swift_unknownObjectRelease();
    v4 = sub_252003E50();

    v5 = [v4 productID];
    sub_251FE43D4(v5);
  }

  sub_252003D80();

  v6 = sub_252003D70();
  sub_252003D80();
}

Swift::Void __swiftcall HMHearingAidAudiogramViewController.refreshAudiogramList()()
{
  sub_252003F10();
  v0 = sub_252003EF0();
  v1 = sub_252003F00();

  v3[4] = sub_251FD9324;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_251FD9520;
  v3[3] = &block_descriptor_0;
  v2 = _Block_copy(v3);
  [v1 triggerFetchAudiogramsWithCompletion_];
  _Block_release(v2);
}

uint64_t sub_251FD9324(void *a1)
{
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251FE42C8();
  (*(v3 + 16))(v7, v8, v2);
  v9 = a1;
  v10 = sub_2520043B0();
  v11 = sub_2520048C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    if (a1)
    {
      v14 = 0x64656C696146;
    }

    else
    {
      v14 = 0x6564656563637553;
    }

    if (a1)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE900000000000064;
    }

    v16 = sub_251FC55E0(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_251FB5000, v10, v11, "Audiogram Refresh: [HMHearingAidAudiogramViewController] Refresh Trigger %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x253097030](v13, -1, -1);
    MEMORY[0x253097030](v12, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

void sub_251FD9520(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Void __swiftcall HMHearingAidAudiogramViewController.setAGListResult()()
{
  sub_252003D50();

  sub_251FD9100();
}

void sub_251FD96D0()
{
  v1 = v0;
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button;
  v9 = [objc_opt_self() linkButton];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_251FD6770(0, &unk_27F4C6B70, off_2796F16A0);
  sub_252004620();
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  v10 = sub_2520046B0();

  [v9 setTitle:v10 forState:0];

  *(v1 + v8) = v9;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FD98A8()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FD98E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong addAudiogramViewController];
    [v1 presentViewController:v2 animated:1 completion:0];
  }
}

void sub_251FD9964()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong retrieveAndShowAudiograms];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tableView];

    [v4 reloadData];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];

    if (!v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    [v7 setNeedsLayout];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 view];

  if (!v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v10 layoutIfNeeded];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251FD9AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251FD9B1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27F4C6BF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C6BF8);
    }
  }
}

uint64_t sub_251FD9B9C(char a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252004680();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  if (a1)
  {
    if (a1 == 1)
    {
      LOBYTE(v49) = 1;
      sub_252004620();
      v48 = sub_251FEAB30(v7);
      v12 = v11;
      v13 = *(v3 + 8);
      v13(v7, v2);
      LOBYTE(v49) = 1;
      sub_252004620();
      v14 = sub_251FEAB30(v7);
      v16 = v15;
      v13(v7, v2);
      v17 = type metadata accessor for TableSectionViewModel();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      v20 = swift_allocObject();
      v21 = v48;
      v22 = v12;
      v23 = v14;
      v24 = v16;
      v25 = 1;
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_252004620();
      v48 = sub_251FEAB30(v7);
      v38 = v37;
      v39 = *(v3 + 8);
      v39(v7, v2);
      LOBYTE(v49) = 2;
      sub_252004620();
      v40 = sub_251FEAB30(v7);
      v42 = v41;
      v39(v7, v2);
      v43 = type metadata accessor for TableSectionViewModel();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v20 = swift_allocObject();
      v21 = v48;
      v22 = v38;
      v23 = v40;
      v24 = v42;
      v25 = 2;
    }
  }

  else
  {
    v50 = 0;
    sub_252004670();
    sub_252004660();
    v49 = *MEMORY[0x277CCE410];
    v26 = v49;
    sub_252004630();
    sub_252004660();
    sub_252004690();
    v27 = sub_251FEAB30(v7);
    v29 = v28;
    v30 = *(v3 + 8);
    v30(v7, v2);
    v50 = 0;
    sub_252004670();
    sub_252004660();
    v49 = v26;
    sub_252004630();
    sub_252004660();
    sub_252004690();
    v31 = sub_251FEAB30(v7);
    v33 = v32;
    v30(v7, v2);
    v34 = type metadata accessor for TableSectionViewModel();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v20 = swift_allocObject();
    v21 = v27;
    v22 = v29;
    v23 = v31;
    v24 = v33;
    v25 = 0;
  }

  sub_251FDB0F8(v21, v22, v23, v24, v25);
  return v20;
}

uint64_t sub_251FDA038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_251FDB0F8(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t type metadata accessor for TableSectionViewModel()
{
  result = qword_27F4C7FB0;
  if (!qword_27F4C7FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251FDA0F4()
{
  v0 = sub_2520046A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableSectionViewModel();
  sub_252004620();
  v6 = sub_251FEAB30(v5);
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_251FDA244(char a1)
{
  sub_252004C00();
  MEMORY[0x2530967E0](a1 & 1);
  return sub_252004C20();
}

uint64_t sub_251FDA2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_251FDA2D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

id sub_251FDA320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_251FDA39C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

void sub_251FDA3E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

id sub_251FDA47C()
{
  v0 = objc_allocWithZone(type metadata accessor for BinaryConfirmationSelectTableViewCell());

  return [v0 initWithStyle:3 reuseIdentifier:0];
}

id sub_251FDA4B8()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

void sub_251FDA4FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

void *sub_251FDA594(char a1)
{
  v3 = *v1;
  if (a1)
  {
    v4 = (*(v3 + 160))();
  }

  else
  {
    v4 = (*(v3 + 136))();
  }

  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x88);
  v6 = v4;
  v5(a1 & 1);

  return v6;
}

void sub_251FDA6A4()
{
  v1 = v0;
  v2 = (*(*v0 + 192))();
  if (v2 != 2)
  {
    v3 = v2;
    v4 = (*(*v0 + 136))();
    v5 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v4) + 0xA0))((v3 & 1) == 0);

    v6 = (*(*v1 + 160))();
    (*((*v5 & *v6) + 0xA0))(v3 & 1);
  }
}

uint64_t sub_251FDA800()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2520044E0();

  return v1;
}

uint64_t sub_251FDA874@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

void sub_251FDA908()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2520044F0();
  sub_251FDA6A4();
}

void (*sub_251FDA97C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2520044E0();

  *(a1 + 8) = *(a1 + 9);
  return sub_251FDAA10;
}

void sub_251FDAA10(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;

  sub_2520044F0();
  sub_251FDA6A4();
}

uint64_t sub_251FDAA98()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  sub_2520044C0();
  return swift_endAccess();
}

uint64_t sub_251FDAB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C90, &qword_252007B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  sub_2520044D0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_251FDAC44(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C90, &qword_252007B90);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21HearingModeSettingsUI21TableSectionViewModel__selectedState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  sub_2520044C0();
  swift_endAccess();
  return sub_251FDADB4;
}

void sub_251FDADB4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_2520044D0();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_2520044D0();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_251FDAF1C()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251FD9B9C(*(v0 + 56));
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);

  v10 = sub_2520046B0();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:1];

  v16 = v0;
  sub_252004620();
  type metadata accessor for TableSectionViewModel();
  sub_251FEAB30(v6);
  (*(v2 + 8))(v6, v1);
  v12 = sub_2520046B0();

  v13 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  [v11 addAction_];
  return v11;
}

uint64_t sub_251FDB0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - v14;
  *(v5 + 48) = &unk_28643B298;
  v16 = type metadata accessor for BinaryConfirmationSelectTableViewCell();
  *(v5 + 64) = [objc_allocWithZone(v16) initWithStyle:3 reuseIdentifier:0];
  *(v5 + 72) = [objc_allocWithZone(v16) initWithStyle:3 reuseIdentifier:0];
  v17 = OBJC_IVAR____TtC21HearingModeSettingsUI21TableSectionViewModel__selectedState;
  v21 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C80, "̤");
  sub_2520044B0();
  (*(v11 + 32))(v5 + v17, v15, v10);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 56) = v20;
  return v5;
}

uint64_t sub_251FDB2A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = OBJC_IVAR____TtC21HearingModeSettingsUI21TableSectionViewModel__selectedState;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_251FDB338()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = OBJC_IVAR____TtC21HearingModeSettingsUI21TableSectionViewModel__selectedState;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C88, &qword_252007B88);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_251FDB408@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TableSectionViewModel();
  result = sub_2520044A0();
  *a1 = result;
  return result;
}

id sub_251FDB490()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_27F4C93F0 = result;
  return result;
}

uint64_t *sub_251FDB4CC()
{
  if (qword_27F4C7D10 != -1)
  {
    swift_once();
  }

  return &qword_27F4C93F0;
}

id sub_251FDB51C()
{
  if (qword_27F4C7D10 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4C93F0;

  return v1;
}

uint64_t sub_251FDB584()
{
  swift_beginAccess();
  v0 = qword_27F4C6C70;

  return v0;
}

uint64_t sub_251FDB5D8(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  qword_27F4C6C70 = a1;
  off_27F4C6C78 = a2;
}

void sub_251FDB68C()
{
  v0 = sub_2520046B0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    __break(1u);
  }
}

id sub_251FDB6F8()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryImage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_251FDB74C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_251FDB804()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_itemState;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_251FDB848(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_itemState;
  swift_beginAccess();
  v1[v10] = a1;
  if (v3 != 2)
  {
    v11 = [v1 textLabel];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for TableSectionViewModel();
      sub_252004620();
      sub_251FEAB30(v9);
      (*(v5 + 8))(v9, v4);
      v13 = sub_2520046B0();

      [v12 setText_];
    }
  }
}

void (*sub_251FDB9E8(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_2520046A0();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_itemState;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_251FDBAD8;
}

void sub_251FDBAD8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[7]) != 2)
    {
      v5 = [v4 textLabel];
      if (v5)
      {
        v6 = v5;
        v8 = v3[5];
        v7 = v3[6];
        v9 = v3[4];
        type metadata accessor for TableSectionViewModel();
        sub_252004620();
        sub_251FEAB30(v7);
        (*(v8 + 8))(v7, v9);
        v10 = sub_2520046B0();

        [v6 setText_];
      }
    }
  }

  free(v3[6]);

  free(v3);
}

uint64_t sub_251FDBC18()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_251FDBC5C(char a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = sub_2520046B0();
    v5 = [objc_opt_self() systemImageNamed_];

    if (v5)
    {
LABEL_5:
      (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v5);
      sub_251FDBF50();
      return;
    }

    __break(1u);
  }

  v6 = sub_2520046B0();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void (*sub_251FDBD8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_251FDBE14;
}

void sub_251FDBE14(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(*(v3 + 24) + *(v3 + 32)) == 1)
    {
      v4 = sub_2520046B0();
      v5 = [objc_opt_self() systemImageNamed_];

      if (v5)
      {
LABEL_6:
        (*((*MEMORY[0x277D85000] & **(v3 + 24)) + 0x70))(v5);
        sub_251FDBF50();
        goto LABEL_7;
      }

      __break(1u);
    }

    v6 = sub_2520046B0();
    v5 = [objc_opt_self() systemImageNamed_];

    if (!v5)
    {
      __break(1u);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  free(v3);
}

void sub_251FDBF50()
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 pointSize];
  v3 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v2];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  v12 = [v5 imageWithConfiguration_];

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  if ((*((*v4 & *v0) + 0x98))())
  {
    v7 = [v0 tintColor];
  }

  else
  {
    if (qword_27F4C7D10 != -1)
    {
      swift_once();
    }

    v7 = qword_27F4C93F0;
  }

  v8 = v7;
  [v6 setTintColor_];

  [v0 setAccessoryView_];
  v9 = [v0 textLabel];
  if (v9)
  {
    v10 = v9;
    v11 = v1;
    [v10 setFont_];

    v3 = v11;
  }
}

uint64_t sub_251FDC230()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___sections;
  if (*(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___sections))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___sections);
  }

  else
  {
    sub_251FDC298(v0);
    v2 = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
  }

  return v2;
}

double sub_251FDC298(uint64_t a1)
{
  v116 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v125 = &v104 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D00, &qword_252007DE8);
  v122 = *(v121 - 8);
  v5 = *(v122 + 64);
  MEMORY[0x28223BE20](v121, v6);
  v120 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D08, &qword_252007DF0);
  v9 = *(v8 - 8);
  v126 = v8;
  v127 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v123 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D10, &qword_252007DF8);
  v14 = *(v13 - 8);
  v128 = v13;
  v129 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v124 = &v104 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6C90, &qword_252007B90);
  v137 = *(v134 - 8);
  v18 = *(v137 + 64);
  v20 = MEMORY[0x28223BE20](v134, v19);
  v119 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v118 = &v104 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v107 = &v104 - v26;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D18, &qword_252007E00);
  v138 = *(v113 - 8);
  v27 = *(v138 + 64);
  MEMORY[0x28223BE20](v113, v28);
  v111 = &v104 - v29;
  v30 = sub_2520046A0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_251FD9B9C(0);
  LOBYTE(v140) = 1;
  sub_252004620();
  v36 = sub_251FEAB30(v35);
  v38 = v37;
  v39 = *(v31 + 8);
  v39(v35, v30);
  LOBYTE(v140) = 1;
  sub_252004620();
  v40 = sub_251FEAB30(v35);
  v42 = v41;
  v39(v35, v30);
  v43 = type metadata accessor for TableSectionViewModel();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v135 = swift_allocObject();
  sub_251FDB0F8(v36, v38, v40, v42, 1);
  LOBYTE(v140) = 2;
  sub_252004620();
  v46 = sub_251FEAB30(v35);
  v48 = v47;
  v39(v35, v30);
  LOBYTE(v140) = 2;
  sub_252004620();
  v49 = sub_251FEAB30(v35);
  v51 = v50;
  v39(v35, v30);
  v52 = *(v43 + 48);
  v53 = *(v43 + 52);
  v112 = swift_allocObject();
  v54 = sub_251FDB0F8(v46, v48, v49, v51, 2);
  v55 = (*v136 + 216);
  v114 = *v55;
  v115 = v55;
  v56 = v107;
  v114(v54);
  v57 = v134;
  v58 = sub_252004500();
  v59 = *(v137 + 8);
  v137 += 8;
  v133 = v59;
  v60 = v56;
  v59(v56, v57);
  v140 = v58;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D20, &qword_252007E08);
  v117 = MEMORY[0x277CBCD90];
  v131 = sub_251FD67B8(&qword_27F4C6D28, &qword_27F4C6D20, &qword_252007E08);
  v61 = v111;
  sub_252004560();

  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  v64 = v116;
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = v62;
  *(v65 + 24) = v63;
  v130 = sub_251FD67B8(&qword_27F4C6D30, &qword_27F4C6D18, &qword_252007E00);
  v66 = v113;
  sub_252004580();

  v104 = *(v138 + 8);
  v138 += 8;
  v104(v61, v66);
  v67 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController_listeners;
  swift_beginAccess();
  sub_252004480();
  swift_endAccess();

  v69 = (*v135 + 216);
  v108 = *v69;
  v109 = v69;
  v108(v68);
  v70 = v57;
  v71 = sub_252004500();
  v72 = v60;
  v133(v60, v70);
  v140 = v71;
  sub_252004560();

  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v74;
  v76 = v66;
  sub_252004580();

  v77 = v61;
  v78 = v61;
  v79 = v104;
  v104(v77, v76);
  swift_beginAccess();
  sub_252004480();
  swift_endAccess();

  v81 = v112;
  v82 = (*v112 + 216);
  v105 = *v82;
  v106 = v82;
  v105(v80);
  v83 = v134;
  v84 = sub_252004500();
  v133(v72, v83);
  v140 = v84;
  sub_252004560();

  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  *(v87 + 24) = v86;
  sub_252004580();

  v79(v78, v76);
  v110 = v67;
  swift_beginAccess();
  sub_252004480();
  swift_endAccess();

  v89 = (v114)(v88);
  v90 = (v108)(v89);
  v105(v90);
  sub_251FD67B8(&qword_27F4C6D38, &qword_27F4C6C90, &qword_252007B90);
  v91 = v120;
  sub_252004460();
  sub_251FD67B8(&unk_27F4C6D40, &qword_27F4C6D00, &qword_252007DE8);
  v92 = v121;
  v93 = sub_252004520();
  (*(v122 + 8))(v91, v92);
  v140 = v93;
  sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
  v94 = sub_252004940();
  v139 = v94;
  v95 = sub_252004900();
  v96 = v125;
  (*(*(v95 - 8) + 56))(v125, 1, 1, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6D50, &qword_252007E10);
  sub_251FD67B8(&qword_27F4C6D58, &qword_27F4C6D50, &qword_252007E10);
  sub_251FD3B60();
  v97 = v123;
  sub_252004540();
  sub_251FDFA90(v96);

  sub_251FD67B8(&qword_27F4C6D68, &qword_27F4C6D08, &qword_252007DF0);
  v98 = v124;
  v99 = v126;
  sub_252004530();
  (*(v127 + 8))(v97, v99);
  swift_getKeyPath();
  v140 = v64;
  sub_251FD67B8(&unk_27F4C6D70, &qword_27F4C6D10, &qword_252007DF8);
  v100 = v128;
  sub_252004590();

  (*(v129 + 8))(v98, v100);
  swift_beginAccess();
  sub_252004480();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v101 = swift_allocObject();
  *&result = 3;
  *(v101 + 16) = xmmword_252007AF0;
  v103 = v135;
  *(v101 + 32) = v136;
  *(v101 + 40) = v103;
  *(v101 + 48) = v81;
  return result;
}

unsigned __int8 *sub_251FDD190@<X0>(unsigned __int8 *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v4 = v2 != 2 && result[1] != 2;
  v5 = (v2 & 1) == 0 && v4;
  if (result[2] == 2)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_251FDD1C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

void sub_251FDD224(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton);
  *(*a2 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton) = *a1;
  v3 = v2;
}

id sub_251FDD274@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_251FDD3BC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_251FDD41C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_251FDD4B4;
}

void sub_251FDD4B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_251FDD534()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton);
  }

  else
  {
    v4 = sub_251FDD598(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_251FDD598(uint64_t a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() boldButton];
  v11[1] = a1;
  sub_252004620();
  type metadata accessor for HearingAidUserAgeCheckViewController();
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  v9 = sub_2520046B0();

  [v8 setTitle:v9 forState:0];

  [v8 setEnabled_];
  [v8 addTarget:a1 action:sel_continueButtonTapped_ forControlEvents:64];
  return v8;
}

uint64_t sub_251FDD73C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton) = a1;
  return MEMORY[0x2821F96F8]();
}

id sub_251FDD750()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_251FDD7D8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton) = a1;
  return MEMORY[0x2821F96F8]();
}

id sub_251FDD818()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___sections] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton] = 0;
  *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton] = 0;
  *&v0[OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController_listeners] = MEMORY[0x277D84FA0];
  sub_252004620();
  sub_251FEAB30(v7);
  v8 = *(v3 + 8);
  v8(v7, v2);
  v9 = sub_2520046B0();

  sub_252004620();
  sub_251FEAB30(v7);
  v8(v7, v2);
  v10 = sub_2520046B0();

  v11 = type metadata accessor for HearingAidUserAgeCheckViewController();
  v14.receiver = v1;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v9, v10, 0, 1);

  return v12;
}

void sub_251FDDA50()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  sub_252004B10();
  __break(1u);
}

void sub_251FDDAC8()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___sections) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___continueButton) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI36HearingAidUserAgeCheckViewController_listeners) = MEMORY[0x277D84FA0];
  sub_252004B10();
  __break(1u);
}

void sub_251FDDB70()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 tableView];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setShowsVerticalScrollIndicator_];

  v9 = [v0 tableView];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 setShowsHorizontalScrollIndicator_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  sub_251FD6770(0, &qword_27F4C6CD8, 0x277D75B70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_2520046B0();
  [v12 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v14];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setDelegate_];

  v17 = [v0 tableView];
  if (v17)
  {
    v18 = v17;
    [v17 setDataSource_];

    v21.receiver = v0;
    v21.super_class = type metadata accessor for HearingAidUserAgeCheckViewController();
    objc_msgSendSuper2(&v21, sel_viewDidLoad);
    v19 = [v0 buttonTray];
    v20 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
    [v19 addButton_];

    return;
  }

LABEL_15:
  __break(1u);
}

id HearingAidUserAgeCheckViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2520046B0();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_2520046B0();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id HearingAidUserAgeCheckViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_2520046B0();

  if (a4)
  {
    v10 = sub_2520046B0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id HearingAidUserAgeCheckViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_2520046B0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520046B0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id HearingAidUserAgeCheckViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_2520046B0();

  if (a4)
  {
    v12 = sub_2520046B0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id sub_251FDE4C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall HearingAidUserAgeCheckViewController.numberOfSections(in:)(UITableView *in)
{
  v1 = sub_251FDC230();
  if (v1 >> 62)
  {
    v2 = sub_252004B20();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

Swift::Int __swiftcall HearingAidUserAgeCheckViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253096650](numberOfRowsInSection, result);
    goto LABEL_5;
  }

  if (numberOfRowsInSection < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > numberOfRowsInSection)
  {
    v4 = *(result + 8 * numberOfRowsInSection + 32);

LABEL_5:

    v5 = *(v4 + 48);

    v6 = *(v5 + 16);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t HearingAidUserAgeCheckViewController.tableView(_:cellForRowAt:)()
{
  v0 = sub_252003B90();
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253096650](v0, result);
  }

  else
  {
    if ((v0 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v0 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v2 = *(result + 8 * v0 + 32);
  }

  v3 = v2[6];
  result = sub_252003B80();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < *(v3 + 16))
  {
    v4 = (*(*v2 + 184))(*(v3 + result + 32));

    return v4;
  }

LABEL_12:
  __break(1u);
  return result;
}