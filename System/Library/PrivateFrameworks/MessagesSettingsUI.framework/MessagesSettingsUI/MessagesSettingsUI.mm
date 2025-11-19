id MessagesSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Messages"];

  return v3;
}

void sub_258D2733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258D2A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_258D2AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2B548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICSManageStorageDrilldownControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudSettingsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudSettingsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2798C4928;
    v7 = 0;
    iCloudSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudSettingsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ICSManageStorageDrilldownController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICSManageStorageDrilldownControllerClass_block_invoke_cold_1();
  }

  getICSManageStorageDrilldownControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258D2E574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D2F218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258D32F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  _Block_object_dispose((v23 - 112), 8);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getICQCurrentInAppMessageChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQCurrentInAppMessageChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQCurrentInAppMessageChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t iCloudQuotaUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798C4B18;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = iCloudQuotaUILibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getICQInAppMessageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQInAppMessageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQInAppMessageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getICQInAppMessagingClass_block_invoke(uint64_t a1)
{
  iCloudQuotaUILibrary();
  result = objc_getClass("ICQInAppMessaging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQInAppMessagingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getICQInAppMessagingClass_block_invoke_cold_1();
    return __getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIMessagePlacementInSettingsAppDetail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIMessagePlacementInSettingsAppDetailSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonServerUnreachableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonServerUnreachable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonServerUnreachableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonAirplaneModeOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonAirplaneModeOnSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasonCellularDataOffSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasonCellularDataOff");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasonCellularDataOffSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudAlmostFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudAlmostFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICQUIInAppMessageReasoniCloudFullSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaUILibrary();
  result = dlsym(v2, "ICQUIInAppMessageReasoniCloudFull");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQUIInAppMessageReasoniCloudFullSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_258D376B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x258D37658);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_258D37CC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_258D56714();

    return sub_258D565A4();
  }

  else
  {
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    sub_258D56C74();
    swift_getWitnessTable();
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    return sub_258D565A4();
  }
}

uint64_t sub_258D37E2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_258D56714();
    sub_258D565A4();
  }

  else
  {
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    sub_258D56C74();
    swift_getWitnessTable();
    sub_258D565C4();
    swift_getWitnessTable();
    sub_258D566F4();
    sub_258D565A4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_258D3802C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_258D38050()
{
  result = qword_27F9846B8;
  if (!qword_27F9846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9846B8);
  }

  return result;
}

id sub_258D380A4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 iMessageAppsViewController];

  return v1;
}

uint64_t sub_258D3815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D38268();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D381C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D38268();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D38240()
{
  sub_258D38268();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D38268()
{
  result = qword_27F9846C0;
  if (!qword_27F9846C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9846C0);
  }

  return result;
}

uint64_t sub_258D382E8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846C8, &qword_258D58EB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846D0, &qword_258D58EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846D8, &qword_258D58EC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = [*&a1[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] cellType];
  v15 = sub_258D56694();
  if (v14 == 6)
  {
    *v13 = v15;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846F8, &qword_258D58ED8);
    sub_258D38614(a1, &v13[*(v16 + 44)]);
    sub_258D39240(v13, v9, &qword_27F9846D8, &qword_258D58EC8);
    swift_storeEnumTagMultiPayload();
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8);
    sub_258D566E4();
    v17 = v13;
    v18 = &qword_27F9846D8;
    v19 = &qword_258D58EC8;
  }

  else
  {
    *v5 = v15;
    *(v5 + 1) = 0;
    v5[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9846E0, &qword_258D58ED0);
    sub_258D38A7C(a1, &v5[*(v20 + 44)]);
    sub_258D39240(v5, v9, &qword_27F9846C8, &qword_258D58EB8);
    swift_storeEnumTagMultiPayload();
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8);
    sub_258D566E4();
    v17 = v5;
    v18 = &qword_27F9846C8;
    v19 = &qword_258D58EB8;
  }

  return sub_258D392A8(v17, v18, v19);
}

void sub_258D38614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56684();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  (MEMORY[0x28223BE20])();
  v46 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v44 = *(v7 - 8);
  v8 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = (MEMORY[0x28223BE20])();
  v45 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v42[-v16];
  v18 = a1;
  v43 = sub_258D567F4();
  sub_258D56534();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [*&v18[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] name];
  if (v27)
  {
    v28 = v27;
    v29 = sub_258D56BD4();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v49 = v29;
  v50 = v31;
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v18;
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v18;
  v34 = v18;
  sub_258D56B44();
  sub_258D39364();
  sub_258D56AE4();
  v35 = v46;
  sub_258D56674();
  sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  sub_258D393B8();
  v36 = v48;
  sub_258D56934();
  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v10, v7);
  v37 = v12[2];
  v38 = v45;
  v37(v45, v17, v11);
  *a2 = v34;
  *(a2 + 8) = v43;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984728, &qword_258D58EF0);
  v37((a2 + *(v39 + 48)), v38, v11);
  v40 = v12[1];
  v41 = v34;
  v40(v17, v11);
  v40(v38, v11);
}

void sub_258D38A7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984730, &qword_258D58EF8);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984738, &qword_258D58F00);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = v38 - v9;
  v10 = a1;
  v39 = sub_258D567F4();
  sub_258D56534();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_258D565B4();
  v20 = sub_258D567E4();
  v45 = v10;
  v46 = v19;
  LOBYTE(v47) = v20;
  v21 = [*&v10[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] name];
  if (v21)
  {
    v22 = v21;
    v23 = sub_258D56BD4();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v49 = v23;
  v50 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984740, &qword_258D58F08);
  v27 = sub_258D39410();
  v28 = sub_258D39364();
  sub_258D56964();

  v38[1] = v38;
  MEMORY[0x28223BE20](v29);
  v38[-2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984758, &qword_258D58F10);
  sub_258D394F8(&qword_27F984760, &qword_27F984758, &qword_258D58F10);
  v45 = v26;
  v46 = MEMORY[0x277D837D0];
  v47 = v27;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_258D56584();
  v32 = v42;
  v31 = v43;
  v33 = *(v43 + 16);
  v34 = v44;
  v33(v42, v30, v44);
  *a2 = v10;
  *(a2 + 8) = v39;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984768, &qword_258D58F18);
  v33((a2 + *(v35 + 48)), v32, v34);
  v36 = *(v31 + 8);
  v37 = v10;
  v36(v30, v34);
  v36(v32, v34);
}

__n128 sub_258D38E44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56694();
  v5 = sub_258D566C4();
  sub_258D38F00(a1, v8);
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a2 + 57) = *&v7[16];
  result = *&v7[32];
  *(a2 + 73) = *&v7[32];
  *(a2 + 89) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = *v7;
  *(a2 + 104) = *&v7[63];
  return result;
}

uint64_t sub_258D38F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v3)
  {
    v4 = v3;
    sub_258D56BD4();
  }

  sub_258D39364();
  v5 = sub_258D568E4();
  v7 = v6;
  v9 = v8;
  sub_258D569A4();
  v10 = sub_258D56894();
  v38 = v11;
  v37 = v12;
  v14 = v13;

  sub_258D39540(v5, v7, v9 & 1);

  sub_258D3FA00();
  if (v15)
  {
    v16 = sub_258D568E4();
    v18 = v17;
    v20 = v19;
    sub_258D56834();
    v21 = sub_258D568C4();
    v23 = v22;
    v36 = v14;
    v25 = v24;

    sub_258D39540(v16, v18, v20 & 1);

    sub_258D569B4();
    v26 = sub_258D56894();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v25 & 1;
    v14 = v36;
    sub_258D39540(v21, v23, v33);

    v34 = v30 & 1;
    sub_258D3802C(v26, v28, v30 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v34 = 0;
    v32 = 0;
  }

  sub_258D3802C(v10, v38, v37 & 1);

  sub_258D39550(v26, v28, v34, v32);
  sub_258D39594(v26, v28, v34, v32);
  *a2 = v10;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v34;
  *(a2 + 56) = v32;
  sub_258D39594(v26, v28, v34, v32);
  sub_258D39540(v10, v38, v37 & 1);
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

uint64_t sub_258D39240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258D392A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258D3930C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_258D3F7F4(v1[4], a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_258D39364()
{
  result = qword_27F984710;
  if (!qword_27F984710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984710);
  }

  return result;
}

unint64_t sub_258D393B8()
{
  result = qword_27F984720;
  if (!qword_27F984720)
  {
    sub_258D56684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984720);
  }

  return result;
}

unint64_t sub_258D39410()
{
  result = qword_27F984748;
  if (!qword_27F984748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984740, &qword_258D58F08);
    sub_258D3949C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984748);
  }

  return result;
}

unint64_t sub_258D3949C()
{
  result = qword_27F984750;
  if (!qword_27F984750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984750);
  }

  return result;
}

uint64_t sub_258D394F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_258D39540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_258D39550(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_258D3802C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_258D39594(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_258D39540(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_258D395DC()
{
  result = qword_27F984770;
  if (!qword_27F984770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984778, &unk_258D58F20);
    sub_258D394F8(&qword_27F9846E8, &qword_27F9846D8, &qword_258D58EC8);
    sub_258D394F8(&qword_27F9846F0, &qword_27F9846C8, &qword_258D58EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984770);
  }

  return result;
}

uint64_t sub_258D396C0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_258D56BB4();
}

uint64_t sub_258D39890()
{
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564C4();

  v0 = objc_opt_self();
  if ([v0 hasUserCompletedOnboarding])
  {
    return [v0 shareAllLocations] ^ 1;
  }

  else
  {
    return 2;
  }
}

id sub_258D39964@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564C4();

  v4 = objc_opt_self();
  result = [v4 hasUserCompletedOnboarding];
  if (result)
  {
    result = [v4 shareAllLocations];
    v6 = result ^ 1;
  }

  else
  {
    v6 = 2;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_258D39A44(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564B4();
}

id sub_258D39B10(unsigned __int8 a1)
{
  v2 = a1;
  v3 = objc_opt_self();
  result = [v3 setHasUserCompletedOnboarding_];
  if (v2 != 2)
  {
    return [v3 setShareAllLocations_];
  }

  return result;
}

uint64_t sub_258D39B88()
{
  v1 = OBJC_IVAR____TtCV18MessagesSettingsUI15CheckInDataView5Model___observationRegistrar;
  v2 = sub_258D564E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CheckInDataView.Model()
{
  result = qword_27F984788;
  if (!qword_27F984788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D39C78()
{
  result = sub_258D564E4();
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258D39D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D39D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258D39DFC@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847C0, &qword_258D59038);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v65 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847C8, &qword_258D59040);
  v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x28223BE20](v70);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v65 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847D0, &qword_258D59048);
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847D8, &qword_258D59050);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v78 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847E0, &qword_258D59058);
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v83 = a1;
  sub_258D3B164(a1, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847E8, &unk_258D59060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F0, &unk_258D5A900);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847F8, &qword_258D59070);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984800, &qword_258D59078);
  v28 = sub_258D56664();
  v29 = sub_258D394F8(&qword_27F984808, &qword_27F984800, &qword_258D59078);
  v84 = v27;
  v85 = v28;
  v86 = v29;
  v87 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_258D3D028();
  v84 = v26;
  v85 = &type metadata for SettingsModel.CheckInData;
  v86 = OpaqueTypeConformance2;
  v87 = v31;
  swift_getOpaqueTypeConformance2();
  sub_258D3D07C();
  v74 = v25;
  sub_258D56B94();
  *v88 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  v32 = v84;
  swift_getKeyPath();
  v88[0] = v32;
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564C4();

  v33 = objc_opt_self();
  if ([v33 hasUserCompletedOnboarding])
  {
    v34 = [v33 shareAllLocations];

    MEMORY[0x28223BE20](v35);
    *(&v65 - 16) = v34 ^ 1;
    sub_258D3B61C(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984830, &qword_258D59090);
    sub_258D3D100();
    v36 = v14;
    v65 = v14;
    v37 = sub_258D56B64();
    MEMORY[0x28223BE20](v37);
    *(&v65 - 16) = v34 ^ 1;
    sub_258D3BF0C(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984880, &qword_258D590B8);
    sub_258D394F8(&qword_27F984888, &qword_27F984880, &qword_258D590B8);
    v38 = v73;
    sub_258D56B94();
    v39 = v66;
    v40 = *(v66 + 16);
    v41 = v72;
    v42 = v36;
    v43 = v67;
    v40(v72, v42, v67);
    v44 = v69;
    v45 = *(v69 + 16);
    v46 = v68;
    v47 = v38;
    v48 = v70;
    v45(v68, v47, v70);
    v40(v79, v41, v43);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984890, &qword_258D590C0);
    v50 = v79;
    v45(&v79[*(v49 + 48)], v46, v48);
    v51 = *(v44 + 8);
    v51(v73, v48);
    v52 = *(v39 + 8);
    v52(v65, v43);
    v51(v46, v48);
    v52(v72, v43);
    v53 = v71;
    sub_258D3D350(v50, v71, &qword_27F9847C0, &qword_258D59038);
    v54 = 0;
  }

  else
  {

    v54 = 1;
    v53 = v71;
  }

  (*(v80 + 56))(v53, v54, 1, v81);
  v55 = v75;
  v56 = v76;
  v57 = *(v75 + 16);
  v58 = v77;
  v59 = v74;
  v57(v77, v74, v76);
  v60 = v78;
  sub_258D39240(v53, v78, &qword_27F9847D8, &qword_258D59050);
  v61 = v82;
  v57(v82, v58, v56);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984828, &qword_258D59088);
  sub_258D39240(v60, &v61[*(v62 + 48)], &qword_27F9847D8, &qword_258D59050);
  sub_258D392A8(v53, &qword_27F9847D8, &qword_258D59050);
  v63 = *(v55 + 8);
  v63(v59, v56);
  sub_258D392A8(v60, &qword_27F9847D8, &qword_258D59050);
  return (v63)(v58, v56);
}

uint64_t sub_258D3A750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_258D56664();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984800, &qword_258D59078);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F8, &qword_258D59070);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v37 - v16;
  v17 = a1[3];
  v38 = a1[2];
  v18 = a1[4];
  v39 = v17;
  v40 = v18;
  v49 = v38;
  v50 = v17;
  v51 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v20 = v56;
  v21 = v57;
  v22 = v58;
  swift_getKeyPath();
  v49 = v20;
  v50 = v21;
  v51 = v22;
  sub_258D56B24();

  v23 = v56;
  v24 = v57;
  v25 = v58;

  v54[0] = v23;
  v54[1] = v24;
  v55 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848C0, &qword_258D59110);
  sub_258D3D3F8();
  sub_258D394F8(&qword_27F9848D0, &qword_27F9848C0, &qword_258D59110);
  sub_258D56AB4();
  sub_258D56654();
  v26 = sub_258D394F8(&qword_27F984808, &qword_27F984800, &qword_258D59078);
  v27 = v41;
  v28 = v43;
  sub_258D56924();
  (*(v44 + 8))(v7, v28);
  (*(v42 + 8))(v12, v27);
  v29 = v38;
  v49 = v38;
  v50 = v39;
  v51 = v40;
  MEMORY[0x259C9B090](&v56, v19);
  v30 = v56;
  swift_getKeyPath();
  v49 = v30;
  sub_258D3D44C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v23) = *(v30 + 35);

  v53 = v23;
  v31 = *a1;
  v54[0] = a1[1];
  v56 = v29;
  v32 = swift_allocObject();
  v33 = *(a1 + 1);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v33;
  *(v32 + 48) = a1[4];

  sub_258D39240(v54, &v49, &qword_27F9848E0, &qword_258D59118);
  sub_258D3D4F4(&v56, &v49);

  v49 = v27;
  v50 = v28;
  v51 = v26;
  v52 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_258D3D028();
  v34 = v45;
  v35 = v48;
  sub_258D56984();

  return (*(v46 + 8))(v35, v34);
}

uint64_t sub_258D3AC98@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848E8, &qword_258D59120);
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v42 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = ObjCClassFromMetadata;
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v16 = sub_258D56BC4();
  v17 = sub_258D56BC4();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  v19 = sub_258D56BD4();
  v21 = v20;

  v46 = v19;
  v47 = v21;
  sub_258D39364();
  *v12 = sub_258D568E4();
  *(v12 + 1) = v22;
  v12[16] = v23 & 1;
  *(v12 + 3) = v24;
  *(v12 + 16) = 257;
  v25 = [v14 bundleForClass_];
  v26 = sub_258D56BC4();
  v27 = sub_258D56BC4();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v29 = sub_258D56BD4();
  v31 = v30;

  v46 = v29;
  v47 = v31;
  *v10 = sub_258D568E4();
  *(v10 + 1) = v32;
  v10[16] = v33 & 1;
  *(v10 + 3) = v34;
  *(v10 + 16) = 256;
  v35 = v2[2];
  v36 = v43;
  v35(v43, v12, v1);
  v37 = v44;
  v35(v44, v10, v1);
  v38 = v45;
  v35(v45, v36, v1);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848F0, &qword_258D59128);
  v35(&v38[*(v39 + 48)], v37, v1);
  v40 = v2[1];
  v40(v10, v1);
  v40(v12, v1);
  v40(v37, v1);
  return (v40)(v36, v1);
}

