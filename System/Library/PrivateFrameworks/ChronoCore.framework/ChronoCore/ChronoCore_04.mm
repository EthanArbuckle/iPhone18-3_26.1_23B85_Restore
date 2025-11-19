uint64_t sub_224A8B6B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  os_unfair_lock_assert_owner(*(*(v1 + v2) + 16));
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v5)
  {
    v38 = nullsub_1;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_224C6F8A4;
    v37 = &block_descriptor_37;
    v6 = _Block_copy(&aBlock);
    v7 = v5;
    [v7 setStartHandler_];
    _Block_release(v6);
    v8 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), v8);
    (*(v9 + 24))(v7, v8, v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v10)
  {
    v38 = nullsub_1;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_224C6F8A4;
    v37 = &block_descriptor_34_0;
    v11 = _Block_copy(&aBlock);
    v12 = v10;
    [v12 setStartHandler_];
    _Block_release(v11);
    v13 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v14 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), v13);
    (*(v14 + 24))(v12, v13, v14);
  }

  v15 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    v32 = v3;
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v33 = (v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v20 = (v17 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v19; result = )
    {
      v23 = i;
LABEL_14:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(*(v16 + 48) + 16 * v25 + 8);
      v27 = *(*(v16 + 56) + 8 * v25);
      v38 = nullsub_1;
      v39 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_224C6F8A4;
      v37 = &block_descriptor_32;
      v28 = _Block_copy(&aBlock);

      v29 = v27;
      [v29 setStartHandler_];
      _Block_release(v28);
      v30 = v33[3];
      v31 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v30);
      (*(v31 + 24))(v29, v30, v31);
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        v3 = v32;
        goto LABEL_17;
      }

      v19 = *(v16 + 64 + 8 * v23);
      ++i;
      if (v19)
      {
        i = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    os_unfair_lock_unlock(*(v3 + 16));
  }

  return result;
}

uint64_t sub_224A8BA9C()
{
  v1 = v0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - v4;
  v69 = sub_224DAC268();
  v63 = *(v69 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v54 - v12;
  v13 = v0[29];
  result = sub_224DAC168();
  v64 = result;
  if (result)
  {
    v15 = v1[23];
    __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
    v16 = sub_224DABDB8();
    sub_224DAC6D8();

    if (v71)
    {
      v66 = v11;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v57 = sub_224DAE328();
      v58 = v17;
      result = __swift_destroy_boxed_opaque_existential_1(v70);
      v18 = 0;
      v19 = *(v64 + 64);
      v55 = v64 + 64;
      v20 = 1 << *(v64 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & v19;
      v23 = (v20 + 63) >> 6;
      v61 = v63 + 32;
      v62 = v63 + 16;
      v65 = (v63 + 8);
      v56 = (v2 + 8);
      v24 = v68;
      if ((v21 & v19) == 0)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v35 = v18;
LABEL_16:
          v39 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v40 = v39 | (v35 << 6);
          v42 = v63;
          v41 = v64;
          v43 = v67;
          v44 = v69;
          (*(v63 + 16))(v67, *(v64 + 48) + *(v63 + 72) * v40, v69);
          v45 = *(*(v41 + 56) + 8 * v40);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v47 = *(v46 + 48);
          v48 = *(v42 + 32);
          v38 = v66;
          v48(v66, v43, v44);
          *(v38 + v47) = v45;
          (*(*(v46 - 8) + 56))(v38, 0, 1, v46);
          v49 = v45;
          v37 = v35;
          v24 = v68;
LABEL_17:
          sub_224A44E4C(v38, v24, &qword_27D6F47F0, &unk_224DB7850);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v50 - 8) + 48))(v24, 1, v50) == 1)
          {
          }

          v51 = *(v24 + *(v50 + 48));
          sub_224DABE68();
          v52 = v71;
          if (!v71)
          {
            break;
          }

          v25 = __swift_project_boxed_opaque_existential_1(v70, v71);
          v26 = *(v52 - 8);
          v27 = *(v26 + 64);
          MEMORY[0x28223BE20](v25);
          v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v26 + 16))(v29);
          sub_224A3311C(v70, &unk_27D6F3CB0, &unk_224DB7860);
          v30 = sub_224DAEAC8();
          (*(v26 + 8))(v29, v52);
          v31 = v67;
          sub_224DABE58();
          v32 = sub_224DAC248();
          v33 = *v65;
          (*v65)(v31, v69);

          v34 = v59;
          sub_224DA9FF8();
          sub_224A8C164(v32, v34, v30);
          v24 = v68;

          (*v56)(v34, v60);
          result = v33(v24, v69);
          v18 = v37;
          if (!v22)
          {
            goto LABEL_9;
          }
        }

        sub_224A3311C(v70, &unk_27D6F3CB0, &unk_224DB7860);
        result = (*v65)(v24, v69);
        v18 = v37;
      }

      while (v22);
LABEL_9:
      if (v23 <= v18 + 1)
      {
        v36 = v18 + 1;
      }

      else
      {
        v36 = v23;
      }

      v37 = v36 - 1;
      v38 = v66;
      while (1)
      {
        v35 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v35 >= v23)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v53 - 8) + 56))(v38, 1, 1, v53);
          v22 = 0;
          goto LABEL_17;
        }

        v22 = *(v55 + 8 * v35);
        ++v18;
        if (v22)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {

      return sub_224A3311C(v70, &unk_27D6F4700, &unk_224DB3A10);
    }
  }

  return result;
}

void sub_224A8C164(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = sub_224DA9878();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v40 - v12;
  v45 = sub_224DAEA68();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  if (v17)
  {
    v40[0] = a1;
    v40[1] = a2;
    v49 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v18 = a3 + 32;
    v19 = (v14 + 48);
    v44 = (v6 + 8);
    v41 = (v14 + 8);
    v42 = (v14 + 32);
    v20 = v45;
    do
    {
      sub_224A3317C(v18, v47);
      __swift_project_boxed_opaque_existential_1(v47, v48);
      sub_224DAE788();
      if ((*v19)(v13, 1, v20) == 1)
      {
        sub_224A3311C(v13, &unk_27D6F50E8, &qword_224DBAE38);
        __swift_project_boxed_opaque_existential_1(v47, v48);
        sub_224DAE778();
        v21 = objc_allocWithZone(CHDProactiveEntry);
        v22 = sub_224DA9778();
        [v21 initWithDate_];

        (*v44)(v9, v46);
      }

      else
      {
        v24 = v43;
        (*v42)(v43, v13, v20);
        __swift_project_boxed_opaque_existential_1(v47, v48);
        sub_224DAE778();
        sub_224DAEA48();
        v26 = v25;
        sub_224DAEA58();
        v28 = v27;
        v29 = objc_allocWithZone(CHDProactiveEntry);
        v30 = sub_224DA9778();
        [v29 initWithDate:v30 score:v26 duration:v28];

        (*v44)(v9, v46);
        (*v41)(v24, v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
      sub_224DAF9B8();
      v23 = *(v49 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v18 += 40;
      --v17;
    }

    while (v17);
    a1 = v40[0];
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v31 = sub_224DAB258();
  __swift_project_value_buffer(v31, qword_281364DF0);
  v32 = a1;
  v33 = sub_224DAB228();
  v34 = sub_224DAF268();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    v37 = [v32 extensionIdentity];
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_224A2F000, v33, v34, "Forwarding timeline entries to proactive for widget with identifier: %{public}@", v35, 0xCu);
    sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224DA9FE8();
  v38 = sub_224DAEDE8();

  sub_224A8C6BC();
  v39 = sub_224DAEFF8();

  CHDForwardEntriesToProactive(v32, v38, v39);
}

unint64_t sub_224A8C6BC()
{
  result = qword_281350A98;
  if (!qword_281350A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A98);
  }

  return result;
}

id sub_224A8C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_224AFD000;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = [v5 createRefreshActivityWithWidgetParameters:a1 refreshHandler:v6];
  _Block_release(v6);

  return v7;
}

void CHDForwardEntriesToProactive(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = CHDCreateATXInfoTimelineEntries(v7);
  if ([v8 count])
  {
    v9 = MEMORY[0x277D86220];
    v10 = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], v5);
    v11 = v9;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2050;
      *&buf[14] = [v8 count];
      _os_signpost_emit_with_name_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v10, "ProactiveReporting", "Reporting Timeline Change to Proactive. <containingBundleID>=%{public}@, <entries.count>=%{public}lu", buf, 0x16u);
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v12 = getATXInfoTimelineDonationClientClass_softClass;
    v20 = getATXInfoTimelineDonationClientClass_softClass;
    if (!getATXInfoTimelineDonationClientClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getATXInfoTimelineDonationClientClass_block_invoke;
      v22 = &unk_27853F118;
      v23 = &v17;
      __getATXInfoTimelineDonationClientClass_block_invoke(buf);
      v12 = v18[3];
    }

    v13 = v12;
    _Block_object_dispose(&v17, 8);
    v14 = [v12 sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __CHDForwardEntriesToProactive_block_invoke;
    v16[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v16[4] = v10;
    [v14 timelineDidReloadForWidget:v5 parentApp:v6 withEntries:v8 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_224A8CA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_224A8CA4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_224DA9878();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_224A8CADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_224A3317C(a1 + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for DuetTaskActivityContext();
  result = swift_dynamicCast();
  if (result)
  {
    a4();
  }

  return result;
}

uint64_t sub_224A8CB78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  os_unfair_lock_assert_owner(*(*(v1 + v2) + 16));
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v7 = *(v6 + 8);
    v8 = v5;
    v7();
  }

  v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v11 = *(v10 + 8);
    v12 = v9;
    v11();
  }

  v13 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v30 = v3;
    v31 = (v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v19 = (v16 + 63) >> 6;
    v32 = v14;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v18; result = )
    {
      v22 = i;
      v23 = v32;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v22 << 6);
      v26 = *(*(v23 + 48) + 16 * v25 + 8);
      v27 = *(*(v23 + 56) + 8 * v25);
      v28 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v33 = *(v28 + 8);

      v29 = v27;
      v33();
    }

    v23 = v32;
    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v3 = v30;
        goto LABEL_18;
      }

      v18 = *(v15 + 8 * v22);
      ++i;
      if (v18)
      {
        i = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    os_unfair_lock_unlock(*(v3 + 16));
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_224A8CDE8(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224A8B1DC();
  if (*v5)
  {
    sub_224A4A564(&v9, a1);
    (v4)(v8, 0);
  }

  else
  {
    (v4)(v8, 0);
  }

  os_unfair_lock_unlock(*(v3 + 16));
  v6 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EF0);
  return sub_224DAB398();
}

uint64_t sub_224A8CEE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A8CF94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v2 = sub_224DAB258();
    __swift_project_value_buffer(v2, qword_281364D60);
    v3 = sub_224DAB228();
    v4 = sub_224DAF278();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224A2F000, v3, v4, "[service] flushing graceStore", v5, 2u);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }

    v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_224A8D0FC(v1);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

uint64_t sub_224A8D0FC(uint64_t result)
{
  if ((*(result + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending) = 0;
    v1 = *(result + 64);
    v2 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
    }

    else
    {
      v2 = 0;
    }

    [*(v1 + 16) setData_];
  }

  return result;
}

uint64_t sub_224A8D314(uint64_t a1)
{
  sub_224A4B83C(a1, v7);
  if (!v8)
  {
    sub_224A3311C(v7, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_5;
  }

  type metadata accessor for LocationGraceRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v6 + 16);

  v4 = sub_224A8D408(v2, v3);

  return v4 & 1;
}

