id GKGameCenterUIFrameworkBundle()
{
  if (GKGameCenterUIFrameworkBundle_onceToken != -1)
  {
    GKGameCenterUIFrameworkBundle_cold_1();
  }

  v0 = _CFMZEnabled();
  v1 = &GKGameCenterUIFrameworkBundle_sIOSMacBundle;
  if (!v0)
  {
    v1 = &GKGameCenterUIFrameworkBundle_sBundle;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_227907590@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_227A7227C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id GKOSLoggers()
{
  if (GKOSLoggers_sDispatchOnceToken != -1)
  {
    GKOSLoggers_cold_1();
  }

  v1 = sOSLogCategories;

  return v1;
}

void __GKOSLoggers_block_invoke()
{
  v70[22] = *MEMORY[0x277D85DE8];
  v0 = os_log_create("com.apple.GameKit", "General");
  v1 = os_log_GKGeneral;
  os_log_GKGeneral = v0;

  v2 = os_log_create("com.apple.GameKit", "Error");
  v3 = os_log_GKError;
  os_log_GKError = v2;

  v4 = os_log_create("com.apple.GameKit", "Match");
  v5 = os_log_GKMatch;
  os_log_GKMatch = v4;

  v6 = os_log_create("com.apple.GameKit", "Daemon");
  v7 = os_log_GKDaemon;
  os_log_GKDaemon = v6;

  v8 = os_log_create("com.apple.GameKit", "Cache");
  v9 = os_log_GKCache;
  os_log_GKCache = v8;

  v10 = os_log_create("com.apple.GameKit", "LRUCache");
  v11 = os_log_GKLRUCache;
  os_log_GKLRUCache = v10;

  v12 = os_log_create("com.apple.GameKit", "Perf");
  v13 = os_log_GKPerf;
  os_log_GKPerf = v12;

  v14 = os_log_create("com.apple.GameKit", "HTTP");
  v15 = os_log_GKHTTP;
  os_log_GKHTTP = v14;

  v16 = os_log_create("com.apple.GameKit", "Hosted");
  v17 = os_log_GKHosted;
  os_log_GKHosted = v16;

  v18 = os_log_create("com.apple.GameKit", "Dispatch");
  v19 = os_log_GKDispatch;
  os_log_GKDispatch = v18;

  v20 = os_log_create("com.apple.GameKit", "Developer");
  v21 = os_log_GKDeveloper;
  os_log_GKDeveloper = v20;

  v22 = os_log_create("com.apple.GameKit", "Trace");
  v23 = os_log_GKTrace;
  os_log_GKTrace = v22;

  v24 = os_log_create("com.apple.GameKit", "Account");
  v25 = os_log_GKAccount;
  os_log_GKAccount = v24;

  v26 = os_log_create("com.apple.GameKit", "AccountError");
  v27 = os_log_GKAccountError;
  os_log_GKAccountError = v26;

  v28 = os_log_create("com.apple.GameKit", "CollectionView");
  v29 = os_log_GKCollectionView;
  os_log_GKCollectionView = v28;

  v30 = os_log_create("com.apple.GameKit", "Contacts");
  v31 = os_log_GKContacts;
  os_log_GKContacts = v30;

  v32 = os_log_create("com.apple.GameKit", "ActivityFeed");
  v33 = os_log_GKActivityFeed;
  os_log_GKActivityFeed = v32;

  v34 = os_log_create("com.apple.GameKit", "Onboarding");
  v35 = os_log_GKOnboarding;
  os_log_GKOnboarding = v34;

  v36 = os_log_create("com.apple.GameKit", "Friending");
  v37 = os_log_GKFriending;
  os_log_GKFriending = v36;

  v38 = os_log_create("com.apple.GameKit", "FastSync");
  v39 = os_log_GKFastSync;
  os_log_GKFastSync = v38;

  v40 = os_log_create("com.apple.GameKit", "Reactions");
  v41 = os_log_GKReactions;
  os_log_GKReactions = v40;

  v42 = os_log_create("com.apple.GameKit", "Library");
  v43 = os_log_GKLibrary;
  os_log_GKLibrary = v42;

  v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "General"];
  v69[0] = v68;
  v70[0] = os_log_GKGeneral;
  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Error"];
  v69[1] = v67;
  v70[1] = os_log_GKError;
  v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Match"];
  v69[2] = v66;
  v70[2] = os_log_GKMatch;
  v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Daemon"];
  v69[3] = v65;
  v70[3] = os_log_GKDaemon;
  v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Cache"];
  v69[4] = v64;
  v70[4] = os_log_GKCache;
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "LRUCache"];
  v69[5] = v63;
  v70[5] = os_log_GKLRUCache;
  v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Perf"];
  v69[6] = v62;
  v70[6] = os_log_GKPerf;
  v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "HTTP"];
  v69[7] = v61;
  v70[7] = os_log_GKHTTP;
  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Hosted"];
  v69[8] = v60;
  v70[8] = os_log_GKHosted;
  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Dispatch"];
  v69[9] = v59;
  v70[9] = os_log_GKDispatch;
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Developer"];
  v69[10] = v58;
  v70[10] = os_log_GKDeveloper;
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Trace"];
  v69[11] = v57;
  v70[11] = os_log_GKTrace;
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Account"];
  v69[12] = v56;
  v70[12] = os_log_GKAccount;
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "AccountError"];
  v69[13] = v44;
  v70[13] = os_log_GKAccountError;
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "CollectionView"];
  v69[14] = v45;
  v70[14] = os_log_GKCollectionView;
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Contacts"];
  v69[15] = v46;
  v70[15] = os_log_GKContacts;
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "ActivityFeed"];
  v69[16] = v47;
  v70[16] = os_log_GKActivityFeed;
  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Onboarding"];
  v69[17] = v48;
  v70[17] = os_log_GKOnboarding;
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Friending"];
  v69[18] = v49;
  v70[18] = os_log_GKFriending;
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "FastSync"];
  v69[19] = v50;
  v70[19] = os_log_GKFastSync;
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Reactions"];
  v69[20] = v51;
  v70[20] = os_log_GKReactions;
  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "Library"];
  v69[21] = v52;
  v70[21] = os_log_GKLibrary;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:22];
  v54 = sOSLogCategories;
  sOSLogCategories = v53;

  v55 = *MEMORY[0x277D85DE8];
}

void sub_227908C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2279098DC()
{
  type metadata accessor for SecTask(0);
  v0 = sub_227909B9C();
  if (!v0)
  {
    return v0;
  }

  swift_unknownObjectRetain();
  if (OUTLINED_FUNCTION_4_7() && v10 == 1)
  {
LABEL_12:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v1 = sub_227A37730();
    swift_unknownObjectRelease();
    v0 = v1 != 9;
    swift_unknownObjectRelease();
    return v0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
  result = OUTLINED_FUNCTION_4_7();
  if (!result)
  {
LABEL_14:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = (v0 + 40);
  v4 = -*(v0 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      goto LABEL_14;
    }

    if (++v5 >= *(v0 + 16))
    {
      break;
    }

    v6 = v3 + 2;
    v8 = *(v3 - 1);
    v7 = *v3;

    v9 = sub_227A72CFC();

    v3 = v6;
    if (v9 <= 8)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static EntitledContextProvider.hasAnyGameCenterEntitlement()()
{
  if (sub_2279098DC())
  {
    return 1;
  }

  return sub_2279098DC();
}

void sub_227909B50(uint64_t a1, unint64_t *a2)
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

CFTypeRef sub_227909B9C()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = sub_227909CE8();

    return v2;
  }

  else
  {
    if (qword_280B551E0 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v4 = sub_227A7227C();
    __swift_project_value_buffer(v4, qword_280B551E8);

    v5 = sub_227A7226C();
    v6 = sub_227A728BC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v7 = 136315138;
      *(v7 + 4) = OUTLINED_FUNCTION_2_13(v10);
      OUTLINED_FUNCTION_1_3(&dword_227904000, v8, v9, "Failed to create task for: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    return 0;
  }
}

CFTypeRef sub_227909CE8()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v1 = sub_227A724BC();
  v2 = SecTaskCopyValueForEntitlement(v0, v1, error);

  if (!v2)
  {
    if (error[0])
    {
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v14 = sub_227A7227C();
      __swift_project_value_buffer(v14, qword_280B551E8);

      v15 = sub_227A7226C();
      v16 = sub_227A728BC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136315394;
        *(v17 + 4) = OUTLINED_FUNCTION_2_13(v18);
        *(v17 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD548, &qword_227AA48D8);
        v19 = sub_227A7251C();
        v21 = sub_227A46730(v19, v20, &v28);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_227904000, v15, v16, "Failed to read entitlement for: %s, error: %s", v17, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_103();
LABEL_18:
        OUTLINED_FUNCTION_103();
      }
    }

    else
    {
      if (qword_280B551E0 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v22 = sub_227A7227C();
      __swift_project_value_buffer(v22, qword_280B551E8);

      v15 = sub_227A7226C();
      v23 = sub_227A728AC();

      if (os_log_type_enabled(v15, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136315138;
        *(v24 + 4) = OUTLINED_FUNCTION_2_13(v25);
        OUTLINED_FUNCTION_1_3(&dword_227904000, v26, v27, "No entitlement found for: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_103();
        goto LABEL_18;
      }
    }

    v2 = 0;
    result = 0;
    v11 = error[0];
    if (!error[0])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (qword_280B551E0 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v3 = sub_227A7227C();
  __swift_project_value_buffer(v3, qword_280B551E8);
  swift_unknownObjectRetain();
  v4 = sub_227A7226C();
  v5 = sub_227A728AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    v8 = sub_227A7251C();
    v10 = sub_227A46730(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_227904000, v4, v5, "SecTask: rawValue = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  v11 = error[0];
  result = v2;
  if (error[0])
  {
LABEL_7:

    result = v2;
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_107()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 136) + 8);
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_22790A300(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_227A7227C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = *a3;

  return sub_227A7228C();
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

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_3()
{

  JUMPOUT(0x22AAA1930);
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[19];
  v4 = v2[17];
  return v2[13];
}

uint64_t sub_22790A9FC(void *a1)
{
  v1 = a1;
  v2 = NSXPCConnection.gkIsSynchronous.getter();

  return v2 & 1;
}

uint64_t NSXPCConnection.gkIsSynchronous.getter()
{
  v0 = sub_22790AB28();
  v6[0] = xmmword_27D7DD390;

  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v1)
  {
    sub_227A729EC();
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
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_22790AB88(v6);
    return 0;
  }

  return result;
}

id sub_22790AB28()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  return v1;
}

uint64_t sub_22790AB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC610, &qword_227AA0590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22790AFAC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8D8]();
}

void sub_22790B040(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_22790B074();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_22790B0A0()
{
  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22790B0D4()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790B104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22790B11C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_95();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790B15C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F0, &qword_227AA0568);
  OUTLINED_FUNCTION_51(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22790B1E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22790B254()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
  OUTLINED_FUNCTION_92(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22790B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22790B468(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_8_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22790B510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_22790B564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v0 = OUTLINED_FUNCTION_8_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_22790B5C0()
{
  v1 = type metadata accessor for LexiconTextModerator(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_227A71D0C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v5 + *(v1 + 20));

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_22790B6EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790B760()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  OUTLINED_FUNCTION_12_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790B7AC()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_12_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790B838()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790B870()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22790B8C0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790B8FC()
{
  MEMORY[0x22AAA19E0](v0 + 16);
  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22790B95C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790B994()
{
  v1 = sub_227A71C2C();
  OUTLINED_FUNCTION_92(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22790BA8C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22790BDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A08ACC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22790BE10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22790BD80();
  *a1 = result & 1;
  return result;
}

unint64_t sub_22790BE98(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x444977656ELL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22790BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A0C358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22790BF48()
{
  OUTLINED_FUNCTION_27_1();
  v3 = sub_227A71C6C();
  OUTLINED_FUNCTION_43_0(v3);
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_26_1(*(v0 + *(v2 + 24)));
  }

  v5 = OUTLINED_FUNCTION_49_0();

  return __swift_getEnumTagSinglePayload(v5, v1, v6);
}

uint64_t sub_22790BFD4()
{
  OUTLINED_FUNCTION_20_0();
  v4 = sub_227A71C6C();
  result = OUTLINED_FUNCTION_43_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_8_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_22790C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_227A71C6C();
    v11 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

void *sub_22790C0E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_227A71C6C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22790C268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227A71C6C();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_227A71C2C();
  v12 = OUTLINED_FUNCTION_43_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22790C358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227A71C6C();
  v9 = OUTLINED_FUNCTION_43_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_227A71C2C();
    result = OUTLINED_FUNCTION_43_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_22790C51C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22790C568()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790C5AC()
{
  v2 = type metadata accessor for DataMessage(0);
  OUTLINED_FUNCTION_79_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = (v1 + v5);
  v10 = *(v1 + v5 + 8);
  if (v10 >> 60 != 15)
  {
    sub_2279E3FA4(*v9, v10);
  }

  v11 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 20);
  v16 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v16);
  (*(v17 + 8))(v9 + v15);
  v18 = *(v1 + v11 + 8);

  v19 = *(v1 + v12);

  return MEMORY[0x2821FE8E8](v1, v14 + 8, v4 | 7);
}

uint64_t sub_22790C6E8()
{
  v2 = type metadata accessor for DataMessage(0);
  OUTLINED_FUNCTION_79_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = (v1 + v7);
  v9 = *(v1 + v7 + 8);
  if (v9 >> 60 != 15)
  {
    sub_2279E3FA4(*v8, v9);
  }

  v10 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 20);
  v13 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v13);
  (*(v14 + 8))(v8 + v12);

  return MEMORY[0x2821FE8E8](v1, v11 + 8, v4 | 7);
}

uint64_t sub_22790C7F0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22790C828()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790C860()
{
  MEMORY[0x22AAA19E0](v0 + 16);
  OUTLINED_FUNCTION_110();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

BOOL sub_22790C974(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_22790C9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_22790CA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22790CAD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_22790CB08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 gkIsSynchronous];
  *a2 = result;
  return result;
}

uint64_t sub_22790CB50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790CBB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790CBF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227A2C7E8();
  *a2 = result;
  return result;
}

uint64_t sub_22790CC4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790CC84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790CCE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22790CD30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22790CE4C(uint64_t a1)
{
  result = sub_227A37108();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22790CE8C()
{
  MEMORY[0x22AAA19E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790CEC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790CFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A42920(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22790D184()
{
  v2 = type metadata accessor for JoinChannelActionMessage(0);
  OUTLINED_FUNCTION_129_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = *(v1 + v5 + *(v0 + 32) + 8);

  v12 = *(v1 + v5 + *(v0 + 36));

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_22790D270()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22790D2B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22790D380()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790D3B0()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22790D3F8()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_12_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22790D4C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22790E0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227913D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GKStackTraceWithFrameLimit(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v3 = [v2 count];
  if (v3 >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    v5 = [v2 subarrayWithRange:{1, v4 - 1}];
  }

  else
  {
    v5 = &unk_283B33070;
  }

  return v5;
}

id GKStashStackTrace()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  if (GKStashStackTrace_onceToken != -1)
  {
    GKStashStackTrace_cold_1();
  }

  v1 = sStackTraces;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __GKStashStackTrace_block_invoke_2;
  v8 = &unk_2785DD6C8;
  v2 = v0;
  v9 = v2;
  v10 = &v11;
  [v1 writeToDictionary:&v5];
  [sStackTraces readFromDictionary:{&__block_literal_global_43, v5, v6, v7, v8}];
  v3 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v3;
}

void sub_2279142AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __GKStashStackTrace_block_invoke()
{
  sStackTraces = [[GKThreadsafeDictionary alloc] initWithName:@"stack-traces"];

  return MEMORY[0x2821F96F8]();
}

void __GKStashStackTrace_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __GKStashStackTrace_block_invoke_3;
  v9[3] = &unk_2785DD6A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", ++sTraceIdentifier];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v3 setObject:*(a1 + 32) forKey:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __GKStashStackTrace_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

id GKStashedStackTrace(uint64_t a1, uint64_t a2)
{
  v3 = [sStackTraces objectForKey:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    if (v5 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      v7 = [v4 subarrayWithRange:{1, v6 - 1}];
    }

    else
    {
      v7 = &unk_283B33088;
    }
  }

  else
  {
    v7 = &unk_283B330A0;
  }

  return v7;
}

void sub_227915DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

BOOL GKAtomicCompareAndSwap32(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong_explicit(a3, &v3, a2, memory_order_relaxed, memory_order_relaxed);
  return v3 == a1;
}

BOOL GKAtomicCompareAndSwap32Barrier(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong(a3, &v3, a2);
  return v3 == a1;
}

BOOL GKAtomicCompareAndSwapPtrBarrier(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong(a3, &v3, a2);
  return v3 == a1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t GKUISetRemote(char a1)
{
  result = +[GKImageRestrictions setForCurrentProcess];
  _GKIsRemoteUI = a1;
  return result;
}

id GKGetProtocolVersionString(int a1)
{
  if (a1)
  {
    v1 = &GKGetProtocolVersionString___testVersion;
  }

  else
  {
    v1 = &GKGetProtocolVersionString___version;
  }

  v2 = *v1;
  if (!*v1)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d", 6, 19, 23, 5, 18, 25, 5, 5, 3];
    v4 = *v1;
    *v1 = v3;

    v2 = *v1;
  }

  return v2;
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    ReachabilityCallback_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    ReachabilityCallback_cold_2();
  }

  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(a3, "networkStatusForFlags:", a2)), @"GKNetworkStatusKey"}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

uint64_t _gkMarkFileAsPurgeable(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 66561;
  v1 = [a1 fileSystemRepresentation];
  v2 = open(v1, 0);
  if (v2 < 0)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      _gkMarkFileAsPurgeable_cold_1(v1, v4);
    }
  }

  v5 = ffsctl(v2, 0xC0084A44uLL, &v20, 0);
  v6 = os_log_GKGeneral;
  if (v5)
  {
    v7 = v5;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithInt:v7];
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 136315906;
      v22 = v1;
      v23 = 2112;
      v24 = v12;
      v25 = 2080;
      v26 = v14;
      v27 = 2048;
      v28 = v20;
      _os_log_error_impl(&dword_227904000, v11, OS_LOG_TYPE_ERROR, "Failed to mark %s as purgeable %@ (%s) (flags 0x%llx)\n", buf, 0x2Au);
LABEL_15:
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
      v6 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = v20;
      v17 = MEMORY[0x277CCABB0];
      v11 = v6;
      v12 = [v17 numberWithInt:0];
      *buf = 136315650;
      v22 = v1;
      v23 = 2048;
      v24 = v16;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "Marked %s purgeable with flags 0x%llx returned: %@", buf, 0x20u);
      goto LABEL_15;
    }
  }

  result = close(v2);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

id GKFrameworkVersionDescription()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = GKGameCenterFoundationBundle();
  v2 = [v1 _gkFrameworkVersionDescription];
  v3 = [v0 stringWithFormat:@"%@\n", v2];

  v4 = GKGameCenterUIFrameworkBundle();
  v5 = [v4 _gkFrameworkVersionDescription];
  v6 = [v3 stringByAppendingFormat:@"%@\n", v5];

  v7 = GKGameKitBundle();
  v8 = [v7 _gkFrameworkVersionDescription];
  v9 = [v6 stringByAppendingFormat:@"%@\n", v8];

  v10 = GKGameCenterUIServiceBundle();
  v11 = [v10 _gkFrameworkVersionDescription];
  v12 = [v9 stringByAppendingFormat:@"%@\n", v11];

  return v12;
}

id GKGameCenterFoundationBundle()
{
  if (GKGameCenterFoundationBundle_onceToken != -1)
  {
    GKGameCenterFoundationBundle_cold_1();
  }

  v1 = GKGameCenterFoundationBundle_sBundle;

  return v1;
}

id GKGameKitBundle()
{
  if (GKGameKitBundle_onceToken[0] != -1)
  {
    GKGameKitBundle_cold_1();
  }

  v1 = GKGameKitBundle_sBundle;

  return v1;
}

id GKGameCenterUIServiceBundle()
{
  if (GKGameCenterUIServiceBundle_onceToken != -1)
  {
    GKGameCenterUIServiceBundle_cold_1();
  }

  v1 = GKGameCenterUIServiceBundle_sBundle;

  return v1;
}

void __GKGameKitBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCA8D8]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/System/Library/Frameworks/GameKit.framework", GSSystemRootDirectory()];
  v1 = [v0 initWithPath:v3];
  v2 = GKGameKitBundle_sBundle;
  GKGameKitBundle_sBundle = v1;
}

void __GKGameCenterFoundationBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCA8D8]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/System/Library/PrivateFrameworks/GameCenterFoundation.framework", GSSystemRootDirectory()];
  v1 = [v0 initWithPath:v3];
  v2 = GKGameCenterFoundationBundle_sBundle;
  GKGameCenterFoundationBundle_sBundle = v1;
}

void __GKGameCenterUIFrameworkBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCA8D8]);
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/System/Library/PrivateFrameworks/GameCenterUI.framework", GSSystemRootDirectory()];
  v2 = [v0 initWithPath:v1];
  v3 = GKGameCenterUIFrameworkBundle_sBundle;
  GKGameCenterUIFrameworkBundle_sBundle = v2;

  v4 = objc_alloc(MEMORY[0x277CCA8D8]);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/iOSSupport/System/Library/PrivateFrameworks/GameCenterUI.framework"];
  v5 = [v4 initWithPath:v7];
  v6 = GKGameCenterUIFrameworkBundle_sIOSMacBundle;
  GKGameCenterUIFrameworkBundle_sIOSMacBundle = v5;
}

void __GKGameCenterUIServiceBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCA8D8]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/Applications/GameCenterUIService.app", GSSystemRootDirectory()];
  v1 = [v0 initWithPath:v3];
  v2 = GKGameCenterUIServiceBundle_sBundle;
  GKGameCenterUIServiceBundle_sBundle = v1;
}

id GKGameCenterNotificationsBundle()
{
  if (GKGameCenterNotificationsBundle_onceToken != -1)
  {
    GKGameCenterNotificationsBundle_cold_1();
  }

  v1 = GKGameCenterNotificationsBundle_sBundle;

  return v1;
}

void __GKGameCenterNotificationsBundle_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCA8D8]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/System/Library/UserNotifications/Bundles/com.apple.gamecenter.bundle", GSSystemRootDirectory()];
  v1 = [v0 initWithPath:v3];
  v2 = GKGameCenterNotificationsBundle_sBundle;
  GKGameCenterNotificationsBundle_sBundle = v1;
}

id GKDateAsWhenString(void *a1, char a2)
{
  v3 = a1;
  [v3 timeIntervalSinceNow];
  if (v4 > -2.0)
  {
    v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings NOW_TIME];
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if (v4 <= -3600.0)
  {
    if (v4 <= -86400.0)
    {
      if (GKDateAsWhenString_once != -1)
      {
        v13 = v4;
        GKDateAsWhenString_cold_1();
        v4 = v13;
      }

      if (v4 <= -604800.0)
      {
        v12 = GKDateAsWhenString___longFormatter;
      }

      else if (a2)
      {
        v12 = GKDateAsWhenString___shortDayNameFormatter;
      }

      else
      {
        v12 = GKDateAsWhenString___shortFormatter;
      }

      v5 = [v12 stringFromDate:v3];
      goto LABEL_3;
    }

    v7 = (v4 / -3600.0);
    v8 = MEMORY[0x277CCACA8];
    v9 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict RELATIVE_HOURS_AGO_FORMAT];
  }

  else
  {
    v7 = (v4 / -60.0);
    v8 = MEMORY[0x277CCACA8];
    v9 = +[_TtC20GameCenterFoundation23GCFLocalizedStringsDict RELATIVE_MINUTES_AGO_FORMAT];
  }

  v10 = v9;
  v6 = [v8 localizedStringWithFormat:v9, v7];

LABEL_9:

  return v6;
}

void __GKDateAsWhenString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = GKDateAsWhenString___shortFormatter;
  GKDateAsWhenString___shortFormatter = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = GKDateAsWhenString___shortDayNameFormatter;
  GKDateAsWhenString___shortDayNameFormatter = v2;

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = GKDateAsWhenString___longFormatter;
  GKDateAsWhenString___longFormatter = v4;

  __GKDateAsWhenString_block_invoke_2();
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v7 addObserverForName:*MEMORY[0x277CBE620] object:0 queue:0 usingBlock:&__block_literal_global_66];
}

void __GKDateAsWhenString_block_invoke_2()
{
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = GKDateAsWhenString___shortFormatter;
  v1 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"EEEEjmm" options:0 locale:v6];
  [v0 setDateFormat:v1];

  v2 = GKDateAsWhenString___shortDayNameFormatter;
  v3 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"EEEjmm" options:0 locale:v6];
  [v2 setDateFormat:v3];

  v4 = GKDateAsWhenString___longFormatter;
  v5 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"MMMdy" options:0 locale:v6];
  [v4 setDateFormat:v5];
}

id GKAbsoluteTimeAsWhenStringWithOptions(char a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  v3 = GKDateAsWhenString(v2, a1);

  return v3;
}

id GKCurrentTimestamp()
{
  if (GKCurrentTimestamp_once != -1)
  {
    GKCurrentTimestamp_cold_1();
  }

  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = [GKCurrentTimestamp_sFormatter stringFromDate:v0];

  return v1;
}

uint64_t __GKCurrentTimestamp_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = GKCurrentTimestamp_sFormatter;
  GKCurrentTimestamp_sFormatter = v0;

  v2 = GKCurrentTimestamp_sFormatter;

  return [v2 setDateFormat:@"MM/dd/yyyy HH:mm:ss.SSS"];
}

id GKGetPreferredLanguage()
{
  objc_sync_enter(@"GKLocaleSyncObject");
  v0 = sPreferredLanguage;
  objc_sync_exit(@"GKLocaleSyncObject");

  return v0;
}

uint64_t GKSetPreferredLanguage(void *a1)
{
  v1 = a1;
  objc_sync_enter(@"GKLocaleSyncObject");
  v2 = sPreferredLanguage;
  sPreferredLanguage = v1;

  return objc_sync_exit(@"GKLocaleSyncObject");
}

id GKFormatNetworkStringWithArguments(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4 && [v4 count])
    {
      v6 = [MEMORY[0x277CBEB28] data];
      v7 = [v3 UTF8String];
      v8 = [v3 lengthOfBytesUsingEncoding:4];
      if (*(v7 + v8))
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKUtils.m"];
        v12 = [v11 lastPathComponent];
        v13 = [v9 stringWithFormat:@"%@ (formatStringChars[length] == 0)\n[%s (%s:%d)]", v10, "NSString * _Nonnull GKFormatNetworkStringWithArguments(NSString *__strong _Nonnull, NSArray *__strong _Nullable)", objc_msgSend(v12, "UTF8String"), 414];

        [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
      }

      if (v8)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = v15[v7];
          if (!v15[v7])
          {
            break;
          }

          v29 = v15[v7];
          v17 = v15 + 1;
          v18 = v15[v7 + 1];
          v28 = v15[v7 + 1];
          if (v16 == 37)
          {
            if (v18 == 64)
            {
              if (v14 >= [v5 count])
              {
                [MEMORY[0x277CBEB68] null];
              }

              else
              {
                [v5 objectAtIndex:v14];
              }
              v21 = ;
              v22 = [v21 description];
              v23 = [v22 dataUsingEncoding:4];

              [v6 appendData:v23];
              ++v14;
LABEL_21:

              goto LABEL_22;
            }

            if ((v18 - 48) > 9)
            {
              if (v18 == 37)
              {
                [v6 appendBytes:&v28 length:1];
              }

              goto LABEL_22;
            }

            __endptr = 0;
            v19 = strtol(&v17[v7], &__endptr, 10);
            v17 = &__endptr[~v7];
            if (*__endptr == 36 && __endptr[1] == 64)
            {
              v20 = v19 - 1;
              if (v19 - 1 >= [v5 count])
              {
                [MEMORY[0x277CBEB68] null];
              }

              else
              {
                [v5 objectAtIndex:v20];
              }
              v21 = ;
              v24 = [v21 description];
              v23 = [v24 dataUsingEncoding:4];

              [v6 appendData:v23];
              v17 += 2;
              goto LABEL_21;
            }
          }

          else
          {
            [v6 appendBytes:&v29 length:1];
            v17 = v15;
          }

LABEL_22:
          v15 = v17 + 1;
        }

        while ((v17 + 1) < v8);
      }

      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }

    else
    {
      v25 = v3;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id _sharedIntegerWithGroupingFormatter()
{
  v0 = __sharedIntegerWithGroupingFormatter;
  if (!__sharedIntegerWithGroupingFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v2 = __sharedIntegerWithGroupingFormatter;
    __sharedIntegerWithGroupingFormatter = v1;

    [__sharedIntegerWithGroupingFormatter setUsesGroupingSeparator:1];
    [__sharedIntegerWithGroupingFormatter setGroupingSize:3];
    v0 = __sharedIntegerWithGroupingFormatter;
  }

  [v0 _gkUpdateLocale];
  v3 = __sharedIntegerWithGroupingFormatter;

  return v3;
}

id _sharedIntegerFormatter()
{
  v0 = __sharedIntegerFormatter;
  if (!__sharedIntegerFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v2 = __sharedIntegerFormatter;
    __sharedIntegerFormatter = v1;

    [__sharedIntegerFormatter setUsesGroupingSeparator:0];
    v0 = __sharedIntegerFormatter;
  }

  [v0 _gkUpdateLocale];
  v3 = __sharedIntegerFormatter;

  return v3;
}

id GKFormattedStringFromInteger(uint64_t a1)
{
  v2 = _sharedIntegerFormatter();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

id GKFormattedStringWithGroupingFromInteger(uint64_t a1)
{
  v2 = _sharedIntegerWithGroupingFormatter();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

id GKFormattedStringFromPercentInteger(uint64_t a1)
{
  v2 = __sharedPercentageFormatter;
  if (!__sharedPercentageFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v4 = __sharedPercentageFormatter;
    __sharedPercentageFormatter = v3;

    [__sharedPercentageFormatter setNumberStyle:3];
    v2 = __sharedPercentageFormatter;
  }

  v5 = a1 / 100.0;
  [v2 _gkUpdateLocale];
  v6 = MEMORY[0x277CCABB0];
  v7 = __sharedPercentageFormatter;
  v8 = [v6 numberWithDouble:v5];
  v9 = [v7 stringFromNumber:v8];

  return v9;
}

void sub_22792ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22792AF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GKGetBundlePathForIdentifier(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a1];
    v2 = [v1 bundleURL];
    v3 = [v2 path];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id GKCopyLocalizedApplicationNameForDisplayIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a1];
  v2 = [v1 localizedShortName];

  return v2;
}

id _gkTabStringForTabLevel(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  if (a1 >= 1)
  {
    do
    {
      [v2 appendString:@"    "];
      --a1;
    }

    while (a1);
  }

  return v2;
}

id _gkUnicodifyDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"<" options:2];
  v4 = v3;
  v5 = [v1 rangeOfString:@">" options:4];
  v7 = v6;
  if (v4)
  {
    [v1 replaceOccurrencesOfString:@"<" withString:@"❮" options:2 range:{v2, v4}];
  }

  if (v7)
  {
    [v1 replaceOccurrencesOfString:@">" withString:@"❯" options:4 range:{v5, v7}];
  }

  return v1;
}

id _gkBeautifyVariableName(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  v4 = [v3 rangeOfString:@"self."];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 stringByReplacingCharactersInRange:v4 withString:{v5, &stru_283AFD1E0}];

    v3 = v6;
  }

  return v3;
}

id gkEnsureDirectory(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v6 = [v5 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v11];
    v4 = v11;

    if ((v6 & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        gkEnsureDirectory_cold_1();
      }

      v7 = 0;
      goto LABEL_11;
    }
  }

  v7 = v1;
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:

  return v8;
}

void sub_227935DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_22793708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_22793CDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279409A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227942EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227943288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279436D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227943C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227944A24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_227944BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_227945890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227945F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227946914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2279487E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t headerChecksum(unsigned int a1, unsigned __int16 *a2)
{
  if (a1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a2++;
      v2 += v3;
      LOWORD(a1) = a1 - 2;
    }

    while (a1 > 1u);
  }

  if (a1)
  {
    v2 += *a2;
  }

  if (v2 >= 0x10000)
  {
    do
    {
      v2 = HIWORD(v2) + v2;
    }

    while (HIWORD(v2));
  }

  return ~v2;
}

void sub_22794E640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t packetTypeFromMode(uint64_t a1)
{
  if (a1 == 1)
  {
    return 64;
  }

  else
  {
    return (a1 == 0) << 7;
  }
}

