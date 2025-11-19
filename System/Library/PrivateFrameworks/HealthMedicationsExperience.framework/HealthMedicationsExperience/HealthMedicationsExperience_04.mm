void sub_1D1634854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v28 = sub_1D166F4E4();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1637118();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v13 = [v12 primaryAppleAccount];
  if (v13 && (v14 = v13, v15 = [objc_allocWithZone(MEMORY[0x1E698B8A0]) initWithAccount_], v14, v15))
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69A3AD8]) initWithHealthStore:*(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_healthStore) accountStore:v12 deviceRequest:v15];
    (*(v10 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    (*(v10 + 32))(v18 + v17, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
    aBlock[4] = sub_1D1637180;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1634E98;
    aBlock[3] = &block_descriptor_49;
    v19 = _Block_copy(aBlock);

    [v16 resolveIncompatibleSchedulesWithCompletion_];
    _Block_release(v19);
  }

  else
  {
    sub_1D166F4C4();
    v20 = sub_1D166F4D4();
    v21 = sub_1D166FF34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      v24 = sub_1D1670754();
      v26 = sub_1D15F7A30(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D15E6000, v20, v21, "[%s] Unable to create AADeviceListRequest", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1D388E250](v23, -1, -1);
      MEMORY[0x1D388E250](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v28);
    aBlock[0] = 0;
    sub_1D166FD34();
  }
}

uint64_t sub_1D1634C30(uint64_t a1, void *a2)
{
  v4 = sub_1D166F4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a1;
    sub_1D1637118();
  }

  else
  {
    sub_1D166F4C4();
    v9 = a2;
    v10 = sub_1D166F4D4();
    v11 = sub_1D166FF34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v12 = 136315394;
      v13 = sub_1D1670754();
      v15 = sub_1D15F7A30(v13, v14, &v25);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2112;
      if (a2)
      {
        v16 = a2;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v12 + 14) = v17;
      v19 = v23;
      *v23 = v18;
      _os_log_impl(&dword_1D15E6000, v10, v11, "[%s] IncompatibilityResult is nil. Error: '%@'", v12, 0x16u);
      sub_1D15FADE4(v19);
      MEMORY[0x1D388E250](v19, -1, -1);
      v20 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D388E250](v20, -1, -1);
      MEMORY[0x1D388E250](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v25 = 0;
    sub_1D1637118();
  }

  return sub_1D166FD34();
}

uint64_t sub_1D1634E98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
    v4 = sub_1D166FC54();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t _s27HealthMedicationsExperience0B28ScheduleIncompatibilityCacheC010serializedF06result10Foundation4DataVSaySo012HKMedicationdE6ResultCG_tF_0()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D166F4E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
  v6 = sub_1D166FC44();
  v26[0] = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v26];

  v8 = v26[0];
  if (v7)
  {
    v9 = sub_1D166F0E4();
  }

  else
  {
    v10 = v8;
    v11 = sub_1D166F094();

    swift_willThrow();
    sub_1D166F4C4();
    v12 = v11;
    v13 = sub_1D166F4D4();
    v14 = sub_1D166FF44();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v15 = 136315394;
      sub_1D163705C(0, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
      v17 = sub_1D1670754();
      v19 = sub_1D15F7A30(v17, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = v11;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_1D15E6000, v13, v14, "%s Failed to serialize the incompatibility cache, returning empty data object. %@", v15, 0x16u);
      sub_1D15FADE4(v16);
      MEMORY[0x1D388E250](v16, -1, -1);
      v22 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D388E250](v22, -1, -1);
      MEMORY[0x1D388E250](v15, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    v9 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MedicationsScheduleIncompatibilityCache.incompatibilityResult(for:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D16352F8;

  return sub_1D1633290();
}

{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D16356F8;

  return sub_1D1633290();
}

uint64_t sub_1D16352F8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D16353F8, 0, 0);
}

uint64_t sub_1D16353F8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v4 = *(v0 + 32);
      v24 = v4 & 0xFFFFFFFFFFFFFF8;
      v25 = v4 & 0xC000000000000001;
      v5 = &property descriptor for MedicationView.config;
      while (1)
      {
        if (v25)
        {
          v6 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *(v24 + 16))
          {
            goto LABEL_30;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v9 = [v6 schedule];
        v10 = [v9 v5[193]];

        if (v10)
        {
          v26 = sub_1D166FA04();
          v12 = v11;
        }

        else
        {
          v26 = 0;
          v12 = 0;
        }

        v13 = [*(v0 + 16) v5[193]];
        if (!v13)
        {
          if (!v12)
          {
            goto LABEL_27;
          }

LABEL_6:

LABEL_7:

          goto LABEL_8;
        }

        v27 = v7;
        v14 = v5;
        v15 = v1;
        v16 = i;
        v17 = v13;
        v18 = sub_1D166FA04();
        v20 = v19;

        i = v16;
        v1 = v15;
        v5 = v14;
        if (!v12)
        {
          v7 = v27;
          if (!v20)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }

        v7 = v27;
        if (!v20)
        {
          goto LABEL_6;
        }

        if (v26 == v18 && v12 == v20)
        {

LABEL_27:

          goto LABEL_34;
        }

        v21 = sub_1D16705D4();

        if (v21)
        {

          v7 = v27;
          goto LABEL_34;
        }

LABEL_8:
        ++v3;
        if (v8 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:
  }

  v7 = 0;
LABEL_34:
  v22 = *(v0 + 8);

  return v22(v7);
}

uint64_t sub_1D16356F8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D16357F8, 0, 0);
}

uint64_t sub_1D16357F8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v4 = *(v23 + 32);
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v22)
        {
          v5 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *(v21 + 16))
          {
            goto LABEL_23;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 schedule];
        v9 = [v8 medicationIdentifier];

        if (v9)
        {
          v10 = sub_1D166FA04();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = [*(v23 + 16) semanticIdentifier];
        v14 = [v13 stringValue];

        v15 = sub_1D166FA04();
        v17 = v16;

        if (v12)
        {
          if (v10 == v15 && v12 == v17)
          {

LABEL_21:

            goto LABEL_27;
          }

          v18 = sub_1D16705D4();

          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v3;
        if (v7 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  v6 = 0;
LABEL_27:
  v19 = *(v23 + 8);

  return v19(v6);
}

void *MedicationsScheduleIncompatibilityCache.subscript.getter(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    while (1)
    {
      v4 = 0;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v5 = &property descriptor for MedicationView.config;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D388D4D0](v4, v3);
        }

        else
        {
          if (v4 >= *(v22 + 16))
          {
            goto LABEL_27;
          }

          v7 = *(v3 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = [v7 schedule];
        v11 = [v10 v5[193]];

        if (v11)
        {
          v12 = sub_1D166FA04();
          v14 = v13;
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v15 = v5;
        v16 = [a1 v5[193]];
        if (!v16)
        {
          if (!v14)
          {
            goto LABEL_25;
          }

LABEL_21:

          goto LABEL_6;
        }

        v17 = v16;
        v18 = sub_1D166FA04();
        v20 = v19;

        if (v14)
        {
          if (!v20)
          {
            goto LABEL_21;
          }

          if (v12 == v18 && v14 == v20)
          {

            return v8;
          }

          v6 = sub_1D16705D4();

          if (v6)
          {
LABEL_25:

            return v8;
          }
        }

        else
        {
          if (!v20)
          {
            goto LABEL_25;
          }
        }

LABEL_6:
        ++v4;
        v5 = v15;
        if (v9 == v23)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      if (sub_1D1670224() >= 1)
      {
        v23 = sub_1D1670224();
        if (v23)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_30:

  return 0;
}

{
  v2 = v1 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v4 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388D4D0](v4, v3);
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_21;
        }

        v5 = *(v3 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 schedule];
      v9 = [v8 medicationIdentifier];

      if (v9)
      {
        v10 = sub_1D166FA04();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = [a1 semanticIdentifier];
      v14 = [v13 stringValue];

      v15 = sub_1D166FA04();
      v17 = v16;

      if (v12)
      {
        if (v10 == v15 && v12 == v17)
        {

          return v6;
        }

        v18 = sub_1D16705D4();

        if (v18)
        {

          return v6;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    if (sub_1D1670224() < 1)
    {
      break;
    }
  }

LABEL_24:

  return 0;
}

void MedicationsScheduleIncompatibilityCache.addHandlerForCacheUpdate(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1D15E9178(v6);

  os_unfair_lock_unlock(v5);
}

void MedicationsScheduleIncompatibilityCache.setCache(data:)()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
  v3 = sub_1D166F0D4();
  v4 = *MEMORY[0x1E69A3A00];
  v5 = swift_allocObject();
  *(v5 + 16) = ObjectType;
  v8[4] = sub_1D1636C90;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D15FABB0;
  v8[3] = &block_descriptor_7;
  v6 = _Block_copy(v8);
  v7 = v4;

  [v2 setData:v3 forKey:v7 completion:v6];
  _Block_release(v6);
}

uint64_t MedicationsScheduleIncompatibilityCache.getCurrentCacheValue()()
{
  v1 = v0 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

id MedicationsScheduleIncompatibilityCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationsScheduleIncompatibilityCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationsScheduleIncompatibilityCache.scheduleControl(_:didAddOrModify:)()
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_1D166FD84();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D1632CAC(0, 0, v4, &unk_1D1674190, v6);
}

uint64_t sub_1D163635C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    v2();
  }

  os_unfair_lock_unlock(v1);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D1636420;
  v5 = *(v0 + 16);

  return sub_1D16340DC();
}

uint64_t sub_1D1636420()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D163662C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D16373F8;

  return v7(a1);
}

uint64_t sub_1D1636724(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D163681C;

  return v7(a1);
}

uint64_t sub_1D163681C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1D1636914(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v29 - v6;
  v7 = sub_1D166F7F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues];
  *v12 = 0;
  *(v12 + 1) = MEMORY[0x1E69E7CC0];
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_healthStore] = a1;
  v13 = *MEMORY[0x1E69A3A08];
  v14 = qword_1EDEC9ED8;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v17 = sub_1D166F9C4();
  v18 = [v16 initWithCategory:v13 domainName:v17 healthStore:v15];

  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x1E69A3AE0]) initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_scheduleControl] = v19;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_scheduleControl];
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7FA0], v7);
  v22 = v20;
  v23 = v21;
  v24 = sub_1D166FFF4();
  (*(v8 + 8))(v11, v7);
  [v23 registerObserver:v22 queue:v24];

  v25 = sub_1D166FD84();
  v26 = v30;
  (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v22;
  sub_1D1632CAC(0, 0, v26, &unk_1D16742A0, v27);

  return v22;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1636CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D1600968;

  return sub_1D163633C(a1, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1636E0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1600968;

  return sub_1D1636724(a1, v5);
}

void sub_1D1636EC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1636F18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D15FFFCC;

  return sub_1D1636724(a1, v5);
}

void sub_1D1636FD8()
{
  if (!qword_1EC63DF20)
  {
    sub_1D163705C(255, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF20);
    }
  }
}

void sub_1D163705C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D16370C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1D1637118()
{
  if (!qword_1EC63DF38)
  {
    sub_1D1636FD8();
    v0 = sub_1D166FD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF38);
    }
  }
}

uint64_t sub_1D1637180(uint64_t a1, void *a2)
{
  sub_1D1637118();
  v6 = *(v2 + ((*(*(v5 - 8) + 64) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D1634C30(a1, a2);
}

uint64_t sub_1D163722C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D16370C4(a1, a2);
  }

  return a1;
}

void sub_1D1637240()
{
  if (!qword_1EC63DF50)
  {
    sub_1D16372D4(255, &qword_1EC63DF58, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF50);
    }
  }
}

void sub_1D16372D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D163733C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D15FFFCC;

  return sub_1D163404C();
}

uint64_t sub_1D16374BC(void *a1)
{
  v162 = *v1;
  v4 = sub_1D166F4E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D166F174();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 healthDataSource];
  if (v14)
  {
    v15 = v14;
    v160 = v4;
    v161 = v2;
    v16 = objc_allocWithZone(MEMORY[0x1E69A3AB0]);
    v159[1] = v15;
    v17 = [v16 initWithDataSource_];
    v18 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    v170 = v18;
    v19 = *MEMORY[0x1E696B4D8];
    v20 = sub_1D166FA04();
    v22 = v21;
    v163 = v17;
    v23 = [v17 biologicalSex];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D166FA04();
      v27 = v26;

      *(&v169 + 1) = MEMORY[0x1E69E6158];
      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(&v169 + 1) = MEMORY[0x1E69E6158];
    }

    v34 = *MEMORY[0x1E696B508];
    v25 = sub_1D166FA04();
    v27 = v35;