uint64_t sub_224A8D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC378();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v49 - v14);
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v60 + 16;
  v57 = (v60 + 32);
  v52 = (v60 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v58 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = *(*(v51 + 48) + 8 * v23);
    v30 = v59;
    v29 = v60;
    (*(v60 + 16))(v59, *(v51 + 56) + *(v60 + 72) * v23, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v32 = *(v31 + 48);
    *v22 = v28;
    (*(v29 + 32))(&v22[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
    v33 = v28;
LABEL_17:
    v34 = v54;
    sub_224A44E4C(v22, v54, &qword_27D6F5E70, &qword_224DBDFA8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = a2;
    v39 = *v34;
    v40 = v53;
    (*v57)(v53, v34 + *(v35 + 48), v4);
    v41 = sub_224A3E7EC(v39);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      (*v52)(v40, v4);
      return 0;
    }

    v45 = v59;
    v44 = v60;
    (*(v60 + 16))(v59, *(v38 + 56) + *(v60 + 72) * v41, v4);
    sub_224A839FC(&unk_281350DE0, MEMORY[0x277CF9A10]);
    v46 = sub_224DAEDD8();
    v47 = *(v44 + 8);
    v47(v45, v4);
    result = (v47)(v40, v4);
    a2 = v38;
    v20 = v58;
    if ((v46 & 1) == 0)
    {
      return v37;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v58 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v50 + 8 * v26);
    ++v16;
    if (v27)
    {
      v58 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A8D908()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_224A8D940()
{
  v53 = sub_224DAC378();
  v1 = *(v53 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = v3;
  v47 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v45 - v9);
  swift_beginAccess();
  v11 = *(v0 + 16);
  v12 = *(v11 + 64);
  v45[0] = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v45[1] = v1 + 32;
  v45[2] = v1 + 16;
  v48 = v1;
  v49 = v11;
  v50 = (v1 + 8);

  v17 = 0;
  v18 = 0;
  v46 = v8;
  v52 = v10;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v48;
      v25 = *(*(v49 + 48) + 8 * v23);
      v26 = v47;
      v27 = v53;
      (*(v48 + 16))(v47, *(v49 + 56) + *(v48 + 72) * v23, v53);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      v29 = *(v28 + 48);
      v30 = v46;
      *v46 = v25;
      v31 = v26;
      v8 = v30;
      (*(v24 + 32))(&v30[v29], v31, v27);
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
      v32 = v25;
      v21 = v19;
      v10 = v52;
LABEL_13:
      sub_224A44E4C(v8, v10, &qword_27D6F5E70, &qword_224DBDFA8);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        break;
      }

      v34 = v21;
      v35 = *v10;
      v36 = [*v10 tokenString];
      v37 = sub_224DAEE18();
      v39 = v38;

      if ((v39 & 0x1000000000000000) != 0)
      {
        v40 = sub_224DAEED8();
      }

      else
      {

        if ((v39 & 0x2000000000000000) != 0)
        {
          v40 = HIBYTE(v39) & 0xF;
        }

        else
        {
          v40 = v37 & 0xFFFFFFFFFFFFLL;
        }
      }

      v41 = v40 + 8;
      if (__OFADD__(v40, 8))
      {
        goto LABEL_27;
      }

      v42 = __OFADD__(v41, v51);
      v43 = v41 + v51;
      if (v42)
      {
        goto LABEL_28;
      }

      v42 = __OFADD__(v17, v43);
      v17 += v43;
      if (v42)
      {
        goto LABEL_29;
      }

      v10 = v52;
      (*v50)(v52 + *(v33 + 48), v53);
      v18 = v34;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
        (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v45[0] + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL sub_224A8DE4C(uint64_t a1, uint64_t a2)
{
  v73[4] = *MEMORY[0x277D85DE8];
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - v15);
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = *(v17 + 64);
  v58 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v57 = (v19 + 63) >> 6;
  v59 = v5 + 16;
  v71 = (v5 + 32);
  v63 = v5;
  v66 = (v5 + 8);
  v67 = a2 + 16;
  v65 = v17;

  v22 = 0;
  v60 = v16;
  v61 = a2;
  v68 = v9;
  if (!v21)
  {
    goto LABEL_5;
  }

LABEL_4:
  v23 = v22;
LABEL_11:
  v25 = __clz(__rbit64(v21));
  v21 &= v21 - 1;
  v26 = v25 | (v23 << 6);
  v27 = *(*(v65 + 48) + 8 * v26);
  v28 = v62;
  v29 = v63;
  (*(v63 + 16))(v62, *(v65 + 56) + *(v63 + 72) * v26, v4);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
  v31 = *(v30 + 48);
  v32 = v69;
  *v69 = v27;
  v33 = *(v29 + 32);
  v34 = v4;
  v33(&v32[v31], v28, v4);
  (*(*(v30 - 8) + 56))(v32, 0, 1, v30);
  v35 = v27;
  v70 = v23;
  v36 = v32;
  v16 = v60;
  a2 = v61;
  while (1)
  {
    sub_224A44E4C(v36, v16, &qword_27D6F5E70, &qword_224DBDFA8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v38 = (*(*(v37 - 8) + 48))(v16, 1, v37);
    if (v38 == 1)
    {

      goto LABEL_38;
    }

    v39 = v9;
    v40 = v34;
    v41 = *v16;
    v42 = v40;
    (*v71)(v39, v16 + *(v37 + 48));
    v43 = [v41 tokenString];
    v44 = sub_224DAEE18();
    v46 = v45;

    if ((v46 & 0x1000000000000000) != 0)
    {
      v47 = sub_224DAEED8();
    }

    else if ((v46 & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(v46) & 0xF;
    }

    else
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    v73[0] = v47;

    if (!(*(a2 + 16))(a2, v73, 8))
    {

      swift_bridgeObjectRelease_n();
      (*v66)(v68, v42);
      goto LABEL_38;
    }

    if ((v46 & 0x1000000000000000) != 0)
    {

      swift_bridgeObjectRelease_n();
      v4 = v42;
      v9 = v68;

      goto LABEL_37;
    }

    if ((v46 & 0x2000000000000000) != 0)
    {

      v72[0] = v44;
      v72[1] = v46 & 0xFFFFFFFFFFFFFFLL;
      v50 = (*(a2 + 16))(a2, v72, v73[0]);
      v4 = v42;
      v9 = v68;
      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v44 & 0x1000000000000000) != 0)
      {
        v48 = (v46 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v4 = v42;
      }

      else
      {
        v48 = sub_224DAF998();
        v4 = v42;
        if (!v48)
        {

          v9 = v68;
LABEL_32:

          goto LABEL_37;
        }
      }

      v49 = (*(a2 + 16))(a2, v48, v73[0]);

      v9 = v68;
      if ((v49 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v51 = (*(a2 + 16))(a2, v9, v64);

    if ((v51 & 1) == 0)
    {
      break;
    }

    (*v66)(v9, v4);
    v22 = v70;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v57 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v57;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
      }

      if (v23 >= v57)
      {
        break;
      }

      v21 = *(v58 + 8 * v23);
      ++v22;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    v70 = v24 - 1;
    v34 = v4;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v53 = v69;
    (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
    v36 = v53;
    v21 = 0;
  }

LABEL_37:
  (*v66)(v9, v4);
LABEL_38:
  result = v38 == 1;
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224A8E510(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_224DA9F08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  [a1 integerValue];
  sub_224DA9EE8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_224A3311C(v8, &qword_27D6F6120, qword_224DBE860);
  }

  v57 = v2;
  (*(v10 + 32))(v21, v8, v9);
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364EC8);
  v25 = *(v10 + 16);
  v58 = v21;
  v55 = v25;
  v56 = v10 + 16;
  v25(v19, v21, v9);
  v26 = a2;
  v27 = sub_224DAB228();
  v28 = sub_224DAF278();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v54 = v16;
    v30 = v29;
    v31 = swift_slowAlloc();
    v52 = v31;
    v53 = swift_slowAlloc();
    v60 = v53;
    *v30 = 138543618;
    *(v30 + 4) = v26;
    *v31 = v26;
    *(v30 + 12) = 2082;
    v32 = v26;
    v33 = sub_224DA9EC8();
    v35 = v34;
    v36 = *(v10 + 8);
    v36(v19, v9);
    v37 = sub_224A33F74(v33, v35, &v60);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_224A2F000, v27, v28, "Received setWidgetTaskPriority for %{public}@: %{public}s", v30, 0x16u);
    v38 = v52;
    sub_224A3311C(v52, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v38, -1, -1);
    v39 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    v40 = v30;
    v16 = v54;
    MEMORY[0x22AA5EED0](v40, -1, -1);

    v41 = v36;
  }

  else
  {

    v41 = *(v10 + 8);
    v41(v19, v9);
  }

  v42 = v57;
  v43 = *(v57 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v43 + 16));
  v44 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v45 = *(v42 + v44);

  v46 = sub_224A71D20(v26, v45);

  os_unfair_lock_unlock(*(v43 + 16));
  if (!v46)
  {
    return (v41)(v58, v9);
  }

  v47 = v58;
  v48 = v55;
  v55(v16, v58, v9);
  v49 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v50 = v59;
  v48(v59, v46 + v49, v9);
  swift_beginAccess();
  (*(v10 + 24))(v46 + v49, v16, v9);
  swift_endAccess();
  sub_224A7F0A8();

  v41(v50, v9);
  v41(v16, v9);
  return (v41)(v47, v9);
}

uint64_t sub_224A8EA6C(uint64_t a1)
{
  v2 = type metadata accessor for _SessionPriorityInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224A8EAD0(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v4 = sub_224A4A248();
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if (v4)
  {
    sub_224DAF538();
    v8 = sub_224DAF6A8();

    v7 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_224A8EB94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_224A8EAD0(a1, *(v1 + 32)) & 1;
}

void sub_224A8EBB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 state];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 taskState];

    v10 = [a1 previousState];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 taskState];

      if ((v9 | 2) == 3 && v9 != v12)
      {
        v14 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers;
        swift_beginAccess();
        v15 = *(v3 + v14);
        if (*(v15 + 16))
        {
          v16 = *(v3 + v14);

          v17 = sub_224A3A40C(a2, a3);
          if (v18)
          {
            v19 = *(*(v15 + 56) + 8 * v17);

            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = v19 + 32;
              do
              {
                sub_224A3317C(v21, v25);
                __swift_project_boxed_opaque_existential_1(v25, v25[3]);
                sub_224DAE638();
                __swift_destroy_boxed_opaque_existential_1(v25);
                v21 += 40;
                --v20;
              }

              while (v20);
            }

            swift_beginAccess();

            v22 = *(v3 + v14);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v24 = *(v3 + v14);
            *(v3 + v14) = 0x8000000000000000;
            sub_224A4F434(MEMORY[0x277D84F90], a2, a3, isUniquelyReferenced_nonNull_native);

            *(v3 + v14) = v24;
            swift_endAccess();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_224A8EDA4(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DABE18() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_224DACC88() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v3 + 16);
  v13 = *(v3 + v9);
  v14 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_224A8EED0(a1, a2, a3, v12, v3 + v8, v13, v3 + v11, v14);
}

uint64_t sub_224A8EED0(uint64_t *a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v14 = sub_224DACB98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();

  sub_224A8F010(a5, a6, a1, v18, v21, a8, a2, a3);

  return (*(v15 + 8))(v18, v14);
}

void sub_224A8F010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v90 = a2;
  v91 = a3;
  v13 = sub_224DAE6E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DABE18();
  v85 = *(v18 - 8);
  v86 = v18;
  v19 = *(v85 + 64);
  MEMORY[0x28223BE20](v18);
  v84 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAB258();
  v88 = *(v21 - 8);
  v89 = v21;
  v22 = *(v88 + 64);
  MEMORY[0x28223BE20](v21);
  v87 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  if (*(a5 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) == 1)
  {
    v96 = 0;
    memset(v95, 0, sizeof(v95));

    sub_224DACB58();
LABEL_33:
    sub_224A8FA54(v95, &v92);
    v72 = swift_allocObject();
    v73 = v93;
    *(v72 + 16) = v92;
    *(v72 + 32) = v73;
    *(v72 + 48) = v94;
    *(v72 + 56) = sub_224B819F8;
    *(v72 + 64) = v24;

    sub_224A8FAC4(a1, v90, v91, sub_224BB124C, v72);

LABEL_34:
    sub_224A3311C(v95, &qword_27D6F3AE8, &unk_224DB9600);

    return;
  }

  v80 = v17;
  v81 = v14;
  v82 = v13;
  v25 = __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService), *(a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService + 24));

  v26 = sub_224DABDB8();
  v27 = *v25;
  v28 = *(v27 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v28 + 16));
  sub_224A8F8F8(v27, v26, v95);
  v79 = 0;
  os_unfair_lock_unlock(*(v28 + 16));

  if ((sub_224DACB58() & 1) == 0)
  {
    goto LABEL_33;
  }

  v77 = a7;
  v78 = a8;
  v29 = a5[8];
  __swift_project_boxed_opaque_existential_1(a5 + 4, a5[7]);
  v30 = sub_224DABDB8();
  sub_224DAC6D8();

  if (!*(&v93 + 1))
  {
LABEL_19:
    sub_224A3311C(&v92, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
  v31 = sub_224DAE278();
  __swift_destroy_boxed_opaque_existential_1(&v92);
  if ((v31 & 1) == 0)
  {
    goto LABEL_33;
  }

  v32 = (a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
  v33 = __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService), *(a5 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService + 24));
  v34 = sub_224DABDB8();
  v35 = *v33;
  v36 = sub_224A8F944(v34);

  v37 = sub_224A67D38();
  if (!v37)
  {
    goto LABEL_33;
  }

  v38 = v37;
  v39 = (v37 & 0xFFFFFFFFFFFFFF8);
  v83 = (v37 & 0xFFFFFFFFFFFFFF8);
  v75 = v32;
  v76 = v36;
  if (v37 >> 62)
  {
LABEL_31:
    v71 = sub_224DAF838();
    v39 = v83;
    v40 = v71;
    if (v71)
    {
      goto LABEL_9;
    }

LABEL_32:

    goto LABEL_33;
  }

  v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_32;
  }

LABEL_9:
  v41 = 0;
  while (1)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x22AA5DCC0](v41, v38);
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v41 >= v39[2])
      {
        __break(1u);
        goto LABEL_31;
      }

      v42 = *(v38 + 8 * v41 + 32);
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_18;
      }
    }

    v44 = v42;
    if ([v42 isSuggestion])
    {
      break;
    }

    ++v41;
    v39 = v83;
    if (v43 == v40)
    {
      goto LABEL_32;
    }
  }

  v83 = v44;

  if (v76)
  {

    goto LABEL_33;
  }

  sub_224A8FA54(v95, &v92);
  if (*(&v93 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(&v92);
  }

  else
  {
    sub_224A3311C(&v92, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v45 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v46 = sub_224DABDB8();
  v47 = *v45;
  v48 = *(v47 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v48 + 16));
  v49 = v79;
  sub_224D29BA0(v47, v46);
  if (!v49)
  {
    os_unfair_lock_unlock(*(v48 + 16));

    v50 = v87;
    v51 = v88;
    v52 = a5 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
    v53 = v89;
    (*(v88 + 16))(v87, v52, v89);
    v55 = v84;
    v54 = v85;
    v56 = a1;
    v57 = v86;
    (*(v85 + 16))(v84, v56, v86);
    v58 = sub_224DAB228();
    v59 = sub_224DAF2A8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v55;
      v61 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v92 = v91;
      *v61 = 136446210;
      sub_224A6E240();
      v62 = sub_224DAFD28();
      v63 = v57;
      v64 = v50;
      v66 = v65;
      (*(v54 + 8))(v60, v63);
      v67 = sub_224A33F74(v62, v66, &v92);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_224A2F000, v58, v59, "%{public}s Deferring reload due to suggested widget needing location.", v61, 0xCu);
      v68 = v91;
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x22AA5EED0](v68, -1, -1);
      MEMORY[0x22AA5EED0](v61, -1, -1);

      (*(v51 + 8))(v64, v89);
    }

    else
    {

      (*(v54 + 8))(v55, v57);
      (*(v51 + 8))(v50, v53);
    }

    v69 = v80;
    sub_224AD1978();
    (*(v81 + 104))(v69, *MEMORY[0x277CE3C48], v82);
    v70 = sub_224DAF638();
    v77();

    goto LABEL_34;
  }

  os_unfair_lock_unlock(*(v48 + 16));
  __break(1u);
}

uint64_t sub_224A8F870()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A8F8B0()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224A8F944(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v3 + 16));
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    v4 = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v4 = sub_224A71E2C(a1, *(v1 + v5), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
    if (v4)
    {
      swift_endAccess();
      if (*(v4 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity))
      {

        v4 = 1;
      }

      else
      {
        v6 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);

        v4 = v6 != 0;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v4;
}

uint64_t sub_224A8FA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AE8, &unk_224DB9600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224A8FAC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v9 = sub_224DAE6E8();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DABE18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a3, v41, &qword_27D6F4760, &unk_224DB3680);
  if (v41[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v22 = v40;
      swift_unknownObjectRetain();
      v23 = v39;

      sub_224A8FF84(v22, a1, a2, v5, v22, v38, v23);
      swift_unknownObjectRelease_n();

      return;
    }
  }

  else
  {
    sub_224A3311C(v41, &qword_27D6F4760, &unk_224DB3680);
  }

  (*(v18 + 16))(v21, &v5[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v17);
  (*(v13 + 16))(v16, a1, v12);
  v24 = sub_224DAB228();
  v25 = sub_224DAF288();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v26 = 136446210;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v27 = sub_224DAFD28();
    v33 = v17;
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_224A33F74(v27, v29, v41);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_224A2F000, v24, v25, "%{public}s No extension session", v26, 0xCu);
    v31 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);

    (*(v18 + 8))(v21, v33);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v17);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v36 + 104))(v35, *MEMORY[0x277CE3C40], v37);
  v32 = sub_224DAF638();
  v38(v32, 1);
}

void sub_224A8FF84(void *a1, uint64_t a2, uint64_t a3, const char *a4, char *a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v235 = a3;
  v239 = a2;
  v223 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4800, &qword_224DB7988);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v255 = &v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v253 = &v208 - v15;
  v231 = sub_224DAB1F8();
  v232 = *(v231 - 8);
  v16 = *(v232 + 64);
  MEMORY[0x28223BE20](v231);
  v248 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v244 = &v208 - v20;
  v247 = sub_224DAE4F8();
  v254 = *(v247 - 8);
  v21 = *(v254 + 8);
  v22 = MEMORY[0x28223BE20](v247);
  v243 = &v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v246 = &v208 - v24;
  v263 = sub_224DAC268();
  v224 = *(v263 - 8);
  v25 = *(v224 + 64);
  v26 = MEMORY[0x28223BE20](v263);
  v251 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v215 = &v208 - v29;
  MEMORY[0x28223BE20](v28);
  v250 = &v208 - v30;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v31 = *(*(v260 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v260);
  v209 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v257 = (&v208 - v35);
  MEMORY[0x28223BE20](v34);
  v256 = &v208 - v36;
  v226 = sub_224DAE6E8();
  v225 = *(v226 - 8);
  v37 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v227 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  *&v262 = &v208 - v41;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v261 = *(v259 - 1);
  v42 = *(v261 + 64);
  MEMORY[0x28223BE20](v259);
  v258 = &v208 - v43;
  v44 = sub_224DABE18();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v222 = &v208 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v208 - v49;
  v51 = sub_224DAB258();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v214 = &v208 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = &v208 - v56;
  v58 = swift_allocObject();
  *(v58 + 2) = a5;
  *(v58 + 3) = a6;
  v229 = a6;
  v234 = v58;
  *(v58 + 4) = a7;
  v236 = v52;
  v59 = *(v52 + 16);
  v252 = a4;
  v210 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v212 = v52 + 16;
  v211 = v59;
  v59(v57, &a4[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v51);
  v237 = v45;
  v60 = *(v45 + 16);
  v220 = v45 + 16;
  v219 = v60;
  v60(v50, v239, v44);
  v228 = a5;
  swift_unknownObjectRetain();
  v230 = a7;

  v61 = sub_224DAB228();
  v62 = sub_224DAF2A8();
  v63 = os_log_type_enabled(v61, v62);
  v233 = v44;
  v218 = v51;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v64 = 136446210;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v66 = sub_224DAFD28();
    v68 = v67;
    (*(v237 + 8))(v50, v44);
    v69 = sub_224A33F74(v66, v68, &aBlock);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_224A2F000, v61, v62, "%{public}s reload: begin", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x22AA5EED0](v65, -1, -1);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {

    (*(v237 + 8))(v50, v44);
  }

  v213 = *(v236 + 8);
  v213(v57, v51);
  v70 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v265[0] = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v265[0] = 0x8000000224DC7CA0;
  v71 = sub_224DABDB8();
  v72 = [v71 description];
  v73 = sub_224DAEE18();
  v75 = v74;

  MEMORY[0x22AA5D210](v73, v75);

  *(v70 + 16) = sub_224DAD188();
  v249 = *(v252 + 16);
  v76 = v262;
  if (!v249)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v225 + 104))(v227, *MEMORY[0x277CE3C38], v226);
    aBlock = 0;
    v265[0] = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000004ELL, 0x8000000224DC7CC0);
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v90 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v90);

    MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
    v91 = MEMORY[0x22AA5D380](v235, v263);
    MEMORY[0x22AA5D210](v91);

    v92 = sub_224DAF638();
    [v228 invalidate];
    v229(v92, 1);