void sub_22794F8E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_227952900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_227952F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227953214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227955DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_227957FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_227958AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_sync_exit(v29);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22795A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_16@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_22795CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22795D104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getOBPrivacyGameCenterIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OnBoardingKitLibrary();
  result = dlsym(v2, "OBPrivacyGameCenterIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOBPrivacyGameCenterIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OnBoardingKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __OnBoardingKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2785DF3A0;
    v5 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = OnBoardingKitLibraryCore_frameworkLibrary;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    OnBoardingKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getOBBundleClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBBundleClass_block_invoke_cold_1();
  }

  getOBBundleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getOBPrivacyFlowClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBPrivacyFlow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyFlowClass_block_invoke_cold_1();
  }

  getOBPrivacyFlowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227965D44(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_227965F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_22797303C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t GKGamePlatformFromDyldPlatform(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_227A9FF30[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_22798A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *GKImageURLKeyForSize(uint64_t a1)
{
  v1 = __ROR8__(a1 - 64, 6);
  if (v1 < 8 && ((0x8Bu >> v1) & 1) != 0)
  {
    return off_2785E0340[v1];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"The server only provides 64, 128, 256 and 512. %d is not valid.", a1];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/NSDictionary+GKImageAdditions.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "NSString *GKImageURLKeyForSize(NSInteger)", objc_msgSend(v6, "UTF8String"), 49];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  return 0;
}

__CFString *GKImageURLKeyForSizeAndScale(uint64_t a1, double a2)
{
  v2 = (a1 * a2);
  if (v2 < 65)
  {
    return @"64";
  }

  if (v2 < 0x81)
  {
    return @"128";
  }

  if (v2 >= 0x101)
  {
    return @"512";
  }

  return @"256";
}

void sub_22798D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22798D334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22798D8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22798DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22798E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22798E8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2279909D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GKSupportsFriendingViaPushForIDS()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _os_feature_enabled_impl();
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v0;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "Current friend via push support: %d", v5, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

__CFString *GKRefreshDataTypeAsString(unsigned int a1)
{
  if (a1 >= 0x1B)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown GKRefreshDataType - PLEASE ADD enum value (%ld) to the switch in GKRefreshDataTypeAsString()", a1];
  }

  else
  {
    return off_2785E0710[a1];
  }
}

id GKTokenKeyForEnvironment(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v2 = [@"GKEnvToken-" stringByAppendingFormat:@"%@", v1];

  return v2;
}

void sub_2279980A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_227999A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void gk_dispatch_group_do(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_group_enter(v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __gk_dispatch_group_do_block_invoke;
  v7[3] = &unk_2785DD760;
  v8 = v3;
  v5 = v4[2];
  v6 = v3;
  v5(v4, v7);
}

void gk_dispatch_as_group(void *a1)
{
  v1 = a1;
  v2 = dispatch_group_create();
  v1[2](v1, v2);
}

void gk_dispatch_debounce(atomic_uint *a1, void *a2)
{
  v3 = a2;
  if (GKAtomicCompareAndSwap32(0, 1u, a1))
  {
    v3[2]();
    GKAtomicDecrement32(a1);
  }
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_2279AA818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279ABFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _hash(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 5381;
  }

  v2 = (result + 1);
  LODWORD(result) = 5381;
  do
  {
    result = (33 * result + v1);
    v3 = *v2++;
    v1 = v3;
  }

  while (v3);
  return result;
}

void sub_2279ADF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279AE72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279B2340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279B8850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279BA078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2279BCDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2279BD370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id GKInsecureCacheRoot()
{
  if (GKInsecureCacheRoot_once != -1)
  {
    GKInsecureCacheRoot_cold_1();
  }

  v1 = GKInsecureCacheRoot_sCacheRootPath;

  return v1;
}

void __GKInsecureCacheRoot_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 objectAtIndex:0];
    [v1 stringByAppendingPathComponent:@"GameKit"];
  }

  else
  {
    v2 = MEMORY[0x277CBEA60];
    v3 = NSHomeDirectory();
    v1 = [v2 arrayWithObjects:{v3, @"Library", @"Caches", @"GameKit", 0}];

    [MEMORY[0x277CCACA8] pathWithComponents:v1];
  }
  v4 = ;

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v10];
  v6 = v10;

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __GKInsecureCacheRoot_block_invoke_cold_1();
    }
  }

  v8 = GKInsecureCacheRoot_sCacheRootPath;
  GKInsecureCacheRoot_sCacheRootPath = v4;
  v9 = v4;
}

id GKUniqueTestCachePath()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = GKInsecureCacheRoot();
  v2 = [v0 UUIDString];
  v3 = [v1 stringByAppendingPathComponent:v2];

  return v3;
}

id GKImageCacheRoot(void *a1)
{
  v1 = a1;
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"Images"];

  if (v1)
  {
    v4 = [v1 cacheKeyRepresentation];
    v5 = [v3 stringByAppendingPathComponent:v4];

    v3 = v5;
  }

  return v3;
}

id GKImageCachePathForURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 isFileURL])
  {
    v3 = [v2 path];
  }

  else
  {
    v4 = [v2 absoluteString];
    v5 = GKImageCacheRoot(v4);
    v6 = [v2 lastPathComponent];
    v3 = [v5 stringByAppendingPathComponent:v6];
  }

  return v3;
}

id GKImageCachePathForSubdirectoryAndFilename(void *a1, void *a2)
{
  v3 = a2;
  v4 = GKImageCacheRoot(a1);
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

id GKTurnBasedGameDataCacheRoot(void *a1)
{
  v1 = a1;
  v2 = GKInsecureCacheRoot();
  v3 = [v2 stringByAppendingPathComponent:@"TurnBasedSessions"];

  if (v1)
  {
    v4 = [v1 cacheKeyRepresentation];
    v5 = [v3 stringByAppendingPathComponent:v4];

    v3 = v5;
  }

  return v3;
}

id GKSupportLogRoot()
{
  if (GKSupportLogRoot_once != -1)
  {
    GKSupportLogRoot_cold_1();
  }

  v1 = GKSupportLogRoot_sLogRootPath;

  return v1;
}

void __GKSupportLogRoot_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 objectAtIndex:0];
    v2 = [v1 stringByAppendingPathComponent:@"Logs"];
    v3 = [v2 stringByAppendingPathComponent:@"GameKit"];
  }

  else
  {
    v4 = MEMORY[0x277CBEA60];
    v5 = NSHomeDirectory();
    v1 = [v4 arrayWithObjects:{v5, @"Library", @"Logs", @"GameKit", 0}];

    v3 = [MEMORY[0x277CCACA8] pathWithComponents:v1];
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v7 = [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    NSLog(&stru_283AFD180.isa, v8);
  }

  v9 = GKSupportLogRoot_sLogRootPath;
  GKSupportLogRoot_sLogRootPath = v3;
  v10 = v3;
}

id GKSupportDataRoot()
{
  if (GKSupportDataRoot_once != -1)
  {
    GKSupportDataRoot_cold_1();
  }

  v1 = GKSupportDataRoot_sSupportRootPath;

  return v1;
}

void __GKSupportDataRoot_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 objectAtIndex:0];
    [v1 stringByAppendingPathComponent:@"GameKit"];
  }

  else
  {
    v2 = MEMORY[0x277CBEA60];
    v3 = NSHomeDirectory();
    v1 = [v2 arrayWithObjects:{v3, @"Library", @"GameKit", 0}];

    [MEMORY[0x277CCACA8] pathWithComponents:v1];
  }
  v4 = ;

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __GKSupportDataRoot_block_invoke_cold_1();
    }
  }

  v9 = GKSupportDataRoot_sSupportRootPath;
  GKSupportDataRoot_sSupportRootPath = v4;
  v10 = v4;
}

void sub_2279CC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GKObserverMutationQueueCreatingIfNecessary()
{
  if (GKObserverMutationQueueCreatingIfNecessary_queueCreationPredicate != -1)
  {
    GKObserverMutationQueueCreatingIfNecessary_cold_1();
  }

  v1 = GKObserverMutationQueue;

  return v1;
}

uint64_t __GKObserverMutationQueueCreatingIfNecessary_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.gamekit.observerMutationQueue", 0);
  v1 = GKObserverMutationQueue;
  GKObserverMutationQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2279CEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getASCArtworkClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppStoreComponentsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppStoreComponentsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2785E2600;
    v6 = 0;
    AppStoreComponentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppStoreComponentsLibraryCore_frameworkLibrary)
  {
    __getASCArtworkClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("ASCArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASCArtworkClass_block_invoke_cold_1();
  }

  getASCArtworkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppStoreComponentsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppStoreComponentsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2279DA63C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2279DB56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2279DDB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2279DE6F0()
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](0);
  return sub_227A72F4C();
}

uint64_t sub_2279DE73C()
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](0);
  return sub_227A72F4C();
}

uint64_t sub_2279DE78C()
{
  v1 = sub_227A71EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 104);
  v6(v5, *MEMORY[0x277CCB180], v1);
  v7 = sub_227A71F5C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  *(v0 + 16) = sub_227A71F2C();
  v6(v5, *MEMORY[0x277CCB178], v1);
  v10 = *(v7 + 48);
  v11 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_227A71F2C();
  return v0;
}

uint64_t sub_2279DE8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2279DE904, 0, 0);
}

uint64_t sub_2279DE904()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0[4];
  if (v2 == 1)
  {
    v10 = *(v0[5] + 24);
    v11 = *(MEMORY[0x277CCB190] + 4);
    v5 = swift_task_alloc();
    v0[7] = v5;
    type metadata accessor for GKGroupActivityMessage();
    OUTLINED_FUNCTION_88();
    sub_2279F2038(v12, v1);
    OUTLINED_FUNCTION_9_0();
    sub_2279F2038(v13, v1);
    OUTLINED_FUNCTION_148();
    *v5 = v14;
    v9 = sub_2279DEBE0;
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = *(v0[5] + 16);
    v4 = *(MEMORY[0x277CCB190] + 4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    type metadata accessor for GKGroupActivityMessage();
    OUTLINED_FUNCTION_88();
    sub_2279F2038(v6, v1);
    OUTLINED_FUNCTION_9_0();
    sub_2279F2038(v7, v1);
    OUTLINED_FUNCTION_148();
    *v5 = v8;
    v9 = sub_2279DEB00;
LABEL_5:
    v5[1] = v9;
    v15 = v0[2];
    v16 = v0[3];
    OUTLINED_FUNCTION_161();

    return MEMORY[0x28211FC98](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  sub_2279F35A8();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_161();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_2279DEB00()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279DEBE0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279DECC0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC618, &qword_227AA05A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_227AA00E0;
  v10 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;

  *(v9 + 32) = sub_227A2EC1C(0, 0, v8, &unk_227AA0608, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;

  *(v9 + 40) = sub_227A2EC1C(0, 0, v8, &unk_227AA0618, v12);
  return v9;
}

uint64_t sub_2279DEE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for GKGroupActivityMessage();
  v6[6] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC620, &qword_227AA0620) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC628, &qword_227AA0628);
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC630, &qword_227AA0630);
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279DF014, 0, 0);
}

uint64_t sub_2279DF014()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_147();
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_89();
  sub_2279F2038(v5, v1);
  OUTLINED_FUNCTION_9_0();
  v7 = sub_2279F2038(v6, v1);
  OUTLINED_FUNCTION_159(v7);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_81();
  v10(v9);
  OUTLINED_FUNCTION_14_0(&qword_27D7DC638, &qword_27D7DC630, &qword_227AA0630);
  v11 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 120) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v14);
}

uint64_t sub_2279DF12C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279DF238()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC640, &qword_227AA0638);
  v0[17] = v2;
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = OUTLINED_FUNCTION_145();
    v4(v3);

    OUTLINED_FUNCTION_41();

    return v5();
  }

  else
  {
    v7 = v0[4];
    sub_2279F4810(v1, v0[7]);
    OUTLINED_FUNCTION_58();
    v13 = v8;
    v9 = *(v7 + 4);
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_2279DF3AC;
    v11 = v0[5];
    v12 = OUTLINED_FUNCTION_108(v0[7]);

    return v13(v12, 0);
  }
}

uint64_t sub_2279DF3AC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2279DF4B0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[8];
  v2 = *(v0[17] + 48);
  sub_2279F354C(v0[7]);
  v3 = sub_227A71EFC();
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(v1 + v2);
  OUTLINED_FUNCTION_14_0(&qword_27D7DC638, &qword_27D7DC630, &qword_227AA0630);
  v5 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[15] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_22(v6);

  return MEMORY[0x282200308](v8);
}

uint64_t sub_2279DF598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for GKGroupActivityMessage();
  v6[6] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC620, &qword_227AA0620) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC628, &qword_227AA0628);
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC630, &qword_227AA0630);
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279DF738, 0, 0);
}

uint64_t sub_2279DF738()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_147();
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_89();
  sub_2279F2038(v5, v1);
  OUTLINED_FUNCTION_9_0();
  v7 = sub_2279F2038(v6, v1);
  OUTLINED_FUNCTION_159(v7);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_81();
  v10(v9);
  OUTLINED_FUNCTION_14_0(&qword_27D7DC638, &qword_27D7DC630, &qword_227AA0630);
  v11 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 120) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v14);
}

uint64_t sub_2279DF850()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279DF95C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC640, &qword_227AA0638);
  v0[17] = v2;
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = OUTLINED_FUNCTION_145();
    v4(v3);

    OUTLINED_FUNCTION_41();

    return v5();
  }

  else
  {
    v7 = v0[4];
    sub_2279F4810(v1, v0[7]);
    OUTLINED_FUNCTION_58();
    v13 = v8;
    v9 = *(v7 + 4);
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_2279DFB48;
    v11 = v0[5];
    v12 = OUTLINED_FUNCTION_108(v0[7]);

    return v13(v12, 1);
  }
}

uint64_t sub_2279DFAD0()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 16) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2279DFB48()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 144);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2279DFC4C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[8];
  v2 = *(v0[17] + 48);
  sub_2279F354C(v0[7]);
  v3 = sub_227A71EFC();
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(v1 + v2);
  OUTLINED_FUNCTION_14_0(&qword_27D7DC638, &qword_27D7DC630, &qword_227AA0630);
  v5 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[15] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_22(v6);

  return MEMORY[0x282200308](v8);
}

uint64_t sub_2279DFD34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2279DFD5C()
{
  v0 = sub_2279DFD34();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

double sub_2279DFD8C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_227A7206C();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_2279DFE04()
{
  v1 = sub_227A71C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227A7289C();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_227A72B1C();

  v17 = 0xD000000000000010;
  v18 = 0x8000000227A97820;
  v7 = *(v0 + 16);
  sub_227A71FDC();
  sub_2279F2038(&qword_27D7DC568, MEMORY[0x277CC95F0]);
  v8 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v8);

  (*(v2 + 8))(v5, v1);
  v10 = v17;
  v9 = v18;
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, qword_280B54DB8);

  v12 = sub_227A7226C();

  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_227A46730(v10, v9, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_227904000, v12, v6, "SharePlay - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AAA1930](v14, -1, -1);
    MEMORY[0x22AAA1930](v13, -1, -1);
  }

  else
  {
  }

  return sub_227A71FEC();
}

uint64_t sub_2279E00A8()
{
  v1 = sub_227A71C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227A7289C();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_227A72B1C();

  v17 = 0xD000000000000011;
  v18 = 0x8000000227A97B10;
  v7 = *(v0 + 16);
  sub_227A71FDC();
  sub_2279F2038(&qword_27D7DC568, MEMORY[0x277CC95F0]);
  v8 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v8);

  (*(v2 + 8))(v5, v1);
  v10 = v17;
  v9 = v18;
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, qword_280B54DB8);

  v12 = sub_227A7226C();

  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_227A46730(v10, v9, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_227904000, v12, v6, "SharePlay - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AAA1930](v14, -1, -1);
    MEMORY[0x22AAA1930](v13, -1, -1);
  }

  else
  {
  }

  return sub_227A71FFC();
}

uint64_t sub_2279E034C()
{
  v1 = sub_227A71C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227A7289C();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_227A72B1C();

  v17 = 0xD000000000000011;
  v18 = 0x8000000227A97620;
  v7 = *(v0 + 16);
  sub_227A71FDC();
  sub_2279F2038(&qword_27D7DC568, MEMORY[0x277CC95F0]);
  v8 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v8);

  (*(v2 + 8))(v5, v1);
  v10 = v17;
  v9 = v18;
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, qword_280B54DB8);

  v12 = sub_227A7226C();

  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    v15 = sub_227A46730(v10, v9, &v17);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_227904000, v12, v6, "SharePlay - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AAA1930](v14, -1, -1);
    MEMORY[0x22AAA1930](v13, -1, -1);
  }

  else
  {
  }

  return sub_227A7202C();
}