LABEL_9:
    v36 = v160;
    *&v168 = v25;
    *(&v168 + 1) = v27;
    sub_1D15FA184(&v168, &v166);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v18;
    sub_1D1608EE4(&v166, v20, v22, isUniquelyReferenced_nonNull_native);

    v170 = v165;
    v38 = *MEMORY[0x1E696B4D0];
    v39 = sub_1D166FA04();
    v41 = v40;
    sub_1D166F164();
    v42 = sub_1D166F124();
    (*(v10 + 8))(v13, v9);
    v43 = v163;
    v44 = [v163 bucketedUserAgeForCurrentDate_];

    *(&v169 + 1) = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
    *&v168 = v44;
    sub_1D15FA184(&v168, &v166);
    v45 = v170;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v45;
    sub_1D1608EE4(&v166, v39, v41, v46);

    v47 = v165;
    v170 = v165;
    v48 = *MEMORY[0x1E696B4C8];
    v49 = sub_1D166FA04();
    v51 = v50;
    v52 = [v43 activePairedWatchProductType];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1D166FA04();
      v56 = v55;

      *(&v169 + 1) = MEMORY[0x1E69E6158];
      v57 = v164;
      if (v56)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(&v169 + 1) = MEMORY[0x1E69E6158];
      v57 = v164;
    }

    v58 = *MEMORY[0x1E696B508];
    v54 = sub_1D166FA04();
    v56 = v59;
LABEL_14:
    *&v168 = v54;
    *(&v168 + 1) = v56;
    sub_1D15FA184(&v168, &v166);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v47;
    sub_1D1608EE4(&v166, v49, v51, v60);

    v61 = v165;
    v62 = *(v57 + 16);
    v63 = HKStringFromMedicationListOnboardingProvenanceType();
    v64 = sub_1D166FA04();
    v66 = v65;

    v67 = MEMORY[0x1E69E6158];
    *(&v169 + 1) = MEMORY[0x1E69E6158];
    *&v168 = v64;
    *(&v168 + 1) = v66;
    sub_1D15FA184(&v168, &v166);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v61;
    sub_1D1608EE4(&v166, 0x6E616E65766F7270, 0xEA00000000006563, v68);
    v69 = v165;
    v70 = *(v57 + 24);
    v71 = HKStringFromMedicationListOnboardingStepType();
    v72 = sub_1D166FA04();
    v74 = v73;

    *(&v169 + 1) = v67;
    *&v168 = v72;
    *(&v168 + 1) = v74;
    sub_1D15FA184(&v168, &v166);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v69;
    sub_1D1608EE4(&v166, 1885697139, 0xE400000000000000, v75);
    v76 = v165;
    v77 = *(v57 + 41);
    v78 = MEMORY[0x1E69E6370];
    *(&v169 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v168) = v77;
    sub_1D15FA184(&v168, &v166);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v76;
    sub_1D1608EE4(&v166, 0xD000000000000010, 0x80000001D1677D90, v79);
    v80 = v165;
    [v163 isOntologySupportedRegion];
    v81 = sub_1D166FD04();
    v82 = sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    *(&v169 + 1) = v82;
    *&v168 = v81;
    sub_1D15FA184(&v168, &v166);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v80;
    sub_1D1608EE4(&v166, 0xD000000000000019, 0x80000001D1677EE0, v83);
    v84 = v165;
    v170 = v165;
    if (*(v57 + 57) == 2)
    {
      sub_1D162B160(0xD00000000000001FLL, 0x80000001D1677DD0, &v168);
      sub_1D162B804(&v168);
    }

    else
    {
      v85 = sub_1D166FD04();
      *(&v169 + 1) = v82;
      *&v168 = v85;
      sub_1D15FA184(&v168, &v166);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v84;
      sub_1D1608EE4(&v166, 0xD00000000000001FLL, 0x80000001D1677DD0, v86);
      v170 = v165;
    }

    v87 = MEMORY[0x1E69E6530];
    if (*(v57 + 72))
    {
      sub_1D162B160(0xD000000000000013, 0x80000001D1677F00, &v168);
      sub_1D162B804(&v168);
    }

    else
    {
      v88 = *(v57 + 64);
      *(&v169 + 1) = MEMORY[0x1E69E6530];
      *&v168 = v88;
      sub_1D15FA184(&v168, &v166);
      v89 = v170;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v89;
      sub_1D1608EE4(&v166, 0xD000000000000013, 0x80000001D1677F00, v90);
      v170 = v165;
    }

    if (*(v57 + 88))
    {
      sub_1D162B160(0xD00000000000001DLL, 0x80000001D1677F20, &v168);
      sub_1D162B804(&v168);
    }

    else
    {
      v91 = *(v57 + 80);
      *(&v169 + 1) = v87;
      *&v168 = v91;
      sub_1D15FA184(&v168, &v166);
      v92 = v170;
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v92;
      sub_1D1608EE4(&v166, 0xD00000000000001DLL, 0x80000001D1677F20, v93);
      v170 = v165;
    }

    if (*(v57 + 105) == 2)
    {
      sub_1D162B160(0xD000000000000018, 0x80000001D1677E30, &v168);
      sub_1D162B804(&v168);
    }

    else
    {
      v94 = sub_1D166FD04();
      *(&v169 + 1) = v82;
      *&v168 = v94;
      sub_1D15FA184(&v168, &v166);
      v95 = v170;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v95;
      sub_1D1608EE4(&v166, 0xD000000000000018, 0x80000001D1677E30, v96);
      v170 = v165;
    }

    if (*(v57 + 120) == 1)
    {
      v97 = MEMORY[0x1E69E6158];
      *(&v169 + 1) = MEMORY[0x1E69E6158];
    }

    else
    {
      v98 = *(v57 + 112);
      v99 = HKStringFromHKMedicationListOnboardingAlgorithmType();
      v100 = sub_1D166FA04();
      v102 = v101;

      v103 = v102;
      v97 = MEMORY[0x1E69E6158];
      *(&v169 + 1) = MEMORY[0x1E69E6158];
      if (v103)
      {
        v104 = v100;
        goto LABEL_31;
      }
    }

    v105 = *MEMORY[0x1E696B508];
    v104 = sub_1D166FA04();
LABEL_31:
    *&v168 = v104;
    *(&v168 + 1) = v103;
    sub_1D15FA184(&v168, &v166);
    v106 = v170;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v106;
    sub_1D1608EE4(&v166, 0x687469726F676C61, 0xED0000657079546DLL, v107);
    v108 = v165;
    v170 = v165;
    if (*(v57 + 104))
    {
      sub_1D162B160(0xD00000000000001CLL, 0x80000001D1677E10, &v168);
      sub_1D162B804(&v168);
    }

    else
    {
      v109 = *(v57 + 96);
      *(&v169 + 1) = v87;
      *&v168 = v109;
      sub_1D15FA184(&v168, &v166);
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v165 = v108;
      sub_1D1608EE4(&v166, 0xD00000000000001CLL, 0x80000001D1677E10, v110);
      v170 = v165;
    }

    if (*(v57 + 56) == 1)
    {
      *(&v169 + 1) = v97;
    }

    else
    {
      v111 = *(v57 + 48);
      v112 = HKStringFromMedicationListOnboardingDetailsEntryType();
      v113 = sub_1D166FA04();
      v115 = v114;

      v116 = v115;
      v97 = MEMORY[0x1E69E6158];
      *(&v169 + 1) = MEMORY[0x1E69E6158];
      if (v116)
      {
        v117 = v113;
        goto LABEL_39;
      }
    }

    v118 = *MEMORY[0x1E696B508];
    v117 = sub_1D166FA04();
LABEL_39:
    *&v168 = v117;
    *(&v168 + 1) = v116;
    sub_1D15FA184(&v168, &v166);
    v119 = v170;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v119;
    sub_1D1608EE4(&v166, 0xD000000000000015, 0x80000001D1677DB0, v120);
    v121 = v165;
    if (*(v57 + 40) == 1)
    {
      *(&v169 + 1) = v97;
    }

    else
    {
      v122 = *(v57 + 32);
      v123 = HKStringFromMedicationListOnboardingActionType();
      v124 = sub_1D166FA04();
      v126 = v125;

      *(&v169 + 1) = MEMORY[0x1E69E6158];
      if (v126)
      {
        v127 = v126;
        v128 = v124;
        goto LABEL_44;
      }
    }

    v129 = *MEMORY[0x1E696B508];
    v128 = sub_1D166FA04();
LABEL_44:
    *&v168 = v128;
    *(&v168 + 1) = v127;
    sub_1D15FA184(&v168, &v166);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v121;
    sub_1D1608EE4(&v166, 0x6E6F69746361, 0xE600000000000000, v130);
    v132 = v164;
    v131 = v165;
    v133 = *(v164 + 121);
    *(&v169 + 1) = v78;
    LOBYTE(v168) = v133;
    sub_1D15FA184(&v168, &v166);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v131;
    sub_1D1608EE4(&v166, 0xD000000000000016, 0x80000001D1677E60, v134);
    v135 = v165;
    v170 = v165;
    if (*(v132 + 136) == 1)
    {
      v168 = 0u;
      v169 = 0u;
    }

    else
    {
      v136 = *(v132 + 128);
      v137 = HKStringFromMedicationScheduleType();
      v138 = sub_1D166FA04();
      v140 = v139;

      v167 = MEMORY[0x1E69E6158];
      *&v166 = v138;
      *(&v166 + 1) = v140;
      sub_1D15FA184(&v166, &v168);
      if (*(&v169 + 1))
      {
        sub_1D15FA184(&v168, &v166);
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v135;
        sub_1D1608EE4(&v166, 0x656C756465686373, 0xEC00000065707954, v141);
        v142 = v165;
LABEL_49:
        v143 = *(v164 + 137);
        v144 = sub_1D166FD04();
        *(&v169 + 1) = v82;
        *&v168 = v144;
        sub_1D15FA184(&v168, &v166);
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v142;
        sub_1D1608EE4(&v166, 0xD000000000000013, 0x80000001D1677E90, v145);
        v10 = v165;
        v170 = v165;
        if (qword_1EDECB358 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v36, qword_1EDECB360);
        v146 = sub_1D166F4D4();
        v147 = sub_1D166FF64();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *&v168 = v149;
          *v148 = 136315394;
          v150 = sub_1D1670754();
          v152 = sub_1D15F7A30(v150, v151, &v168);

          *(v148 + 4) = v152;
          *(v148 + 12) = 2080;

          v153 = sub_1D166F954();
          v155 = v154;

          v156 = sub_1D15F7A30(v153, v155, &v168);

          *(v148 + 14) = v156;
          _os_log_impl(&dword_1D15E6000, v146, v147, "%s IHA gated event payload: %s", v148, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388E250](v149, -1, -1);
          MEMORY[0x1D388E250](v148, -1, -1);
        }

        swift_unknownObjectRelease();
        return v10;
      }
    }

    sub_1D162B804(&v168);
    sub_1D162B160(0x656C756465686373, 0xEC00000065707954, &v166);
    sub_1D162B804(&v166);
    v142 = v170;
    goto LABEL_49;
  }

  sub_1D166F4C4();
  v28 = sub_1D166F4D4();
  v29 = sub_1D166FF54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v168 = v31;
    *v30 = 136446210;
    v32 = sub_1D1670754();
    v10 = sub_1D15F7A30(v32, v33, &v168);

    *(v30 + 4) = v10;
    _os_log_impl(&dword_1D15E6000, v28, v29, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1D388E250](v31, -1, -1);
    MEMORY[0x1D388E250](v30, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_1D16384C4();
  swift_allocError();
  *v157 = 0xD000000000000020;
  v157[1] = 0x80000001D1677EB0;
  swift_willThrow();
  return v10;
}

unint64_t sub_1D16384C4()
{
  result = qword_1EC63DF60;
  if (!qword_1EC63DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DF60);
  }

  return result;
}