LABEL_19:

    return;
  }

  v77 = *(v252 + 24);
  v78 = swift_allocBox();
  v79 = *(v232 + 56);
  v208 = v80;
  v79(v80, 1, 1, v231);
  v245 = v77;

  v81 = sub_224DABDB8();
  v82 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v81 + v82, v76, &unk_27D6F5060, &qword_224DB5620);

  v83 = v261;
  v84 = v259;
  v85 = (*(v261 + 48))(v76, 1, v259);
  v217 = v70;
  v216 = v78;
  if (v85 == 1)
  {
    sub_224A3311C(v76, &unk_27D6F5060, &qword_224DB5620);
    v260 = 0;
LABEL_7:
    v86 = v250;
    v87 = v247;
    v88 = v246;
    v89 = v248;
    goto LABEL_11;
  }

  (*(v83 + 32))(v258, v76, v84);
  v93 = sub_224DA9FE8();
  v95 = v94;
  v96 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v97 = sub_224A921B4(v93, v95, 0);
  v260 = 0;
  if (v97)
  {
    *&v262 = v97;
    if ([v97 developerType] == 1)
    {
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      v137 = qword_281364CC0;
      v138 = v256;
      sub_224DAB1E8();
      v139 = v231;
      v79(v138, 0, 1, v231);
      v140 = v138;
      v141 = v208;
      sub_224A92290(v140, v208);
      LODWORD(v256) = sub_224DAF4B8();
      v142 = v257;
      sub_224A3796C(v141, v257, &qword_27D6F4270, &qword_224DB6580);
      v143 = v232;
      if ((*(v232 + 48))(v142, 1, v139) == 1)
      {

        swift_unknownObjectRelease();
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_224DB3100;
      v145 = sub_224DABDB8();
      v146 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v147 = sub_224DA9FE8();
      v149 = v148;
      *(v144 + 56) = MEMORY[0x277D837D0];
      *(v144 + 64) = sub_224A92300();
      *(v144 + 32) = v147;
      *(v144 + 40) = v149;
      swift_endAccess();

      sub_224DAB1D8();

      (*(v261 + 8))(v258, v259);
      (*(v143 + 8))(v142, v139);
    }

    else
    {
      (*(v83 + 8))(v258, v84);
    }

    goto LABEL_7;
  }

  v87 = v247;
  v88 = v246;
  v89 = v248;
  (*(v261 + 8))(v258, v84);
  v86 = v250;
LABEL_11:
  v98 = MEMORY[0x277D84F90];
  v266 = MEMORY[0x277D84F90];
  v99 = sub_224A92354(MEMORY[0x277D84F90]);
  v261 = sub_224A9253C(v98);
  v100 = *(v235 + 16);
  v101 = v263;
  *&v262 = v99;
  if (!v100)
  {
LABEL_18:
    sub_224DAE868();
    v92 = sub_224DAEFF8();

    v125 = v252;
    LODWORD(v263) = *(v252 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview);
    v126 = v222;
    v127 = v233;
    v219(v222, v239, v233);
    v128 = v237;
    v129 = (*(v237 + 80) + 40) & ~*(v237 + 80);
    v130 = (v221 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
    v132 = swift_allocObject();
    v133 = v261;
    *(v132 + 2) = v262;
    *(v132 + 3) = v133;
    *(v132 + 4) = v125;
    (*(v128 + 32))(&v132[v129], v126, v127);
    *&v132[v130] = v216;
    v134 = &v132[v131];
    v135 = v234;
    *v134 = sub_224B7F144;
    v134[1] = v135;
    *&v132[(v131 + 23) & 0xFFFFFFFFFFFFFFF8] = v217;
    v265[3] = sub_224B7F194;
    v265[4] = v132;
    aBlock = MEMORY[0x277D85DD0];
    v265[0] = 1107296256;
    v265[1] = sub_224BC6D2C;
    v265[2] = &block_descriptor_14;
    v136 = _Block_copy(&aBlock);

    [v223 getTimelinesWithRequests:v92 isPreview:v263 completion:v136];
    sub_224A3D418(v249);
    _Block_release(v136);

    goto LABEL_19;
  }

  v257 = *(v224 + 16);
  v256 = *(v224 + 72);
  v242 = (v254 + 48);
  v241 = (v254 + 32);
  v238 = (v254 + 16);
  v240 = (v254 + 8);
  v258 = (v224 + 16);
  v259 = (v224 + 8);
  v102 = v235 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
  while (1)
  {
    v254 = v100;
    v103 = v101;
    (v257)(v86, v102);
    v104 = v244;
    v249(v86);
    if ((*v242)(v104, 1, v87) == 1)
    {

      sub_224A3311C(v104, &qword_27D6F4808, &unk_224DB7990);
      v150 = v209;
      sub_224A3796C(v208, v209, &qword_27D6F4270, &qword_224DB6580);
      v151 = v232;
      v152 = v231;
      if ((*(v232 + 48))(v150, 1, v231) == 1)
      {
        sub_224A3311C(v150, &qword_27D6F4270, &qword_224DB6580);
        v153 = v229;
        v154 = v228;
        v155 = v226;
        v156 = v225;
LABEL_52:
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v156 + 104))(v227, *MEMORY[0x277CE3C38], v155);
        aBlock = 0;
        v265[0] = 0xE000000000000000;
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD000000000000055, 0x8000000224DC7D10);
        sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
        v204 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v204);

        MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
        v205 = MEMORY[0x22AA5D380](v235, v103);
        MEMORY[0x22AA5D210](v205);

        v206 = sub_224DAF638();
        [v154 invalidate];
        (v153)(v206, 1);
        sub_224A3D418(v249);

        (*v259)(v250, v103);

        v203 = &v248;
        goto LABEL_53;
      }

      (*(v151 + 32))(v89, v150, v152);
      sub_224DAF4A8();
      v153 = v229;
      v178 = v228;
      v155 = v226;
      v156 = v225;
      if (qword_2813507E8 == -1)
      {
LABEL_51:
        sub_224DAB1D8();
        (*(v151 + 8))(v89, v152);
        v154 = v178;
        goto LABEL_52;
      }

LABEL_56:
      swift_once();
      v151 = v232;
      goto LABEL_51;
    }

    (*v241)(v88, v104, v87);
    v105 = v252;
    v107 = *(v252 + 72);
    v106 = *(v252 + 80);
    swift_getObjectType();
    v108 = *(v106 + 16);
    v109 = v260;
    v110 = sub_224DAC438();
    v112 = v110;
    if (v109)
    {
      break;
    }

    v113 = v111;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v114 = sub_224DABCE8();
    v260 = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    v115 = v114;
    v116 = v261;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v116;
    v86 = v250;
    sub_224A94F74(v112, v113, v250, isUniquelyReferenced_nonNull_native);
    v261 = aBlock;
    sub_224DAE868();
    sub_224DAC248();
    v88 = v246;
    v118 = v247;
    (*v238)(v243, v246, v247);
    v119 = sub_224DAE858();
    MEMORY[0x22AA5D350]();
    v120 = v263;
    if (*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v124 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_224DAF038();
      v86 = v250;
    }

    sub_224DAF078();
    v121 = v119;
    v122 = v262;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v122;
    sub_224A95624(v121, v86, v123);
    swift_unknownObjectRelease();

    *&v262 = aBlock;
    (*v240)(v88, v118);
    (*v259)(v86, v120);
    v102 += v256;
    v100 = v254 - 1;
    v87 = v118;
    v89 = v248;
    v101 = v120;
    if (v254 == 1)
    {
      goto LABEL_18;
    }
  }

  v242 = v110;

  v241 = 0;
  v243 = v109;
  v157 = v250;

  v158 = v214;
  v159 = v218;
  v211(v214, v105 + v210, v218);
  v160 = v215;
  (v257)(v215, v157, v103);
  v161 = v109;
  v162 = v103;
  v163 = sub_224DAB228();
  v164 = sub_224DAF288();

  v165 = os_log_type_enabled(v163, v164);
  v260 = v109;
  if (v165)
  {
    v166 = v109;
    v167 = swift_slowAlloc();
    *&v262 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    aBlock = v168;
    *v167 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
    v169 = sub_224DAFD28();
    v171 = v170;
    v254 = *v259;
    (v254)(v160, v162);
    v172 = sub_224A33F74(v169, v171, &aBlock);

    *(v167 + 4) = v172;
    *(v167 + 12) = 2114;
    v173 = v166;
    v174 = _swift_stdlib_bridgeErrorToNSError();
    *(v167 + 14) = v174;
    v175 = v262;
    *v262 = v174;
    _os_log_impl(&dword_224A2F000, v163, v164, "%{public}s reload: could not create file handle because %{public}@", v167, 0x16u);
    sub_224A3311C(v175, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v175, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v168);
    MEMORY[0x22AA5EED0](v168, -1, -1);
    MEMORY[0x22AA5EED0](v167, -1, -1);

    v176 = v158;
    v177 = v218;
  }

  else
  {

    v254 = *v259;
    (v254)(v160, v162);
    v176 = v158;
    v177 = v159;
  }

  v213(v176, v177);
  v178 = v253;
  v179 = 0;
  v180 = *(v261 + 64);
  v244 = (v261 + 64);
  v181 = 1 << *(v261 + 32);
  v182 = -1;
  if (v181 < 64)
  {
    v182 = ~(-1 << v181);
  }

  v153 = v182 & v180;
  v156 = (v181 + 63) >> 6;
  v248 = (v224 + 32);
  v152 = &qword_27D6F4810;
  v252 = "MobileTimelineReload";
  v89 = v260;
  if ((v182 & v180) == 0)
  {
LABEL_35:
    if (v156 <= v179 + 1)
    {
      v184 = v179 + 1;
    }

    else
    {
      v184 = v156;
    }

    v185 = v184 - 1;
    v183 = v255;
    v103 = 0xD000000000000011;
    while (1)
    {
      v155 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      if (v155 >= v156)
      {
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
        (*(*(v200 - 8) + 56))(v183, 1, 1, v200);
        v153 = 0;
        goto LABEL_43;
      }

      v153 = *&v244[8 * v155];
      ++v179;
      if (v153)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  while (1)
  {
    v155 = v179;
    v183 = v255;
LABEL_42:
    v186 = __clz(__rbit64(v153));
    v153 &= v153 - 1;
    v187 = v186 | (v155 << 6);
    v188 = v261;
    v189 = v251;
    v190 = v263;
    (v257)(v251, *(v261 + 48) + v187 * v256, v263);
    v191 = *(v188 + 56);
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
    v193 = *(v192 + 48);
    v194 = *v248;
    v262 = *(v191 + 16 * v187);
    v194(v183, v189, v190);
    *(v183 + v193) = v262;
    (*(*(v192 - 8) + 56))(v183, 0, 1, v192);
    swift_unknownObjectRetain();
    v185 = v155;
    v89 = v260;
    v178 = v253;
LABEL_43:
    sub_224A44E4C(v183, v178, &qword_27D6F4800, &qword_224DB7988);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4810, &unk_224DB79A0);
    if ((*(*(v195 - 8) + 48))(v178, 1, v195) == 1)
    {
      break;
    }

    v196 = &v178[*(v195 + 48)];
    v197 = *v196;
    v198 = *(v196 + 1);
    swift_getObjectType();
    aBlock = 0;
    v265[0] = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000001FLL, v252 | 0x8000000000000000);
    v265[5] = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224DAFA48();
    v199 = v263;
    v152 = &qword_27D6F4810;
    sub_224DABD08();

    swift_unknownObjectRelease();
    (v254)(v178, v199);
    v179 = v185;
    if (!v153)
    {
      goto LABEL_35;
    }
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v225 + 104))(v227, *MEMORY[0x277CE3C10], v226);
  v201 = v89;
  v202 = sub_224DAF638();
  [v228 invalidate];
  v229(v202, 1);
  sub_224A3D418(v249);

  (*v240)(v246, v247);
  (v254)(v250, v263);

  if (!v243)
  {
    swift_unknownObjectRelease();
  }

  v203 = v265;
LABEL_53:
  v207 = *(v203 - 32);
}

uint64_t sub_224A92028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A92068()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A920A0()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  v12 = *&v0[v6 + 8];

  v13 = *&v0[v7];

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

id sub_224A921B4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_224DAEDE8();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_224DA9528();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_224A92290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A92300()
{
  result = qword_281350BF0;
  if (!qword_281350BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BF0);
  }

  return result;
}

