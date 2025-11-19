uint64_t sub_224A48648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB8, &qword_224DC1B30);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CD8, &qword_224DC1B38);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  sub_224DAD8F8();
  v9 = v1[13];
  v9(v4, *MEMORY[0x277CF9DF8], v0);
  sub_224DAD8E8();
  v10 = v1[1];
  v10(v4, v0);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D48();

  if ((v11 & 1) == 0)
  {
    v9(v4, *MEMORY[0x277CF9E00], v0);
    sub_224DAD8E8();
    v10(v4, v0);
  }

  v12 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v13 = v22;
  swift_beginAccess();
  sub_224A3796C(v13 + v12, v24, &qword_27D6F6C28, &qword_224DC1A38);
  v14 = v25;
  if (v25)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    sub_224DAD5A8();
    (*(v16 + 8))(v19, v14);
    v20 = sub_224DACFA8();

    (*(v23 + 8))(v8, v5);
  }

  else
  {
    (*(v23 + 8))(v8, v5);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    return 0;
  }

  return v20;
}

uint64_t sub_224A48A18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_224ACED1C;

  return v8();
}

uint64_t sub_224A48B00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_224ACFF60;

  return sub_224A3CD9C(v2, v3, v5);
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_7()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  v2 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_224A48F3C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionTask.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224A48FA0(__int16 a1)
{
  v3 = *(v1 + 40);
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  v4 = sub_224DAFEA8();

  return sub_224A49904(a1 & 0x101, v4);
}

uint64_t sub_224A4901C(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(a2 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v3);
  sub_224A49120(v7, 0);
  return (*(v4 + 8))(v7, v3);
}

void sub_224A49120(uint64_t a1, int a2)
{
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v92[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v92[-v14];
  v16 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue);
  BSDispatchQueueAssert();
  v17 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_224A438E8(a1);
    if (v21)
    {
      LODWORD(v101) = a2;
      v22 = *(*(v19 + 56) + 8 * v20);

      *(v22 + 16) = 3;
      os_unfair_lock_unlock(*(v17 + 16));
      if (qword_2813515F0 != -1)
      {
        swift_once();
      }

      v23 = sub_224DAB258();
      v24 = __swift_project_value_buffer(v23, qword_281364F88);
      v98 = v6[2];
      v99 = v6 + 2;
      (v98)(v15, a1, v5);
      v100 = v24;
      v25 = sub_224DAB228();
      v26 = sub_224DAF2A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v94 = v27;
        v96 = swift_slowAlloc();
        v103 = v96;
        *v27 = 136446210;
        v95 = v25;
        v102 = sub_224DA98E8();
        sub_224A3F6A4();
        sub_224DAEF18();
        v28 = v13;
        v29 = v5;
        v30 = sub_224A3D19C(8);
        v32 = v31;
        v93 = v26;
        v34 = v33;
        v97 = a1;
        v35 = v22;
        v36 = v6;
        v38 = v37;

        v39 = v30;
        v5 = v29;
        v13 = v28;
        v40 = MEMORY[0x22AA5D1C0](v39, v32, v34, v38);
        v42 = v41;
        v43 = v36;
        v22 = v35;
        a1 = v97;

        v44 = v43[1];
        v44(v15, v5);
        v45 = sub_224A33F74(v40, v42, &v103);

        v46 = v94;
        v47 = v95;
        *(v94 + 1) = v45;
        v48 = v46;
        _os_log_impl(&dword_224A2F000, v47, v93, "[%{public}s]: activityHandler began", v46, 0xCu);
        v49 = v96;
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x22AA5EED0](v49, -1, -1);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      else
      {

        v44 = v6[1];
        v44(v15, v5);
      }

      v69 = *(v22 + 24);
      v71 = *(v69 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler);
      v70 = *(v69 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler + 8);

      v71(v72, v101 & 1);

      (v98)(v13, a1, v5);
      v73 = sub_224DAB228();
      v74 = sub_224DAF2A8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v98 = v75;
        v101 = swift_slowAlloc();
        v103 = v101;
        *v75 = 136446210;
        LODWORD(v100) = v74;
        v102 = sub_224DA98E8();
        sub_224A3F6A4();
        sub_224DAEF18();
        v76 = v44;
        v77 = v5;
        v78 = sub_224A3D19C(8);
        v99 = v22;
        v80 = v79;
        v82 = v81;
        v84 = v83;

        v85 = MEMORY[0x22AA5D1C0](v78, v80, v82, v84);
        v87 = v86;

        v76(v13, v77);
        v88 = sub_224A33F74(v85, v87, &v103);

        v89 = v98;
        *(v98 + 1) = v88;
        v90 = v89;
        _os_log_impl(&dword_224A2F000, v73, v100, "[%{public}s]: activityHandler ended", v89, 0xCu);
        v91 = v101;
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x22AA5EED0](v91, -1, -1);
        MEMORY[0x22AA5EED0](v90, -1, -1);
      }

      else
      {

        v44(v13, v5);
      }

      return;
    }
  }

  os_unfair_lock_unlock(*(v17 + 16));
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v50 = sub_224DAB258();
  __swift_project_value_buffer(v50, qword_281364F88);
  (v6[2])(v10, a1, v5);
  v51 = sub_224DAB228();
  v52 = sub_224DAF288();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v100 = v53;
    v101 = swift_slowAlloc();
    v103 = v101;
    *v53 = 136446210;
    v102 = sub_224DA98E8();
    sub_224A3F6A4();
    sub_224DAEF18();
    v54 = v5;
    v55 = sub_224A3D19C(8);
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = MEMORY[0x22AA5D1C0](v55, v57, v59, v61);
    v64 = v63;

    (v6[1])(v10, v54);
    v65 = sub_224A33F74(v62, v64, &v103);

    v66 = v100;
    *(v100 + 1) = v65;
    v67 = v66;
    _os_log_impl(&dword_224A2F000, v51, v52, "[%{public}s]: activityHandler fired without activity", v66, 0xCu);
    v68 = v101;
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  else
  {

    (v6[1])(v10, v5);
  }
}

unint64_t sub_224A49904(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) ^ a1 | *(*(v2 + 48) + 2 * result + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_224A49988(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_224A49BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  sub_224A49BAC(a1, a2, v2[4], v2[5]);
}

void sub_224A49BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_224B44350(a4);
  }
}

uint64_t sub_224A49C20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_224A49CC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v9 = v5;
  v10 = *v5;
  v11 = a2();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v11;
  v14 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v9;
  v21 = *v9;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a5();
    v16 = v21;
  }

  v17 = *(v16 + 48);
  v18 = a3(0);
  (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v13, v18);
  v19 = *(*(v16 + 56) + 8 * v13);
  a4(v13, v16);
  *v9 = v16;
  return v19;
}

void sub_224A49DBC(void *a1)
{
  v2 = v1;
  v4 = sub_224A4A248();
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365108);
  v7 = a1;
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_224A2F000, v8, v9, "Add pending task: %{public}@", v10, 0xCu);
    sub_224A3311C(v11, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  swift_beginAccess();
  v14 = v7;
  v15 = v2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = v2[2];
  v2[2] = 0x8000000000000000;
  sub_224A436D0(v14, v7 + v13, isUniquelyReferenced_nonNull_native);
  v2[2] = v52[0];
  swift_endAccess();
  swift_beginAccess();
  v17 = v2[3];
  if (v17[2])
  {
    v18 = v2[3];

    v19 = sub_224A3E7EC(v5);
    if (v20)
    {
      v21 = *(v17[7] + 8 * v19);

      v53 = v21;
      sub_224A4A564(v52, v14);

      v22 = v53;
      swift_beginAccess();
      v23 = v5;
      v24 = v2[3];
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v2[3];
      v2[3] = 0x8000000000000000;
      sub_224A4A72C(v22, v23, v25);

      v26 = v51;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = v14;
  v28 = v14;
  v23 = sub_224AE93E8(inited);
  swift_setDeallocating();
  v29 = *(inited + 16);
  swift_arrayDestroy();
  swift_beginAccess();
  v30 = v5;
  v31 = v2[3];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_224A4A72C(v23, v30, v32);

  v26 = v53;
LABEL_11:
  v2[3] = v26;
  swift_endAccess();
  v33 = sub_224CF8254();
  v35 = v34;
  swift_beginAccess();
  v36 = v2[5];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v2[5];
  v38 = v53;
  v2[5] = 0x8000000000000000;
  v39 = sub_224A3A40C(v33, v35);
  v41 = v38[2];
  v42 = (v40 & 1) == 0;
  v43 = __OFADD__(v41, v42);
  v44 = v41 + v42;
  if (v43)
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v23) = v40;
  if (v38[3] >= v44)
  {
    goto LABEL_15;
  }

  sub_224AA68E4(v44, v37);
  v39 = sub_224A3A40C(v33, v35);
  if ((v23 & 1) != (v45 & 1))
  {
    v39 = sub_224DAFDD8();
    __break(1u);
LABEL_15:
    if ((v37 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  while (1)
  {
LABEL_16:
    v46 = v53;
    v2[5] = v53;
    if ((v23 & 1) == 0)
    {
      v2 = v39;
      sub_224B24668(v39, v33, v35, 0, v46);

      v39 = v2;
    }

    v47 = v46[7];
    v48 = *(v47 + 8 * v39);
    v43 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (!v43)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v50 = v39;
    sub_224B2572C();
    v39 = v50;
  }

  *(v47 + 8 * v39) = v49;
  swift_endAccess();
}

id sub_224A4A248()
{
  v1 = v0;
  v2 = sub_224DABCC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExtensionTask.Identifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224A415FC(v1, v15, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        return *v15;
      }

      v24 = *v15;
      v26 = v15[1];

      v25 = [v24 extensionIdentity];
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        return *v15;
      }

      v24 = *v15;
      v25 = [*v15 extensionIdentity];
    }

    v27 = v25;

    return v27;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      (*(v3 + 32))(v6, v15, v2);
      v22 = sub_224DABCA8();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        return *v15;
      }

      v22 = *v15;
      v23 = v15[2];
    }

    return v22;
  }

  if (EnumCaseMultiPayload == 5)
  {
    return *v15;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v18 = *(v15 + *(v17 + 48));

    v19 = *(v15 + *(v17 + 64));
  }

  (*(v8 + 32))(v11, v15, v7);
  v20 = sub_224DABDB8();
  (*(v8 + 8))(v11, v7);
  return v20;
}

id sub_224A4A5EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAF8E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_224A4A740(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_224DAF218();
  if (!v26)
  {
    return sub_224DAF048();
  }

  v48 = v26;
  v52 = sub_224DAFA28();
  v39 = sub_224DAFA38();
  sub_224DAF9D8();
  result = sub_224DAF208();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_224DAF258();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_224DAFA18();
      result = sub_224DAF228();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_224A4AB6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:
    swift_endAccess();
    return 0;
  }

  if (v3 < 0)
  {
    v18 = *&v0[v2];
  }

  if (!sub_224DAF838())
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = sub_224A4AD68();
  if (!v4)
  {
    v5 = *&v0[v2];
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v20 = *&v0[v2];
      }

      v21 = sub_224DAF838();
      v7 = __OFSUB__(v21, 1);
      result = v21 - 1;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v7)
      {
LABEL_6:
        v4 = sub_224B82C70(result);
        goto LABEL_7;
      }
    }

    __break(1u);
    return result;
  }

LABEL_7:
  v9 = v4;
  swift_endAccess();
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365108);
  v11 = v0;
  v12 = sub_224DAB228();
  v13 = sub_224DAF268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    v15 = *&v1[v2];
    if (v15 >> 62)
    {
      v19 = v14;
      v16 = sub_224DAF838();
      v14 = v19;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;
    v17 = v14;

    _os_log_impl(&dword_224A2F000, v12, v13, "queue checked out; queuePool.count = %{public}ld", v17, 0xCu);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {
  }

  return v9;
}

uint64_t sub_224A4AD80(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_224A4AE40(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_224DAF7A8();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_224A439BC(v43, v44);
      v26 = sub_224DAED88();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_224A4B0F4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = sub_224A438E8(a1);
  if (v6)
  {
    v7 = v5;
    v8 = v2[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[2];
    v2[2] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B263CC();
    }

    v11 = *(v10 + 48);
    v12 = sub_224DA9908();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(*(v10 + 56) + 8 * v7);
    sub_224A4ADF4(v7, v10);
    v2[2] = v10;
    swift_endAccess();
    v14 = v13;
    v15 = sub_224A4A248();
    if (v15)
    {
      v16 = v15;
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365108);
      v18 = v14;
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543362;
        *(v21 + 4) = v18;
        *v22 = v13;
        v23 = v18;
        _os_log_impl(&dword_224A2F000, v19, v20, "Remove pending task: %{public}@", v21, 0xCu);
        sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v22, -1, -1);
        MEMORY[0x22AA5EED0](v21, -1, -1);
      }

      swift_beginAccess();
      v24 = v2[3];
      if (*(v24 + 16))
      {
        v25 = v2[3];

        v26 = sub_224A3E7EC(v16);
        if (v27)
        {
          v28 = *(*(v24 + 56) + 8 * v26);

          swift_beginAccess();
          v29 = v16;
          v30 = v2[3];
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v45 = v2[3];
          v2[3] = 0x8000000000000000;
          sub_224A4A72C(v28, v29, v31);

          v2[3] = v45;
          swift_endAccess();
        }

        else
        {
        }
      }

      v32 = sub_224CF8254();
      v34 = v33;
      swift_beginAccess();
      v35 = v2[5];
      if (*(v35 + 16))
      {
        v36 = v2[5];

        v37 = sub_224A3A40C(v32, v34);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);

          v40 = v39 <= 1;
          v41 = v39 - 1;
          if (!v40)
          {
            swift_beginAccess();
            v42 = v2[5];
            v43 = swift_isUniquelyReferenced_nonNull_native();
            v46 = v2[5];
            v2[5] = 0x8000000000000000;
            sub_224A9B9CC(v41, v32, v34, v43);

            v2[5] = v46;
            swift_endAccess();
LABEL_21:

            return v13;
          }
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_224B0D348(v32, v34);
      swift_endAccess();

      goto LABEL_21;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v13;
}

uint64_t sub_224A4B564(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *v5;

    v12 = a1;
    v13 = sub_224DAF888();

    if (v13)
    {
      v14 = sub_224B05EA4(v10, v12, a4, a5);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  a2(0);
  v18 = *(v7 + 40);
  v19 = sub_224DAF698();
  v20 = -1 << *(v7 + 32);
  v21 = v19 & ~v20;
  if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v7 + 48) + 8 * v21);
    v24 = sub_224DAF6A8();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v17;
  v29 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v27 = v29;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_224A4B8F0(v21);
  result = v28;
  *v17 = v29;
  return result;
}