uint64_t sub_2279E05F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for DefaultGKGroupActivityMessenger();
  swift_allocObject();

  result = sub_2279DE78C();
  a1[3] = v4;
  a1[4] = &off_283AF9B58;
  *a1 = result;
  return result;
}

uint64_t sub_2279E0658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_227A71C6C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC670, &unk_227AA5EA0);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC678, &qword_227AA0690);
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC680, &qword_227AA0698);
  v6[16] = v16;
  v17 = *(v16 - 8);
  v6[17] = v17;
  v18 = *(v17 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279E0854, 0, 0);
}

uint64_t sub_2279E0854()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v0[19] = *(v0[4] + 16);
  sub_227A71FCC();
  OUTLINED_FUNCTION_27(&qword_27D7DC688, &qword_27D7DC678, &qword_227AA0690);
  OUTLINED_FUNCTION_123();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_81();
  v10(v9);
  OUTLINED_FUNCTION_158();
  v11 = OUTLINED_FUNCTION_138();
  v12(v11);
  OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
  v13 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[20] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_80(v14);
  v16 = v0[18];
  v17 = v0[16];
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v18);
}

uint64_t sub_2279E096C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E0A80()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[9];
    v4 = v0[5];
    sub_227A71FDC();
    v14 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_2279E0C08;
    v7 = v0[6];
    v8 = OUTLINED_FUNCTION_108(v0[9]);

    return v14(v8, v1);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);

    OUTLINED_FUNCTION_41();

    return v13();
  }
}

uint64_t sub_2279E0C08()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = v1[23];
  v5 = v1[22];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[7];
  v9 = *v0;
  *v3 = *v0;

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_109();
  v12(v11);
  OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
  v13 = *(MEMORY[0x277D856D0] + 4);
  v14 = swift_task_alloc();
  v2[20] = v14;
  *v14 = v9;
  OUTLINED_FUNCTION_80();
  v15 = v1[18];
  v16 = v1[16];

  return MEMORY[0x282200308](v2 + 2);
}

uint64_t sub_2279E0DE4()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 24) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2279E0E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v9 = OUTLINED_FUNCTION_149(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a1;
  v15[6] = a2;

  return sub_227A2EC1C(0, 0, v13, a4, v15);
}

uint64_t sub_2279E0F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_227A71C6C();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC698, &qword_227AA06B8);
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6A0, &qword_227AA06C0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6A8, &qword_227AA06C8);
  v6[13] = v14;
  v15 = *(v14 - 8);
  v6[14] = v15;
  v16 = *(v15 + 64) + 15;
  v6[15] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6B0, &qword_227AA06D0);
  v6[16] = v17;
  v18 = *(v17 - 8);
  v6[17] = v18;
  v19 = *(v18 + 64) + 15;
  v6[18] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6B8, &qword_227AA06D8);
  v6[19] = v20;
  v21 = *(v20 - 8);
  v6[20] = v21;
  v22 = *(v21 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279E11E4, 0, 0);
}

uint64_t sub_2279E11E4()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v0[22] = *(v0[3] + 16);
  sub_227A7203C();
  OUTLINED_FUNCTION_27(&qword_27D7DC6C0, &qword_27D7DC6B0, &qword_227AA06D0);
  OUTLINED_FUNCTION_123();
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_81();
  v10(v9);
  OUTLINED_FUNCTION_158();
  v11 = OUTLINED_FUNCTION_138();
  v12(v11);
  OUTLINED_FUNCTION_4_1(&qword_27D7DC6C8, &qword_27D7DC6B8, &qword_227AA06D8);
  v13 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[23] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_62(v14);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v16);
}

uint64_t sub_2279E12E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E13F4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[12];
  v2 = v0[9];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[11];
    v6 = v0[8];
    (*(v0[20] + 8))(v0[21], v0[19]);

    OUTLINED_FUNCTION_41();

    return v7();
  }

  else
  {
    v9 = v0[22];
    v10 = v0[8];
    v11 = v0[4];
    (*(v0[10] + 32))(v0[11], v1, v2);
    sub_227A71FDC();
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[25] = v13;
    *v13 = v0;
    v13[1] = sub_2279E1650;
    v14 = v0[11];
    v15 = v0[5];
    v16 = OUTLINED_FUNCTION_108(v0[8]);

    return v17(v16);
  }
}

uint64_t sub_2279E15D8()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 16) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2279E1650()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v2 = v1[25];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[6];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_115();
  v10(v9);
  v11 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2279E178C()
{
  OUTLINED_FUNCTION_31();
  (*(v0[10] + 8))(v0[11], v0[9]);
  OUTLINED_FUNCTION_4_1(&qword_27D7DC6C8, &qword_27D7DC6B8, &qword_227AA06D8);
  v1 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[23] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_62();

  return MEMORY[0x282200308](v4);
}

uint64_t sub_2279E1858()
{
  v0 = [objc_opt_self() local];
  v1 = [v0 internal];

  v2 = [v1 playerID];
  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_2279E18F8()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5E8, &qword_227AA0560);
  *v2 = v0;
  v2[1] = sub_2279E19E0;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000016, 0x8000000227A977C0, sub_2279E1ADC, 0, v3);
}

uint64_t sub_2279E19E0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279E1ADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F0, &qword_227AA0568);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 multiplayerService];

  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_2279F35FC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2279E1F14;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [v8 fetchDevicePushToken_];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

uint64_t sub_2279E1CD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_227A7289C();
  sub_227A72B1C();

  v15 = 0x6576656972746552;
  v16 = 0xE900000000000064;
  if (a2 >> 60 == 15)
  {
    v5 = 0x206C696E20;
  }

  else
  {
    v5 = 32;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x22AA9FE40](v5, v6);

  MEMORY[0x22AA9FE40](0xD00000000000001DLL, 0x8000000227A97800);
  v8 = v15;
  v7 = v16;
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v9 = sub_227A7227C();
  __swift_project_value_buffer(v9, qword_280B54DB8);

  v10 = sub_227A7226C();

  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    v13 = sub_227A46730(v8, v7, &v15);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_227904000, v10, v4, "SharePlay - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AAA1930](v12, -1, -1);
    MEMORY[0x22AAA1930](v11, -1, -1);
  }

  else
  {
  }

  v15 = a1;
  v16 = a2;
  sub_2279E3ED0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F0, &qword_227AA0568);
  return sub_227A7270C();
}

uint64_t sub_2279E1F14(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_227A71B9C();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_2279E3F90(v2, v7);
}

uint64_t sub_2279E1FAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2279E1FCC, 0, 0);
}

uint64_t sub_2279E1FCC()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC648, &qword_227AA0658);
  OUTLINED_FUNCTION_148();
  *v5 = v6;
  v5[1] = sub_2279E20C8;
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2279E20C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2279E21E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_41();
  v3 = *(v0 + 56);

  return v2();
}

void sub_2279E2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227AA00F0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_227A7268C();

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_2279F487C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2279E297C;
  aBlock[3] = &block_descriptor_191;
  v16 = _Block_copy(aBlock);

  [v11 loadPlayersForLegacyIdentifiers:v13 withCompletionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_2279E2480(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    v8 = sub_227A728BC();
    v23 = 0xE000000000000000;
    sub_227A72B1C();
    MEMORY[0x22AA9FE40](0xD000000000000032, 0x8000000227A97E80);
    MEMORY[0x22AA9FE40](a3, a4);
    MEMORY[0x22AA9FE40](0x3A726F727265202CLL, 0xE900000000000020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    sub_227A72C1C();
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v9 = sub_227A7227C();
    __swift_project_value_buffer(v9, qword_280B54DB8);

    v10 = sub_227A7226C();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = sub_227A46730(0, 0xE000000000000000, &v22);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_227904000, v10, v8, "SharePlay - %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AAA1930](v12, -1, -1);
      MEMORY[0x22AAA1930](v11, -1, -1);
    }

    else
    {
    }

    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
    return sub_227A726FC();
  }

  else
  {
    v14 = sub_2279E2890(a1);
    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v16 = sub_227A728BC();
      v23 = 0xE000000000000000;
      sub_227A72B1C();
      MEMORY[0x22AA9FE40](0xD000000000000047, 0x8000000227A97E30);
      MEMORY[0x22AA9FE40](a3, a4);
      if (qword_280B54DB0 != -1)
      {
        swift_once();
      }

      v17 = sub_227A7227C();
      __swift_project_value_buffer(v17, qword_280B54DB8);

      v18 = sub_227A7226C();

      if (os_log_type_enabled(v18, v16))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        v21 = sub_227A46730(0, 0xE000000000000000, &v22);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_227904000, v18, v16, "SharePlay - %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x22AAA1930](v20, -1, -1);
        MEMORY[0x22AAA1930](v19, -1, -1);
      }

      else
      {
      }

      v22 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC650, &unk_227AA0660);
    return sub_227A7270C();
  }
}

uint64_t sub_2279E2890(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_227A72B9C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_2279F4900(v3, v6);
    sub_2279F495C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_227A72B7C();
    v4 = *(v7 + 16);
    sub_227A72BAC();
    sub_227A72BBC();
    sub_227A72B8C();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_2279E297C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_227A7269C();

  v7 = a3;
  v5(v6, a3);
}

void sub_2279E2A10(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v4 = sub_227A25094(a2);
  sub_2279F17E0(a1, 0, v4, v5);
}

uint64_t sub_2279E2A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  return sub_227A2EC1C(0, 0, v7, &unk_227AA0578, v9);
}

uint64_t sub_2279E2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = sub_227A71C6C();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5F8, &qword_227AA0580);
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC600, &qword_227AA0588);
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279E2D08, 0, 0);
}

uint64_t sub_2279E2D08()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_227A7227C();
  v3 = __swift_project_value_buffer(v2, qword_280B54DB8);
  v1[28] = v3;
  v4 = v3;
  v5 = sub_227A7226C();
  if (OUTLINED_FUNCTION_128(v5))
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_70(4.8149e-34);
    *(v0 + 4) = sub_227A46730(0xD00000000000002ALL, v6, v7);
    OUTLINED_FUNCTION_21(&dword_227904000, v8, v9, "SharePlay - %s");
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_46();
  }

  v10 = v1[27];
  v12 = v1[23];
  v11 = v1[24];
  v13 = v1[22];
  sub_2279F1D74();
  sub_227A720BC();
  OUTLINED_FUNCTION_139();
  sub_227A7204C();
  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_81();
  v16(v15);
  OUTLINED_FUNCTION_28(&qword_280B550B0, &qword_27D7DC600, &qword_227AA0588);
  v17 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v1[29] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_161();

  return MEMORY[0x282200308](v20);
}

uint64_t sub_2279E2E84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E2F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[31];
  if (v25)
  {
    v26 = v22[28];
    v28 = v22[20];
    v27 = v22[21];
    v29 = v22[19];
    sub_227A7289C();
    v22[13] = 0;
    v22[14] = 0xE000000000000000;
    sub_227A72B1C();
    v30 = v22[14];

    v22[11] = 0xD000000000000022;
    v22[12] = 0x8000000227A97910;
    sub_227A71FDC();
    OUTLINED_FUNCTION_0_12();
    sub_2279F2038(v31, v32);
    v33 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v33);

    (*(v28 + 8))(v27, v29);
    v35 = v22[11];
    v34 = v22[12];

    v36 = sub_227A7226C();

    if (OUTLINED_FUNCTION_143())
    {
      OUTLINED_FUNCTION_106();
      a11 = OUTLINED_FUNCTION_100();
      *v26 = 136315138;
      v37 = sub_227A46730(v35, v34, &a11);

      *(v26 + 4) = v37;
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_154(v38, v39, v40, v41);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    v53 = v22[17];
    v54 = type metadata accessor for DefaultGKGroupActivitySession();
    OUTLINED_FUNCTION_110();
    v55 = swift_allocObject();
    *(v55 + 16) = v25;
    v22[5] = v54;
    v22[6] = sub_2279F2038(&qword_27D7DC608, type metadata accessor for DefaultGKGroupActivitySession);
    v22[2] = v55;

    v68 = v53 + *v53;
    v56 = v53[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v22[32] = v57;
    *v57 = v58;
    v57[1] = sub_2279E3334;
    v59 = v22[18];
    OUTLINED_FUNCTION_65_0();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, v68, a11, a12, a13, a14);
  }

  else
  {
    v42 = v22[24];
    v43 = v22[21];
    (*(v22[26] + 8))(v22[27], v22[25]);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_65_0();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2279E32BC()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 128) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2279E3334()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    sub_2279F3774(v3 + 56, &qword_27D7DC610, &qword_227AA0590);
    __swift_destroy_boxed_opaque_existential_0Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E3454()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_28(&qword_280B550B0, &qword_27D7DC600, &qword_227AA0588);
  v2 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 232) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x282200308](v5);
}

uint64_t sub_2279E34EC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 248);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_2279F3774(v0 + 56, &qword_27D7DC610, &qword_227AA0590);
  OUTLINED_FUNCTION_28(&qword_280B550B0, &qword_27D7DC600, &qword_227AA0588);
  v2 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 232) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_0();

  return MEMORY[0x282200308](v5);
}

uint64_t sub_2279E35B0()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v7 - v2;
  v4 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  return sub_227A2EC1C(0, 0, v3, &unk_227AA06F0, v5);
}

uint64_t sub_2279E3690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6D0, &qword_227AA06F8);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6D8, &qword_227AA0700);
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC6E0, &qword_227AA0708);
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279E382C, 0, 0);
}

uint64_t sub_2279E382C()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = *(v0[13] + 16);
  sub_227A71DBC();
  OUTLINED_FUNCTION_27(&qword_280B54D60, &qword_27D7DC6D8, &qword_227AA0700);
  OUTLINED_FUNCTION_123();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_81();
  v11(v10);
  OUTLINED_FUNCTION_158();
  v12 = OUTLINED_FUNCTION_138();
  v13(v12);
  v0[23] = @"GKGroupActivityEligibilityChanges";
  OUTLINED_FUNCTION_4_1(&qword_280B54D68, &qword_27D7DC6E0, &qword_227AA0708);
  v14 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[24] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_63(v15);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v17);
}

uint64_t sub_2279E393C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E3A50()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 209);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    OUTLINED_FUNCTION_41();

    return v4();
  }

  else
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = 0xD000000000000019;
    *(inited + 40) = 0x8000000227A98100;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v1 & 1;
    v9 = sub_227A7243C();
    v10 = v6;
    sub_2279E2A10(v10, v9);

    OUTLINED_FUNCTION_4_1(&qword_280B54D68, &qword_27D7DC6E0, &qword_227AA0708);
    v11 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    *(v0 + 192) = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_63();

    return MEMORY[0x282200308](v14);
  }
}

uint64_t sub_2279E3BFC()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 96) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_69();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2279E3C74()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_125();

  sub_227A2095C(&v3, v1, v0);
  swift_endAccess();
}

BOOL sub_2279E3CDC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_126();
  v1 = *(v0 + 112);

  v2 = OUTLINED_FUNCTION_75();
  v4 = sub_227A46D70(v2, v3, v1);

  return v4;
}

uint64_t sub_2279E3D40()
{
  OUTLINED_FUNCTION_152();
  v1 = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x277D84FA0];
}

uint64_t GroupActivityInviteesManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GroupActivityInviteesManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2279E3E14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2279E3E84();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2279E3E40(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2279E3ED0(*a1, *(a1 + 8));
  return sub_2279E3F3C();
}

uint64_t sub_2279E3E84()
{
  v1 = (v0 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken);
  OUTLINED_FUNCTION_126();
  v3 = *v1;
  v2 = v1[1];
  v4 = OUTLINED_FUNCTION_115();
  sub_2279E3ED0(v4, v5);
  return OUTLINED_FUNCTION_115();
}

uint64_t sub_2279E3ED0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2279E3EE4(a1, a2);
  }

  return a1;
}

uint64_t sub_2279E3EE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2279E3F3C()
{
  OUTLINED_FUNCTION_91_0();
  v3 = (v1 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken);
  OUTLINED_FUNCTION_152();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_2279E3F90(v4, v5);
}

uint64_t sub_2279E3F90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2279E3FA4(a1, a2);
  }

  return a1;
}

uint64_t sub_2279E3FA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2279E4054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2279E40AC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2279E40AC()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin;
  OUTLINED_FUNCTION_126();
  return *(v0 + v1);
}

uint64_t sub_2279E40E8(char a1)
{
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin;
  result = OUTLINED_FUNCTION_152();
  *(v1 + v3) = a1;
  return result;
}