unint64_t sub_224A92354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7108, &unk_224DC3CF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CC0, &qword_224DB4970);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7108, &unk_224DC3CF0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224A9253C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70F8, &unk_224DC3CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7100, &qword_224DB4978);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70F8, &unk_224DC3CE0);
      result = sub_224A61E5C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC268();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_224A92724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v236 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v222 = &v206[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v223 = *(v7 - 8);
  v8 = *(v223 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v210 = &v206[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v224 = &v206[-v11];
  v239 = sub_224DAB258();
  *&v253 = *(v239 - 8);
  v12 = *(v253 + 64);
  v13 = MEMORY[0x28223BE20](v239);
  v221 = &v206[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v209 = &v206[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v233 = &v206[-v18];
  MEMORY[0x28223BE20](v17);
  v230 = &v206[-v19];
  v238 = sub_224DAD158();
  v249 = *(v238 - 8);
  v20 = *(v249 + 64);
  MEMORY[0x28223BE20](v238);
  v226 = &v206[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v235 = sub_224DAE4F8();
  v234 = *(v235 - 8);
  v22 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v237 = &v206[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_224DAE478();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v247 = &v206[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v241 = sub_224DAB728();
  v240 = *(v241 - 8);
  v27 = *(v240 + 64);
  v28 = MEMORY[0x28223BE20](v241);
  v244 = &v206[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v206[-v30];
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v32 = *(*(v217 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v217);
  v220 = &v206[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v219 = &v206[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v218 = &v206[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v232 = &v206[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v229 = &v206[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v227 = &v206[-v44];
  MEMORY[0x28223BE20](v43);
  v252 = &v206[-v45];
  v46 = sub_224DAC268();
  v47 = *(v46 - 8);
  v48 = v47[8];
  v49 = MEMORY[0x28223BE20](v46);
  v216 = &v206[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = MEMORY[0x28223BE20](v49);
  v208 = &v206[-v52];
  v53 = MEMORY[0x28223BE20](v51);
  v231 = &v206[-v54];
  v55 = MEMORY[0x28223BE20](v53);
  v228 = &v206[-v56];
  MEMORY[0x28223BE20](v55);
  v58 = &v206[-v57];
  v59 = sub_224DABE18();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v206[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v250 = v47[2];
  v251 = (v47 + 2);
  (v250)(v58, a1, v46);
  sub_224DABD88();
  v64 = v2;
  v65 = *(v2 + 232);
  sub_224DAC178();
  if (!v255[0])
  {
    (*(v60 + 8))(v63, v59);
    return (*(v234 + 56))(v236, 1, 1, v235);
  }

  v212 = v63;
  v213 = v60;
  v214 = v59;
  v242 = v64;
  v66 = v255[0];
  v67 = *(v64 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext);

  v68 = v252;
  v248 = a1;
  sub_224DADDE8();

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(v255, v255[3]);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v255);
  sub_224DABE58();
  v69 = sub_224DAC248();
  v70 = v47[1];
  v70(v58, v46);
  [v69 family];

  sub_224DAE488();
  sub_224DAB5F8();
  v211 = v66;
  sub_224DABE58();
  sub_224DAC258();
  v247 = v46;
  v245 = v70;
  v70(v58, v46);
  sub_224DAB628();
  (*(v240 + 16))(v244, v31, v241);
  sub_224DAE4D8();
  v71 = v227;
  sub_224A3796C(v68, v227, &qword_27D6F5238, &qword_224DBB1E0);
  v72 = v249;
  v73 = v238;
  v243 = *(v249 + 48);
  v244 = (v249 + 48);
  v74 = v243(v71, 1, v238);
  v215 = v31;
  v75 = v68;
  v246 = v47 + 1;
  if (v74 == 1)
  {
    sub_224A3311C(v71, &qword_27D6F5238, &qword_224DBB1E0);
    swift_getKeyPath();
    sub_224DAB518();
    sub_224DAE4B8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
    v76 = *(sub_224DAE588() - 8);
    v77 = *(v76 + 72);
    v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    sub_224DAE578();
    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAE748();
    sub_224DAE4B8();
  }

  else
  {
    v80 = v226;
    (*(v72 + 32))(v226, v71, v73);
    swift_getKeyPath();
    sub_224DAD038();
    sub_224DAE4B8();
    swift_getKeyPath();
    v81 = sub_224DAD0B8();
    sub_224A947BC(v81);

    sub_224DAE4B8();
    swift_getKeyPath();
    v82 = sub_224DAD128();
    sub_224D79164(v82);

    sub_224DAE4B8();
    swift_getKeyPath();
    sub_224DAD058();
    sub_224DAF548();
    sub_224DAE4B8();
    (*(v72 + 8))(v80, v73);
  }

  v83 = v253;
  v84 = v230;
  v85 = *(v253 + 16);
  v225 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
  v86 = v239;
  v227 = (v253 + 16);
  v226 = v85;
  (v85)(v230, v242 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v239);
  v87 = v228;
  v88 = v247;
  v89 = v248;
  v250(v228);
  v90 = v229;
  sub_224A3796C(v75, v229, &qword_27D6F5238, &qword_224DBB1E0);
  v91 = sub_224DAB228();
  v207 = sub_224DAF278();
  if (os_log_type_enabled(v91, v207))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v254 = v93;
    *v92 = 136446722;
    swift_getKeyPath();
    swift_beginAccess();
    v94 = sub_224DAE4A8();
    if (v94)
    {
      v95 = v94;
      swift_endAccess();

      v96 = sub_224DAB528();
      v97 = MEMORY[0x22AA5D380](v95, v96);
      v99 = v98;
    }

    else
    {
      v97 = 7104878;
      swift_endAccess();

      v99 = 0xE300000000000000;
    }

    v102 = v229;
    v103 = v228;
    v104 = sub_224A33F74(v97, v99, &v254);

    *(v92 + 4) = v104;
    *(v92 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
    v88 = v247;
    v105 = sub_224DAFD28();
    v107 = v106;
    v245(v103, v88);
    v108 = sub_224A33F74(v105, v107, &v254);

    *(v92 + 14) = v108;
    *(v92 + 22) = 2082;
    v109 = sub_224DAF708();
    v111 = v110;
    sub_224A3311C(v102, &qword_27D6F5238, &qword_224DBB1E0);
    v112 = sub_224A33F74(v109, v111, &v254);

    *(v92 + 24) = v112;
    _os_log_impl(&dword_224A2F000, v91, v207, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v93, -1, -1);
    MEMORY[0x22AA5EED0](v92, -1, -1);

    v113 = v230;
    v86 = v239;
    v230 = *(v253 + 8);
    (v230)(v113, v239);
    v101 = v242;
    v75 = v252;
    v100 = v248;
  }

  else
  {

    sub_224A3311C(v90, &qword_27D6F5238, &qword_224DBB1E0);
    v245(v87, v88);
    v230 = *(v83 + 8);
    (v230)(v84, v86);
    v100 = v89;
    v101 = v242;
  }

  v114 = v233;
  (v226)(v233, v101 + v225, v86);
  v115 = v231;
  (v250)(v231, v100, v88);
  v116 = v232;
  sub_224A3796C(v75, v232, &qword_27D6F5238, &qword_224DBB1E0);
  v117 = sub_224DAB228();
  v118 = sub_224DAF278();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v254 = v120;
    *v119 = 136446722;
    swift_getKeyPath();
    v121 = v237;
    swift_beginAccess();
    v122 = sub_224DAE4A8();
    if (v122)
    {
      v123 = v122;
      swift_endAccess();

      v124 = sub_224DAE588();
      v125 = MEMORY[0x22AA5D380](v123, v124);
      v127 = v126;
    }

    else
    {
      v125 = 7104878;
      swift_endAccess();

      v127 = 0xE300000000000000;
    }

    v130 = v231;
    v131 = sub_224A33F74(v125, v127, &v254);

    *(v119 + 4) = v131;
    *(v119 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
    v132 = v247;
    v133 = sub_224DAFD28();
    v135 = v134;
    v245(v130, v132);
    v136 = sub_224A33F74(v133, v135, &v254);

    *(v119 + 14) = v136;
    *(v119 + 22) = 2082;
    v137 = v232;
    v138 = sub_224DAF708();
    v140 = v139;
    sub_224A3311C(v137, &qword_27D6F5238, &qword_224DBB1E0);
    v141 = sub_224A33F74(v138, v140, &v254);

    *(v119 + 24) = v141;
    _os_log_impl(&dword_224A2F000, v117, v118, "Using rendering schemes(s): %{public}s for key: %{public}s, modifiers: %{public}s", v119, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v120, -1, -1);
    MEMORY[0x22AA5EED0](v119, -1, -1);

    v129 = v239;
    (v230)(v233, v239);
    v101 = v242;
    v75 = v252;
    v128 = v248;
  }

  else
  {
    v128 = v100;

    sub_224A3311C(v116, &qword_27D6F5238, &qword_224DBB1E0);
    v245(v115, v88);
    (v230)(v114, v86);
    v129 = v86;
    v121 = v237;
  }

  v142 = v218;
  swift_getKeyPath();
  sub_224A3796C(v75, v142, &qword_27D6F5238, &qword_224DBB1E0);
  v143 = v238;
  if (v243(v142, 1, v238) == 1)
  {
    sub_224A3311C(v142, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD0F8();
    (*(v249 + 8))(v142, v143);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  swift_getKeyPath();
  v144 = v219;
  sub_224A3796C(v75, v219, &qword_27D6F5238, &qword_224DBB1E0);
  if (v243(v144, 1, v143) == 1)
  {
    sub_224A3311C(v144, &qword_27D6F5238, &qword_224DBB1E0);
  }

  else
  {
    sub_224DAD018();
    (*(v249 + 8))(v144, v143);
  }

  swift_beginAccess();
  sub_224DAE4B8();
  swift_endAccess();
  v145 = v220;
  sub_224A3796C(v75, v220, &qword_27D6F5238, &qword_224DBB1E0);
  if (v243(v145, 1, v143) == 1)
  {
    sub_224A3311C(v145, &qword_27D6F5238, &qword_224DBB1E0);
    v146 = v221;
LABEL_29:
    (v226)(v146, v101 + v225, v129);
    v164 = v216;
    v165 = v247;
    (v250)(v216, v128, v247);
    v166 = sub_224DAB228();
    v167 = sub_224DAF278();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = v146;
      v169 = v129;
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v255[0] = v171;
      *v170 = 136446210;
      sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
      v172 = sub_224DAFD28();
      v173 = v165;
      v175 = v174;
      v245(v164, v173);
      v176 = sub_224A33F74(v172, v175, v255);

      *(v170 + 4) = v176;
      __swift_destroy_boxed_opaque_existential_1(v171);
      MEMORY[0x22AA5EED0](v171, -1, -1);
      MEMORY[0x22AA5EED0](v170, -1, -1);

      v177 = v168;
      v178 = v169;
    }

    else
    {

      v245(v164, v165);
      v177 = v146;
      v178 = v129;
    }

    (v230)(v177, v178);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
    v179 = *(sub_224DAB558() - 8);
    v180 = *(v179 + 72);
    v181 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    v255[0] = MEMORY[0x277D84F90];
    sub_224A94F2C(&qword_281350ED8, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
    sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
    sub_224DAF788();
    swift_beginAccess();
    goto LABEL_35;
  }

  v147 = sub_224DACFE8();
  (*(v249 + 8))(v145, v143);
  v146 = v221;
  if ((v147 & 1) == 0)
  {
    goto LABEL_29;
  }

  v148 = v209;
  (v226)(v209, v101 + v225, v129);
  v149 = v208;
  v150 = v247;
  (v250)(v208, v128, v247);
  v151 = sub_224DAB228();
  v152 = sub_224DAF278();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = v148;
    v154 = v129;
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v255[0] = v156;
    *v155 = 136446210;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
    v157 = sub_224DAFD28();
    v158 = v150;
    v160 = v159;
    v245(v149, v158);
    v161 = sub_224A33F74(v157, v160, v255);

    *(v155 + 4) = v161;
    __swift_destroy_boxed_opaque_existential_1(v156);
    MEMORY[0x22AA5EED0](v156, -1, -1);
    MEMORY[0x22AA5EED0](v155, -1, -1);

    v162 = v153;
    v163 = v154;
  }

  else
  {

    v245(v149, v150);
    v162 = v148;
    v163 = v129;
  }

  (v230)(v162, v163);
  *&v253 = swift_getKeyPath();
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v182 = *(sub_224DAB558() - 8);
  v183 = *(v182 + 72);
  v184 = (*(v182 + 80) + 32) & ~*(v182 + 80);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_224DB30F0;
  v250 = (v185 + v184);
  v255[0] = MEMORY[0x277D84F90];
  sub_224A94F2C(&qword_281350ED8, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
  sub_224DAF788();
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_224DB3100;
  sub_224DAB548();
  v255[0] = v186;
  sub_224DAF788();
  swift_beginAccess();
LABEL_35:
  sub_224DAE4B8();
  swift_endAccess();
  v187 = v235;
  v188 = v224;
  sub_224DAE7B8();
  v189 = sub_224DAE7C8();
  (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
  v190 = v222;
  sub_224DAC218();
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v192 = *(v191 - 8);
  if ((*(v192 + 48))(v190, 1, v191) == 1)
  {
    sub_224A3311C(v190, &qword_27D6F56C0, &unk_224DB3580);
LABEL_39:
    v197 = 0;
    goto LABEL_40;
  }

  sub_224DAA1F8();
  v194 = v193;
  (*(v192 + 8))(v190, v191);
  if (!v194)
  {
    goto LABEL_39;
  }

  v195 = *(v242 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider + 32);
  __swift_project_boxed_opaque_existential_1((v242 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider), *(v242 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider + 24));
  v196 = v210;
  sub_224DAD4E8();

  sub_224A3311C(v188, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v196, v188, &qword_27D6F48C0, &qword_224DB8220);
  v197 = 1;
LABEL_40:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v198 = swift_allocObject();
  v253 = xmmword_224DB3100;
  *(v198 + 16) = xmmword_224DB3100;
  *(v198 + 32) = v197;
  swift_beginAccess();
  sub_224DAE4B8();
  swift_getKeyPath();
  v199 = swift_allocObject();
  *(v199 + 16) = v253;
  *(v199 + 32) = v197;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v200 = *(v223 + 72);
  v201 = (*(v223 + 80) + 32) & ~*(v223 + 80);
  v202 = swift_allocObject();
  *(v202 + 16) = v253;
  sub_224A3796C(v188, v202 + v201, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v203 = swift_allocObject();
  *(v203 + 16) = v253;
  *(v203 + 32) = v197;
  sub_224DAE4B8();
  swift_endAccess();

  sub_224A3311C(v188, &qword_27D6F48C0, &qword_224DB8220);
  (*(v240 + 8))(v215, v241);
  sub_224A3311C(v252, &qword_27D6F5238, &qword_224DBB1E0);
  (*(v213 + 8))(v212, v214);
  v204 = v234;
  v205 = v236;
  (*(v234 + 16))(v236, v121, v187);
  (*(v204 + 56))(v205, 0, 1, v187);
  return (*(v204 + 8))(v121, v187);
}

uint64_t sub_224A947BC(uint64_t a1)
{
  v33 = sub_224DAE588();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v42 = MEMORY[0x277D84F90];
  sub_224A94CBC(0, v7, 0);
  v8 = v42;
  v9 = -1 << *(a1 + 32);
  v41 = a1 + 56;
  result = sub_224DAF798();
  v11 = result;
  v12 = 0;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v32 = a1 + 64;
  v13 = v33;
  v34 = v7;
  v35 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v38 = v12;
    v40 = *(a1 + 36);
    v16 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v16 * v11, v13);
    v42 = v8;
    v17 = v13;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v39 = v19 + 1;
      sub_224A94CBC(v18 > 1, v19 + 1, 1);
      v20 = v39;
      v8 = v42;
    }

    *(v8 + 16) = v20;
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v8;
    v22 = v8 + v21 + v19 * v16;
    v23 = v3;
    result = (*(v3 + 32))(v22, v6, v17);
    v14 = 1 << *(v35 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v24 = *(v41 + 8 * v15);
    if ((v24 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    v13 = v17;
    a1 = v35;
    if (v40 != *(v35 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_224A3E204(v11, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_224A3E204(v11, v40, 0);
LABEL_19:
      v13 = v33;
    }

    v12 = v38 + 1;
    v11 = v14;
    v3 = v23;
    v8 = v39;
    if (v38 + 1 == v34)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

size_t sub_224A94AE0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_224A94CBC(size_t a1, int64_t a2, char a3)
{
  result = sub_224A94AE0(a1, a2, a3, *v3, &qword_27D6F3AF0, &qword_224DB3D80, MEMORY[0x277CE3AD8]);
  *v3 = result;
  return result;
}

void sub_224A94D14(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBD0](a1, a2, v11);
      sub_224A3B79C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_224A3B79C(0, a5, a6);
    if (sub_224DAF818() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_224DAF698();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_224DAF6A8();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_224A94F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A94F74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_224DAC268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_224A61E5C(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_224B26F48(MEMORY[0x277CF9978], &qword_27D6F7100, &qword_224DB4978);
      goto LABEL_9;
    }

    sub_224A95188(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_224A61E5C(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    *v27 = v31;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_224A95560(v16, v13, v25, a2, v26, MEMORY[0x277CF9978]);
  }
}

uint64_t sub_224A95188(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7100, &qword_224DB4978);
  v42 = a2;
  result = sub_224DAFB98();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978]);
      result = sub_224DAED88();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_224A95560(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a5[6];
  v12 = a6(0);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a5[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_224A95624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_224A61E5C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B2832C(MEMORY[0x277CF9978], &qword_27D6F3CC0, &qword_224DB4970);
      goto LABEL_7;
    }

    sub_224A95828(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_224A61E5C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_224A43AD8(v15, v12, a1, v21, MEMORY[0x277CF9978]);
      return;
    }

LABEL_15:
    sub_224DAFDD8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_224A95828(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CC0, &qword_224DB4970);
  v43 = a2;
  result = sub_224DAFB98();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_224A439BC(&qword_281350E50, MEMORY[0x277CF9978]);
      result = sub_224DAED88();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_224A95C1C(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v3;
  if ((sub_224DAF518() & 1) == 0)
  {
    goto LABEL_5;
  }

  if ([a1 isRemote])
  {
    v8 = *(v4 + 56);
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = isEscapingClosureAtFileLocation;
    v9[5] = v4;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224D9EC68;
    *(a2 + 24) = v9;
    v33 = sub_224BC4B74;
    v34 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_224A9B6F8;
    v32 = &block_descriptor_75;
    v10 = _Block_copy(&aBlock);
    v11 = a1;

    dispatch_sync(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_5:
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365120);
    v13 = a1;

    oslog = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136446210;
      aBlock = v13;
      v30 = a2;
      v31 = isEscapingClosureAtFileLocation;
      v17 = v13;

      v18 = sub_224DAEE28();
      v20 = sub_224A33F74(v18, v19, &v35);

      *(v15 + 4) = v20;
      v21 = "Ignoring staleness of timeline key without container: %{public}s";
LABEL_13:
      _os_log_impl(&dword_224A2F000, oslog, v14, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);

      return;
    }

    goto LABEL_15;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281365120);
  v23 = a1;

  oslog = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446210;
    aBlock = v23;
    v30 = a2;
    v31 = isEscapingClosureAtFileLocation;
    v24 = v23;

    v25 = sub_224DAEE28();
    v27 = sub_224A33F74(v25, v26, &v35);

    *(v15 + 4) = v27;
    v21 = "Ignoring staleness of local timeline key: %{public}s";
    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_224A96048()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A96094(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224A8B1DC();
  if (*v5)
  {
  }

  (v4)(&v8, 0);
  os_unfair_lock_unlock(*(v3 + 16));
  v6 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EF0);
  return sub_224DAB398();
}

uint64_t sub_224A961A8()
{
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364E20);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Scheduled work did change.", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224A962BC();
  }

  return result;
}

uint64_t sub_224A962BC()
{
  os_unfair_lock_assert_not_owner(*(*(v0 + 80) + 16));
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_224A9634C(v0);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_224A9634C(uint64_t a1)
{
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CF8, &unk_224DBA818);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for WorkSourceDates();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_224A96808(v24);
  v25 = *(v21 + 28);
  v26 = *(v9 + 56);
  sub_224A4FD50(v24, v12);
  v40 = v25;
  sub_224A4FD50(&v24[v25], &v12[v26]);
  v27 = *(v3 + 48);
  if (v27(v12, 1, v2) == 1)
  {
    if (v27(&v12[v26], 1, v2) == 1)
    {
      (*(v3 + 56))(v19, 1, 1, v2);
    }

    else
    {
      (*(v3 + 32))(v19, &v12[v26], v2);
      (*(v3 + 56))(v19, 0, 1, v2);
    }

    v30 = 0;
  }

  else
  {
    sub_224A4FD50(v12, v17);
    v28 = v27(&v12[v26], 1, v2);
    v29 = *(v3 + 32);
    if (v28 == 1)
    {
      (v29)(v19, v17, v2);
      v30 = 1;
      (*(v3 + 56))(v19, 0, 1, v2);
      sub_224A3311C(&v12[v26], &qword_27D6F32B0, &qword_224DB3EA0);
    }

    else
    {
      (v29)(v39, v17, v2);
      v31 = v38;
      v29();
      sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578]);
      v32 = v31;
      v33 = v39;
      if (sub_224DAEDB8())
      {
        v34 = v32;
      }

      else
      {
        v34 = v33;
      }

      v35 = v33;
      (*(v3 + 16))(v19, v34, v2);
      (*(v3 + 56))(v19, 0, 1, v2);
      v30 = sub_224DA9798();
      v36 = *(v3 + 8);
      v36(v32, v2);
      v36(v35, v2);
    }
  }

  sub_224A3311C(v12, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A99480(v19);
  sub_224A99F50(&v24[v40]);
  sub_224A9BE24(v30 & 1);
  sub_224A3311C(v19, &qword_27D6F32B0, &qword_224DB3EA0);
  return sub_224A980D8(v24);
}

uint64_t sub_224A96808@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D00, &unk_224DBA828);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v33 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - v19;
  v21 = *(v1 + 24);
  v22 = sub_224DA9878();
  v23 = *(*(v22 - 8) + 56);
  v23(v16, 1, 1, v22);
  v23(v13, 1, 1, v22);
  v24 = *(v2 + 48);
  sub_224A44E4C(v16, v6, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A44E4C(v13, &v6[v24], &qword_27D6F32B0, &qword_224DB3EA0);
  v25 = *(v21 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v21 + 32;
    while (v26 < *(v21 + 16))
    {
      sub_224A3317C(v27, v35);
      sub_224A96B80(v6, v35);
      ++v26;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v27 += 40;
      if (v25 == v26)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    __swift_destroy_boxed_opaque_existential_1(v35);
    result = sub_224A3311C(v6, &qword_27D6F4D00, &unk_224DBA828);
    __break(1u);
  }

  else
  {
LABEL_5:
    sub_224A44E4C(v6, v8, &qword_27D6F4D00, &unk_224DBA828);
    v28 = *(v2 + 48);
    sub_224A44E4C(v8, v20, &qword_27D6F32B0, &qword_224DB3EA0);
    v29 = v33;
    sub_224A44E4C(&v8[v28], v33, &qword_27D6F32B0, &qword_224DB3EA0);
    v30 = v34;
    sub_224A44E4C(v20, v34, &qword_27D6F32B0, &qword_224DB3EA0);
    v31 = type metadata accessor for WorkSourceDates();
    return sub_224A44E4C(v29, v30 + *(v31 + 20), &qword_27D6F32B0, &qword_224DB3EA0);
  }

  return result;
}

uint64_t type metadata accessor for WorkSourceDates()
{
  result = qword_28135B200;
  if (!qword_28135B200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A96B80(uint64_t a1, void *a2)
{
  v72 = sub_224DA9878();
  v78 = *(v72 - 8);
  v4 = *(v78 + 64);
  v5 = MEMORY[0x28223BE20](v72);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v66 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CF8, &unk_224DBA818);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v70 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v66 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  v73 = type metadata accessor for WorkSourceDates();
  v29 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  (*(v33 + 16))(v32, v33);
  v74 = v12;
  v34 = *(v12 + 48);
  v35 = v72;
  v36 = v31;
  v37 = v78;
  v79 = v36;
  sub_224A4FD50(v36, v17);
  sub_224A4FD50(a1, &v17[v34]);
  v38 = *(v37 + 48);
  v39 = v38(v17, 1, v35);
  v76 = v28;
  if (v39 == 1)
  {
    sub_224A4FD50(a1, v28);
    sub_224A3311C(&v17[v34], &qword_27D6F32B0, &qword_224DB3EA0);
  }

  else
  {
    v71 = a1;
    sub_224A4FD50(v17, v26);
    if (v38(&v17[v34], 1, v35) == 1)
    {
      (*(v37 + 8))(v26, v35);
      if (v38(&v17[v34], 1, v35) != 1)
      {
        goto LABEL_26;
      }

      sub_224A4FD50(v79, v76);
    }

    else
    {
      v40 = *(v37 + 32);
      v41 = v66;
      v40(v66, v26, v35);
      v42 = v67;
      v40(v67, &v17[v34], v35);
      sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578]);
      v43 = sub_224DAEDB8();
      v44 = v78;
      v45 = (v43 & 1) == 0;
      if (v43)
      {
        v46 = v41;
      }

      else
      {
        v46 = v42;
      }

      if (!v45)
      {
        v41 = v42;
      }

      (*(v78 + 8))(v46, v35);
      v47 = v76;
      v40(v76, v41, v35);
      (*(v44 + 56))(v47, 0, 1, v35);
    }

    a1 = v71;
  }

  sub_224A3311C(v17, &qword_27D6F32B0, &qword_224DB3EA0);
  v48 = *(v73 + 20);
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D00, &unk_224DBA828) + 48);
  v50 = *(v74 + 48);
  v51 = v77;
  sub_224A4FD50(v79 + v48, v77);
  sub_224A4FD50(a1 + v49, v51 + v50);
  if (v38(v51, 1, v35) == 1)
  {
    sub_224A980D8(v79);
    v52 = v75;
    sub_224A4FD50(a1 + v49, v75);
    sub_224A3311C(v51 + v50, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_25:
    v64 = v76;
    sub_224A3311C(v51, &qword_27D6F32B0, &qword_224DB3EA0);
    sub_224A4C6AC(v64, a1);
    return sub_224A4C6AC(v52, a1 + v49);
  }

  v53 = v70;
  sub_224A4FD50(v51, v70);
  if (v38((v51 + v50), 1, v35) != 1)
  {
    v56 = v78;
    v71 = a1;
    v57 = *(v78 + 32);
    v58 = v68;
    v57(v68, v53, v35);
    v59 = v69;
    v57(v69, v77 + v50, v35);
    v60 = v57;
    sub_224AA686C(&qword_281351A40, MEMORY[0x277CC9578]);
    v61 = sub_224DAEDB8();
    sub_224A980D8(v79);
    if (v61)
    {
      v62 = v58;
    }

    else
    {
      v62 = v59;
    }

    if (v61)
    {
      v63 = v59;
    }

    else
    {
      v63 = v58;
    }

    (*(v56 + 8))(v62, v35);
    v52 = v75;
    v60(v75, v63, v35);
    v51 = v77;
    a1 = v71;
    (*(v56 + 56))(v52, 0, 1, v35);
    goto LABEL_25;
  }

  (*(v78 + 8))(v53, v35);
  if (v38((v51 + v50), 1, v35) == 1)
  {
    v54 = v79;
    v55 = v79 + v48;
    v52 = v75;
    sub_224A4FD50(v55, v75);
    sub_224A980D8(v54);
    goto LABEL_25;
  }

LABEL_26:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224A97318@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v4 = *(v1 + 24);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = *(v3 + 16);

  os_unfair_lock_unlock(v5);
  sub_224A973A0(v4, a1);
}

uint64_t sub_224A973A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for ExtensionTask.Identifier(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AD0, &qword_224DB9950);
  v10 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AD8, qword_224DB9958);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v103 - v15;
  v17 = sub_224DA9878();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = MEMORY[0x28223BE20](v17);
  v104 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v103 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v103 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v109 = &v103 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v103 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - v31;
  sub_224DA9868();
  v33 = *(v13 + 56);
  sub_224DA9748();
  v126 = v16;
  v115 = v33;
  *&v16[v33] = 0;
  v106 = v26;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    type metadata accessor for ExtensionTask(0);
    sub_224A98090(&qword_28135B9E8, type metadata accessor for ExtensionTask);
    sub_224DAF1F8();
    a1 = v128[3];
    v34 = v128[4];
    v35 = v128[5];
    v36 = v128[6];
    v37 = v128[7];
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v34 = a1 + 56;
    v35 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(a1 + 56);

    v37 = v41;
    v36 = 0;
  }

  v121 = 0;
  v108 = v35;
  v119 = (v35 + 64) >> 6;
  v117 = (v18 + 32);
  v42 = (v18 + 16);
  v111 = v18;
  v114 = (v18 + 40);
  v123 = v17;
  v43 = v118;
  v113 = v34;
  v112 = v9;
  do
  {
    v122 = v36;
    if (a1 < 0)
    {
      v124 = v37;
      v48 = sub_224DAF878();
      if (!v48)
      {
        break;
      }

      v127 = v48;
      type metadata accessor for ExtensionTask(0);
      swift_dynamicCast();
      v47 = v128[0];
      v125 = v124;
      if (!v128[0])
      {
        break;
      }
    }

    else
    {
      v45 = v36;
      v46 = v37;
      if (!v37)
      {
        while (1)
        {
          v36 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v36 >= v119)
          {
            v124 = 0;
            goto LABEL_27;
          }

          v46 = *(v34 + 8 * v36);
          ++v45;
          if (v46)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_14:
      v124 = v37;
      v125 = ((v46 - 1) & v46);
      v47 = *(*(a1 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v46)))));
      if (!v47)
      {
        break;
      }
    }

    sub_224A4152C(v47 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v9, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    if ((*(*(v49 - 8) + 48))(v9, 1, v49) == 1)
    {
      (*v42)(v43, v32, v17);
    }

    else
    {
      (*v117)(v43, v9, v17);
    }

    *(v43 + *(v120 + 48)) = v47;
    v50 = v47;
    if (sub_224DA9798())
    {
      sub_224A98090(&qword_281351A40, MEMORY[0x277CC9578]);
      v51 = v123;
      if (sub_224DAEDC8())
      {
        v52 = v32;
      }

      else
      {
        v52 = v43;
      }

      v53 = v116;
      (*v42)(v116, v52, v51);
      v54 = a1;
      v55 = v42;
      v56 = v32;
      v57 = *v114;
      v58 = v50;
      v59 = v53;
      v34 = v113;
      v57(v126, v59, v51);
      v32 = v56;
      v42 = v55;
      a1 = v54;
      v9 = v112;
      v43 = v118;
      v60 = v126;

      *&v60[v115] = v47;
      v121 = v47;
    }

    v44 = sub_224DA97E8();

    sub_224A3311C(v43, &qword_27D6F4AD0, &qword_224DB9950);
    v17 = v123;
    v37 = v125;
  }

  while ((v44 & 1) == 0);
LABEL_27:
  v107 = v32;
  sub_224A3B7E4();
  v61 = v109;
  sub_224DA9748();
  sub_224A98090(&qword_281351A38, MEMORY[0x277CC9578]);
  v62 = sub_224DAEDD8();
  v9 = v111;
  v36 = *(v111 + 1);
  (v36)(v61, v17);
  if (v62)
  {
    if (qword_281351498 == -1)
    {
LABEL_29:
      v63 = sub_224DAB258();
      __swift_project_value_buffer(v63, qword_281364E20);
      v64 = sub_224DAB228();
      v65 = sub_224DAF2A8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_224A2F000, v64, v65, "Skipping next scheduled wake task - next date is distant future.", v66, 2u);
        v67 = v66;
        v17 = v123;
        MEMORY[0x22AA5EED0](v67, -1, -1);
      }

      (v36)(v107, v17);
      v68 = *(v9 + 7);
      v69 = v110;
      v68(v110, 1, 1, v17);
      v70 = type metadata accessor for WorkSourceDates();
      v68(v69 + *(v70 + 20), 1, 1, v17);
      v71 = v126;
      return sub_224A3311C(v71, &qword_27D6F4AD8, qword_224DB9958);
    }

LABEL_51:
    swift_once();
    goto LABEL_29;
  }

  v125 = v42;
  sub_224DA9808();
  v72 = v106;
  sub_224DA9768();
  (v36)(v61, v17);
  if (qword_281351498 != -1)
  {
    swift_once();
  }

  v73 = sub_224DAB258();
  __swift_project_value_buffer(v73, qword_281364E20);
  v74 = sub_224DAB228();
  v75 = sub_224DAF278();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v128[0] = v124;
    *v76 = 136446466;
    if (v121)
    {
      v77 = v103;
      sub_224A4152C(v121 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v103, type metadata accessor for ExtensionTask.Identifier);
      v78 = sub_224A40C80();
      v80 = v79;
      sub_224A48F3C(v77);
    }

    else
    {
      v80 = 0xE400000000000000;
      v78 = 1701736302;
    }

    v81 = sub_224A33F74(v78, v80, v128);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2082;
    v82 = v126;
    swift_beginAccess();
    v83 = v123;
    (*v125)(v61, v82, v123);
    if (qword_281351A50 != -1)
    {
      swift_once();
    }

    v84 = qword_281351A58;
    v85 = sub_224DA9778();
    v86 = [v84 stringFromDate_];

    v87 = sub_224DAEE18();
    v89 = v88;

    (v36)(v61, v83);
    v90 = sub_224A33F74(v87, v89, v128);

    *(v76 + 14) = v90;
    _os_log_impl(&dword_224A2F000, v74, v75, "Earliest date from Task(%{public}s: - %{public}s", v76, 0x16u);
    v91 = v124;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v91, -1, -1);
    MEMORY[0x22AA5EED0](v76, -1, -1);

    v71 = v126;
    v17 = v83;
    v9 = v111;
    v72 = v106;
  }

  else
  {

    v71 = v126;
  }

  swift_beginAccess();
  v92 = v104;
  (*(v9 + 2))(v104, v71, v17);
  sub_224A98090(&qword_281351A40, MEMORY[0x277CC9578]);
  v93 = sub_224DAEDC8();
  (v36)(v107, v17);
  if (v93)
  {
    v94 = v72;
  }

  else
  {
    v94 = v92;
  }

  if (v93)
  {
    v95 = v92;
  }

  else
  {
    v95 = v72;
  }

  (v36)(v94, v17);
  v96 = *(v9 + 4);
  v97 = v105;
  v96(v105, v95, v17);
  v98 = *(v9 + 7);
  v99 = v110;
  v98(v110, 1, 1, v17);
  v100 = v17;
  v101 = *(type metadata accessor for WorkSourceDates() + 20);
  v96((v99 + v101), v97, v100);
  v98(v99 + v101, 0, 1, v100);
  return sub_224A3311C(v71, &qword_27D6F4AD8, qword_224DB9958);
}

uint64_t sub_224A98090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A980D8(uint64_t a1)
{
  v2 = type metadata accessor for WorkSourceDates();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224A98134@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_224DA9878();
  v8 = *(*(v7 - 8) + 56);
  v8(a1, 1, 1, v7);
  v9 = *(type metadata accessor for WorkSourceDates() + 20);
  v8(a1 + v9, 1, 1, v7);
  v10 = *(v1 + 16);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  sub_224A982B4(0, "Earliest nonwaking date from work %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", v6);
  sub_224A4C6AC(v6, a1);
  sub_224A982B4(1, "Earliest waking date from work %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", v6);
  sub_224A4C6AC(v6, a1 + v9);
  os_unfair_lock_unlock(*(v10 + 16));
}

uint64_t sub_224A982B4@<X0>(int a1@<W0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v91 = a3;
  v5 = sub_224DA9878();
  v92 = *(v5 - 8);
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v80 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v80 - v17;
  v19 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v80 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v80 - v28;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  sub_224A98B1C(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_224A99418(v18);
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281364E20);
    v31 = sub_224DAB228();
    v32 = sub_224DAF2A8();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v92;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224A2F000, v31, v32, "No wake work scheduled", v35, 2u);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    v36 = 1;
    v37 = v91;
  }

  else
  {
    sub_224C1798C(v18, v29);
    v38 = *(v19 + 20);
    sub_224DA9808();
    sub_224C179F0();
    if (sub_224DAEDC8())
    {
      v34 = v92;
      v39 = v90;
      (*(v92 + 32))(v90, v13, v5);
    }

    else
    {
      v34 = v92;
      (*(v92 + 8))(v13, v5);
      v40 = &v29[v38];
      v39 = v90;
      (*(v34 + 16))(v90, v40, v5);
    }

    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v41 = sub_224DAB258();
    __swift_project_value_buffer(v41, qword_281364E20);
    sub_224C17A48(v29, v27, type metadata accessor for SimpleWorkScheduler.Work);
    sub_224C17A48(v29, v24, type metadata accessor for SimpleWorkScheduler.Work);
    v85 = v27;
    v42 = *(v34 + 16);
    v43 = v88;
    v42(v88, v39, v5);
    v86 = v29;
    v44 = v43;
    v45 = v89;
    v42(v89, v39, v5);
    v46 = sub_224DAB228();
    v47 = sub_224DAF2A8();
    if (os_log_type_enabled(v46, v47))
    {
      v83 = v47;
      v84 = v46;
      v81 = v5;
      v48 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v93 = v82;
      *v48 = 136446978;
      v49 = *(v19 + 20);
      v50 = type metadata accessor for WorkScheduleRequest(0);
      v51 = v85;
      v52 = &v85[v49 + *(v50 + 24)];
      v53 = *v52;
      v54 = v52[1];

      sub_224C17AB0(v51, type metadata accessor for SimpleWorkScheduler.Work);
      v55 = sub_224A33F74(v53, v54, &v93);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2082;
      if (qword_27D6F2CE0 != -1)
      {
        swift_once();
      }

      v56 = *(v19 + 20);
      v57 = qword_27D6F52C8;
      v58 = sub_224DA9778();
      v59 = [v57 stringFromDate_];

      v60 = sub_224DAEE18();
      v62 = v61;

      sub_224C17AB0(v24, type metadata accessor for SimpleWorkScheduler.Work);
      v63 = sub_224A33F74(v60, v62, &v93);

      *(v48 + 14) = v63;
      *(v48 + 22) = 2082;
      v64 = qword_27D6F52C8;
      v65 = sub_224DA9778();
      v66 = [v64 stringFromDate_];

      v67 = sub_224DAEE18();
      v69 = v68;

      v70 = v92;
      v71 = *(v92 + 8);
      v5 = v81;
      v71(v44, v81);
      v72 = sub_224A33F74(v67, v69, &v93);

      *(v48 + 24) = v72;
      *(v48 + 32) = 2050;
      v73 = v89;
      sub_224DA97B8();
      v75 = v74;
      v71(v73, v5);
      v34 = v70;
      *(v48 + 34) = v75;
      v76 = v84;
      _os_log_impl(&dword_224A2F000, v84, v83, v87, v48, 0x2Au);
      v77 = v82;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v77, -1, -1);
      MEMORY[0x22AA5EED0](v48, -1, -1);

      sub_224C17AB0(v86, type metadata accessor for SimpleWorkScheduler.Work);
      v39 = v90;
    }

    else
    {

      v78 = *(v34 + 8);
      v78(v45, v5);
      v78(v44, v5);
      sub_224C17AB0(v24, type metadata accessor for SimpleWorkScheduler.Work);
      sub_224C17AB0(v85, type metadata accessor for SimpleWorkScheduler.Work);
      sub_224C17AB0(v86, type metadata accessor for SimpleWorkScheduler.Work);
    }

    v37 = v91;
    (*(v34 + 32))(v91, v39, v5);
    v36 = 0;
  }

  return (*(v34 + 56))(v37, v36, 1, v5);
}

uint64_t sub_224A98B1C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v61 = a2;
  v3 = sub_224DA9878();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v62 = *(v7 - 1);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v56 - v20);
  v22 = type metadata accessor for WorkScheduleRequest(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  swift_beginAccess();
  if (!*(*(v2 + 24) + 16))
  {
    return (*(v62 + 56))(v61, 1, 1, v7);
  }

  v56 = v19;
  v57 = v6;
  v58 = v3;
  sub_224DA9748();
  v25[*(v22 + 20)] = 1;
  v65 = v22;
  v26 = &v25[*(v22 + 24)];
  *v26 = 0x6B726F77206F4ELL;
  *(v26 + 1) = 0xE700000000000000;
  sub_224C17A48(v25, v21 + v7[5], type metadata accessor for WorkScheduleRequest);
  *v21 = 0;
  v27 = (v21 + v7[6]);
  *v27 = nullsub_1;
  v27[1] = 0;
  v28 = (v21 + v7[7]);
  *v28 = nullsub_1;
  v28[1] = 0;
  v29 = *(v2 + 24);
  sub_224C17A48(v21, v16, type metadata accessor for SimpleWorkScheduler.Work);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v66 = v29;
  result = swift_bridgeObjectRetain_n();
  v36 = 0;
  v64 &= 1u;
  v37 = v62;
  v60 = v25;
  if (v33)
  {
    goto LABEL_13;
  }

  while (1)
  {
LABEL_14:
    v48 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      return result;
    }

    if (v48 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v48);
    ++v36;
    if (v33)
    {
      while (1)
      {
        v49 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_224C17A48(*(v66 + 56) + *(v37 + 72) * (v49 | (v48 << 6)), v13, type metadata accessor for SimpleWorkScheduler.Work);
        if (v13[v7[5] + *(v65 + 20)] == v64)
        {
          v38 = sub_224DA9798();
          v39 = (v38 & 1) == 0;
          if (v38)
          {
            v40 = v16;
          }

          else
          {
            v40 = v13;
          }

          v41 = v21;
          v42 = v37;
          v43 = v7;
          if (v39)
          {
            v44 = v16;
          }

          else
          {
            v44 = v13;
          }

          sub_224C17AB0(v40, type metadata accessor for SimpleWorkScheduler.Work);
          v45 = v44;
          v7 = v43;
          v37 = v42;
          v21 = v41;
          v46 = v63;
          sub_224C1798C(v45, v63);
          v47 = v46;
          v25 = v60;
          result = sub_224C1798C(v47, v16);
          v36 = v48;
          if (!v33)
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_224C17AB0(v13, type metadata accessor for SimpleWorkScheduler.Work);
          v36 = v48;
          if (!v33)
          {
            goto LABEL_14;
          }
        }

LABEL_13:
        v48 = v36;
      }
    }
  }

  v50 = v56;
  sub_224C1798C(v16, v56);

  v51 = v37;
  v52 = v7[5];
  v53 = v57;
  sub_224DA9748();
  LOBYTE(v52) = sub_224DA9798();
  (*(v59 + 8))(v53, v58);
  sub_224C17AB0(v21, type metadata accessor for SimpleWorkScheduler.Work);
  sub_224C17AB0(v25, type metadata accessor for WorkScheduleRequest);
  v54 = (v51 + 56);
  if (v52)
  {
    v55 = v61;
    sub_224C1798C(v50, v61);
    return (*v54)(v55, 0, 1, v7);
  }

  else
  {
    sub_224C17AB0(v50, type metadata accessor for SimpleWorkScheduler.Work);
    return (*v54)(v61, 1, 1, v7);
  }
}

uint64_t sub_224A990E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkScheduleRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224A991B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DA9878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224A99284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkScheduleRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_224A99358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224A99418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224A99480(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - v5;
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  os_unfair_lock_assert_owner(*(v1[10] + 16));
  if (v1[6])
  {
    v18 = v1[7];
    sub_224A4FD50(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v6, &qword_27D6F32B0, &qword_224DB3EA0);
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281364E20);
      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v18;
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_224A2F000, v20, v21, "Cancelling nonwaking work", v23, 2u);
        v24 = v23;
        v18 = v22;
        MEMORY[0x22AA5EED0](v24, -1, -1);
      }
    }

    else
    {
      v49 = v18;
      (*(v8 + 32))(v17, v6, v7);
      v25 = qword_281351498;
      swift_unknownObjectRetain();
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281364E20);
      v27 = *(v8 + 16);
      v27(v15, v17, v7);
      v27(v12, v17, v7);
      v28 = sub_224DAB228();
      v29 = sub_224DAF2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v46 = v29;
        v47 = v28;
        v48 = a1;
        v30 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v30 = 136446466;
        if (qword_28135C420 != -1)
        {
          swift_once();
        }

        v31 = qword_28135C428;
        v32 = sub_224DA9778();
        v33 = [v31 stringFromDate_];

        v34 = sub_224DAEE18();
        v36 = v35;

        v37 = *(v8 + 8);
        v37(v15, v7);
        v38 = sub_224A33F74(v34, v36, &v50);

        *(v30 + 4) = v38;
        *(v30 + 12) = 2050;
        sub_224DA97B8();
        v40 = v39;
        v37(v12, v7);
        *(v30 + 14) = v40;
        v41 = v47;
        _os_log_impl(&dword_224A2F000, v47, v46, "Scheduling nonwaking work for: %{public}s in %{public}fs", v30, 0x16u);
        v42 = v45;
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x22AA5EED0](v42, -1, -1);
        MEMORY[0x22AA5EED0](v30, -1, -1);

        v37(v17, v7);
        a1 = v48;
        v18 = v49;
      }

      else
      {

        v43 = *(v8 + 8);
        v43(v12, v7);
        v43(v15, v7);
        v43(v17, v7);
        v18 = v49;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v18 + 32))(a1, ObjectType, v18);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_224A999E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_224A4FD50(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_224BB1770(v8);
  }

  v35 = v2;
  v33 = *(v10 + 32);
  v33(v15, v8, v9);
  v18 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v19 = sub_224DAEDE8();
  v20 = [v18 initWithIdentifier_];

  v21 = *(a1 + 16);
  *(a1 + 16) = v20;

  sub_224DA9808();
  sub_224DA9758();
  v23 = v22;
  v34 = *(v10 + 8);
  result = v34(v13, v9);
  v32 = *(a1 + 16);
  if (v32)
  {
    if (v23 < 0.0)
    {
      v23 = 1.0;
    }

    v31 = *(a1 + 32);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v13, v15, v9);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v33((v26 + v25), v13, v9);
    aBlock[4] = sub_224AA51E4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = &block_descriptor_34;
    v27 = _Block_copy(aBlock);
    v28 = v32;
    v29 = v31;

    [v28 scheduleWithFireInterval:v29 leewayInterval:v27 queue:v23 handler:0.0];
    _Block_release(v27);

    return v34(v15, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224A99DC4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A99DFC()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A99EC0(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_224A999E4(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

void sub_224A99F50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - v5;
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  os_unfair_lock_assert_owner(*(v1[10] + 16));
  if (v1[4])
  {
    v18 = v1[5];
    sub_224A4FD50(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_224A3311C(v6, &qword_27D6F32B0, &qword_224DB3EA0);
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281364E20);
      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v18;
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_224A2F000, v20, v21, "Cancelling waking work", v23, 2u);
        v24 = v23;
        v18 = v22;
        MEMORY[0x22AA5EED0](v24, -1, -1);
      }
    }

    else
    {
      v49 = v18;
      (*(v8 + 32))(v17, v6, v7);
      v25 = qword_281351498;
      swift_unknownObjectRetain();
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281364E20);
      v27 = *(v8 + 16);
      v27(v15, v17, v7);
      v27(v12, v17, v7);
      v28 = sub_224DAB228();
      v29 = sub_224DAF2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v46 = v29;
        v47 = v28;
        v48 = a1;
        v30 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v30 = 136446466;
        if (qword_28135C420 != -1)
        {
          swift_once();
        }

        v31 = qword_28135C428;
        v32 = sub_224DA9778();
        v33 = [v31 stringFromDate_];

        v34 = sub_224DAEE18();
        v36 = v35;

        v37 = *(v8 + 8);
        v37(v15, v7);
        v38 = sub_224A33F74(v34, v36, &v50);

        *(v30 + 4) = v38;
        *(v30 + 12) = 2050;
        sub_224DA97B8();
        v40 = v39;
        v37(v12, v7);
        *(v30 + 14) = v40;
        v41 = v47;
        _os_log_impl(&dword_224A2F000, v47, v46, "Scheduling waking work for: %{public}s in %{public}fs", v30, 0x16u);
        v42 = v45;
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x22AA5EED0](v42, -1, -1);
        MEMORY[0x22AA5EED0](v30, -1, -1);

        v37(v17, v7);
        a1 = v48;
        v18 = v49;
      }

      else
      {

        v43 = *(v8 + 8);
        v43(v12, v7);
        v43(v15, v7);
        v43(v17, v7);
        v18 = v49;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v18 + 32))(a1, ObjectType, v18);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_224A9A4B8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v78[-v5];
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v91 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v78[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v78[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v78[-v20];
  v89 = v22;
  MEMORY[0x28223BE20](v19);
  v24 = &v78[-v23];
  v25 = type metadata accessor for PushFoundation.KeepAliveTransaction();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = PushFoundation.KeepAliveTransaction.init(reason:)(0x68637320656B6177, 0xEF676E696C756465);
  [*(a1 + 16) invalidate];
  v29 = *(a1 + 16);
  v94 = a1;
  *(a1 + 16) = 0;

  sub_224A4FD50(v93, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224BB1770(v6);
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281364E20);
    v31 = sub_224DAB228();
    v32 = sub_224DAF2A8();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v94;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224A2F000, v31, v32, "Skipping next scheduled wake task - next date is nil", v35, 2u);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }
  }

  else
  {
    v88 = v28;
    v83 = *(v8 + 32);
    v84 = v8 + 32;
    v83(v24, v6, v7);
    sub_224DA9808();
    sub_224DA9768();
    v36 = v8 + 8;
    v93 = *(v8 + 8);
    v93(v18, v7);
    sub_224A9BB34(&qword_281351A40, MEMORY[0x277CC9578]);
    v37 = sub_224DAEDC8();
    v85 = v8;
    v40 = *(v8 + 16);
    v39 = v8 + 16;
    v38 = v40;
    if (v37)
    {
      v41 = v21;
    }

    else
    {
      v41 = v24;
    }

    v42 = v92;
    v38(v92, v41, v7);
    v87 = v21;
    v82 = v18;
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v43 = sub_224DAB258();
    __swift_project_value_buffer(v43, qword_281364E20);
    v44 = v90;
    v38(v90, v42, v7);
    v45 = v91;
    v81 = v39;
    v80 = v38;
    v38(v91, v42, v7);
    v46 = sub_224DAB228();
    v47 = sub_224DAF2A8();
    v48 = os_log_type_enabled(v46, v47);
    v86 = v24;
    if (v48)
    {
      v79 = v47;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136446466;
      if (qword_281358D20 != -1)
      {
        swift_once();
      }

      v51 = qword_281358D28;
      v52 = v90;
      v53 = sub_224DA9778();
      v54 = [v51 stringFromDate_];

      v55 = sub_224DAEE18();
      v57 = v56;

      v58 = v93;
      v93(v52, v7);
      v59 = sub_224A33F74(v55, v57, aBlock);

      *(v49 + 4) = v59;
      *(v49 + 12) = 2050;
      v60 = v91;
      sub_224DA97B8();
      v62 = v61;
      v58(v60, v7);
      *(v49 + 14) = v62;
      _os_log_impl(&dword_224A2F000, v46, v79, "Scheduling waking task for adjusted date: %{public}s in %{public}fs", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v49, -1, -1);

      v34 = v94;
      v42 = v92;
    }

    else
    {

      v63 = v93;
      v93(v45, v7);
      v63(v44, v7);
      v34 = v94;
    }

    v94 = v36;
    v64 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
    v65 = sub_224DAEDE8();
    v66 = [v64 initWithIdentifier_];

    v67 = *(v34 + 16);
    *(v34 + 16) = v66;
    v68 = v66;

    [v68 setQualityOfService_];
    [v68 setRepeats_];
    sub_224DA97B8();
    [v68 setInterval_];
    [v68 setTolerance_];
    [v68 interval];
    v69 = v85;
    if (v70 < 0.0)
    {
      [v68 setInterval_];
    }

    v71 = swift_allocObject();
    swift_weakInit();
    v72 = v82;
    v80(v82, v42, v7);
    v73 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    v83((v74 + v73), v72, v7);
    aBlock[4] = sub_224CBEE64;
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224CBEAD4;
    aBlock[3] = &block_descriptor_43;
    v75 = _Block_copy(aBlock);

    [v68 scheduleWithBlock_];
    _Block_release(v75);

    v76 = v93;
    v93(v42, v7);
    v76(v87, v7);
    v76(v86, v7);
    v28 = v88;
  }

  sub_224A9BB7C(v34, v28);
}

