id getUIAlertActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIAlertActionClass_softClass;
  v7 = getUIAlertActionClass_softClass;
  if (!getUIAlertActionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIAlertActionClass_block_invoke;
    v3[3] = &unk_27985B7F0;
    v3[4] = &v4;
    __getUIAlertActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_257F90160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *MSUserDefaultsBucketBarConfigurationProvider.init(userDefaults:delegate:)(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_bucketBarConfigurationKey];
  *v4 = 0xD000000000000016;
  *(v4 + 1) = 0x8000000257FB2680;
  v5 = &v2[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_bucketSelectionConfigurationKey];
  *v5 = 0xD00000000000001CLL;
  *(v5 + 1) = 0x8000000257FB26A0;
  *&v2[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token] = 0;
  *&v2[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_userDefaults] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  LOBYTE(aBlock[0]) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914828, &qword_257FB2CB8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  *&v2[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_skipNextUpdate] = sub_257FA9560();
  v21.receiver = v2;
  v21.super_class = MSUserDefaultsBucketBarConfigurationProvider;
  v10 = objc_msgSendSuper2(&v21, sel_init);
  v11 = *&v10[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_bucketBarConfigurationKey];
  v12 = *&v10[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_bucketBarConfigurationKey + 8];
  v13 = v10;

  v14 = sub_257FA9620();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_257FA8A14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257FA8A2C;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  v17 = [v9 ef:v14 observeKeyPath:1 options:1 autoCancelToken:v16 usingBlock:?];

  swift_unknownObjectRelease();
  _Block_release(v16);

  v18 = *&v13[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token];
  *&v13[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_token] = v17;

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_257F904E8()
{
  MEMORY[0x259C75A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MSBucketBarConfigurationController.init(provider:)(void *a1)
{
  v3 = sub_257FA96F0();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_257FA96E0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_257FA95D0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v29 = v1;
  v30 = a1;
  *&v1[OBJC_IVAR___MSBucketBarConfigurationController_provider] = a1;
  v9 = v1;
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v34 = [v10 weakObjectsHashTable];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9146F8, &qword_257FB2BF8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v9[OBJC_IVAR___MSBucketBarConfigurationController_observers] = sub_257FA9560();
  sub_257F909B0(0, &qword_280CFF6A8, 0x277D85C78);
  sub_257FA95C0();
  v34 = MEMORY[0x277D84F90];
  sub_257F90A4C(&unk_280CFF6B0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F914708, &qword_257FB2C00);
  sub_257F909F8(&unk_280CFF6C0, &unk_27F914708, &qword_257FB2C00);
  sub_257FA9750();
  (*(v31 + 104))(v6, *MEMORY[0x277D85260], v32);
  v14 = sub_257FA9710();
  v15 = v29;
  v16 = v30;
  *&v29[OBJC_IVAR___MSBucketBarConfigurationController_observerQueue] = v14;
  v17 = [v16 bucketBarConfiguration];
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v18 = sub_257FA9610();

  v34 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914728, &qword_257FB2C08);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v15[OBJC_IVAR___MSBucketBarConfigurationController_configuration] = sub_257FA9560();
  v22 = [v16 bucketSelectionConfiguration];
  v23 = sub_257FA9610();

  v34 = v23;
  v24 = *(v19 + 48);
  v25 = *(v19 + 52);
  swift_allocObject();
  *&v15[OBJC_IVAR___MSBucketBarConfigurationController_selection] = sub_257FA9560();
  v33.receiver = v15;
  v33.super_class = MSBucketBarConfigurationController;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  [v16 setDelegate_];

  swift_unknownObjectRelease();
  return v26;
}

uint64_t sub_257F909B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_257F909F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_257F90A4C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_257F90AAC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v5 = sub_257FA9600();

  return v5;
}

unint64_t sub_257F90B44(SEL *a1)
{
  v3 = [v1 userDefaults];
  v4 = [v1 *a1];
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_257FA9740();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F914740, &unk_257FB2C10);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_257F90C58(v10);
  }

  return sub_257F90FB4(MEMORY[0x277D84F90]);
}

uint64_t sub_257F90C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147F8, &qword_257FB2CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _MSSourceTypeIsValid(unint64_t a1)
{
  if (a1 > 0x19)
  {
    return 0;
  }

  if (((1 << a1) & 0x28081FF) != 0)
  {
    return 1;
  }

  if (((1 << a1) & 0x7F0000) != 0)
  {
    return [MEMORY[0x277D06DA0] preferenceEnabled:6];
  }

  else
  {
    return 0;
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

uint64_t sub_257F90DDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_257F90EA8(v11, 0, 0, 1, a1, a2);
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
    sub_257F913A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_257F90EA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_257FA66A4(a5, a6);
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
    result = sub_257FA97B0();
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

unint64_t sub_257F90FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147F0, &qword_257FB2CA0);
    v3 = sub_257FA9800();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_257FA6ADC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_257F910DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_257F91154(void *a1, const char *a2)
{
  v4 = v2;
  if (qword_280CFF5F8 != -1)
  {
    swift_once();
  }

  v6 = sub_257FA9590();
  __swift_project_value_buffer(v6, qword_280CFF608);
  swift_unknownObjectRetain();
  v7 = sub_257FA9570();
  v8 = sub_257FA96D0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = [a1 description];
    v12 = sub_257FA9650();
    v13 = a2;
    v15 = v14;

    v16 = sub_257F90DDC(v12, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_257F8E000, v7, v8, v13, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C75A10](v10, -1, -1);
    MEMORY[0x259C75A10](v9, -1, -1);
  }

  v17 = *(v4 + OBJC_IVAR___MSBucketBarConfigurationController_observers);
  MEMORY[0x28223BE20]();
  return sub_257FA9520();
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

uint64_t sub_257F913A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void __MSUserNotificationsLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "UserNotifications");
  v1 = MSUserNotificationsLog_os_log;
  MSUserNotificationsLog_os_log = v0;
}

