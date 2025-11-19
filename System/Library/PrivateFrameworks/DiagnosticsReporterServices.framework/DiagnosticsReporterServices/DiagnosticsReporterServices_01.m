uint64_t sub_21DD8452C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF28, &qword_21DD8D548);
    v2 = sub_21DD8C378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21DD72CF4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21DD74E40(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21DD74E40(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21DD74E40(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21DD8C288();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_21DD74E40(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id DiagnosticsReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticsReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticsReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD848D4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_21DD84920(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_21DD84930(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_21DD84950(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_21DD849C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21DD83BD8;

  return sub_21DD734DC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_21DD84B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21DD74F54;

  return sub_21DD732F8(a1, v5);
}

CFUserNotificationRef sub_21DD84BCC(void *a1)
{
  v29[8] = *MEMORY[0x277D85DE8];
  sub_21DD78438(a1, v29);
  v2 = v29[0];
  v1 = v29[1];
  v4 = v29[2];
  v3 = v29[3];
  v6 = v29[4];
  v5 = v29[5];
  v7 = v29[7];
  v27 = v29[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F010, qword_21DD8D750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D690;
  v9 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = inited;
  v11 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v9;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  v12 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 104) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  v13 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  *(inited + 144) = v11;
  *(inited + 112) = v13;
  *(inited + 120) = v6;
  *(inited + 128) = v5;
  v14 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_15;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v15 = v9;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10[23] = v11;
  v10[19] = v18;
  v10[20] = v27;
  v10[21] = v7;
  sub_21DD8085C(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF60, &qword_21DD8D578);
  swift_arrayDestroy();
  error = 0;
  type metadata accessor for CFString();
  sub_21DD85468(&qword_27CE8ED60, type metadata accessor for CFString);
  v19 = sub_21DD8BF58();

  v20 = CFUserNotificationCreate(0, 0.0, 2uLL, &error, v19);

  if (!v20)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v21 = sub_21DD8BF08();
    __swift_project_value_buffer(v21, qword_281221D58);
    v22 = sub_21DD8BEE8();
    v23 = sub_21DD8C1D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      swift_beginAccess();
      *(v24 + 4) = error;
      _os_log_impl(&dword_21DD6F000, v22, v23, "Failed to show CFUserNotification. Error: %d", v24, 8u);
      MEMORY[0x223D47710](v24, -1, -1);
    }

    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_21DD84F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21DD8BBB8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_21DD8BBA8();
  v34 = a3;
  type metadata accessor for DiagnosticsReporterLaunchOptions();
  sub_21DD85468(&qword_27CE8F008, type metadata accessor for DiagnosticsReporterLaunchOptions);
  v12 = sub_21DD8BB98();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D6A0;
  *(inited + 32) = 0x736E6F6974706FLL;
  v16 = MEMORY[0x277CC9318];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = 1701869940;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a2;
  sub_21DD77B88(v12, v14);
  v17 = sub_21DD728E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EEF0, &unk_21DD8D740);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v19 = sub_21DD8BFC8();
  v20 = sub_21DD8BFC8();
  v21 = [v18 initWithServiceName:v19 viewControllerClassName:v20];

  v22 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  sub_21DD8452C(v17);

  v23 = sub_21DD8BF58();

  [v22 setUserInfo_];

  v24 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v25 = [objc_opt_self() newHandleWithDefinition:v21 configurationContext:v22];
  v26 = type metadata accessor for RemoteAlertDeactivationHandler();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion];
  *v28 = a4;
  *(v28 + 1) = a5;
  v33.receiver = v27;
  v33.super_class = v26;

  v29 = objc_msgSendSuper2(&v33, sel_init);
  v30 = qword_27CE8F000;
  qword_27CE8F000 = v29;
  v31 = v29;

  [v25 registerObserver_];
  v32 = v24;
  [v25 activateWithContext_];
  sub_21DD77BF0(v12, v14);
}

uint64_t sub_21DD85468(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21DD854B0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21DD8BFC8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_281221D48 = v2;
  }

  else
  {
    sub_21DD8C338();
    __break(1u);
  }
}

id sub_21DD85584@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v102 - v7;
  v8 = sub_21DD8BD58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v113 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v102 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v105 = &v102 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v102 - v19;
  v21 = type metadata accessor for PanicLog();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v26[v24[7]];
  *v27 = 0x63696E6150;
  v27[1] = 0xE500000000000000;
  v28 = &v26[v24[10]];
  *(v28 + 3) = &type metadata for CriticalPolicy;
  *(v28 + 4) = &off_282F1BF18;
  v106 = v28;
  v29 = &v26[v24[11]];
  *v29 = 0;
  v29[1] = 0;
  *v26 = a1 & 1;
  v30 = MEMORY[0x277D84F90];
  v31 = sub_21DD728E4(MEMORY[0x277D84F90]);
  v32 = *(v21 + 32);
  v119 = v26;
  v116 = v32;
  *&v26[v32] = v30;
  v110 = a2;
  v33 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  v34 = v33[1];
  v108 = v22;
  if (!v34)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v46 = sub_21DD8BF08();
    __swift_project_value_buffer(v46, qword_281221D58);
    v47 = sub_21DD8BEE8();
    v48 = sub_21DD8C1D8();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v106;
    v51 = v109;
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21DD6F000, v47, v48, "Invalid log path", v52, 2u);
      MEMORY[0x223D47710](v52, -1, -1);
    }

    goto LABEL_53;
  }

  v118 = v8;
  v104 = v31;
  v35 = *v33;

  v107 = v20;
  sub_21DD8BC98();

  v36 = objc_opt_self();
  result = [v36 defaultManager];
  if (!v33[1])
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v38 = result;
  v39 = *v33;
  v40 = v33[1];

  v41 = sub_21DD8BFC8();

  v42 = [v38 fileExistsAtPath_];

  v43 = v109;
  v114 = v33;
  v112 = v21;
  if (v42)
  {
    v45 = v118;
    v44 = v119;
    (*(v9 + 16))(&v119[*(v21 + 24)], v107, v118);
LABEL_17:
    v67 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
    v68 = v110;
    swift_beginAccess();
    v69 = *(*&v68[v67] + 16);
    if (v69)
    {
      v111 = (v9 + 16);
      v115 = v9 + 32;

      v70 = (v103 + 40);
      v71 = MEMORY[0x277D84F90];
      while (1)
      {
        v73 = *(v70 - 1);
        v72 = *v70;

        v74 = [v36 defaultManager];
        v75 = sub_21DD8BFC8();
        v76 = [v74 fileExistsAtPath_];

        if (v76)
        {
          sub_21DD8BC98();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_21DD86EA0(0, v71[2] + 1, 1, v71, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v45 = v118;
          v44 = v119;
          v78 = v71[2];
          v77 = v71[3];
          if (v78 >= v77 >> 1)
          {
            v71 = sub_21DD86EA0(v77 > 1, v78 + 1, 1, v71, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v71[2] = v78 + 1;
          (*(v9 + 32))(v71 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v78, v117, v45);
        }

        else
        {
          v79 = v114[1];
          if (!v79)
          {

            v45 = v118;
            v44 = v119;
            goto LABEL_21;
          }

          v44 = v119;
          if (v73 == *v114 && v79 == v72)
          {
          }

          else
          {
            v80 = sub_21DD8C428();

            if ((v80 & 1) == 0)
            {
              v45 = v118;
              goto LABEL_21;
            }
          }

          v45 = v118;
          (*v111)(v113, v44 + *(v112 + 24), v118);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_21DD86EA0(0, v71[2] + 1, 1, v71, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v82 = v71[2];
          v81 = v71[3];
          if (v82 >= v81 >> 1)
          {
            v71 = sub_21DD86EA0(v81 > 1, v82 + 1, 1, v71, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v71[2] = v82 + 1;
          (*(v9 + 32))(v71 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v82, v113, v45);
        }

        *(v44 + v116) = v71;
LABEL_21:
        v70 += 2;
        if (!--v69)
        {

          v51 = v109;
          goto LABEL_41;
        }
      }
    }

    v51 = v43;
LABEL_41:
    sub_21DD8BEA8();
    v83 = v112;
    v84 = *(v112 + 24);
    (*(v9 + 16))(v105, &v84[v44], v45);
    v85 = sub_21DD8BE88();
    v86 = v114;
    if (v85)
    {
      v87 = v44;
      v88 = *(v83 + 36);
      v89 = sub_21DD8BE78();

      (*(v9 + 8))(v107, v45);

      *(v87 + v88) = v89;
      *(v87 + 1) = 0;
      sub_21DD87130(v87, v51);
      (*(v108 + 56))(v51, 0, 1, v83);
      return sub_21DD87194(v87);
    }

    v117 = v84;
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v90 = sub_21DD8BF08();
    __swift_project_value_buffer(v90, qword_281221D58);
    v91 = v110;
    v92 = sub_21DD8BEE8();
    v93 = sub_21DD8C1D8();

    LODWORD(v116) = v93;
    if (!os_log_type_enabled(v92, v93))
    {

      v101 = *(v9 + 8);
      v101(v107, v45);
      v21 = v112;
      v97 = v117;
      goto LABEL_49;
    }

    v94 = swift_slowAlloc();
    result = swift_slowAlloc();
    v120 = result;
    *v94 = 136446210;
    v95 = v86;
    v96 = v86[1];
    v97 = v117;
    if (v96)
    {
      v98 = result;
      v99 = *v95;

      v100 = sub_21DD74A90(v99, v96, &v120);

      *(v94 + 4) = v100;
      _os_log_impl(&dword_21DD6F000, v92, v116, "Unable to read header from URL: %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x223D47710](v98, -1, -1);
      MEMORY[0x223D47710](v94, -1, -1);

      v101 = *(v9 + 8);
      v45 = v118;
      v101(v107, v118);
      v21 = v112;
      v44 = v119;
LABEL_49:
      v101(&v97[v44], v45);

LABEL_51:

      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v53 = v115;
  sub_21DD7871C(v115);
  v45 = v118;
  if ((*(v9 + 48))(v53, 1, v118) != 1)
  {
    v65 = *(v9 + 32);
    v66 = v111;
    v65(v111, v53, v45);
    v44 = v119;
    v65(&v119[*(v21 + 24)], v66, v45);
    goto LABEL_17;
  }

  sub_21DD870C8(v53);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v54 = sub_21DD8BF08();
  __swift_project_value_buffer(v54, qword_281221D58);
  v55 = v110;
  v56 = sub_21DD8BEE8();
  v57 = sub_21DD8C1D8();

  v51 = v43;
  if (!os_log_type_enabled(v56, v57))
  {

    (*(v9 + 8))(v107, v45);
    goto LABEL_51;
  }

  v58 = v21;
  v59 = swift_slowAlloc();
  result = swift_slowAlloc();
  v121[0] = result;
  *v59 = 136446210;
  v60 = v114[1];
  if (v60)
  {
    v61 = result;
    v62 = *v114;
    v63 = v114[1];

    v64 = sub_21DD74A90(v62, v60, v121);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_21DD6F000, v56, v57, "Failed reading from URL: %{public}s and retired path.", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x223D47710](v61, -1, -1);
    MEMORY[0x223D47710](v59, -1, -1);

    (*(v9 + 8))(v107, v118);

    v21 = v58;
LABEL_52:
    v50 = v106;
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1(v50);
    return (*(v108 + 56))(v51, 1, 1, v21);
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_21DD86240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79616C70736944;
  }

  else
  {
    v4 = 1953722184;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79616C70736944;
  }

  else
  {
    v6 = 1953722184;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DD8C428();
  }

  return v9 & 1;
}

uint64_t sub_21DD862E0()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD8635C()
{
  *v0;
  sub_21DD8C098();
}

uint64_t sub_21DD863C4()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD8643C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DD8C388();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21DD8649C(uint64_t *a1@<X8>)
{
  v2 = 1953722184;
  if (*v1)
  {
    v2 = 0x79616C70736944;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_21DD864D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D6A0;
  *(inited + 32) = 0x746E656469636E69;
  *(inited + 40) = 0xEB0000000064695FLL;
  v3 = type metadata accessor for PanicLog();
  v4 = *(v0 + *(v3 + 36));
  if (*(v4 + 16) && (v5 = sub_21DD72C7C(0x746E656469636E69, 0xEB0000000064695FLL), (v6 & 1) != 0) && (sub_21DD72CF4(*(v4 + 56) + 32 * v5, v14), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v13;
  }

  else
  {
    sub_21DD77C48();
    v7 = sub_21DD8C238();
  }

  *(inited + 48) = v7;
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  v8 = (v1 + *(v3 + 28));
  v9 = *v8;
  v10 = v8[1];
  *(inited + 72) = sub_21DD8BFC8();
  v11 = sub_21DD8061C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  swift_arrayDestroy();
  return v11;
}

void sub_21DD8665C(void *a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21DD8BD58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - v9;
  v11 = *(type metadata accessor for PanicLog() + 24);
  sub_21DD87508(&unk_27CE8F020);
  if ((sub_21DD8BF98() & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DD8BF08();
    v13 = __swift_project_value_buffer(v12, qword_281221D58);
    v14 = v4[2];
    v53 = a1;
    v48 = v14;
    v49 = v4 + 2;
    v14(v10, a1, v3);
    v51 = v13;
    v15 = sub_21DD8BEE8();
    v16 = sub_21DD8C1B8();
    v17 = os_log_type_enabled(v15, v16);
    v52 = v4;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47[0] = v8;
      v20 = v19;
      v54[0] = v19;
      *v18 = 136315138;
      sub_21DD87508(&qword_27CE8EDE0);
      v21 = sub_21DD8C418();
      v47[1] = v1;
      v23 = v22;
      v50 = v4[1];
      v50(v10, v3);
      v24 = sub_21DD74A90(v21, v23, v54);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_21DD6F000, v15, v16, "Removing file at %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v25 = v20;
      v8 = v47[0];
      MEMORY[0x223D47710](v25, -1, -1);
      MEMORY[0x223D47710](v18, -1, -1);
    }

    else
    {

      v50 = v4[1];
      v50(v10, v3);
    }

    v26 = [objc_opt_self() defaultManager];
    v27 = v53;
    v28 = sub_21DD8BCB8();
    v54[0] = 0;
    v29 = [v26 removeItemAtURL:v28 error:v54];

    if (v29)
    {
      v30 = v54[0];
    }

    else
    {
      v31 = v54[0];
      v32 = sub_21DD8BC68();

      swift_willThrow();
      v48(v8, v27, v3);
      v33 = v32;
      v34 = v8;
      v35 = sub_21DD8BEE8();
      v36 = sub_21DD8C1D8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54[0] = v53;
        *v37 = 136446466;
        v38 = sub_21DD8BC88();
        v40 = v39;
        v50(v34, v3);
        v41 = sub_21DD74A90(v38, v40, v54);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2082;
        swift_getErrorValue();
        v42 = sub_21DD8C448();
        v44 = sub_21DD74A90(v42, v43, v54);

        *(v37 + 14) = v44;
        _os_log_impl(&dword_21DD6F000, v35, v36, "Failed to remove panic file url: %{public}s. Error: %{public}s", v37, 0x16u);
        v45 = v53;
        swift_arrayDestroy();
        MEMORY[0x223D47710](v45, -1, -1);
        MEMORY[0x223D47710](v37, -1, -1);
      }

      else
      {

        v50(v34, v3);
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21DD86BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21DD8BD58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21DD86C2C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21DD86C84()
{
  if (*v0)
  {
    result = 0x79616C70736944;
  }

  else
  {
    result = 1953722184;
  }

  *v0;
  return result;
}

uint64_t sub_21DD86CB8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21DD86D00(uint64_t a1)
{
  v3 = sub_21DD8BD58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(a1 + 32));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 8);
    while (v11 < *(v9 + 16))
    {
      (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v3);
      sub_21DD8665C(v8);
      ++v11;
      result = (*v12)(v8, v3);
      if (v10 == v11)
      {
        return result;
      }
    }

    __break(1u);

    result = (*v12)(v8, v3);
    __break(1u);
  }

  return result;
}

size_t sub_21DD86EA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t type metadata accessor for PanicLog()
{
  result = qword_281221C78;
  if (!qword_281221C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DD870C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DD87130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PanicLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD87194(uint64_t a1)
{
  v2 = type metadata accessor for PanicLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21DD87218()
{
  sub_21DD8BD58();
  if (v0 <= 0x3F)
  {
    sub_21DD77658();
    if (v1 <= 0x3F)
    {
      sub_21DD776B0();
      if (v2 <= 0x3F)
      {
        sub_21DD77714();
        if (v3 <= 0x3F)
        {
          sub_21DD87304();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21DD87304()
{
  if (!qword_281221BC8)
  {
    v0 = sub_21DD8C248();
    if (!v1)
    {
      atomic_store(v0, &qword_281221BC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PanicLog.Type(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PanicLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DD874B4()
{
  result = qword_27CE8F018;
  if (!qword_27CE8F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F018);
  }

  return result;
}

uint64_t sub_21DD87508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DD8BD58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DD8755C(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v19[2] = a2;
  v20 = sub_21DD8BE58();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DD8BC38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DD8BE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED70, qword_21DD8D880);
  v11 = sub_21DD8BE48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DD8CF30;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x277CC9968], v11);
  sub_21DD802FC(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  sub_21DD8BE28();

  (*(v2 + 8))(v5, v20);
  v16 = sub_21DD8BC18();
  LOBYTE(v12) = v17;
  (*(v7 + 8))(v10, v6);
  return v12 & 1 | (v16 < 7);
}

BOOL sub_21DD87800()
{
  sub_21DD79DBC();

  return sub_21DD79FE0(0xD000000000000011, 0x800000021DD8E890, 1, sub_21DD8755C);
}

unsigned __int8 *sub_21DD87870()
{
  result = sub_21DD7A350(0xD000000000000022, 0x800000021DD8E860);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = result;
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_21DD75DD0(0x64uLL);
    return (v3 < 0x7FFFFFFFFFFFFFFFLL && v2 >= (v3 + 1));
  }

  return result;
}

uint64_t sub_21DD878E0(void *a1)
{
  v2 = v1;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DD8BF08();
  __swift_project_value_buffer(v4, qword_281221D58);
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21DD74A90(0xD000000000000022, 0x800000021DD8E950, &v11);
    _os_log_impl(&dword_21DD6F000, v5, v6, "%s Going to run completion handler...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D47710](v8, -1, -1);
    MEMORY[0x223D47710](v7, -1, -1);
  }

  [a1 unregisterObserver_];
  v9 = *(v2 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion + 8);
  return (*(v2 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion))(0);
}

void sub_21DD87AC0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DD8BF08();
  __swift_project_value_buffer(v6, qword_281221D58);
  v7 = sub_21DD8BEE8();
  v8 = sub_21DD8C1E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21DD74A90(0xD00000000000002CLL, 0x800000021DD8E920, &v16);
    _os_log_impl(&dword_21DD6F000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223D47710](v10, -1, -1);
    MEMORY[0x223D47710](v9, -1, -1);
  }

  [a1 unregisterObserver_];
  v11 = v3 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion;
  v13 = *(v3 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion);
  v12 = *(v11 + 8);
  if (a2)
  {
    v14 = sub_21DD8BC58();
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v13();
}

id sub_21DD87D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertDeactivationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DD87DA4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21DD74A90(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_21DD87E00(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DD87E4C(a1, a2);
  sub_21DD87F7C(&unk_282F1BC90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21DD87E4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DD88068(v5, 0);
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

  result = sub_21DD8C328();
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
        v10 = sub_21DD8C0B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DD88068(v10, 0);
        result = sub_21DD8C2C8();
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

uint64_t sub_21DD87F7C(uint64_t result)
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

  result = sub_21DD880DC(result, v12, 1, v3);
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

void *sub_21DD88068(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8F0A0, &unk_21DD8D8D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DD880DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8F0A0, &unk_21DD8D8D0);
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

void sub_21DD88318(uint64_t a1, unint64_t a2, int a3, NSObject *a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DD8BF08();
    __swift_project_value_buffer(v7, qword_281221AF0);
    v8 = a4;
    oslog = sub_21DD8BEE8();
    v9 = sub_21DD8C1D8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_21DD6F000, oslog, v9, "Error posting report: %@", v10, 0xCu);
      sub_21DD71200(v11, &unk_27CE8EF10, &unk_21DD8D530);
      MEMORY[0x223D47710](v11, -1, -1);
      MEMORY[0x223D47710](v10, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a4;
    }
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      if (qword_281221AE8 != -1)
      {
        swift_once();
      }

      v15 = sub_21DD8BF08();
      __swift_project_value_buffer(v15, qword_281221AF0);
      v16 = sub_21DD8BEE8();
      v17 = sub_21DD8C1D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21DD6F000, v16, v17, "No data in response", v18, 2u);
        MEMORY[0x223D47710](v18, -1, -1);
      }
    }

    else
    {
      v22 = sub_21DD8BB88();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_21DD77B88(a1, a2);
      sub_21DD8BB78();
      sub_21DD8A9C4();
      sub_21DD8BB68();
      sub_21DD77BDC(a1, a2);

      swift_beginAccess();
      v25 = *(a5 + 16);
      v26 = *(a5 + 24);
      v27 = *(a5 + 32);
      v28 = *(a5 + 40);
      v29 = *(a5 + 48);
      v30 = *(a5 + 56);
      *(a5 + 16) = v33;
      *(a5 + 32) = v34;
      *(a5 + 48) = v35;
      *(a5 + 56) = v36;
      v31 = *(a5 + 64);
      *(a5 + 64) = v37;
      sub_21DD8AA18(v25, v26, v27);
    }

    sub_21DD8C208();
  }
}

uint64_t sub_21DD887E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_21DD8BD98();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_21DD77BDC(v6, v11);
}

uint64_t sub_21DD888A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F635F7261646172;
  v4 = 0xEF746E656E6F706DLL;
  v5 = 0x800000021DD8E010;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000021DD8E010;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x737261646172;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6F635F7261646172;
  if (*a2 == 1)
  {
    v5 = 0xEF746E656E6F706DLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737261646172;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD889B8()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD88A68()
{
  *v0;
  *v0;
  sub_21DD8C098();
}

uint64_t sub_21DD88B04()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD88BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DD8AC90();
  *a2 = result;
  return result;
}

void sub_21DD88BE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF746E656E6F706DLL;
  v5 = 0x6F635F7261646172;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021DD8E010;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737261646172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21DD88C4C()
{
  v1 = 0x6F635F7261646172;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737261646172;
  }
}

uint64_t sub_21DD88CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DD8AC90();
  *a1 = result;
  return result;
}

uint64_t sub_21DD88CDC(uint64_t a1)
{
  v2 = sub_21DD8B0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD88D18(uint64_t a1)
{
  v2 = sub_21DD8B0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DD88D5C()
{
  sub_21DD8C458();
  sub_21DD8C098();
  return sub_21DD8C478();
}

uint64_t sub_21DD88DC8()
{
  sub_21DD8C458();
  sub_21DD8C098();
  return sub_21DD8C478();
}

uint64_t sub_21DD88E18@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DD8C388();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21DD88EA0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21DD8C388();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21DD88F04(uint64_t a1)
{
  v2 = sub_21DD8B76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD88F40(uint64_t a1)
{
  v2 = sub_21DD8B76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DD88F7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0D8, &qword_21DD8DD18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B76C();
  sub_21DD8C498();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21DD8C3D8();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_21DD890DC()
{
  sub_21DD8C2D8();
  v2 = *v0;
  v1 = v0[1];

  MEMORY[0x223D46C80](2128928, 0xE300000000000000);
  MEMORY[0x223D46C80](v0[2], v0[3]);
  MEMORY[0x223D46C80](0x203A44492820, 0xE600000000000000);
  v5 = v0[4];
  v3 = sub_21DD8C418();
  MEMORY[0x223D46C80](v3);

  MEMORY[0x223D46C80](41, 0xE100000000000000);
  return v2;
}

uint64_t sub_21DD891BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 25705;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (*a2 != 1)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD892A0()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD89330()
{
  *v0;
  *v0;
  sub_21DD8C098();
}

uint64_t sub_21DD893AC()
{
  v1 = *v0;
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD89438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DD8B240();
  *a2 = result;
  return result;
}

void sub_21DD89468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21DD894B4()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21DD894FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DD8B240();
  *a1 = result;
  return result;
}

uint64_t sub_21DD89524(uint64_t a1)
{
  v2 = sub_21DD8B4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD89560(uint64_t a1)
{
  v2 = sub_21DD8B4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21DD895A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21DD8B28C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_21DD895E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21DD8ACDC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_21DD89638()
{
  v0 = sub_21DD8BF08();
  __swift_allocate_value_buffer(v0, qword_281221AF0);
  __swift_project_value_buffer(v0, qword_281221AF0);
  return sub_21DD8BEF8();
}

void sub_21DD896B8(uint64_t a1@<X8>)
{
  v2 = sub_21DD8BF38();
  v124 = *(v2 - 8);
  v125 = v2;
  v3 = *(v124 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v123 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v113 - v6;
  v126 = sub_21DD8C028();
  v8 = *(v126 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v126);
  v122 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DD8BDF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v113 - v18;
  v20 = sub_21DD8BD58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v127 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!os_variant_has_internal_diagnostics())
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v29 = sub_21DD8BF08();
    __swift_project_value_buffer(v29, qword_281221AF0);
    v25 = sub_21DD8BEE8();
    v26 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Not posting report";
    goto LABEL_11;
  }

  sub_21DD8BD38();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21DD71200(v19, &qword_27CE8EDC8, &qword_21DD8D500);
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v24 = sub_21DD8BF08();
    __swift_project_value_buffer(v24, qword_281221AF0);
    v25 = sub_21DD8BEE8();
    v26 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Error constructing URL";
LABEL_11:
    _os_log_impl(&dword_21DD6F000, v25, v26, v28, v27, 2u);
    MEMORY[0x223D47710](v27, -1, -1);
LABEL_12:

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
    goto LABEL_47;
  }

  v118 = v7;
  v37 = *(v21 + 32);
  v120 = v20;
  v37(v127, v19, v20);
  v38 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v39 = sub_21DD8BCB8();
  v40 = [v38 initWithURL_];

  v41 = sub_21DD8BFC8();
  [v40 setHTTPMethod_];

  v42 = sub_21DD8BFC8();
  v43 = sub_21DD8BFC8();
  v121 = v40;
  [v40 setValue:v42 forHTTPHeaderField:v43];

  v134 = xmmword_21DD8D8E0;
  v44 = sub_21DD8BD68();
  v119 = v21;
  v114 = v45;
  v113 = v44;
  v46 = sub_21DD8BCA8();
  v48 = v47;
  sub_21DD8BDE8();
  v49 = sub_21DD8BDD8();
  v51 = v50;
  (*(v12 + 8))(v15, v11);
  aBlock = 0;
  v129 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](11565, 0xE200000000000000);
  v116 = v49;
  MEMORY[0x223D46C80](v49, v51);
  MEMORY[0x223D46C80](0xD000000000000040, 0x800000021DD8EA90);
  MEMORY[0x223D46C80](v46, v48);

  MEMORY[0x223D46C80](0xD000000000000025, 0x800000021DD8EAE0);
  v52 = v122;
  sub_21DD8C018();
  v53 = sub_21DD8BFF8();
  v55 = v54;

  v56 = *(v8 + 8);
  v115 = v8 + 8;
  v56(v52, v126);
  if (v55 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v57 = sub_21DD8BF08();
    __swift_project_value_buffer(v57, qword_281221AF0);
    v58 = sub_21DD8BEE8();
    v59 = sub_21DD8C1D8();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v118;
    v62 = v113;
    if (v60)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_21DD6F000, v58, v59, "Failed to encode file name data into request body", v63, 2u);
      MEMORY[0x223D47710](v63, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v53, v55);
    v61 = v118;
    v62 = v113;
  }

  sub_21DD8BDA8();
  aBlock = 0;
  v129 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](757926413, 0xE400000000000000);
  MEMORY[0x223D46C80](v116, v51);
  MEMORY[0x223D46C80](0xD000000000000047, 0x800000021DD8EB10);
  sub_21DD8C018();
  v64 = sub_21DD8BFF8();
  v66 = v65;

  v56(v52, v126);
  if (v66 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v67 = sub_21DD8BF08();
    __swift_project_value_buffer(v67, qword_281221AF0);
    v68 = sub_21DD8BEE8();
    v69 = sub_21DD8C1D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_21DD6F000, v68, v69, "Failed to encode radars data into request body", v70, 2u);
      MEMORY[0x223D47710](v70, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v64, v66);
  }

  aBlock = 0;
  v129 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](757926413, 0xE400000000000000);
  v71 = v116;
  MEMORY[0x223D46C80](v116, v51);
  MEMORY[0x223D46C80](0xD000000000000049, 0x800000021DD8EB60);
  MEMORY[0x223D46C80](v71, v51);
  MEMORY[0x223D46C80](168635693, 0xE400000000000000);
  sub_21DD8C018();
  v72 = sub_21DD8BFF8();
  v74 = v73;

  v56(v52, v126);
  if (v74 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v75 = sub_21DD8BF08();
    __swift_project_value_buffer(v75, qword_281221AF0);
    v76 = sub_21DD8BEE8();
    v77 = sub_21DD8C1D8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_21DD6F000, v76, v77, "Failed to encode radar component data into request body", v78, 2u);
      MEMORY[0x223D47710](v78, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v72, v74);
  }

  v79 = v121;
  [v121 setTimeoutInterval_];
  aBlock = 0;
  v129 = 0xE000000000000000;
  sub_21DD8C2D8();

  aBlock = 0xD00000000000001ELL;
  v129 = 0x800000021DD8EBB0;
  MEMORY[0x223D46C80](v116, v51);

  v80 = sub_21DD8BFC8();

  v81 = sub_21DD8BFC8();
  [v79 setValue:v80 forHTTPHeaderField:v81];

  v82 = sub_21DD8BD88();
  [v79 setHTTPBody_];

  sub_21DD77BF0(v62, v114);
  if (qword_281221AE8 != -1)
  {
    swift_once();
  }

  v83 = sub_21DD8BF08();
  v84 = __swift_project_value_buffer(v83, qword_281221AF0);
  v85 = v134;
  sub_21DD77B88(v134, *(&v134 + 1));
  v118 = v84;
  v86 = sub_21DD8BEE8();
  v87 = sub_21DD8C1B8();
  sub_21DD77BF0(v85, *(&v85 + 1));
  v88 = os_log_type_enabled(v86, v87);
  v117 = a1;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    aBlock = v90;
    *v89 = 136315138;
    sub_21DD8C018();
    v91 = sub_21DD8C008();
    if (v92)
    {
      v93 = v92;
    }

    else
    {
      v91 = 7104878;
      v93 = 0xE300000000000000;
    }

    v94 = sub_21DD74A90(v91, v93, &aBlock);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_21DD6F000, v86, v87, "body: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x223D47710](v90, -1, -1);
    MEMORY[0x223D47710](v89, -1, -1);
  }

  v95 = dispatch_semaphore_create(0);
  v96 = [objc_opt_self() ephemeralSessionConfiguration];
  v97 = objc_opt_self();
  v122 = v96;
  v98 = [v97 sessionWithConfiguration_];
  v99 = swift_allocObject();
  *(v99 + 16) = 1;
  v126 = v99 + 16;
  *(v99 + 24) = 0u;
  *(v99 + 40) = 0u;
  *(v99 + 49) = 0u;
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v95;
  v132 = sub_21DD8A8EC;
  v133 = v100;
  aBlock = MEMORY[0x277D85DD0];
  v129 = 1107296256;
  v130 = sub_21DD887E0;
  v131 = &block_descriptor_0;
  v101 = _Block_copy(&aBlock);
  v102 = v121;

  v103 = v95;

  v104 = v98;
  v105 = [v98 dataTaskWithRequest:v102 completionHandler:v101];
  _Block_release(v101);

  [v105 resume];
  v106 = v123;
  sub_21DD8BF28();
  sub_21DD8BF48();
  v107 = v125;
  v108 = *(v124 + 8);
  v108(v106, v125);
  sub_21DD8C1F8();
  v108(v61, v107);
  if (sub_21DD8BF18())
  {
    v109 = v122;
    v110 = sub_21DD8BEE8();
    v111 = sub_21DD8C1D8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 134217984;
      *(v112 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_21DD6F000, v110, v111, "Semaphore timed out after %f seconds. Unable to get response from server", v112, 0xCu);
      MEMORY[0x223D47710](v112, -1, -1);
    }

    [v105 cancel];
    (*(v119 + 8))(v127, v120);
  }

  else
  {
    (*(v119 + 8))(v127, v120);
  }

  a1 = v117;
  sub_21DD77BF0(v134, *(&v134 + 1));
  swift_beginAccess();
  v36 = *(v99 + 16);
  v30 = *(v99 + 24);
  v31 = *(v99 + 32);
  v32 = *(v99 + 40);
  v33 = *(v99 + 48);
  v34 = *(v99 + 56);
  v35 = *(v99 + 64);
  sub_21DD8A90C(v36, v30, v31);

LABEL_47:
  *a1 = v36;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 40) = v34;
  *(a1 + 48) = v35;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DD8A90C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {

    return sub_21DD8A980(a2, a3);
  }

  return result;
}

uint64_t sub_21DD8A980(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21DD8A9C4()
{
  result = qword_281221B10;
  if (!qword_281221B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B10);
  }

  return result;
}

uint64_t sub_21DD8AA18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {

    return sub_21DD8AA8C(a2, a3);
  }

  return result;
}

uint64_t sub_21DD8AA8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21DD8AAFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21DD8AB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
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

uint64_t sub_21DD8ABF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21DD8AC38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21DD8AC90()
{
  v0 = sub_21DD8C388();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DD8ACDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0B0, &qword_21DD8DA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B0C0();
  sub_21DD8C498();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0B8, &qword_21DD8DA30);
  v39 = 0;
  sub_21DD8B114();
  sub_21DD8C3B8();
  v12 = v34;
  v39 = 1;
  sub_21DD8B1EC();
  sub_21DD8C3B8();
  v33 = v12;
  v13 = v35;
  v31 = v37;
  v32 = v36;
  v29 = v34;
  v30 = v38;
  LOBYTE(v34) = 2;
  v14 = sub_21DD8C3A8();
  if (v33 | v13)
  {
    v20 = *(v6 + 8);
    LODWORD(v28) = v14;
    v21 = v13;
    v20(v9, v5);
    v22 = v33;

    v24 = v29;
    v23 = v30;
    v26 = v31;
    v25 = v32;
    sub_21DD8A980(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);

    result = sub_21DD8AA8C(v24, v21);
    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v21;
    *(a2 + 24) = v25;
    *(a2 + 32) = v26;
    *(a2 + 40) = v23;
    *(a2 + 48) = v28;
  }

  else
  {
    v15 = sub_21DD8C318();
    swift_allocError();
    v16 = a1[3];
    v27 = a1[4];
    v28 = v17;
    __swift_project_boxed_opaque_existential_1(a1, v16);
    sub_21DD8C488();
    v18 = v28;
    sub_21DD8C308();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x277D84168], v15);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v28 = 0;
    v19 = v29;
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_21DD8AA8C(v19, v28);
  }

  return result;
}

unint64_t sub_21DD8B0C0()
{
  result = qword_281221B68;
  if (!qword_281221B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B68);
  }

  return result;
}

unint64_t sub_21DD8B114()
{
  result = qword_281221AD8;
  if (!qword_281221AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE8F0B8, &qword_21DD8DA30);
    sub_21DD8B198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AD8);
  }

  return result;
}