uint64_t sub_1D1638534()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static ListConceptManager.activeMedicationsListManager(using:changeProvider:)(void *a1, void *a2)
{
  v4 = HKStringFromListUserDomainType();
  sub_1D166FA04();

  sub_1D1638628();
  v5 = sub_1D166F4B4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = a1;
  v9 = a2;
  return sub_1D166F494();
}

unint64_t sub_1D1638628()
{
  result = qword_1EDECA9C0;
  if (!qword_1EDECA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA9C0);
  }

  return result;
}

uint64_t ListConceptManager.contains(concept:)(void *a1)
{
  v1 = sub_1D166F4A4();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_20:

    v12 = sub_1D166F484();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_39;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_40:
      v23 = 0;
      goto LABEL_41;
    }

LABEL_22:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D388D4D0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v14 = sub_1D1670224();
        if (!v14)
        {
          goto LABEL_40;
        }

        goto LABEL_22;
      }

      v19 = [v16 firstConceptIdentifier];
      v20 = [a1 identifier];
      v21 = v20;
      if (!v19)
      {
        break;
      }

      if (!v20)
      {

        v21 = v17;
LABEL_24:

        goto LABEL_25;
      }

      sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
      v22 = sub_1D16700A4();

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_25:
      ++v15;
      if (v18 == v14)
      {
        goto LABEL_40;
      }
    }

    if (!v21)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D388D4D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v3 = sub_1D1670224();
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    v8 = [v5 firstConceptIdentifier];
    v9 = [a1 identifier];
    v10 = v9;
    if (!v8)
    {

      if (!v10)
      {
        goto LABEL_36;
      }

      goto LABEL_5;
    }

    if (v9)
    {
      break;
    }

    v10 = v6;
LABEL_5:

LABEL_6:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
  v11 = sub_1D16700A4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_36:
  v23 = 1;
LABEL_41:

  return v23;
}

uint64_t sub_1D163896C(void *a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_21:
    v4 = sub_1D1670224();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:

    return 0;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D388D4D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = [v6 firstConceptIdentifier];
    v10 = [a1 identifier];
    v11 = v10;
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    if (v10)
    {
      break;
    }

    v11 = v9;
LABEL_5:

LABEL_6:
    ++v5;
    if (v8 == v4)
    {
      goto LABEL_22;
    }
  }

  sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
  v12 = sub_1D16700A4();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