Swift::Bool __swiftcall MSBucketBarConfigurationController.isBucketBarHidden(forMailboxes:)(Swift::OpaquePointer forMailboxes)
{
  if (!EMBlackPearlIsFeatureEnabled())
  {
    return 1;
  }

  if (forMailboxes._rawValue >> 62)
  {
LABEL_22:
    v3 = sub_257FA97D0();
  }

  else
  {
    v3 = *((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = forMailboxes._rawValue & 0xC000000000000001;
  do
  {
    if (v3 == v4)
    {
      return 1;
    }

    if (v5)
    {
      v6 = MEMORY[0x259C75200](v4, forMailboxes._rawValue);
      if (__OFADD__(v4, 1))
      {
LABEL_13:
        __break(1u);
        return 1;
      }
    }

    else
    {
      if (v4 >= *((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(forMailboxes._rawValue + v4 + 4);
      swift_unknownObjectRetain();
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }
    }

    v7 = [v6 isInboxMailbox];
    result = swift_unknownObjectRelease();
    ++v4;
  }

  while (!v7);
  if (v5)
  {
    v9 = MEMORY[0x259C75200](0, forMailboxes._rawValue);
LABEL_19:
    v10 = [v9 bucketBarConfigurationIdentifier];
    swift_unknownObjectRelease();
    sub_257FA9650();

    v11 = *(v1 + OBJC_IVAR___MSBucketBarConfigurationController_configuration);
    MEMORY[0x28223BE20]();

    sub_257FA9520();

    return v12;
  }

  if (*((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(forMailboxes._rawValue + 4);
    swift_unknownObjectRetain();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_257F917D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = [objc_opt_self() em_userDefaults];
  if (!v8)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_9:
    sub_257F90C58(&v19);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 objectForKey_];

  if (v10)
  {
    sub_257FA9740();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v11 = v17 ^ 1;
    goto LABEL_15;
  }

LABEL_10:
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_257FA6ADC(a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
    v15 = sub_257FA9720();
  }

  v16 = v15;
  v11 = [v15 BOOLValue];

LABEL_15:
  *a4 = v11 & 1;
}

Swift::Int __swiftcall MSBucketBarConfigurationController.selectedBucket(forMailboxes:)(Swift::OpaquePointer forMailboxes)
{
  swift_getObjectType();
  if (forMailboxes._rawValue >> 62)
  {
    result = sub_257FA97D0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((forMailboxes._rawValue & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C75200](0, forMailboxes._rawValue);
  }

  else
  {
    if (!*((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(forMailboxes._rawValue + 4);
    swift_unknownObjectRetain();
  }

  v5 = [v4 bucketBarConfigurationIdentifier];
  swift_unknownObjectRelease();
  sub_257FA9650();

  v6 = *(v1 + OBJC_IVAR___MSBucketBarConfigurationController_selection);
  MEMORY[0x28223BE20]();

  sub_257FA9520();

  return v7;
}

id sub_257F91B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_257FA6ADC(a2, a3), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 8 * v6);
  }

  else
  {
    if (qword_280CFF5C0 != -1)
    {
      swift_once();
    }

    v8 = &qword_280CFF5D0;
  }

  result = [*v8 integerValue];
  *a4 = result;
  return result;
}

id MSUserNotificationsLog()
{
  if (MSUserNotificationsLog_onceToken != -1)
  {
    MSUserNotificationsLog_cold_1();
  }

  v1 = MSUserNotificationsLog_os_log;

  return v1;
}

uint64_t sub_257F91C7C()
{
  MEMORY[0x259C75A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_257F91CB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_257F91CF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id MSSharedContactStore()
{
  if (MSSharedContactStore_onceToken != -1)
  {
    MSSharedContactStore_cold_1();
  }

  v1 = MSSharedContactStore_store;

  return v1;
}

void __MSSharedContactStore_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = MSSharedContactStore_store;
  MSSharedContactStore_store = v0;
}

id MSFetchNonUnifiedContactsForPredicate(void *a1, void *a2, void *a3, void *a4)
{
  v4 = fetchContactsForPredicate(a1, a2, a3, 0, a4);

  return v4;
}

id fetchContactsForPredicate(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v11];
  [v12 setPredicate:v10];
  [v12 setUnifyResults:a4];
  v13 = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __fetchContactsForPredicate_block_invoke;
  v26 = &unk_27985B468;
  v14 = v13;
  v27 = v14;
  v15 = [v9 enumerateContactsWithFetchRequest:v12 error:&v28 usingBlock:&v23];
  v16 = v28;
  if (v15)
  {

    v17 = [v14 copy];
  }

  else
  {
    v18 = contactsUtilsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 ef_publicDescription];
      *buf = 138412546;
      v30 = v10;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_257F8E000, v18, OS_LOG_TYPE_DEFAULT, "Error fetching contact matching predicate %@, error: %{public}@", buf, 0x16u);
    }

    if (a5)
    {
      v20 = v16;
      *a5 = v16;
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

id MSCopyClosestMatchingExistingContactUsingAddressesAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(a1, a2, a3, a4, a5, 0);

  return v5;
}

id MSCopyClosestMatchingExistingContactUsingAddressesAndDisplayNameUnified(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v6 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(a1, a2, a3, a4, a5, a6);

  return v6;
}

id copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v49[7] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v33 = a2;
  v12 = a3;
  v34 = a4;
  v35 = a5;
  v36 = v12;
  v13 = 0;
  v38 = v11;
  if (v11 && v12)
  {
    v14 = *MEMORY[0x277CBD000];
    v49[0] = *MEMORY[0x277CBD068];
    v49[1] = v14;
    v15 = *MEMORY[0x277CBCFF8];
    v49[2] = *MEMORY[0x277CBD058];
    v49[3] = v15;
    v16 = *MEMORY[0x277CBD090];
    v49[4] = *MEMORY[0x277CBD070];
    v49[5] = v16;
    v49[6] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
    v18 = v17;
    if (v35)
    {
      v19 = [v17 arrayByAddingObjectsFromArray:v33];

      v18 = v19;
    }

    v37 = objc_alloc_init(MEMORY[0x277CCA940]);
    if ([v12 isEqual:*MEMORY[0x277CBCFC0]])
    {
      v20 = &__block_literal_global_40;
    }

    else
    {
      if (![v12 isEqualToString:*MEMORY[0x277CBD098]])
      {
LABEL_19:
        if ([v37 count] == 1)
        {
          v13 = [v37 anyObject];
        }

        else
        {
          v27 = [v34 ea_personNameComponents];
          v28 = objc_alloc_init(_MSCountableMatchesContext);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_4;
          v39[3] = &unk_27985B4D0;
          v40 = v37;
          v43 = &__block_literal_global_47;
          v29 = v27;
          v41 = v29;
          v42 = v34;
          [(_MSCountableMatchesContext *)v28 countInstances:v40 usingPredicate:v39];
          v30 = [(_MSCountableMatchesContext *)v28 highestMatches];
          v13 = [v30 anyObject];
        }

        goto LABEL_23;
      }

      v20 = &__block_literal_global_42;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = v33;
    v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v22)
    {
      v23 = *v45;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = v20[2](v20, *(*(&v44 + 1) + 8 * i));
          v26 = fetchContactsForPredicate(v38, v25, v18, a6, 0);
          if (v26)
          {
            [v37 addObjectsFromArray:v26];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v22);
    }

    goto LABEL_19;
  }

LABEL_23:

  v31 = *MEMORY[0x277D85DE8];

  return v13;
}

id MSPreferredAbbreviatedNameForAddressAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = idealDisplayName(v10, v11);

  if (v9 && [v10 length] && objc_msgSend(v10, "ea_isLegalEmailAddress"))
  {
    v14 = [MEMORY[0x277CCAC00] descriptorForUsedKeys];
    v42[0] = v14;
    v15 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
    v42[1] = v15;
    v16 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v42[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];

    if (v12)
    {
      v18 = [v17 arrayByAddingObjectsFromArray:v12];

      v17 = v18;
    }

    v41 = v10;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v20 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(v9, v19, *MEMORY[0x277CBCFC0], v13, v17, 1);

    if (!v20)
    {
      v20 = [v13 ea_personNameComponents];
      v21 = [v20 givenName];
      if (v21)
      {
      }

      else
      {
        v30 = [v20 familyName];
        v31 = v30 == 0;

        if (v31)
        {
          v22 = v13;
          goto LABEL_24;
        }
      }

      v32 = objc_alloc_init(MEMORY[0x277CBDB38]);
      v33 = [v20 namePrefix];
      [v32 setNamePrefix:v33];

      v34 = [v20 givenName];
      [v32 setGivenName:v34];

      v35 = [v20 middleName];
      [v32 setMiddleName:v35];

      v36 = [v20 familyName];
      [v32 setFamilyName:v36];

      v37 = [v20 nameSuffix];
      [v32 setNameSuffix:v37];

      v38 = [v32 copy];
      v20 = v38;
      if (!v38)
      {
        v22 = v13;
        goto LABEL_25;
      }
    }

    v39 = [MEMORY[0x277CBDA78] stringFromContact:v20 style:1000];
    if (v39 || ([MEMORY[0x277CBDA78] stringFromContact:v20 style:0], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v39;

      if (!a5)
      {
LABEL_24:

LABEL_25:
        goto LABEL_10;
      }
    }

    else
    {
      v22 = v13;
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    v40 = v20;
    *a5 = v20;
    goto LABEL_24;
  }

  v22 = v13;
LABEL_10:
  v23 = v10;
  if (v22 && (v24 = [v22 containsString:@"@"], v23 = v22, v24) && (v25 = objc_msgSend(v22, "isEqualToString:", v10), v23 = v22, (v25 & 1) == 0))
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <%@>", v22, v10];
  }

  else
  {
    v26 = v23;
  }

  v27 = v26;

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id idealDisplayName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    if (v6 >= 3 && [v5 characterAtIndex:0] == 60)
    {
      v7 = [v5 characterAtIndex:v6 - 1];
      v8 = v7 == 62;
      if (v7 == 62)
      {
        v6 -= 2;
      }
    }

    else
    {
      v8 = 0;
    }

    if (![v5 compare:v3 options:9 range:{v8, v6}])
    {

      v5 = 0;
    }
  }

  return v5;
}

id MSPreferredCompositeNameForAddressAndDisplayName(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = idealDisplayName(v10, v11);

  if (v9 && [v10 length] && objc_msgSend(v10, "ea_isLegalEmailAddress"))
  {
    v14 = MSDescriptorForRequiredKeysForCompositeName();
    v15 = v14;
    if (v12)
    {
      v16 = [v14 arrayByAddingObjectsFromArray:v12];

      v15 = v16;
    }

    v31[0] = v10;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v18 = copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName(v9, v17, *MEMORY[0x277CBCFC0], v13, v15, 1);

    if (v18)
    {
      v19 = preferredCompositeNameForUnifiedContact(v18);
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v13;
      }

      v22 = v21;

      if (a5)
      {
        v23 = v18;
        *a5 = v18;
      }
    }

    else
    {
      v22 = v13;
    }
  }

  else
  {
    v22 = v13;
  }

  v24 = v10;
  if (v22 && (v25 = [v22 containsString:@"@"], v24 = v22, v25) && (v26 = objc_msgSend(v22, "isEqualToString:", v10), v24 = v22, (v26 & 1) == 0))
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <%@>", v22, v10];
  }

  else
  {
    v27 = v24;
  }

  v28 = v27;

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

id MSDescriptorForRequiredKeysForCompositeName()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CBD078];
  v0 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id preferredCompositeNameForUnifiedContact(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBDAD0] sharedDefaults];
  if ([v2 shortNameFormatPrefersNicknames])
  {
    v3 = [v1 nickname];
  }

  else
  {
    v3 = 0;
  }

  if (![v3 length])
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:v1 style:0];

    v3 = v4;
  }

  return v3;
}