uint64_t sub_224A9AD8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A9ADC4()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A9AE88(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_224A9A4B8(v1, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t type metadata accessor for PushFoundation.KeepAliveTransaction()
{
  result = qword_28135B6B0;
  if (!qword_28135B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PushFoundation.KeepAliveTransaction.init(reason:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_224DAB7B8();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_224DAB848();
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB258();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  *(v3 + 2) = 0;
  *(v3 + 4) = a1;
  *(v3 + 5) = a2;

  sub_224DAB248();
  v20 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  (*(v13 + 32))(&v3[OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger], v19, v12);
  (*(v13 + 16))(v17, &v3[v20], v12);

  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  v23 = os_log_type_enabled(v21, v22);
  v48 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v41 = a2;
    v25 = v6;
    v26 = a1;
    v27 = v24;
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136446210;
    v29 = v26;
    v6 = v25;
    a2 = v41;
    *(v27 + 4) = sub_224A33F74(v29, v41, &aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Acquiring keep-alive with reason: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  (*(v13 + 8))(v17, v12);
  sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
  if (qword_28135B6D0 != -1)
  {
    swift_once();
  }

  v41 = qword_28135B6E0;
  *(v3 + 3) = sub_224DAF458();
  swift_getObjectType();
  v30 = swift_allocObject();
  v31 = v48;
  v30[2] = v3;
  v30[3] = v31;
  v30[4] = a2;
  v30[5] = v6;
  v32 = v6;
  v53 = sub_224AD663C;
  v54 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_224A39F40;
  v52 = &block_descriptor_4;
  v33 = _Block_copy(&aBlock);

  v34 = v42;
  sub_224DAB7E8();
  v35 = v44;
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v33);
  (*(v46 + 8))(v35, v47);
  (*(v43 + 8))(v34, v45);

  v36 = *(v3 + 3);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_224DAF488();
  swift_unknownObjectRelease();
  v37 = swift_allocObject();
  v37[2] = v3;
  v37[3] = v31;
  v37[4] = a2;
  v37[5] = v32;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_224A9B720;
  *(v38 + 24) = v37;
  v53 = sub_224A8A840;
  v54 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_224A9B6F8;
  v52 = &block_descriptor_9;
  v39 = _Block_copy(&aBlock);

  dispatch_sync(v41, v39);
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A9B5C8()
{
  sub_224DAB7B8();
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  return sub_224DAF788();
}

uint64_t sub_224A9B6A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_224A9B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_27D6F3448)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_224DAEE48();
    v7 = os_transaction_create();

    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    swift_unknownObjectRelease();
    if (qword_28135B6E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = off_28135B6F0;
    if (*(off_28135B6F0 + 2) && (v10 = sub_224A3A40C(a2, a3), (v11 & 1) != 0))
    {
      v12 = *(v9[7] + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    swift_endAccess();
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = off_28135B6F0;
      off_28135B6F0 = 0x8000000000000000;
      sub_224A9B9CC(v12 + 1, a2, a3, isUniquelyReferenced_nonNull_native);
      off_28135B6F0 = v22;
      swift_endAccess();
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;

        v18 = sub_224DAECF8();
        v20 = v19;

        v21 = sub_224A33F74(v18, v20, &v23);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_224A2F000, v14, v15, "Keep-alive reasons: %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x22AA5EED0](v17, -1, -1);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }
    }
  }
}

unint64_t sub_224A9B9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_224A3A40C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_224AA68E4(v16, a4 & 1);
      v20 = *v5;
      result = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_224B2572C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_224A9BB34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A9BB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB7B8();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB848();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  aBlock[4] = sub_224A9C080;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_21;
  v13 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v18 = MEMORY[0x277D84F90];
  sub_224A9BB34(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v11, v7, v13);
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

void sub_224A9BE24(char a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v2 + 80) + 16));
  v4 = *(v2 + 72);
  if (a1)
  {
    if (!v4)
    {
      if (qword_281351498 != -1)
      {
        swift_once();
      }

      v5 = sub_224DAB258();
      __swift_project_value_buffer(v5, qword_281364E20);
      v6 = sub_224DAB228();
      v7 = sub_224DAF2A8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_224A2F000, v6, v7, "Acquiring keep-alive", v8, 2u);
        MEMORY[0x22AA5EED0](v8, -1, -1);
      }

      v9 = type metadata accessor for PushFoundation.KeepAliveTransaction();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      v12 = PushFoundation.KeepAliveTransaction.init(reason:)(0x616E614D656B6157, 0xEB00000000726567);
      v13 = *(v2 + 72);
      *(v2 + 72) = v12;
      if (v13)
      {

        sub_224A9C084();

LABEL_17:
      }
    }
  }

  else if (v4)
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364E20);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224A2F000, v15, v16, "Releasing keep-alive", v17, 2u);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    if (*(v2 + 72))
    {
      v18 = *(v2 + 72);

      sub_224A9C084();

      v19 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v19)
      {
        sub_224A9C084();
        goto LABEL_17;
      }
    }
  }
}