uint64_t sub_224A4B790(uint64_t a1)
{
  sub_224A4B83C(a1, v4);
  if (!v5)
  {
    sub_224A3311C(v4, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_5;
  }

  type metadata accessor for ExtensionTask(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  v1 = sub_224DA98D8();

  return v1 & 1;
}

uint64_t sub_224A4B83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A4B8F0(unint64_t result)
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

    v9 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_224DAF698();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t *sub_224A4BA90(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 80);
  v16 = *(v7 + 88);
  v17 = type metadata accessor for TaskSession();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return sub_224A4BB1C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t *sub_224A4BB1C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v43 = a6;
  v41 = a2;
  v12 = *v7;
  v13 = a4;
  v14 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  v22 = qword_281365420;
  v23 = sub_224DA9878();
  (*(*(v23 - 8) + 56))(v7 + v22, 1, 1, v23);
  sub_224DA9808();
  *(v7 + *(*v7 + 160) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *(*v7 + 168)) = 0;
  *(v7 + *(*v7 + 176)) = 0;
  v24 = *(*v7 + 184);
  v25 = *(v12 + 88);
  v26 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v7 + v24, 1, 1, AssociatedTypeWitness);
  *(v7 + *(*v7 + 192)) = 0;
  *(v7 + *(*v7 + 200)) = 0;
  v7[3] = a1;
  v7[5] = a3;
  if (v13 == 2)
  {
    v28 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = a1;
    v31 = a3;
    v32 = sub_224A45CAC(a1 + v28, v21);
    sub_224A3D3B8(v21, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    if (v32)
    {
      v33 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      swift_beginAccess();
      v34 = *&v30[v33];
      v35 = sub_224DAE8B8();
      (*(*(v35 - 8) + 56))(v17, 3, 5, v35);

      v36 = sub_224D41D20(v17, v34);

      sub_224A3D3B8(v17, type metadata accessor for ExtensionTask.SchedulingOption);
    }

    else
    {

      v36 = 0;
    }

    v37 = v36 & 1;
  }

  else
  {
    v37 = a4 & 1;
  }

  *(v7 + 32) = v37;
  (*(*(v26 - 8) + 32))(v7 + *(*v7 + 152), v41, v26);
  v38 = v7 + qword_28135C660;
  v39 = *(a5 + 16);
  *v38 = *a5;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a5 + 32);
  *(v7 + *(*v7 + 160) + 8) = v42;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_224A4BF74()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  aBlock[4] = sub_224A4C6A4;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_20_0;
  v12 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v14[1] = MEMORY[0x277D84F90];
  sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_224A4C200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A4C248(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224A4C290()
{
  result = qword_281350BB0;
  if (!qword_281350BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F3460, &unk_224DB36F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BB0);
  }

  return result;
}

void sub_224A4C2FC(void *a1)
{
  v2 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-1] - v5;
  sub_224DA9808();
  v7 = sub_224DA9878();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = qword_281365420;
  swift_beginAccess();
  sub_224A4C6AC(v6, a1 + v8);
  swift_endAccess();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_2813516A0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v12 = 136446722;
    v15 = a1[3];
    v16 = *&v15[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v17 = *&v15[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v18 = sub_224A33F74(v16, v17, v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_224A33F74(0x29287472617473, 0xE700000000000000, v28);
    *(v12 + 22) = 2114;
    *(v12 + 24) = v15;
    *v13 = v15;
    v19 = v15;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s]: %{public}s with task %{public}@", v12, 0x20u);
    sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v20 = a1 + *(*a1 + 160);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(a1, *(v2 + 80), *(v2 + 88), ObjectType, v21);
    swift_unknownObjectRelease();
  }

  v23 = *(a1[3] + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target);
  if (v23)
  {
    v24 = *(*a1 + 176);
    v25 = *(a1 + v24);
    *(a1 + v24) = v23;
    v26 = v23;

    sub_224A4C958();
  }

  else
  {
    sub_224A4DA3C();
  }
}

uint64_t sub_224A4C6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_224A4C720(uint64_t a1)
{
  v2 = v1;
  sub_224DA97B8();
  v5 = v4;
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365108);

  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    v11 = (*(a1 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
    v12 = *v11;
    v13 = v11[1];

    v14 = sub_224A33F74(v12, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2050;
    *(v9 + 14) = -v5;
    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}s]: task session started. created %{public}fs ago.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v15 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_lock(*(v15 + 16));
  sub_224A4C91C(*(a1 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock(v16);
}

void sub_224A4C958()
{
  v1 = v0;
  v42 = *v0;
  v2 = type metadata accessor for ExtensionTask.Identifier(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAE938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 5);
  BSDispatchQueueAssert();
  v12 = *(v0 + 3);
  v13 = *&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];
  v43 = *&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  v14 = qword_281351698;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_2813516A0);

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  v18 = os_log_type_enabled(v16, v17);
  v44 = v10;
  v45 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v46 = v2;
    v20 = v19;
    v21 = v7;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47[0] = v23;
    *v20 = 136446722;
    *(v20 + 4) = sub_224A33F74(v43, v13, v47);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_224A33F74(0xD000000000000012, 0x8000000224DCF920, v47);
    *(v20 + 22) = 2114;
    *(v20 + 24) = v12;
    *v22 = v12;
    v24 = v12;
    _os_log_impl(&dword_224A2F000, v16, v17, "[%{public}s]: %{public}s with task %{public}@", v20, 0x20u);
    sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
    v25 = v22;
    v7 = v21;
    v10 = v44;
    MEMORY[0x22AA5EED0](v25, -1, -1);
    swift_arrayDestroy();
    v26 = v23;
    v6 = v45;
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  v27 = *&v1[*(*v1 + 176)];
  if (v27)
  {
    sub_224D42D6C(&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v5, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = MEMORY[0x277CE3DC0];
    if (EnumCaseMultiPayload != 8)
    {
      v29 = MEMORY[0x277CE3DB8];
    }

    (*(v7 + 104))(v10, *v29, v6);
    v46 = v27;
    sub_224A3D3B8(v5, type metadata accessor for ExtensionTask.Identifier);
    v40[1] = *(*v1 + 152);
    v30 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v31 = *&v12[v30];
    v32 = qword_28135C660;
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v41 = v7;
    v36 = v42;
    v35 = v43;
    v37 = *(v42 + 80);
    v34[2] = v37;
    v38 = *(v36 + 88);
    v34[3] = v38;
    v34[4] = v33;
    v34[5] = v35;
    v34[6] = v13;
    v39 = *(v38 + 32);

    v43 = v31;
    v39(v46, v31, &v1[v32], v10, sub_224A4D200, v34, v37, v38);
    (*(v41 + 8))(v44, v45);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224A4CEE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A4CF18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A4CF60(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 24))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A4D188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC8, &unk_224DBADE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A4D210(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_224A4D248(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a1;
  v9 = sub_224DAB7B8();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v17 = sub_224DAF728();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + 40);
    v23 = Strong;
    (*(v18 + 16))(v21, v37, v17);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = a5;
    *(v25 + 3) = a6;
    *(v25 + 4) = v23;
    (*(v18 + 32))(&v25[v24], v21, v17);
    aBlock[4] = sub_224A4D864;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_17_0;
    v26 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v42 = MEMORY[0x277D84F90];
    sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A4C290();
    v27 = v41;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v12, v26);
    _Block_release(v26);
    (*(v40 + 8))(v12, v27);
    (*(v38 + 8))(v16, v39);
  }

  else
  {
    v28 = v36;
    v29 = a3;
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_2813516A0);
    v31 = v28;

    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_224A33F74(v29, v31, aBlock);
      _os_log_impl(&dword_224A2F000, v32, v33, "[%{public}s]: Session deallocated before task context can proceed", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v35, -1, -1);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }
  }
}

uint64_t sub_224A4D730()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(sub_224DAF728() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 4);

  v9 = *(AssociatedTypeWitness - 8);
  if (!(*(v9 + 48))(&v0[v6], 1, AssociatedTypeWitness))
  {
    (*(v9 + 8))(&v0[v6], AssociatedTypeWitness);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

void sub_224A4D864()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_getAssociatedTypeWitness();
  v3 = *(sub_224DAF728() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_224A4D8E8(v4, v5);
}

void sub_224A4D8E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 184);
  swift_beginAccess();
  v6 = *(v4 + 88);
  v7 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v8 = sub_224DAF728();
  (*(*(v8 - 8) + 24))(a1 + v5, a2, v8);
  swift_endAccess();
  sub_224A4DA3C();
}

uint64_t sub_224A4D9D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4700, &unk_224DB3A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224A4DA3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v62 - v5;
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_224DAF728();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = type metadata accessor for ExtensionTask.Identifier(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DA9908();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 5);
  BSDispatchQueueAssert();
  sub_224DAD198();
  *&v67 = 0x206B7361543CLL;
  *(&v67 + 1) = 0xE600000000000000;
  v24 = *(v1 + 3);
  (*(v19 + 16))(v22, &v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v18);
  sub_224D42EB0(&qword_281351A00, MEMORY[0x277CC95F0]);
  v25 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v25);

  (*(v19 + 8))(v22, v18);
  MEMORY[0x22AA5D210](8250, 0xE200000000000000);
  sub_224D42D6C(&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v17, type metadata accessor for ExtensionTask.Identifier);
  v26 = sub_224A40C80();
  MEMORY[0x22AA5D210](v26);

  sub_224A3D3B8(v17, type metadata accessor for ExtensionTask.Identifier);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  v27 = sub_224DAD188();
  v28 = *(*v1 + 192);
  v29 = *&v1[v28];
  *&v1[v28] = v27;

  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v30 = sub_224DAB258();
  __swift_project_value_buffer(v30, qword_2813516A0);

  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v67 = v35;
    *v33 = 136446722;
    v37 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v36 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v38 = sub_224A33F74(v37, v36, &v67);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_224A33F74(0xD000000000000014, 0x8000000224DCF900, &v67);
    *(v33 + 22) = 2114;
    *(v33 + 24) = v24;
    *v34 = v24;
    v39 = v24;
    _os_log_impl(&dword_224A2F000, v31, v32, "[%{public}s]: %{public}s with task %{public}@", v33, 0x20u);
    sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  v41 = v65;
  v40 = AssociatedTypeWitness;
  v42 = v64;
  v43 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  if (v43)
  {
    v44 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    v45 = *(*v1 + 184);
    swift_beginAccess();
    (*(v42 + 16))(v13, &v1[v45], v41);
    v46 = *(v40 - 8);
    if ((*(v46 + 48))(v13, 1, v40) == 1)
    {

      sub_224A364AC(v43);
      (*(v42 + 8))(v13, v41);
      v67 = 0u;
      v68 = 0u;
    }

    else
    {
      *(&v68 + 1) = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
      (*(v46 + 32))(boxed_opaque_existential_1, v13, v40);

      sub_224A364AC(v43);
    }

    v43(&v67, sub_224A4F448, v1);
    sub_224A3D418(v43);

    sub_224A3311C(&v67, &qword_27D6F4760, &unk_224DB3680);
  }

  else
  {
    v47 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    if (v47)
    {
      v48 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem + 8];
      v49 = *(*v1 + 184);
      swift_beginAccess();
      v50 = v63;
      (*(v42 + 16))(v63, &v1[v49], v41);
      v51 = *(v40 - 8);
      if ((*(v51 + 48))(v50, 1, v40) == 1)
      {

        sub_224A364AC(v47);
        (*(v42 + 8))(v50, v41);
        v67 = 0u;
        v68 = 0u;
      }

      else
      {
        *(&v68 + 1) = v40;
        v58 = __swift_allocate_boxed_opaque_existential_1(&v67);
        (*(v51 + 32))(v58, v50, v40);

        sub_224A364AC(v47);
      }

      v59 = v47(&v67);
      sub_224A3311C(&v67, &qword_27D6F4760, &unk_224DB3680);
      sub_224A4F450(v59, v1);

      sub_224A3D418(v47);
    }

    else
    {
      v53 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      if (v53)
      {
        v54 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem + 8];
        v55 = sub_224DAF128();
        v56 = v62;
        (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
        v57 = swift_allocObject();
        v57[2] = 0;
        v57[3] = 0;
        v57[4] = v53;
        v57[5] = v54;
        v57[6] = v1;
        v57[7] = sub_224A4F448;
        v57[8] = v1;
        swift_retain_n();
        sub_224A364AC(v53);
        sub_224D8E744(0, 0, v56, &unk_224DC13C0, v57);
      }

      else
      {
        sub_224A8B22C();
        v60 = swift_allocError();
        *v61 = 1;

        sub_224A4F450(v60, v1);
      }
    }
  }
}