id GKGroupActivityManager.init(matchmakingSupport:)(uint64_t a1)
{
  type metadata accessor for DefaultGKGroupActivityManagerSupport();
  OUTLINED_FUNCTION_110();
  v2 = swift_allocObject();
  sub_227A71DDC();
  *(v2 + 16) = sub_227A71DCC();
  v3 = sub_2279F1BC0(v2, a1, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_2279E42A0(uint64_t a1)
{
  v2 = sub_227A719CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_227A719BC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2279E4400()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v5 = OUTLINED_FUNCTION_149(v4);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v9 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v9, qword_280B54DB8);
  v10 = sub_227A7226C();
  if (os_log_type_enabled(v10, v8))
  {
    OUTLINED_FUNCTION_94();
    v11 = OUTLINED_FUNCTION_100();
    v22 = v11;
    *v1 = 136315138;
    *(v1 + 4) = sub_227A46730(0xD000000000000032, v2 | 0x8000000000000000, &v22);
    OUTLINED_FUNCTION_154(&dword_227904000, v10, v8, "SharePlay - %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  sub_227A7276C();
  v12 = OUTLINED_FUNCTION_171();
  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v16 = v3;
  v17 = OUTLINED_FUNCTION_170();
  sub_227A2EC1C(v17, v18, v19, v20, v15);
}

uint64_t sub_2279E45C0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionEligibilityObserver);
  sub_227A727DC();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2279E467C;
  v3 = *(v0 + 16);

  return sub_2279E6EC0();
}

uint64_t sub_2279E467C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279E47A4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_3_0(sub_2279E47BC);
}

uint64_t sub_2279E49C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 248) = *(v1 + 16);
  v5 = *(v1 + 40);
  *(v1 + 176) = *(v1 + 24);
  *(v1 + 192) = v5;
  *(v1 + 208) = *(v1 + 56);
  *(v1 + 224) = *(v3 + 72);

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2279E4AE4()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 248) == 1)
  {
    v1 = *(v0 + 184);
    if (v1)
    {
      v3 = *(v0 + 200);
      v2 = *(v0 + 208);
      v4 = *(v0 + 192);
      *(v0 + 80) = *(v0 + 176);
      *(v0 + 88) = v1;
      *(v0 + 96) = v4;
      *(v0 + 104) = v3;
      *(v0 + 112) = v2;
      *(v0 + 120) = *(v0 + 216);
      v5 = *(MEMORY[0x277CCB238] + 4);
      v6 = swift_task_alloc();
      *(v0 + 232) = v6;
      sub_2279F1D74();
      OUTLINED_FUNCTION_148();
      *v6 = v7;
      v6[1] = sub_2279E4BF0;

      return MEMORY[0x28211FE10](&type metadata for GKGroupActivity);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_165();
    sub_2279F1D24(v8, v9);
  }

  OUTLINED_FUNCTION_23();

  return v10();
}

uint64_t sub_2279E4BF0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[30] = v0;

  if (!v0)
  {
    v9 = v3[27];
    v10 = v3[28];
    v11 = v3[25];
    v12 = v3[26];
    v13 = v3[24];
    sub_2279F1D24(v3[22], v3[23]);
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2279E4D00()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = *(v1 + 160);
  sub_227A7289C();
  v3 = sub_227A7226C();
  if (OUTLINED_FUNCTION_128(v3))
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_70(4.8149e-34);
    *(v0 + 4) = sub_227A46730(0xD000000000000019, v4, v5);
    OUTLINED_FUNCTION_21(&dword_227904000, v6, v7, "SharePlay - %s");
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_161();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2279E4DC0()
{
  OUTLINED_FUNCTION_132();
  v1 = v0[30];
  v2 = OUTLINED_FUNCTION_165();
  v3 = v0[20];
  sub_2279F1D24(v2, v4);
  sub_227A728BC();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();

  OUTLINED_FUNCTION_85();
  v0[17] = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v6 = sub_227A7251C();
  MEMORY[0x22AA9FE40](v6);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_116())
  {
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_114();
    *v3 = 136315138;
    v7 = OUTLINED_FUNCTION_82();
    sub_227A46730(v7, v8, v9);
    OUTLINED_FUNCTION_133();
    *(v3 + 4) = 0xD000000000000030;
    OUTLINED_FUNCTION_21(&dword_227904000, v10, v11, "SharePlay - %s");
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
  }

  v12 = v0[30];
  swift_willThrow();
  OUTLINED_FUNCTION_41();
  v14 = v0[30];

  return v13();
}

uint64_t sub_2279E4F34()
{
  OUTLINED_FUNCTION_31();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = sub_227A71F8C();
  v1[19] = v4;
  OUTLINED_FUNCTION_34(v4);
  v1[20] = v5;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2279E53A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279E548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 176);
  v15 = *(v14 + 184);
  v18 = *(v14 + 160);
  v17 = *(v14 + 168);
  v19 = *(v14 + 152);
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();

  OUTLINED_FUNCTION_85();
  v55 = v20;
  v21 = *(v18 + 16);
  v22 = OUTLINED_FUNCTION_82();
  v23(v22);
  v24 = sub_227A7252C();
  MEMORY[0x22AA9FE40](v24);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_116())
  {
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_114();
    *v15 = 136315138;
    v25 = OUTLINED_FUNCTION_82();
    sub_227A46730(v25, v26, v27);
    OUTLINED_FUNCTION_133();
    *(v15 + 4) = 0xD000000000000022;
    OUTLINED_FUNCTION_21(&dword_227904000, v28, v29, "SharePlay - %s");
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
  }

  v54 = *(v14 + 248);
  v30 = *(v14 + 216);
  v31 = *(v14 + 200);
  v32 = *(v14 + 176);
  v33 = *(v14 + 152);
  v34 = *(v14 + 160);
  (*(v34 + 104))(*(v14 + 168), *MEMORY[0x277CCB1C8], v33);
  OUTLINED_FUNCTION_115();
  v35 = sub_227A71F7C();
  v36 = *(v34 + 8);
  v37 = OUTLINED_FUNCTION_87();
  v36(v37);
  (v36)(v32, v33);
  v39 = *(v14 + 224);
  v38 = *(v14 + 232);
  v40 = *(v14 + 208);
  v41 = *(v14 + 192);
  v43 = *(v14 + 168);
  v42 = *(v14 + 176);
  v44 = *(v14 + 128);

  *v44 = v35 & 1;
  *(v44 + 8) = v41;
  *(v44 + 16) = v31;
  *(v44 + 24) = v40;
  *(v44 + 32) = v30;
  *(v44 + 40) = v54;
  *(v44 + 48) = v39;
  *(v44 + 56) = v38;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_65_0();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, 0xD000000000000022, v55, a12, a13, a14);
}

uint64_t sub_2279E56A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2279E5768;

  return sub_2279E47A4(v6);
}

uint64_t sub_2279E5768()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[4];
  if (v2)
  {
    v11 = sub_227A71A4C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v12 = v9[1];
  OUTLINED_FUNCTION_175();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_2279E58F0()
{
  v1 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport], *&v0[OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24]);
  OUTLINED_FUNCTION_110();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_227AA0140;
  *(v3 + 24) = v2;
  v4 = *v1;
  v5 = v0;
  sub_2279E2A90(&unk_227AA0150, v3);
}

uint64_t sub_2279E59B0(void *a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2279E5A6C;

  return (sub_2279F37CC)(v4, a2);
}

uint64_t sub_2279E5A6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279E5B4C(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 24) = MEMORY[0x277D84F78] + 8;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2279E5C50;

  return v8(a2);
}

uint64_t sub_2279E5C50()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_23();

  return v5();
}

void sub_2279E5D78()
{
  v2 = v0;
  v3 = sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_280B54DB8);
  v5 = sub_227A7226C();
  if (os_log_type_enabled(v5, v3))
  {
    OUTLINED_FUNCTION_106();
    v6 = OUTLINED_FUNCTION_100();
    v23[0] = v6;
    *v1 = 136315138;
    *(v1 + 4) = sub_227A46730(0xD000000000000019, 0x8000000227A96DA0, v23);
    OUTLINED_FUNCTION_154(&dword_227904000, v5, v3, "SharePlay - %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  v7 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_126();
  sub_2279F3500(v7 + v2, &v21, &qword_27D7DC540, &qword_227AA0158);
  if (v22)
  {
    sub_22790B104(&v21, v23);
    OUTLINED_FUNCTION_168((v2 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v2 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
    sub_2279F4B58(v23, &v21);
    v8 = *v7;
    LOBYTE(v8) = sub_2279E6094(&v21);
    sub_2279F3774(&v21, &qword_27D7DC540, &qword_227AA0158);
    if (v8)
    {
      sub_227A7289C();
      v9 = OUTLINED_FUNCTION_151();
      if (os_log_type_enabled(v9, v2))
      {
        v10 = OUTLINED_FUNCTION_106();
        v11 = OUTLINED_FUNCTION_107();
        *&v21 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_227A46730(0xD000000000000038, 0x8000000227A96E00, &v21);
        OUTLINED_FUNCTION_176(&dword_227904000, v12, v13, "SharePlay - %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      OUTLINED_FUNCTION_19(v23, v23[3]);
      v14 = sub_227A7205C();
      *(v15 + 32) = 2;
      v14(&v21, 0);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    sub_2279F3774(&v21, &qword_27D7DC540, &qword_227AA0158);
  }

  sub_227A7289C();
  v16 = OUTLINED_FUNCTION_151();
  if (os_log_type_enabled(v16, v2))
  {
    v17 = OUTLINED_FUNCTION_106();
    v18 = OUTLINED_FUNCTION_107();
    v23[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_227A46730(0xD000000000000038, 0x8000000227A96DC0, v23);
    OUTLINED_FUNCTION_176(&dword_227904000, v19, v20, "SharePlay - %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }
}

uint64_t sub_2279E6094(uint64_t a1)
{
  sub_2279F3500(a1, &v22, &qword_27D7DC540, &qword_227AA0158);
  if (v24)
  {
    sub_22790B104(&v22, v21);
    v1 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_2279DFD8C(&v22);
    v3 = v23;
    v2 = v24;

    sub_2279F1F98(&v22);
    v4 = sub_227A7289C();
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_227A72B1C();
    MEMORY[0x22AA9FE40](0xD000000000000027, 0x8000000227A97880);
    v5 = sub_2279E1858();
    MEMORY[0x22AA9FE40](v5);

    MEMORY[0x22AA9FE40](0xD00000000000002CLL, 0x8000000227A978B0);
    MEMORY[0x22AA9FE40](v3, v2);
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_227A7227C();
    __swift_project_value_buffer(v6, qword_280B54DB8);

    v7 = sub_227A7226C();

    if (os_log_type_enabled(v7, v4))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      v10 = sub_227A46730(0, 0xE000000000000000, v20);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_227904000, v7, v4, "SharePlay - %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x22AAA1930](v9, -1, -1);
      MEMORY[0x22AAA1930](v8, -1, -1);
    }

    else
    {
    }

    if (sub_2279E1858() == v3 && v17 == v2)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_227A72E5C();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    sub_2279F3774(&v22, &qword_27D7DC540, &qword_227AA0158);
    v11 = sub_227A7289C();
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v12 = sub_227A7227C();
    __swift_project_value_buffer(v12, qword_280B54DB8);
    v13 = sub_227A7226C();
    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_227A46730(0xD00000000000003FLL, 0x8000000227A97840, &v22);
      _os_log_impl(&dword_227904000, v13, v11, "SharePlay - %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x22AAA1930](v15, -1, -1);
      MEMORY[0x22AAA1930](v14, -1, -1);
    }

    v16 = 0;
  }

  return v16 & 1;
}

id sub_2279E64B4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  sub_2279E6558(a1, &v4);
  sub_2279F1D74();
  sub_227A728EC();
  sub_2279F1F98(&v4);
  return v2;
}

uint64_t sub_2279E6558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2279F187C([a1 internal]);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_227A7240C();

  v7 = [v6 _gkImageURLForSize_scale_];
  if (!v7)
  {

    v5 = 0;
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  v5 = sub_227A724EC();
  v10 = v9;

LABEL_6:
  v11 = [a1 name];
  v12 = sub_227A724EC();
  v14 = v13;

  v15 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v2 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
  result = sub_2279E1858();
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = result;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = v5;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_2279E6708()
{
  OUTLINED_FUNCTION_132();
  v46 = v0;
  sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v4 = sub_227A7227C();
  v5 = __swift_project_value_buffer(v4, qword_280B54DB8);
  v6 = sub_227A7226C();
  if (OUTLINED_FUNCTION_127(v6))
  {
    OUTLINED_FUNCTION_94();
    v2 = OUTLINED_FUNCTION_100();
    v45 = v2;
    *v1 = 136315138;
    *(v1 + 4) = sub_227A46730(0xD000000000000013, v3 | 0x8000000000000000, &v45);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_154(v7, v8, v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  v11 = *(v0 + 320);
  v12 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  *(v0 + 328) = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_126();
  sub_2279F3500(v12 + v11, v0 + 56, &qword_27D7DC540, &qword_227AA0158);
  if (*(v0 + 80))
  {
    v13 = *(v0 + 320);
    sub_22790B104((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_168((v13 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v13 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
    sub_2279F4B58(v0 + 16, v0 + 96);
    v14 = *v13;
    v15 = sub_2279E6094(v0 + 96);
    sub_2279F3774(v0 + 96, &qword_27D7DC540, &qword_227AA0158);
    sub_227A7289C();
    v16 = OUTLINED_FUNCTION_151();
    v17 = OUTLINED_FUNCTION_127(v16);
    if (v15)
    {
      if (v17)
      {
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_67();
        *v2 = 136315138;
        *(v2 + 4) = sub_227A46730(0xD00000000000003CLL, 0x8000000227A96EE0, &v45);
        OUTLINED_FUNCTION_40(&dword_227904000, v18, v19, "SharePlay - %s");
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_39();
      }

      OUTLINED_FUNCTION_19((v0 + 16), *(v0 + 40));
      v20 = sub_227A7205C();
      v22 = OUTLINED_FUNCTION_29(v20, v21);
      v23(v22);
      sub_227A7289C();
      v24 = OUTLINED_FUNCTION_151();
      if (OUTLINED_FUNCTION_127(v24))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_84();
        *v5 = 136315138;
        OUTLINED_FUNCTION_79();
        *(v5 + 1) = sub_227A46730(v25, v26, v27);
        OUTLINED_FUNCTION_35(&dword_227904000, v28, v29, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }

      OUTLINED_FUNCTION_134((v0 + 16), *(v0 + 40));
      sub_2279DFE04();
    }

    else
    {
      if (v17)
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_84();
        *v5 = 136315138;
        OUTLINED_FUNCTION_79();
        *(v5 + 1) = sub_227A46730(v38, v39, v40);
        OUTLINED_FUNCTION_35(&dword_227904000, v41, v42, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_78();
      }
    }

    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_2279E6B0C;
    v44 = *(v0 + 320);

    return sub_2279E8E78();
  }

  else
  {
    sub_2279F3774(v0 + 56, &qword_27D7DC540, &qword_227AA0158);
    sub_227A7289C();
    v30 = OUTLINED_FUNCTION_151();
    if (OUTLINED_FUNCTION_127(v30))
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_84();
      *v5 = 136315138;
      OUTLINED_FUNCTION_79();
      *(v5 + 1) = sub_227A46730(v31, v32, v33);
      OUTLINED_FUNCTION_35(&dword_227904000, v34, v35, "SharePlay - %s");
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_78();
    }

    OUTLINED_FUNCTION_41();

    return v36();
  }
}

uint64_t sub_2279E6B0C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279E6BF0()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  OUTLINED_FUNCTION_125();
  sub_2279F1FEC(v0 + 136, v2 + v1, &qword_27D7DC540, &qword_227AA0158);
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger;
  OUTLINED_FUNCTION_125();
  sub_2279F1FEC(v0 + 136, v3 + v2, &qword_27D7DC550, &qword_227AA0170);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_41();

  return v4();
}

uint64_t sub_2279E6CF4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2279E6D9C;

  return sub_2279E66F0();
}

uint64_t sub_2279E6D9C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_41();

  return v7();
}

uint64_t sub_2279E6EC0()
{
  OUTLINED_FUNCTION_31();
  v1[49] = v0;
  v2 = sub_227A72BFC();
  v1[50] = v2;
  OUTLINED_FUNCTION_34(v2);
  v1[51] = v3;
  v5 = *(v4 + 64);
  v1[52] = OUTLINED_FUNCTION_164();
  v6 = sub_227A72BEC();
  v1[53] = v6;
  OUTLINED_FUNCTION_34(v6);
  v1[54] = v7;
  v9 = *(v8 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v10 = sub_227A71C6C();
  v1[57] = v10;
  OUTLINED_FUNCTION_34(v10);
  v1[58] = v11;
  v13 = *(v12 + 64);
  v1[59] = OUTLINED_FUNCTION_164();
  v14 = sub_227A7210C();
  v1[60] = v14;
  OUTLINED_FUNCTION_34(v14);
  v1[61] = v15;
  v17 = *(v16 + 64);
  v1[62] = OUTLINED_FUNCTION_164();
  v18 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2279E7744()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = v4[65];
  v6 = v4[62];
  v7 = v4[61];
  v8 = v4[60];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v11 + 528) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_87();
  v14(v13);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2279E7DD0()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = v4[69];
  v6 = v4[68];
  v7 = v4[67];
  v8 = v4[56];
  v9 = v4[53];
  v10 = v4[52];
  v11 = v4[51];
  v12 = v4[50];
  v13 = *v1;
  OUTLINED_FUNCTION_7();
  *v14 = v13;
  *(v15 + 560) = v0;

  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_109();
  v18(v17);
  v19 = OUTLINED_FUNCTION_87();
  v7(v19);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_146();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2279E7F78()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[64];
  v2 = v0[49];
  OUTLINED_FUNCTION_134(v0 + 7, v0[10]);
  sub_2279E034C();
  v3 = OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_181(v3, v4, &qword_27D7DC540, &qword_227AA0158);
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_181(v5, v6, &qword_27D7DC550, &qword_227AA0170);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_74(v7);

  return sub_2279E8E78();
}

uint64_t sub_2279E8058()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 568);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279E813C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[62];
  v2 = v0[59];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[52];

  OUTLINED_FUNCTION_41();

  return v6();
}

uint64_t sub_2279E81D0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = v1[62];
  v6 = v1[59];
  v7 = v1[56];
  v8 = v1[55];
  v9 = v1[52];

  v10 = *(v3 + 8);
  OUTLINED_FUNCTION_161();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2279E8984()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_60();
  v2 = v0[63];
  sub_227A728BC();
  v3 = sub_227A7226C();
  v4 = OUTLINED_FUNCTION_127(v3);
  v5 = v0[70];
  if (v4)
  {
    OUTLINED_FUNCTION_94();
    v21 = OUTLINED_FUNCTION_100();
    *v1 = 136315138;
    OUTLINED_FUNCTION_167();
    *(v1 + 4) = sub_227A46730(0xD000000000000047, v6, v7);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_154(v8, v9, v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_38();
  }

  v12 = v0[64];
  v13 = v0[49];
  OUTLINED_FUNCTION_134(v0 + 7, v0[10]);
  sub_2279E034C();
  v14 = OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_181(v14, v15, &qword_27D7DC540, &qword_227AA0158);
  swift_endAccess();
  OUTLINED_FUNCTION_71();
  v16 = OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_181(v16, v17, &qword_27D7DC550, &qword_227AA0170);
  swift_endAccess();
  v18 = swift_task_alloc();
  v0[71] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_74(v18);
  OUTLINED_FUNCTION_105();

  return sub_2279E8E78();
}

uint64_t sub_2279E8AEC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 41) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2279E8B14, 0, 0);
}

uint64_t sub_2279E8CD0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279E8DD0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2279F50DC;

  return sub_2279E6EC0();
}

uint64_t sub_2279E8E90()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v3, qword_280B54DB8);
  v4 = sub_227A7226C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_70(4.8149e-34);
    *(v1 + 4) = sub_227A46730(0xD000000000000015, v5, v6);
    OUTLINED_FUNCTION_21(&dword_227904000, v7, v8, "SharePlay - %s");
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_46();
  }

  *(v2 + 72) = *(*(v2 + 64) + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_161();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279E8F98()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);
  sub_2279E3D40();
  v2 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2279E8FF4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin;
  OUTLINED_FUNCTION_152();
  *(v1 + v2) = 0;
  if (*(v1 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSessionStateAndMessagesObserver))
  {

    sub_227A727DC();
  }

  v3 = (*(v0 + 64) + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken);
  OUTLINED_FUNCTION_152();
  v4 = *v3;
  v5 = v3[1];
  *v3 = xmmword_227AA0100;
  sub_2279E3F90(v4, v5);
  OUTLINED_FUNCTION_41();

  return v6();
}

uint64_t sub_2279E90F0(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_135();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = OUTLINED_FUNCTION_86();

  return sub_227A62CD4(v7, v8);
}

uint64_t sub_2279E9154(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2279F50DC;

  return sub_2279E8E78();
}

uint64_t sub_2279E91FC()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_126();
  sub_2279F3500(v1 + v0, &v8, &qword_27D7DC540, &qword_227AA0158);
  if (!v9)
  {
    return sub_2279F3774(&v8, &qword_27D7DC540, &qword_227AA0158);
  }

  sub_22790B104(&v8, v6);
  if ((sub_2279E92EC() & 1) == 0)
  {
    OUTLINED_FUNCTION_134(v6, v7);
    sub_2279DFD8C(&v8);
    sub_2279F1F98(&v8);
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_19(v6, v7);
      v2 = sub_227A7205C();
      *(v3 + 32) = 0;
      v2(v5, 0);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v6);
}