uint64_t sub_258D3B068(uint64_t a1, char *a2, __int128 *a3)
{
  v3 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564B4();
}

uint64_t sub_258D3B164@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984820, &qword_258D59080);
  sub_258D56A54();
  swift_getKeyPath();
  sub_258D3D44C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564C4();

  v3 = objc_opt_self();
  if ([v3 hasUserCompletedOnboarding])
  {
    [v3 shareAllLocations];

    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_258D56BC4();
    v7 = sub_258D56BC4();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_258D56BD4();
    sub_258D39364();
    result = sub_258D568E4();
    v13 = v12 & 1;
  }

  else
  {

    result = 0;
    v10 = 0;
    v13 = 0;
    v11 = 0;
  }

  *a2 = result;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v11;
  return result;
}

double sub_258D3B398@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258D56A04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258D56504();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_27F9846B0 != -1)
    {
      swift_once();
    }

    v14 = qword_27F987018;
  }

  else
  {
    if (qword_27F9846A8 != -1)
    {
      swift_once();
    }

    v14 = qword_27F987000;
  }

  v15 = __swift_project_value_buffer(v9, v14);
  (*(v10 + 16))(v13, v15, v9);
  sub_258D56A34();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v16 = sub_258D56A24();

  (*(v5 + 8))(v8, v4);
  v19[1] = sub_258D56994();
  v17 = sub_258D56AF4();
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v17;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_258D3B61C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D3B744@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984898, &qword_258D590C8);
  v3 = *(*(v76 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v76);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v71 - v7;
  MEMORY[0x28223BE20](v6);
  v78 = &v71 - v9;
  v84 = sub_258D56844();
  v10 = *(v84 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v84);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848A0, &qword_258D590D0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = &v71 - v21;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v82 = objc_opt_self();
  v83 = ObjCClassFromMetadata;
  v23 = [v82 bundleForClass_];
  v24 = sub_258D56BC4();
  v81 = "MPLE_DATA_FOOTER";
  v25 = sub_258D56BC4();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  v27 = sub_258D56BD4();
  v72 = v28;
  v73 = v27;

  v29 = 0;
  v30 = 0;
  if ((a1 & 1) == 0)
  {
    v31 = [v82 bundleForClass_];
    v32 = sub_258D56BC4();
    v33 = sub_258D56BC4();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];
    v75 = v8;
    v35 = v13;
    v36 = a1;
    v37 = v10;
    v38 = v34;

    v29 = sub_258D56BD4();
    v30 = v39;

    v10 = v37;
    a1 = v36;
    v13 = v35;
    v8 = v75;
  }

  v86 = 0x4000000000000000;
  v40 = *MEMORY[0x277CE0A68];
  v74 = *(v10 + 104);
  v75 = (v10 + 104);
  v74(v13, v40, v84);
  sub_258D3D2FC();
  sub_258D56544();
  v41 = &v20[v14[7]];
  *v41 = 0x656E6F687069;
  *(v41 + 1) = 0xE600000000000000;
  v42 = &v20[v14[8]];
  v43 = v72;
  *v42 = v73;
  *(v42 + 1) = v43;
  v44 = &v20[v14[9]];
  *v44 = v29;
  v44[1] = v30;
  sub_258D3BE78(&v20[v14[10]]);
  sub_258D3D350(v20, v85, &qword_27F9848A0, &qword_258D590D0);
  v45 = [v82 bundleForClass_];
  v46 = sub_258D56BC4();
  v47 = sub_258D56BC4();
  v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

  v49 = sub_258D56BD4();
  v51 = v50;

  v52 = 0;
  v53 = 0;
  if ((a1 & 1) == 0)
  {
    v54 = [v82 bundleForClass_];
    v55 = sub_258D56BC4();
    v56 = sub_258D56BC4();
    v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

    v52 = sub_258D56BD4();
    v53 = v58;
  }

  v86 = 0x4000000000000000;
  v74(v13, v40, v84);
  sub_258D56544();
  v59 = v76;
  v60 = &v8[*(v76 + 28)];
  *v60 = 0x746177656C707061;
  *(v60 + 1) = 0xEA00000000006863;
  v61 = &v8[v59[8]];
  *v61 = v49;
  v61[1] = v51;
  v62 = &v8[v59[9]];
  *v62 = v52;
  v62[1] = v53;
  v63 = v59[10];
  *&v8[v63] = sub_258D569F4();
  v64 = v78;
  sub_258D3D350(v8, v78, &qword_27F984898, &qword_258D590C8);
  v65 = v85;
  v66 = v77;
  sub_258D39240(v85, v77, &qword_27F9848A0, &qword_258D590D0);
  v67 = v79;
  sub_258D39240(v64, v79, &qword_27F984898, &qword_258D590C8);
  v68 = v80;
  sub_258D39240(v66, v80, &qword_27F9848A0, &qword_258D590D0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B0, &qword_258D590D8);
  sub_258D39240(v67, v68 + *(v69 + 48), &qword_27F984898, &qword_258D590C8);
  sub_258D392A8(v64, &qword_27F984898, &qword_258D590C8);
  sub_258D392A8(v65, &qword_27F9848A0, &qword_258D590D0);
  sub_258D392A8(v67, &qword_27F984898, &qword_258D590C8);
  return sub_258D392A8(v66, &qword_27F9848A0, &qword_258D590D0);
}

uint64_t sub_258D3BE78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_258D569F4();
  v3 = sub_258D569E4();
  result = sub_258D569F4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_258D3BF0C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D3C034@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984998, &qword_258D591B0);
  v5 = *(a1 + 16);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();
  sub_258D565A4();
  swift_getTupleTypeMetadata3();
  sub_258D56BA4();
  swift_getWitnessTable();
  v6 = sub_258D56AA4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  v18 = v5;
  v19 = v2;
  sub_258D56694();
  sub_258D56A94();
  swift_getWitnessTable();
  v14 = v7[2];
  v14(v13, v11, v6);
  v15 = v7[1];
  v15(v11, v6);
  v14(a2, v13, v6);
  return (v15)(v13, v6);
}

uint64_t sub_258D3C2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  v30 = sub_258D56BA4();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_258D56AA4();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = sub_258D565A4();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = &v25 - v14;
  v15 = (a1 + *(type metadata accessor for CheckInDataView.DeviceRow() + 28));
  v17 = *v15;
  v16 = v15[1];

  v28 = sub_258D569F4();
  v27 = sub_258D56824();
  KeyPath = swift_getKeyPath();
  v18 = sub_258D566C4();
  LOBYTE(v41) = 1;
  sub_258D3C8B0(a1, v57);
  v50 = *&v57[32];
  v51 = *&v57[48];
  v52 = *&v57[64];
  v48 = *v57;
  v49 = *&v57[16];
  v53[2] = *&v57[32];
  v53[3] = *&v57[48];
  v54 = *&v57[64];
  v53[0] = *v57;
  v53[1] = *&v57[16];
  sub_258D39240(&v48, &v55, &qword_27F9849A8, &qword_258D591F0);
  sub_258D392A8(v53, &qword_27F9849A8, &qword_258D591F0);
  *&v57[7] = v48;
  *&v57[23] = v49;
  *&v57[39] = v50;
  *&v57[55] = v51;
  *&v57[71] = v52;
  v55 = v18;
  LOBYTE(v56[0]) = v41;
  *(v56 + 1) = *v57;
  *(&v56[3] + 12) = *&v57[59];
  *(&v56[3] + 1) = *&v57[48];
  *(&v56[2] + 1) = *&v57[32];
  *(&v56[1] + 1) = *&v57[16];
  v35 = a2;
  v36 = a1;
  sub_258D56694();
  sub_258D56A94();
  sub_258D56804();
  v19 = swift_getWitnessTable();
  sub_258D56974();
  (*(v32 + 8))(v8, v5);
  v47[3] = v19;
  v47[4] = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v20 = v34;
  v21 = *(v34 + 16);
  v22 = v31;
  v21(v31, v13, v9);
  v23 = *(v20 + 8);
  v34 = v20 + 8;
  v23(v13, v9);
  v46[0] = v28;
  v46[1] = KeyPath;
  v43 = v56[1];
  v44 = v56[2];
  v45[0] = v56[3];
  *(v45 + 12) = *(&v56[3] + 12);
  v41 = v55;
  v42 = v56[0];
  v46[2] = v27;
  v47[0] = v46;
  v47[1] = &v41;
  v21(v13, v22, v9);
  v47[2] = v13;

  sub_258D39240(&v55, v57, &qword_27F984998, &qword_258D591B0);
  v40[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984990, &qword_258D591A8);
  v40[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984998, &qword_258D591B0);
  v40[2] = v9;
  v37 = sub_258D3DDA4();
  v38 = sub_258D394F8(&qword_27F9849C8, &qword_27F984998, &qword_258D591B0);
  v39 = v32;
  sub_258D396C0(v47, 3uLL, v40);
  sub_258D392A8(&v55, &qword_27F984998, &qword_258D591B0);

  v23(v22, v9);
  v23(v13, v9);
  *&v57[32] = v43;
  *&v57[48] = v44;
  *&v57[64] = v45[0];
  *&v57[76] = *(v45 + 12);
  *v57 = v41;
  *&v57[16] = v42;
  sub_258D392A8(v57, &qword_27F984998, &qword_258D591B0);
}

uint64_t sub_258D3C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for CheckInDataView.DeviceRow() + 32));
  v5 = v4[1];
  v19 = *v4;
  v20 = v5;
  sub_258D39364();

  v6 = sub_258D568E4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_258D3C9E0(a1, &v19);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = sub_258D56704();
  v10 &= 1u;
  LOBYTE(v19) = v10;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  sub_258D3802C(v6, v8, v10);

  sub_258D39550(v13, v14, v15, v16);
  sub_258D39594(v13, v14, v15, v16);
  sub_258D39540(v6, v8, v10);
}

uint64_t sub_258D3C9E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for CheckInDataView.DeviceRow();
  v5 = (a1 + *(result + 36));
  v6 = v5[1];
  if (v6)
  {
    v19 = *v5;
    v20 = v5[1];
    sub_258D39364();

    v7 = sub_258D568E4();
    v9 = v8;
    v11 = v10;
    sub_258D56854();
    v6 = sub_258D568C4();
    v13 = v12;
    v15 = v14;
    v17 = v16;

    sub_258D39540(v7, v9, v11 & 1);

    v18 = v15 & 1;
  }

  else
  {
    v13 = 0;
    v18 = 0;
    v17 = 0;
  }

  *a2 = v6;
  a2[1] = v13;
  a2[2] = v18;
  a2[3] = v17;
  return result;
}

uint64_t sub_258D3CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = sub_258D56A14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  v7 = sub_258D565A4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = *(type metadata accessor for CheckInDataView.DeviceRow() + 40);
  (*(v3 + 104))(v6, *MEMORY[0x277CE1050], v2);
  WitnessTable = swift_getWitnessTable();
  sub_258D56914();
  (*(v3 + 8))(v6, v2);
  v17 = sub_258D394F8(&qword_27F9849D0, &qword_27F9849A0, &qword_258D591B8);
  v26[2] = WitnessTable;
  v26[3] = v17;
  v18 = swift_getWitnessTable();
  v19 = v8[2];
  v19(v14, v12, v7);
  v20 = v8[1];
  v20(v12, v7);
  v24 = 0;
  v25 = 1;
  v26[0] = &v24;
  v19(v12, v14, v7);
  v26[1] = v12;
  v23[0] = MEMORY[0x277CE1180];
  v23[1] = v7;
  v22[2] = MEMORY[0x277CE1170];
  v22[3] = v18;
  sub_258D396C0(v26, 2uLL, v23);
  v20(v14, v7);
  return (v20)(v12, v7);
}

uint64_t sub_258D3CE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847A0, &qword_258D59028);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-v4];
  v6 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v6;
  v11 = *(v0 + 32);
  v9 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847A8, &qword_258D59030);
  sub_258D394F8(&qword_27F9847B0, &qword_27F9847A8, &qword_258D59030);
  sub_258D56884();
  sub_258D566A4();
  sub_258D394F8(&qword_27F9847B8, &qword_27F9847A0, &qword_258D59028);
  sub_258D56954();

  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_258D3D028()
{
  result = qword_27F984810;
  if (!qword_27F984810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984810);
  }

  return result;
}

unint64_t sub_258D3D07C()
{
  result = qword_27F984818;
  if (!qword_27F984818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847F0, &unk_258D5A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984818);
  }

  return result;
}

unint64_t sub_258D3D100()
{
  result = qword_27F984838;
  if (!qword_27F984838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984830, &qword_258D59090);
    sub_258D3D1B8();
    sub_258D394F8(&qword_27F984870, &qword_27F984878, &qword_258D590B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984838);
  }

  return result;
}

unint64_t sub_258D3D1B8()
{
  result = qword_27F984840;
  if (!qword_27F984840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984848, &qword_258D59098);
    sub_258D3D270();
    sub_258D394F8(&qword_27F984860, &qword_27F984868, &qword_258D590A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984840);
  }

  return result;
}

unint64_t sub_258D3D270()
{
  result = qword_27F984850;
  if (!qword_27F984850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984858, &qword_258D590A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984850);
  }

  return result;
}

unint64_t sub_258D3D2FC()
{
  result = qword_27F9848A8;
  if (!qword_27F9848A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848A8);
  }

  return result;
}

uint64_t sub_258D3D350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_258D3D3F8()
{
  result = qword_27F9848C8;
  if (!qword_27F9848C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848C8);
  }

  return result;
}