uint64_t sub_224A4E3CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_224A4E41C(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365168);
  v17 = a4;

  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a7;
    v21 = a2;
    v22 = a3;
    v23 = swift_slowAlloc();
    v35 = a1;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v20 = 138543618;
    *(v20 + 4) = v17;
    *v23 = v17;
    *(v20 + 12) = 2082;
    v25 = v17;
    *(v20 + 14) = sub_224A33F74(a5, a6, aBlock);
    _os_log_impl(&dword_224A2F000, v18, v19, "[%{public}@] performing query - reason: %{public}s", v20, 0x16u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v26 = v23;
    a3 = v22;
    a2 = v21;
    a7 = v36;
    MEMORY[0x22AA5EED0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v27 = v24;
    a1 = v35;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v28 = *&v42[0];
      sub_224A3317C(a9, v42);
      v29 = swift_allocObject();
      v29[2] = a2;
      v29[3] = a3;
      v29[4] = v17;
      v29[5] = a7;
      v29[6] = v28;
      v29[7] = a8;
      sub_224A36F98(v42, (v29 + 8));
      v40 = sub_224A4ECB4;
      v41 = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A4E888;
      v39 = &block_descriptor_142;
      v30 = _Block_copy(aBlock);
      v31 = v17;

      swift_unknownObjectRetain();
      v32 = a8;

      [v28 getAllCurrentDescriptorsWithCompletion_];
      _Block_release(v30);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  swift_beginAccess();
  v33 = *(a7 + 16);
  *(a7 + 16) = 0;

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v34 = sub_224CBC42C(6u, 0xD000000000000029, 0x8000000224DC7120);
  a2();
}

uint64_t sub_224A4E7E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_224A4E890(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_224A4E91C(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v40 = a7;
  v41 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v38 - v21;
  if (a2)
  {
    v23 = a2;
    a3(a2);
  }

  else
  {
    v38[1] = a4;
    v39 = a9;
    v24 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A3796C(a5 + v24, v17, &unk_27D6F5060, &qword_224DB5620);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      v25 = v41;
      swift_beginAccess();
      v26 = *(v25 + 16);
      *(v25 + 16) = a1;
      v27 = a1;
      v28 = v39;
      v29 = a3;
      v30 = v40;
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      v29 = a3;
      if (a1)
      {
        v31 = sub_224DAE9C8();
        MEMORY[0x28223BE20](v31);
        v38[-2] = v22;
        sub_224A4ECE8(sub_224D5BC58, &v38[-4], v32);
        sub_224DAE9F8();
        sub_224DAE9E8();
        sub_224DAE9D8();
        v33 = sub_224DAE9B8();
      }

      else
      {
        v33 = 0;
      }

      v28 = v39;
      v30 = v40;
      (*(v19 + 8))(v22, v18);
      v25 = v41;
      swift_beginAccess();
      v26 = *(v25 + 16);
      *(v25 + 16) = v33;
    }

    [v30 invalidate];
    swift_beginAccess();
    v34 = *(v25 + 16);
    v35 = v34;
    v36 = sub_224D59E14(v34, v28);

    swift_beginAccess();
    v37 = *(v25 + 16);
    *(v25 + 16) = v36;

    v29(0);
  }
}

uint64_t sub_224A4ED18(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x22AA5DCC0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_224DAF9B8();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_224DAF9F8();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_224DAFA08();
        sub_224DAF9C8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void sub_224A4EEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224A4EF80(v3, a2, a3, a1);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_224A4EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {
    v10 = *(a1 + v8);

    v11 = sub_224A3A40C(a2, a3);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  sub_224A3317C(a4, v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_224A4F270(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_224A4F270((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  sub_224A36F98(v20, &v13[5 * v15 + 4]);
  swift_beginAccess();

  v16 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_224A4F434(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v19;
  return swift_endAccess();
}

void *sub_224A4F128(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_224A4F294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_224A3A40C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_224A5A0DC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_224A3A40C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_224B29544(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_224A4F450(void *a1, uint64_t a2)
{
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 40);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_224A4F740;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_224DAB7E8();
  v19[1] = MEMORY[0x277D84F90];
  sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v8, v16);
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_224A4F6FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A4F748(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 192);
  v5 = *(a1 + v4);
  *(a1 + v4) = 0;

  v6 = *(*a1 + 168);
  v7 = *(a1 + v6);
  *(a1 + v6) = a2;
  v8 = a2;

  sub_224A4F7C4();
}

void sub_224A4F7C4()
{
  v1 = v0;
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = v0[5];
  BSDispatchQueueAssert();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_2813516A0);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v15 = 136446722;
    v46 = v6;
    v47[0] = v16;
    v17 = v1[3];
    v43 = v13;
    v18 = v3;
    v19 = v10;
    v20 = v2;
    v22 = *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v21 = *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v23 = sub_224A33F74(v22, v21, v47);
    v2 = v20;
    v10 = v19;

    *(v15 + 4) = v23;
    v3 = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8E0, v47);
    *(v15 + 22) = 2114;
    *(v15 + 24) = v17;
    v24 = v44;
    *v44 = v17;
    v25 = v17;
    v6 = v46;
    v13 = v43;
    _os_log_impl(&dword_224A2F000, v43, v14, "[%{public}s]: %{public}s with task %{public}@", v15, 0x20u);
    sub_224A3311C(v24, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    v26 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  v27 = v1[3];
  v28 = *(v27 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  if (v28)
  {
    v29 = *(v27 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
    v30 = qword_281365420;
    swift_beginAccess();
    sub_224A4FD50(v1 + v30, v10);
    if ((*(v3 + 48))(v10, 1, v2))
    {

      sub_224A3311C(v10, &qword_27D6F32B0, &qword_224DB3EA0);
      v31 = 1.0;
    }

    else
    {
      (*(v3 + 16))(v6, v10, v2);

      sub_224A3311C(v10, &qword_27D6F32B0, &qword_224DB3EA0);
      sub_224DA97B8();
      v31 = v39;
      (*(v3 + 8))(v6, v2);
    }

    v40 = *(v1 + *(*v1 + 168));
    v41 = v40;
    v28(*&v31 ^ 0x8000000000000000, 0, v40);

    sub_224A3D418(v28);
    sub_224A50268(v1);
  }

  else
  {

    v32 = sub_224DAB228();
    v33 = sub_224DAF288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47[0] = v35;
      *v34 = 136446210;
      v36 = *(v27 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
      v37 = *(v27 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8);

      v38 = sub_224A33F74(v36, v37, v47);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_224A2F000, v32, v33, "[%{public}s]: No task completion found.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v35, -1, -1);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }

    sub_224A50268(v1);
  }
}

uint64_t sub_224A4FD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A4FDC0(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v37 = a11;
  v36 = a10;
  v34 = a5;
  v35 = a9;
  v17 = sub_224DAB7B8();
  v41 = *(v17 - 8);
  v18 = *(v41 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAB848();
  v39 = *(v21 - 8);
  v40 = v21;
  v22 = *(v39 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3317C(a6, &aBlock);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  sub_224A36F98(&aBlock, (v25 + 4));
  v25[9] = a7;
  v25[10] = a8;
  v38 = *&a4[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  sub_224A3317C(a6, v48);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = a3;
  *(v26 + 24) = v27;
  sub_224A36F98(v48, v26 + 32);
  *(v26 + 72) = a4;
  *(v26 + 80) = v36;
  *(v26 + 88) = sub_224A58650;
  *(v26 + 96) = v25;
  *(v26 + 104) = v37;
  v46 = sub_224A50900;
  v47 = v26;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v44 = sub_224A39F40;
  v45 = &block_descriptor_127;
  v28 = _Block_copy(&aBlock);
  v29 = a4;
  v30 = v34;

  v31 = a3;

  sub_224DAB7E8();
  v42 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v24, v20, v28);
  _Block_release(v28);

  (*(v41 + 8))(v20, v17);
  (*(v39 + 8))(v24, v40);
}

uint64_t sub_224A50178()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224A501C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void sub_224A50268(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  v11 = *(v2 + 184);
  swift_beginAccess();
  (*(v7 + 16))(v10, a1 + v11, v6);
  LODWORD(v11) = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness);
  (*(v7 + 8))(v10, v6);
  if (v11 == 1)
  {
    sub_224A5192C();
  }

  else
  {
    sub_224A5040C();
  }
}

uint64_t sub_224A5040C()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v38 = *(*v0 + 80);
  v39 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v36 - v5;
  v43 = sub_224DAF728();
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *(v1 + 5);
  BSDispatchQueueAssert();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v44 = AssociatedTypeWitness;
  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_2813516A0);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v47[0] = v17;
    *v15 = 136446722;
    v18 = *(v1 + 3);
    v20 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v19 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v21 = sub_224A33F74(v20, v19, v47);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8C0, v47);
    *(v15 + 22) = 2114;
    *(v15 + 24) = v18;
    *v16 = v18;
    v22 = v18;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s]: %{public}s with task %{public}@", v15, 0x20u);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  v23 = *(*v1 + 184);
  swift_beginAccess();
  v24 = v46;
  v25 = v10;
  v26 = v10;
  v27 = v43;
  v41 = *(v46 + 16);
  v41(v26, &v1[v23], v43);
  v28 = v44;
  v40 = *(v45 + 48);
  v29 = v40(v25, 1, v44);
  v30 = *(v24 + 8);
  v46 = v24 + 8;
  result = v30(v25, v27);
  if (v29 == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v42;
    v41(v42, &v1[v23], v27);
    if (v40(v32, 1, v28) == 1)
    {
      return v30(v32, v27);
    }

    else
    {
      v33 = v45;
      v34 = v37;
      (*(v45 + 32))(v37, v32, v28);
      v35 = *(*v1 + 152);
      (*(v39 + 40))(v34, v38);
      sub_224A5192C();
      return (*(v33 + 8))(v34, v28);
    }
  }

  return result;
}

void sub_224A5091C(void *a1, uint64_t a2, void *a3, char *a4, int a5, void (*a6)(void, void), uint64_t a7, uint64_t a8)
{
  v124 = a7;
  v115 = a5;
  v123 = a4;
  v13 = sub_224DAB7B8();
  v120 = *(v13 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v13);
  v118 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DAB848();
  v117 = *(v119 - 8);
  v16 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB798();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_224DAB878();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  if (a1)
  {
    v113 = &v107 - v29;
    v114 = v30;
    v121 = v28;
    v31 = a1;
    if (a2 < 1)
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v56 = sub_224DAB258();
      __swift_project_value_buffer(v56, qword_281365168);
      sub_224A3317C(a3, &aBlock);
      v57 = a1;
      v58 = sub_224DAB228();
      v59 = sub_224DAF288();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v110 = a6;
        v62 = v61;
        v63 = swift_slowAlloc();
        *&v130[0] = v63;
        *v60 = 138543618;
        __swift_project_boxed_opaque_existential_1(&aBlock, v127);
        v64 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v60 + 4) = v64;
        *v62 = v64;
        *(v60 + 12) = 2082;
        v131 = a1;
        v65 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v66 = sub_224DAEE28();
        v68 = sub_224A33F74(v66, v67, v130);

        *(v60 + 14) = v68;
        _os_log_impl(&dword_224A2F000, v58, v59, "[%{public}@] query failed - will try lazy reload later: %{public}s", v60, 0x16u);
        sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
        v69 = v62;
        a6 = v110;
        MEMORY[0x22AA5EED0](v69, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x22AA5EED0](v63, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      v96 = a1;
      a6(0, a1);
    }

    else
    {
      v112 = a2;
      v111 = v13;
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v32 = sub_224DAB258();
      __swift_project_value_buffer(v32, qword_281365168);
      sub_224A3317C(a3, &aBlock);
      v33 = a1;
      v34 = sub_224DAB228();
      v35 = sub_224DAF288();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v110 = a6;
        v37 = v36;
        v38 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v130[0] = v109;
        *v37 = 138543874;
        v108 = v35;
        v122 = a3;
        __swift_project_boxed_opaque_existential_1(&aBlock, v127);
        v107 = v34;
        v39 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v37 + 4) = v39;
        v40 = v38;
        *v38 = v39;
        *(v37 + 12) = 2050;
        *(v37 + 14) = v112;
        *(v37 + 22) = 2082;
        v131 = a1;
        v41 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v42 = sub_224DAEE28();
        v44 = sub_224A33F74(v42, v43, v130);
        a3 = v122;

        *(v37 + 24) = v44;
        v45 = v107;
        _os_log_impl(&dword_224A2F000, v107, v108, "[%{public}@] query failed - retrying in 3 seconds (%{public}ld attempts remaining): %{public}s", v37, 0x20u);
        sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v40, -1, -1);
        v46 = v109;
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x22AA5EED0](v46, -1, -1);
        v47 = v110;
        MEMORY[0x22AA5EED0](v37, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v47 = a6;
      }

      v70 = v123;
      v122 = *&v123[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
      sub_224DAB858();
      *v22 = 3;
      (*(v19 + 104))(v22, *MEMORY[0x277D85188], v18);
      v71 = v113;
      sub_224DAB868();
      (*(v19 + 8))(v22, v18);
      v114 = *(v114 + 8);
      (v114)(v27, v121);
      sub_224A3317C(a3, v130);
      v72 = swift_allocObject();
      *(v72 + 16) = v70;
      sub_224A36F98(v130, v72 + 24);
      *(v72 + 64) = v112;
      *(v72 + 72) = v115 & 1;
      v73 = v124;
      *(v72 + 80) = v47;
      *(v72 + 88) = v73;
      *(v72 + 96) = a1;
      v128 = sub_224D5BC3C;
      v129 = v72;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v126 = sub_224A39F40;
      v127 = &block_descriptor_136;
      v74 = _Block_copy(&aBlock);
      v75 = a1;
      v76 = v70;

      v77 = v116;
      sub_224DAB7E8();
      v131 = MEMORY[0x277D84F90];
      sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v78 = v118;
      v79 = v111;
      sub_224DAF788();
      MEMORY[0x22AA5D6A0](v71, v77, v78, v74);
      _Block_release(v74);

      (*(v120 + 8))(v78, v79);
      (*(v117 + 8))(v77, v119);
      (v114)(v71, v121);
    }
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v48 = sub_224DAB258();
    __swift_project_value_buffer(v48, qword_281365168);
    v122 = a3;
    sub_224A3317C(a3, &aBlock);
    v49 = sub_224DAB228();
    v50 = sub_224DAF2A8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = a6;
      v53 = swift_slowAlloc();
      *v51 = 138543362;
      __swift_project_boxed_opaque_existential_1(&aBlock, v127);
      v54 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      *(v51 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&dword_224A2F000, v49, v50, "[%{public}@] query completed", v51, 0xCu);
      sub_224A3311C(v53, &unk_27D6F69F0, &unk_224DB3900);
      v55 = v53;
      a6 = v52;
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v51, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    swift_beginAccess();
    v80 = *(a8 + 16);
    if (v80)
    {
      sub_224A3317C(v122, &aBlock);
      v81 = v80;
      v82 = sub_224DAB228();
      v83 = sub_224DAF2A8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138543874;
        __swift_project_boxed_opaque_existential_1(&aBlock, v127);
        v86 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v84 + 4) = v86;
        *v85 = v86;
        *(v84 + 12) = 2050;
        v87 = sub_224DAE9C8();
        if (v87 >> 62)
        {
          v88 = sub_224DAF838();
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v84 + 14) = v88;

        *(v84 + 22) = 2050;
        v89 = sub_224DAE9D8();
        if (v89 >> 62)
        {
          v90 = sub_224DAF838();
        }

        else
        {
          v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v84 + 24) = v90;

        _os_log_impl(&dword_224A2F000, v82, v83, "[%{public}@] query returned %{public}ld widget descriptors, %{public}ld controls", v84, 0x20u);
        sub_224A3311C(v85, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v85, -1, -1);
        MEMORY[0x22AA5EED0](v84, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      sub_224A3317C(v122, &aBlock);
      v97 = swift_allocObject();
      sub_224A36F98(&aBlock, (v97 + 2));
      v98 = v123;
      v99 = v124;
      v97[7] = v123;
      v97[8] = a6;
      v97[9] = v99;
      v100 = v98;

      sub_224A51E10(v81, sub_224A54124, v97);
    }

    else
    {
      sub_224A3317C(v122, &aBlock);
      v91 = sub_224DAB228();
      v92 = sub_224DAF298();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138543362;
        __swift_project_boxed_opaque_existential_1(&aBlock, v127);
        v95 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v93 + 4) = v95;
        *v94 = v95;
        _os_log_impl(&dword_224A2F000, v91, v92, "[%{public}@] query failed without error", v93, 0xCu);
        sub_224A3311C(v94, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v94, -1, -1);
        MEMORY[0x22AA5EED0](v93, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_224DB2780;
      v102 = v122[4];
      __swift_project_boxed_opaque_existential_1(v122, v122[3]);
      *(inited + 32) = sub_224DAE338();
      v103 = &v123[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      v104 = *(v103 + 24);
      v105 = *(v103 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
      (*(v105 + 40))(inited, v104, v105);
      swift_setDeallocating();
      v106 = *(inited + 16);
      swift_arrayDestroy();
      swift_endAccess();
      a6(0, 0);
    }
  }
}

uint64_t sub_224A51884()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224A518CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_224A5192C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[5];
  BSDispatchQueueAssert();
  v4 = *(*v0 + 200);
  if (*(v0 + v4) == 1)
  {
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_2813516A0);

    oslog = sub_224DAB228();
    v6 = sub_224DAF288();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v7 = 136446722;
      v10 = v1[3];
      v11 = *&v10[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v12 = *&v10[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v13 = sub_224A33F74(v11, v12, &v30);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8A0, &v30);
      *(v7 + 22) = 2114;
      *(v7 + 24) = v10;
      *v8 = v10;
      v14 = v10;
      _os_log_impl(&dword_224A2F000, oslog, v6, "[%{public}s]: %{public}s with task %{public}@ has already completed", v7, 0x20u);
      sub_224A3311C(v8, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v0 + v4) = 1;
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_2813516A0);

    v16 = sub_224DAB228();
    v17 = sub_224DAF2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v18 = 136446722;
      v21 = v1[3];
      v22 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v23 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v24 = sub_224A33F74(v22, v23, &v30);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8A0, &v30);
      *(v18 + 22) = 2114;
      *(v18 + 24) = v21;
      *v19 = v21;
      v25 = v21;
      _os_log_impl(&dword_224A2F000, v16, v17, "[%{public}s]: %{public}s with task %{public}@", v18, 0x20u);
      sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    v26 = v1 + *(*v1 + 160);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 1);
      ObjectType = swift_getObjectType();
      (*(v27 + 16))(v1, *(v2 + 80), *(v2 + 88), ObjectType, v27);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_224A51E10(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v45 = a2;
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB848();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = v12;
  *(v12 + 16) = v13;
  dispatch_group_enter(v11);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = sub_224DAE9C8();
  v17 = v16;
  v50 = v8;
  v51 = v5;
  if (v16 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    v42 = sub_224DAFB68();

    v17 = v42;
  }

  else
  {
    v18 = v16 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    if (swift_dynamicCastMetatype() || (v36 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v37 = (v18 + 32);
      while (1)
      {
        v38 = *v37;
        aBlock[7] = &unk_283850EC8;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        ++v37;
        if (!--v36)
        {
          goto LABEL_3;
        }
      }

      v17 = v18 | 1;
    }
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v11;

  v20 = v11;
  v21 = v53;
  sub_224A524EC(v17, sub_224A53D14, v19, v53, v14);

  dispatch_group_enter(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  v23 = sub_224DAE9D8();
  v24 = v23;
  v52 = v4;
  if (v23 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    v43 = sub_224DAFB68();

    v24 = v43;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    if (swift_dynamicCastMetatype() || (v39 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v40 = (v25 + 32);
      while (1)
      {
        v41 = *v40;
        aBlock[6] = &unk_283850EC8;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        ++v40;
        if (!--v39)
        {

          v21 = v53;
          goto LABEL_7;
        }
      }

      v24 = v25 | 1;
      v21 = v53;
    }
  }

LABEL_7:
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v20;
  v53 = v20;

  sub_224A524EC(v24, sub_224A53E7C, v26, v21, v14);

  v44 = *(&v21->isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = a1;
  v28 = v45;
  v27[4] = v22;
  v27[5] = v28;
  v27[6] = v47;
  aBlock[4] = sub_224A53EA8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_91_0;
  v29 = _Block_copy(aBlock);

  v30 = a1;

  v31 = v46;
  sub_224DAB7E8();
  v54 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v32 = v48;
  v33 = v52;
  sub_224DAF788();
  v34 = v53;
  sub_224DAF308();
  _Block_release(v29);

  (*(v51 + 8))(v32, v33);
  (*(v49 + 8))(v31, v50);
}

uint64_t sub_224A52490()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A524EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v55 = a4;
  v48 = a3;
  v47 = a2;
  v54 = sub_224DAB7B8();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224DAB848();
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_allocObject();
  *(v61 + 16) = a1;

  v68 = dispatch_group_create();
  v70 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v11 = 0;
    v58 = (v55 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_intentResolver);
    v12 = v70 & 0xC000000000000001;
    v69 = v70 & 0xFFFFFFFFFFFFFF8;
    v56 = &v74;
    v13 = &selRef_pairingState;
    v59 = i;
    v57 = v70 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v16 = MEMORY[0x22AA5DCC0](v11, v70);
      }

      else
      {
        if (v11 >= *(v69 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(v70 + 8 * v11 + 32);
      }

      v15 = v16;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v18 = [v16 v13[202]];
      if (v18)
      {
        v14 = v18;

        v15 = v14;
      }

      else
      {
        v19 = [v15 intentType];
        if (v19)
        {
          v20 = v19;
          v67 = sub_224DAEE18();
          v63 = v21;

          dispatch_group_enter(v68);
          v22 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
          v23 = [v15 extensionIdentity];
          v24 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v25 = sub_224DA9FE8();
          v62 = v25;
          v66 = v26;
          swift_endAccess();

          v27 = swift_allocObject();
          v29 = v60;
          v28 = v61;
          v27[2] = v15;
          v27[3] = v29;
          v27[4] = v28;
          v27[5] = v11;
          v27[6] = v68;
          v30 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
          v31 = swift_allocObject();
          v32 = v63;
          v31[2] = v67;
          v31[3] = v32;
          v31[4] = v25;
          v31[5] = v66;
          v31[6] = sub_224D5BC1C;
          v31[7] = v27;
          v64 = *v30;
          v33 = objc_allocWithZone(MEMORY[0x277D21538]);
          v65 = v15;

          v34 = v68;

          v35 = sub_224DAEDE8();
          v36 = sub_224DAEDE8();
          v15 = [v33 initWithExtensionBundleIdentifier:v35 intentType:v36];

          v76 = sub_224D5BC2C;
          v77 = v31;
          aBlock = MEMORY[0x277D85DD0];
          v73 = 1107296256;
          v74 = sub_224A4E888;
          v75 = &block_descriptor_103;
          v37 = _Block_copy(&aBlock);

          i = v59;
          [v64 provideIntentWithOptions:v15 completionHandler:v37];
          v12 = v57;
          _Block_release(v37);

          v13 = &selRef_pairingState;
        }
      }

      ++v11;
      if (v17 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v38 = *(v55 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  v39 = swift_allocObject();
  v40 = v48;
  v39[2] = v47;
  v39[3] = v40;
  v39[4] = v61;
  v76 = sub_224A53CA0;
  v77 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_224A39F40;
  v75 = &block_descriptor_109;
  v41 = _Block_copy(&aBlock);

  v42 = v49;
  sub_224DAB7E8();
  v71 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v43 = v51;
  v44 = v54;
  sub_224DAF788();
  v45 = v68;
  sub_224DAF308();

  _Block_release(v41);
  (*(v53 + 8))(v43, v44);
  (*(v50 + 8))(v42, v52);
}

uint64_t sub_224A52C44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A52C94()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224A52CDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A52D24(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v91 = *(v2 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v2);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAB848();
  v88 = *(v5 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE6E8();
  v9 = *(v8 - 8);
  v103 = v8;
  v104 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v102 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DACAE8();
  v95 = *(v93 - 8);
  v12 = v95[8];
  v13 = MEMORY[0x28223BE20](v93);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v80 - v19;
  v85 = *(a1 + 24);
  v21 = qword_281365420;
  swift_beginAccess();
  v92 = a1;
  sub_224A3796C(a1 + v21, v20, &qword_27D6F32B0, &qword_224DB3EA0);
  v22 = sub_224DA9878();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  v101 = v15;
  if (v24 == 1)
  {
    sub_224A3311C(v20, &qword_27D6F32B0, &qword_224DB3EA0);
    v25 = 1.0;
  }

  else
  {
    sub_224DA97B8();
    v25 = v26;
    (*(v23 + 8))(v20, v22);
  }

  sub_224DA97B8();
  v28 = v27;
  v29 = v95 + 13;
  v30 = v94;
  v31 = v93;
  v32 = v95[13];
  v32(v94, *MEMORY[0x277CF9B28], v93);
  v33 = sub_224A53744();
  v34 = v91;
  v35 = v90;
  v89 = v5;
  if (v33)
  {
    v84 = v2;
    v36 = v33;
    v37 = v33;
    v38 = sub_224DA9518();

    v39 = [v38 code];
    v41 = v103;
    v40 = v104;
    v42 = *(v104 + 104);
    v43 = v30;
    v44 = v102;
    v99 = *MEMORY[0x277CE3C58];
    v97 = v42;
    v98 = v104 + 104;
    v42(v102);
    v45 = sub_224DAE6D8();
    v46 = *(v40 + 8);
    v104 = v40 + 8;
    v96 = v46;
    v46(v44, v41);
    v47 = v95;
    v48 = v95[1];
    v82 = v95 + 1;
    v81 = v48;
    v48(v43, v31);
    v49 = MEMORY[0x277CF9B30];
    if (v39 == v45)
    {
      v49 = MEMORY[0x277CF9B38];
    }

    v50 = v101;
    v51 = v32;
    v32(v101, *v49, v31);
    (v47[4])(v43, v50, v31);
    v83 = v38;
    v52 = [v38 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    v53 = sub_224DAF008();

    v54 = sub_224B420E8(v53);

    v55 = v29;
    v56 = v51;
    if (v54 >> 62)
    {
LABEL_22:
      v100 = v54 & 0xFFFFFFFFFFFFFF8;
      v101 = sub_224DAF838();
    }

    else
    {
      v100 = v54 & 0xFFFFFFFFFFFFFF8;
      v101 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = 0;
    v58 = v54 & 0xC000000000000001;
    while (v101 != v57)
    {
      if (v58)
      {
        v59 = MEMORY[0x22AA5DCC0](v57, v54);
      }

      else
      {
        if (v57 >= *(v100 + 16))
        {
          goto LABEL_21;
        }

        v59 = *(v54 + 8 * v57 + 32);
      }

      v60 = v59;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v61 = v54;
      v62 = v56;
      v63 = [v59 code];
      v64 = v102;
      v65 = v55;
      v66 = v103;
      v97(v102, v99, v103);
      v67 = sub_224DAE6D8();

      v68 = v66;
      v55 = v65;
      v96(v64, v68);
      ++v57;
      v56 = v62;
      v54 = v61;
      if (v63 == v67)
      {
        v30 = v94;
        v69 = v93;
        v81(v94, v93);

        v56(v30, *MEMORY[0x277CF9B38], v69);
        v2 = v84;
        v34 = v91;
        v35 = v90;
        goto LABEL_19;
      }
    }

    v2 = v84;
    v34 = v91;
    v35 = v90;
    v30 = v94;
  }

LABEL_19:
  v70 = -v25;
  v71 = v85;
  v72 = v86;
  sub_224A53778(v85, v30, v70);
  v104 = *(v72 + *((*MEMORY[0x277D85000] & *v72) + 0xC8));
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v71;
  *(v73 + 32) = v92;
  *(v73 + 40) = v70;
  *(v73 + 48) = -v28;
  aBlock[4] = sub_224A54A1C;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_8;
  v74 = _Block_copy(aBlock);
  v75 = v72;
  v76 = v71;

  v77 = v87;
  sub_224DAB7E8();
  v105 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  v78 = v95;
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v77, v35, v74);
  _Block_release(v74);
  (*(v34 + 8))(v35, v2);
  (*(v88 + 8))(v77, v89);
  (v78[1])(v94, v93);
}

uint64_t sub_224A536FC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A53744()
{
  v1 = v0[5];
  BSDispatchQueueAssert();
  return *(v0 + *(*v0 + 168));
}

uint64_t sub_224A53778(uint64_t a1, uint64_t a2, double a3)
{
  v26[0] = a1;
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v29 = sub_224DAB7B8();
  v31 = *(v29 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAB848();
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACAE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v26[1] = *(v3 + *((v7 & v6) + 0xD0));
  (*(v14 + 16))(v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v16 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *((v7 & v6) + 0x50);
  v18 = *((v7 & v6) + 0x58);
  v19 = v26[0];
  *(v17 + 24) = v18;
  *(v17 + 32) = v19;
  *(v17 + 40) = v3;
  *(v17 + 48) = a3;
  (*(v14 + 32))(v17 + v16, v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_224A55F3C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_22;
  v20 = _Block_copy(aBlock);
  v21 = v19;
  v22 = v3;
  sub_224DAB7E8();
  v32 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v23 = v27;
  v24 = v29;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v12, v23, v20);
  _Block_release(v20);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v12, v30);
}

uint64_t sub_224A53B8C()
{
  v1 = sub_224DACAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A53C60()
{
  MEMORY[0x22AA5EED0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_224A53CAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6);
}

void sub_224A53D40(unint64_t a1, uint64_t a2, NSObject *a3, unint64_t *a4, uint64_t *a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
    sub_224A3B79C(0, a4, a5);

    v16 = sub_224DAFB68();

    v9 = v16;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    sub_224A3B79C(0, a4, a5);
    if (!swift_dynamicCastMetatype())
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        v13 = (v10 + 32);
        while (1)
        {
          v14 = *v13;
          v15 = *a5;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v13;
          if (!--v12)
          {
            goto LABEL_3;
          }
        }

        v9 = v10 | 1;
      }
    }
  }

LABEL_3:
  swift_beginAccess();
  v11 = *(a2 + 16);
  *(a2 + 16) = v9;

  dispatch_group_leave(a3);
}

void sub_224A53ED8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  sub_224DAE9F8();
  swift_beginAccess();
  v7 = *(a1 + 16);

  sub_224DAE9E8();
  swift_beginAccess();
  v8 = *(a3 + 16);

  v9 = sub_224DAE9B8();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365168);

  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349312;
    swift_beginAccess();
    v14 = *(a1 + 16);
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v18 = *(a1 + 16);
      }

      v15 = sub_224DAF838();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v15;

    *(v13 + 12) = 2050;
    swift_beginAccess();
    v16 = *(a3 + 16);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v19 = *(a3 + 16);
      }

      v17 = sub_224DAF838();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 14) = v17;

    _os_log_impl(&dword_224A2F000, v11, v12, "Resolved default intents for descriptors: %{public}ld, controls: %{public}ld", v13, 0x16u);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  else
  {
  }

  a4(v9);
}

unint64_t sub_224A54134(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = sub_224DAE9C8();
  v6 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &unk_281351000;
  v85 = a2;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      goto LABEL_55;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v79 = v7;
    v82 = v6;
    v76 = v6 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x22AA5DCC0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      if (v8[225] != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365168);
      sub_224A3317C(a2, v87);
      v14 = v12;
      v15 = sub_224DAB228();
      v16 = sub_224DAF2A8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v86 = v19;
        *v17 = 138543618;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v20 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v87);
        *(v17 + 4) = v20;
        *v18 = v20;
        *(v17 + 12) = 2082;
        v21 = [v14 succinctDescription];
        if (v21)
        {
          v22 = v21;
          v23 = sub_224DAEE18();
          v25 = v24;
        }

        else
        {
          v25 = 0xE300000000000000;
          v23 = 7104878;
        }

        v26 = sub_224A33F74(v23, v25, &v86);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}@] Found: %{public}s", v17, 0x16u);
        sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        MEMORY[0x22AA5EED0](v17, -1, -1);

        v6 = v82;
        a2 = v85;
        v8 = &unk_281351000;
        v10 = v76;
        v7 = v79;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v87);
      }

      ++v9;
    }

    while (v7 != v9);
  }

  result = sub_224DAE9D8();
  v27 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v28 = result;
    if (!result)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_36;
    }
  }

  if (v28 < 1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v29 = 0;
  v30 = v27 & 0xC000000000000001;
  v80 = v28;
  v83 = v27;
  v77 = v27 & 0xC000000000000001;
  do
  {
    if (v30)
    {
      v31 = MEMORY[0x22AA5DCC0](v29, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v29 + 32);
    }

    v32 = v31;
    if (v8[225] != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281365168);
    sub_224A3317C(a2, v87);
    v34 = v32;
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v86 = v39;
      *v37 = 138543618;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v40 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v87);
      *(v37 + 4) = v40;
      *v38 = v40;
      *(v37 + 12) = 2082;
      v41 = [v34 succinctDescription];
      if (v41)
      {
        v42 = v41;
        v43 = sub_224DAEE18();
        v45 = v44;
      }

      else
      {
        v45 = 0xE300000000000000;
        v43 = 7104878;
      }

      v46 = sub_224A33F74(v43, v45, &v86);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_224A2F000, v35, v36, "[%{public}@] Found: %{public}s", v37, 0x16u);
      sub_224A3311C(v38, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v37, -1, -1);

      v27 = v83;
      a2 = v85;
      v8 = &unk_281351000;
      v30 = v77;
      v28 = v80;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    ++v29;
  }

  while (v28 != v29);