uint64_t sub_1D1638B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1638B58(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D1638BA8(uint64_t a1, uint64_t a2)
{
  sub_1D1638E54();
  v18 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15EE5A8(0, &qword_1EDECADC8, 0x1E696C1C0);
  sub_1D15EE5A8(0, &qword_1EDECB338, 0x1E696C530);
  v8 = objc_opt_self();
  v9 = [objc_opt_self() medicationUserDomainConceptTypeIdentifier];
  v10 = [v8 predicateForUserDomainConceptsWithTypeIdentifier_];

  v11 = sub_1D166FF24();
  sub_1D15EE5A8(0, &qword_1EDECACD8, 0x1E696C218);
  v12 = [v8 predicateForListUserDomainConceptWithListType_];
  v13 = sub_1D166FF24();

  v19 = v13;
  v20 = v11;
  sub_1D1638F20(0, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
  sub_1D1638F20(0, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
  sub_1D1638FF4();
  sub_1D163906C();

  sub_1D166F524();
  sub_1D16390E4();
  v14 = v18;
  v15 = sub_1D166F754();

  (*(v4 + 8))(v7, v14);
  return v15;
}

void sub_1D1638E54()
{
  if (!qword_1EDECAE78)
  {
    sub_1D1638F20(255, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
    sub_1D1638F20(255, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
    sub_1D1638FF4();
    sub_1D163906C();
    v0 = sub_1D166F514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE78);
    }
  }
}

void sub_1D1638F20(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1D1638F9C(255, a3, a4, a5);
    sub_1D15F9218();
    v6 = sub_1D166F5B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1638F9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1D15EE5A8(255, a3, a4);
    v5 = sub_1D166FCF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D1638FF4()
{
  result = qword_1EDECAE70;
  if (!qword_1EDECAE70)
  {
    sub_1D1638F20(255, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE70);
  }

  return result;
}

unint64_t sub_1D163906C()
{
  result = qword_1EDECAE60;
  if (!qword_1EDECAE60)
  {
    sub_1D1638F20(255, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE60);
  }

  return result;
}

unint64_t sub_1D16390E4()
{
  result = qword_1EDECAE80;
  if (!qword_1EDECAE80)
  {
    sub_1D1638E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE80);
  }

  return result;
}

unint64_t sub_1D163913C(uint64_t a1)
{
  if (a1 > 6)
  {
    v4 = 0xD00000000000002BLL;
    v5 = 0xD00000000000002DLL;
    if (a1 != 13)
    {
      v5 = 0;
    }

    if (a1 != 12)
    {
      v4 = v5;
    }

    if (a1 == 10)
    {
      v4 = 0xD00000000000002CLL;
    }

    v6 = 0xD000000000000032;
    v7 = 0xD00000000000002CLL;
    v8 = 0xD00000000000002CLL;
    if (a1 != 9)
    {
      v8 = 0;
    }

    if (a1 != 8)
    {
      v7 = v8;
    }

    if (a1 != 7)
    {
      v6 = v7;
    }

    if (a1 <= 9)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 > 3)
    {
      v1 = 0xD00000000000002BLL;
      v2 = 0xD000000000000030;
      if (a1 != 6)
      {
        v2 = 0;
      }

      if (a1 == 5)
      {
        v2 = 0xD000000000000031;
      }

      v3 = a1 == 4;
    }

    else
    {
      v1 = 0xD00000000000002ELL;
      v2 = 0xD00000000000002DLL;
      if (a1 != 3)
      {
        v2 = 0;
      }

      if (a1 == 2)
      {
        v2 = 0xD000000000000032;
      }

      v3 = a1 == 1;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D16392F8(char a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        if (a1)
        {
          if (qword_1EDECB050 == -1)
          {
            return sub_1D166F004();
          }
        }

        else if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      if (a2 != 2)
      {
        if (a2 != 3)
        {
          return result;
        }

        v4 = qword_1EDECB050;
        if (a1)
        {
          goto LABEL_23;
        }

LABEL_51:
        if (v4 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      v5 = qword_1EDECB050;
      if (a1)
      {
LABEL_35:
        if (v5 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      goto LABEL_58;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        if (a1)
        {
          if (qword_1EDECB050 == -1)
          {
            return sub_1D166F004();
          }
        }

        else if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (a1)
      {
        if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (qword_1EDECB050 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    v6 = qword_1EDECB050;
    if (a1)
    {
LABEL_44:
      if (v6 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

LABEL_64:
    if (v6 == -1)
    {
      return sub_1D166F004();
    }

    goto LABEL_48;
  }

  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 != 12)
      {
        if (a2 != 13)
        {
          return result;
        }

        v4 = qword_1EDECB050;
        if (a1)
        {
LABEL_23:
          if (v4 == -1)
          {
            return sub_1D166F004();
          }

          goto LABEL_48;
        }

        goto LABEL_51;
      }

      v6 = qword_1EDECB050;
      if (a1)
      {
        goto LABEL_44;
      }

      goto LABEL_64;
    }

    v7 = qword_1EDECB050;
    if (a1)
    {
LABEL_38:
      if (v7 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v5 = qword_1EDECB050;
      if (a1)
      {
        goto LABEL_35;
      }

LABEL_58:
      if (v5 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    if (a2 != 8)
    {
      if (a1)
      {
        if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (qword_1EDECB050 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    v7 = qword_1EDECB050;
    if (a1)
    {
      goto LABEL_38;
    }
  }

  if (v7 == -1)
  {
    return sub_1D166F004();
  }

LABEL_48:
  swift_once();
  return sub_1D166F004();
}

uint64_t Date.startOfDay()()
{
  v0 = sub_1D166F2D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  sub_1D166F204();
  return (*(v1 + 8))(v4, v0);
}

uint64_t Date.endOfDay()@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = sub_1D166F254();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D166F274();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D166F224();
  v9 = *(v8 - 8);
  v10 = v9;
  v52 = v8;
  v53 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D166F174();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v62 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - v18;
  v20 = sub_1D166F2D4();
  v54 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v51 - v26;
  sub_1D163AD10(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v57 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v67 = &v51 - v32;
  sub_1D166F2B4();
  sub_1D166F2B4();
  sub_1D166F204();
  v33 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v33;
  v33(v25, v20);
  v34 = v13;
  (*(v10 + 104))(v13, *MEMORY[0x1E69698D0], v8);
  v36 = v58;
  v35 = v59;
  (*(v5 + 104))(v58, *MEMORY[0x1E69699C8], v59);
  v37 = v64;
  v38 = v65;
  v39 = v63;
  (*(v65 + 104))(v63, *MEMORY[0x1E6969998], v64);
  sub_1D166F284();
  (*(v38 + 8))(v39, v37);
  (*(v5 + 8))(v36, v35);
  (*(v53 + 8))(v34, v52);
  v40 = v60;
  v41 = v61;
  v42 = *(v60 + 8);
  v42(v19, v61);
  v43 = v54;
  v44 = v56;
  v56(v27, v54);
  sub_1D166F2B4();
  sub_1D166F204();
  v45 = v27;
  v46 = v40;
  v47 = v57;
  v44(v45, v43);
  v48 = v62;
  sub_1D166F114();
  v42(v19, v41);
  sub_1D15F8AB8(v67, v47);
  v49 = *(v46 + 48);
  if (v49(v47, 1, v41) == 1)
  {
    (*(v46 + 32))(v66, v48, v41);
    result = v49(v47, 1, v41);
    if (result != 1)
    {
      return sub_1D15F8E38(v47);
    }
  }

  else
  {
    v42(v48, v41);
    return (*(v46 + 32))(v66, v47, v41);
  }

  return result;
}

uint64_t Date.localizedRelative.getter()
{
  v45 = sub_1D166F174();
  v44 = *(v45 - 8);
  v0 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D166F2D4();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D166EFA4();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D163AD10(0, &qword_1EC63D9D8, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = sub_1D166F2C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D16721A0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A58], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A88], v11);
  v17(v16 + 2 * v13, *MEMORY[0x1E6969A48], v11);
  sub_1D163AB74(v15);
  swift_setDeallocating();
  v18 = v10;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D166F2B4();
  sub_1D166F164();
  sub_1D166F234();
  (*(v44 + 8))(v2, v45);
  (*(v42 + 8))(v6, v43);
  result = sub_1D166EF74();
  if (v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = result;
  result = sub_1D166EF84();
  if (v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = result;
  result = sub_1D166EF94();
  if (v24)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v25 = result;

  if (v21 < 1)
  {
    if (v23 < 1)
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
      sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      v33 = MEMORY[0x1E69E6530];
      v34 = MEMORY[0x1E69E65A8];
      *(v32 + 16) = xmmword_1D16721D0;
      *(v32 + 56) = v33;
      *(v32 + 64) = v34;
      if (v25 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v25;
      }

      *(v32 + 32) = v35;
    }

    else
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
      sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E6530];
      *(v29 + 16) = xmmword_1D16721D0;
      v31 = MEMORY[0x1E69E65A8];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v23;
    }
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
    sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E6530];
    *(v26 + 16) = xmmword_1D16721D0;
    v28 = MEMORY[0x1E69E65A8];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v21;
  }

  v36 = sub_1D166F9D4();
  v38 = v40;
  v37 = v41;

  (*(v38 + 8))(v18, v37);
  return v36;
}

uint64_t sub_1D163A878(uint64_t a1)
{
  v2 = sub_1D166F1A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D163AE58(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D388CFF0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D1648B80(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1D163AA14(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1670224())
  {
    v4 = sub_1D163AE0C();
    v5 = sub_1D163AE58(&qword_1EC63DE18, sub_1D163AE0C);
    result = MEMORY[0x1D388CFF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D388D4D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D1648FD4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D1670224();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D163AB74(uint64_t a1)
{
  v2 = sub_1D166F2C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D163AE58(&qword_1EC63DA78, MEMORY[0x1E6969AD0]);
  result = MEMORY[0x1D388CFF0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D1649274(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

void sub_1D163AD10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D163AD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D388CFF0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D1648E60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1D163AE0C()
{
  result = qword_1EDECACB0;
  if (!qword_1EDECACB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECACB0);
  }

  return result;
}

uint64_t sub_1D163AE58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D163AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D163AF4C;

  return InteractionControlling.saveRemoteRecords(_:)(a1, a2, a3);
}

uint64_t sub_1D163AF4C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t InteractionControlling.saveRemoteRecords(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D163B078, 0, 0);
}

uint64_t sub_1D163B078()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1D163B17C;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0xD000000000000015, 0x80000001D1678540, sub_1D163B7D4, v3, v6);
}

uint64_t sub_1D163B17C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D163B2B4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D163B298;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D163B2B4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

uint64_t sub_1D163B31C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15F7420;

  return InteractionControlling.getDismissedRemoteRecords()(a1, a2);
}

uint64_t InteractionControlling.getDismissedRemoteRecords()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D163B3E4, 0, 0);
}

uint64_t sub_1D163B3E4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_1D163BA20();
  *v4 = v0;
  v4[1] = sub_1D163B4E8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001D1678560, sub_1D163BA14, v2, v5);
}

uint64_t sub_1D163B4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D163B604;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D162E594;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D163B604()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1D163B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D163C420();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_1D163C518, v14, a4, a5);
}

uint64_t sub_1D163B7E0(char a1, id a2)
{
  if (a1)
  {
    sub_1D163C420();
    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D163C420();
    return sub_1D166FD24();
  }
}

uint64_t sub_1D163B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D163C330();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  (*(a4 + 24))(sub_1D163C3A0, v12, a3, a4);
}

void sub_1D163BA20()
{
  if (!qword_1EC63DF68)
  {
    sub_1D15EE5A8(255, &qword_1EC63DB70, 0x1E69A3A90);
    v0 = sub_1D166FCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF68);
    }
  }
}

uint64_t sub_1D163BA88(uint64_t a1, id a2)
{
  if (a1)
  {
    sub_1D163C330();

    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D163C330();
    return sub_1D166FD24();
  }
}

void HKMedicationControl.saveRemoteRecords(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
  v6 = sub_1D166FC44();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D15FABB0;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [v3 markRemoteScheduleUnavailableRecordsAsDismissed:v6 completion:v7];
  _Block_release(v7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void HKMedicationControl.getDismissedRemoteRecords(completion:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D163BD24;
  v4[3] = &block_descriptor_7_0;
  v3 = _Block_copy(v4);

  [v2 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1D163BD24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DB70, 0x1E69A3A90);
    v4 = sub_1D166FC54();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1D163BDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
  v7 = sub_1D166FC44();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D15FABB0;
  v9[3] = &block_descriptor_23;
  v8 = _Block_copy(v9);

  [v6 markRemoteScheduleUnavailableRecordsAsDismissed:v7 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1D163BEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D163C5B0;

  return InteractionControlling.saveRemoteRecords(_:)(a1, a2, a3);
}

void sub_1D163BF6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D163BD24;
  v5[3] = &block_descriptor_18_0;
  v4 = _Block_copy(v5);

  [v3 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_1D163C024(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return InteractionControlling.getDismissedRemoteRecords()(a1, a2);
}

uint64_t dispatch thunk of InteractionControlling.saveRemoteRecords(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D15F9958;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of InteractionControlling.getDismissedRemoteRecords()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D15F9958;

  return v9(a1, a2);
}

void sub_1D163C330()
{
  if (!qword_1EC63DF70)
  {
    sub_1D163BA20();
    sub_1D15F9218();
    v0 = sub_1D166FD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF70);
    }
  }
}

uint64_t sub_1D163C3A0(uint64_t a1, void *a2)
{
  sub_1D163C330();
  v5 = *(*(v4 - 8) + 80);

  return sub_1D163BA88(a1, a2);
}

void sub_1D163C420()
{
  if (!qword_1EC63DF78)
  {
    sub_1D15F9218();
    v0 = sub_1D166FD44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF78);
    }
  }
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D163C518(char a1, void *a2)
{
  sub_1D163C420();
  v5 = *(*(v4 - 8) + 80);

  return sub_1D163B7E0(a1, a2);
}

uint64_t MedicationsSettingsManager.__allocating_init(healthStore:keyValueDomain:userDefaults:)(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1D163E808(a1, a2, a3);

  return v9;
}

uint64_t sub_1D163C690(unint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t *a3, void (*a4)(_BYTE *__return_ptr, uint64_t))
{
  sub_1D163F670(0, a1, MEMORY[0x1E69E6370], a2);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v15[-v11];
  v13 = *a3;
  swift_beginAccess();
  (*(v9 + 16))(v12, v4 + v13, v8);
  a4(&v15[7], v8);
  (*(v9 + 8))(v12, v8);
  return v15[7];
}

uint64_t MedicationsSettingsManager.init(healthStore:keyValueDomain:userDefaults:)(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  v5 = sub_1D163E808(a1, a2, a3);

  return v5;
}

uint64_t (*MedicationsSettingsManager.isAlcoholDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t sub_1D163C980@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void, uint64_t)@<X4>, uint64_t *a4@<X5>, void (*a5)(_BYTE *__return_ptr, uint64_t)@<X6>, _BYTE *a6@<X8>)
{
  sub_1D163F670(0, a2, MEMORY[0x1E69E6370], a3);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v19[-v14];
  v16 = *a1;
  v17 = *a4;
  swift_beginAccess();
  (*(v12 + 16))(v15, v16 + v17, v11);
  a5(&v19[7], v11);
  result = (*(v12 + 8))(v15, v11);
  *a6 = v19[7];
  return result;
}

uint64_t sub_1D163CAC0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, uint64_t (*a7)(void, uint64_t), void (*a8)(char *, uint64_t))
{
  v11 = *a2;
  v15 = *a1;
  v12 = *a5;
  swift_beginAccess();
  sub_1D163F670(0, a6, MEMORY[0x1E69E6370], a7);
  a8(&v15, v13);
  return swift_endAccess();
}

uint64_t sub_1D163CB94(char a1, uint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), void (*a5)(char *, uint64_t))
{
  v11 = a1;
  v8 = *a2;
  swift_beginAccess();
  sub_1D163F670(0, a3, MEMORY[0x1E69E6370], a4);
  a5(&v11, v9);
  return swift_endAccess();
}

uint64_t (*MedicationsSettingsManager.isMarijuanaDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.isTobaccoDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.areDoseRemindersEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.areFollowUpNotificationsEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didShowLifeStyleFactorsSelectionPage.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didDismissCHRAddAccountTileInCategoryRoom.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didDismissFollowUpTip.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.scheduleCompatibilityTileDismissalDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.getter()
{
  sub_1D163F5F4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_1D166F334();
  (*(v3 + 8))(v6, v2);
  return v9[1];
}

double sub_1D163D610@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D163F5F4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1D166F334();
  (*(v6 + 8))(v9, v5);
  result = v13[0];
  *a2 = *v13;
  return result;
}

uint64_t sub_1D163D734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  sub_1D163F5F4();

  sub_1D166F344();
  return swift_endAccess();
}

uint64_t MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.setter()
{
  swift_beginAccess();
  sub_1D163F5F4();
  sub_1D166F344();
  return swift_endAccess();
}

uint64_t (*MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F5F4();
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.isShardCheckOverrideEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.allowEndDatesInPast.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.alwaysShowLifeStyleFactorsSelectionPage.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.showMinorDrugInteractions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.timeZoneExperienceEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163DEA8;
}

uint64_t sub_1D163DEB8(uint64_t *a1)
{
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_1D166F334();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D163DFF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v15 - v10;
  v12 = *a1;
  v13 = *a4;
  swift_beginAccess();
  (*(v8 + 16))(v11, v12 + v13, v7);
  sub_1D166F334();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D163E140(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1D15FB870();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1D15F8A24(a1, &v18 - v13);
  v15 = *a2;
  sub_1D15F8A24(v14, v12);
  v16 = *a5;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  sub_1D166F344();
  swift_endAccess();
  return sub_1D15F8E38(v14);
}

uint64_t sub_1D163E27C(uint64_t a1, uint64_t *a2)
{
  sub_1D15FB870();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D15F8A24(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a2;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  sub_1D166F344();
  swift_endAccess();
  return sub_1D15F8E38(a1);
}

uint64_t (*MedicationsSettingsManager.medicationsCategoryRoomLastEnteredDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

void sub_1D163E440(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t MedicationsSettingsManager.deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled;
  v2 = MEMORY[0x1E69E6370];
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  v4 = v3;
  v5 = *(*(v3 - 8) + 8);
  v5(v0 + v1, v3);
  v5(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled, v4);
  v5(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled, v4);
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areDoseRemindersEnabled;
  sub_1D163F670(0, &qword_1EDECAB78, v2, MEMORY[0x1E69A3C40]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 8);
  v9(v0 + v6, v7);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areFollowUpNotificationsEnabled, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didShowLifeStyleFactorsSelectionPage, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissCHRAddAccountTileInCategoryRoom, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissFollowUpTip, v8);
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityTileDismissalDate;
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v12 = v11;
  v13 = *(*(v11 - 8) + 8);
  v13(v0 + v10, v11);
  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  sub_1D163F5F4();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isShardCheckOverrideEnabled, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__allowEndDatesInPast, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__alwaysShowLifeStyleFactorsSelectionPage, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__timeZoneExperienceEnabled, v8);
  v13(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__medicationsCategoryRoomLastEnteredDate, v12);
  return v0;
}

uint64_t MedicationsSettingsManager.__deallocating_deinit()
{
  MedicationsSettingsManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D163E808(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  sub_1D163F5F4();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15FB870();
  v71 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v69 = v13;
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v62 - v15;
  v16 = MEMORY[0x1E69E6370];
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v68 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  sub_1D163F670(0, &qword_1EDECAB28, v16, MEMORY[0x1E69A3308]);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v62 - v26;
  v72 = v18;
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    v62 = a1;
    v63 = a3;
    v29 = *MEMORY[0x1E69A3A08];
    if (qword_1EDEC9ED8 != -1)
    {
      swift_once();
    }

    v30 = objc_allocWithZone(MEMORY[0x1E696C210]);
    v31 = sub_1D166F9C4();
    v28 = [v30 initWithCategory:v29 domainName:v31 healthStore:v62];

    a3 = v63;
  }

  *(v3 + 16) = v28;
  *(v3 + 24) = a3;
  v32 = qword_1EDEC9EC0;
  v33 = a2;
  v34 = v28;
  v35 = a3;
  if (v32 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;

  sub_1D166F3C4();
  v36 = *(v24 + 32);
  v36(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled, v27, v23);
  v37 = qword_1EDEC9E88;
  v38 = *(v3 + 16);
  if (v37 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;

  sub_1D166F3C4();
  v36(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled, v27, v23);
  v39 = qword_1EDEC9EA0;
  v40 = *(v3 + 16);
  if (v39 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;

  sub_1D166F3C4();
  v36(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled, v27, v23);
  if (qword_1EDECAD50 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 1;
  v41 = v35;

  sub_1D166F354();
  v42 = v72 + 32;
  v43 = *(v72 + 32);
  v44 = v68;
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areDoseRemindersEnabled, v21, v68);
  if (qword_1EDECAD38 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v45 = v41;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areFollowUpNotificationsEnabled, v21, v44);
  if (qword_1EDECAD20 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v46 = v45;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didShowLifeStyleFactorsSelectionPage, v21, v44);
  if (qword_1EDECAD00 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v47 = v46;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissCHRAddAccountTileInCategoryRoom, v21, v44);
  if (qword_1EDECAD68 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v48 = v47;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isShardCheckOverrideEnabled, v21, v44);
  if (qword_1EDEC9F10 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v49 = v48;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__alwaysShowLifeStyleFactorsSelectionPage, v21, v44);
  if (qword_1EDEC9F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v50 = v49;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions, v21, v44);
  if (qword_1EDECAD98 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 1;
  v51 = v50;

  sub_1D166F354();
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__timeZoneExperienceEnabled, v21, v44);
  if (qword_1EDEC9F88 != -1)
  {
    swift_once();
  }

  LOBYTE(v74) = 0;
  v52 = v51;

  sub_1D166F354();
  v72 = v42;
  v63 = v43;
  v43(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissFollowUpTip, v21, v44);
  if (qword_1EDEC9F30 != -1)
  {
    swift_once();
  }

  v53 = sub_1D166F174();
  v62 = *(*(v53 - 8) + 56);
  v62(v70, 1, 1, v53);
  v54 = v52;

  v55 = v67;
  sub_1D166F354();
  v56 = *(v73 + 32);
  v73 += 32;
  v56(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityTileDismissalDate, v55, v69);
  if (qword_1EDEC9EF8 != -1)
  {
    swift_once();
  }

  v74 = 0;
  v75 = 0;
  sub_1D163F670(0, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v57 = v54;

  v58 = v64;
  sub_1D166F354();
  (*(v65 + 32))(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL, v58, v66);
  if (qword_1EDEC9F50 != -1)
  {
    swift_once();
  }

  v62(v70, 1, 1, v53);
  v59 = v57;

  v60 = v67;
  sub_1D166F354();
  v56(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__medicationsCategoryRoomLastEnteredDate, v60, v69);
  LOBYTE(v74) = 0;
  sub_1D166F354();
  v63(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__allowEndDatesInPast, v21, v68);
  return v3;
}

void sub_1D163F590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D163F5F4()
{
  if (!qword_1EDECAB80)
  {
    sub_1D163F670(255, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D166F364();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAB80);
    }
  }
}

void sub_1D163F670(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for MedicationsSettingsManager()
{
  result = qword_1EDECB2F8;
  if (!qword_1EDECB2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D163F714()
{
  sub_1D163F670(319, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1D163F670(319, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1D163F590(319, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_1D163F5F4();
        if (v9 <= 0x3F)
        {
          v11 = *(v8 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t Publisher<>.filtered(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = a3;
  v16[1] = a2;
  v4 = sub_1D166F174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D1641A94(255, &qword_1EC63DF80, type metadata accessor for MedicationDoseEvent, MEMORY[0x1E69E62F8]);
  v7 = sub_1D166F554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1D166F764();

  swift_getWitnessTable();
  v14 = sub_1D166F754();
  (*(v8 + 8))(v11, v7);
  return v14;
}

void *sub_1D163FB98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (*result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6[2] = v4;
    result = sub_1D15F156C(sub_1D164421C, v6, v5);
    if (result)
    {
      v3 = result;
    }
  }

  *a2 = v3;
  return result;
}

void *sub_1D163FC30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(sub_1D166F174() - 8) + 80);

  return sub_1D163FB98(a1, a2);
}

uint64_t sub_1D163FCB0(unint64_t *a1)
{
  v22 = sub_1D166F2D4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D166F174();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = *a1;
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = 0;
    return v20 & 1;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  v21[1] = v1;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D388D4D0](0, v15);
    goto LABEL_6;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);

LABEL_6:
    v18 = *(v17 + 16);

    v19 = [v18 startDate];

    sub_1D166F144();
    (*(v8 + 32))(v14, v12, v7);
    sub_1D166F2B4();
    v20 = sub_1D166F2A4();
    (*(v3 + 8))(v6, v22);
    (*(v8 + 8))(v14, v7);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t Publisher<>.medicationsWithActiveSchedules(scheduleControl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D16401B4();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 2) = a2;
  *(v16 + 3) = v17;
  *(v16 + 4) = a1;
  (*(v7 + 32))(&v16[v15], &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D1640248();
  sub_1D16404D8(&qword_1EC63DF98, sub_1D1640248);
  v18 = a1;
  sub_1D166F6E4();
  sub_1D16404D8(&qword_1EC63DFA0, sub_1D16401B4);
  v19 = sub_1D166F754();
  (*(v11 + 8))(v14, v10);
  return v19;
}

void sub_1D16401B4()
{
  if (!qword_1EC63DF88)
  {
    sub_1D1640248();
    sub_1D16404D8(&qword_1EC63DF98, sub_1D1640248);
    v0 = sub_1D166F6F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF88);
    }
  }
}

void sub_1D1640248()
{
  if (!qword_1EC63DF90)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    v0 = sub_1D166F6B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF90);
    }
  }
}

void sub_1D16402DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1640344@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a1;
  (*(v8 + 32))(&v11[v10], &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D1640248();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = a1;
  result = sub_1D166F6C4();
  *a4 = result;
  return result;
}

uint64_t sub_1D16404D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1640520(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = sub_1D166FD84();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, a5);
  v19 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v25;
  *(v20 + 4) = a5;
  *(v20 + 5) = v21;
  *(v20 + 6) = a3;
  *(v20 + 7) = sub_1D162EF90;
  *(v20 + 8) = v17;
  (*(v11 + 32))(&v20[v19], &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  v22 = a3;
  sub_1D16414D8(0, 0, v16, &unk_1D16745E0, v20);
}

uint64_t sub_1D1640770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v17;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = sub_1D166F5F4();
  v8[26] = v9;
  v10 = *(v9 - 8);
  v8[27] = v10;
  v11 = *(v10 + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_1D166F5E4();
  v8[29] = v12;
  v13 = *(v12 - 8);
  v8[30] = v13;
  v14 = *(v13 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16408B0, 0, 0);
}

uint64_t sub_1D16408B0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D16409C0;
  v2 = swift_continuation_init();
  sub_1D16440EC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D164109C;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 fetchAllSchedulesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16409C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1D164101C;
  }

  else
  {
    v3 = sub_1D1640AD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1640AD0()
{
  v1 = *(v0 + 18);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v0 = &property descriptor for MedicationView.config;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v5 isUnavailable])
        {
        }

        else
        {
          sub_1D1670374();
          v4 = *(v28 + 16);
          sub_1D16703B4();
          sub_1D16703C4();
          sub_1D1670384();
        }

        ++v3;
        if (v7 == i)
        {
          v0 = v27;
          v8 = v28;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *(v0 + 33) = v8;
    v14 = *(v0 + 31);
    v16 = *(v0 + 27);
    v15 = *(v0 + 28);
    v18 = *(v0 + 25);
    v17 = *(v0 + 26);
    v19 = *(v0 + 23);
    v20 = *(v0 + 24);

    MEMORY[0x1D388C9A0](v20, v18);
    sub_1D166F5D4();
    (*(v16 + 8))(v15, v17);
    v21 = *(v0 + 29);
    v22 = *(MEMORY[0x1E69E85D8] + 4);
    v23 = swift_task_alloc();
    *(v0 + 34) = v23;
    WitnessTable = swift_getWitnessTable();
    *v23 = v0;
    v23[1] = sub_1D1640D7C;
    v25 = *(v0 + 31);
    v26 = *(v0 + 29);

    return MEMORY[0x1EEE6D8E0](v0 + 152, 0, 0, v26, WitnessTable);
  }

  else
  {
    v9 = *(v0 + 22);
    (*(v0 + 21))(MEMORY[0x1E69E7CC0], 0);
    v10 = *(v0 + 31);
    v11 = *(v0 + 28);

    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_1D1640D7C()
{
  v2 = *(*v1 + 272);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1640E8C, 0, 0);
  }

  return result;
}

uint64_t sub_1D1640E8C()
{
  v1 = v0[33];
  if (v0[19])
  {
    v3 = v0[21];
    v2 = v0[22];
    v4 = sub_1D16410C4(v0[33], v0[19]);

    v3(v4, 0);

    v5 = v0[29];
    v6 = *(MEMORY[0x1E69E85D8] + 4);
    v7 = swift_task_alloc();
    v0[34] = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_1D1640D7C;
    v9 = v0[31];
    v10 = v0[29];

    return MEMORY[0x1EEE6D8E0](v0 + 19, 0, 0, v10, WitnessTable);
  }

  else
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

    v11 = v0[31];
    v12 = v0[28];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D164101C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t sub_1D16410C4(unint64_t a1, unint64_t a2)
{
  i = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v38[0] = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v37 = a2;
    v6 = 0;
    v2 = v38[0];
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D388D4D0](v6, i);
      }

      else
      {
        v7 = *(i + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 medicationIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D166FA04();
        v13 = v12;
      }

      else
      {

        v11 = 0;
        v13 = 0;
      }

      v38[0] = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D162306C((v14 > 1), v15 + 1, 1);
        v2 = v38[0];
      }

      ++v6;
      *(v2 + 16) = v15 + 1;
      v16 = v2 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v5 != v6);
    a2 = v37;
    goto LABEL_15;
  }

  __break(1u);
LABEL_53:
  for (i = sub_1D1670224(); ; i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v18 = 0;
      v19 = a2 & 0xC000000000000001;
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19)
        {
          v21 = MEMORY[0x1D388D4D0](v18, a2);
        }

        else
        {
          if (v18 >= *(v20 + 16))
          {
            goto LABEL_42;
          }

          v21 = *(a2 + 8 * v18 + 32);
        }

        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        MEMORY[0x1D388CE10](v21);
        if (*((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = a2;
          sub_1D166FC84();
          a2 = v37;
        }

        sub_1D166FCC4();
        ++v18;
        if (v22 == i)
        {
          i = v38[0];
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    i = MEMORY[0x1E69E7CC0];
LABEL_29:
    v39 = v17;
    if (!(i >> 62))
    {
      v23 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        break;
      }

      goto LABEL_31;
    }

    v23 = sub_1D1670224();
    if (!v23)
    {
      break;
    }

LABEL_31:
    v24 = 0;
    v36 = i & 0xFFFFFFFFFFFFFF8;
    v37 = i & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v25 = MEMORY[0x1D388D4D0](v24, i);
      }

      else
      {
        if (v24 >= *(v36 + 16))
        {
          goto LABEL_44;
        }

        v25 = *(i + 8 * v24 + 32);
      }

      v26 = v25;
      a2 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = [v25 semanticIdentifier];
      v28 = [v27 stringValue];

      v29 = sub_1D166FA04();
      v31 = v30;

      v38[0] = v29;
      v38[1] = v31;
      MEMORY[0x1EEE9AC00](v32);
      v35[2] = v38;
      LOBYTE(v29) = sub_1D15FE978(sub_1D1643EB4, v35, v2);

      if (v29)
      {
        sub_1D1670374();
        v33 = *(v39 + 16);
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v24;
      if (a2 == v23)
      {
        goto LABEL_55;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    if (i < 0)
    {
      v2 = i;
    }

    else
    {
      v2 = i & 0xFFFFFFFFFFFFFF8;
    }

    if (!sub_1D1670224())
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = sub_1D1670224();
    if (v5)
    {
      goto LABEL_3;
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v38[0] = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      goto LABEL_53;
    }
  }

LABEL_55:

  return v39;
}

uint64_t sub_1D16414D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D161E668(a3, v24 - v10);
  v12 = sub_1D166FD84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D161DF10(v11);
  }

  else
  {
    sub_1D166FD74();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D166FD14();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D166FA94() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D161DF10(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D161DF10(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t Publisher<>.unavailableMedicationsSchedulesPublisher.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1D16419FC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1D166F634();
  v15 = sub_1D166FD84();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(v5 + 16))(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  (*(v5 + 32))(&v17[v16], v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *&v17[(v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;

  sub_1D1632CAC(0, 0, v10, &unk_1D1674578, v17);

  v20[1] = v14;
  sub_1D16404D8(&qword_1EC63DFC0, sub_1D16419FC);
  v18 = sub_1D166F754();

  return v18;
}

void sub_1D16419FC()
{
  if (!qword_1EC63DFA8)
  {
    sub_1D1641A94(255, &qword_1EC63DFB0, sub_1D1641AF8, MEMORY[0x1E69E6720]);
    v0 = sub_1D166F644();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFA8);
    }
  }
}

void sub_1D1641A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1641AF8()
{
  if (!qword_1EC63DFB8)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D16402DC(255, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DFB8);
    }
  }
}

uint64_t sub_1D1641BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1D166F5F4();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = sub_1D166F5E4();
  v7[18] = v11;
  v12 = *(v11 - 8);
  v7[19] = v12;
  v13 = *(v12 + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1641CF8, 0, 0);
}

uint64_t sub_1D1641CF8()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  MEMORY[0x1D388C9A0](v0[13], v0[14]);
  sub_1D166F5D4();
  (*(v3 + 8))(v2, v4);
  v6 = v0[18];
  v7 = *(MEMORY[0x1E69E85D8] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  WitnessTable = swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_1D1641E18;
  v10 = v0[20];
  v11 = v0[18];

  return MEMORY[0x1EEE6D8E0](v0 + 2, 0, 0, v11, WitnessTable);
}

uint64_t sub_1D1641E18()
{
  v2 = *(*v1 + 168);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1641F28, 0, 0);
  }

  return result;
}