unint64_t sub_21DD8B198()
{
  result = qword_281221B38;
  if (!qword_281221B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B38);
  }

  return result;
}

unint64_t sub_21DD8B1EC()
{
  result = qword_281221B18;
  if (!qword_281221B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B18);
  }

  return result;
}

uint64_t sub_21DD8B240()
{
  v0 = sub_21DD8C388();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DD8B28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0C0, &qword_21DD8DA38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B4D8();
  sub_21DD8C498();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v11 = sub_21DD8C3C8();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = sub_21DD8C3C8();
  v21 = v15;
  v24 = 2;
  v16 = sub_21DD8C3D8();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v22;
  *v22 = v23;
  v18[1] = v13;
  v19 = v21;
  v18[2] = v14;
  v18[3] = v19;
  v18[4] = v16;
  return result;
}

unint64_t sub_21DD8B4D8()
{
  result = qword_281221B30;
  if (!qword_281221B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B30);
  }

  return result;
}

unint64_t sub_21DD8B560()
{
  result = qword_27CE8F0C8;
  if (!qword_27CE8F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0C8);
  }

  return result;
}

unint64_t sub_21DD8B5B8()
{
  result = qword_27CE8F0D0;
  if (!qword_27CE8F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0D0);
  }

  return result;
}

unint64_t sub_21DD8B610()
{
  result = qword_281221B20;
  if (!qword_281221B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B20);
  }

  return result;
}