uint64_t sub_258D3D44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258D3D494()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_258D3D558(uint64_t a1)
{
  sub_258D3DC04();
  if (v2 <= 0x3F)
  {
    sub_258D3DC60();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      sub_258D56BA4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258D3D608(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9848F8, &qword_258D59130);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 16;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v14 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v9 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v23 = *(v7 + 48);

        return v23(a1, v8, v6);
      }

      else
      {
        v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v26 = *(v9 + 48);

          return v26((v14 + ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
        }

        else
        {
          v25 = *(v24 + 8);
          if (v25 >= 0xFFFFFFFF)
          {
            LODWORD(v25) = -1;
          }

          return (v25 + 1);
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v14 + ((((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_258D3D8B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9848F8, &qword_258D59130);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + 16 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_52:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v25 = *(v11 + 56);

      v25((v13 + 16 + ((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v24 = a2 & 0x7FFFFFFF;
      v24[1] = 0;
    }

    else
    {
      v24[1] = (a2 - 1);
    }
  }
}

void sub_258D3DC04()
{
  if (!qword_27F984980)
  {
    sub_258D3D2FC();
    v0 = sub_258D56554();
    if (!v1)
    {
      atomic_store(v0, &qword_27F984980);
    }
  }
}

void sub_258D3DC60()
{
  if (!qword_27F984988)
  {
    v0 = sub_258D56C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F984988);
    }
  }
}

uint64_t sub_258D3DCB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9847A0, &qword_258D59028);
  sub_258D394F8(&qword_27F9847B8, &qword_27F9847A0, &qword_258D59028);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_258D3DDA4()
{
  result = qword_27F9849B0;
  if (!qword_27F9849B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
    sub_258D394F8(&qword_27F9849B8, &qword_27F9849C0, &qword_258D591F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9849B0);
  }

  return result;
}

uint64_t sub_258D3DE8C(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984990, &qword_258D591A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984998, &qword_258D591B0);
  sub_258D56BA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849A0, &qword_258D591B8);
  sub_258D565A4();
  swift_getTupleTypeMetadata2();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();
  sub_258D565A4();
  swift_getTupleTypeMetadata3();
  sub_258D56BA4();
  swift_getWitnessTable();
  sub_258D56AA4();

  return swift_getWitnessTable();
}

uint64_t sub_258D3E07C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849D8, &qword_258D592B8);
  v1 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v46 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849E0, &qword_258D592C0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849E8, &qword_258D592C8);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849F0, &qword_258D592D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9849F8, &qword_258D592D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A00, &qword_258D592E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = sub_258D3F588();
  if (v22)
  {
    v23 = v22;
    *v17 = sub_258D569D4();
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();

    sub_258D566E4();
    sub_258D39240(v21, v13, &qword_27F984A00, &qword_258D592E0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();

    v24 = v21;
    v25 = &qword_27F984A00;
    v26 = &qword_258D592E0;
    return sub_258D392A8(v24, v25, v26);
  }

  v46 = v5;
  v47 = v9;
  v48 = v13;
  v49 = v6;
  v50 = v18;
  sub_258D3FAF0();
  if (v28)
  {
    v29 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v30 = sub_258D56BC4();

    [v29 initWithType_];

    v31 = v47;
    if (qword_27F984690 != -1)
    {
      swift_once();
    }

    v32 = qword_27F986FF0;
    sub_258D56514();
    v33 = v53;
    v34 = v49;
    (*(v53 + 16))(v17, v31, v49);
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();
    sub_258D566E4();
    sub_258D39240(v21, v48, &qword_27F984A00, &qword_258D592E0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();
    sub_258D392A8(v21, &qword_27F984A00, &qword_258D592E0);
    return (*(v33 + 8))(v31, v34);
  }

  else
  {
    sub_258D3FAE4();
    if (!v35)
    {
      swift_storeEnumTagMultiPayload();
      sub_258D3E7A8();
      v45 = v46;
      sub_258D566E4();
      sub_258D39240(v45, v48, &qword_27F9849E0, &qword_258D592C0);
      swift_storeEnumTagMultiPayload();
      sub_258D3E80C();
      sub_258D3E898();
      sub_258D566E4();
      v24 = v45;
      v25 = &qword_27F9849E0;
      v26 = &qword_258D592C0;
      return sub_258D392A8(v24, v25, v26);
    }

    v36 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v37 = sub_258D56BC4();

    [v36 initWithBundleIdentifier_];

    v39 = v48;
    v38 = v49;
    v40 = v46;
    v41 = v52;
    if (qword_27F984690 != -1)
    {
      swift_once();
    }

    v42 = qword_27F986FF0;
    v43 = v47;
    sub_258D56514();
    v44 = v53;
    (*(v53 + 16))(v41, v43, v38);
    swift_storeEnumTagMultiPayload();
    sub_258D3E7A8();
    sub_258D566E4();
    sub_258D39240(v40, v39, &qword_27F9849E0, &qword_258D592C0);
    swift_storeEnumTagMultiPayload();
    sub_258D3E80C();
    sub_258D3E898();
    sub_258D566E4();
    sub_258D392A8(v40, &qword_27F9849E0, &qword_258D592C0);
    return (*(v44 + 8))(v43, v38);
  }
}

unint64_t sub_258D3E7A8()
{
  result = qword_27F984A08;
  if (!qword_27F984A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849E8, &qword_258D592C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A08);
  }

  return result;
}

unint64_t sub_258D3E80C()
{
  result = qword_27F984A10;
  if (!qword_27F984A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A00, &qword_258D592E0);
    sub_258D3E7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A10);
  }

  return result;
}

unint64_t sub_258D3E898()
{
  result = qword_27F984A18;
  if (!qword_27F984A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9849E0, &qword_258D592C0);
    sub_258D3E7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A18);
  }

  return result;
}

unint64_t sub_258D3E928()
{
  result = qword_27F984A20;
  if (!qword_27F984A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A28, &qword_258D592E8);
    sub_258D3E80C();
    sub_258D3E898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A20);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258D3E9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D3EA10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258D3EA7C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A30, &qword_258D59388);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  *v9 = sub_258D566B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A38, &unk_258D59390);
  sub_258D3EC60(a1, a2, a3, &v9[*(v10 + 44)]);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_258D56BC4();
  v14 = sub_258D56BC4();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_258D56BD4();
  v18 = v17;

  v20[0] = v16;
  v20[1] = v18;
  sub_258D3EF84();
  sub_258D39364();
  sub_258D56964();

  return sub_258D3EFE8(v9);
}

uint64_t sub_258D3EC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A48, &qword_258D5A980);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  sub_258D566A4();
  v27 = sub_258D568D4();
  v28 = v13;
  v29 = v14;
  v30 = v15;
  sub_258D566A4();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v31;
  *(v16 + 32) = v33;

  v17 = v12;
  v26 = v12;
  sub_258D56A74();
  v18 = v7[2];
  v19 = v32;
  v18(v32, v17, v6);
  v21 = v27;
  v20 = v28;
  *a4 = v27;
  *(a4 + 8) = v20;
  v22 = v29 & 1;
  *(a4 + 16) = v29 & 1;
  *(a4 + 24) = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A50, &qword_258D593A0);
  v18((a4 + *(v23 + 48)), v19, v6);
  sub_258D3802C(v21, v20, v22);
  v24 = v7[1];

  v24(v26, v6);
  v24(v19, v6);
  sub_258D39540(v21, v20, v22);
}

unint64_t sub_258D3EF84()
{
  result = qword_27F984A40;
  if (!qword_27F984A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A30, &qword_258D59388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A40);
  }

  return result;
}

uint64_t sub_258D3EFE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A30, &qword_258D59388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D3F050()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_258D3F090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_258D3EF20();
}

uint64_t sub_258D3F09C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984A30, &qword_258D59388);
  sub_258D3EF84();
  sub_258D39364();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258D3F114()
{
  v1 = sub_258D564A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_258D56BD4();
  }

  else
  {
    sub_258D56494();
    v8 = sub_258D56484();
    (*(v2 + 8))(v5, v1);
  }

  return v8;
}

id sub_258D3F238()
{
  v0 = [objc_opt_self() imageDescriptorNamed_];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setScale_];
  result = [v0 setDrawBorder_];
  qword_27F986FF0 = v0;
  return result;
}

unint64_t CKWrappedPreferencesSpecifier.SpecifierDisplayType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_258D3F320()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

uint64_t sub_258D3F394()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

uint64_t *sub_258D3F3D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

id CKWrappedPreferencesSpecifier.__allocating_init(specifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_258D564D4();
  *&v3[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CKWrappedPreferencesSpecifier.init(specifier:)(uint64_t a1)
{
  sub_258D564D4();
  *&v1[OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CKWrappedPreferencesSpecifier();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for CKWrappedPreferencesSpecifier()
{
  result = qword_27F984A90;
  if (!qword_27F984A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D3F588()
{
  if ([*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) propertyForKey_])
  {
    sub_258D56C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_258D3FECC(0, &qword_27F984A78, 0x277D755B8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_258D3F660(v5);
    return 0;
  }
}

uint64_t sub_258D3F660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A70, &qword_258D593B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258D3F6C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_258D56BD4();

  return v3;
}

uint64_t sub_258D3F738()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  v3 = v0;
  sub_258D56B44();
  return v5;
}

uint64_t sub_258D3F7F4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if ([*(a1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) performGetter])
  {
    sub_258D56C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_258D3F660(v8);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  *a2 = v4;
  return result;
}

void sub_258D3F8B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a4 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  v6 = sub_258D56C04();
  [v5 performSetterWithValue_];
}

void sub_258D3F918(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + 32) + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  v4 = sub_258D56C04();
  [v3 performSetterWithValue_];
}

id sub_258D3FA00()
{
  result = [*(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (result)
  {
    v2 = result;
    v3 = sub_258D56BD4();
    v5 = v4;

    if (v3 == 0x6163696669746F4ELL && v5 == 0xED0000736E6F6974)
    {
    }

    else
    {
      v7 = sub_258D56C94();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_258D3FAFC(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) propertyForKey_])
  {
    sub_258D56C84();
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
    sub_258D3F660(v6);
    return 0;
  }
}

id sub_258D3FBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  result = [v1 detailControllerClass];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_258D3FECC(0, &qword_27F984A80, 0x277D3FBA0);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v3 setSpecifier_];
      return v3;
    }
  }

  return result;
}

id CKWrappedPreferencesSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKWrappedPreferencesSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKWrappedPreferencesSpecifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258D3FDA4(uint64_t *a1@<X8>)
{
  v3 = sub_258D564A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*v1 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier) name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_258D56BD4();
    v12 = v11;
  }

  else
  {
    sub_258D56494();
    v10 = sub_258D56484();
    v12 = v13;
    (*(v4 + 8))(v7, v3);
  }

  *a1 = v10;
  a1[1] = v12;
}

uint64_t sub_258D3FECC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_258D3FF18()
{
  result = qword_27F984A88;
  if (!qword_27F984A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984A88);
  }

  return result;
}

uint64_t sub_258D3FF80()
{
  result = sub_258D564E4();
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

Swift::Void __swiftcall CKSettingsHostingViewController.viewDidLoad()()
{
  v1 = v0;
  v16.super_class = CKSettingsHostingViewController;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = type metadata accessor for SettingsContext();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_258D40A74();
  v15 = sub_258D46528();
  type metadata accessor for SettingsModel();
  sub_258D56A44();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984AA0, "fx"));

  v7 = sub_258D566D4();
  [v1 addChildViewController_];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 view];
    if (v10)
    {
      v11 = v10;
      [v9 addSubview_];

      [v7 didMoveToParentViewController_];

      v12 = *&v1[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController];
      *&v1[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController] = v7;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CKSettingsHostingViewController.viewDidLayoutSubviews()()
{
  v14.super_class = CKSettingsHostingViewController;
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void __swiftcall CKSettingsHostingViewController.init(nibName:bundle:)(CKSettingsHostingViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_258D56BC4();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id CKSettingsHostingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___CKSettingsHostingViewController_hostedViewController] = 0;
  if (a2)
  {
    v5 = sub_258D56BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = CKSettingsHostingViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id CKSettingsHostingViewController.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
  v5.super_class = CKSettingsHostingViewController;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t type metadata accessor for CKSettingsHostingViewController()
{
  result = qword_27F984AB0;
  if (!qword_27F984AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984AB0);
  }

  return result;
}

char *sub_258D40848()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  v9 = *(v0 + 10);

  v10 = *(v0 + 11);

  v11 = *(v0 + 12);

  v12 = *(v0 + 13);

  v13 = *(v0 + 14);

  v14 = OBJC_IVAR____TtC18MessagesSettingsUI15SettingsContext___observationRegistrar;
  v15 = sub_258D564E4();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  return v0;
}

uint64_t sub_258D40910()
{
  sub_258D40848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SettingsContext()
{
  result = qword_27F984AC0;
  if (!qword_27F984AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D409BC()
{
  result = sub_258D564E4();
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

void *sub_258D40A74()
{
  type metadata accessor for SummarizationManager();
  v0[2] = swift_allocObject();
  type metadata accessor for ReadReceiptsManager();
  v0[3] = swift_allocObject();
  type metadata accessor for FilterSendersManager();
  v0[4] = swift_allocObject();
  type metadata accessor for RaiseToListenManager();
  v0[5] = swift_allocObject();
  type metadata accessor for SubjectFieldManager();
  v0[6] = swift_allocObject();
  type metadata accessor for KeepMessagesManager();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(CKKeepMessagesPreferenceManager) init];
  v0[7] = v1;
  type metadata accessor for AudioExpirationManager();
  v0[8] = swift_allocObject();
  type metadata accessor for MMSManager();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(CKMMSSettingsHelper) init];
  v0[9] = v2;
  type metadata accessor for CharacterCountManager();
  v0[10] = swift_allocObject();
  type metadata accessor for LowQualityImagesManager();
  v0[11] = swift_allocObject();
  type metadata accessor for ShowContactPhotosManager();
  v0[12] = swift_allocObject();
  type metadata accessor for SendAsTextMessageManager();
  v0[13] = swift_allocObject();
  type metadata accessor for BusinessUpdatesManager();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(BusinessSettingsHelper) init];
  v0[14] = v3;
  sub_258D564D4();
  return v0;
}

void *sub_258D40C3C()
{
  v0 = type metadata accessor for SettingsContext();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_258D40A74();
  qword_27F986FF8 = v3;
  return result;
}

uint64_t sub_258D40C7C@<X0>(void *a1@<X8>)
{
  if (qword_27F984698 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F986FF8;
}

uint64_t sub_258D40CF0()
{
  sub_258D40D2C();
  sub_258D56634();
  return v1;
}

unint64_t sub_258D40D2C()
{
  result = qword_27F984AD0;
  if (!qword_27F984AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AD0);
  }

  return result;
}

void sub_258D40D90()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_258D56C34();
  [v0 setAudioMessageAutoKeep_];
}

id sub_258D40E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier_specifier);
  if ([v2 detailControllerClass] && (swift_getObjCClassMetadata(), sub_258D41034(), swift_dynamicCastMetatype()))
  {
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v3 setSpecifier_];
    return v3;
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v5 init];
  }
}

uint64_t sub_258D40EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D40FE0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D40F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D40FE0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D40FB8()
{
  sub_258D40FE0();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D40FE0()
{
  result = qword_27F984AD8;
  if (!qword_27F984AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AD8);
  }

  return result;
}

unint64_t sub_258D41034()
{
  result = qword_27F984A80;
  if (!qword_27F984A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984A80);
  }

  return result;
}

uint64_t KeepMessagesPreference.description.getter()
{
  v1 = 1918985593;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68746E6F6DLL;
  }
}

uint64_t sub_258D410F8()
{
  v1 = *v0;
  type metadata accessor for CloudSettingsSwiftUtils();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = sub_258D56BC4();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_258D56BD4();
  return v8;
}

MessagesSettingsUI::KeepMessagesPreference_optional __swiftcall KeepMessagesPreference.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_258D4126C()
{
  result = qword_27F984AE0;
  if (!qword_27F984AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AE0);
  }

  return result;
}

uint64_t sub_258D412C0()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

uint64_t sub_258D41334()
{
  v1 = *v0;
  sub_258D56CA4();
  MEMORY[0x259C9B240](v1);
  return sub_258D56CC4();
}

unint64_t sub_258D41390()
{
  result = qword_27F984AE8;
  if (!qword_27F984AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984AF0, &qword_258D597B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AE8);
  }

  return result;
}

unint64_t sub_258D41408()
{
  result = qword_27F984AF8;
  if (!qword_27F984AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984AF8);
  }

  return result;
}

uint64_t sub_258D414B8()
{
  v1 = 1918985593;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68746E6F6DLL;
  }
}

uint64_t getEnumTagSinglePayload for KeepMessagesPreference(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KeepMessagesPreference(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258D41690()
{
  result = qword_27F984B00;
  if (!qword_27F984B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B00);
  }

  return result;
}

id sub_258D416E4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 smsRelayDevicesController];

  return v1;
}

uint64_t sub_258D41744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D41834();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D417A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D41834();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D4180C()
{
  sub_258D41834();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D41834()
{
  result = qword_27F984B08;
  if (!qword_27F984B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B08);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_258D4189C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D418E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258D41950@<X0>(void *a1@<X8>)
{
  sub_258D40D2C();
  result = sub_258D56634();
  *a1 = v3;
  return result;
}

uint64_t sub_258D419A0(uint64_t *a1)
{
  v2 = *a1;
  sub_258D40D2C();

  return sub_258D56644();
}

uint64_t sub_258D41A00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984B10, &qword_258D59A58);
  sub_258D56A64();
  sub_258D545B8(v11, *(&v11 + 1), v12, &v11);
  KeyPath = swift_getKeyPath();
  v5 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  v6 = v15;
  v7 = v12;
  *a1 = v11;
  *(a1 + 16) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v3;
}

uint64_t sub_258D41AA4@<X0>(void *a1@<X8>)
{
  sub_258D40D2C();
  result = sub_258D56634();
  *a1 = v3;
  return result;
}

unint64_t sub_258D41AFC()
{
  result = qword_27F984B18;
  if (!qword_27F984B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984B20, &qword_258D59A88);
    sub_258D41B88();
    sub_258D41BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B18);
  }

  return result;
}

unint64_t sub_258D41B88()
{
  result = qword_27F984B28;
  if (!qword_27F984B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B28);
  }

  return result;
}

unint64_t sub_258D41BDC()
{
  result = qword_27F984B30;
  if (!qword_27F984B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984B38, &unk_258D59A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B30);
  }

  return result;
}

uint64_t sub_258D41C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_258D56BC4();

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_258D56BC4();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_258D56C84();

      swift_unknownObjectRelease();
      sub_258D41DE0(v12, v13);
      sub_258D41DE0(v13, v12);
      if (swift_dynamicCast())
      {
        a4 = v11;
      }
    }

    else
    {
    }
  }

  return a4 & 1;
}

_OWORD *sub_258D41DE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258D41E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 35);
  return result;
}

uint64_t sub_258D41F14()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 16);
}

uint64_t sub_258D41FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_258D42084(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42194()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 17);
}

uint64_t sub_258D42234@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_258D42304(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42414()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 19);
}

uint64_t sub_258D424B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_258D42584(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42694()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 20);
}