id MSPreferredCompositeNameForContact(void *a1, void *a2)
{
  v37[11] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = MSDescriptorForRequiredKeysForCompositeName();
    if (v3)
    {
      v6 = MEMORY[0x277CBDA58];
      v7 = [v4 identifier];
      v36 = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v9 = [v6 predicateForContactsWithIdentifiers:v8];
      v31 = 0;
      v10 = fetchContactsForPredicate(v3, v9, v5, 1, &v31);
      v11 = v31;
      v12 = [v10 firstObject];

      if (!v12)
      {
        v13 = contactsUtilsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v11 ef_publicDescription];
          MSPreferredCompositeNameForContact_cold_1(v4, v14, buf, v13);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v4;
    }

    v17 = v16;
    if (([v17 areKeysAvailable:v5] & 1) == 0)
    {
      v18 = v17;
      v19 = *MEMORY[0x277CBD000];
      v37[0] = *MEMORY[0x277CBD068];
      v37[1] = v19;
      v20 = *MEMORY[0x277CBCFF8];
      v37[2] = *MEMORY[0x277CBD058];
      v37[3] = v20;
      v21 = *MEMORY[0x277CBD0B0];
      v37[4] = *MEMORY[0x277CBD070];
      v37[5] = v21;
      v22 = *MEMORY[0x277CBD0A8];
      v37[6] = *MEMORY[0x277CBD0B8];
      v37[7] = v22;
      v23 = *MEMORY[0x277CBD090];
      v37[8] = *MEMORY[0x277CBD078];
      v37[9] = v23;
      v37[10] = *MEMORY[0x277CBCFC0];
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:11];
      v25 = objc_alloc_init(MEMORY[0x277CBDB38]);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __fallbackContactForMissingContactRequiringKeys_block_invoke;
      v32[3] = &unk_27985B4F8;
      v26 = v18;
      v33 = v26;
      v27 = v25;
      v34 = v27;
      [v24 enumerateObjectsUsingBlock:v32];
      v28 = v34;
      v17 = v27;
    }

    v15 = preferredCompositeNameForUnifiedContact(v17);
  }

  else
  {
    v15 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

id contactsUtilsLog()
{
  if (contactsUtilsLog_onceToken != -1)
  {
    contactsUtilsLog_cold_1();
  }

  v1 = contactsUtilsLog_log;

  return v1;
}

id __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:a2];

  return v2;
}