LABEL_36:

  result = sub_224DAE9E8();
  v47 = result;
  if (!(result >> 62))
  {
    v48 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_38;
    }

LABEL_53:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    v68 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    *(inited + 32) = sub_224DAE338();
    v69 = a3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
    swift_beginAccess();
    v70 = *(v69 + 24);
    v71 = *(v69 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    (*(v71 + 40))(inited, v70, v71);
    swift_setDeallocating();
    v72 = *(inited + 16);
    swift_arrayDestroy();
    swift_endAccess();
    return a4(a1, 0);
  }

  result = sub_224DAF838();
  v48 = result;
  if (!result)
  {
    goto LABEL_53;
  }

LABEL_38:
  if (v48 >= 1)
  {
    v49 = 0;
    v50 = v47 & 0xC000000000000001;
    v81 = v48;
    v84 = v47;
    v78 = v47 & 0xC000000000000001;
    do
    {
      if (v50)
      {
        v51 = MEMORY[0x22AA5DCC0](v49, v47);
      }

      else
      {
        v51 = *(v47 + 8 * v49 + 32);
      }

      v52 = v51;
      if (v8[225] != -1)
      {
        swift_once();
      }

      v53 = sub_224DAB258();
      __swift_project_value_buffer(v53, qword_281365168);
      sub_224A3317C(a2, v87);
      v54 = v52;
      v55 = sub_224DAB228();
      v56 = sub_224DAF2A8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v86 = v59;
        *v57 = 138543618;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v60 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v87);
        *(v57 + 4) = v60;
        *v58 = v60;
        *(v57 + 12) = 2082;
        v61 = [v54 succinctDescription];
        if (v61)
        {
          v62 = v61;
          v63 = sub_224DAEE18();
          v65 = v64;
        }

        else
        {
          v65 = 0xE300000000000000;
          v63 = 7104878;
        }

        v66 = sub_224A33F74(v63, v65, &v86);

        *(v57 + 14) = v66;
        _os_log_impl(&dword_224A2F000, v55, v56, "[%{public}@] Found: %{public}s", v57, 0x16u);
        sub_224A3311C(v58, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x22AA5EED0](v59, -1, -1);
        MEMORY[0x22AA5EED0](v57, -1, -1);

        v47 = v84;
        a2 = v85;
        v8 = &unk_281351000;
        v50 = v78;
        v48 = v81;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v87);
      }

      ++v49;
    }

    while (v48 != v49);
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_224A54A2C(uint64_t *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x88));
  os_unfair_lock_lock(*(v10 + 16));
  sub_224A54C20(a1, a2, a3);
  os_unfair_lock_unlock(*(v10 + 16));
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281365108);
  v12 = a2;
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_224A33F74(*&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v17);
    *(v15 + 12) = 2050;
    *(v15 + 14) = a4;
    *(v15 + 22) = 2050;
    *(v15 + 24) = a5;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s]: task session completed in %{public}fs. time since creation: %{public}fs", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  sub_224A57734(*(a3 + 40));
}