uint64_t sub_1D1641F28()
{
  v2 = v0 + 2;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    if (v1 >> 62)
    {
      goto LABEL_27;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if (!v3)
        {
          v13 = v0[19];
          v14 = v0[20];
          v15 = v0[18];
          v16 = v0[12];

          v2[2] = 0;
          v2[3] = 0;
          sub_1D166F624();
          (*(v13 + 8))(v14, v15);
          goto LABEL_22;
        }

        v0 = (v3 & 0xFFFFFFFFFFFFFF8);
        if (v3 >> 62)
        {
          if (!sub_1D1670224())
          {
LABEL_32:

            v0 = v29;
            goto LABEL_33;
          }

          v28 = v1;
          v10 = MEMORY[0x1E69E7CC0];
          v2[8] = MEMORY[0x1E69E7CC0];
          v4 = sub_1D1670224();
          if (!v4)
          {
LABEL_20:
            v0 = v29;
            v11 = v29[12];

            v12 = sub_1D16410C4(v10, v28);

            v29[6] = v12;
            v29[7] = v10;
            sub_1D166F624();

            goto LABEL_34;
          }
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v4)
          {
            goto LABEL_32;
          }

          v28 = v1;
          v2[8] = MEMORY[0x1E69E7CC0];
        }

        v1 = 0;
        v5 = v3 & 0xC000000000000001;
        while (1)
        {
          if (v5)
          {
            v6 = MEMORY[0x1D388D4D0](v1, v3);
          }

          else
          {
            if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v6 = *(v3 + 8 * v1 + 32);
          }

          v7 = v6;
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if ([v6 isUnavailable])
          {
            sub_1D1670374();
            v9 = *(v2[8] + 16);
            sub_1D16703B4();
            sub_1D16703C4();
            sub_1D1670384();
            v5 = v3 & 0xC000000000000001;
          }

          else
          {
          }

          ++v1;
          if (v8 == v4)
          {
            v10 = v2[8];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      while (sub_1D1670224());
    }

LABEL_33:
    v21 = v0[12];
    v2[6] = 0;
    v2[7] = 0;
    sub_1D166F624();
LABEL_34:
    v22 = v0[18];
    v23 = *(MEMORY[0x1E69E85D8] + 4);
    v24 = swift_task_alloc();
    v0[21] = v24;
    WitnessTable = swift_getWitnessTable();
    *v24 = v0;
    v24[1] = sub_1D1641E18;
    v26 = v0[20];
    v27 = v0[18];

    return MEMORY[0x1EEE6D8E0](v2, 0, 0, v27, WitnessTable);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_22:
    v17 = v0[20];
    v18 = v0[17];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1D16422A4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D1641BC0(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t Publisher<>.remoteScheduleUnavailableAlertDeterminerPublisher(medicationControl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a1;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  sub_1D164267C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D166F634();
  v16 = sub_1D166FD84();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  (*(v5 + 16))(v7, v3, a2);
  v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v26;
  *(v19 + 4) = a2;
  *(v19 + 5) = v20;
  (*(v5 + 32))(&v19[v17], v7, a2);
  *&v19[v18] = v15;
  v21 = v27;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

  v22 = v21;
  sub_1D1632CAC(0, 0, v11, &unk_1D1674588, v19);

  v28 = v15;
  sub_1D16404D8(&qword_1EC63DFD8, sub_1D164267C);
  v23 = sub_1D166F754();

  return v23;
}

void sub_1D164267C()
{
  if (!qword_1EC63DFC8)
  {
    sub_1D16426E4();
    v0 = sub_1D166F644();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFC8);
    }
  }
}

void sub_1D16426E4()
{
  if (!qword_1EC63DFD0)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFD0);
    }
  }
}