uint64_t sub_258D42734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_258D42804(uint64_t result)
{
  if (*(v1 + 20) == (result & 1))
  {
    *(v1 + 20) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42914()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 32);
}

uint64_t sub_258D429B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_258D42A84(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42B94()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 33);
}

uint64_t sub_258D42C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_258D42D04(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D42E14()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 34);
}

uint64_t sub_258D42EB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_258D42F84(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43094()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 35);
}

uint64_t sub_258D43134(uint64_t result)
{
  if (*(v1 + 35) == (result & 1))
  {
    *(v1 + 35) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43244()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 37);
}

uint64_t sub_258D432E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 37);
  return result;
}

uint64_t sub_258D433B4(uint64_t result)
{
  if (*(v1 + 37) == (result & 1))
  {
    *(v1 + 37) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D434CC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 38);
}

uint64_t sub_258D4356C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 38);
  return result;
}

uint64_t sub_258D4363C(uint64_t result)
{
  if (*(v1 + 38) == (result & 1))
  {
    *(v1 + 38) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4374C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 39);
}

uint64_t sub_258D437EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 39);
  return result;
}

uint64_t sub_258D438BC(uint64_t result)
{
  if (*(v1 + 39) == (result & 1))
  {
    *(v1 + 39) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D439CC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 40);
}

uint64_t sub_258D43A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_258D43B3C(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43C4C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a1 = *(v1 + 42);
  return result;
}

uint64_t sub_258D43CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 42);
  return result;
}

unsigned __int8 *sub_258D43D9C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_258D43DD4(&v4);
}

unsigned __int8 *sub_258D43DD4(unsigned __int8 *result)
{
  if (*(v1 + 42) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D43EDC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 43);
}

uint64_t sub_258D43F7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 43);
  return result;
}

uint64_t sub_258D4404C(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4415C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 44);
}

uint64_t sub_258D441FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_258D442CC(uint64_t result)
{
  if (*(v1 + 44) == (result & 1))
  {
    *(v1 + 44) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D443DC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 45);
}

uint64_t sub_258D4447C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 45);
  return result;
}

uint64_t sub_258D4454C(uint64_t result)
{
  if (*(v1 + 45) == (result & 1))
  {
    *(v1 + 45) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D4465C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 46);
}

uint64_t sub_258D446FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 46);
  return result;
}

uint64_t sub_258D447CC(uint64_t result)
{
  if (*(v1 + 46) == (result & 1))
  {
    *(v1 + 46) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D448DC()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 47);
}

uint64_t sub_258D4497C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 47);
  return result;
}

uint64_t sub_258D44A4C(uint64_t result)
{
  if (*(v1 + 47) == (result & 1))
  {
    *(v1 + 47) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t sub_258D44B5C()
{
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  return *(v0 + 50);
}

uint64_t sub_258D44BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_258D44CCC(uint64_t result)
{
  if (*(v1 + 50) == (result & 1))
  {
    *(v1 + 50) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258D46A8C(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564B4();
  }

  return result;
}

uint64_t SettingsModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18MessagesSettingsUI13SettingsModel___observationRegistrar;
  v3 = sub_258D564E4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SettingsModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC18MessagesSettingsUI13SettingsModel___observationRegistrar;
  v3 = sub_258D564E4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for SettingsModel()
{
  result = qword_27F984B48;
  if (!qword_27F984B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258D44F3C()
{
  result = sub_258D564E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_258D4509C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_258D4512C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258D4521C()
{
  v1 = *v0;
  sub_258D56CA4();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C9B240](v2);
  return sub_258D56CC4();
}

uint64_t sub_258D4526C()
{
  if (*v0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x259C9B240](v1);
}

uint64_t sub_258D452A4()
{
  v1 = *v0;
  sub_258D56CA4();
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C9B240](v2);
  return sub_258D56CC4();
}

void *sub_258D452F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_258D45310(uint64_t *a1@<X8>)
{
  v2 = 3;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_258D453A4()
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_258D56BD4();
  return v5;
}

uint64_t sub_258D45528()
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_258D56BD4();
  return v5;
}

uint64_t sub_258D45640()
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_258D56BD4();
  return v5;
}

unint64_t sub_258D45750()
{
  result = qword_27F984B58;
  if (!qword_27F984B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B58);
  }

  return result;
}

unint64_t sub_258D45828()
{
  result = qword_27F984B70;
  if (!qword_27F984B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B70);
  }

  return result;
}

unint64_t sub_258D4587C()
{
  result = qword_27F984B78;
  if (!qword_27F984B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B78);
  }

  return result;
}

unint64_t sub_258D458D0()
{
  result = qword_27F984B80;
  if (!qword_27F984B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B80);
  }

  return result;
}

unint64_t sub_258D45928()
{
  result = qword_27F984B88;
  if (!qword_27F984B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B88);
  }

  return result;
}

unint64_t sub_258D45980()
{
  result = qword_27F984B90;
  if (!qword_27F984B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984B90);
  }

  return result;
}

unint64_t sub_258D45A58()
{
  result = qword_27F984BA8;
  if (!qword_27F984BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BA8);
  }

  return result;
}

unint64_t sub_258D45AAC()
{
  result = qword_27F984BB0;
  if (!qword_27F984BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BB0);
  }

  return result;
}

unint64_t sub_258D45B00()
{
  result = qword_27F984BB8;
  if (!qword_27F984BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BB8);
  }

  return result;
}

unint64_t sub_258D45B58()
{
  result = qword_27F984BC0;
  if (!qword_27F984BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BC0);
  }

  return result;
}

unint64_t sub_258D45C34()
{
  result = qword_27F984BD8;
  if (!qword_27F984BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BD8);
  }

  return result;
}

unint64_t sub_258D45C88()
{
  result = qword_27F984BE0;
  if (!qword_27F984BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BE0);
  }

  return result;
}

unint64_t sub_258D45CDC()
{
  result = qword_27F984BE8;
  if (!qword_27F984BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BE8);
  }

  return result;
}

unint64_t sub_258D45D38()
{
  result = qword_27F984BF0;
  if (!qword_27F984BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984BF0);
  }

  return result;
}

uint64_t sub_258D45E10(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_258D45E74()
{
  result = qword_27F984C08;
  if (!qword_27F984C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C08);
  }

  return result;
}

unint64_t sub_258D45EC8()
{
  result = qword_27F984C10;
  if (!qword_27F984C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C10);
  }

  return result;
}

unint64_t sub_258D45F1C()
{
  result = qword_27F984C18;
  if (!qword_27F984C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C18);
  }

  return result;
}

unint64_t sub_258D45F74()
{
  result = qword_27F984C20;
  if (!qword_27F984C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C20);
  }

  return result;
}

unint64_t sub_258D45FCC()
{
  result = qword_27F984C28;
  if (!qword_27F984C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984C28);
  }

  return result;
}

uint64_t sub_258D46050(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unsigned __int8 *sub_258D46210(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_258D43DD4(&v4);
}

uint64_t sub_258D46528()
{
  v0 = type metadata accessor for SettingsModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_258D564D4();
  *(v3 + 16) = 1;
  *(v3 + 18) = 1;
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 areReadReceiptsEnabled];

  *(v3 + 19) = v6;
  *(v3 + 20) = [objc_opt_self() messageSummarizationEnabled];
  *(v3 + 24) = &unk_286A13010;
  v7 = [v4 sharedInstance];
  v8 = [v7 getAudioMessageAutoKeep];

  v9 = sub_258D56C24();
  *(v3 + 32) = v9 == 3;
  *(v3 + 33) = sub_258D41C64(0, 0xD000000000000014, 0x8000000258D5CD20, 1) & 1;
  *(v3 + 34) = sub_258D41C64(2, 0xD000000000000019, 0x8000000258D5CD40, 0) & 1;
  v10 = type metadata accessor for CheckInDataView.Model();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_258D564D4();
  swift_getKeyPath();
  v36 = v13;
  sub_258D46A8C(&qword_27F984798, type metadata accessor for CheckInDataView.Model);
  sub_258D564C4();

  v14 = objc_opt_self();
  if ([v14 hasUserCompletedOnboarding])
  {
    v15 = [v14 shareAllLocations];

    if (v15)
    {
      v16 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = 1;
LABEL_6:
  *(v3 + 35) = v16;
  *(v3 + 36) = 1;
  v17 = [v4 sharedInstance];
  v18 = [v17 _sharedWithYouEnabled];

  *(v3 + 37) = v18;
  *(v3 + 38) = 0;
  *(v3 + 39) = sub_258D41C64(0, 0xD000000000000011, 0x8000000258D5CD60, 1) & 1;
  v19 = [objc_opt_self() sharedFeatureFlags];
  v20 = [v19 isIntroductionsEnabled];

  v21 = "ShowContactPhotos";
  if (v20)
  {
    v21 = "MMSShowCharacterCount";
    v22 = 0xD000000000000015;
  }

  else
  {
    v22 = 0xD00000000000001ELL;
  }

  *(v3 + 40) = sub_258D41C64(0, v22, v21 | 0x8000000000000000, 0) & 1;
  *(v3 + 41) = 1;
  v23 = [objc_opt_self() keepMessagesPreference];
  sub_258D3FECC(0, &qword_27F984C40, 0x277D82BB8);
  sub_258D3FECC(0, &qword_27F984C48, 0x277CCABB0);
  v24 = sub_258D56C54();
  v25 = sub_258D56C64();

  if (v25)
  {

    v26 = 0;
  }

  else
  {
    v27 = sub_258D56C54();
    v28 = sub_258D56C64();

    if (v28)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }
  }

  *(v3 + 42) = v26;
  *(v3 + 43) = 0;
  v29 = [objc_allocWithZone(CKMMSSettingsHelper) init];
  v30 = [v29 isMMSEnabled];

  v35 = 2;
  result = MEMORY[0x259C9B1A0](v30, &v35);
  v32 = v35;
  if (v35 == 2)
  {
    __break(1u);
  }

  else
  {

    *(v3 + 44) = v32 & 1;
    *(v3 + 45) = sub_258D41C64(0, 0x53776F6853534D4DLL, 0xEE007463656A6275, 0) & 1;
    *(v3 + 46) = sub_258D41C64(0, 0xD000000000000015, 0x8000000258D5CDA0, 0) & 1;
    *(v3 + 47) = sub_258D41C64(0, 0x4D537341646E6553, 0xE900000000000053, 0) & 1;
    *(v3 + 48) = 257;
    v33 = [objc_allocWithZone(BusinessSettingsHelper) init];
    v34 = [v33 areBusinessUpdatesEnabled];

    *(v3 + 50) = v34;
    *(v3 + 56) = 0;
    *(v3 + 64) = 65793;
    *(v3 + 68) = 1;
    return v3;
  }

  return result;
}

uint64_t sub_258D46A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258D46BAC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_258D46D28(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
  }
}

void sub_258D46E78(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

void sub_258D47000(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_258D56BC4();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {
    v11 = sub_258D56BC4();
    [v10 setBool:1 forKey:v11];

    [v10 synchronize];
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = sub_258D56BC4();
    CFNotificationCenterPostNotification(v12, v13, 0, 0, 1u);
  }
}

void sub_258D4722C(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

void sub_258D473B4(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_258D56BC4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_258D56BC4();
    [v4 setBool:a1 & 1 forKey:v5];

    [v4 synchronize];
    center = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v6, 0, 0, 1u);

    v7 = sub_258D56BC4();
    CFNotificationCenterPostNotification(center, v7, 0, 0, 1u);
  }
}

uint64_t sub_258D47548()
{
  v1 = sub_258D56624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_258D56C44();
    v8 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v11, &qword_27F984D90, &qword_258D5A9B0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_258D476A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C60, &qword_258D5A870);
  v3 = *(*(v130 - 1) + 64);
  MEMORY[0x28223BE20](v130);
  v128 = (&v119 - v4);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C68, &qword_258D5A878);
  v5 = *(*(v129 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v129);
  v160 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v119 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C70, &qword_258D5A880);
  v126 = *(v127 - 1);
  v9 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v120 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C78, &qword_258D5A888);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v159 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = (&v119 - v15);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C80, &qword_258D5A890);
  v166 = *(v158 - 8);
  v16 = v166[8];
  v17 = MEMORY[0x28223BE20](v158);
  v157 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v151 = &v119 - v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C88, &qword_258D5A898);
  v165 = *(v156 - 8);
  v20 = v165[8];
  v21 = MEMORY[0x28223BE20](v156);
  v155 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v119 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C90, &qword_258D5A8A0);
  v164 = *(v154 - 8);
  v24 = v164[8];
  v25 = MEMORY[0x28223BE20](v154);
  v153 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = &v119 - v27;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C98, &qword_258D5A8A8);
  v163 = *(v152 - 8);
  v28 = v163[8];
  v29 = MEMORY[0x28223BE20](v152);
  v150 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v145 = &v119 - v31;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CA0, &qword_258D5A8B0);
  v122 = *(v132 - 1);
  v32 = *(v122 + 64);
  MEMORY[0x28223BE20](v132);
  v119 = &v119 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CA8, &qword_258D5A8B8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v147 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v142 = &v119 - v38;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CB0, &qword_258D5A8C0);
  v162 = *(v146 - 8);
  v39 = v162[8];
  v40 = MEMORY[0x28223BE20](v146);
  v144 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v119 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CB8, &qword_258D5A8C8);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v119 - v46;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CC0, &qword_258D5A8D0);
  v138 = *(v143 - 8);
  v48 = v138[8];
  v49 = MEMORY[0x28223BE20](v143);
  v141 = &v119 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v119 - v51;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CC8, &qword_258D5A8D8);
  v135 = *(v137 - 8);
  v53 = v135[8];
  v54 = MEMORY[0x28223BE20](v137);
  v140 = &v119 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = &v119 - v56;
  v169 = a1;
  sub_258D4929C(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CD0, &qword_258D5A8E0);
  sub_258D54788();
  v133 = v57;
  sub_258D56B64();
  v168 = a1;
  sub_258D49F10(v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984CE8, &qword_258D5A8E8);
  sub_258D394F8(&qword_27F984CF0, &qword_27F984CE8, &qword_258D5A8E8);
  sub_258D54868();
  v134 = v52;
  sub_258D56B94();
  v167 = a1;
  sub_258D4AAFC(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9847F0, &unk_258D5A900);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984708, &qword_258D58EE8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984700, &qword_258D58EE0);
  v61 = sub_258D56684();
  v62 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  v63 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v170 = v60;
  v171 = v61;
  v125 = v61;
  v172 = v62;
  v173 = v63;
  v124 = v63;
  v64 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = v59;
  v171 = MEMORY[0x277D839B0];
  v66 = v142;
  v172 = OpaqueTypeConformance2;
  v173 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_258D554A8(&qword_27F984818, &qword_27F9847F0, &unk_258D5A900);
  v136 = v43;
  v67 = v122;
  v121 = v58;
  sub_258D56B94();
  v177 = *(a1 + 16);
  v178 = *(a1 + 32);
  v174 = *(a1 + 16);
  v175 = *(a1 + 32);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v170);

  v68 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v60) = [v68 generativeModelsAvailable];

  if (v60)
  {
    MEMORY[0x28223BE20](v69);
    v70 = v119;
    sub_258D56B84();
    (*(v67 + 32))(v66, v70, v132);
    v64 = 0;
  }

  v71 = 1;
  v72 = (*(v67 + 56))(v66, v64, 1, v132);
  MEMORY[0x28223BE20](v72);
  sub_258D4E180(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D18, &qword_258D5A910);
  sub_258D394F8(&qword_27F984D20, &qword_27F984D18, &qword_258D5A910);
  v73 = sub_258D56B94();
  MEMORY[0x28223BE20](v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D28, &qword_258D5A918);
  sub_258D394F8(&qword_27F984D30, &qword_27F984D28, &qword_258D5A918);
  v74 = sub_258D56B84();
  MEMORY[0x28223BE20](v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D38, &qword_258D5A920);
  sub_258D394F8(&qword_27F984D40, &qword_27F984D38, &qword_258D5A920);
  v75 = sub_258D56B84();
  MEMORY[0x28223BE20](v75);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v77 = [objc_opt_self() bundleForClass_];
  v78 = sub_258D56BC4();
  v79 = sub_258D56BC4();
  v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

  v81 = sub_258D56BD4();
  v83 = v82;

  *&v174 = v81;
  *(&v174 + 1) = v83;
  sub_258D39364();
  *&v174 = sub_258D568E4();
  *(&v174 + 1) = v84;
  LOBYTE(v175) = v85 & 1;
  v176 = v86;
  sub_258D53134(&v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D48, &qword_258D5A928);
  sub_258D394F8(&qword_27F984D50, &qword_27F984D48, &qword_258D5A928);
  sub_258D56B74();
  v174 = v177;
  v175 = v178;
  MEMORY[0x259C9B090](&v170, v123);

  v87 = [objc_opt_self() sharedInstance];
  v88 = [v87 shouldShowSatelliteDemoModeButton];

  v89 = v127;
  v90 = v126;
  if (v88)
  {
    sub_258D533F0(&v174);
    sub_258D53518(&v170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984A48, &qword_258D5A980);
    sub_258D394F8(&qword_27F984D88, &qword_27F984A48, &qword_258D5A980);
    v91 = v120;
    sub_258D56B74();
    (*(v90 + 32))(v161, v91, v89);
    v71 = 0;
  }

  v92 = (*(v90 + 56))(v161, v71, 1, v89);
  MEMORY[0x28223BE20](v92);
  sub_258D54174(&v174);
  sub_258D542A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984D60, &qword_258D5A938);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984D68, &qword_258D5A940);
  v95 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940);
  v170 = v94;
  v171 = v125;
  v172 = v95;
  v173 = v124;
  v96 = swift_getOpaqueTypeConformance2();
  v170 = v93;
  v171 = MEMORY[0x277D839B0];
  v172 = v96;
  v173 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_258D394F8(&qword_27F984D78, &qword_27F984C60, &qword_258D5A870);
  v97 = v139;
  sub_258D56B74();
  v98 = sub_258D56834();
  KeyPath = swift_getKeyPath();
  v100 = (v97 + *(v129 + 36));
  *v100 = KeyPath;
  v100[1] = v98;
  v125 = v135[2];
  v101 = v137;
  v125(v140, v133, v137);
  v132 = v138[2];
  v132(v141, v134, v143);
  v130 = v162[2];
  v130(v144, v136, v146);
  sub_258D39240(v142, v147, &qword_27F984CA8, &qword_258D5A8B8);
  v129 = v163[2];
  (v129)(v150, v145, v152);
  v128 = v164[2];
  v128(v153, v148, v154);
  v127 = v165[2];
  (v127)(v155, v149, v156);
  v126 = v166[2];
  (v126)(v157, v151, v158);
  sub_258D39240(v161, v159, &qword_27F984C78, &qword_258D5A888);
  sub_258D39240(v97, v160, &qword_27F984C68, &qword_258D5A878);
  v102 = v131;
  v125(v131, v140, v101);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D80, &qword_258D5A978);
  v132((v102 + v103[12]), v141, v143);
  v130((v102 + v103[16]), v144, v146);
  sub_258D39240(v147, v102 + v103[20], &qword_27F984CA8, &qword_258D5A8B8);
  v104 = v152;
  (v129)(v102 + v103[24], v150, v152);
  v105 = v154;
  v128((v102 + v103[28]), v153, v154);
  v106 = v156;
  (v127)(v102 + v103[32], v155, v156);
  v107 = v158;
  (v126)(v102 + v103[36], v157, v158);
  sub_258D39240(v159, v102 + v103[40], &qword_27F984C78, &qword_258D5A888);
  sub_258D39240(v160, v102 + v103[44], &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v139, &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v161, &qword_27F984C78, &qword_258D5A888);
  v108 = v166[1];
  ++v166;
  v161 = v108;
  (v108)(v151, v107);
  v109 = v165[1];
  ++v165;
  v151 = v109;
  (v109)(v149, v106);
  v110 = v164[1];
  ++v164;
  v110(v148, v105);
  v111 = v163[1];
  ++v163;
  v111(v145, v104);
  sub_258D392A8(v142, &qword_27F984CA8, &qword_258D5A8B8);
  v112 = v162[1];
  ++v162;
  v113 = v146;
  v112(v136, v146);
  v114 = v138[1];
  v115 = v143;
  v114(v134, v143);
  v116 = v135[1];
  v117 = v137;
  v116(v133, v137);
  sub_258D392A8(v160, &qword_27F984C68, &qword_258D5A878);
  sub_258D392A8(v159, &qword_27F984C78, &qword_258D5A888);
  (v161)(v157, v158);
  (v151)(v155, v156);
  v110(v153, v154);
  v111(v150, v152);
  sub_258D392A8(v147, &qword_27F984CA8, &qword_258D5A8B8);
  v112(v144, v113);
  v114(v141, v115);
  return (v116)(v140, v117);
}