id __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBDA58];
  v3 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:a2];
  v4 = [v2 predicateForContactsMatchingPhoneNumber:v3];

  return v4;
}

uint64_t __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [v4 hasPrefix:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __copyClosestMatchingExistingUnifiedContactUsingAddressesAndDisplayName_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) countForObject:v3];
  v5 = *(a1 + 56);
  v6 = [v3 namePrefix];
  v7 = [*(a1 + 40) namePrefix];
  LODWORD(v5) = (*(v5 + 16))(v5, v6, v7);

  v8 = *(a1 + 56);
  v9 = [v3 givenName];
  v10 = [*(a1 + 40) givenName];
  LODWORD(v8) = (*(v8 + 16))(v8, v9, v10);

  v11 = *(a1 + 56);
  v12 = [v3 middleName];
  v13 = [*(a1 + 40) middleName];
  LODWORD(v11) = (*(v11 + 16))(v11, v12, v13);

  v14 = *(a1 + 56);
  v15 = [v3 familyName];
  v16 = [*(a1 + 40) familyName];
  LODWORD(v14) = (*(v14 + 16))(v14, v15, v16);

  v17 = *(a1 + 56);
  v18 = [v3 nameSuffix];
  v19 = [*(a1 + 40) nameSuffix];
  LODWORD(v17) = (*(v17 + 16))(v17, v18, v19);

  v20 = *(a1 + 56);
  v21 = [v3 organizationName];
  LODWORD(a1) = (*(v20 + 16))(v20, v21, *(a1 + 48));

  return v4 + v5 + v8 + v11 + v14 + v17 + a1;
}

void __contactsUtilsLog_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MSContactsUtils");
  v1 = contactsUtilsLog_log;
  contactsUtilsLog_log = v0;
}

void __fallbackContactForMissingContactRequiringKeys_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) isKeyAvailable:?])
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) valueForKey:v5];
    [v3 setValue:v4 forKey:v5];
  }
}

void sub_257F962D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

id MSMailComposeWindowTargetContentIdentifierWithIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.mail.compose", a1];

  return v1;
}

void sub_257F98668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_257F99DF8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void __getPARSessionConfigurationClass_block_invoke(uint64_t a1)
{
  CoreParsecLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PARSessionConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPARSessionConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPARSessionConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSParsecSearchSession.m" lineNumber:27 description:{@"Unable to find class %s", "PARSessionConfiguration"}];

    __break(1u);
  }
}

void CoreParsecLibrary()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreParsecLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreParsecLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/CoreParsec.framework/CoreParsec";
    CoreParsecLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreParsecLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreParsecLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"MSParsecSearchSession.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreParsecLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreParsecLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getPARSessionClass_block_invoke(uint64_t a1)
{
  CoreParsecLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PARSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPARSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPARSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSParsecSearchSession.m" lineNumber:28 description:{@"Unable to find class %s", "PARSession"}];

    __break(1u);
  }
}

void sub_257F9B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_257F9CBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getUIAlertControllerClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIAlertController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIAlertControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSRadarInteraction.m" lineNumber:19 description:{@"Unable to find class %s", "UIAlertController"}];

    __break(1u);
  }
}

void UIKitLibrary()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/Frameworks/UIKit.framework/UIKit";
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"MSRadarInteraction.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getUIAlertActionClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIAlertAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIAlertActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIAlertActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSRadarInteraction.m" lineNumber:25 description:{@"Unable to find class %s", "UIAlertAction"}];

    __break(1u);
  }
}

void __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIApplication");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSRadarInteraction.m" lineNumber:22 description:{@"Unable to find class %s", "UIApplication"}];

    __break(1u);
  }
}

void sub_257F9D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class __getUIApplicationClass_block_invoke_0(uint64_t a1)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v8[1] = MEMORY[0x277D85DD0];
    v8[2] = 3221225472;
    v8[3] = __UIKitLibraryCore_block_invoke_0;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v8[7] = 0;
    v8[8] = 0;
    v8[6] = "/System/Library/Frameworks/UIKit.framework/UIKit";
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"MSRadarURLBuilder.m" lineNumber:14 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"MSRadarURLBuilder.m" lineNumber:15 description:{@"Unable to find class %s", "UIApplication"}];