uint64_t sub_1D1642734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[107] = a8;
  v8[106] = a7;
  v8[105] = a6;
  v8[104] = a5;
  v8[103] = a4;
  v9 = sub_1D166F5F4();
  v8[108] = v9;
  v10 = *(v9 - 8);
  v8[109] = v10;
  v11 = *(v10 + 64) + 15;
  v8[110] = swift_task_alloc();
  v12 = sub_1D166F5E4();
  v8[111] = v12;
  v13 = *(v12 - 8);
  v8[112] = v13;
  v14 = *(v13 + 64) + 15;
  v8[113] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1642878, 0, 0);
}

uint64_t sub_1D1642878()
{
  v1 = v0[113];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[103];
  MEMORY[0x1D388C9A0](v0[106], v0[107]);
  sub_1D166F5D4();
  (*(v3 + 8))(v2, v4);
  v6 = v0[111];
  v7 = *(MEMORY[0x1E69E85D8] + 4);
  v8 = swift_task_alloc();
  v0[114] = v8;
  WitnessTable = swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_1D16429A0;
  v10 = v0[113];
  v11 = v0[111];

  return MEMORY[0x1EEE6D8E0](v0 + 99, 0, 0, v11, WitnessTable);
}

uint64_t sub_1D16429A0()
{
  v2 = *(*v1 + 912);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1642AB0, 0, 0);
  }

  return result;
}

uint64_t sub_1D1642AB0()
{
  v1 = *(v0 + 792);
  *(v0 + 920) = v1;
  v2 = *(v0 + 800);
  *(v0 + 928) = v2;
  if (v1)
  {
    if (v1 >> 62)
    {
      if (sub_1D1670224())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (!v2)
      {
LABEL_7:
        v3 = *(v0 + 840);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 808;
        *(v0 + 24) = sub_1D1642DB8;
        v4 = swift_continuation_init();
        sub_1D16438B8();
        *(v0 + 680) = v5;
        *(v0 + 656) = v4;
        *(v0 + 624) = MEMORY[0x1E69E9820];
        *(v0 + 632) = 1107296256;
        *(v0 + 640) = sub_1D1643948;
        *(v0 + 648) = &block_descriptor_9;

        [v3 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      if (v2 >> 62)
      {
        if (sub_1D1670224())
        {
          goto LABEL_7;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 832);
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    sub_1D166F624();
    sub_1D1643A9C(v0 + 528);
    v11 = *(v0 + 888);
    v12 = *(MEMORY[0x1E69E85D8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 912) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_1D16429A0;
    v15 = *(v0 + 904);
    v16 = *(v0 + 888);

    return MEMORY[0x1EEE6D8E0](v0 + 792, 0, 0, v16, WitnessTable);
  }

  (*(*(v0 + 896) + 8))(*(v0 + 904), *(v0 + 888));
  v6 = *(v0 + 904);
  v7 = *(v0 + 880);
  v8 = *(v0 + 832);
  *(v0 + 960) = 1;
  sub_1D166F614();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1642DB8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 936) = v3;
  if (v3)
  {
    v4 = *(v1 + 928);
    v5 = *(v1 + 920);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v6 = sub_1D164354C;
  }

  else
  {
    v6 = sub_1D1642EE4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1642EE4()
{
  v1 = v0[105];
  v0[118] = v0[101];
  v0[10] = v0;
  v0[15] = v0 + 102;
  v0[11] = sub_1D164300C;
  v2 = swift_continuation_init();
  sub_1D1643AF8();
  v0[93] = v3;
  v0[90] = v2;
  v0[86] = MEMORY[0x1E69E9820];
  v0[87] = 1107296256;
  v0[88] = sub_1D1643B94;
  v0[89] = &block_descriptor_15;
  [v1 accountDevicesInfoTriggeringUpdate:1 completion:v0 + 86];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D164300C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 952) = v3;
  if (v3)
  {
    v4 = v1[118];
    v5 = v1[116];
    v6 = v1[115];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v7 = sub_1D1643660;
  }

  else
  {
    v7 = sub_1D1643144;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1643144()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 944);
  if (*(v0 + 928))
  {
    if (v2)
    {
      if (v1)
      {
        v3 = [objc_opt_self() sharedInstance];
        if (v3)
        {
          v8 = v3;
          v9 = *(v0 + 928);
          v10 = *(v0 + 920);

          v11 = [v8 getActivePairedDevice];

          if (v11)
          {
            v12 = [objc_allocWithZone(MEMORY[0x1E69A3B20]) initWithLocalPairedDevice_];
          }

          else
          {
            v12 = 0;
          }

          v27 = *(v0 + 928);
          v28 = *(v0 + 920);
          v29 = *(v0 + 840);
          v30 = *(v0 + 832);
          *(v0 + 776) = sub_1D15EE5A8(0, &unk_1EDEC9E28, 0x1E69A3AC0);
          *(v0 + 784) = &protocol witness table for HKMedicationControl;
          *(v0 + 752) = v29;
          *(v0 + 352) = v28;
          *(v0 + 360) = v27;
          *(v0 + 368) = v2;
          *(v0 + 376) = v1;
          *(v0 + 384) = v12;
          sub_1D160BF60(v0 + 752, v0 + 392);
          v31 = v12;

          v32 = v29;

          v33 = v1;
          v34 = sub_1D160ECC0(v28, v27);

          v35 = sub_1D160EF5C(v34, v33);
          v36 = sub_1D160F080(v35, v33);

          v37 = [v33 localDeviceInfo];
          v38 = sub_1D160F214(v36, v2, v37, v12);

          v39 = sub_1D160F4DC(v34, v2, v33);

          __swift_destroy_boxed_opaque_existential_0((v0 + 752));
          *(v0 + 336) = v38;
          *(v0 + 344) = v39;
          sub_1D1643C64(v0 + 336, v0 + 432);
          sub_1D166F624();
          sub_1D1643A9C(v0 + 432);
          sub_1D1643CC0(v0 + 336);
          v40 = *(v0 + 888);
          v41 = *(MEMORY[0x1E69E85D8] + 4);
          v42 = swift_task_alloc();
          *(v0 + 912) = v42;
          WitnessTable = swift_getWitnessTable();
          *v42 = v0;
          v42[1] = sub_1D16429A0;
          v43 = *(v0 + 904);
          v6 = *(v0 + 888);
          v3 = (v0 + 792);
          v4 = 0;
          v5 = 0;
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x1EEE6D8E0](v3, v4, v5, v6, WitnessTable);
      }

      v16 = *(v0 + 920);
      v17 = *(v0 + 944);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v14 = *(v0 + 920);
      v15 = *(v0 + 928);
      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = *(v0 + 920);
    swift_bridgeObjectRelease_n();
  }

  v18 = *(v0 + 904);
  v19 = *(v0 + 896);
  v20 = *(v0 + 888);
  v21 = *(v0 + 832);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 240) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v0 + 240);
  (*(v19 + 8))(v18, v20);
  v22 = *(v0 + 904);
  v23 = *(v0 + 880);
  v24 = *(v0 + 832);
  *(v0 + 960) = 1;
  sub_1D166F614();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D164354C()
{
  v1 = *(v0 + 936);
  swift_willThrow();
  v2 = *(v0 + 936);
  v3 = *(v0 + 832);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 144) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v0 + 144);
  v4 = *(v0 + 888);
  v5 = *(MEMORY[0x1E69E85D8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 912) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_1D16429A0;
  v8 = *(v0 + 904);
  v9 = *(v0 + 888);

  return MEMORY[0x1EEE6D8E0](v0 + 792, 0, 0, v9, WitnessTable);
}

uint64_t sub_1D1643660()
{
  v1 = *(v0 + 952);
  swift_willThrow();
  v2 = *(v0 + 952);
  v3 = *(v0 + 832);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 144) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v0 + 144);
  v4 = *(v0 + 888);
  v5 = *(MEMORY[0x1E69E85D8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 912) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_1D16429A0;
  v8 = *(v0 + 904);
  v9 = *(v0 + 888);

  return MEMORY[0x1EEE6D8E0](v0 + 792, 0, 0, v9, WitnessTable);
}

uint64_t sub_1D1643774(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D1600968;

  return sub_1D1642734(a1, v8, v9, v1 + v6, v10, v11, v5, v4);
}

void sub_1D16438B8()
{
  if (!qword_1EC63DFE0)
  {
    sub_1D1643E44(255, &qword_1EC63DFE8, &qword_1EC63DF68, &qword_1EC63DB70, 0x1E69A3A90);
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFE0);
    }
  }
}

uint64_t sub_1D1643970(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), unint64_t *a5, uint64_t *a6)
{
  a4(0);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v12 = 0;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v13 = a3;
    v14 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_1D15EE5A8(0, a5, a6);
      v12 = sub_1D166FC54();
    }

    **(*(v11 + 64) + 40) = v12;

    return MEMORY[0x1EEE6DEE0](v11);
  }
}