uint64_t sub_258D490FC(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v6, v1);

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 systemPolicySpecifiers];

  type metadata accessor for CKWrappedPreferencesSpecifier();
  v4 = sub_258D56BF4();

  *&v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984FA0, &qword_258D5AE30);
  sub_258D394F8(&qword_27F984FA8, &qword_27F984FA0, &qword_258D5AE30);
  sub_258D5480C();
  sub_258D555E4(&qword_27F984FB0, type metadata accessor for CKWrappedPreferencesSpecifier);
  return sub_258D56B54();
}

id sub_258D49290@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_258D4929C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D493C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E20, &qword_258D5AB10);
  v78 = *(v76 - 8);
  v3 = v78[8];
  v4 = MEMORY[0x28223BE20](v76);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v77 = *(v75 - 8);
  v7 = v77[8];
  v8 = MEMORY[0x28223BE20](v75);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v59 - v10;
  v64 = sub_258D56684();
  v65 = *(v64 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v60);
  v17 = &v59 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v72 = *(v71 - 8);
  v18 = v72[8];
  v19 = MEMORY[0x28223BE20](v71);
  v70 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v68 = &v59 - v21;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = ObjCClassFromMetadata;
  v62 = objc_opt_self();
  v23 = [v62 bundleForClass_];
  v24 = sub_258D56BC4();
  v61 = "MPLE_DATA_FOOTER";
  v25 = sub_258D56BC4();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  v27 = sub_258D56BD4();
  v29 = v28;

  *&v85 = v27;
  *(&v85 + 1) = v29;
  v83 = *(a1 + 16);
  v84 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v30 = v81;
  v31 = v82;
  swift_getKeyPath();
  v83 = v30;
  v84 = v31;
  sub_258D56B24();

  v59 = sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v32 = v68;
  v33 = v60;
  v34 = v64;
  sub_258D56934();
  (*(v65 + 8))(v13, v34);
  (*(v14 + 8))(v17, v33);
  v81 = *(a1 + 40);
  v85 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  v35 = v69;
  sub_258D56584();
  v36 = [v62 bundleForClass_];
  v37 = sub_258D56BC4();
  v38 = sub_258D56BC4();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  v40 = sub_258D56BD4();
  v42 = v41;

  *&v85 = v40;
  *(&v85 + 1) = v42;
  v80 = v81;
  sub_258D56A64();
  v43 = v74;
  sub_258D56594();
  v44 = v72[2];
  v45 = v70;
  v46 = v71;
  v44(v70, v32, v71);
  v65 = v77[2];
  v47 = v73;
  (v65)(v73, v35, v75);
  v48 = v78[2];
  v49 = v66;
  v48(v66, v43, v76);
  v50 = v67;
  v44(v67, v45, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F98, &qword_258D5AE00);
  v52 = v75;
  (v65)(&v50[*(v51 + 48)], v47, v75);
  v53 = v76;
  v48(&v50[*(v51 + 64)], v49, v76);
  v54 = v78[1];
  v54(v74, v53);
  v55 = v77[1];
  v55(v69, v52);
  v56 = v72[1];
  v57 = v71;
  v56(v68, v71);
  v54(v49, v53);
  v55(v73, v52);
  return (v56)(v70, v57);
}

uint64_t sub_258D49D2C(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v15, v10);
  v11 = v15;
  swift_getKeyPath();
  *&v16 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 17);

  *&v16 = sub_258D45640();
  *(&v16 + 1) = v13;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D49F10@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D08, &qword_258D5A8F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-v5];
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_258D56BC4();
  v10 = sub_258D56BC4();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_258D56BD4();
  v14 = v13;

  *v6 = sub_258D566B4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  LODWORD(v11) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F60, &qword_258D5AD88) + 44);
  v17 = v12;
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F68, &qword_258D5AD90);
  sub_258D553C4();
  sub_258D56584();

  sub_258D55508(v6, a1);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_258D4A148@<X0>(uint64_t a1@<X8>)
{
  sub_258D4A1B0(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_258D4A1B0@<X0>(uint64_t a1@<X8>)
{
  sub_258D39364();

  v1 = sub_258D568E4();
  v3 = v2;
  v5 = v4;
  sub_258D56834();
  v6 = sub_258D568C4();
  v8 = v7;
  v10 = v9;

  sub_258D39540(v1, v3, v5 & 1);

  v11 = objc_opt_self();
  v12 = [v11 systemGrayColor];
  sub_258D569C4();
  v13 = sub_258D568A4();
  v43 = v14;
  v44 = v13;
  v42 = v15;
  sub_258D39540(v6, v8, v10 & 1);

  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_258D56BC4();
  v19 = sub_258D56BC4();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  sub_258D56BD4();
  v21 = sub_258D568E4();
  v23 = v22;
  LOBYTE(v1) = v24;
  sub_258D56834();
  v25 = sub_258D568C4();
  v27 = v26;
  v29 = v28;

  sub_258D39540(v21, v23, v1 & 1);

  v30 = [v11 systemBlueColor];
  sub_258D569C4();
  v31 = sub_258D568A4();
  v33 = v32;
  LOBYTE(v21) = v34;
  sub_258D39540(v25, v27, v29 & 1);

  v40 = sub_258D568B4();
  v41 = v35;
  v37 = v36;
  LOBYTE(v1) = v38;
  sub_258D39540(v31, v33, v21 & 1);

  sub_258D39540(v44, v43, v42 & 1);

  *a1 = v40;
  *(a1 + 8) = v37;
  *(a1 + 16) = v1 & 1;
  *(a1 + 24) = v41;
  return result;
}

uint64_t sub_258D4A544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = sub_258D56684();
  v40 = *(v39 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v38 = *(v37 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v12;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_258D56BC4();
  v16 = sub_258D56BC4();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_258D56BD4();
  v20 = v19;

  v47[3] = v18;
  v47[4] = v20;
  v48 = *(a1 + 16);
  v49 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = *(a1 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v22 = v47[0];
  v23 = v47[1];
  v24 = v47[2];
  swift_getKeyPath();
  *&v44 = v22;
  *(&v44 + 1) = v23;
  v45 = v24;
  sub_258D56B24();

  sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  v25 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  v26 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v27 = v36;
  v28 = v37;
  v29 = v39;
  sub_258D56934();
  (*(v40 + 8))(v5, v29);
  (*(v38 + 8))(v8, v28);
  v44 = v48;
  v45 = v49;
  MEMORY[0x259C9B090](v47, v21);
  v30 = v47[0];
  swift_getKeyPath();
  *&v44 = v30;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v18) = *(v30 + 19);

  LOBYTE(v47[0]) = v18;
  v31 = swift_allocObject();
  v32 = *(a1 + 48);
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = *(a1 + 64);
  v33 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v33;
  sub_258D549BC(a1, &v44);
  *&v44 = v28;
  *(&v44 + 1) = v29;
  v45 = v25;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_258D56984();

  return (*(v42 + 8))(v27, v34);
}

uint64_t sub_258D4AAFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v9 & 1;
  a1[3] = v10;
  return result;
}

uint64_t sub_258D4AC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = sub_258D56684();
  v40 = *(v39 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v38 = *(v37 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v12;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_258D56BC4();
  v16 = sub_258D56BC4();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_258D56BD4();
  v20 = v19;

  v47[3] = v18;
  v47[4] = v20;
  v48 = *(a1 + 16);
  v49 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = *(a1 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v22 = v47[0];
  v23 = v47[1];
  v24 = v47[2];
  swift_getKeyPath();
  *&v44 = v22;
  *(&v44 + 1) = v23;
  v45 = v24;
  sub_258D56B24();

  sub_258D39364();
  sub_258D56AE4();
  sub_258D56674();
  v25 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  v26 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v27 = v36;
  v28 = v37;
  v29 = v39;
  sub_258D56934();
  (*(v40 + 8))(v5, v29);
  (*(v38 + 8))(v8, v28);
  v44 = v48;
  v45 = v49;
  MEMORY[0x259C9B090](v47, v21);
  v30 = v47[0];
  swift_getKeyPath();
  *&v44 = v30;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v18) = *(v30 + 20);

  LOBYTE(v47[0]) = v18;
  v31 = swift_allocObject();
  v32 = *(a1 + 48);
  *(v31 + 48) = *(a1 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = *(a1 + 64);
  v33 = *(a1 + 16);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v33;
  sub_258D549BC(a1, &v44);
  *&v44 = v28;
  *(&v44 + 1) = v29;
  v45 = v25;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_258D56984();

  return (*(v42 + 8))(v27, v34);
}

id sub_258D4B1DC(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *a3;
  v15 = *a3;
  v16 = *(a3 + 8);
  if (v16 == 1)
  {
    v14[1] = v11;
  }

  else
  {

    sub_258D56C44();
    v12 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v15, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v9, v5);
  }

  return [objc_opt_self() setMessageSummarizationUserPreference_];
}

uint64_t sub_258D4B380@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v175 = a1;
  v186 = a2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E98, &qword_258D5AC08);
  v2 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v163 - v3;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EA0, &qword_258D5AC10);
  v195 = *(v196 - 1);
  v4 = *(v195 + 64);
  MEMORY[0x28223BE20](v196);
  v172 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EA8, &qword_258D5AC18);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v206 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v207 = &v163 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EB0, &qword_258D5AC20);
  v183 = *(v184 - 8);
  v11 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v171 = &v163 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EB8, &qword_258D5AC28);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v205 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v214 = &v163 - v17;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v178 = *(v180 - 8);
  v18 = *(v178 + 64);
  MEMORY[0x28223BE20](v180);
  v177 = &v163 - v19;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v181 = *(v182 - 8);
  v20 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v163 - v21;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v185 = *(v204 - 8);
  v22 = *(v185 + 64);
  v23 = MEMORY[0x28223BE20](v204);
  v211 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v210 = &v163 - v25;
  *&v191 = sub_258D56684();
  v190 = *(v191 - 8);
  v26 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v189 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v165 = *(v167 - 8);
  v28 = *(v165 + 64);
  MEMORY[0x28223BE20](v167);
  v164 = &v163 - v29;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v169 = *(v170 - 8);
  v30 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v163 - v31;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v188 = *(v187 - 8);
  v32 = *(v188 + 64);
  MEMORY[0x28223BE20](v187);
  v166 = &v163 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EC0, &qword_258D5AC30);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v203 = &v163 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v213 = &v163 - v38;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EC8, &qword_258D5AC38);
  v201 = *(v202 - 8);
  v39 = v201[8];
  v40 = MEMORY[0x28223BE20](v202);
  v209 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v208 = &v163 - v42;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984ED0, &qword_258D5AC40);
  v43 = *(*(v212 - 1) + 64);
  MEMORY[0x28223BE20](v212);
  v176 = &v163 - v44;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984ED8, &qword_258D5AC48);
  v199 = *(v200 - 8);
  v45 = v199[8];
  v46 = MEMORY[0x28223BE20](v200);
  v198 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v163 - v48;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v52 = [v51 bundleForClass_];
  v53 = sub_258D56BC4();
  v54 = sub_258D56BC4();
  v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

  v56 = sub_258D56BD4();
  v58 = v57;

  v59 = v213;
  *&v222 = v56;
  *(&v222 + 1) = v58;
  v60 = sub_258D565B4();
  v61 = sub_258D567E4();
  v218 = v60;
  LOBYTE(v219) = v61;
  v193 = v51;
  v194 = ObjCClassFromMetadata;
  v62 = [v51 bundleForClass_];
  v63 = sub_258D56BC4();
  v192 = "MPLE_DATA_FOOTER";
  v64 = sub_258D56BC4();
  v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

  v66 = sub_258D56BD4();
  v68 = v67;

  *v216 = v66;
  *&v216[8] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EE0, &qword_258D5AC50);
  v70 = sub_258D550A4(&qword_27F984EE8, &qword_27F984EE0, &qword_258D5AC50, sub_258D38050);
  v71 = sub_258D39364();
  v72 = MEMORY[0x277D837D0];
  sub_258D56964();

  *v216 = v69;
  *&v216[8] = v72;
  *&v216[16] = v70;
  *&v217 = v71;
  v73 = 1;
  swift_getOpaqueTypeConformance2();
  v197 = v49;
  sub_258D56594();
  v74 = v175;
  v215 = v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EF0, &qword_258D5AC58);
  sub_258D54F00();
  sub_258D56884();
  v222 = *(v74 + 16);
  v223 = *(v74 + 32);
  *v216 = *(v74 + 16);
  *&v216[16] = *(v74 + 32);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v218);

  v176 = objc_opt_self();
  v76 = [v176 sharedInstance];
  LODWORD(v66) = [v76 isRaiseGestureSupported];

  v212 = v75;
  if (v66)
  {
    *v216 = v222;
    *&v216[16] = v223;
    sub_258D56B34();
    v77 = v218;
    v78 = v219;
    swift_getKeyPath();
    *v216 = v77;
    *&v216[8] = v78;
    sub_258D56B24();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
    sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8);
    v79 = v164;
    sub_258D56AD4();
    v80 = v189;
    sub_258D56674();
    v81 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940);
    v82 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
    v83 = v168;
    v84 = v167;
    v85 = v191;
    sub_258D56934();
    (*(v190 + 8))(v80, v85);
    (*(v165 + 8))(v79, v84);
    *v216 = v222;
    *&v216[16] = v223;
    MEMORY[0x259C9B090](&v218, v212);
    v86 = v218;
    swift_getKeyPath();
    *v216 = v86;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564C4();

    LOBYTE(v79) = *(v86 + 33);

    LOBYTE(v218) = v79;
    v87 = swift_allocObject();
    v88 = *(v74 + 48);
    *(v87 + 48) = *(v74 + 32);
    *(v87 + 64) = v88;
    *(v87 + 80) = *(v74 + 64);
    v89 = *(v74 + 16);
    *(v87 + 16) = *v74;
    *(v87 + 32) = v89;
    sub_258D549BC(v74, v216);
    *v216 = v84;
    *&v216[8] = v85;
    v59 = v213;
    *&v216[16] = v81;
    *&v217 = v82;
    swift_getOpaqueTypeConformance2();
    v90 = v166;
    v91 = v170;
    sub_258D56984();

    (*(v169 + 8))(v83, v91);
    (*(v188 + 32))(v59, v90, v187);
    v73 = 0;
  }

  (*(v188 + 56))(v59, v73, 1, v187);
  v92 = [v193 bundleForClass_];
  v93 = sub_258D56BC4();
  v94 = sub_258D56BC4();
  v95 = [v92 localizedStringForKey:v93 value:0 table:v94];

  v96 = sub_258D56BD4();
  v98 = v97;

  v220 = v96;
  v221 = v98;
  *v216 = v222;
  *&v216[16] = v223;
  sub_258D56B34();
  v99 = v218;
  v100 = v219;
  swift_getKeyPath();
  *v216 = v99;
  *&v216[8] = v100;
  sub_258D56B24();

  v101 = v177;
  v188 = v71;
  sub_258D56AE4();
  v102 = v189;
  sub_258D56674();
  v103 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  v104 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v105 = v179;
  v106 = v180;
  v107 = v191;
  sub_258D56934();
  (*(v190 + 8))(v102, v107);
  (*(v178 + 8))(v101, v106);
  *v216 = v222;
  *&v216[16] = v223;
  MEMORY[0x259C9B090](&v218, v212);
  v108 = v218;
  swift_getKeyPath();
  *v216 = v108;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v96) = *(v108 + 34);

  LOBYTE(v218) = v96;
  v109 = swift_allocObject();
  v110 = *(v74 + 48);
  *(v109 + 48) = *(v74 + 32);
  *(v109 + 64) = v110;
  *(v109 + 80) = *(v74 + 64);
  v111 = *(v74 + 16);
  *(v109 + 16) = *v74;
  *(v109 + 32) = v111;
  sub_258D549BC(v74, v216);
  *v216 = v106;
  *&v216[8] = v107;
  v112 = v212;
  *&v216[16] = v103;
  *&v217 = v104;
  swift_getOpaqueTypeConformance2();
  v113 = v182;
  sub_258D56984();

  (*(v181 + 8))(v105, v113);
  *v216 = v222;
  *&v216[16] = v223;
  MEMORY[0x259C9B090](&v218, v112);

  v114 = v176;
  v115 = [v176 sharedInstance];
  LODWORD(v96) = [v115 shouldShowCheckInLocationHistorySettings];

  v116 = 1;
  v117 = v184;
  v118 = v183;
  if (v96)
  {
    *v216 = v222;
    *&v216[16] = v223;
    sub_258D56B34();
    v119 = v218;
    v120 = type metadata accessor for CheckInDataView.Model();
    v191 = v219;
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    v123 = swift_allocObject();
    sub_258D564D4();
    v218 = v123;
    v124 = sub_258D56A44();
    *&v216[16] = v119;
    v217 = v191;
    MEMORY[0x28223BE20](v124);
    *(&v163 - 2) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
    sub_258D54A0C();
    sub_258D5518C();
    v125 = v171;
    sub_258D56584();
    (*(v118 + 32))(v214, v125, v117);
    v116 = 0;
  }

  v126 = 1;
  (*(v118 + 56))(v214, v116, 1, v117);
  *v216 = v222;
  *&v216[16] = v223;
  MEMORY[0x259C9B090](&v218, v112);

  v127 = [v114 sharedInstance];
  v128 = [v127 shouldShowSharedWithYouSettings];

  if (v128)
  {
    *v216 = v222;
    *&v216[16] = v223;
    sub_258D56B34();
    v129 = v218;
    v130 = v219;
    v131 = sub_258D565B4();
    v132 = sub_258D567E4();
    *v216 = v129;
    *&v216[8] = v130;
    *&v217 = v131;
    BYTE8(v217) = v132;
    v133 = [v193 bundleForClass_];
    v134 = sub_258D56BC4();
    v135 = sub_258D56BC4();
    v136 = [v133 localizedStringForKey:v134 value:0 table:v135];

    v137 = sub_258D56BD4();
    v139 = v138;

    v218 = v137;
    *&v219 = v139;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F20, &qword_258D5ACA0);
    v141 = sub_258D550A4(&qword_27F984F28, &qword_27F984F20, &qword_258D5ACA0, sub_258D55128);
    v142 = v188;
    sub_258D56964();

    MEMORY[0x28223BE20](v143);
    *(&v163 - 2) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
    sub_258D54A0C();
    *v216 = v140;
    *&v216[8] = MEMORY[0x277D837D0];
    *&v216[16] = v141;
    *&v217 = v142;
    swift_getOpaqueTypeConformance2();
    v144 = v172;
    sub_258D56584();
    (*(v195 + 32))(v207, v144, v196);
    v126 = 0;
  }

  v145 = v207;
  (*(v195 + 56))(v207, v126, 1, v196);
  v146 = v199[2];
  v147 = v198;
  v148 = v200;
  v146(v198, v197, v200);
  v212 = v201[2];
  (v212)(v209, v208, v202);
  v149 = v203;
  sub_258D39240(v213, v203, &qword_27F984EC0, &qword_258D5AC30);
  v150 = v185;
  v196 = *(v185 + 16);
  v151 = v204;
  v196(v211, v210, v204);
  sub_258D39240(v214, v205, &qword_27F984EB8, &qword_258D5AC28);
  sub_258D39240(v145, v206, &qword_27F984EA8, &qword_258D5AC18);
  v152 = v186;
  v146(v186, v147, v148);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F18, &qword_258D5AC98);
  v154 = v202;
  (v212)(&v152[v153[12]], v209, v202);
  sub_258D39240(v149, &v152[v153[16]], &qword_27F984EC0, &qword_258D5AC30);
  v196(&v152[v153[20]], v211, v151);
  v155 = v205;
  sub_258D39240(v205, &v152[v153[24]], &qword_27F984EB8, &qword_258D5AC28);
  v156 = v206;
  sub_258D39240(v206, &v152[v153[28]], &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v207, &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v214, &qword_27F984EB8, &qword_258D5AC28);
  v157 = *(v150 + 8);
  v157(v210, v151);
  sub_258D392A8(v213, &qword_27F984EC0, &qword_258D5AC30);
  v158 = v201[1];
  v159 = v154;
  v158(v208, v154);
  v160 = v199[1];
  v161 = v200;
  v160(v197, v200);
  sub_258D392A8(v156, &qword_27F984EA8, &qword_258D5AC18);
  sub_258D392A8(v155, &qword_27F984EB8, &qword_258D5AC28);
  v157(v211, v204);
  sub_258D392A8(v203, &qword_27F984EC0, &qword_258D5AC30);
  v158(v209, v159);
  return (v160)(v198, v161);
}