LABEL_10:
    __break(1u);
  }

  getUIApplicationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

__CFString *NSStringFromMSDeleteOrArchive(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_28692F9D8;
  }

  else
  {
    return off_27985BB38[a1];
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id _ef_log_MSUserNotificationCenterAnalyticsLogger()
{
  if (_ef_log_MSUserNotificationCenterAnalyticsLogger_onceToken != -1)
  {
    _ef_log_MSUserNotificationCenterAnalyticsLogger_cold_1();
  }

  v1 = _ef_log_MSUserNotificationCenterAnalyticsLogger_log;

  return v1;
}

void sub_257FA277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);

  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 40));

  _Unwind_Resume(a1);
}

void sub_257FA2BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_257FA2FE8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_257FA33A0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_257FA3744(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_257FA3B64(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

__CFString *MSUserNotificationCenterTopicDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"])
  {
    v2 = @"VIP";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.RemindMe"])
  {
    v2 = @"Remind Me";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.FavoriteMailboxes"])
  {
    v2 = @"Favorite Mailboxes";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"])
  {
    v2 = @"Notified Threads";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.PrimaryInbox"])
  {
    v2 = @"Banner - Primary";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.PrimaryMessages"])
  {
    v2 = @"Badge Count - Unread Messages in Primary";
  }

  else if ([v1 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.AllMessages"])
  {
    v2 = @"Badge Count - All Unread Messages";
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_257FA3EEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

const char *MailFeatureFlag.feature.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = "BlackPearl";
    v7 = "CatchUp";
    if (v1 != 2)
    {
      v7 = "CatchUpManualSummarization";
    }

    if (*v0)
    {
      v6 = "QuickReply";
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "CatchUpHighlightsV2";
    v3 = "LiveSearch";
    if (v1 != 7)
    {
      v3 = "IMAPSyncMoreMessages";
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = "ClassCData";
    if (v1 != 4)
    {
      v4 = "SearchImportantText";
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t MailFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MailFeatureFlag;
  v4[4] = sub_257FA4064();
  LOBYTE(v4[0]) = v1;
  v2 = sub_257FA9510();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_257FA4064()
{
  result = qword_280CFF640;
  if (!qword_280CFF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFF640);
  }

  return result;
}

uint64_t MailFeatureFlag.isGenerativeFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MailFeatureFlag;
  v4[4] = sub_257FA4064();
  LOBYTE(v4[0]) = v1;
  v2 = sub_257FA9510();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v2)
  {
    return EMIsGreymatterSupported();
  }

  else
  {
    return 0;
  }
}

uint64_t MailFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_257FA9850();
  MEMORY[0x259C752C0](v1);
  return sub_257FA9870();
}

uint64_t sub_257FA41B8()
{
  v1 = *v0;
  sub_257FA9850();
  MEMORY[0x259C752C0](v1);
  return sub_257FA9870();
}

uint64_t sub_257FA422C()
{
  v1 = *v0;
  sub_257FA9850();
  MEMORY[0x259C752C0](v1);
  return sub_257FA9870();
}

unint64_t sub_257FA4274()
{
  result = qword_27F9145F8;
  if (!qword_27F9145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9145F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257FA446C()
{
  v1 = *v0;
  v2 = sub_257FA9650();
  v3 = MEMORY[0x259C750E0](v2);

  return v3;
}

uint64_t sub_257FA44A8()
{
  v1 = *v0;
  sub_257FA9650();
  sub_257FA9660();
}

uint64_t sub_257FA44FC()
{
  v1 = *v0;
  sub_257FA9650();
  sub_257FA9850();
  sub_257FA9660();
  v2 = sub_257FA9870();

  return v2;
}

uint64_t sub_257FA4578(uint64_t a1, id *a2)
{
  result = sub_257FA9630();
  *a2 = 0;
  return result;
}

uint64_t sub_257FA45F0(uint64_t a1, id *a2)
{
  v3 = sub_257FA9640();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_257FA4670@<X0>(uint64_t *a1@<X8>)
{
  sub_257FA9650();
  v2 = sub_257FA9620();

  *a1 = v2;
  return result;
}

uint64_t sub_257FA46B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_257FA9650();
  v6 = v5;
  if (v4 == sub_257FA9650() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257FA9820();
  }

  return v9 & 1;
}

uint64_t sub_257FA473C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_257FA9620();

  *a2 = v5;
  return result;
}

uint64_t sub_257FA4784@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_257FA9650();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_257FA47B0(uint64_t a1)
{
  v2 = sub_257FA4934(&qword_27F914680);
  v3 = sub_257FA4934(&qword_27F914688);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void type metadata accessor for NSKeyValueChangeKey()
{
  if (!qword_27F914660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F914660);
    }
  }
}

uint64_t sub_257FA4934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_257FA4978()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  qword_280CFF5D0 = result;
  return result;
}

uint64_t sub_257FA49B0()
{
  v0 = sub_257FA9590();
  __swift_allocate_value_buffer(v0, qword_280CFF608);
  __swift_project_value_buffer(v0, qword_280CFF608);
  return sub_257FA9580();
}

id MSBucketBarConfigurationController.init(provider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProvider_];
  swift_unknownObjectRelease();
  return v1;
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

void sub_257FA4B0C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147D0, &qword_257FB2C80);
  v4 = sub_257FA96A0();

  *a2 = v4;
}

Swift::Bool __swiftcall MSBucketBarConfigurationController.setBucketBarHidden(_:forMailboxes:)(Swift::Bool _, Swift::OpaquePointer forMailboxes)
{
  v5 = sub_257FA95A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257FA95D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (forMailboxes._rawValue >> 62)
  {
    v15 = sub_257FA97D0();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  v39 = v11;
  v40 = v6;
  v38 = v15;
  if ((forMailboxes._rawValue & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x259C75200](0, forMailboxes._rawValue);
  }

  else
  {
    if (!*((forMailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v15;
    }

    v16 = *(forMailboxes._rawValue + 4);
    swift_unknownObjectRetain();
  }

  v35 = v9;
  v36 = v10;
  v37 = v5;
  v17 = [v16 bucketBarConfigurationIdentifier];
  swift_unknownObjectRelease();
  v18 = sub_257FA9650();
  v20 = v19;

  if (!_)
  {
    v21 = [objc_opt_self() em_userDefaults];
    if (v21)
    {
      v22 = v21;
      [v21 removeObjectForKey_];
    }
  }

  v23 = *(v2 + OBJC_IVAR___MSBucketBarConfigurationController_configuration);
  MEMORY[0x28223BE20]();
  *(&v34 - 4) = v18;
  *(&v34 - 3) = v20;
  v24 = _;
  *(&v34 - 16) = _;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F914740, &unk_257FB2C10);
  sub_257FA9520();

  v25 = *(v2 + OBJC_IVAR___MSBucketBarConfigurationController_provider);
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v26 = sub_257FA9600();

  [v25 storeBucketBarConfiguration_];

  v27 = *(v2 + OBJC_IVAR___MSBucketBarConfigurationController_observerQueue);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v24;
  *(v29 + 32) = forMailboxes;
  aBlock[4] = sub_257FA5490;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257FA54A0;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  sub_257FA95B0();
  v41 = MEMORY[0x277D84F90];
  sub_257F90A4C(&qword_280CFF638, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914750, &qword_257FB2C20);
  sub_257F909F8(&unk_280CFF628, &qword_27F914750, &qword_257FB2C20);
  v31 = v35;
  v32 = v37;
  sub_257FA9750();
  MEMORY[0x259C75160](0, v14, v31, v30);
  _Block_release(v30);
  (*(v40 + 8))(v31, v32);
  (*(v39 + 8))(v14, v36);

  v15 = v38;
LABEL_10:
  LOBYTE(v15) = v15 != 0;
  return v15;
}

uint64_t sub_257FA5090@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v8 = sub_257FA9720();

  sub_257FA5138(v8, a2, a3);
  *a4 = *a1;
}

uint64_t sub_257FA5138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_257FA74A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_257FA6ADC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_257FA7618();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_257FA72F0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_257FA5230(uint64_t a1, int a2, uint64_t a3)
{
  v19 = a3;
  HIDWORD(v18) = a2;
  v3 = sub_257FA95E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + OBJC_IVAR___MSBucketBarConfigurationController_observerQueue);
    *v7 = v10;
    (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
    v11 = v10;
    v12 = sub_257FA95F0();
    (*(v4 + 8))(v7, v3);
    if (v12)
    {
      v13 = *&v9[OBJC_IVAR___MSBucketBarConfigurationController_observers];
      swift_getKeyPath();
      sub_257FA9530();

      v3 = v20;
      if (!(v20 >> 62))
      {
        v14 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          if (v14 < 1)
          {
            __break(1u);
            return result;
          }

          v15 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x259C75200](v15, v3);
            }

            else
            {
              v16 = *(v3 + 8 * v15 + 32);
              swift_unknownObjectRetain();
            }

            ++v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
            v17 = sub_257FA9690();
            [v16 bucketBarConfigurationController:v9 isHidden:BYTE4(v18) & 1 forMailboxes:v17];
            swift_unknownObjectRelease();
          }

          while (v14 != v15);
        }

LABEL_13:
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_257FA97D0();
    v14 = result;
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_257FA54A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Void __swiftcall MSBucketBarConfigurationController.setSelectedBucket(_:mailboxes:)(Swift::Int _, Swift::OpaquePointer mailboxes)
{
  v3 = v2;
  if (mailboxes._rawValue >> 62)
  {
    if (!sub_257FA97D0())
    {
      return;
    }
  }

  else if (!*((mailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((mailboxes._rawValue & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C75200](0, mailboxes._rawValue);
  }

  else
  {
    if (!*((mailboxes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(mailboxes._rawValue + 4);
    swift_unknownObjectRetain();
  }

  v6 = [v5 bucketBarConfigurationIdentifier];
  swift_unknownObjectRelease();
  sub_257FA9650();

  if (qword_280CFF5F8 != -1)
  {
    swift_once();
  }

  v7 = sub_257FA9590();
  __swift_project_value_buffer(v7, qword_280CFF608);

  v8 = sub_257FA9570();
  v9 = sub_257FA96D0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    sub_257FA6A74();
    v12 = sub_257FA9730();
    v14 = sub_257F90DDC(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
    v16 = MEMORY[0x259C75110](mailboxes._rawValue, v15);
    v18 = sub_257F90DDC(v16, v17, &v22);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_257F8E000, v8, v9, "Mark %s as selected for mailboxes: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C75A10](v11, -1, -1);
    MEMORY[0x259C75A10](v10, -1, -1);
  }

  v19 = *(v3 + OBJC_IVAR___MSBucketBarConfigurationController_selection);
  MEMORY[0x28223BE20]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F914740, &unk_257FB2C10);
  sub_257FA9520();

  v20 = *(v3 + OBJC_IVAR___MSBucketBarConfigurationController_provider);
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v21 = sub_257FA9600();

  [v20 storeBucketSelectionConfiguration_];
}

uint64_t sub_257FA58D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  sub_257FA5138([v10 initWithInteger_], a2, a3);
  *a5 = *a1;
}

uint64_t MSBucketBarConfigurationController.stateCaptureInformation()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___MSBucketBarConfigurationController_configuration);

  sub_257FA9540();

  v3 = v73;
  v4 = *(v1 + OBJC_IVAR___MSBucketBarConfigurationController_selection);

  sub_257FA9540();

  v5 = v73;

  v7 = sub_257FA6034(v6);

  v9 = sub_257FA6150(v8, v7);
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  v67 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v63 = v14;
  v64 = v10;
  v65 = v73;
  v66 = v73;
  while (v13)
  {
    v19 = v15;
LABEL_11:
    v68 = v16;
    v20 = (*(v67 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v13)))));
    v21 = *v20;
    v22 = v20[1];
    v23 = v3[2];

    v72 = v21;
    if (v23)
    {
      v24 = sub_257FA6ADC(v21, v22);
      if (v25)
      {
        v26 = *(v3[7] + 8 * v24);
        v27 = [v26 BOOLValue];

        v28 = 0x656C6269736956;
        if (v27)
        {
          v28 = 0x6E6564646948;
        }

        v70 = v28;
        if (v27)
        {
          v29 = 0xE600000000000000;
        }

        else
        {
          v29 = 0xE700000000000000;
        }
      }

      else
      {
        v29 = 0xE700000000000000;
        v70 = 0x656C6269736956;
      }

      v21 = v72;
    }

    else
    {
      v29 = 0xE700000000000000;
      v70 = 0x656C6269736956;
    }

    v71 = v22;
    if (!v5[2])
    {
      goto LABEL_31;
    }

    v30 = sub_257FA6ADC(v21, v22);
    if ((v31 & 1) == 0)
    {
      goto LABEL_31;
    }

    v32 = *(v5[7] + 8 * v30);
    v33 = [v32 integerValue];

    if (v33 <= 2)
    {
      if (!v33)
      {
        v69[1] = 0xE400000000000000;
        v34 = 1701736270;
        goto LABEL_32;
      }

      if (v33 == 2)
      {
        strcpy(v69, "Transactions");
        BYTE5(v69[1]) = 0;
        HIWORD(v69[1]) = -5120;
        goto LABEL_33;
      }

LABEL_31:
      v69[1] = 0xE700000000000000;
      v34 = 0x7972616D697250;
      goto LABEL_32;
    }

    if (v33 == 3)
    {
      v69[1] = 0xE700000000000000;
      v34 = 0x73657461647055;
      goto LABEL_32;
    }

    if (v33 == 4)
    {
      v69[1] = 0xEA0000000000736ELL;
      v34 = 0x6F69746F6D6F7250;
      goto LABEL_32;
    }

    if (v33 != 5)
    {
      goto LABEL_31;
    }

    v69[1] = 0xE800000000000000;
    v34 = 0x6C69614D206C6C41;
LABEL_32:
    v69[0] = v34;
LABEL_33:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914760, &qword_257FB2C30);
    v35 = sub_257FA9800();

    v36 = sub_257FA6ADC(0x422074656B637542, 0xEA00000000007261);
    if (v37)
    {
      goto LABEL_51;
    }

    *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v36;
    v38 = (v35[6] + 16 * v36);
    *v38 = 0x422074656B637542;
    v38[1] = 0xEA00000000007261;
    v39 = (v35[7] + 16 * v36);
    *v39 = v70;
    v39[1] = v29;
    v40 = v35[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_52;
    }

    v35[2] = v42;

    v43 = sub_257FA6ADC(0x64657463656C6553, 0xEF74656B63754220);
    v45 = v44;

    if (v45)
    {
      goto LABEL_53;
    }

    *(v35 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v43;
    v46 = (v35[6] + 16 * v43);
    *v46 = 0x64657463656C6553;
    v46[1] = 0xEF74656B63754220;
    v47 = (v35[7] + 16 * v43);
    *v47 = v69[0];
    v47[1] = v69[1];
    v48 = v35[2];
    v41 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v41)
    {
      goto LABEL_54;
    }

    v35[2] = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v68;
    v51 = sub_257FA6ADC(v72, v71);
    v53 = v68[2];
    v54 = (v52 & 1) == 0;
    v41 = __OFADD__(v53, v54);
    v55 = v53 + v54;
    if (v41)
    {
      goto LABEL_55;
    }

    v56 = v52;
    if (v68[3] >= v55)
    {
      v5 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = v51;
        sub_257FA7784();
        v51 = v61;
      }
    }

    else
    {
      sub_257FA7048(v55, isUniquelyReferenced_nonNull_native);
      v51 = sub_257FA6ADC(v72, v71);
      v5 = v65;
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_57;
      }
    }

    v10 = v64;
    v13 &= v13 - 1;
    v16 = v73;
    v3 = v66;
    if (v56)
    {
      v17 = v73[7];
      v18 = *(v17 + 8 * v51);
      *(v17 + 8 * v51) = v35;
    }

    else
    {
      v73[(v51 >> 6) + 8] |= 1 << v51;
      v58 = (v16[6] + 16 * v51);
      *v58 = v72;
      v58[1] = v71;
      *(v16[7] + 8 * v51) = v35;
      v59 = v16[2];
      v41 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v41)
      {
        goto LABEL_56;
      }

      v16[2] = v60;
    }

    v15 = v19;
    v14 = v63;
  }

  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return v16;
    }

    v13 = *(v10 + 8 * v19);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_257FA9840();
  __break(1u);
  return result;
}