uint64_t sub_1D1643A9C(uint64_t a1)
{
  sub_1D16426E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1643AF8()
{
  if (!qword_1EC63DFF0)
  {
    sub_1D16402DC(255, &qword_1EC63DFF8, &qword_1EC63E000, 0x1E69A3B18, MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFF0);
    }
  }
}

uint64_t sub_1D1643B94(uint64_t a1, void *a2, void *a3)
{
  sub_1D1643D14();
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v6 + 64) + 40) = a2;
    v10 = a2;

    return MEMORY[0x1EEE6DEE0](v6);
  }
}

unint64_t sub_1D1643D14()
{
  result = qword_1EC63E008;
  if (!qword_1EC63E008)
  {
    sub_1D1643D88();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63E008);
  }

  return result;
}

void sub_1D1643D88()
{
  if (!qword_1EC63E010)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D1643E44(255, &qword_1EDEC9FD0, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E010);
    }
  }
}

void sub_1D1643E44(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1D16402DC(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1D16700E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1643FD0(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D1640770(a1, v5, v6, v7, v8, v9, v1 + v4, v3);
}

void sub_1D16440EC()
{
  if (!qword_1EC63DE68)
  {
    sub_1D1643E44(255, &qword_1EDEC9FD0, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0);
    sub_1D15F9218();
    v0 = sub_1D166FDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DE68);
    }
  }
}

unint64_t sub_1D164417C()
{
  result = qword_1EC63E018;
  if (!qword_1EC63E018)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63E018);
  }

  return result;
}

uint64_t sub_1D164424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D1609034(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1D16061DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1D1648690(&qword_1EDEC9D60, &qword_1EDEC9FA0, 0x1E696C2F0);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1D1647FD8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void *sub_1D164435C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  type metadata accessor for MedicationDetailProvider();
  swift_allocObject();
  result = sub_1D1644414(v0);
  qword_1EDECA560 = result;
  return result;
}

uint64_t static MedicationDetailProvider.shared.getter()
{
  if (qword_1EDECA558 != -1)
  {
    swift_once();
  }
}

void *sub_1D1644414(void *a1)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1D166FFB4();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D166FF94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D166F814();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1E69E7CC8];
  v1[4] = 0;
  v1[5] = v11;
  v12 = MEMORY[0x1E69E7CD0];
  v1[6] = v11;
  v1[7] = v12;
  sub_1D164CCB8();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v1[8] = v13;
  v14 = sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v21[1] = "cationDetailObserver_>8";
  v21[2] = v14;
  sub_1D166F804();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&unk_1EDEC9E70, MEMORY[0x1E69E8030]);
  v15 = MEMORY[0x1E69E8030];
  sub_1D164CD1C(0, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FE0, &qword_1EDEC9FE8, v15);
  sub_1D1670194();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  v1[9] = sub_1D166FFE4();
  v16 = v23;
  v1[2] = v23;
  sub_1D166F474();
  v17 = v16;
  v1[3] = sub_1D166F464();
  v24 = sub_1D164710C();
  sub_1D164CD88();
  sub_1D164C960(&qword_1EDECA088, sub_1D164CD88);

  v18 = sub_1D166F7B4();

  v19 = v2[4];
  v2[4] = v18;

  return v2;
}

void *sub_1D16447A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {

    v7 = sub_1D16061DC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

void sub_1D164484C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D166F844();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1D166F864();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = sub_1D16447A4(a1, a2);
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      v14 = *(v2 + 48);
      if (*(v14 + 16))
      {
        v15 = *(v2 + 48);

        v16 = sub_1D16061DC(a1, a2);
        if (v17)
        {
          v18 = *(*(v14 + 56) + 8 * v16);

          v19 = swift_allocObject();
          v19[2] = v13;
          v19[3] = a1;
          v19[4] = a2;
          aBlock[4] = sub_1D164CC4C;
          aBlock[5] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D1644AA0;
          aBlock[3] = &block_descriptor_81;
          v20 = _Block_copy(aBlock);
          v21 = v13;

          [v18 notifyObservers_];
          _Block_release(v20);

          v13 = v18;
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D1644AA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1644B00(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1D166F7E4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = sub_1D166F814();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB10, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3940]);
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB18, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3930]);
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB08, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3948]);
  v3[27] = v16;
  v17 = *(v16 - 8);
  v3[28] = v17;
  v18 = *(v17 + 64) + 15;
  v3[29] = swift_task_alloc();
  v19 = sub_1D166F844();
  v3[30] = v19;
  v20 = *(v19 - 8);
  v3[31] = v20;
  v21 = *(v20 + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1644E0C, 0, 0);
}

uint64_t sub_1D1644E0C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = *(v0[14] + 72);
  v0[33] = v4;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v5 = v4;
  LOBYTE(v4) = sub_1D166F864();
  v6 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v6, v7, v8);
  }

  v9 = v0[14];
  v10 = sub_1D16447A4(v0[12], v0[13]);
  if (!v10)
  {
    v20 = v0[29];
    v44 = v0[27];
    v45 = v0[26];
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[21];
    v24 = v0[13];
    v43 = v0[14];
    v25 = v0[12];
    v26 = objc_opt_self();
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    v27 = [swift_getObjCClassFromMetadata() _typeIdentifier];
    v28 = [v26 predicateForUserDomainConceptsWithTypeIdentifier_];
    v0[34] = v28;

    v29 = sub_1D166F9C4();
    v30 = [v26 predicateForUserDomainConceptsWithSemanticIdentifier_];
    v0[35] = v30;

    sub_1D15F2860();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D1672930;
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    sub_1D15EE5A8(0, &qword_1EDECB348, 0x1E696AE18);
    v32 = v28;
    v33 = v30;
    v34 = sub_1D166FC44();

    v35 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[36] = v35;

    sub_1D15EE5A8(0, &qword_1EDECB338, 0x1E696C530);
    v36 = v35;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D166F434();
    v0[8] = v37;
    v38 = *(v43 + 16);
    sub_1D166F424();
    sub_1D166F414();
    (*(v22 + 8))(v21, v23);
    v0[37] = v37;
    v39 = sub_1D1606278();
    v40 = *(MEMORY[0x1E69E85A8] + 4);
    v41 = swift_task_alloc();
    v0[38] = v41;
    *v41 = v0;
    v41[1] = sub_1D16451C8;
    v42 = v0[26];
    v7 = v0[24];
    v6 = (v0 + 9);
    v8 = v39;

    return MEMORY[0x1EEE6D8C8](v6, v7, v8);
  }

  v11 = v10;
  v12 = v0[32];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[20];
  v17 = v0[17];

  v18 = v0[1];

  return v18(v11);
}

uint64_t sub_1D16451C8()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1D1645844;
  }

  else
  {
    v3 = sub_1D16452DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1645300()
{
  v1 = v0[40];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1D388CE10]();
    if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D166FC84();
    }

    sub_1D166FCC4();

    v0[37] = v0[8];
    v3 = sub_1D1606278();
    v4 = *(MEMORY[0x1E69E85A8] + 4);
    v5 = swift_task_alloc();
    v0[38] = v5;
    *v5 = v0;
    v5[1] = sub_1D16451C8;
    v6 = v0[26];
    v7 = v0[24];
    v8 = (v0 + 9);
    v9 = v3;

    return MEMORY[0x1EEE6D8C8](v8, v7, v9);
  }

  v10 = v0[37];
  (*(v0[25] + 8))(v0[26], v0[24]);
  if (!(v10 >> 62))
  {
    v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_18:
    v14 = v0[36];
    v29 = v0[37];
    v15 = v0[35];

    goto LABEL_19;
  }

  if (v0[37] < 0)
  {
    v28 = v0[37];
  }

  v8 = sub_1D1670224();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1D388D4D0](0, v0[37]);
    v41 = v0[37];
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v8, v7, v9);
    }

    v11 = *(v0[37] + 32);
  }

  v12 = [v11 userConcept];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v15 = v0[35];
  v14 = v0[36];
  if (!v13)
  {

LABEL_19:
    v31 = v0[28];
    v30 = v0[29];
    v32 = v0[27];

    (*(v31 + 8))(v30, v32);
    v16 = 0;
    goto LABEL_20;
  }

  v16 = v13;
  v48 = v0[34];
  v46 = v0[33];
  v53 = v0[29];
  v51 = v0[28];
  v52 = v0[27];
  v17 = v0[20];
  v49 = v0[19];
  v50 = v0[18];
  v47 = v0[16];
  v42 = v0[17];
  v43 = v0[15];
  v44 = v0[35];
  v45 = v11;
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v16;
  v22[4] = v20;
  v22[5] = v19;
  v0[6] = sub_1D164CC40;
  v0[7] = v22;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D1618700;
  v0[5] = &block_descriptor_75;
  v23 = _Block_copy(v0 + 2);

  v24 = v12;

  sub_1D166F804();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  v25 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v25);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v17, v42, v23);

  _Block_release(v23);
  (*(v47 + 8))(v42, v43);
  (*(v49 + 8))(v17, v50);
  (*(v51 + 8))(v53, v52);
  v26 = v0[7];

LABEL_20:
  v33 = v0[32];
  v34 = v0[29];
  v35 = v0[26];
  v36 = v0[23];
  v37 = v0[20];
  v38 = v0[17];

  v39 = v0[1];

  return v39(v16);
}

uint64_t sub_1D1645844()
{
  v1 = v0[37];
  v0[10] = v0[39];
  sub_1D15F9218();
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D16458D8, 0, 0);
}

uint64_t sub_1D16458D8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);

  v10 = *(v0 + 8);
  v11 = *(v0 + 312);

  return v10();
}

uint64_t sub_1D16459EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 64);
    v9 = result;
    os_unfair_lock_lock(v8 + 4);
    swift_beginAccess();

    v10 = a2;
    v11 = *(v9 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v9 + 40);
    *(v9 + 40) = 0x8000000000000000;
    sub_1D16088F0(v10, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v9 + 40) = v13;
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
  }

  return result;
}

uint64_t sub_1D1645ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1D166F7E4();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D166F814();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3[9];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v6;
  aBlock[4] = sub_1D164CBB8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);

  sub_1D166F804();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v18);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v14, v10, v17);
  _Block_release(v17);
  (*(v22 + 8))(v10, v7);
  (*(v11 + 8))(v14, v21);
}

void sub_1D1645E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 56);

    v10 = sub_1D1646278(a2, a3, v9);

    if (v10)
    {
    }

    else
    {
      swift_beginAccess();

      sub_1D1648E60(&v34, a2, a3);
      swift_endAccess();

      v11 = objc_opt_self();
      sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
      v12 = [swift_getObjCClassFromMetadata() _typeIdentifier];
      v13 = [v11 predicateForUserDomainConceptsWithTypeIdentifier_];

      v14 = sub_1D166F9C4();
      v15 = [v11 predicateForUserDomainConceptsWithSemanticIdentifier_];

      sub_1D15F2860();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D1672930;
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      sub_1D15EE5A8(0, &qword_1EDECB348, 0x1E696AE18);
      v32 = v13;
      v31 = v15;
      v17 = sub_1D166FC44();

      v18 = [objc_opt_self() andPredicateWithSubpredicates_];

      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D16721C0;
      v20 = *MEMORY[0x1E696BE80];
      sub_1D166FA04();
      v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v22 = v18;
      v23 = sub_1D166F9C4();

      v24 = [v21 initWithKey:v23 ascending:1];

      *(v19 + 32) = v24;
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = a2;
      v26[4] = a3;
      v26[5] = a4;
      v27 = objc_allocWithZone(MEMORY[0x1E696C548]);
      sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);

      v28 = sub_1D166FC44();

      aBlock[4] = sub_1D164CC04;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1647D58;
      aBlock[3] = &block_descriptor_59;
      v29 = _Block_copy(aBlock);
      v30 = [v27 initWithPredicate:v22 anchor:0 limit:1 sortDescriptors:v28 resultsHandler:v29];

      _Block_release(v29);

      [*(v8 + 16) executeQuery_];
    }
  }
}