uint64_t sub_224A54C20(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = MEMORY[0x277D85000];
  v7 = *a1;
  v8 = *MEMORY[0x277D85000];
  v9 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0xA8));
  v10 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v11 = *(a3 + 32);
  v12 = *v10;
  sub_224A54DB8(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v11);
  v13 = *((*v6 & *a1) + 0xA0);
  swift_beginAccess();
  sub_224DA9908();
  v14 = *((v8 & v7) + 0x50);
  v15 = *((v8 & v7) + 0x58);
  type metadata accessor for TaskSession();
  sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0]);
  sub_224DAED48();
  sub_224DAED08();
  swift_endAccess();

  sub_224A57680(a2);
  return sub_224A57704(a2);
}

void sub_224A54DB8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = sub_224A55124(a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v11 + 16));
  if (v12)
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364F88);
    (*(v7 + 16))(v10, a1, v6);
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v41 = v16;
      v43 = swift_slowAlloc();
      v45 = v43;
      *v16 = 136446210;
      v42 = v15;
      v44 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v17 = sub_224A3D19C(8);
      v39 = v6;
      v40 = v14;
      v18 = v17;
      v20 = v19;
      LOBYTE(v16) = a2;
      v22 = v21;
      v23 = v12;
      v25 = v24;

      v26 = v22;
      a2 = v16;
      v27 = MEMORY[0x22AA5D1C0](v18, v20, v26, v25);
      v29 = v28;
      v12 = v23;

      (*(v7 + 8))(v10, v39);
      v30 = sub_224A33F74(v27, v29, &v45);

      v32 = v40;
      v31 = v41;
      *(v41 + 1) = v30;
      v33 = v31;
      _os_log_impl(&dword_224A2F000, v32, v42, "[%{public}s]: activity completed", v31, 0xCu);
      v34 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v35 = (v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider);
    v36 = *(v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
    v37 = *(v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v37 + 32))(v12, a2 & 1, v36, v37);
  }
}