unint64_t sub_21DD8B668()
{
  result = qword_281221B28;
  if (!qword_281221B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B28);
  }

  return result;
}

unint64_t sub_21DD8B6C0()
{
  result = qword_281221B58;
  if (!qword_281221B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B58);
  }

  return result;
}

unint64_t sub_21DD8B718()
{
  result = qword_281221B60;
  if (!qword_281221B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B60);
  }

  return result;
}

unint64_t sub_21DD8B76C()
{
  result = qword_281221B50;
  if (!qword_281221B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeedTracer.Response.Radar.Problem.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SpeedTracer.Response.Radar.Problem.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21DD8B8AC()
{
  result = qword_27CE8F0E0;
  if (!qword_27CE8F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0E0);
  }

  return result;
}

unint64_t sub_21DD8B904()
{
  result = qword_281221B40;
  if (!qword_281221B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B40);
  }

  return result;
}

unint64_t sub_21DD8B95C()
{
  result = qword_281221B48;
  if (!qword_281221B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B48);
  }

  return result;
}

uint64_t sub_21DD8B9F8()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

uint64_t sub_21DD8BA6C()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

unint64_t sub_21DD8BAB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21DD8BAF0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21DD8BAF0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21DD8BB04()
{
  result = qword_27CE8F0E8;
  if (!qword_27CE8F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0E8);
  }

  return result;
}