uint64_t sub_258D4D040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = sub_258D56734();
  v47 = *(v46 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F08, &qword_258D5AC68);
  v42 = *(v41 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F00, &qword_258D5AC60);
  v44 = *(v43 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - v9;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_258D56BC4();
  v13 = sub_258D56BC4();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_258D56BD4();
  v17 = v16;

  *&v49 = v15;
  *(&v49 + 1) = v17;
  v58 = sub_258D56BE4();
  v59 = v18;
  v60 = *(a1 + 16);
  v61 = *(a1 + 32);
  v49 = *(a1 + 16);
  v50 = *(a1 + 32);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v21 = v55;
  v20 = v56;
  v22 = v57;
  swift_getKeyPath();
  *&v49 = v21;
  *(&v49 + 1) = v20;
  v50 = v22;
  sub_258D56B24();

  v23 = v55;
  v24 = v56;
  v25 = v57;

  v52 = v23;
  v53 = v24;
  v54 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F40, &unk_258D5AD48);
  sub_258D45980();
  sub_258D55224();
  sub_258D39364();
  sub_258D56AC4();
  v49 = v60;
  v50 = v61;
  MEMORY[0x259C9B090](&v55, v19);
  v26 = v55;
  swift_getKeyPath();
  *&v49 = v26;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v23) = *(v26 + 32);

  LOBYTE(v55) = v23;
  v27 = swift_allocObject();
  v28 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a1 + 64);
  v29 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v29;
  sub_258D549BC(a1, &v49);
  v30 = sub_258D394F8(&qword_27F984F10, &qword_27F984F08, &qword_258D5AC68);
  v31 = sub_258D45B58();
  v32 = v40;
  v33 = v41;
  sub_258D56984();

  (*(v42 + 8))(v7, v33);
  v34 = v45;
  sub_258D56724();
  *&v49 = v33;
  *(&v49 + 1) = &type metadata for SettingsModel.AudioExpiration;
  v50 = v30;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v48;
  v36 = v43;
  v37 = v46;
  sub_258D56924();
  (*(v47 + 8))(v34, v37);
  (*(v44 + 8))(v32, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984EF0, &qword_258D5AC58);
  *(v35 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_258D4D69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984BA0, &qword_258D59E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984F50, &qword_258D5AD58);
  sub_258D394F8(&qword_27F984F58, &qword_27F984BA0, &qword_258D59E60);
  sub_258D45980();
  swift_getOpaqueTypeConformance2();
  sub_258D45B00();
  return sub_258D56B54();
}

uint64_t sub_258D4D7CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_258D451EC();
  sub_258D39364();
  result = sub_258D568E4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_258D4D850@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

void sub_258D4DBD8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, SEL *a4)
{
  v7 = sub_258D56624();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *a3;
  v17 = *a3;
  v18 = *(a3 + 8);
  if (v18 == 1)
  {
    v16[1] = v13;
  }

  else
  {

    sub_258D56C44();
    v14 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v17, &qword_27F984D90, &qword_258D5A9B0);
    (*(v8 + 8))(v11, v7);
  }

  v15 = [objc_opt_self() sharedInstance];
  [v15 *a4];
}

uint64_t sub_258D4DD98(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v15, v10);
  v11 = v15;
  swift_getKeyPath();
  *&v16 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 35);

  *&v16 = sub_258D45380();
  *(&v16 + 1) = v13;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4DF80(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v19 = v7;
  v20 = v9;
  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v16, v10);
  v11 = v16;
  swift_getKeyPath();
  *&v17 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 37);

  v13 = 6710863;
  if (v12)
  {
    v13 = 28239;
  }

  v14 = 0xE300000000000000;
  if (v12)
  {
    v14 = 0xE200000000000000;
  }

  *&v17 = v13;
  *(&v17 + 1) = v14;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4E180@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v9 & 1;
  a1[3] = v10;
  return result;
}

uint64_t sub_258D4E2A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_258D56684();
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v75 = *(v78 - 8);
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v80 = *(v8 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v83 = *(v11 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC8, &qword_258D5AA08);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v85 = *(v81 - 8);
  v22 = *(v85 + 64);
  v23 = MEMORY[0x28223BE20](v81);
  v84 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v92 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v87 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  v82 = v26;
  sub_258D56584();
  v92 = *(a1 + 16);
  v93 = *(a1 + 32);
  v88 = *(a1 + 16);
  v89 = *(a1 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](v91);

  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 shouldShowContactPhotoSettings];

  if (v29)
  {
    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v32 = sub_258D56BC4();
    v33 = sub_258D56BC4();
    v73 = v19;
    v72 = v21;
    v34 = v33;
    v35 = v3;
    v36 = [v31 localizedStringForKey:v32 value:0 table:v33];

    v37 = sub_258D56BD4();
    v39 = v38;

    v91[3] = v37;
    v91[4] = v39;
    v88 = v92;
    v89 = v93;
    sub_258D56B34();
    v40 = v91[0];
    v41 = v91[1];
    v42 = v91[2];
    swift_getKeyPath();
    v71 = v8;
    v70 = v11;
    *&v88 = v40;
    *(&v88 + 1) = v41;
    v89 = v42;
    sub_258D56B24();

    v69 = v14;

    sub_258D39364();
    v43 = v74;
    sub_258D56AE4();
    v44 = v76;
    sub_258D56674();
    v45 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
    v46 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
    v47 = v79;
    v48 = v78;
    sub_258D56934();
    (*(v77 + 8))(v44, v35);
    (*(v75 + 8))(v43, v48);
    v88 = v92;
    v89 = v93;
    MEMORY[0x259C9B090](v91, v27);
    v49 = v91[0];
    swift_getKeyPath();
    *&v88 = v49;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564C4();

    LOBYTE(v43) = *(v49 + 39);

    LOBYTE(v91[0]) = v43;
    v50 = swift_allocObject();
    v51 = *(a1 + 48);
    *(v50 + 48) = *(a1 + 32);
    *(v50 + 64) = v51;
    *(v50 + 80) = *(a1 + 64);
    v52 = *(a1 + 16);
    *(v50 + 16) = *a1;
    *(v50 + 32) = v52;
    sub_258D549BC(a1, &v88);
    *&v88 = v48;
    *(&v88 + 1) = v35;
    v89 = v45;
    v90 = v46;
    v19 = v73;
    swift_getOpaqueTypeConformance2();
    v53 = v69;
    v54 = v71;
    sub_258D56984();

    (*(v80 + 8))(v47, v54);
    v55 = v83;
    v56 = v72;
    v11 = v70;
    (*(v83 + 32))(v72, v53);
    v57 = 0;
    v58 = v55;
  }

  else
  {
    v57 = 1;
    v56 = v21;
    v58 = v83;
  }

  (*(v58 + 56))(v56, v57, 1, v11);
  v59 = v85;
  v60 = *(v85 + 16);
  v61 = v84;
  v62 = v82;
  v63 = v81;
  v60(v84, v82, v81);
  v64 = v19;
  sub_258D39240(v56, v19, &qword_27F984DC8, &qword_258D5AA08);
  v65 = v86;
  v60(v86, v61, v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E90, &qword_258D5ABB0);
  sub_258D39240(v64, &v65[*(v66 + 48)], &qword_27F984DC8, &qword_258D5AA08);
  sub_258D392A8(v56, &qword_27F984DC8, &qword_258D5AA08);
  v67 = *(v59 + 8);
  v67(v62, v63);
  sub_258D392A8(v64, &qword_27F984DC8, &qword_258D5AA08);
  return (v67)(v61, v63);
}

uint64_t sub_258D4ECE8(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v15, v10);
  v11 = v15;
  swift_getKeyPath();
  *&v16 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 38);

  *&v16 = sub_258D45528();
  *(&v16 + 1) = v13;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D4EECC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_258D56624();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v16 = *a3;
  v17 = *(a3 + 8);
  LOBYTE(a3) = v17;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v13 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v16, &qword_27F984D90, &qword_258D5A9B0);
    (*(v8 + 8))(v11, v7);
  }

  a4(v12);
}