uint64_t sub_224A55178(uint64_t a1)
{
  sub_224A3317C(a1 + 32, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for DuetTaskActivityContext();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v4 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    sub_224A55250(v4);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

uint64_t sub_224A55250(uint64_t a1)
{
  v3 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v108 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v107 = &v91 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v111 = &v91 - v10;
  MEMORY[0x28223BE20](v9);
  v110 = &v91 - v11;
  v113 = sub_224DA9878();
  v116 = *(v113 - 8);
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v113);
  v114 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v109 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - v18;
  v20 = type metadata accessor for ExtensionTask.Identifier(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DABE18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_224A55CF0(v29, a1);

  v30 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity);
  sub_224A4152C(v30 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, v23, type metadata accessor for ExtensionTask.Identifier);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_224A42478(v23, type metadata accessor for ExtensionTask.Identifier);
  }

  v106 = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
  v32 = *&v23[*(v31 + 48)];

  v33 = *&v23[*(v31 + 64)];

  (*(v25 + 32))(v28, v23, v24);
  v34 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier + 8);
  v102 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier);
  v103 = a1;
  v99 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity;
  sub_224A3796C(v30 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v19, &unk_27D6F4440, &unk_224DBA100);
  v35 = sub_224DAD738();
  v36 = *(v35 - 8);
  v97 = *(v36 + 48);
  v98 = v36 + 48;
  v37 = v97(v19, 1, v35);

  v112 = v30;
  v104 = v25;
  v105 = v24;
  v100 = v35;
  if (v37 == 1)
  {
    sub_224A3311C(v19, &unk_27D6F4440, &unk_224DBA100);
    v101 = 0;
    v38 = 0;
  }

  else
  {
    v101 = sub_224DAD6F8();
    v38 = v40;
    (*(v36 + 8))(v19, v35);
  }

  v41 = v111;
  v111 = v28;
  v42 = sub_224DABDB8();
  v43 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224DA9FE8();
  swift_endAccess();

  sub_224DA9868();
  v96 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration;
  v44 = v110;
  sub_224A4152C(v112 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v110, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A45320(v44, v41);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v95 = v45;
  v94 = v47;
  v93 = v46 + 48;
  v48 = (v47)(v41, 1);
  v49 = v116;
  v50 = v103;
  if (v48 == 1)
  {
    sub_224A42478(v41, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  }

  else
  {
    (*(v116 + 8))(v41, v113);
  }

  v92 = v36;
  if (!v34)
  {
    v51 = 0;
    if (v38)
    {
      goto LABEL_11;
    }

LABEL_13:
    v52 = 0;
    goto LABEL_14;
  }

  v51 = sub_224DAEDE8();

  if (!v38)
  {
    goto LABEL_13;
  }

LABEL_11:
  v52 = sub_224DAEDE8();

LABEL_14:
  v53 = objc_allocWithZone(MEMORY[0x277D06A40]);
  v54 = sub_224DAEDE8();

  v55 = v114;
  v56 = sub_224DA9778();
  v110 = [v53 initWithRateLimitConfigurationName:v51 budgetID:v52 extensionBundleID:v54 refreshDate:v56 initiatedByDAS:v48 != 1];

  v57 = *(v49 + 8);
  v116 = v49 + 8;
  v57(v55, v113);
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v58 = sub_224DAB258();
  __swift_project_value_buffer(v58, qword_281365108);
  v59 = v50;

  v60 = sub_224DAB228();
  v61 = sub_224DAF2A8();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v112;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115[0] = v114;
    *v64 = 136446722;
    v66 = *(v63 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
    v65 = *(v63 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8);

    v67 = sub_224A33F74(v66, v65, v115);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2082;
    v68 = v107;
    sub_224A4152C(v63 + v96, v107, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v69 = v68;
    v70 = v108;
    sub_224A45320(v69, v108);
    if (v94(v70, 1, v95) == 1)
    {
      sub_224A42478(v70, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      v71 = 0xE800000000000000;
      v72 = 0x3E6D65747379533CLL;
    }

    else
    {
      v57(v70, v113);
      v71 = 0xE500000000000000;
      v72 = 0x3E5341443CLL;
    }

    v74 = v109;
    v75 = sub_224A33F74(v72, v71, v115);

    *(v64 + 14) = v75;
    *(v64 + 22) = 2082;
    sub_224A3796C(v112 + v99, v74, &unk_27D6F4440, &unk_224DBA100);
    v76 = v100;
    v77 = v97(v74, 1, v100);
    v73 = v105;
    if (v77 == 1)
    {
      sub_224A3311C(v74, &unk_27D6F4440, &unk_224DBA100);
      v78 = 0xE300000000000000;
      v79 = 7104878;
    }

    else
    {
      v80 = sub_224DAD6F8();
      v78 = v81;
      (*(v92 + 8))(v74, v76);
      v79 = v80;
    }

    v82 = sub_224A33F74(v79, v78, v115);

    *(v64 + 24) = v82;
    _os_log_impl(&dword_224A2F000, v60, v61, "[%{public}s]: recording %{public}s widget refresh \n\tBudgetID = %{public}s", v64, 0x20u);
    v83 = v114;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v83, -1, -1);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {

    v73 = v105;
  }

  v84 = (v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
  v85 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler + 24);
  v86 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler + 32);
  __swift_project_boxed_opaque_existential_1(v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_224DB2780;
  v88 = v110;
  *(v87 + 32) = v110;
  v89 = *(v86 + 8);
  v90 = v88;
  v89(v87, v85, v86);

  return (*(v104 + 8))(v111, v73);
}

uint64_t sub_224A55CF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock) + 16));
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v4)
  {
    v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v6 = *(v5 + 16);
    v7 = v4;
    v6();
  }

  v8 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v8)
  {
    v9 = *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v10 = *(v9 + 16);
    v11 = v8;
    v10();
  }

  v12 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  result = *(a1 + v12);
  if (result)
  {
    v14 = result + 64;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 64);
    v28 = (a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v29 = *(a1 + v12);
    v18 = (v15 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v17; result = )
    {
      v20 = i;
      v21 = v29;
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v20 << 6);
      v24 = *(*(v21 + 48) + 16 * v23 + 8);
      v25 = *(*(v21 + 56) + 8 * v23);
      v26 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v30 = *(v26 + 16);

      v27 = v25;
      v30();
    }

    v21 = v29;
    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(v14 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_224A55F3C()
{
  v1 = *(sub_224DACAE8() - 8);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_224A55FA4(v2, v3, v5);
}

void sub_224A55FA4(uint64_t a1, void *a2, uint64_t a3)
{
  v129 = a3;
  v132 = a2;
  v4 = sub_224DADCD8();
  v135 = *(v4 - 8);
  v136 = v4;
  v5 = *(v135 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v134 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v107 - v8;
  v139 = sub_224DAD458();
  v9 = *(v139 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v139);
  v138 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v107 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v128 = *(v125 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x28223BE20](v125);
  v137 = (&v107 - v16);
  v110 = sub_224DAD738();
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v140 = &v107 - v24;
  v116 = sub_224DAC938();
  v115 = *(v116 - 8);
  v25 = *(v115 + 64);
  v26 = MEMORY[0x28223BE20](v116);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v130 = &v107 - v29;
  v117 = sub_224DAC928();
  v114 = *(v117 - 8);
  v30 = *(v114 + 64);
  v31 = MEMORY[0x28223BE20](v117);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v107 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v107 - v38;
  MEMORY[0x28223BE20](v37);
  v131 = &v107 - v40;
  v41 = type metadata accessor for ExtensionTask.Identifier(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A414C4(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v44, type metadata accessor for ExtensionTask.Identifier);
  v124 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 7)
    {
      sub_224A48F3C(v124);
      return;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v47 = *&v124[*(v46 + 48)];
    v48 = *&v124[*(v46 + 64)];
    if (!v47)
    {

      goto LABEL_52;
    }

    v126 = v47;
    v127 = v48;
    v49 = a1;
    v50 = v114;
    if (*(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8))
    {
      v51 = MEMORY[0x277CF9AB8];
    }

    else
    {
      v51 = MEMORY[0x277CF9AC0];
    }

    v52 = v117;
    (*(v114 + 104))(v39, *v51, v117);
    v53 = v131;
    (*(v50 + 32))(v131, v39, v52);
    v54 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    v55 = v49 + v54;
    v56 = v140;
    sub_224A3796C(v55, v140, &qword_27D6F4030, &unk_224DB5630);
    v57 = v115;
    v58 = v116;
    if ((*(v115 + 48))(v56, 1, v116) == 1)
    {
      (*(v50 + 8))(v53, v52);

      sub_224A3311C(v56, &qword_27D6F4030, &unk_224DB5630);
LABEL_52:
      v99 = sub_224DABE18();
      (*(*(v99 - 8) + 8))(v124, v99);
      return;
    }

    (*(v57 + 32))(v130, v56, v58);
    v66 = v126;

    sub_224DAD708();
    v67 = (v132 + *((*MEMORY[0x277D85000] & *v132) + 0x78));
    v68 = __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    v69 = *v68;
    v142 = 0;
    v143 = 1;
    MEMORY[0x28223BE20](v68);
    sub_224C5C2B0(sub_224B444F4);
    v70 = v142;
    if (v143)
    {
      v70 = 0;
    }

    v123 = v70;
    v64 = v127;
    v122 = v127[2];
    if (!v122)
    {

      v96 = v131;
LABEL_51:
      v97 = (v132 + *((*MEMORY[0x277D85000] & *v132) + 0xD8));
      v98 = v97[4];
      __swift_project_boxed_opaque_existential_1(v97, v97[3]);
      sub_224DAD568();
      (*(v57 + 8))(v130, v58);
      (*(v50 + 8))(v96, v52);
      (*(v109 + 8))(v111, v110);
      goto LABEL_52;
    }

    if (v66 >> 62)
    {
      v71 = sub_224DAF838();
    }

    else
    {
      v71 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v139;
    v72 = v125;
    v73 = 0;
    v121 = *((*MEMORY[0x277D85000] & *v132) + 0xD8);
    v120 = v64 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v119 = v128 + 16;
    v113 = v71 & ~(v71 >> 63);
    v112 = v66 & 0xC000000000000001;
    v108 = (v66 + 32);
    v118 = (v128 + 8);
    v140 = v71;
    while (v73 < v64[2])
    {
      (*(v128 + 16))(v137, &v120[*(v128 + 72) * v73], v72);
      sub_224A3317C(v132 + v121, &v142);
      v50 = v144;
      v133 = v145;
      v134 = __swift_project_boxed_opaque_existential_1(&v142, v144);
      v135 = v50;
      v136 = v73;
      if (v71)
      {
        v141 = MEMORY[0x277D84F90];
        v64 = &v141;
        sub_224ADA458(0, v113, 0);
        if (v71 < 0)
        {
          goto LABEL_59;
        }

        v75 = v141;
        if (v112)
        {
          v76 = 0;
          do
          {
            MEMORY[0x22AA5DCC0](v76, v66);
            sub_224DAF5E8();
            swift_unknownObjectRelease();
            v141 = v75;
            v78 = *(v75 + 16);
            v77 = *(v75 + 24);
            if (v78 >= v77 >> 1)
            {
              sub_224ADA458(v77 > 1, v78 + 1, 1);
              v75 = v141;
            }

            ++v76;
            *(v75 + 16) = v78 + 1;
            (*(v9 + 32))(v75 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v78, v14, v65);
          }

          while (v140 != v76);
        }

        else
        {
          v79 = v108;
          v80 = v71;
          do
          {
            v81 = v14;
            v82 = *v79;
            v83 = v138;
            sub_224DAF5E8();

            v141 = v75;
            v85 = *(v75 + 16);
            v84 = *(v75 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_224ADA458(v84 > 1, v85 + 1, 1);
              v75 = v141;
            }

            *(v75 + 16) = v85 + 1;
            v86 = v75 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v85;
            v65 = v139;
            (*(v9 + 32))(v86, v83, v139);
            ++v79;
            --v80;
            v14 = v81;
          }

          while (v80);
        }

        v72 = v125;
      }

      v74 = v137;
      v50 = v136 + 1;
      sub_224DAA248();
      sub_224DAD558();
      v73 = v50;

      (*v118)(v74, v72);
      __swift_destroy_boxed_opaque_existential_1(&v142);
      v64 = v127;
      v66 = v126;
      v71 = v140;
      if (v50 == v122)
      {

        v58 = v116;
        v57 = v115;
        v52 = v117;
        v96 = v131;
        v50 = v114;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v138 = v28;
  v139 = v36;
  v9 = v136;
  v59 = *(v124 + 1);

  if (!v59)
  {
    return;
  }

  v50 = v114;
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8))
  {
    v60 = MEMORY[0x277CF9AB8];
  }

  else
  {
    v60 = MEMORY[0x277CF9AC0];
  }

  v61 = v117;
  (*(v114 + 104))(v33, *v60, v117);
  v62 = v139;
  (*(v50 + 32))(v139, v33, v61);
  v63 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  sub_224A3796C(a1 + v63, v23, &qword_27D6F4030, &unk_224DB5630);
  v64 = v115;
  v65 = v116;
  if ((*(v115 + 48))(v23, 1, v116) == 1)
  {
    (*(v50 + 8))(v62, v61);

    sub_224A3311C(v23, &qword_27D6F4030, &unk_224DB5630);
    return;
  }

  v87 = v59;
  v66 = v138;
  (v64[4])(v138, v23, v65);
  v137 = (v132 + *((*MEMORY[0x277D85000] & *v132) + 0xE0));
  sub_224A3317C(v137, &v142);
  v73 = v144;
  v14 = v145;
  v132 = __swift_project_boxed_opaque_existential_1(&v142, v144);
  v140 = v87;
  if (v87 >> 62)
  {
LABEL_60:
    v88 = sub_224DAF838();
    v89 = v135;
    if (!v88)
    {
      goto LABEL_61;
    }

LABEL_42:
    v135 = v14;
    v141 = MEMORY[0x277D84F90];
    sub_224ADA414(0, v88 & ~(v88 >> 63), 0);
    if (v88 < 0)
    {
      __break(1u);
      return;
    }

    v131 = v73;
    v90 = v141;
    v91 = v134;
    if ((v140 & 0xC000000000000001) != 0)
    {
      v92 = 0;
      v93 = v133;
      do
      {
        MEMORY[0x22AA5DCC0](v92, v140);
        sub_224DAF5C8();
        swift_unknownObjectRelease();
        v141 = v90;
        v95 = *(v90 + 16);
        v94 = *(v90 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_224ADA414(v94 > 1, v95 + 1, 1);
          v90 = v141;
        }

        ++v92;
        *(v90 + 16) = v95 + 1;
        v89[4](v90 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + v89[9] * v95, v93, v9);
      }

      while (v88 != v92);
    }

    else
    {
      v100 = (v140 + 32);
      do
      {
        v101 = *v100;
        sub_224DAF5C8();

        v141 = v90;
        v103 = *(v90 + 16);
        v102 = *(v90 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_224ADA414(v102 > 1, v103 + 1, 1);
          v90 = v141;
        }

        *(v90 + 16) = v103 + 1;
        v89[4](v90 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + v89[9] * v103, v91, v9);
        ++v100;
        --v88;
      }

      while (v88);
    }

    v65 = v116;
    v104 = v115;
    v50 = v114;
    v66 = v138;
    goto LABEL_62;
  }

  v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v89 = v135;
  if (v88)
  {
    goto LABEL_42;
  }

LABEL_61:

  v104 = v64;
LABEL_62:
  v105 = v139;
  sub_224DAD558();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  v106 = v137[4];
  __swift_project_boxed_opaque_existential_1(v137, v137[3]);
  sub_224DAD568();
  (v104[1])(v66, v65);
  (*(v50 + 8))(v105, v117);
}

uint64_t sub_224A570C4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_224A57104()
{
  v1 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startAfter;
  v2 = sub_224DA9878();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startBefore, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__duetConfigurationManager));
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler));

  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler + 8);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &qword_27D6F5590, &qword_224DBEC00);
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);

  v7 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier);

  v8 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier + 8);

  return v0;
}

uint64_t sub_224A5726C()
{
  sub_224A57104();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224A572C4()
{
  sub_224A57460();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224A5731C(uint64_t a1, unint64_t a2)
{
  result = sub_224A3D04C();
  v14 = result;
  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_224CB93B4(v14);

    v13 = *(a1 + 16);

    sub_224DA9E98();
  }

  result = sub_224DAF838();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x22AA5DCC0](v6++, a2);
        v8 = sub_224A576AC(v7);
        swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }

    else
    {
      v9 = (a2 + 32);
      do
      {
        v10 = *v9++;
        v11 = v10;
        v12 = sub_224A576AC(v11);

        --v5;
      }

      while (v5);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A57460()
{
  v1 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
  v2 = sub_224DA9908();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8);

  sub_224A42478(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, type metadata accessor for ExtensionTask.Identifier);
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers);

  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, &unk_27D6F4440, &unk_224DBA100);
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_budgetedDeviceIdentifiers);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, &unk_27D6F5060, &qword_224DB5620);
  v7 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v8 = sub_224DAE918();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_224A42478(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v9 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeReason, &qword_27D6F4030, &unk_224DB5630);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeCost, &qword_27D6F4028, &qword_224DB5628);
  v10 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler + 8);

  v11 = *(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8);

  return v0;
}

void sub_224A57734(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  v4 = 0;
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B40904(v1, &v4, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  if ((v4 & 1) == 0)
  {

    sub_224B4042C(a1);
  }
}

void sub_224A57804(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!(v5 >> 62))
  {
    goto LABEL_2;
  }

  if (v5 < 0)
  {
    v24 = *&v2[v4];
  }

  if (sub_224DAF838() < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_2:
    v6 = a1;
    sub_224A57AE8(0, 0, v6);
    swift_endAccess();

    if (qword_2813516B8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281365108);
  v8 = v2;
  v9 = sub_224DAB228();
  v10 = sub_224DAF268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    v12 = *&v2[v4];
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v26 = *&v2[v4];
      }

      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v13;

    _os_log_impl(&dword_224A2F000, v9, v10, "queue checked in; queuePool.count = %{public}ld", v11, 0xCu);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v14 = *&v2[v4];
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v25 = *&v2[v4];
    }

    v15 = sub_224DAF838();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(&v8->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize) < v15)
  {
    if (*(&v8->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize))
    {
      v16 = v8;
      v17 = sub_224DAB228();
      v18 = sub_224DAF288();
    }

    else
    {
      *(&v8->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize) = 1;
      v16 = v8;
      v17 = sub_224DAB228();
      v18 = sub_224DAF298();
    }

    v19 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      v21 = *&v2[v4];
      if (v21 >> 62)
      {
        v27 = v20;
        v22 = sub_224DAF838();
        v20 = v27;
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v22;
      v23 = v20;

      _os_log_impl(&dword_224A2F000, v17, v19, "queue checked in; pool size too high!; queuePool.count = %{public}ld", v23, 0xCu);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    else
    {

      v17 = v16;
    }
  }
}

char *sub_224A57AE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_224DAF838();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_224DAF838();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_224A57BD4(result, 1);

  return sub_224A57C7C(v6, v5, 1, v3);
}

uint64_t sub_224A57BDC(uint64_t a1)
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
    sub_224DAF838();
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
  result = sub_224DAF968();
  *v1 = result;
  return result;
}

char *sub_224A57C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_224DAF838();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_224DAF838();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_224A57DA8()
{
  sub_224A57E00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id *sub_224A57E00()
{
  v1 = *v0;

  sub_224A3311C(v0 + qword_281365420, &qword_27D6F32B0, &qword_224DB3EA0);
  v2 = qword_281365428;
  v3 = sub_224DA9878();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_224A3311C(v0 + qword_28135C660, &qword_27D6F4FC8, &unk_224DBADE8);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 19), v1[10]);
  sub_224A58004(v0 + *(*v0 + 20));

  v4 = *(*v0 + 23);
  v5 = v1[11];
  swift_getAssociatedTypeWitness();
  v6 = sub_224DAF728();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = *(v0 + *(*v0 + 24));

  return v0;
}

uint64_t sub_224A58034(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A5824C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 32))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A58660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v63 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v58 - v18;
  v20 = *(a3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  v21 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  result = swift_beginAccess();
  v23 = *(a3 + v21);
  if (*(v23 + 16))
  {
    v24 = *(a3 + v21);

    v25 = sub_224A3E7EC(a4);
    if (v26)
    {
      v60 = v16;
      v59 = v14;
      v27 = *(*(v23 + 56) + 8 * v25);

      swift_beginAccess();
      sub_224A3E520(0, a4);
      swift_endAccess();
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (v27 + 40);
        do
        {
          v31 = *(v29 - 1);
          v30 = *v29;
          v67[0] = a1;
          v66[0] = a2;

          v31(v67, v66);

          v29 += 2;
          --v28;
        }

        while (v28);
      }

      if (a1)
      {
        v32 = sub_224DAE9C8();
        v33 = sub_224DAE9D8();
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

      v34 = v63;
      sub_224D5726C(v32, v33);
      v36 = v35;

      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = sub_224DAF838();
      }

      else
      {
        v37 = *(v36 + 16);
      }

      if (v37)
      {
        v38 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged;
        swift_beginAccess();
        v58[1] = v38;
        v39 = *(a3 + v38);
        v40 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);

        v41 = sub_224DAE338();
        v42 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v43 = v60;
        v44 = *(v60 + 16);
        v45 = v41 + v42;
        v34 = v63;
        v44(v19, v45, v15);

        LOBYTE(v41) = sub_224A336F4(v19, v39);

        v46 = *(v43 + 8);
        v46(v19, v15);
        if (v41)
        {
          v58[0] = v46;
          v47 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v34[3]);
          v48 = sub_224DAE338();
          v49 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v50 = &v48[v49];
          v34 = v63;
          v44(v19, v50, v15);

          swift_beginAccess();
          v51 = v59;
          sub_224B03048(v19, v59);
          (v58[0])(v19, v15);
          sub_224A3311C(v51, &unk_27D6F6140, qword_224DBB6B0);
          swift_endAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3500, &qword_224DB3A98);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_224DB3100;
          sub_224A3317C(v34, v52 + 32);
          v64 = 0;
          v65 = 0xE000000000000000;
          sub_224DAF938();
          MEMORY[0x22AA5D210](0xD00000000000004ELL, 0x8000000224DCFDD0);
          MEMORY[0x22AA5D210](v61, v62);
          MEMORY[0x22AA5D210](41, 0xE100000000000000);
          sub_224D4C850(v52, 1, v64, v65);
        }
      }

      v53 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v54 = sub_224DAE338();
      v55 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v56 = v60;
      (*(v60 + 16))(v19, &v54[v55], v15);

      swift_beginAccess();
      v57 = v59;
      sub_224B03048(v19, v59);
      (*(v56 + 8))(v19, v15);
      sub_224A3311C(v57, &unk_27D6F6140, qword_224DBB6B0);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void sub_224A58C3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_224DAF7A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_224DAF698();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