uint64_t sub_257FA6034(uint64_t a1)
{
  result = MEMORY[0x259C75120](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_257FA78F4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257FA6150(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_257FA78F4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall MSBucketBarConfigurationController.init()(MSBucketBarConfigurationController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_257FA63F0()
{
  v0 = sub_257FA95E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR___MSBucketBarConfigurationController_observerQueue);
    *v4 = v7;
    (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
    v8 = v7;
    LOBYTE(v7) = sub_257FA95F0();
    (*(v1 + 8))(v4, v0);
    if (v7)
    {
      v9 = *&v6[OBJC_IVAR___MSBucketBarConfigurationController_observers];
      swift_getKeyPath();
      sub_257FA9530();

      v0 = v13;
      if (!(v13 >> 62))
      {
        v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
LABEL_5:
          if (v10 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v10; ++i)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x259C75200](i, v0);
            }

            else
            {
              v12 = *(v0 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            [v12 bucketBarConfigurationControllerRequiresReload_];
            swift_unknownObjectRelease();
          }
        }

LABEL_13:
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_257FA97D0();
    v10 = result;
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_257FA66A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_257FA66F0(a1, a2);
  sub_257FA6820(&unk_28692CB78);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_257FA66F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_257FA690C(v5, 0);
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

  result = sub_257FA97B0();
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
        v10 = sub_257FA9670();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_257FA690C(v10, 0);
        result = sub_257FA9790();
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

uint64_t sub_257FA6820(uint64_t result)
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

  result = sub_257FA6980(result, v12, 1, v3);
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

void *sub_257FA690C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147E8, &qword_257FB2C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_257FA6980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147E8, &qword_257FB2C98);
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

unint64_t sub_257FA6A74()
{
  result = qword_280CFF5E0;
  if (!qword_280CFF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFF5E0);
  }

  return result;
}

unint64_t sub_257FA6ADC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_257FA9850();
  sub_257FA9660();
  v6 = sub_257FA9870();

  return sub_257FA6BE8(a1, a2, v6);
}

unint64_t sub_257FA6B54(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_257FA9650();
  sub_257FA9850();
  sub_257FA9660();
  v4 = sub_257FA9870();

  return sub_257FA6CA0(a1, v4);
}

unint64_t sub_257FA6BE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_257FA9820())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_257FA6CA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_257FA9650();
      v9 = v8;
      if (v7 == sub_257FA9650() && v9 == v10)
      {
        break;
      }

      v12 = sub_257FA9820();

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

uint64_t sub_257FA6DA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147F0, &qword_257FB2CA0);
  v39 = a2;
  result = sub_257FA97F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_257FA9850();
      sub_257FA9660();
      result = sub_257FA9870();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_257FA7048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147D8, &qword_257FB2C88);
  v38 = a2;
  result = sub_257FA97F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_257FA9850();
      sub_257FA9660();
      result = sub_257FA9870();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_257FA72F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257FA9760() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_257FA9850();

      sub_257FA9660();
      v13 = sub_257FA9870();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_257FA74A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_257FA6ADC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_257FA6DA4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_257FA6ADC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_257FA9840();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_257FA7618();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_257FA7618()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147F0, &qword_257FB2CA0);
  v2 = *v0;
  v3 = sub_257FA97E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257FA7784()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147D8, &qword_257FB2C88);
  v2 = *v0;
  v3 = sub_257FA97E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_257FA78F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_257FA9850();
  sub_257FA9660();
  v9 = sub_257FA9870();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_257FA9820() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_257FA7CA4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_257FA7A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147E0, &qword_257FB2C90);
  result = sub_257FA9780();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_257FA9850();
      sub_257FA9660();
      result = sub_257FA9870();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_257FA7CA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_257FA7A44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_257FA7E24();
      goto LABEL_16;
    }

    sub_257FA7F80(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_257FA9850();
  sub_257FA9660();
  result = sub_257FA9870();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_257FA9820();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_257FA9830();
  __break(1u);
  return result;
}