uint64_t sub_258D4F050@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E18, &qword_258D5AB08);
  v84 = *(v82 - 8);
  v3 = v84[8];
  v4 = MEMORY[0x28223BE20](v82);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v65 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E20, &qword_258D5AB10);
  v83 = *(v81 - 8);
  v7 = v83[8];
  v8 = MEMORY[0x28223BE20](v81);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v65 - v10;
  v70 = sub_258D56684();
  v71 = *(v70 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E28, &qword_258D5AB18);
  v69 = *(v68 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v65 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E30, &qword_258D5AB20);
  v78 = *(v76 - 8);
  v19 = v78[8];
  v20 = MEMORY[0x28223BE20](v76);
  v75 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = &v65 - v22;
  v93 = *(a1 + 16);
  v94 = *(a1 + 32);
  v87 = *(a1 + 16);
  v88 = *(a1 + 32);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v25 = v90;
  v24 = v91;
  v26 = v92;
  swift_getKeyPath();
  *&v87 = v25;
  *(&v87 + 1) = v24;
  v88 = v26;
  sub_258D56B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8);
  sub_258D56AD4();
  v87 = v93;
  v88 = v94;
  MEMORY[0x259C9B090](&v90, v23);
  v27 = v90;
  swift_getKeyPath();
  *&v87 = v27;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v28 = *(v27 + 40);

  LOBYTE(v90) = v28;
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a1 + 64);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  sub_258D549BC(a1, &v87);
  v32 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940);
  v33 = MEMORY[0x277D839B0];
  v34 = MEMORY[0x277D839C8];
  v35 = v65;
  sub_258D56984();

  (*(v66 + 8))(v16, v13);
  v36 = v67;
  sub_258D56674();
  *&v87 = v13;
  *(&v87 + 1) = v33;
  v88 = v32;
  v89 = v34;
  swift_getOpaqueTypeConformance2();
  sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v37 = v74;
  v38 = v68;
  v39 = v70;
  sub_258D56934();
  (*(v71 + 8))(v36, v39);
  (*(v69 + 8))(v35, v38);
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  v42 = sub_258D56BC4();
  v43 = sub_258D56BC4();
  v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

  v45 = sub_258D56BD4();
  v47 = v46;

  v90 = v45;
  v91 = v47;
  v86 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  sub_258D54A88();
  sub_258D39364();
  v48 = v77;
  sub_258D56594();
  v85 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E38, &qword_258D5AB50);
  sub_258D54BD0();
  v49 = v80;
  sub_258D56884();
  v50 = v78[2];
  v51 = v75;
  v52 = v76;
  v50(v75, v37, v76);
  v71 = v83[2];
  v53 = v79;
  (v71)(v79, v48, v81);
  v54 = v84[2];
  v55 = v72;
  v54(v72, v49, v82);
  v56 = v73;
  v50(v73, v51, v52);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E60, &qword_258D5AB68);
  v58 = v81;
  (v71)(&v56[*(v57 + 48)], v53, v81);
  v59 = v82;
  v54(&v56[*(v57 + 64)], v55, v82);
  v60 = v84[1];
  v60(v80, v59);
  v61 = v83[1];
  v61(v77, v58);
  v62 = v78[1];
  v63 = v76;
  v62(v74, v76);
  v60(v55, v59);
  v61(v79, v58);
  return (v62)(v75, v63);
}

uint64_t sub_258D4FB7C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D4FEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_258D56734();
  v44 = *(v43 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E50, &qword_258D5AB60);
  v39 = *(v38 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v38 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E48, &qword_258D5AB58);
  v41 = *(v40 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v38 - v9;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_258D56BC4();
  v14 = sub_258D56BC4();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_258D56BD4();
  v18 = v17;

  v55 = v16;
  v56 = v18;
  v57 = *(a1 + 16);
  v58 = *(a1 + 32);
  v46 = *(a1 + 16);
  v47 = *(a1 + 32);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v21 = v52;
  v20 = v53;
  v22 = v54;
  swift_getKeyPath();
  *&v46 = v21;
  *(&v46 + 1) = v20;
  v47 = v22;
  sub_258D56B24();

  v23 = v52;
  v24 = v53;
  v25 = v54;

  v49 = v23;
  v50 = v24;
  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E68, &unk_258D5AB98);
  sub_258D41408();
  sub_258D54D44();
  sub_258D39364();
  sub_258D56AC4();
  v46 = v57;
  v47 = v58;
  MEMORY[0x259C9B090](&v52, v19);
  v26 = v52;
  swift_getKeyPath();
  *&v46 = v26;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v23) = *(v26 + 42);

  LOBYTE(v52) = v23;
  v27 = swift_allocObject();
  v28 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a1 + 64);
  v29 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v29;
  sub_258D549BC(a1, &v46);
  v30 = sub_258D394F8(&qword_27F984E58, &qword_27F984E50, &qword_258D5AB60);
  v31 = sub_258D4126C();
  v32 = v38;
  sub_258D56984();

  (*(v39 + 8))(v7, v32);
  v33 = v42;
  sub_258D56724();
  *&v46 = v32;
  *(&v46 + 1) = &type metadata for KeepMessagesPreference;
  v47 = v30;
  v48 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  v35 = v40;
  v36 = v43;
  sub_258D56924();
  (*(v44 + 8))(v33, v36);
  (*(v41 + 8))(v10, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E38, &qword_258D5AB50);
  *(v34 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_258D50524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984AF0, &qword_258D597B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E78, &qword_258D5ABA8);
  sub_258D394F8(&qword_27F984E80, &qword_27F984AF0, &qword_258D597B0);
  sub_258D41408();
  swift_getOpaqueTypeConformance2();
  sub_258D54E5C();
  return sub_258D56B54();
}

uint64_t sub_258D50654@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_258D410F8();
  sub_258D39364();
  result = sub_258D568E4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

void sub_258D506CC(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(sub_258D47548() + 56);
  sub_258D54E10();
  v4 = qword_258D5AE48[v2];
  v5 = sub_258D56C54();
  [*(v3 + 16) updateKeepMessagesPreference_];
}

uint64_t sub_258D5075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v224 = a2;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DB0, &qword_258D5A9F0);
  v3 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v209 = &v203 - v4;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DB8, &qword_258D5A9F8);
  v220 = *(v221 - 8);
  v5 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v208 = &v203 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC0, &qword_258D5AA00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v239 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v244 = &v203 - v11;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v215 = *(v216 - 8);
  v12 = *(v215 + 64);
  MEMORY[0x28223BE20](v216);
  v214 = &v203 - v13;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v218 = *(v219 - 8);
  v14 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v217 = &v203 - v15;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D58, &qword_258D5A930);
  v222 = *(v223 - 8);
  v16 = *(v222 + 64);
  v17 = MEMORY[0x28223BE20](v223);
  v238 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v249 = &v203 - v19;
  v246 = sub_258D56684();
  v254 = *(v246 - 1);
  v20 = *(v254 + 64);
  MEMORY[0x28223BE20](v246);
  v240 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984700, &qword_258D58EE0);
  v245 = *(v232 - 8);
  v22 = *(v245 + 64);
  MEMORY[0x28223BE20](v232);
  v231 = &v203 - v23;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984708, &qword_258D58EE8);
  v242 = *(v230 - 8);
  v24 = *(v242 + 64);
  MEMORY[0x28223BE20](v230);
  v241 = &v203 - v25;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D10, &qword_258D5A8F8);
  v252 = *(v253 - 8);
  v26 = *(v252 + 64);
  v27 = MEMORY[0x28223BE20](v253);
  v248 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v203 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DC8, &qword_258D5AA08);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v247 = &v203 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v237 = &v203 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v250 = &v203 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v203 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD0, &qword_258D5AA10);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v203 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DD8, &qword_258D5AA18);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v236 = &v203 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v203 - v50;
  v263 = *(a1 + 16);
  v264 = *(a1 + 32);
  v256 = *(a1 + 16);
  v257 = *(a1 + 32);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v259);

  v259 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE0, &qword_258D5AA20);
  sub_258D56A64();
  v228 = a1;
  v255 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DE8, &qword_258D5AA28);
  sub_258D54A0C();
  sub_258D54A88();
  sub_258D56584();
  (*(v42 + 32))(v51, v45, v41);
  v53 = *(v42 + 56);
  v235 = v51;
  v54 = v51;
  v55 = v52;
  v53(v54, 0, 1, v41);
  v256 = v263;
  v257 = v264;
  MEMORY[0x259C9B090](&v259, v52);

  v234 = objc_opt_self();
  v56 = [v234 sharedInstance];
  v57 = [v56 shouldShowMMS];

  v58 = 0x277CCA000uLL;
  v59 = &selRef_areBusinessUpdatesEnabled;
  v60 = &selRef_areBusinessUpdatesEnabled;
  v251 = v30;
  v243 = v40;
  if (v57)
  {
    v61 = v30;
    type metadata accessor for MessagesSettingsUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = [objc_opt_self() bundleForClass_];
    v64 = sub_258D56BC4();
    v233 = 0x8000000258D5C330;
    v65 = sub_258D56BC4();
    v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

    v67 = sub_258D56BD4();
    v69 = v68;

    v261 = v67;
    v262 = v69;
    v256 = v263;
    v257 = v264;
    sub_258D56B34();
    v71 = *(&v259 + 1);
    v70 = v259;
    v72 = v241;
    v73 = v55;
    v74 = v260;
    swift_getKeyPath();
    v256 = __PAIR128__(v71, v70);
    v257 = v74;
    sub_258D56B24();

    sub_258D39364();
    v75 = v231;
    sub_258D56AE4();
    v76 = v240;
    sub_258D56674();
    v77 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
    v78 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
    v79 = v232;
    v80 = v246;
    sub_258D56934();
    (*(v254 + 8))(v76, v80);
    (*(v245 + 8))(v75, v79);
    v256 = v263;
    v257 = v264;
    MEMORY[0x259C9B090](&v259, v73);
    v81 = v259;
    swift_getKeyPath();
    *&v256 = v81;
    sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
    sub_258D564C4();
    v82 = v233;

    LOBYTE(v67) = *(v81 + 44);

    LOBYTE(v259) = v67;
    v83 = swift_allocObject();
    v84 = v228;
    v85 = *(v228 + 48);
    *(v83 + 48) = *(v228 + 32);
    *(v83 + 64) = v85;
    *(v83 + 80) = *(v84 + 64);
    v86 = *(v84 + 16);
    *(v83 + 16) = *v84;
    *(v83 + 32) = v86;
    sub_258D549BC(v84, &v256);
    *&v256 = v79;
    *(&v256 + 1) = v80;
    v55 = v73;
    v58 = 0x277CCA000;
    v257 = v77;
    v258 = v78;
    v59 = &selRef_areBusinessUpdatesEnabled;
    swift_getOpaqueTypeConformance2();
    v87 = v230;
    sub_258D56984();

    (*(v242 + 8))(v72, v87);
    v88 = v252;
    v89 = v243;
    v90 = v253;
    (*(v252 + 32))(v243, v61, v253);
    v91 = v89;
    v60 = &selRef_areBusinessUpdatesEnabled;
    (*(v88 + 56))(v91, 0, 1, v90);
  }

  else
  {
    (*(v252 + 56))(v40, 1, 1, v253);
    v82 = 0x8000000258D5C330;
  }

  type metadata accessor for MessagesSettingsUtilities();
  v92 = swift_getObjCClassFromMetadata();
  v93 = *(v58 + 2264);
  v94 = objc_opt_self();
  v95 = v59[122];
  v212 = v94;
  v213 = v92;
  v96 = [v94 v95];
  v97 = sub_258D56BC4();
  v233 = v82;
  v98 = sub_258D56BC4();
  v99 = [v96 v60[261]];

  v100 = sub_258D56BD4();
  v102 = v101;

  v261 = v100;
  v262 = v102;
  v256 = v263;
  v257 = v264;
  sub_258D56B34();
  v104 = *(&v259 + 1);
  v103 = v259;
  v105 = v55;
  v106 = v260;
  swift_getKeyPath();
  v256 = __PAIR128__(v104, v103);
  v257 = v106;
  sub_258D56B24();

  v107 = sub_258D39364();
  v108 = v231;
  v211 = v107;
  sub_258D56AE4();
  v109 = v240;
  sub_258D56674();
  v110 = sub_258D394F8(&qword_27F984718, &qword_27F984700, &qword_258D58EE0);
  v111 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v112 = v232;
  v113 = v246;
  sub_258D56934();
  v114 = *(v254 + 8);
  v254 += 8;
  v226 = v114;
  v114(v109, v113);
  v115 = *(v245 + 8);
  v245 += 8;
  v206 = v115;
  v115(v108, v112);
  v256 = v263;
  v257 = v264;
  v116 = v105;
  MEMORY[0x259C9B090](&v259, v105);
  v117 = v259;
  swift_getKeyPath();
  *&v256 = v117;
  v225 = sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  LOBYTE(v100) = *(v117 + 45);

  LOBYTE(v259) = v100;
  v118 = swift_allocObject();
  v119 = v228;
  v120 = *(v228 + 48);
  *(v118 + 48) = *(v228 + 32);
  *(v118 + 64) = v120;
  *(v118 + 80) = *(v119 + 64);
  v121 = *(v119 + 16);
  *(v118 + 16) = *v119;
  *(v118 + 32) = v121;
  sub_258D549BC(v119, &v256);
  *&v256 = v112;
  *(&v256 + 1) = v113;
  v207 = v110;
  v257 = v110;
  v258 = v111;
  v227 = v111;
  v122 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = v230;
  v205 = OpaqueTypeConformance2;
  v125 = v241;
  sub_258D56984();

  v126 = v242 + 8;
  v127 = *(v242 + 8);
  v127(v125, v124);
  v256 = v263;
  v257 = v264;
  v128 = v116;
  MEMORY[0x259C9B090](&v259, v116);

  v129 = [v234 sharedInstance];
  LODWORD(v109) = [v129 shouldShowCharacterCount];

  v130 = v253;
  v131 = v240;
  if (v109)
  {
    v132 = [v212 bundleForClass_];
    v133 = sub_258D56BC4();
    v134 = sub_258D56BC4();
    v135 = [v132 localizedStringForKey:v133 value:0 table:v134];
    v204 = v127;
    v136 = v135;

    v137 = sub_258D56BD4();
    v139 = v138;

    v261 = v137;
    v262 = v139;
    v256 = v263;
    v257 = v264;
    sub_258D56B34();
    v140 = v259;
    v141 = v260;
    swift_getKeyPath();
    v256 = v140;
    v257 = v141;
    sub_258D56B24();

    v242 = v126;

    v142 = v231;
    v130 = v253;
    sub_258D56AE4();
    sub_258D56674();
    v143 = v241;
    v144 = v232;
    v145 = v246;
    sub_258D56934();
    v226(v131, v145);
    v206(v142, v144);
    v256 = v263;
    v257 = v264;
    MEMORY[0x259C9B090](&v259, v128);
    v146 = v259;
    swift_getKeyPath();
    *&v256 = v146;
    sub_258D564C4();

    LOBYTE(v137) = *(v146 + 46);

    LOBYTE(v259) = v137;
    v147 = swift_allocObject();
    v148 = *(v119 + 48);
    *(v147 + 48) = *(v119 + 32);
    *(v147 + 64) = v148;
    *(v147 + 80) = *(v119 + 64);
    v149 = *(v119 + 16);
    *(v147 + 16) = *v119;
    *(v147 + 32) = v149;
    sub_258D549BC(v119, &v256);
    v150 = v251;
    v151 = v230;
    sub_258D56984();

    v204(v143, v151);
    (*(v252 + 32))(v250, v150, v130);
    v122 = 0;
  }

  (*(v252 + 56))(v250, v122, 1, v130);
  v256 = v263;
  v257 = v264;
  sub_258D56B34();
  v152 = v259;
  v153 = v260;
  swift_getKeyPath();
  v229 = v128;
  v256 = v152;
  v257 = v153;
  sub_258D56B24();

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  v155 = sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8);
  v156 = v214;
  v245 = v154;
  v242 = v155;
  sub_258D56AD4();
  sub_258D56674();
  v157 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940);
  v158 = v217;
  v159 = v216;
  v160 = v131;
  v161 = v246;
  v162 = v227;
  sub_258D56934();
  v226(v160, v161);
  (*(v215 + 8))(v156, v159);
  v256 = v263;
  v257 = v264;
  MEMORY[0x259C9B090](&v259, v229);
  v163 = v259;
  swift_getKeyPath();
  *&v256 = v163;
  sub_258D564C4();

  v164 = *(v163 + 47);

  LOBYTE(v259) = v164;
  v165 = swift_allocObject();
  v166 = *(v119 + 48);
  *(v165 + 48) = *(v119 + 32);
  *(v165 + 64) = v166;
  *(v165 + 80) = *(v119 + 64);
  v167 = *(v119 + 16);
  *(v165 + 16) = *v119;
  *(v165 + 32) = v167;
  sub_258D549BC(v119, &v256);
  *&v256 = v159;
  *(&v256 + 1) = v161;
  v257 = v157;
  v258 = v162;
  swift_getOpaqueTypeConformance2();
  v168 = v219;
  sub_258D56984();

  (*(v218 + 8))(v158, v168);
  v256 = v263;
  v257 = v264;
  MEMORY[0x259C9B090](&v259, v229);

  v169 = [v234 sharedInstance];
  v170 = [v169 shouldShowSMSRelaySettings];

  v171 = 1;
  v172 = v221;
  v173 = v220;
  if (v170)
  {
    v174 = sub_258D565B4();
    v175 = sub_258D567E4();
    *&v259 = v174;
    BYTE8(v259) = v175;
    v176 = [v212 bundleForClass_];
    v177 = sub_258D56BC4();
    v178 = sub_258D56BC4();
    v179 = [v176 localizedStringForKey:v177 value:0 table:v178];

    v180 = sub_258D56BD4();
    v182 = v181;

    *&v256 = v180;
    *(&v256 + 1) = v182;
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E08, &qword_258D5AA88);
    v184 = sub_258D550A4(&qword_27F984E10, &qword_27F984E08, &qword_258D5AA88, sub_258D41690);
    v185 = MEMORY[0x277D837D0];
    v186 = v211;
    sub_258D56964();

    *&v256 = v183;
    *(&v256 + 1) = v185;
    v257 = v184;
    v258 = v186;
    swift_getOpaqueTypeConformance2();
    v187 = v208;
    sub_258D56584();
    (*(v173 + 32))(v244, v187, v172);
    v171 = 0;
  }

  v188 = v244;
  (*(v173 + 56))(v244, v171, 1, v172);
  v189 = v236;
  sub_258D39240(v235, v236, &qword_27F984DD8, &qword_258D5AA18);
  v190 = v237;
  sub_258D39240(v243, v237, &qword_27F984DC8, &qword_258D5AA08);
  v191 = v252;
  v246 = *(v252 + 16);
  v192 = v253;
  (v246)(v251, v248, v253);
  sub_258D39240(v250, v247, &qword_27F984DC8, &qword_258D5AA08);
  v193 = v222;
  v254 = *(v222 + 16);
  v194 = v223;
  (v254)(v238, v249, v223);
  sub_258D39240(v188, v239, &qword_27F984DC0, &qword_258D5AA00);
  v195 = v189;
  v196 = v224;
  sub_258D39240(v195, v224, &qword_27F984DD8, &qword_258D5AA18);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984E00, &qword_258D5AA80);
  sub_258D39240(v190, v196 + v197[12], &qword_27F984DC8, &qword_258D5AA08);
  (v246)(v196 + v197[16], v251, v192);
  sub_258D39240(v247, v196 + v197[20], &qword_27F984DC8, &qword_258D5AA08);
  v198 = v238;
  (v254)(v196 + v197[24], v238, v194);
  v199 = v239;
  sub_258D39240(v239, v196 + v197[28], &qword_27F984DC0, &qword_258D5AA00);
  sub_258D392A8(v244, &qword_27F984DC0, &qword_258D5AA00);
  v200 = *(v193 + 8);
  v200(v249, v194);
  sub_258D392A8(v250, &qword_27F984DC8, &qword_258D5AA08);
  v201 = *(v191 + 8);
  v201(v248, v192);
  sub_258D392A8(v243, &qword_27F984DC8, &qword_258D5AA08);
  sub_258D392A8(v235, &qword_27F984DD8, &qword_258D5AA18);
  sub_258D392A8(v199, &qword_27F984DC0, &qword_258D5AA00);
  v200(v198, v194);
  sub_258D392A8(v247, &qword_27F984DC8, &qword_258D5AA08);
  v201(v251, v192);
  sub_258D392A8(v237, &qword_27F984DC8, &qword_258D5AA08);
  return sub_258D392A8(v236, &qword_27F984DD8, &qword_258D5AA18);
}