uint64_t sub_224A58DCC(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void sub_224A58DFC(void *a1, uint64_t a2)
{
  v5 = *(sub_224DAD448() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_224A58EB4(a1, a2, v7, v2 + 24, v2 + v6, v9);
}

void sub_224A58EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t))
{
  if (a1)
  {
    v8 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
    swift_beginAccess();
    sub_224A3796C(a3 + v8, v15, &qword_27D6F6C28, &qword_224DC1A38);
    if (v16)
    {
      sub_224A3317C(v15, v14);
      v10 = a1;
      sub_224A3311C(v15, &qword_27D6F6C28, &qword_224DC1A38);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_224DAE9C8();
      sub_224DAE9D8();
      sub_224DAE9E8();
      sub_224DAD638();

      __swift_destroy_boxed_opaque_existential_1(v14);
      if (a6)
      {
LABEL_4:
        v11 = a1;
        a6(a1, a2);

        return;
      }
    }

    else
    {
      v12 = a1;
      sub_224A3311C(v15, &qword_27D6F6C28, &qword_224DC1A38);
      if (a6)
      {
        goto LABEL_4;
      }
    }
  }

  else if (a6)
  {
    (a6)(0);
  }
}

void sub_224A59058(void *a1, void *a2, dispatch_group_t group, uint64_t a4, void *a5)
{
  dispatch_group_leave(group);
  if (a1)
  {
    swift_beginAccess();
    v9 = *(a4 + 16);
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *(a4 + 16);
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = a1;
      v12 = sub_224DAF838();
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      *(a4 + 16) = sub_224D2CDB4(v10, v12 + 1);
    }

    else
    {
      v13 = *(a4 + 16);
      v11 = a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a4 + 16);
    sub_224A59194(v11, a5, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v16;
    swift_endAccess();
  }

  if (a2)
  {
    swift_beginAccess();
    v15 = a2;
    sub_224B09A8C(a2, a5);
    swift_endAccess();
  }
}

id sub_224A59194(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A3E7EC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224A59320(v13, a3 & 1, &qword_27D6F3A60, &unk_224DC3BE0);
      v17 = *v4;
      v8 = sub_224A3E7EC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_224DAF538();
        sub_224DAFDD8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_224B27EB8(&qword_27D6F3A60, &unk_224DC3BE0);
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_224A59320(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_224DAF698();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

void sub_224A59598(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  swift_beginAccess();
  v7 = *(a2 + 16);

  v9 = sub_224A5988C(v8);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365168);
  v11 = v9;

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 134349314;
    swift_beginAccess();
    v15 = *(a3 + 16);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(a3 + 16);
      }

      v17 = *(a3 + 16);

      v18 = sub_224DAF838();
    }

    else
    {
      v18 = *(v15 + 16);
    }

    *(v14 + 4) = v18;

    *(v14 + 12) = 2082;
    if (v9)
    {
      v22 = [v11 debugDescription];
      v23 = sub_224DAEE18();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_224A33F74(v23, v25, &v28);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_224A2F000, v12, v13, "Received descriptors for %{public}ld extensions from descriptor service with error: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    if (!a4)
    {
      goto LABEL_15;
    }

LABEL_9:
    swift_beginAccess();
    v19 = *(a3 + 16);
    v20 = v11;
    sub_224A364AC(a4);

    a4(v21, v9);

    sub_224A3D418(a4);
    return;
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_15:
}

id sub_224A5988C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_224D43A9C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
  v2 = sub_224DAEDA8();
  v4 = v3;

  sub_224D43D90(a1);
  v5 = sub_224DAEDA8();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v10;
  MEMORY[0x22AA5D210](v2, v4);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 48) = 91;
  *(inited + 56) = 0xE100000000000000;
  v11 = *MEMORY[0x277CCA068];
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v12;
  MEMORY[0x22AA5D210](v5, v7);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 80) = 91;
  *(inited + 88) = 0xE100000000000000;
  v13 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  swift_arrayDestroy();
  sub_224B67B98();
  sub_224B67BEC();
  sub_224B67C40();
  v14 = sub_224DA93D8();
  sub_224D9F01C(v13);

  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v16 = sub_224DAEDE8();
  v17 = sub_224DAECC8();

  v18 = [v15 initWithDomain:v16 code:v14 userInfo:v17];

  return v18;
}

void sub_224A59B80(unint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = v59 - v10;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      v60 = a2;
      v61 = a4;
      v62 = a3;
      v70 = sub_224A5A0B4(MEMORY[0x277D84F90]);
      v15 = -1 << *(a1 + 32);
      v12 = a1 + 64;
      v16 = ~v15;
      v17 = -v15;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v14 = v18 & *(a1 + 64);

      v13 = v16;
      goto LABEL_9;
    }

LABEL_33:
    v58 = 0;
    a3(0, a2);
LABEL_34:

    return;
  }

  if (sub_224DAF838() <= 0)
  {
    goto LABEL_33;
  }

  v60 = a2;
  v61 = a4;
  v62 = a3;
  v70 = sub_224A5A0B4(MEMORY[0x277D84F90]);
  v11 = sub_224DAFA68() | 0x8000000000000000;

  v12 = 0;
  v13 = 0;
  v14 = 0;
  a1 = v11;
LABEL_9:
  v19 = 0;
  v59[1] = v13;
  v20 = (v13 + 64) >> 6;
  v65 = v12;
  v66 = (v8 + 8);
  v63 = a1;
  v64 = v20;
  while ((a1 & 0x8000000000000000) != 0)
  {
    v31 = sub_224DAFB18();
    if (!v31)
    {
      goto LABEL_32;
    }

    v33 = v32;
    v71 = v31;
    sub_224DAF538();
    swift_dynamicCast();
    v29 = v72;
    v71 = v33;
    sub_224DAE9F8();
    swift_dynamicCast();
    v30 = v72;
    v25 = v19;
    v26 = v14;
    if (!v29)
    {
LABEL_32:
      sub_224A3B7E4();
      v56 = objc_allocWithZone(MEMORY[0x277CFA388]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5170, &unk_224DBAE98);
      v57 = sub_224DAECC8();

      v58 = [v56 initWithDescriptors_];

      v62(v58, v60);
      goto LABEL_34;
    }

LABEL_21:
    v69 = v26;
    v34 = v67;
    v35 = v29;
    sub_224DAF528();
    sub_224A33088(&qword_281351838, &unk_27D6F6570, &qword_224DB3C40);
    v36 = v68;
    sub_224DAEFA8();
    (*v66)(v34, v36);
    v38 = v72;
    v37 = v73;
    v39 = v30;
    v40 = sub_224DAE9C8();
    v41 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v41;
    v44 = sub_224A3A40C(v38, v37);
    v45 = *(v41 + 16);
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_36;
    }

    v48 = v43;
    if (*(v41 + 24) >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v43)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_224B27E90();
        if (v48)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_224A5A0C8(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_224A3A40C(v38, v37);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_38;
      }

      v44 = v49;
      if (v48)
      {
LABEL_10:

        v70 = v71;
        v21 = v71[7];
        v22 = *(v21 + 8 * v44);
        *(v21 + 8 * v44) = v40;

        goto LABEL_11;
      }
    }

    v51 = v71;
    v71[(v44 >> 6) + 8] |= 1 << v44;
    v52 = (v51[6] + 16 * v44);
    *v52 = v38;
    v52[1] = v37;
    *(v51[7] + 8 * v44) = v40;

    v53 = v51[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_37;
    }

    v70 = v51;
    v51[2] = v55;
LABEL_11:
    v19 = v25;
    v14 = v69;
    a1 = v63;
    v20 = v64;
    v12 = v65;
  }

  v23 = v19;
  v24 = v14;
  v25 = v19;
  if (v14)
  {
LABEL_17:
    v26 = (v24 - 1) & v24;
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
    v28 = *(*(a1 + 56) + v27);
    v29 = *(*(a1 + 48) + v27);
    v30 = v28;
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      goto LABEL_32;
    }

    v24 = *(v12 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_224DAFDD8();
  __break(1u);
}

uint64_t sub_224A5A0DC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_224DAFB98();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      result = sub_224DAFEA8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void sub_224A5A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_224DA9518();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_224A5A424(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_224A5A4B8(void *a1, unint64_t *a2, int64_t a3)
{
  v4 = a2;
  v6 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_2813514B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364E50);
    v8 = v4;
    v9 = a1;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      BSDispatchQueueAssert();
      v14 = [*(v8 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
      *(v12 + 4) = v14;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v14;
      v13[1] = v9;
      v15 = v9;
      _os_log_impl(&dword_224A2F000, v10, v11, "Subscribe to extensions from client: %{public}@ with options: %{public}@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v13, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    v16 = *(v8 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions);
    *(v8 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions) = v9;

    sub_224A3317C(v8 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v53);
    a1 = v54;
    v17 = v55;
    v4 = __swift_project_boxed_opaque_existential_1(v53, v54);
    v18 = *(v17[1] + 8);
    v19 = v9;
    v20 = sub_224DACA48();
    if (!v20)
    {
      __swift_destroy_boxed_opaque_existential_1(v53);
      (*(a3 + 16))(a3, 0, 0, 0);
      return;
    }

    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v53);
    if ([v19 matchesEverything])
    {
      break;
    }

    if (MEMORY[0x277D84F90] >> 62 && sub_224DAF838())
    {
      sub_224D5767C(MEMORY[0x277D84F90]);
    }

    else
    {
      v22 = MEMORY[0x277D84FA0];
    }

    v52 = v22;
    v49 = a3;
    v50 = v19;
    if ((v21 & 0xC000000000000001) != 0)
    {
      a1 = sub_224DAF7E8();
      v4 = &qword_281350A40;
      sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
      sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
      sub_224DAF1F8();
      v21 = v53[0];
      v23 = v53[1];
      v24 = v53[2];
      v25 = v54;
      v26 = v55;
    }

    else
    {
      v25 = 0;
      v27 = -1 << *(v21 + 32);
      v23 = v21 + 56;
      v24 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v26 = (v29 & *(v21 + 56));
    }

    v48 = v24;
    v30 = (v24 + 64) >> 6;
    if (v21 < 0)
    {
LABEL_16:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v31 = v51[0];
        a3 = v25;
        a1 = v26;
        if (v51[0])
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      sub_224A3B7E4();
      v21 = v52;
      a3 = v49;
      v19 = v50;
      break;
    }

    while (1)
    {
      v32 = v25;
      v33 = v26;
      a3 = v25;
      if (!v26)
      {
        break;
      }

LABEL_23:
      a1 = ((v33 - 1) & v33);
      v31 = *(*(v21 + 48) + ((a3 << 9) | (8 * __clz(__rbit64(v33)))));
      if (!v31)
      {
        goto LABEL_26;
      }

LABEL_24:
      v4 = &v52;
      sub_224A5EAA4(v51, [v31 copyFilteredToOptions_]);

      v25 = a3;
      v26 = a1;
      if (v21 < 0)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      a3 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (a3 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v23 + 8 * a3);
      ++v32;
      if (v33)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  v34 = sub_224A5D694(1, 0);
  v35 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
  sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
  sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
  v36 = sub_224DAF1A8();
  v37 = [v35 initWithExtensions:v36 generatedFrom:v19];

  v38 = v37;
  v39 = v8;
  v40 = v38;

  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138543874;
    BSDispatchQueueAssert();
    v45 = [*(v39 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
    *(v43 + 4) = v45;
    *v44 = v45;
    *(v43 + 12) = 2050;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v46 = sub_224DAF838();
    }

    else
    {
      v46 = *(v21 + 16);
    }

    *(v43 + 14) = v46;

    *(v43 + 22) = 2050;
    v47 = [v40 sequenceNumber];

    *(v43 + 24) = v47;
    _os_log_impl(&dword_224A2F000, v41, v42, "Subscribed to extensions from client: %{public}@, sent %{public}ld extensions with sequence %{public}lu", v43, 0x20u);
    sub_224A3311C(v44, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v41 = v40;
  }

  (*(a3 + 16))(a3, v40, v34, 0);
}

uint64_t sub_224A5ABFC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  v2 = *(sub_224DAC1E8() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_224DB30F0;
  sub_224DAC1C8();
  sub_224DAC1D8();
  v6 = sub_224A5AD0C(v5);
  swift_setDeallocating();
  v7 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_224A5AD0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC1E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62 && sub_224DAF838())
  {
    sub_224D57F20(MEMORY[0x277D84F90], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);
    v9 = v25;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  sub_224DAC1C8();
  v10 = sub_224D422E0(v8, a1);
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    v29 = sub_224A48648();
    if (v29)
    {

      v12 = sub_224DACF58();
      sub_224A5B11C(v12, v9);
      v9 = v13;
    }
  }

  sub_224DAC1D8();
  v14 = sub_224D422E0(v8, a1);
  v11(v8, v4);
  if (v14)
  {
    v28 = sub_224A5B8B8();
    if (v28)
    {

      v15 = sub_224DACF58();
      sub_224A5B11C(v15, v9);
      v9 = v16;
    }
  }

  sub_224DAC1B8();
  v17 = sub_224D422E0(v8, a1);
  v11(v8, v4);
  if (v17)
  {
    v27 = sub_224D44CD4();
    if (v27)
    {

      v18 = sub_224DACF58();
      sub_224A5B11C(v18, v9);
      v9 = v19;
    }
  }

  v20 = v2;
  v21 = sub_224A5BC84(v9, v20);

  v22 = sub_224D56880(v21, a1, &v29, &v28, &v27);

  v23 = sub_224A5C0FC(v22);

  return v23;
}

BOOL sub_224A5B014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_224D42EB0(a4, a5);
  }

  while ((sub_224DAEDD8() & 1) == 0);
  return v10 != v11;
}

void sub_224A5B11C(unint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A3CE84(&unk_2813509A0, MEMORY[0x277CFA140]);
    sub_224DAF1F8();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_224A3B7E4();
      return;
    }

    while (1)
    {
      sub_224A37578(v16, v15, MEMORY[0x277CFA140], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAF538();
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = v3[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_224A5B354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CFA2C0]) init];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_224DAE338();
  [v9 setIdentity_];

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE2D8();
  v13 = sub_224DAEDE8();

  [v9 setLocalizedDisplayName_];

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE358();
  v15 = sub_224DAEDE8();

  [v9 setContainerBundleLocalizedDisplayName_];

  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_224DAE268();
  [v9 setEntitlements_];

  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE308();
  v19 = sub_224DAE918();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) != 1)
  {
    sub_224A3796C(v8, v6, &qword_27D6F46D8, &unk_224DB7630);
    v22 = (*(v20 + 88))(v6, v19);
    if (v22 == *MEMORY[0x277CE3D50])
    {
      v21 = 0;
      goto LABEL_7;
    }

    if (v22 == *MEMORY[0x277CE3D58])
    {
      v21 = 1;
      goto LABEL_7;
    }

    if (v22 != *MEMORY[0x277CE3D60])
    {
      if (v22 == *MEMORY[0x277CE3D68])
      {
        v21 = 3;
        goto LABEL_7;
      }

      (*(v20 + 8))(v6, v19);
    }
  }

  v21 = 2;