void *sub_257FA7E24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147E0, &qword_257FB2C90);
  v2 = *v0;
  v3 = sub_257FA9770();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_257FA7F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147E0, &qword_257FB2C90);
  result = sub_257FA9780();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_257FA9850();

      sub_257FA9660();
      result = sub_257FA9870();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_257FA81B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257FA95A0();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257FA95D0();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR___MSBucketBarConfigurationController_configuration);
  aBlock[0] = a1;

  sub_257FA9550();

  v16 = *(v2 + OBJC_IVAR___MSBucketBarConfigurationController_observerQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_257FA84DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257FA54A0;
  aBlock[3] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);

  sub_257FA95B0();
  v19 = MEMORY[0x277D84F90];
  sub_257F90A4C(&qword_280CFF638, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914750, &qword_257FB2C20);
  sub_257F909F8(&unk_280CFF628, &qword_27F914750, &qword_257FB2C20);
  sub_257FA9750();
  MEMORY[0x259C75160](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t MSUserDefaultsBucketBarConfigurationProvider.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_257FA8628(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_257FA9620();

  return v6;
}

id MSUserDefaultsBucketBarConfigurationProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t MSUserDefaultsBucketBarConfigurationProvider.init()()
{
  v1 = [objc_opt_self() em_userDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 initWithUserDefaults:v1 delegate:0];

    return v3;
  }

  else
  {
    result = sub_257FA97C0();
    __break(1u);
  }

  return result;
}