uint64_t sub_2279E92EC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [result currentMatchRequest];
  v6 = *(v0 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_previousMatchRequest);
  *(v0 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_previousMatchRequest) = v5;
  v7 = v5;

  if (!v7)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v8 = [v4 inviteeCount];
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = [v4 totalPlayerCount];
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (v11 < [v7 maxPlayers])
    {
      swift_unknownObjectRelease();

      return 0;
    }

    LOBYTE(v6) = sub_227A7289C();
    v20[1] = 0xE000000000000000;
    sub_227A72B1C();
    MEMORY[0x22AA9FE40](0xD00000000000003ALL, 0x8000000227A975C0);
    v12 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v12);

    MEMORY[0x22AA9FE40](2108704, 0xE300000000000000);
    v13 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v13);

    MEMORY[0x22AA9FE40](0xD000000000000014, 0x8000000227A97600);
    v14 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v14);

    v2 = 0;
    v1 = 0xE000000000000000;
    if (qword_280B54DB0 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v15 = sub_227A7227C();
  __swift_project_value_buffer(v15, qword_280B54DB8);

  v16 = sub_227A7226C();

  if (os_log_type_enabled(v16, v6))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    v19 = sub_227A46730(v2, v1, v20);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_227904000, v16, v6, "SharePlay - %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x22AAA1930](v18, -1, -1);
    MEMORY[0x22AAA1930](v17, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_2279E9634()
{
  v0 = ACAccount.GKConstants.rawValue.getter();
  v2 = v1;
  if (v0 == ACAccount.GKConstants.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_75();
    v5 = sub_227A72E5C();
  }

  return v5 & 1;
}

uint64_t sub_2279E96C4()
{
  v0 = sub_227A724EC();
  v2 = v1;
  if (v0 == sub_227A724EC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_227A72E5C();
  }

  return v5 & 1;
}

uint64_t sub_2279E9748(unsigned __int8 a1, char a2)
{
  v2 = 1819047270;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6972637365446F6ELL;
    }

    else
    {
      v4 = 6710895;
    }

    if (v3 == 1)
    {
      v5 = 0xED00006E6F697470;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1819047270;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6972637365446F6ELL;
    }

    else
    {
      v2 = 6710895;
    }

    if (a2 == 1)
    {
      v6 = 0xED00006E6F697470;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227A72E5C();
  }

  return v8 & 1;
}

uint64_t sub_2279E9848(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006E6F69746365;
  v3 = 0x6C4572656461656CLL;
  v4 = a1;
  v5 = 0x6C4572656461656CLL;
  v6 = 0xEE006E6F69746365;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000227A96CB0;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v6 = 0x8000000227A96CD0;
      v5 = 0xD00000000000001CLL;
      break;
    case 3:
      v6 = 0x8000000227A96CF0;
      v5 = 0xD000000000000012;
      break;
    case 4:
      v5 = 0x724F657461647075;
      v6 = 0xEC0000006E696F4ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x8000000227A96CB0;
      v3 = 0xD000000000000011;
      break;
    case 2:
      v2 = 0x8000000227A96CD0;
      v3 = 0xD00000000000001CLL;
      break;
    case 3:
      v2 = 0x8000000227A96CF0;
      v3 = 0xD000000000000012;
      break;
    case 4:
      v3 = 0x724F657461647075;
      v2 = 0xEC0000006E696F4ALL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_155();
  }

  return v8 & 1;
}

uint64_t sub_2279E99CC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646E75;
  v3 = 0x6F4674736F486F6ELL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x5264696C61766E69;
    }

    else
    {
      v5 = 0x74756F656D6974;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00747365757165;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x6F4674736F486F6ELL;
    v6 = 0xEB00000000646E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x5264696C61766E69;
    }

    else
    {
      v3 = 0x74756F656D6974;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00747365757165;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_155();
  }

  return v8 & 1;
}

uint64_t sub_2279E9AD8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6168437962626F6CLL;
  }

  else
  {
    v3 = 0x6E616843656D6167;
  }

  if (v2)
  {
    v4 = 0xEB000000006C656ELL;
  }

  else
  {
    v4 = 0xEC0000006C656E6ELL;
  }

  if (a2)
  {
    v5 = 0x6168437962626F6CLL;
  }

  else
  {
    v5 = 0x6E616843656D6167;
  }

  if (a2)
  {
    v6 = 0xEC0000006C656E6ELL;
  }

  else
  {
    v6 = 0xEB000000006C656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227A72E5C();
  }

  return v8 & 1;
}

uint64_t sub_2279E9B88(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x676E656C6C616863;
  v4 = a1;
  v5 = 0x676E656C6C616863;
  v6 = 0xEA00000000007365;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x8000000227A96BF0;
      break;
    case 2:
      v5 = 0x6F6272656461656CLL;
      v7 = 1935962721;
      goto LABEL_5;
    case 3:
      v5 = 0x6D65766569686361;
      v7 = 1937010277;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000016;
      v2 = 0x8000000227A96BF0;
      break;
    case 2:
      v3 = 0x6F6272656461656CLL;
      v8 = 1935962721;
      goto LABEL_10;
    case 3:
      v3 = 0x6D65766569686361;
      v8 = 1937010277;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_155();
  }

  return v10 & 1;
}

uint64_t sub_2279E9D30(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_3_0(sub_2279E9D48);
}

uint64_t sub_2279E9D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_178();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = v20[5];
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();
  v24 = [v23 internal];
  v25 = [v24 debugDescription];

  sub_227A724EC();
  v27 = v26;

  v28 = OUTLINED_FUNCTION_109();
  MEMORY[0x22AA9FE40](v28);

  OUTLINED_FUNCTION_73();
  MEMORY[0x22AA9FE40](0xD000000000000032);
  v29 = a10;
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v30 = sub_227A7227C();
  __swift_project_value_buffer(v30, qword_280B54DB8);
  OUTLINED_FUNCTION_55();

  sub_227A7226C();
  OUTLINED_FUNCTION_55();

  if (OUTLINED_FUNCTION_116())
  {
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_114();
    *v27 = 136315138;
    v31 = OUTLINED_FUNCTION_64();
    sub_227A46730(v31, v32, v33);
    OUTLINED_FUNCTION_130();
    *(v27 + 4) = v29;
    OUTLINED_FUNCTION_25(&dword_227904000, v34, v35, "SharePlay - %s");
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

  v36 = v20[5];
  v20[7] = *(v20[6] + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager);
  v37 = [v36 internal];
  v38 = [v37 playerID];

  v39 = sub_227A724EC();
  v41 = v40;

  v20[8] = v39;
  v20[9] = v41;
  OUTLINED_FUNCTION_162();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_2279E9F50()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  OUTLINED_FUNCTION_125();
  v4 = OUTLINED_FUNCTION_75();
  sub_2279EF86C(v4, v5);
  swift_endAccess();

  OUTLINED_FUNCTION_41();

  return v6();
}

uint64_t sub_2279EA004(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_95();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_86();

  return sub_227A62CD4(v10, v11);
}

uint64_t sub_2279EA07C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2279EA140;

  return sub_2279E9D30(v6);
}

uint64_t sub_2279EA140()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_41();

  return v8();
}

id GKGroupActivityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKGroupActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKGroupActivityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2279EA40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2279F50E8;

  return sub_2279EA4B4();
}

uint64_t sub_2279EA4B4()
{
  OUTLINED_FUNCTION_31();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC698, &qword_227AA06B8);
  v1[10] = v4;
  OUTLINED_FUNCTION_34(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_164();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2279EA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_178();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v24 = v20[11];
  (*(v24 + 16))(v20[12], v20[8], v20[10]);
  v25 = *(v24 + 88);
  v26 = OUTLINED_FUNCTION_115();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x277CCB1F8])
  {
    v29 = v20[12];
    v30 = v20[7];
    (*(v20[11] + 96))(v29, v20[10]);
    v31 = *v29;
    v20[13] = *v29;
    sub_227A7289C();
    OUTLINED_FUNCTION_16_0();
    sub_227A72B1C();
    v32 = a11;
    v20[4] = a10;
    v20[5] = v32;
    OUTLINED_FUNCTION_73();
    MEMORY[0x22AA9FE40](0xD000000000000019);
    v33 = sub_227A71C6C();
    OUTLINED_FUNCTION_0_12();
    sub_2279F2038(v34, v35);
    v36 = OUTLINED_FUNCTION_112();
    MEMORY[0x22AA9FE40](v36);

    MEMORY[0x22AA9FE40](0xD000000000000018, 0x8000000227A98000);
    v20[6] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
    sub_227A72C1C();
    v37 = v20[4];
    v38 = v20[5];
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v39 = sub_227A7227C();
    __swift_project_value_buffer(v39, qword_280B54DB8);
    OUTLINED_FUNCTION_55();

    sub_227A7226C();
    OUTLINED_FUNCTION_55();

    if (OUTLINED_FUNCTION_116())
    {
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_114();
      *v33 = 136315138;
      v40 = OUTLINED_FUNCTION_64();
      sub_227A46730(v40, v41, v42);
      OUTLINED_FUNCTION_130();
      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_25(&dword_227904000, v43, v44, "SharePlay - %s");
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_39();
    }

    else
    {
    }

    v52 = swift_task_alloc();
    v20[14] = v52;
    *v52 = v20;
    v52[1] = sub_2279EABC0;
    v53 = v20[9];
    OUTLINED_FUNCTION_162();

    return sub_2279E6EC0();
  }

  v45 = v28;
  if (v28 == *MEMORY[0x277CCB208])
  {
    v46 = v20[7];
    sub_227A7289C();
    OUTLINED_FUNCTION_16_0();
    sub_227A72B1C();

    OUTLINED_FUNCTION_85();
    a10 = 0xD000000000000019;
    a11 = v47;
    sub_227A71C6C();
    OUTLINED_FUNCTION_0_12();
    sub_2279F2038(v48, v49);
    v50 = OUTLINED_FUNCTION_160();
    MEMORY[0x22AA9FE40](v50);

    v51 = ") state is waiting";
  }

  else
  {
    v56 = *MEMORY[0x277CCB200];
    sub_227A7289C();
    if (v45 != v56)
    {
      v69 = v20[10];
      v71 = v20[7];
      v70 = v20[8];
      OUTLINED_FUNCTION_16_0();
      sub_227A72B1C();
      v72 = a11;
      v20[2] = a10;
      v20[3] = v72;
      OUTLINED_FUNCTION_73();
      MEMORY[0x22AA9FE40](0xD000000000000019);
      sub_227A71C6C();
      OUTLINED_FUNCTION_0_12();
      sub_2279F2038(v73, v74);
      v75 = sub_227A72E1C();
      v77 = v76;
      MEMORY[0x22AA9FE40](v75);

      MEMORY[0x22AA9FE40](0xD000000000000014, 0x8000000227A97FA0);
      sub_227A72C1C();
      v79 = v20[2];
      v78 = v20[3];
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v80 = sub_227A7227C();
      __swift_project_value_buffer(v80, qword_280B54DB8);
      OUTLINED_FUNCTION_55();

      sub_227A7226C();
      OUTLINED_FUNCTION_55();

      if (OUTLINED_FUNCTION_116())
      {
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_114();
        *v77 = 136315138;
        v81 = OUTLINED_FUNCTION_64();
        sub_227A46730(v81, v82, v83);
        OUTLINED_FUNCTION_130();
        *(v77 + 4) = v79;
        OUTLINED_FUNCTION_25(&dword_227904000, v84, v85, "SharePlay - %s");
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

      (*(v20[11] + 8))(v20[12], v20[10]);
      goto LABEL_26;
    }

    v57 = v20[7];
    OUTLINED_FUNCTION_16_0();
    sub_227A72B1C();

    OUTLINED_FUNCTION_85();
    a10 = 0xD000000000000019;
    a11 = v58;
    sub_227A71C6C();
    OUTLINED_FUNCTION_0_12();
    sub_2279F2038(v59, v60);
    v61 = OUTLINED_FUNCTION_160();
    MEMORY[0x22AA9FE40](v61);

    v51 = ") state is joined.";
  }

  MEMORY[0x22AA9FE40](0xD000000000000012, (v51 - 32) | 0x8000000000000000);
  v62 = a10;
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v63 = sub_227A7227C();
  __swift_project_value_buffer(v63, qword_280B54DB8);
  OUTLINED_FUNCTION_55();

  sub_227A7226C();
  OUTLINED_FUNCTION_55();

  if (OUTLINED_FUNCTION_116())
  {
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_114();
    *v21 = 136315138;
    v64 = OUTLINED_FUNCTION_64();
    sub_227A46730(v64, v65, v66);
    OUTLINED_FUNCTION_130();
    *(v21 + 4) = v62;
    OUTLINED_FUNCTION_25(&dword_227904000, v67, v68, "SharePlay - %s");
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

LABEL_26:
  v86 = v20[12];

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_162();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12);
}