uint64_t sub_224A9C084()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v0[2] = 0;
  swift_unknownObjectRelease();
  v4 = v0[3];
  swift_getObjectType();
  sub_224DAF478();

  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_224A33F74(v1[4], v1[5], v15);
    _os_log_impl(&dword_224A2F000, v5, v6, "Releasing keep-alive with reason: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x22AA5EED0](v8, -1, -1);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  if (qword_28135B6D0 != -1)
  {
    swift_once();
  }

  v9 = qword_28135B6E0;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_224A9C35C;
  *(v11 + 24) = v10;
  v15[4] = sub_224A9C358;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_224A9B6F8;
  v15[3] = &block_descriptor_19;
  v12 = _Block_copy(v15);

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224A9C31C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A9C364(uint64_t a1)
{
  if (qword_28135B6E8 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  swift_beginAccess();
  v4 = off_28135B6F0;
  if (*(off_28135B6F0 + 2) && (v5 = sub_224A3A40C(v3, v2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 <= 0)
    {
      if (v7 != 1)
      {

        v10 = sub_224DAB228();
        v11 = sub_224DAF288();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v23[0] = v13;
          *v12 = 136446210;
          *(v12 + 4) = sub_224A33F74(v3, v2, v23);
          _os_log_impl(&dword_224A2F000, v10, v11, "Unbalanced acquire/release for keep-alive with reason: %{public}s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x22AA5EED0](v13, -1, -1);
          MEMORY[0x22AA5EED0](v12, -1, -1);
        }
      }

      swift_beginAccess();

      sub_224A9C6A4(0, 1, v3, v2);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = off_28135B6F0;
      off_28135B6F0 = 0x8000000000000000;
      sub_224A9B9CC(v8, v3, v2, isUniquelyReferenced_nonNull_native);
      off_28135B6F0 = v22;
    }

    swift_endAccess();
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446210;

      v18 = sub_224DAECF8();
      v20 = v19;

      v21 = sub_224A33F74(v18, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_224A2F000, v14, v15, "Keep-alive reasons: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }
  }
}

uint64_t sub_224A9C6A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_224A3A40C(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2572C();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_224A9C790(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_224A9B9CC(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_224A9C790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_224DAF7A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_224DAFE68();

      sub_224DAEE78();
      v13 = sub_224DAFEA8();

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

uint64_t PushFoundation.KeepAliveTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 3);
  swift_unknownObjectRelease();
  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224A9CA00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_224A3317C(v1 + 160, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v4 = (*(v3 + 56))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
    if (v4)
    {
      sub_224A9CB00(0x6F206E6565726373, 0xE90000000000006ELL);
    }
  }

  return result;
}

uint64_t sub_224A9CB00(char *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DA9878();
  v68 = *(isUniquelyReferenced_nonNull_native - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v69 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v56 - v15;
  v17 = sub_224DAB8C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v4[7];
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_224DAB8F8();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v4[29];
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  v3 = sub_224DADF78();
  sub_224DA9808();
  if (qword_2813516C8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281365120);

  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = a1;
    a1 = v16;
    v30 = swift_slowAlloc();
    v71 = v30;
    *v28 = 134349314;
    *(v28 + 4) = *(v3 + 16);

    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_224A33F74(v29, a2, &v71);
    _os_log_impl(&dword_224A2F000, v26, v27, "Found %{public}ld stale widgets for reason: %{public}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v31 = v30;
    v16 = a1;
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v32 = v4[5];
  v4[5] = MEMORY[0x277D84F98];

  v64 = *(v3 + 16);
  if (!v64)
  {
    (*(v68 + 8))(v16, isUniquelyReferenced_nonNull_native);
  }

  v33 = 0;
  v63 = v3 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v61 = v67 + 8;
  v62 = v67 + 16;
  v60 = (v68 + 16);
  v56[2] = v68 + 32;
  v56[1] = v68 + 40;
  v57 = v4;
  v58 = v16;
  v59 = v3;
  while (1)
  {
    if (v33 >= *(v3 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v35 = v66;
    v36 = v67;
    v37 = v65;
    (*(v67 + 16))(v65, v63 + *(v67 + 72) * v33, v66);
    v38 = sub_224DABDB8();
    a1 = v4;
    v4 = sub_224DABDD8();
    a2 = v39;
    (*(v36 + 8))(v37, v35);
    swift_beginAccess();
    v3 = isUniquelyReferenced_nonNull_native;
    (*v60)(v69, v16, isUniquelyReferenced_nonNull_native);
    v16 = v38;

    v40 = *(a1 + 4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(a1 + 4);
    v41 = v70;
    *(a1 + 4) = 0x8000000000000000;
    v43 = sub_224B0C03C(v16, v4, a2);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_23;
    }

    v47 = v42;
    if (v41[3] < v46)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224B2B68C();
    }

LABEL_17:
    isUniquelyReferenced_nonNull_native = v3;
    v50 = v70;
    v3 = v59;
    if (v47)
    {
      (*(v68 + 40))(v70[7] + *(v68 + 72) * v43, v69, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v70[(v43 >> 6) + 8] |= 1 << v43;
      v51 = (v50[6] + 24 * v43);
      *v51 = v16;
      v51[1] = v4;
      v51[2] = a2;
      (*(v68 + 32))(v50[7] + *(v68 + 72) * v43, v69, isUniquelyReferenced_nonNull_native);
      v52 = v50[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_24;
      }

      v50[2] = v54;
    }

    ++v33;
    v4 = v57;
    v34 = v57[4];
    v57[4] = v50;

    swift_endAccess();

    v16 = v58;
    if (v64 == v33)
    {

      sub_224D96F1C();
      return (*(v68 + 8))(v16, isUniquelyReferenced_nonNull_native);
    }
  }

  sub_224B1B598(v46, isUniquelyReferenced_nonNull_native);
  v48 = sub_224B0C03C(v16, v4, a2);
  if ((v47 & 1) == (v49 & 1))
  {
    v43 = v48;
    goto LABEL_17;
  }

  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224A9D208()
{
  v110 = sub_224DAC268();
  v1 = *(v110 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v110);
  v105 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v84 - v9;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v84 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  MEMORY[0x28223BE20](v16);
  v96 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v95 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v93 = &v84 - v24;
  v25 = *(v0 + 232);
  v26 = sub_224DAC148();
  v27 = 0;
  v28 = *(v26 + 64);
  v85 = v26 + 64;
  v88 = v26;
  v29 = 1 << *(v26 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v91 = (v12 + 16);
  v99 = (v12 + 32);
  v92 = v12;
  v89 = (v12 + 8);
  v101 = v1 + 32;
  v102 = v1 + 16;
  v86 = MEMORY[0x277D84F90];
  v106 = v1;
  v109 = (v1 + 8);
  v103 = v10;
  v104 = v8;
  v94 = v18;
  v90 = v32;
  v100 = v11;
LABEL_5:
  v33 = v27;
  v34 = v95;
  while (v31)
  {
    v35 = v33;
LABEL_16:
    v98 = (v31 - 1) & v31;
    v37 = __clz(__rbit64(v31)) | (v35 << 6);
    v38 = v88;
    v39 = v92;
    v40 = v100;
    (*(v92 + 16))(v96, *(v88 + 48) + *(v92 + 72) * v37, v100);
    v41 = *(*(v38 + 56) + 8 * v37);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v43 = *(v42 + 48);
    v44 = *(v39 + 32);
    v45 = v95;
    v44(v95, v96, v40);
    *&v45[v43] = v41;
    v34 = v45;
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);

    v97 = v35;
    v18 = v94;
LABEL_17:
    v46 = v93;
    sub_224A44E4C(v34, v93, &qword_27D6F6D30, &qword_224DC2F60);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {

      return;
    }

    v48 = *(v46 + *(v47 + 48));
    v49 = *v99;
    v50 = v46;
    v51 = v100;
    (*v99)(v18, v50, v100);
    v52 = sub_224DABDB8();
    v53 = [v52 isRemote];

    if (v53)
    {
      v87 = v49;
      v54 = 0;
      v108 = v48;
      v55 = v48 + 64;
      v56 = 1 << *(v48 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v48 + 64);
      v59 = (v56 + 63) >> 6;
      v107 = v48 + 64;
      while (v58)
      {
        v60 = v54;
LABEL_35:
        v63 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v64 = v63 | (v60 << 6);
        v65 = v108;
        v67 = v105;
        v66 = v106;
        v68 = v110;
        (*(v106 + 16))(v105, *(v108 + 48) + *(v106 + 72) * v64, v110);
        v69 = *(*(v65 + 56) + 8 * v64);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v71 = *(v70 + 48);
        v72 = *(v66 + 32);
        v8 = v104;
        v72(v104, v67, v68);
        *&v8[v71] = v69;
        (*(*(v70 - 8) + 56))(v8, 0, 1, v70);
        v73 = v69;
        v10 = v103;
        v55 = v107;
LABEL_36:
        sub_224A44E4C(v8, v10, &qword_27D6F47F0, &unk_224DB7850);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        if ((*(*(v74 - 8) + 48))(v10, 1, v74) == 1)
        {

          v18 = v94;
          (*v89)(v94, v100);
          v33 = v97;
          v34 = v95;
          goto LABEL_7;
        }

        v75 = *&v10[*(v74 + 48)];
        sub_224DABE68();
        if (v112)
        {
          sub_224A36F98(&v111, v113);
          __swift_project_boxed_opaque_existential_1(v113, v113[3]);
          if (sub_224DAEAE8())
          {
            v18 = v94;
            v78 = v100;
            (*v91)(v84, v94, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_224AD9D64(0, *(v86 + 2) + 1, 1, v86);
            }

            v79 = v87;
            v81 = *(v86 + 2);
            v80 = *(v86 + 3);
            if (v81 >= v80 >> 1)
            {
              v86 = sub_224AD9D64(v80 > 1, v81 + 1, 1, v86);
            }

            v82 = v92;
            (*(v92 + 8))(v18, v78);
            v83 = v86;
            *(v86 + 2) = v81 + 1;
            v79(&v83[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81], v84, v78);
            __swift_destroy_boxed_opaque_existential_1(v113);
            (*v109)(v10, v110);
            v32 = v90;
            v31 = v98;
            v27 = v97;
            goto LABEL_5;
          }

          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {

          sub_224A3311C(&v111, &unk_27D6F3CB0, &unk_224DB7860);
        }

        (*v109)(v10, v110);
      }

      if (v59 <= v54 + 1)
      {
        v61 = v54 + 1;
      }

      else
      {
        v61 = v59;
      }

      v62 = v61 - 1;
      while (1)
      {
        v60 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v60 >= v59)
        {
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v76 - 8) + 56))(v8, 1, 1, v76);
          v58 = 0;
          v54 = v62;
          goto LABEL_36;
        }

        v58 = *(v55 + 8 * v60);
        ++v54;
        if (v58)
        {
          v54 = v60;
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

    (*v89)(v18, v51);

    v33 = v97;
LABEL_7:
    v32 = v90;
    v31 = v98;
  }

  if (v32 <= v33 + 1)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v32;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      v97 = v36 - 1;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
      (*(*(v77 - 8) + 56))(v34, 1, 1, v77);
      v98 = 0;
      goto LABEL_17;
    }

    v31 = *(v85 + 8 * v35);
    ++v33;
    if (v31)
    {
      goto LABEL_16;
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_224A9DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
  v34 = a1;
  v12 = sub_224DAED88();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v21 = sub_224DAEDD8();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE466C();
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_224A9DF9C(v14, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, MEMORY[0x277CF9FA8]);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_224A9DF9C(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = sub_224DAF7A8();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v41 = (v19 + 1) & v17;
      v40 = v8[2];
      v47 = v8[9];
      v42 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v40(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_224A33088(v45, v43, v44);
        v28 = sub_224DAED88();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v41)
        {
          if (v29 < v41 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v41 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_224A9E29C()
{

  v0 = sub_224DAEEC8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_224DAEEC8();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_224DAFD88();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_224DAEEC8();
      v3 = v5;
    }

    while (v5);
  }

  sub_224DAEEC8();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_224A9E3F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = *v3;
  v15 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B2669C();
      goto LABEL_7;
    }

    sub_224A9E668(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_224A9EB14(v15, v12, a1, v21, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9A10]);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_224DAC378();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_224A9E668(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_224DAC378();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - v12;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CE0, &qword_224DB4990);
  v52 = a2;
  result = sub_224DAFB98();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
      result = sub_224DAED88();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_224A9EB14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a7(0);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

void sub_224A9EC1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v2 + 16));
    sub_224A9ECB4(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }
}

uint64_t sub_224A9ECB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v77 - v8;
  MEMORY[0x28223BE20](v7);
  v96 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D0, &qword_224DB5C18);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v94 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v77 - v15;
  v16 = sub_224DAC378();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v84 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v103 = MEMORY[0x277D84FA0];
  v93 = &v77 - v24;
  sub_224DAC338();
  v25 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers;
  swift_beginAccess();
  v79 = a1;
  v78 = v25;
  v26 = *(a1 + v25);
  v27 = v21;
  v28 = *(v26 + 64);
  v81 = v26 + 64;
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v80 = (v29 + 63) >> 6;
  v95 = (v3 + 16);
  v83 = v17 + 16;
  v98 = (v17 + 32);
  v99 = (v3 + 32);
  v86 = v17;
  v92 = (v17 + 8);
  v88 = v3;
  v89 = v26;
  v90 = (v3 + 8);

  v32 = 0;
  v87 = v9;
  v85 = v27;
  v100 = v2;
  v101 = v16;
  if (!v31)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v33 = v32;
LABEL_14:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v33 << 6);
    v40 = v88;
    v39 = v89;
    v41 = v96;
    v42 = v100;
    (*(v88 + 16))(v96, *(v89 + 48) + *(v88 + 72) * v38, v100);
    v43 = v86;
    v44 = *(v39 + 56) + *(v86 + 72) * v38;
    v45 = v84;
    v46 = v101;
    (*(v86 + 16))(v84, v44, v101);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
    v97 = *(v47 + 48);
    v48 = *(v40 + 32);
    v36 = v94;
    v48(v94, v41, v42);
    (*(v43 + 32))(v36 + v97, v45, v46);
    (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
    v35 = v33;
    v9 = v87;
    v27 = v85;
LABEL_15:
    v49 = v91;
    sub_224A44E4C(v36, v91, &qword_27D6F41D0, &qword_224DB5C18);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      break;
    }

    v51 = *(v50 + 48);
    v52 = v100;
    (*v99)(v9, v49, v100);
    v53 = v49 + v51;
    v54 = v101;
    (*v98)(v27, v53, v101);
    if (sub_224DAC318())
    {
      v55 = v82;
      (*v95)(v82, v9, v52);
      v56 = v96;
      sub_224A3A634(v96, v55);
      v57 = *v90;
      (*v90)(v56, v52);
      (*v92)(v27, v54);
      v57(v9, v52);
      v32 = v35;
      if (!v31)
      {
LABEL_7:
        if (v80 <= v32 + 1)
        {
          v34 = v32 + 1;
        }

        else
        {
          v34 = v80;
        }

        v35 = v34 - 1;
        v36 = v94;
        while (1)
        {
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v33 >= v80)
          {
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
            (*(*(v58 - 8) + 56))(v36, 1, 1, v58);
            v31 = 0;
            goto LABEL_15;
          }

          v31 = *(v81 + 8 * v33);
          ++v32;
          if (v31)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      (*v92)(v27, v54);
      (*v90)(v9, v52);
      v32 = v35;
      if (!v31)
      {
        goto LABEL_7;
      }
    }
  }

  if (qword_281351610 == -1)
  {
    goto LABEL_21;
  }

LABEL_25:
  swift_once();
LABEL_21:
  v59 = sub_224DAB258();
  __swift_project_value_buffer(v59, qword_281364FD0);
  v60 = sub_224DAB228();
  v61 = sub_224DAF2A8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v102 = v63;
    *v62 = 136446210;
    swift_beginAccess();
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);

    v64 = sub_224DAF1C8();
    v66 = v65;

    v67 = sub_224A33F74(v64, v66, &v102);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_224A2F000, v60, v61, "Visible grace period expired for: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x22AA5EED0](v63, -1, -1);
    MEMORY[0x22AA5EED0](v62, -1, -1);
  }

  v68 = v79;
  v69 = v101;
  v70 = v78;
  v71 = *(v79 + v78);

  v73 = sub_224AA0118(v72, &v103);

  v74 = *(v68 + v70);
  *(v68 + v70) = v73;

  sub_224A3AFF0(v75);
  (*v92)(v93, v69);
}

uint64_t sub_224A9F584()
{
  v0 = type metadata accessor for FileReaperScenario(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v4 - 8) + 56))(v3, 2, 4, v4);
  sub_224A9F678(v3, 0);

  return sub_224CCFA48(v3, type metadata accessor for FileReaperScenario);
}

uint64_t sub_224A9F678(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = *v2;
  v7 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v38[-v12];
  v14 = sub_224DAB8C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v3[52];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_224DAB8F8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if ((sub_224A9FB0C(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_224CCEB54(a1, v13);
  if (qword_281351470 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364DD8);
  sub_224CCF9E0(v13, v11, type metadata accessor for FileReaperProtectionConfiguration);
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v4;
    v4 = v25;
    v40 = v25;
    *v24 = 136446210;
    v26 = sub_224AA3FE8();
    v28 = v27;
    sub_224CCFA48(v11, type metadata accessor for FileReaperProtectionConfiguration);
    v29 = sub_224A33F74(v26, v28, &v40);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_224A2F000, v22, v23, "Begin reap session with configuration: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v30 = v4;
    LOBYTE(v4) = v39;
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {

    sub_224CCFA48(v11, type metadata accessor for FileReaperProtectionConfiguration);
  }

  v32 = sub_224AA43B0(v13);
  v33 = *(v32 + 16);
  *&v38[-16] = MEMORY[0x28223BE20](v32);
  v38[-8] = v4 & 1;
  sub_224DAF3E8();
  v31 = v40;
  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_224A2F000, v34, v35, "End reap session", v36, 2u);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  else
  {
  }

  sub_224CCFA48(v13, type metadata accessor for FileReaperProtectionConfiguration);
  return v31;
}

uint64_t sub_224A9FB0C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FileReaperScenario(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 416);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v15 = *(v2 + 192);
  __swift_project_boxed_opaque_existential_1((v2 + 160), *(v2 + 184));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_281351470 == -1)
    {
LABEL_9:
      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281364DD8);
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_12:

        return 0;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot reap before first unlock";
LABEL_11:
      _os_log_impl(&dword_224A2F000, v19, v20, v22, v21, 2u);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      goto LABEL_12;
    }

LABEL_26:
    swift_once();
    goto LABEL_9;
  }

  sub_224CCF9E0(a1, v7, type metadata accessor for FileReaperScenario);
  v16 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v17 = (*(*(v16 - 8) + 48))(v7, 4, v16);
  if (v17 > 2)
  {
    return 1;
  }

  if (!v17)
  {
    sub_224CCFA48(v7, type metadata accessor for FileReaperScenario);
    return 1;
  }

  if (v17 == 1)
  {
    if ((*(v2 + 16) & 1) == 0)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v24 = IOPSCopyExternalPowerAdapterDetails();
  if (!v24)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364DD8);
    v19 = sub_224DAB228();
    v20 = sub_224DAF2A8();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Cannot reap when not connected to power";
    goto LABEL_11;
  }

  if ((*(v2 + 16) & 1) == 0)
  {
LABEL_17:
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281364DD8);
    v19 = sub_224DAB228();
    v20 = sub_224DAF2A8();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Cannot reap due to user preference";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_224A9FF1C()
{
  v1 = v0;
  v2 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileReaperScenario(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224C5BF4C(v1, v10);
  v11 = (*(v3 + 48))(v10, 4, v2);
  if (v11 <= 1)
  {
    if (v11)
    {
      return 0x6F6974617267696DLL;
    }

    else
    {
      sub_224C5BFB0(v10, v6);
      v15[0] = 0x286D6F74737563;
      v15[1] = 0xE700000000000000;
      v13 = sub_224AA3FE8();
      MEMORY[0x22AA5D210](v13);

      MEMORY[0x22AA5D210](41, 0xE100000000000000);
      v14 = v15[0];
      sub_224C5C014(v6);
      return v14;
    }
  }

  else if (v11 == 2)
  {
    return 0x6369646F69726570;
  }

  else if (v11 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7465736572;
  }
}

uint64_t sub_224AA0118(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_224AA0284(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_224B48334(v11, v6, v4, a2);
  result = MEMORY[0x22AA5EED0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224AA0284(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50[0] = a2;
  v52 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41D8, &qword_224DB5C20);
  v6 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v8 = v50 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = v50 - v20;
  v61 = a3;
  v21 = *(a3 + 64);
  v51 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v66 = v23 & v21;
  v60 = a4;
  result = swift_beginAccess();
  v62 = 0;
  v25 = 0;
  v26 = (v22 + 63) >> 6;
  v71 = v15 + 16;
  v57 = v15;
  v58 = v10;
  v70 = (v15 + 8);
  v54 = (v10 + 8);
  v55 = v10 + 16;
  v56 = v26;
  v53 = v9;
  v65 = v13;
  while (v66)
  {
    v27 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v64 = v25;
    v28 = v27 | (v25 << 6);
LABEL_13:
    v32 = v61;
    v33 = v61[6];
    v69 = *(v57 + 72);
    v34 = *(v57 + 16);
    v34(v67, v33 + v69 * v28, v14);
    v35 = v32[7];
    v36 = *(v58 + 72);
    v63 = v28;
    v37 = *(v58 + 16);
    v38 = v65;
    v37(v65, v35 + v36 * v28, v9);
    v68 = v34;
    v34(v8, v67, v14);
    v39 = v38;
    v37(&v8[*(v59 + 48)], v38, v9);
    v40 = *v60;
    if (!*(*v60 + 16))
    {
      goto LABEL_19;
    }

    v41 = *(v40 + 40);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);

    v42 = v8;
    v43 = sub_224DAED88();
    v44 = -1 << *(v40 + 32);
    v45 = v43 & ~v44;
    if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
    {
      v46 = ~v44;
      while (1)
      {
        v68(v19, *(v40 + 48) + v45 * v69, v14);
        sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
        v47 = sub_224DAEDD8();
        v48 = *v70;
        (*v70)(v19, v14);
        if (v47)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v8 = v42;
      sub_224A3311C(v42, &qword_27D6F41D8, &qword_224DB5C20);
      v9 = v53;
      (*v54)(v65, v53);
      result = v48(v67, v14);
      v26 = v56;
      v25 = v64;
    }

    else
    {
LABEL_18:

      v8 = v42;
      v9 = v53;
      v39 = v65;
LABEL_19:
      sub_224A3311C(v8, &qword_27D6F41D8, &qword_224DB5C20);
      (*v54)(v39, v9);
      result = (*v70)(v67, v14);
      *(v52 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v49 = __OFADD__(v62++, 1);
      v26 = v56;
      v25 = v64;
      if (v49)
      {
        __break(1u);
        return sub_224AA0868(v52, v50[0], v62, v61);
      }
    }
  }

  v29 = v25;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      return sub_224AA0868(v52, v50[0], v62, v61);
    }

    v31 = *(v51 + 8 * v30);
    ++v29;
    if (v31)
    {
      v66 = (v31 - 1) & v31;
      v64 = v30;
      v28 = __clz(__rbit64(v31)) | (v30 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224AA0868(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_224DAC378();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CE0, &qword_224DB4990);
  result = sub_224DAFBB8();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    result = sub_224DAED88();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_224AA0D1C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224AA0D78();
  }
}

void sub_224AA0D78()
{
  v1 = v0;
  v2 = sub_224DA9B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v106 = *(v101 - 8);
  v7 = *(v106 + 64);
  v8 = MEMORY[0x28223BE20](v101);
  v100 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v66 - v10;
  v102 = sub_224DA9C38();
  v96 = *(v102 - 8);
  v11 = *(v96 + 64);
  v12 = MEMORY[0x28223BE20](v102);
  v92 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v77 = sub_224DA9C18();
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DA9AE8();
  v105 = *(v19 - 8);
  v20 = *(v105 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = &v66 - v23;
  v78 = sub_224DA9B98();
  v24 = *(v78 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v78);
  v103 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DA9B68();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v33 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D84FA0];
  v107 = MEMORY[0x277D84FA0];
  v88 = *(v32 + 16);
  if (v88)
  {
    v67 = v1;
    v35 = 0;
    v37 = *(v31 + 16);
    v36 = v31 + 16;
    v84 = v37;
    v83 = v32 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v82 = *(v36 + 56);
    v81 = (v24 + 88);
    v80 = *MEMORY[0x277CB9600];
    v75 = (v24 + 8);
    v74 = (v105 + 8);
    v97 = (v106 + 8);
    v98 = (v96 + 32);
    v105 = v3 + 88;
    v106 = v3 + 16;
    v104 = *MEMORY[0x277CB9348];
    v91 = (v3 + 8);
    v68 = v3;
    v90 = (v3 + 96);
    v96 += 8;
    v79 = (v36 - 8);
    v38 = v78;
    v39 = v103;
    v85 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v15;
    v70 = v18;
    v69 = v19;
    v87 = v30;
    v86 = v36;
    do
    {
      v89 = v35;
      v84(v33, v83 + v82 * v35, v30);
      sub_224DA9B58();
      v42 = (*v81)(v39, v38);
      if (v42 == v80)
      {
        v43 = v76;
        sub_224DA9B48();
        sub_224DA9A98();
        v44 = *v74;
        (*v74)(v43, v19);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v95 = *v98;
          v95(v15, v18, v102);
          sub_224DA9C28();
          v45 = v100;
          sub_224DA9FF8();
          v46 = v99;
          sub_224A3A634(v99, v45);
          v94 = *v97;
          v94(v46, v101);
          v47 = v72;
          sub_224DA9B48();
          v48 = sub_224DA9AB8();
          v44(v47, v19);
          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = (*(v68 + 80) + 32) & ~*(v68 + 80);
            v73 = v48;
            v51 = v48 + v50;
            v52 = *(v68 + 72);
            v39 = v103;
            v93 = *(v68 + 16);
            v53 = v93;
            v93(v6, v51, v2);
            while (1)
            {
              v54 = (*v105)(v6, v2);
              if (v54 == v104)
              {
                (*v90)(v6, v2);
                v55 = v92;
                v56 = v6;
                v57 = v6;
                v58 = v102;
                v95(v92, v56, v102);
                sub_224DA9C28();
                v59 = v100;
                sub_224DA9FF8();
                v60 = v2;
                v61 = v99;
                sub_224A3A634(v99, v59);
                v62 = v61;
                v2 = v60;
                v94(v62, v101);
                v63 = v55;
                v53 = v93;
                v64 = v58;
                v6 = v57;
                v39 = v103;
                (*v96)(v63, v64);
              }

              else
              {
                (*v91)(v6, v2);
              }

              v51 += v52;
              if (!--v49)
              {
                break;
              }

              v53(v6, v51, v2);
            }
          }

          else
          {

            v39 = v103;
          }

          v15 = v71;
          (*v96)(v71, v102);
          v18 = v70;
          v19 = v69;
          v38 = v78;
        }

        else
        {
          sub_224B48750(v18);
          v38 = v78;
          v39 = v103;
        }
      }

      else
      {
        (*v75)(v39, v38);
      }

      v40 = v89 + 1;
      v33 = v85;
      v41 = v87;
      (*v79)(v85, v87);
      v35 = v40;
      v30 = v41;
    }

    while (v40 != v88);
    v34 = v107;
    v1 = v67;
  }

  v65 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v65 + 16));
  sub_224AA16C0(v34, v1);

  os_unfair_lock_unlock(*(v65 + 16));
}