uint64_t sub_258D52690(uint64_t a1)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_258D56BD4();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v15, v10);
  v11 = v15;
  swift_getKeyPath();
  *&v16 = v11;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v12 = *(v11 + 43);

  *&v16 = sub_258D45640();
  *(&v16 + 1) = v13;
  sub_258D39364();
  return sub_258D56574();
}

uint64_t sub_258D52878(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *a3;
  v15 = *a3;
  v16 = *(a3 + 8);
  LOBYTE(a3) = v16;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v12 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v15, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v9, v5);
    v11 = v14[1];
  }

  [*(*(v11 + 72) + 16) setMMSEnabled_];
}

uint64_t sub_258D52A1C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D52DB4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  v7 = sub_258D568E4();
  v9 = v8;
  v11 = v10;
  sub_258D569A4();
  v12 = sub_258D56894();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_258D39540(v7, v9, v11 & 1);

  v16 = [v2 bundleForClass_];
  v17 = sub_258D56BC4();
  v18 = sub_258D56BC4();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_258D56BD4();
  v20 = sub_258D568E4();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_258D56834();
  v24 = sub_258D568C4();
  v26 = v25;
  LOBYTE(v7) = v27;

  sub_258D39540(v20, v22, v18 & 1);

  sub_258D569B4();
  v28 = sub_258D56894();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_258D39540(v24, v26, v7 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v33;
  sub_258D3802C(v38, v37, v36 & 1);

  sub_258D3802C(v28, v30, v19 & 1);

  sub_258D39540(v28, v30, v19 & 1);

  sub_258D39540(v38, v37, v36 & 1);
}

uint64_t sub_258D53134@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53260()
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258D56BC4();
  v3 = sub_258D56BC4();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_258D56BD4();
  sub_258D39364();
  return sub_258D56A84();
}

void sub_258D53398()
{
  v0 = [objc_allocWithZone(CKSharedSettingsHelper) init];
  [v0 satelliteDemoModeTapped];
}

uint64_t sub_258D533F0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D53640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_258D56684();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D68, &qword_258D5A940);
  v33 = *(v32 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D60, &qword_258D5A938);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v31 = &v31 - v14;
  v43 = *(a1 + 16);
  v44 = *(a1 + 32);
  v39 = *(a1 + 16);
  v40 = *(a1 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  sub_258D56B34();
  v16 = v42[0];
  v17 = v42[1];
  v18 = v42[2];
  swift_getKeyPath();
  *&v39 = v16;
  *(&v39 + 1) = v17;
  v40 = v18;
  sub_258D56B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984DA0, &qword_258D5A9E8);
  sub_258D394F8(&qword_27F984DA8, &qword_27F984DA0, &qword_258D5A9E8);
  sub_258D56AD4();
  sub_258D56674();
  v19 = sub_258D394F8(&qword_27F984D70, &qword_27F984D68, &qword_258D5A940);
  v20 = sub_258D555E4(&qword_27F984720, MEMORY[0x277CDDDF0]);
  v21 = v31;
  v22 = v32;
  v23 = v34;
  sub_258D56934();
  (*(v35 + 8))(v7, v23);
  (*(v33 + 8))(v10, v22);
  v39 = v43;
  v40 = v44;
  MEMORY[0x259C9B090](v42, v15);
  v24 = v42[0];
  swift_getKeyPath();
  *&v39 = v24;
  sub_258D555E4(&qword_27F9848D8, type metadata accessor for SettingsModel);
  sub_258D564C4();

  v25 = *(v24 + 50);

  LOBYTE(v42[0]) = v25;
  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a1 + 64);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  sub_258D549BC(a1, &v39);
  *&v39 = v22;
  *(&v39 + 1) = v23;
  v40 = v19;
  v41 = v20;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_258D56984();

  return (*(v37 + 8))(v21, v29);
}

__n128 sub_258D53B88@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258D566C4();
  a1(v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_258D53C1C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v2 = [v38 bundleForClass_];
  v3 = sub_258D56BC4();
  v4 = sub_258D56BC4();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_258D56BD4();
  sub_258D39364();
  v6 = sub_258D568E4();
  v8 = v7;
  LOBYTE(v4) = v9;
  sub_258D56814();
  v10 = sub_258D568C4();
  v12 = v11;
  v14 = v13;

  sub_258D39540(v6, v8, v4 & 1);

  sub_258D569A4();
  v15 = sub_258D56894();
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v43 = v18;

  sub_258D39540(v10, v12, v14 & 1);

  v19 = [v38 bundleForClass_];
  v20 = sub_258D56BC4();
  v21 = sub_258D56BC4();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_258D56BD4();
  v23 = sub_258D568E4();
  v25 = v24;
  LOBYTE(v21) = v26;
  sub_258D56834();
  v27 = sub_258D568C4();
  v29 = v28;
  LOBYTE(v8) = v30;

  sub_258D39540(v23, v25, v21 & 1);

  sub_258D569B4();
  v31 = sub_258D56894();
  v33 = v32;
  LOBYTE(v22) = v34;
  v36 = v35;

  sub_258D39540(v27, v29, v8 & 1);

  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v40 & 1;
  *(a1 + 24) = v43;
  *(a1 + 32) = v31;
  *(a1 + 40) = v33;
  *(a1 + 48) = v22 & 1;
  *(a1 + 56) = v36;
  sub_258D3802C(v42, v41, v40 & 1);

  sub_258D3802C(v31, v33, v22 & 1);

  sub_258D39540(v31, v33, v22 & 1);

  sub_258D39540(v42, v41, v40 & 1);
}

uint64_t sub_258D53FE8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_258D56624();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *a3;
  v15 = *a3;
  v16 = *(a3 + 8);
  LOBYTE(a3) = v16;

  if ((a3 & 1) == 0)
  {
    sub_258D56C44();
    v12 = sub_258D567D4();
    sub_258D56524();

    sub_258D56614();
    swift_getAtKeyPath();
    sub_258D392A8(&v15, &qword_27F984D90, &qword_258D5A9B0);
    (*(v6 + 8))(v9, v5);
    v11 = v14[1];
  }

  [*(*(v11 + 112) + 16) setRCSBusinessMessagesEnabled_];
}

uint64_t sub_258D54174@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258D56BC4();
  v5 = sub_258D56BC4();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_258D56BD4();
  sub_258D39364();
  result = sub_258D568E4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_258D542A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D98, &qword_258D5A9B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  type metadata accessor for MessagesSettingsUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_258D56BC4();
  v7 = sub_258D56BC4();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_258D56BD4();
  v11 = v10;

  v15 = v9;
  v16 = v11;
  v15 = sub_258D56BE4();
  v16 = v12;
  sub_258D56464();
  v13 = sub_258D56474();
  result = (*(*(v13 - 8) + 48))(v3, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_258D39364();
    return sub_258D56874();
  }

  return result;
}

uint64_t sub_258D544A0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984C50, &qword_258D5A868);
  sub_258D394F8(&qword_27F984C58, &qword_27F984C50, &qword_258D5A868);
  return sub_258D56864();
}

uint64_t sub_258D54560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258D565F4();
  *a1 = result;
  return result;
}

uint64_t sub_258D5458C(uint64_t *a1)
{
  v1 = *a1;

  return sub_258D56604();
}

uint64_t sub_258D545B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_258D56A44();
  result = sub_258D56A44();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v11;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_258D546B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D546FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258D54788()
{
  result = qword_27F984CD8;
  if (!qword_27F984CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984CD0, &qword_258D5A8E0);
    sub_258D5480C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CD8);
  }

  return result;
}

unint64_t sub_258D5480C()
{
  result = qword_27F984CE0;
  if (!qword_27F984CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CE0);
  }

  return result;
}

unint64_t sub_258D54868()
{
  result = qword_27F984CF8;
  if (!qword_27F984CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984CB8, &qword_258D5A8C8);
    sub_258D394F8(&qword_27F984D00, &qword_27F984D08, &qword_258D5A8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984CF8);
  }

  return result;
}

uint64_t sub_258D54948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258D565F4();
  *a1 = result;
  return result;
}

uint64_t sub_258D54974(uint64_t *a1)
{
  v1 = *a1;

  return sub_258D56604();
}

unint64_t sub_258D54A0C()
{
  result = qword_27F984DF0;
  if (!qword_27F984DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984DE8, &qword_258D5AA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984DF0);
  }

  return result;
}

unint64_t sub_258D54A88()
{
  result = qword_27F984DF8;
  if (!qword_27F984DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984DF8);
  }

  return result;
}

unint64_t sub_258D54BD0()
{
  result = qword_27F984E40;
  if (!qword_27F984E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E38, &qword_258D5AB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E48, &qword_258D5AB58);
    sub_258D56734();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E50, &qword_258D5AB60);
    sub_258D394F8(&qword_27F984E58, &qword_27F984E50, &qword_258D5AB60);
    sub_258D4126C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E40);
  }

  return result;
}

unint64_t sub_258D54D44()
{
  result = qword_27F984E70;
  if (!qword_27F984E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984E68, &unk_258D5AB98);
    sub_258D41408();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E70);
  }

  return result;
}

unint64_t sub_258D54E10()
{
  result = qword_27F984C48;
  if (!qword_27F984C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F984C48);
  }

  return result;
}

unint64_t sub_258D54E5C()
{
  result = qword_27F984E88;
  if (!qword_27F984E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984E88);
  }

  return result;
}

unint64_t sub_258D54F00()
{
  result = qword_27F984EF8;
  if (!qword_27F984EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984EF0, &qword_258D5AC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F00, &qword_258D5AC60);
    sub_258D56734();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F08, &qword_258D5AC68);
    sub_258D394F8(&qword_27F984F10, &qword_27F984F08, &qword_258D5AC68);
    sub_258D45B58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984EF8);
  }

  return result;
}

uint64_t sub_258D550A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258D55128()
{
  result = qword_27F984F30;
  if (!qword_27F984F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F30);
  }

  return result;
}

unint64_t sub_258D5518C()
{
  result = qword_27F984F38;
  if (!qword_27F984F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F38);
  }

  return result;
}

unint64_t sub_258D55224()
{
  result = qword_27F984F48;
  if (!qword_27F984F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F40, &unk_258D5AD48);
    sub_258D45980();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F48);
  }

  return result;
}

uint64_t sub_258D552E8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_258D47548();
  sub_258D40D90();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_258D553BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_258D4A148(a1);
}

unint64_t sub_258D553C4()
{
  result = qword_27F984F70;
  if (!qword_27F984F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F984F68, &qword_258D5AD90);
    sub_258D554A8(&qword_27F984F78, &qword_27F984F80, &qword_258D5AD98);
    sub_258D394F8(&qword_27F984F88, &qword_27F984F90, &qword_258D5ADA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984F70);
  }

  return result;
}

uint64_t sub_258D554A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_258D55508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F984D08, &qword_258D5A8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258D55578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258D565D4();
  *a1 = result;
  return result;
}

uint64_t sub_258D555E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258D556A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258D556E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_258D5573C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 sharedWithYouViewController];

  return v1;
}

uint64_t sub_258D557AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D5589C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258D55810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258D5589C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258D55874()
{
  sub_258D5589C();
  sub_258D567A4();
  __break(1u);
}

unint64_t sub_258D5589C()
{
  result = qword_27F984FC8;
  if (!qword_27F984FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F984FC8);
  }

  return result;
}

uint64_t sub_258D558F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9848B8, &qword_258D590E0);
  MEMORY[0x259C9B090](&v10, v4);
  v5 = v10;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 _sharedWithYouEnabled];

  if (v7 == *(v5 + 37))
  {
    *(v5 + 37) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11 = v5;
    sub_258D55A68();
    sub_258D564B4();
  }
}

unint64_t sub_258D55A68()
{
  result = qword_27F9848D8;
  if (!qword_27F9848D8)
  {
    type metadata accessor for SettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9848D8);
  }

  return result;
}

id sub_258D55AE4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F984FD0 = result;
  return result;
}

uint64_t sub_258D55B3C()
{
  v0 = sub_258D56504();
  __swift_allocate_value_buffer(v0, qword_27F987000);
  __swift_project_value_buffer(v0, qword_27F987000);
  if (qword_27F9846A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F984FD0;
  return sub_258D564F4();
}

uint64_t sub_258D55BE4()
{
  v0 = sub_258D56504();
  __swift_allocate_value_buffer(v0, qword_27F987018);
  __swift_project_value_buffer(v0, qword_27F987018);
  if (qword_27F9846A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F984FD0;
  return sub_258D564F4();
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

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27F986FE0 == -1)
  {
    if (qword_27F986FE8)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27F986FE8)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F986FD8 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27F986FCC > a3)
      {
        goto LABEL_11;
      }

      if (dword_27F986FCC >= a3)
      {
        result = dword_27F986FD0 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27F986FE8;
  if (qword_27F986FE8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F986FE8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C9B610](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27F986FCC, &dword_27F986FD0);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SBSUITraitHomeScreenIconStyle(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SpringBoardUIServices))
  {
    return dlopenHelper_SpringBoardUIServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SpringBoardUIServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardUIServices.framework/SpringBoardUIServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SpringBoardUIServices);
  return a1;
}