uint64_t sub_2279EABC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279EACA4()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_2279EAD04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2279F50E8;

  return sub_2279EADAC();
}

uint64_t sub_2279EADAC()
{
  OUTLINED_FUNCTION_31();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_227A7210C();
  v1[16] = v4;
  OUTLINED_FUNCTION_34(v4);
  v1[17] = v5;
  v7 = *(v6 + 64);
  v1[18] = OUTLINED_FUNCTION_164();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2279EAE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_90();
  v15 = v14[13];
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();
  OUTLINED_FUNCTION_73();
  MEMORY[0x22AA9FE40](0xD000000000000030);
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_12();
  sub_2279F2038(v16, v17);
  v18 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v18);

  MEMORY[0x22AA9FE40](0x6465676E61686320, 0xE90000000000002ELL);
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v19 = sub_227A7227C();
  v20 = __swift_project_value_buffer(v19, qword_280B54DB8);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_143())
  {
    v21 = OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_173();
    *v21 = 136315138;
    v22 = OUTLINED_FUNCTION_82();
    sub_227A46730(v22, v23, v24);
    OUTLINED_FUNCTION_133();
    *(v21 + 4) = a10;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_180(v25, v26, v27, v28);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  if (!*(v14[14] + 16))
  {
    goto LABEL_12;
  }

  v29 = v14[15];
  OUTLINED_FUNCTION_168((v29 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v29 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
  v30 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_126();
  sub_2279F3500(v30 + v29, (v14 + 2), &qword_27D7DC540, &qword_227AA0158);
  v31 = *v20;
  LOBYTE(v31) = sub_2279E6094((v14 + 2));
  sub_2279F3774((v14 + 2), &qword_27D7DC540, &qword_227AA0158);
  if (v31)
  {
    goto LABEL_12;
  }

  v32 = v14[15];
  v33 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_hasRequestedToJoin;
  OUTLINED_FUNCTION_152();
  if (*(v32 + v33))
  {
    sub_227A7289C();
    v34 = OUTLINED_FUNCTION_151();
    if (OUTLINED_FUNCTION_127(v34))
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_101();
      *v20 = 136315138;
      *(v20 + 4) = OUTLINED_FUNCTION_156(0xD000000000000037, v35);
      OUTLINED_FUNCTION_35(&dword_227904000, v36, v37, "SharePlay - %s");
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_78();
    }

LABEL_12:
    v38 = v14[18];

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_65_0();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
  }

  v49 = v14[17];
  v48 = v14[18];
  v50 = v14[16];
  *(v32 + v33) = 1;
  (*(v49 + 104))(v48, *MEMORY[0x277CCB260], v50);
  v51 = swift_task_alloc();
  v14[19] = v51;
  *v51 = v14;
  v51[1] = sub_2279EB1C0;
  v52 = v14[18];
  v53 = v14[15];
  OUTLINED_FUNCTION_65_0();

  return sub_2279E8AEC(v54, v55, v56);
}

uint64_t sub_2279EB1C0()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v2[19];
  v6 = *v1;
  *v4 = *v1;

  v7 = v2[18];
  v8 = v2[17];
  v9 = v2[16];
  if (v0)
  {

    v10 = *(v8 + 8);
    v11 = OUTLINED_FUNCTION_81();
    v12(v11);
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_175();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v17 = *(v8 + 8);
    v18 = OUTLINED_FUNCTION_81();
    v19(v18);
    v20 = v3[18];

    v21 = v6[1];
    OUTLINED_FUNCTION_175();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_2279EB364()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_41();

  return v2();
}

uint64_t sub_2279EB3BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2279E5A6C;

  return sub_2279EB464(a1, a2);
}

uint64_t sub_2279EB464(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return OUTLINED_FUNCTION_3_0(sub_2279EB480);
}

uint64_t sub_2279EB480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[26];
  v26 = v22[27];
  v27 = sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();
  v28 = a11;
  v22[21] = a10;
  v22[22] = v28;
  OUTLINED_FUNCTION_73();
  MEMORY[0x22AA9FE40](0xD000000000000020);
  v29 = type metadata accessor for GKGroupActivityMessage();
  sub_227A72C1C();
  MEMORY[0x22AA9FE40](0x203A65646F6D20, 0xE700000000000000);
  v22[25] = v26;
  type metadata accessor for GKMatchSendDataMode(0);
  sub_227A72C1C();
  v30 = v22[21];
  v31 = v22[22];
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v32 = sub_227A7227C();
  v33 = __swift_project_value_buffer(v32, qword_280B54DB8);
  v22[29] = v33;

  v34 = sub_227A7226C();

  v35 = "nge received alert without further action";
  if (os_log_type_enabled(v34, v27))
  {
    v36 = OUTLINED_FUNCTION_106();
    v37 = OUTLINED_FUNCTION_107();
    a10 = v37;
    *v36 = 136315138;
    v38 = sub_227A46730(v30, v31, &a10);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_227904000, v34, v27, "SharePlay - %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    OUTLINED_FUNCTION_103();
    v35 = "Close the challenge received alert without further action" + 16;
    OUTLINED_FUNCTION_103();
  }

  else
  {
  }

  v39 = v22[26];
  v40 = (v39 + v29[9]);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        v42 = v22[28];
        v43 = __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v42 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
        v44 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
        OUTLINED_FUNCTION_126();
        sub_2279F3500(v44 + v42, (v22 + 2), &qword_27D7DC540, &qword_227AA0158);
        v45 = *v43;
        LOBYTE(v45) = sub_2279E6094((v22 + 2));
        sub_2279F3774((v22 + 2), &qword_27D7DC540, &qword_227AA0158);
        if (v45)
        {
          v46 = v22[26];
          v22[32] = *(v22[28] + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager);
          v47 = (v46 + v29[6]);
          v22[33] = *v47;
          v22[34] = v47[1];
          OUTLINED_FUNCTION_144();
          OUTLINED_FUNCTION_65_0();

          return MEMORY[0x2822009F8](v48, v49, v50);
        }
      }

      else
      {
        v74 = (v39 + v29[10]);
        if (v74[1] >> 60 != 15)
        {
          v75 = v22[28];
          v76 = *v74;
          v77 = (v39 + v29[6]);
          v78 = *v77;
          v79 = v77[1];
          v80 = OUTLINED_FUNCTION_64();
          sub_2279E3EE4(v80, v81);
          v82 = OUTLINED_FUNCTION_64();
          sub_2279EDC08(v82, v83, v78, v79);
          v84 = OUTLINED_FUNCTION_64();
          sub_2279E3F90(v84, v85);
        }
      }

      goto LABEL_34;
    }

    v62 = v22[28];
    v63 = __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v62 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
    v64 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
    OUTLINED_FUNCTION_126();
    sub_2279F3500(v64 + v62, (v22 + 7), &qword_27D7DC540, &qword_227AA0158);
    v65 = *v63;
    LOBYTE(v65) = sub_2279E6094((v22 + 7));
    sub_2279F3774((v22 + 7), &qword_27D7DC540, &qword_227AA0158);
    if (v65)
    {
      sub_227A7289C();
      v66 = sub_227A7226C();
      if (OUTLINED_FUNCTION_128(v66))
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_101();
        *v33 = 136315138;
        *(v33 + 4) = OUTLINED_FUNCTION_156(0xD000000000000026, v67);
        OUTLINED_FUNCTION_21(&dword_227904000, v68, v69, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_46();
      }

      v70 = swift_task_alloc();
      v22[30] = v70;
      *v70 = v22;
      v70[1] = sub_2279EBB6C;
      v71 = v22[28];
      OUTLINED_FUNCTION_108(v22[26]);
      OUTLINED_FUNCTION_65_0();

      return sub_2279EC8A8(v72);
    }

    v86 = *(v22[26] + v29[8]);
    sub_227A7289C();
    v87 = sub_227A7226C();
    v88 = OUTLINED_FUNCTION_128(v87);
    if (v86 == 1)
    {
      if (v88)
      {
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_101();
        *v33 = 136315138;
        v90 = 0xD000000000000023;
LABEL_32:
        *(v33 + 4) = OUTLINED_FUNCTION_156(v90, v89);
        OUTLINED_FUNCTION_21(&dword_227904000, v91, v92, "SharePlay - %s");
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_46();
      }
    }

    else if (v88)
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_101();
      *v33 = 136315138;
      v90 = 0xD000000000000042;
      goto LABEL_32;
    }

LABEL_34:
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_65_0();

    return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
  }

  v52 = sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();
  v53 = a11;
  v22[23] = a10;
  v22[24] = v53;
  MEMORY[0x22AA9FE40](0xD000000000000034, 0x8000000227A97BE0);
  sub_227A72C1C();
  v55 = v22[23];
  v54 = v22[24];

  v56 = sub_227A7226C();

  if (os_log_type_enabled(v56, v52))
  {
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_173();
    *v33 = *(v35 + 446);
    v57 = sub_227A46730(v55, v54, &a10);

    *(v33 + 4) = v57;
    _os_log_impl(&dword_227904000, v56, v52, "SharePlay - %s", v33, 0xCu);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_46();
  }

  else
  {
  }

  v58 = swift_task_alloc();
  v22[31] = v58;
  *v58 = v22;
  v58[1] = sub_2279EBC4C;
  v59 = v22[28];
  OUTLINED_FUNCTION_65_0();

  return sub_2279EC590(v60);
}

uint64_t sub_2279EBB6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_2279EBC4C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_23();

  return v5();
}

uint64_t sub_2279EBD2C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  OUTLINED_FUNCTION_125();
  v4 = OUTLINED_FUNCTION_75();
  sub_2279EF86C(v4, v5);
  swift_endAccess();

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2279EBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2279EBEEC, 0, 0);
}

uint64_t sub_2279EBEEC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_2279EBFF4;
  v7 = v0[2];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v7, &unk_227AA05F8, v2, sub_2279F46E8, v3, 0, 0, v8);
}

void sub_2279EBFF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = *(v3 + 32);
    v9 = *(v3 + 40);

    v11 = *(v7 + 8);

    v11();
  }
}

uint64_t sub_2279EC13C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v0[3] = *(v1 + 32);
    v2 = *(MEMORY[0x277D857E0] + 4);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_2279EC224;

    return MEMORY[0x282200460]();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return v4();
  }
}

uint64_t sub_2279EC224()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2279EC344(uint64_t a1)
{
  v2 = sub_227A7289C();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0x696C6C65636E6143, 0xEB0000000020676ELL);
  v3 = *(a1 + 16);
  v4 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v4);

  MEMORY[0x22AA9FE40](0xD000000000000042, 0x8000000227A97B30);
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v5 = sub_227A7227C();
  __swift_project_value_buffer(v5, qword_280B54DB8);

  v6 = sub_227A7226C();

  if (os_log_type_enabled(v6, v2))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = sub_227A46730(0, 0xE000000000000000, v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_227904000, v6, v2, "SharePlay - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AAA1930](v8, -1, -1);
    MEMORY[0x22AAA1930](v7, -1, -1);
  }

  else
  {
  }

  for (i = (a1 + 32); v3; --v3)
  {
    v11 = *i++;

    sub_227A727DC();
  }
}

uint64_t sub_2279EC590(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2279EC5B0, 0, 0);
}

uint64_t sub_2279EC740()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279EC824()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showSharePlayMatchDeclinedToJoinAlertWithReason_];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_2279EC8A8(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_227A7210C();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v7 = sub_227A720EC();
  v2[45] = v7;
  v8 = *(v7 - 8);
  v2[46] = v8;
  v9 = *(v8 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279ECA20, 0, 0);
}

uint64_t sub_2279ECA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_178();
  OUTLINED_FUNCTION_132();
  v12 = v11[37];
  sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();
  v11[35] = a10;
  v11[36] = a11;
  OUTLINED_FUNCTION_73();
  MEMORY[0x22AA9FE40](0xD00000000000001FLL);
  v13 = type metadata accessor for GKGroupActivityMessage();
  v11[49] = v13;
  sub_227A72C1C();
  v15 = v11[35];
  v14 = v11[36];
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v16 = sub_227A7227C();
  v11[50] = OUTLINED_FUNCTION_104(v16, qword_280B54DB8);

  sub_227A7226C();
  OUTLINED_FUNCTION_129();
  if (OUTLINED_FUNCTION_143())
  {
    v17 = OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_173();
    *v17 = 136315138;
    v18 = OUTLINED_FUNCTION_82();
    sub_227A46730(v18, v19, v20);
    OUTLINED_FUNCTION_133();
    *(v17 + 4) = v15;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_180(v21, v22, v23, v24);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v25 = v11[37];
  v11[51] = *(v11[38] + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_inviteesManager);
  v26 = (v25 + *(v13 + 24));
  v11[52] = *v26;
  v11[53] = v26[1];
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_2279ECBC8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  *(v0 + 480) = sub_2279E3CDC();
  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2279ED0BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = v4[54];
  v6 = v4[42];
  v7 = v4[40];
  v8 = v4[39];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v11 + 440) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_87();
  v14(v13);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2279ED20C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  OUTLINED_FUNCTION_19(v0 + 2, v0[5]);
  v4 = sub_227A7205C();
  *(v5 + 32) = 1;
  v4(v0 + 22, 0);
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_81();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_161();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2279ED2EC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  sub_2279E3C74();
  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2279ED34C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_134((v0[38] + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v0[38] + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
  v1 = swift_task_alloc();
  v0[56] = v1;
  *v1 = v0;
  v1[1] = sub_2279ED3F0;
  v2 = v0[53];
  v3 = OUTLINED_FUNCTION_108(v0[52]);

  return sub_2279E1FAC(v3, v4);
}

uint64_t sub_2279ED3F0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 448);
  *v4 = *v1;
  v3[57] = v7;

  if (v0)
  {

    v9 = v3[47];
    v8 = v3[48];
    v11 = v3[43];
    v10 = v3[44];
    v14 = v3 + 41;
    v12 = v3[41];
    v13 = v14[1];

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_161();

    return MEMORY[0x2822009F8](v24, v25, v26);
  }
}