LABEL_7:
  [v9 setDataProtectionLevel_];
  sub_224A3311C(v8, &qword_27D6F46D8, &unk_224DB7630);
  return v9;
}

uint64_t sub_224A5B698(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_224DAF8F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_224DAF698();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_224A5B8B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA8, &qword_224DC1B20);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CD0, &qword_224DC1B28);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
  sub_224DAD8F8();
  v9 = v1[13];
  v9(v4, *MEMORY[0x277CF9DF8], v0);
  sub_224DAD8E8();
  v10 = v1[1];
  v10(v4, v0);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D48();

  if ((v11 & 1) == 0)
  {
    v9(v4, *MEMORY[0x277CF9E00], v0);
    sub_224DAD8E8();
    v10(v4, v0);
  }

  v12 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v13 = v22;
  swift_beginAccess();
  sub_224A3796C(v13 + v12, v24, &qword_27D6F6C28, &qword_224DC1A38);
  v14 = v25;
  if (v25)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    sub_224DAD5B8();
    (*(v16 + 8))(v19, v14);
    v20 = sub_224DACFA8();

    (*(v23 + 8))(v8, v5);
  }

  else
  {
    (*(v23 + 8))(v8, v5);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    return 0;
  }

  return v20;
}

uint64_t sub_224A5BC84(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
    result = sub_224DAF1F8();
    v2 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v29[1] = v5;
  v32 = MEMORY[0x277D84F90];
  v30 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = sub_224DAF878();
  if (v11 && (*&v33 = v11, sub_224DAF538(), swift_dynamicCast(), v12 = *&v36[0], v13 = v6, v14 = v7, *&v36[0]))
  {
    while (1)
    {
      v17 = *(v31 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
      __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v31 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
      sub_224DAC6D8();

      if (v34)
      {
        sub_224A36F98(&v33, v36);
        sub_224A36F98(v36, &v33);
        v18 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_224A5C040(0, v18[2] + 1, 1, v18);
          v42 = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v32 = sub_224A5C040((v20 > 1), v21 + 1, 1, v18);
          v42 = v32;
        }

        else
        {
          v32 = v18;
        }

        v22 = v34;
        v23 = v35;
        v24 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
        v25 = *(*(v22 - 8) + 64);
        MEMORY[0x28223BE20](v24);
        v27 = v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v27);
        sub_224A5C064(v21, v27, &v42, v22, v23);
        result = __swift_destroy_boxed_opaque_existential_1(&v33);
        v6 = v13;
        v7 = v14;
        v2 = v30;
        if (v30 < 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_224A3311C(&v33, &unk_27D6F4700, &unk_224DB3A10);
        v6 = v13;
        v7 = v14;
        if (v2 < 0)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      v15 = v6;
      v16 = v7;
      v13 = v6;
      if (!v7)
      {
        break;
      }

LABEL_17:
      v14 = (v16 - 1) & v16;
      v12 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v5 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v16 = *(v4 + 8 * v13);
      ++v15;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    sub_224A3B7E4();
    return v32;
  }

  return result;
}

uint64_t sub_224A5C064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_224A36F98(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_224A5C0FC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    v5 = sub_224A5D644(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CFA3A8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_224A5E830(&v12, v10, &qword_281350A40, 0x277CFA3A8, &qword_27D6F35D8, &qword_224DB3BB0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_224A5C288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_224A3B79C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_224DAF6A8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_224A5C358(uint64_t a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_224A5C510(a1, v4, v5, v6);
}

unint64_t sub_224A5C3D0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_224DAFE68();
  sub_224DAEE78();

  v4 = sub_224DAFEA8();

  return sub_224A5CA28(a1, v4);
}

uint64_t sub_224A5C510(uint64_t a1, char *a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v48 - v9 + 16;
  v11 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();
  v12 = sub_224A5CC94();
  v13 = sub_224A5CCF4(v48, a3);
  if (*v14)
  {
    sub_224A5CF54(a4, v10);
    sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
    (v13)(v48, 0);
    (v12)(v49, 0);
  }

  else
  {
    (v13)(v48, 0);
    (v12)(v49, 0);
    v15 = sub_224DA9908();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
  }

  v16 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v17 = *&a2[v16];
  if (*(v17 + 16))
  {

    v18 = sub_224A5C3D0(a3);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      v21 = *(v20 + 16);

      if (v21)
      {
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281364E50);
  v24 = a2;
  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v48[0] = v29;
    v30 = 0xED0000726F74696ELL;
    *v27 = 136446466;
    v31 = 0x6F4D656369766564;
    v32 = 0x8000000224DC45E0;
    v33 = 0xE800000000000000;
    v34 = 0x736C6F72746E6F63;
    if (a3 != 4)
    {
      v34 = 0x6974697669746361;
      v33 = 0xEA00000000007365;
    }

    if (a3 == 3)
    {
      v34 = 0xD000000000000016;
    }

    else
    {
      v32 = v33;
    }

    v35 = 0xEA0000000000736ELL;
    v36 = 0xD00000000000001CLL;
    if (a3 == 1)
    {
      v36 = 0x6F69736E65747865;
    }

    else
    {
      v35 = 0x8000000224DC45C0;
    }

    if (a3)
    {
      v31 = v36;
      v30 = v35;
    }

    if (a3 <= 2u)
    {
      v37 = v31;
    }

    else
    {
      v37 = v34;
    }

    if (a3 <= 2u)
    {
      v38 = v30;
    }

    else
    {
      v38 = v32;
    }

    v39 = sub_224A33F74(v37, v38, v48);

    *(v27 + 4) = v39;
    *(v27 + 12) = 2114;
    BSDispatchQueueAssert();
    v40 = [*&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v27 + 14) = v40;
    *v28 = v40;
    _os_log_impl(&dword_224A2F000, v25, v26, "Unsubscribed from service: %{public}s from client: %{public}@", v27, 0x16u);
    sub_224A3311C(v28, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  v41 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  swift_beginAccess();
  v42 = *&v24[v41];
  if (*(v42 + 16))
  {
    v43 = *&v24[v41];

    v44 = sub_224A5C3D0(a3);
    if (v45)
    {
      v46 = *(*(v42 + 56) + 8 * v44);
      swift_unknownObjectRetain();

      [v46 invalidate];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_224B08B00(0, a3);
  return swift_endAccess();
}

unint64_t sub_224A5CA28(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
          v8 = 0x8000000224DC45E0;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x736C6F72746E6F63;
          }

          else
          {
            v7 = 0x6974697669746361;
          }

          if (v6 == 4)
          {
            v8 = 0xE800000000000000;
          }

          else
          {
            v8 = 0xEA00000000007365;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6F69736E65747865;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
        }

        if (v6 == 1)
        {
          v8 = 0xEA0000000000736ELL;
        }

        else
        {
          v8 = 0x8000000224DC45C0;
        }
      }

      else
      {
        v7 = 0x6F4D656369766564;
        v8 = 0xED0000726F74696ELL;
      }

      v9 = 0x736C6F72746E6F63;
      if (v5 != 4)
      {
        v9 = 0x6974697669746361;
      }

      v10 = 0xE800000000000000;
      if (v5 != 4)
      {
        v10 = 0xEA00000000007365;
      }

      if (v5 == 3)
      {
        v9 = 0xD000000000000016;
        v10 = 0x8000000224DC45E0;
      }

      v11 = 0xEA0000000000736ELL;
      v12 = 0xD00000000000001CLL;
      if (v5 == 1)
      {
        v12 = 0x6F69736E65747865;
      }

      else
      {
        v11 = 0x8000000224DC45C0;
      }

      if (!v5)
      {
        v12 = 0x6F4D656369766564;
        v11 = 0xED0000726F74696ELL;
      }

      v13 = v5 <= 2 ? v12 : v9;
      v14 = v5 <= 2 ? v11 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_224DAFD88();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

uint64_t (*sub_224A5CCF4(uint64_t **a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_224A5CD6C(v4, a2);
  return sub_224A5D5EC;
}

uint64_t (*sub_224A5CD6C(uint64_t *a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_224A5CF2C(v6);
  v6[9] = sub_224A5CE10((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_224A5D5E8;
}

unint64_t (*sub_224A5CE10(uint64_t a1, unsigned __int8 a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_224A5C3D0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_224B27BD8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_224B138AC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_224A5C3D0(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_224A5D5FC;
}

uint64_t (*sub_224A5CF2C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_224A5D5F0;
}

uint64_t sub_224A5CF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_224A3CECC(&qword_281351A18, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_224DAED88();
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
      sub_224A3CECC(&qword_281351A10, MEMORY[0x277CC95F0]);
      v22 = sub_224DAEDD8();
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
      sub_224AE4D50();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_224A5D240(v16, MEMORY[0x277CC95F0], &qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_224A5D240(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
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
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_224A3CECC(v44, v45);
        v28 = sub_224DAED88();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
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

void sub_224A5D53C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_224A5D588(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t sub_224A5D5FC(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_224B2495C(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_224B1CD04(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t sub_224A5D644(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_224A3B79C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_224A5D694(int a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v76 = sub_224DA9908();
  v73 = *(v76 - 8);
  v6 = *(v73 + 8);
  v7 = MEMORY[0x28223BE20](v76);
  v8 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = v66 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v66 - v11;
  v74 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v13 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  swift_beginAccess();
  v14 = *&v13[v2];
  if (*(v14 + 16))
  {

    v15 = sub_224A5C3D0(a1);
    if (v16)
    {
      v70 = *(*(v14 + 56) + 8 * v15);
      swift_unknownObjectRetain();

      goto LABEL_10;
    }
  }

  if (a2)
  {

    v18 = v75;
    v19 = a2(v17);
    if (v18)
    {
      sub_224A3D418(a2);
      return v13;
    }

    v20 = v19;
    v75 = 0;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v21 = *&v13[v3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *&v13[v3];
    *&v13[v3] = 0x8000000000000000;
    v70 = v20;
    sub_224B217E4(v20, a1, isUniquelyReferenced_nonNull_native);
    *&v13[v3] = v79;
    swift_endAccess();
    sub_224A3D418(a2);
  }

  else
  {
    v70 = 0;
  }

LABEL_10:
  sub_224DA98F8();
  v23 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v24 = *(v3 + v23);
  v25 = *(v24 + 16);
  v69 = a1;
  v66[1] = v6;
  if (v25)
  {

    v26 = sub_224A5C3D0(a1);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);
    }

    else
    {
      v28 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v80 = v28;
  v29 = v73;
  v66[0] = *(v73 + 2);
  v30 = v12;
  v31 = v12;
  v32 = v76;
  (v66[0])(v8, v30, v76);
  v33 = v72;
  sub_224A5DF04(v72, v8);
  v34 = *(v29 + 1);
  v68 = v29 + 8;
  v67 = v34;
  v34(v33, v32);
  v35 = v80;
  swift_beginAccess();
  v36 = *(v3 + v23);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v3 + v23);
  *(v3 + v23) = 0x8000000000000000;
  v38 = v35;
  LOBYTE(v35) = v69;
  sub_224A5E6E4(v38, v69, v37);
  *(v3 + v23) = v78;
  swift_endAccess();
  v71 = v31;
  v39 = v31;
  v40 = v35;
  (v66[0])(v33, v39, v32);
  v41 = (v29[80] + 25) & ~v29[80];
  v42 = swift_allocObject();
  *(v42 + 16) = v3;
  *(v42 + 24) = v40;
  (*(v29 + 4))(v42 + v41, v33, v32);
  aBlock[4] = sub_224A5C358;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_250;
  v43 = _Block_copy(aBlock);
  v44 = objc_opt_self();
  v45 = v3;
  v46 = [v44 responderWithHandler_];
  _Block_release(v43);

  [v46 setQueue_];
  v13 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v46];
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v47 = sub_224DAB258();
  __swift_project_value_buffer(v47, qword_281364E50);
  v48 = v45;
  v49 = sub_224DAB228();
  v50 = sub_224DAF2A8();

  if (os_log_type_enabled(v49, v50))
  {
    v73 = v13;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    v54 = 0xED0000726F74696ELL;
    *v51 = 136446466;
    v55 = 0x6F4D656369766564;
    v56 = 0x8000000224DC45E0;
    v57 = 0xE800000000000000;
    v58 = 0x736C6F72746E6F63;
    if (v40 != 4)
    {
      v58 = 0x6974697669746361;
      v57 = 0xEA00000000007365;
    }

    if (v40 == 3)
    {
      v58 = 0xD000000000000016;
    }

    else
    {
      v56 = v57;
    }

    v59 = 0xEA0000000000736ELL;
    v60 = 0xD00000000000001CLL;
    if (v40 == 1)
    {
      v60 = 0x6F69736E65747865;
    }

    else
    {
      v59 = 0x8000000224DC45C0;
    }

    if (v40)
    {
      v55 = v60;
      v54 = v59;
    }

    if (v40 <= 2u)
    {
      v61 = v55;
    }

    else
    {
      v61 = v58;
    }

    if (v40 <= 2u)
    {
      v62 = v54;
    }

    else
    {
      v62 = v56;
    }

    v63 = sub_224A33F74(v61, v62, aBlock);

    *(v51 + 4) = v63;
    *(v51 + 12) = 2114;
    BSDispatchQueueAssert();
    v64 = [*&v48[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v51 + 14) = v64;
    *v52 = v64;
    _os_log_impl(&dword_224A2F000, v49, v50, "Subscribed to service: [%{public}s] from client: %{public}@", v51, 0x16u);
    sub_224A3311C(v52, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x22AA5EED0](v53, -1, -1);
    MEMORY[0x22AA5EED0](v51, -1, -1);

    swift_unknownObjectRelease();
    v67(v71, v76);
    return v73;
  }

  else
  {

    swift_unknownObjectRelease();
    v67(v71, v76);
  }

  return v13;
}