id MSUserDefaultsBucketBarConfigurationProvider.init(userDefaults:delegate:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserDefaults:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_257FA8854(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 && *(a1 + 16) && (v4 = sub_257FA6B54(*MEMORY[0x277CCA2F0]), (v5 & 1) != 0) && (sub_257F913A4(*(a1 + 56) + 32 * v4, v11), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F914740, &unk_257FB2C10), (swift_dynamicCast() & 1) != 0))
    {
      v6 = *&v3[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_skipNextUpdate];

      sub_257FA9520();

      if ((v11[0] & 1) != 0 || (v7 = [v3 delegate]) == 0)
      {
      }

      else
      {
        v8 = v7;
        sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
        v9 = v3;
        v10 = sub_257FA9600();

        [v8 bucketBarConfigurationProvider:v9 didChangeConfiguration:v10];

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

char *sub_257FA8A1C@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *result = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_257FA8A2C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for NSKeyValueChangeKey();
    sub_257FA8F00();
    v2 = sub_257FA9610();
  }

  v4(v2);
}

Swift::Void __swiftcall MSUserDefaultsBucketBarConfigurationProvider.storeBucketBarConfiguration(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___MSUserDefaultsBucketBarConfigurationProvider_skipNextUpdate];

  sub_257FA9550();

  v4 = [v2 userDefaults];
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v5 = sub_257FA9600();
  v6 = [v2 bucketBarConfigurationKey];
  [v4 setObject:v5 forKey:v6];
}

Swift::Void __swiftcall MSUserDefaultsBucketBarConfigurationProvider.storeBucketSelectionConfiguration(_:)(Swift::OpaquePointer a1)
{
  v2 = [v1 userDefaults];
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v3 = sub_257FA9600();
  v4 = [v1 bucketSelectionConfigurationKey];
  [v2 setObject:v3 forKey:v4];
}

unint64_t sub_257FA8F00()
{
  result = qword_27F914680;
  if (!qword_27F914680)
  {
    type metadata accessor for NSKeyValueChangeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F914680);
  }

  return result;
}

void MSPreferredCompositeNameForContact_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_257F8E000, log, OS_LOG_TYPE_ERROR, "Error re-fetching contact matching contact %@, error: %{public}@", buf, 0x16u);
}