uint64_t sub_1D1646278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D16706A4();
  sub_1D166FAE4();
  v7 = sub_1D16706E4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D16705D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1646370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v12 = sub_1D166F7E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D166F814();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v17;
    v34 = v18;
    v32 = *(result + 72);

    v23 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v24 = swift_allocObject();
    v25 = v35;
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = a8;
    v24[5] = a2;
    v24[6] = a5;
    v24[7] = a9;
    aBlock[4] = sub_1D164CC30;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1618700;
    aBlock[3] = &block_descriptor_66;
    v26 = _Block_copy(aBlock);

    v27 = a2;
    v28 = a5;
    sub_1D166F804();
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
    v29 = MEMORY[0x1E69E7F60];
    sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v29);
    sub_1D1670194();
    v30 = v32;
    MEMORY[0x1D388D1B0](0, v21, v16, v26);
    _Block_release(v26);

    (*(v13 + 8))(v16, v12);
    (*(v34 + 8))(v21, v33);
  }

  return result;
}

void sub_1D1646714(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1D164A5D0(a2, a3);
    swift_endAccess();

    if (a4 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
    {
      v12 = v11;
      v13 = *(v10 + 64);
      v14 = a4;
      os_unfair_lock_lock(v13 + 4);
      swift_beginAccess();
      v15 = v14;

      v16 = *(v10 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v10 + 40);
      *(v10 + 40) = 0x8000000000000000;
      sub_1D16088F0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

      *(v10 + 40) = v36;
      swift_endAccess();
      os_unfair_lock_unlock(v13 + 4);
      sub_1D164484C(a2, a3);
    }

    else
    {
      if (qword_1EDECB358 != -1)
      {
        swift_once();
      }

      v18 = sub_1D166F4E4();
      __swift_project_value_buffer(v18, qword_1EDECB360);

      v19 = a5;
      v20 = sub_1D166F4D4();
      v21 = sub_1D166FF44();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        *v22 = 136315650;
        v24 = sub_1D1670754();
        v26 = sub_1D15F7A30(v24, v25, &v36);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        v27 = sub_1D166F9C4();
        v28 = HKSensitiveLogItem();

        sub_1D1670164();
        swift_unknownObjectRelease();
        v29 = sub_1D166FA84();
        v31 = sub_1D15F7A30(v29, v30, &v36);

        *(v22 + 14) = v31;
        *(v22 + 22) = 2080;
        v32 = a5;
        sub_1D164CD1C(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
        v33 = sub_1D166FA74();
        v35 = sub_1D15F7A30(v33, v34, &v36);

        *(v22 + 24) = v35;
        _os_log_impl(&dword_1D15E6000, v20, v21, "[%s] Could not fetch medication detail for identifier: %s error: %s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388E250](v23, -1, -1);
        MEMORY[0x1D388E250](v22, -1, -1);
      }
    }
  }
}

uint64_t sub_1D1646AC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    if (!*(*(v8 + 48) + 16) || (v9 = *(v8 + 48), , sub_1D16061DC(a2, a3), v11 = v10, , (v11 & 1) == 0))
    {
      sub_1D15EE5A8(0, &unk_1EDEC9D70, 0x1E69E9BF8);

      v12 = sub_1D16700D4();
      v13 = objc_allocWithZone(MEMORY[0x1E696C2F0]);
      v14 = sub_1D166F9C4();
      v15 = [v13 initWithName:v14 loggingCategory:v12];

      swift_beginAccess();
      sub_1D164424C(v15, a2, a3);
      swift_endAccess();
    }

    v16 = *(v8 + 48);
    if (*(v16 + 16))
    {
      v17 = *(v8 + 48);

      v18 = sub_1D16061DC(a2, a3);
      if (v19)
      {
        v20 = *(*(v16 + 56) + 8 * v18);

        [v20 registerObserver_];
      }

      else
      {
      }
    }

    v21 = sub_1D16447A4(a2, a3);
    if (v21)
    {
      v22 = v21;
      v23 = sub_1D166F9C4();
      [a4 medicationDetailDidUpdate:v22 for:v23];
    }

    else
    {
      sub_1D1645ADC(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D1646CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D166F7E4();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D166F814();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 72);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_1D164C6F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_10;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D166F804();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v19);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1D164701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + 48);
    if (!*(v9 + 16))
    {
    }

    v10 = *(v8 + 48);

    v11 = sub_1D16061DC(a2, a3);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);

      [v13 unregisterObserver_];
    }
  }

  return result;
}

uint64_t sub_1D164710C()
{
  sub_1D164CD1C(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  sub_1D164C860();
  v23 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D164C9EC();
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 24);
  v27 = sub_1D166F454();
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v16 = sub_1D166FFC4();
  v26 = v16;
  v17 = sub_1D166FFA4();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1D1609C44();
  sub_1D164C960(&qword_1EDECA078, sub_1D1609C44);
  sub_1D164C9A8(&qword_1EDEC9E60, &qword_1EDEC9E58, 0x1E69E9610);
  sub_1D166F794();
  sub_1D164CB2C(v4);

  sub_1D164CAC4(0, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
  sub_1D164C960(&qword_1EDECA098, sub_1D164C860);
  v18 = v23;
  sub_1D166F784();
  (*(v6 + 8))(v9, v18);
  sub_1D164C960(&qword_1EDECA0A8, sub_1D164C9EC);
  v19 = v24;
  v20 = sub_1D166F754();
  (*(v25 + 8))(v14, v19);
  return v20;
}

uint64_t sub_1D16474F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D166F444();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x1E69DF028])
  {
    *a2 = MEMORY[0x1E69E7CC0];
    return (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 96))(v8, v4);
  v9 = *v8;
  v19 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
LABEL_21:
    v10 = sub_1D1670224();
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        v13 = v11;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1D388D4D0](v13, v9);
          }

          else
          {
            if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v14 = *(v9 + 8 * v13 + 32);
          }

          v15 = v14;
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v13;
          if (v11 == v10)
          {
            goto LABEL_23;
          }
        }

        MEMORY[0x1D388CE10]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D166FC84();
        }

        sub_1D166FCC4();
        v12 = v19;
      }

      while (v11 != v10);
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_23:

  *a2 = v12;
  return result;
}

uint64_t sub_1D1647778(unint64_t *a1, uint64_t a2)
{
  v32 = a2;
  v30 = sub_1D166F7E4();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D166F814();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 >> 62)
  {
    result = sub_1D1670224();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = *(v32 + 72);
    v27 = v11 & 0xC000000000000001;
    v28 = v14;
    v25 = (v3 + 8);
    v26 = v35;
    v24 = (v7 + 8);
    v29 = v11;
    v23 = result;
    do
    {
      if (v27)
      {
        v15 = MEMORY[0x1D388D4D0](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      ++v13;
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      v35[2] = sub_1D164CE1C;
      v35[3] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v35[0] = sub_1D1618700;
      v35[1] = &block_descriptor_95;
      v19 = _Block_copy(aBlock);
      v20 = v16;

      sub_1D166F804();
      v33 = MEMORY[0x1E69E7CC0];
      sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60]);
      v21 = MEMORY[0x1E69E7F60];
      sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v21);
      v22 = v30;
      sub_1D1670194();
      MEMORY[0x1D388D1B0](0, v10, v6, v19);
      _Block_release(v19);

      (*v25)(v6, v22);
      (*v24)(v10, v31);

      result = v23;
      v11 = v29;
    }

    while (v23 != v13);
  }

  return result;
}

uint64_t sub_1D1647B50(void *a1)
{
  v2 = [a1 semanticIdentifier];
  v3 = [v2 stringValue];

  v4 = sub_1D166FA04();
  v6 = v5;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 64);
    v9 = Strong;
    os_unfair_lock_lock(v8 + 4);
    swift_beginAccess();

    v10 = a1;
    v11 = *(v9 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 40);
    *(v9 + 40) = 0x8000000000000000;
    sub_1D16088F0(v10, v4, v6, isUniquelyReferenced_nonNull_native);

    *(v9 + 40) = v14;
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D164484C(v4, v6);
  }
}

uint64_t MedicationDetailProvider.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return v0;
}

uint64_t MedicationDetailProvider.__deallocating_deinit()
{
  MedicationDetailProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1D1647D58(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v16 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v12(v16, a3, a4, a5, a6);
}

uint64_t sub_1D1647E28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D16701B4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      v14 = sub_1D16706E4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1647FD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D16701B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      v13 = sub_1D16706E4();

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

id sub_1D16481C0()
{
  v1 = v0;
  sub_1D16099DC();
  v2 = *v0;
  v3 = sub_1D1670464();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

void *sub_1D1648340()
{
  v1 = v0;
  sub_1D1609778(0, &qword_1EC63DB38);
  v2 = *v0;
  v3 = sub_1D1670464();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1D16484C8()
{
  v1 = v0;
  sub_1D1609778(0, &qword_1EC63DAF8);
  v2 = *v0;
  v3 = sub_1D1670464();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D15F928C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D15FA184(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1D1648690(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  sub_1D16091FC(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1D1670464();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1D16487FC()
{
  v1 = v0;
  sub_1D1609304();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1609388();
  v5 = *v0;
  v6 = sub_1D1670464();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v32, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = (*(v5 + 48) + 32 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_1D1609448(*(v5 + 56) + v28, v33);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        sub_1D15F323C(v27, *(v29 + 56) + v28);

        result = sub_1D15F301C(v25, v26);
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    v7 = v35;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        goto LABEL_21;
      }

      v19 = *(v32 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_1D1648A40()
{
  v1 = v0;
  sub_1D1609264();
  v2 = *v0;
  v3 = sub_1D1670464();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1D1648B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1D166F974();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8]);
      v23 = sub_1D166F9B4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D164BB04(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D1648E60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D16706A4();
  sub_1D166FAE4();
  v9 = sub_1D16706E4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D16705D4() & 1) != 0)
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

    sub_1D164BDD0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D1648FF8(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1D1670234();

    if (v17)
    {

      sub_1D15EE5A8(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1D1670224();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1D1649554(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1D1649D10(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_1D164A27C(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1D15EE5A8(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1D1670094();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1D16700A4();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1D164BF50(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D1649274(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D166F2C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0]);
  v36 = a2;
  v13 = sub_1D166F974();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D164C960(&qword_1EC63DA80, MEMORY[0x1E6969AD0]);
      v23 = sub_1D166F9B4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D164C0F8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D1649554(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_1D164CE24(0, a3, a4, a5, a6);
    v10 = sub_1D1670294();
    v24 = v10;
    sub_1D16701E4();
    if (sub_1D1670254())
    {
      sub_1D15EE5A8(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1D1649D10(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1D1670094();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1D1670254());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D164976C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D166F1A4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1D164CEC4();
  result = sub_1D1670284();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
      result = sub_1D166F974();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D1649ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1D15FA0E8();
  result = sub_1D1670284();
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
      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
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

uint64_t sub_1D1649D10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1D164CE24(0, a2, a3, a4, a5);
  result = sub_1D1670284();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_1D1670094();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_1D1649F2C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D166F2C4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1D15FA1E4();
  result = sub_1D1670284();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0]);
      result = sub_1D166F974();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_1D164A27C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D1670094();
  v5 = -1 << *(a2 + 32);
  result = sub_1D16701C4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D164A300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1D166F974();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8]);
      v22 = sub_1D166F9B4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D164A9B0(MEMORY[0x1E69695A8], sub_1D164CEC4);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1D164B638(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1D164A5D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D16706A4();
  sub_1D166FAE4();
  v7 = sub_1D16706E4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D16705D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D164A70C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1D164B940(v9);
  *v2 = v20;
  return v13;
}

void *sub_1D164A70C()
{
  v1 = v0;
  sub_1D15FA0E8();
  v2 = *v0;
  v3 = sub_1D1670274();
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

id sub_1D164A85C(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D164CE24(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D1670274();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1D164A9B0(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  a2(0);
  v10 = *v2;
  v11 = sub_1D1670274();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

uint64_t sub_1D164ABE4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D166F1A4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1D164CEC4();
  v10 = sub_1D1670284();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8]);
      result = sub_1D166F974();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D164AEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1D15FA0E8();
  result = sub_1D1670284();
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
      sub_1D16706A4();

      sub_1D166FAE4();
      result = sub_1D16706E4();
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

uint64_t sub_1D164B120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1D164CE24(0, a2, a3, a4, a5);
  result = sub_1D1670284();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_1D1670094();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

uint64_t sub_1D164B328(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D166F2C4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1D15FA1E4();
  v10 = sub_1D1670284();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0]);
      result = sub_1D166F974();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}