uint64_t sub_224AA16C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers;
  v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);
  if (*(a1 + 16) <= *(v5 + 16) >> 3)
  {
    v37 = *(a2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    sub_224AA25AC(a1);
    v7 = v37;
  }

  else
  {
    v6 = *(a2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    v7 = sub_224AA1B44(a1, v5);
  }

  v8 = *(v2 + v4);
  if (*(v8 + 16) <= *(a1 + 16) >> 3)
  {
    v37 = a1;

    sub_224AA25AC(v8);

    v10 = a1;
  }

  else
  {
    v9 = *(v2 + v4);

    v10 = sub_224AA1B44(v8, a1);
  }

  v11 = &unk_281351000;
  if (*(v10 + 16))
  {
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364FD0);

    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136380675;
      v33 = v4;
      v35 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
      v17 = sub_224DAF1C8();
      v19 = v18;

      v20 = sub_224A33F74(v17, v19, &v37);
      v4 = v33;

      *(v15 + 4) = v20;
      v2 = v35;
      _os_log_impl(&dword_224A2F000, v13, v14, "Bundle identifiers started running scene-backed activities: %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA5EED0](v16, -1, -1);
      v21 = v15;
      v11 = &unk_281351000;
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    else
    {
    }

    if (*(v7 + 16))
    {
      goto LABEL_16;
    }

LABEL_13:

    goto LABEL_22;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v11[194] != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364FD0);

  v23 = sub_224DAB228();
  v24 = sub_224DAF2A8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136380675;
    v34 = v4;
    v36 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    v27 = sub_224DAF1C8();
    v29 = v28;

    v30 = sub_224A33F74(v27, v29, &v37);
    v4 = v34;

    *(v25 + 4) = v30;
    v2 = v36;
    _os_log_impl(&dword_224A2F000, v23, v24, "Bundle identifiers stopped running scene-backed activities: %{private}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  else
  {
  }

LABEL_22:
  v31 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_224AA1B44(unint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = (&v70 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v15);
  v85 = (&v70 - v18);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v74 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v71 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v77 = (63 - v21) >> 6;
  v91 = v11 + 2;
  v83 = (v11 + 6);
  v84 = (v11 + 7);
  v80 = (v11 + 4);
  v81 = a1;
  v87 = (a2 + 56);
  v93 = (v11 + 1);

  v25 = 0;
  v73 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v81[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v72;
      v32(v72, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v77 <= (v25 + 1) ? v25 + 1 : v77;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v77)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v72;
    }

    v79 = *v84;
    v79(v33, v34, 1, v10);
    v78 = *v83;
    if (v78(v33, 1, v10) == 1)
    {
      sub_224A3311C(v33, &unk_27D6F5060, &qword_224DB5620);
      goto LABEL_52;
    }

    v76 = *v80;
    v76(v85, v33, v10);
    v35 = *(a2 + 40);
    v75 = sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640);
    v36 = sub_224DAED88();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v73;
    (*v93)(v85, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v37;
  v38 = v73[9];
  v88 = v73[2];
  v89 = v38;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v25, v10);
    v39 = sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
    v40 = sub_224DAEDD8();
    v92 = *v93;
    v92(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v86;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) == 0)
    {
      v11 = v73;
      v92(v85, v10);
      goto LABEL_22;
    }
  }

  v86 = v39;
  v95 = v71;
  v96 = v29;
  v97 = a1;
  v11 = v81;
  v94[0] = v81;
  v94[1] = i;
  v41 = (v92)(v85, v10);
  v42 = *(a2 + 32);
  v70 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v70;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v72 = &v70;
    MEMORY[0x28223BE20](v41);
    v44 = &v70 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v87, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = *(a2 + 16);
    v85 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v74;
    v49 = v77;
LABEL_26:
    v73 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v88(v48, v11[6] + (v53 | (v50 << 6)) * v89, v10);
      v54 = 0;
LABEL_39:
      v79(v48, v54, 1, v10);
      if (v78(v48, 1, v10) == 1)
      {
        sub_224A3311C(v48, &unk_27D6F5060, &qword_224DB5620);
        a2 = sub_224A41D48(v85, v70, v73, a2);
        goto LABEL_52;
      }

      v76(v90, v48, v10);
      v55 = *(a2 + 40);
      v56 = sub_224DAED88();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v87[v25 >> 6]) != 0)
      {
        v88(v17, *(v57 + 48) + v25 * v89, v10);
        v60 = sub_224DAEDD8();
        v92(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v87[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v57 + 48) + v25 * v89, v10);
            v62 = sub_224DAEDD8();
            v92(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v92(v90, v10);
        v63 = v85[v59];
        v85[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
        if ((v63 & v20) != 0)
        {
          v47 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v10);
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v66 = v24;

    v85 = a2;
    v67 = v66;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v68 = v85;

      a2 = v68;
      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();
  memcpy(v69, v87, v67);
  a2 = sub_224B03FB0(v69, v70, v85, v25, v94);

  MEMORY[0x22AA5EED0](v69, -1, -1);
  v71 = v95;
LABEL_52:
  sub_224A3B7E4();
LABEL_54:
  v64 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_224AA25AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_224A9DCC8(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_224AA27D0(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t sub_224AA2800(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + qword_2813548C0);
    os_unfair_lock_lock(*(v7 + 16));
    a3(v6, a1);
    os_unfair_lock_unlock(*(v7 + 16));
  }

  return result;
}

uint64_t sub_224AA28AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_224B206B4(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_224A3AD28(a2, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
    if (v16)
    {
      v17 = v15;
      v18 = *v7;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v29 = *v7;
      if (!v19)
      {
        sub_224B28D68(&qword_27D6F3900, &unk_224DB4640, a3, a4);
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 8 * v17);

      sub_224B1BCEC(v17, v20, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, MEMORY[0x277CF9FA8]);
      result = (v24)(a2, v22);
      *v7 = v20;
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

void sub_224AA2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_1((*(a1 + qword_2813548D0) + 24), *(*(a1 + qword_2813548D0) + 48));
  v10 = *v9;
  v11 = *(*v9 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  v13 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v14 = *(v10 + v13);
  v15 = *(v11 + 16);

  os_unfair_lock_unlock(v15);

  v16 = sub_224A33924(a2, v14);

  v17 = *(a1 + qword_2813548C8);
  if (v17)
  {
    v31 = v5;
    v32 = v4;
    v18 = __swift_project_boxed_opaque_existential_1((v17 + 16), *(v17 + 40));
    v19 = *v18;
    v20 = *(*v18 + 24);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    v22 = swift_beginAccess();
    v23 = *(v19 + 32);
    MEMORY[0x28223BE20](v22);
    *(&v31 - 2) = a2;

    sub_224AA3B30(sub_224C4E084, (&v31 - 4), v23);
    v25 = v24;

    os_unfair_lock_unlock(*(v20 + 16));

    if ((v16 & 1) != 0 || v25)
    {

      return;
    }

    v4 = v32;
    v5 = v31;
  }

  else if (v16)
  {
    return;
  }

  v26 = qword_2813549E8;
  swift_beginAccess();
  v27 = *(a1 + v26);
  if (*(v27 + 16) && (v28 = sub_224A89A08(a2), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  (*(v5 + 16))(v8, a2, v4);
  swift_beginAccess();
  sub_224AA33D8(0, v8);
  swift_endAccess();
  if (v30)
  {
    sub_224CDD28C(v30, a2);
  }

  sub_224AA3C6C();
}