uint64_t sub_2279ED55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_90();
  result = sub_227A06998(v14[57]);
  if (result)
  {
    v16 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v14[57];
    v19 = v14[49];
    v20 = v18 & 0xC000000000000001;
    a10 = v18 + 32;
    a11 = v14[38];
    do
    {
      if (v20)
      {
        v21 = MEMORY[0x22AAA03F0](v17, v14[57]);
      }

      else
      {
        v21 = *(a10 + 8 * v17);
      }

      v22 = v21;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v25 = v14[37];
        v26 = (v25 + *(v19 + 28));
        v27 = *v26;
        v28 = v26[1];
        v29 = sub_227A724BC();
        v30 = (v25 + *(v19 + 44));
        if (v30[1] >> 60 == 15)
        {
          v31 = 0;
        }

        else
        {
          v32 = *v30;
          v31 = sub_227A71B8C();
        }

        [v24 sendGroupActivityInviteTo:v22 participantID:v29 pushToken:v31];
        swift_unknownObjectRelease();

        v22 = v29;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  v33 = v14[57];

  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_65_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2279ED6E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = v4[58];
  v6 = v4[41];
  v7 = v4[40];
  v8 = v4[39];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v11 + 472) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_87();
  v14(v13);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2279ED96C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  OUTLINED_FUNCTION_125();
  v4 = OUTLINED_FUNCTION_75();
  sub_2279EF86C(v4, v5);
  swift_endAccess();

  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2279ED9FC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  (*(v0[46] + 8))(v0[47], v0[45]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_161();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2279EDAA0()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  (*(v0[46] + 8))(v0[47], v0[45]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[59];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_175();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2279EDB54()
{
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_56();
  (*(v0[46] + 8))(v0[48], v0[45]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[55];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v6 = v0[42];

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_175();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_2279EDC08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_227A7289C();
  sub_227A72B1C();

  v25[0] = 0xD00000000000001DLL;
  v25[1] = 0x8000000227A97EC0;
  v11 = sub_227A71B2C();
  MEMORY[0x22AA9FE40](v11);

  MEMORY[0x22AA9FE40](0xD000000000000010, 0x8000000227A97EE0);
  MEMORY[0x22AA9FE40](a3, a4);
  if (qword_280B54DB0 != -1)
  {
    swift_once();
  }

  v12 = sub_227A7227C();
  __swift_project_value_buffer(v12, qword_280B54DB8);

  v13 = sub_227A7226C();

  if (os_log_type_enabled(v13, v10))
  {
    v24 = a3;
    v14 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    v17 = sub_227A46730(0xD00000000000001DLL, 0x8000000227A97EC0, v25);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_227904000, v13, v10, "SharePlay - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AAA1930](v16, -1, -1);
    v18 = v15;
    v5 = v14;
    a3 = v24;
    MEMORY[0x22AAA1930](v18, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00E0;
  *(inited + 32) = 0x79616C506D6F7266;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 1635017060;
  v20 = MEMORY[0x277CC9318];
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 120) = v20;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  sub_2279E3EE4(a1, a2);
  v21 = sub_227A7243C();
  v22 = *__swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v5 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
  v23 = @"GKGroupActivityData";
  sub_2279E2A10(v23, v21);
}

uint64_t sub_2279EDF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_227A720EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - v11;
  v12 = *(v3 + 16);
  v13 = sub_227A71FBC();
  v14 = v13;
  v15 = v13 + 56;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 56);
  v19 = (v16 + 63) >> 6;
  v38 = v7;
  v39 = v7 + 32;
  v35 = (v7 + 8);
  v36 = v7 + 16;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_8:
      v24 = v37;
      v23 = v38;
      (*(v38 + 16))(v37, *(v14 + 48) + *(v38 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v6);
      v34 = *(v23 + 32);
      v34(v40, v24, v6);
      v41 = sub_227A720CC();
      if (sub_227A72E1C() == a1 && v25 == a2)
      {

        goto LABEL_18;
      }

      v27 = a1;
      v28 = a2;
      v29 = sub_227A72E5C();

      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      result = (*v35)(v40, v6);
      v21 = v22;
      a2 = v28;
      a1 = v27;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    v31 = v33;
    v34(v33, v40, v6);
    v30 = 0;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v31, v30, 1, v6);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v30 = 1;
        v31 = v33;
        goto LABEL_19;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2279EE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 96) = a5;
  *(v7 + 104) = a6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a4;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = sub_227A720EC();
  *(v7 + 112) = v8;
  v9 = *(v8 - 8);
  *(v7 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279EE2A8, 0, 0);
}

uint64_t sub_2279EE2A8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v29 = *(v0 + 136);
  v3 = *(v0 + 112);
  v28 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  v6 = *(v0 + 64);
  sub_227A71C5C();
  v7 = type metadata accessor for GKGroupActivityMessage();
  v8 = v6 + v7[5];
  sub_227A71C1C();
  v9 = (v4 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport);
  OUTLINED_FUNCTION_134((v4 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(v4 + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
  v10 = sub_2279E1858();
  v26 = v11;
  v27 = v10;
  OUTLINED_FUNCTION_19(v5, v5[3]);
  sub_227A71FAC();
  v12 = sub_227A720CC();
  v13 = *(v2 + 8);
  v14 = OUTLINED_FUNCTION_87();
  v15(v14);
  *(v0 + 56) = v12;
  v16 = sub_227A72E1C();
  v18 = v17;
  OUTLINED_FUNCTION_168(v9, v9[3]);
  sub_2279F4B58(v5, v0 + 16);
  v19 = *(v0 + 56);
  LOBYTE(v19) = sub_2279E6094(v0 + 16);
  sub_2279F3774(v0 + 16, &qword_27D7DC540, &qword_227AA0158);
  v20 = (v6 + v7[6]);
  *v20 = v27;
  v20[1] = v26;
  v21 = (v6 + v7[7]);
  *v21 = v16;
  v21[1] = v18;
  *(v6 + v7[8]) = v19 & 1;
  v22 = v6 + v7[9];
  *v22 = v28;
  *(v22 + 8) = v29 & 1;
  *(v6 + v7[10]) = xmmword_227AA0100;
  v23 = (v6 + v7[11]);
  *v23 = v30;
  v23[1] = v31;
  sub_2279E3EE4(v30, v31);

  OUTLINED_FUNCTION_41();

  return v24();
}

uint64_t sub_2279EE488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 400) = a6;
  *(v6 + 296) = a4;
  *(v6 + 304) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  v7 = type metadata accessor for GKGroupActivityMessage();
  *(v6 + 312) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2279EE528, 0, 0);
}

uint64_t sub_2279EE528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_60();
  v12 = *(v11 + 288);
  v13 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_groupSession;
  OUTLINED_FUNCTION_126();
  sub_2279F3500(v13 + v12, v11 + 56, &qword_27D7DC540, &qword_227AA0158);
  if (*(v11 + 80))
  {
    v14 = *(v11 + 288);
    sub_22790B104((v11 + 56), v11 + 16);
    v15 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_messenger;
    OUTLINED_FUNCTION_126();
    sub_2279F3500(v15 + v14, v11 + 136, &qword_27D7DC550, &qword_227AA0170);
    if (*(v11 + 160))
    {
      v16 = *(v11 + 288);
      sub_22790B104((v11 + 136), v11 + 96);
      v17 = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken;
      *(v11 + 328) = OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_cachedDevicePushToken;
      v18 = v16 + v17;
      OUTLINED_FUNCTION_152();
      v19 = *(v18 + 8);
      if (v19 >> 60 == 15)
      {
        OUTLINED_FUNCTION_134((*(v11 + 288) + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport), *(*(v11 + 288) + OBJC_IVAR____TtC20GameCenterFoundation22GKGroupActivityManager_managerSupport + 24));
        v20 = swift_task_alloc();
        *(v11 + 336) = v20;
        *v20 = v11;
        OUTLINED_FUNCTION_76_0(v20);
        OUTLINED_FUNCTION_105();

        return sub_2279E18F8();
      }

      else
      {
        *(v11 + 360) = v19;
        v48 = *(v11 + 400);
        *(v11 + 368) = *(*(v11 + 288) + *(v11 + 328));
        v49 = OUTLINED_FUNCTION_86();
        sub_2279E3EE4(v49, v50);
        swift_task_alloc();
        OUTLINED_FUNCTION_50();
        *(v11 + 376) = v51;
        *v51 = v52;
        OUTLINED_FUNCTION_59(v51);
        OUTLINED_FUNCTION_105();

        return sub_2279EE1DC(v53, v54, v55, v56, v57, v58, v59);
      }
    }

    sub_2279F3774(v11 + 136, &qword_27D7DC550, &qword_227AA0170);
    sub_227A728BC();
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v32 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v32, qword_280B54DB8);
    v33 = sub_227A7226C();
    v34 = OUTLINED_FUNCTION_128(v33);
    v26 = *(v11 + 296);
    if (v34)
    {
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_101();
      *v10 = 136315138;
      OUTLINED_FUNCTION_167();
      *(v10 + 4) = sub_227A46730(0xD00000000000003DLL, v35, v36);
      OUTLINED_FUNCTION_21(&dword_227904000, v37, v38, "SharePlay - %s");
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_46();
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v11 + 16));
  }

  else
  {
    sub_2279F3774(v11 + 56, &qword_27D7DC540, &qword_227AA0158);
    sub_227A728AC();
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v23 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v23, qword_280B54DB8);
    v24 = sub_227A7226C();
    v25 = OUTLINED_FUNCTION_128(v24);
    v26 = *(v11 + 296);
    if (v25)
    {
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_101();
      *v10 = 136315138;
      OUTLINED_FUNCTION_167();
      *(v10 + 4) = sub_227A46730(v27, v28, v29);
      OUTLINED_FUNCTION_21(&dword_227904000, v30, v31, "SharePlay - %s");
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_46();
    }
  }

  v39 = *(v11 + 320);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_105();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_2279EE8B4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  v4 = *(v3 + 336);
  *v2 = *v0;
  *(v1 + 344) = v5;
  *(v1 + 352) = v6;

  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2279EE99C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = (*(v1 + 288) + *(v1 + 328));
  v3 = *v2;
  v4 = v2[1];
  *v2 = *(v1 + 344);
  sub_2279E3F90(v3, v4);
  v5 = v2[1];
  if (v5 >> 60 == 15)
  {
    sub_227A728BC();
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v6 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v6, qword_280B54DB8);
    v7 = sub_227A7226C();
    if (OUTLINED_FUNCTION_128(v7))
    {
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_70(4.8149e-34);
      *(v0 + 4) = sub_227A46730(0xD00000000000004DLL, v8, v9);
      OUTLINED_FUNCTION_21(&dword_227904000, v10, v11, "SharePlay - %s");
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_46();
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v12 = *(v1 + 296);
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

    v13 = *(v1 + 320);

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_161();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    *(v1 + 360) = v5;
    v23 = *(v1 + 400);
    *(v1 + 368) = *(*(v1 + 288) + *(v1 + 328));
    v24 = OUTLINED_FUNCTION_86();
    sub_2279E3EE4(v24, v25);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    *(v1 + 376) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_59(v26);
    OUTLINED_FUNCTION_161();

    return sub_2279EE1DC(v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_2279EEB48()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2279EEC2C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_134(v0 + 12, v0[15]);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_2279EECC8;
  v2 = v0[34];
  v3 = v0[35];
  v4 = OUTLINED_FUNCTION_108(v0[40]);

  return sub_2279DE8E0(v4, v5, v6);
}

uint64_t sub_2279EECC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2279EEDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSObject a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[40];
  v26 = sub_227A7289C();
  OUTLINED_FUNCTION_16_0();
  sub_227A72B1C();

  OUTLINED_FUNCTION_85();
  a10.isa = 0xD000000000000021;
  a11 = v27;
  sub_227A71C6C();
  OUTLINED_FUNCTION_0_12();
  sub_2279F2038(v28, v29);
  v30 = OUTLINED_FUNCTION_160();
  MEMORY[0x22AA9FE40](v30);

  isa = a10.isa;
  v31 = a11;
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v33 = sub_227A7227C();
  __swift_project_value_buffer(v33, qword_280B54DB8);
  OUTLINED_FUNCTION_55();

  sub_227A7226C();
  OUTLINED_FUNCTION_55();

  v34 = OUTLINED_FUNCTION_116();
  v36 = v22[45];
  v35 = v22[46];
  v37 = v22[40];
  if (v34)
  {
    v38 = OUTLINED_FUNCTION_106();
    v39 = OUTLINED_FUNCTION_107();
    a10.isa = v39;
    *v38 = 136315138;
    v40 = sub_227A46730(isa, v31, &a10);

    *(v38 + 4) = v40;
    _os_log_impl(&dword_227904000, &a10, v26, "SharePlay - %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
    sub_2279E3F90(v35, v36);
  }

  else
  {
    sub_2279E3F90(v22[46], v22[45]);
  }

  sub_2279F354C(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 2);
  v41 = v22[37];
  __swift_destroy_boxed_opaque_existential_0Tm(v22 + 12);

  v42 = v22[40];

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_65_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10.isa, a11, a12, a13, a14);
}

uint64_t sub_2279EF1B4(uint64_t a1, id *a2)
{
  result = sub_227A724CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2279EF22C(uint64_t a1, id *a2)
{
  v3 = sub_227A724DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2279EF2BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2279F5088();
  *a1 = result;
  return result;
}

uint64_t sub_2279EF2E4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_2279F4DF8();
  *a1 = result;
  return result;
}

uint64_t sub_2279EF30C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_227A06994(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2279EF374()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_227A71D7C();
}

uint64_t sub_2279EF3C0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_227A71D6C();
}

uint64_t sub_2279EF418()
{
  sub_227A72F2C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_227A71D6C();
  return sub_227A72F4C();
}

uint64_t sub_2279EF48C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227A05884();
  *a1 = result;
  return result;
}

uint64_t sub_2279EF4B4@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2279EF4E0()
{
  v1 = OUTLINED_FUNCTION_166();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2279EF524(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_2279EF59C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_227A724BC();

  *a2 = v5;
  return result;
}

uint64_t sub_2279EF5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2279EF610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2279EF614(uint64_t a1)
{
  v2 = sub_2279F2038(&qword_27D7DC740, type metadata accessor for NLLanguage);
  v3 = sub_2279F2038(&qword_27D7DC748, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2279EF6D0()
{
  v0 = sub_227A724EC();
  v1 = MEMORY[0x22AA9FEA0](v0);

  return v1;
}

uint64_t sub_2279EF708()
{
  sub_227A724EC();
  sub_227A7255C();
}

uint64_t sub_2279EF75C()
{
  sub_227A724EC();
  sub_227A72F2C();
  sub_227A7255C();
  v0 = sub_227A72F4C();

  return v0;
}

uint64_t sub_2279EF7E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2279E96C4();
}

uint64_t sub_2279EF7F4()
{
  v1 = *(*(sub_227A720EC() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2279EF86C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  v7 = sub_227A72F4C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_227A72E5C() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227A22A38();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_2279EFBDC(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_2279EF994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_227A720EC();
  v5 = OUTLINED_FUNCTION_92(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  OUTLINED_FUNCTION_2_1();
  sub_2279F2038(v14, v15);
  v34 = a1;
  v16 = sub_227A7244C();
  v33 = v12;
  v17 = ~(-1 << *(v12 + 32));
  while (1)
  {
    v18 = v16 & v17;
    if (((*(v12 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
    {
      v22 = 1;
      v23 = v32;
      return __swift_storeEnumTagSinglePayload(v23, v22, 1, v4);
    }

    v19 = *(v7 + 72) * v18;
    (*(v7 + 16))(v11, *(v33 + 48) + v19, v4);
    OUTLINED_FUNCTION_2_1();
    sub_2279F2038(&qword_27D7DC5C8, v20);
    v21 = sub_227A7248C();
    (*(v7 + 8))(v11, v4);
    if (v21)
    {
      break;
    }

    v16 = v18 + 1;
  }

  v24 = v31;
  v25 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v24;
  v35 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_227A22F70();
    v27 = v35;
  }

  v28 = *(v27 + 48) + v19;
  v23 = v32;
  (*(v7 + 32))(v32, v28, v4);
  sub_2279EFD94(v18);
  v22 = 0;
  *v24 = v35;
  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v4);
}

unint64_t sub_2279EFBDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_227A72A1C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_227A72F2C();

        sub_227A7255C();
        v15 = sub_227A72F4C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2279EFD94(int64_t a1)
{
  v3 = sub_227A720EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_227A72A1C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v39 = (v14 + 1) & v12;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v38 = v16;
      v17 = *(v15 + 56);
      v40 = v15;
      v41 = v17;
      v18 = v12;
      v19 = (v15 - 8);
      v20 = v8;
      while (1)
      {
        v21 = v9;
        v22 = v41 * v11;
        v23 = v18;
        v38(v7, *(v20 + 48) + v41 * v11, v3);
        v24 = v20;
        v25 = *(v20 + 40);
        sub_2279F2038(&qword_27D7DC560, MEMORY[0x277CCB248]);
        v26 = sub_227A7244C();
        (*v19)(v7, v3);
        v18 = v23;
        v27 = v26 & v23;
        if (a1 >= v39)
        {
          if (v27 < v39 || a1 < v27)
          {
LABEL_20:
            v20 = v24;
            goto LABEL_24;
          }
        }

        else if (v27 < v39 && a1 < v27)
        {
          goto LABEL_20;
        }

        v20 = v24;
        v29 = *(v24 + 48);
        v30 = v41 * a1;
        v31 = v29 + v41 * a1;
        v32 = v29 + v22 + v41;
        if (v41 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v18 = v23;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v18;
        v9 = v21;
        if (((*(v21 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v8;
  }

  v35 = *(v20 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v37;
    ++*(v20 + 36);
  }
}