uint64_t sub_2288E9D70@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v1 = sub_22892EFA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v113 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892E5A8();
  v5 = *(v4 - 8);
  v116 = v4;
  v117 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v107 = &v106 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v106 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v110 = &v106 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v106 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v122 = &v106 - v23;
  v24 = sub_22892ED78();
  v119 = *(v24 - 8);
  v120 = v24;
  v25 = *(v119 + 64);
  MEMORY[0x28223BE20](v24);
  v118 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892ED38();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v123 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v106 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v131 = &v106 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v106 - v37;
  v39 = sub_22892EDE8();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = sub_22892ED68();
  v127 = *(v41 - 8);
  v128 = v41;
  v42 = *(v127 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  sub_22892ED48();
  sub_22892ED28();
  v132 = v44;
  v45 = sub_22892ED58();
  v46 = sub_22892F428();
  if (sub_22892F478())
  {
    v47 = v27;
    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v45, v46, v49, "SleepingSampleDaySummaryAggregator.aggregate", "", v48, 2u);
    v50 = v48;
    v27 = v47;
    MEMORY[0x22AAC47E0](v50, -1, -1);
  }

  v51 = v28[2];
  v51(v131, v38, v27);
  v52 = sub_22892EDA8();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v126 = sub_22892ED98();
  v56 = v28[1];
  v55 = v28 + 1;
  v130 = v56;
  v56(v38, v27);
  sub_22892ED28();
  v57 = sub_22892ED58();
  v58 = sub_22892F428();
  if (sub_22892F478())
  {
    v59 = swift_slowAlloc();
    v124 = v55;
    v60 = v27;
    v61 = v59;
    *v59 = 0;
    v62 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v57, v58, v62, "SleepingSampleDaySummaryAggregator.sleepDaySummaryProvider.sleepDaySummary", "", v61, 2u);
    v63 = v61;
    v27 = v60;
    v55 = v124;
    MEMORY[0x22AAC47E0](v63, -1, -1);
  }

  v51(v131, v34, v27);
  v64 = *(v52 + 48);
  v65 = *(v52 + 52);
  swift_allocObject();
  v66 = sub_22892ED98();
  v130(v34, v27);
  v67 = v129;
  v68 = v55;
  v69 = v27;
  v70 = v129[6];
  v71 = v129[7];
  __swift_project_boxed_opaque_existential_1(v129 + 3, v70);
  v72 = v125;
  v73 = (*(v71 + 8))(v70, v71);
  if (v72)
  {

    v135 = v72;
    v89 = v72;
    sub_2288CA734();
    if (swift_dynamicCast())
    {

      v90 = v133;
      v91 = v134;
    }

    else
    {

      v135 = v72;
      v92 = v72;
      if (!swift_dynamicCast())
      {

        v133 = v72;
        v95 = v72;
        sub_2288BC0FC(0, &qword_27D85B098, 0x277CCA9B8);
        if (swift_dynamicCast())
        {

          v96 = v135;
          sub_2288B7AEC();
          swift_allocError();
          *v97 = v96;
          *(v97 + 8) = -64;
          swift_willThrow();
        }

        v94 = v133;
        goto LABEL_20;
      }

      v90 = v133;
      v91 = v134 | 0x40;
    }

    sub_2288B7AEC();
    swift_allocError();
    *v93 = v90;
    *(v93 + 8) = v91;
    swift_willThrow();
    v94 = v135;
LABEL_20:

    goto LABEL_21;
  }

  v74 = v73;
  v124 = v68;
  v75 = v66;
  v76 = sub_22892ED58();
  v77 = v123;
  v131 = v75;
  sub_22892ED88();
  v78 = sub_22892F418();
  if (sub_22892F478())
  {

    v79 = v118;
    sub_22892EDB8();

    v81 = v119;
    v80 = v120;
    if ((*(v119 + 88))(v79, v120) == *MEMORY[0x277D85B00])
    {
      v82 = "[Error] Interval already ended";
    }

    else
    {
      (*(v81 + 8))(v79, v80);
      v82 = "";
    }

    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = v123;
    v85 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v76, v78, v85, "SleepingSampleDaySummaryAggregator.sleepDaySummaryProvider.sleepDaySummary", v82, v83, 2u);
    v86 = v83;
    v77 = v84;
    MEMORY[0x22AAC47E0](v86, -1, -1);
  }

  v130(v77, v69);
  v87 = v67[2];
  sub_2288EED9C(v87, v74);
  v88 = v122;
  sub_2288C9A18(v122);
  sub_2288EF3A8(v87, v74);
  sub_2288C9A18(v121);
  v100 = sub_2288EF3B8(v87, v74);
  v101 = v115;
  v130 = v100;
  sub_2288C9A18(v115);
  sub_2289181B4(v114);
  [v74 morningIndex];
  sub_22892EED8();
  v102 = *(v117 + 16);
  v103 = v88;
  v104 = v116;
  v102(v110, v103, v116);
  v102(v111, v121, v104);
  v102(v112, v101, v104);
  v102(v107, v129 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature, v104);
  v102(v108, v114, v104);
  sub_22892EA58();

  v105 = *(v117 + 8);
  v105(v114, v104);
  v105(v115, v104);
  v105(v121, v104);
  v105(v122, v104);
LABEL_21:
  v98 = v132;
  sub_2288EB374();

  return (*(v127 + 8))(v98, v128);
}

uint64_t sub_2288EA99C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2288E88F8();

  *a1 = v4;
  return result;
}

size_t sub_2288EA9DC()
{
  v1 = *v0;
  v2 = sub_2288DA500();

  return v2;
}

uint64_t sub_2288EAA38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_morningIndex;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_162AF38C750857D76C80011061F645FA34SleepingSampleDaySummaryAggregator_wristTemperature;
  v4 = sub_22892E5A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2288EAB4C()
{
  result = sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22892E5A8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2288EAC3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 9))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2288EAC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_2288EAD64(uint64_t a1)
{
  result = sub_2288BB548(&qword_2813DF0F8, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
  *(a1 + 8) = result;
  return result;
}

void sub_2288EADC8()
{
  if (!qword_2813DEAB8)
  {
    v0 = MEMORY[0x277D844A8];
    sub_2288EAE7C(255, &qword_2813DEA20, MEMORY[0x277D844A8]);
    sub_2288EAF14(&qword_2813DEA28, &qword_2813DEA20, v0);
    v1 = sub_22892F678();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAB8);
    }
  }
}

void sub_2288EAE7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2288EAFE8(255, &qword_2813DE910, MEMORY[0x277D100B8], sub_2288B7AEC);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288EAF14(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2288EAE7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2288EAF58()
{
  if (!qword_2813DE930)
  {
    sub_2288EAFE8(255, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
    v0 = sub_22892F498();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE930);
    }
  }
}

void sub_2288EAFE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_22892F8D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2288EB068(uint64_t a1, uint64_t a2)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288EB104(uint64_t a1, uint64_t a2)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_2288EB1A0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      if (a4 > 0x3Fu)
      {
        return 0;
      }

      if (a2)
      {
        if (a2 != 1)
        {
          return a4 == 2 && !a3;
        }

        if (a4 != 1)
        {
          return 0;
        }
      }

      else if (a4)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if ((a4 & 0xC0) != 0x40)
    {
      return 0;
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a2 >> 6 != 2)
  {
    if (a4 > 0xBFu)
    {
      sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
      return sub_22892F468() & 1;
    }

    return 0;
  }

  if ((a4 & 0xC0) == 0x80)
  {
    if ((a2 & 1) == 0)
    {
LABEL_15:
      if (a4)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_11:
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    sub_2288BC0FC(0, &qword_2813DEB30, 0x277D82BB8);
    if (sub_22892F468())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2288EB2E0(uint64_t a1)
{
  sub_2288EAFE8(0, &qword_2813DE938, MEMORY[0x277D0FF90], sub_2288D7E74);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288EB374()
{
  v0 = sub_22892ED78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892ED38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892ED58();
  sub_22892ED88();
  v11 = sub_22892F418();
  if (sub_22892F478())
  {

    sub_22892EDB8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v10, v11, v14, "SleepingSampleDaySummaryAggregator.aggregate", v12, v13, 2u);
    MEMORY[0x22AAC47E0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2288EB638()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2288EB6FC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2288EB75C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2288EB82C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v9 = sub_22892EDD8();
  v10 = sub_22892F398();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v14 = sub_22892F948();
    v16 = sub_2288B748C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2288B2000, v9, v10, "[%{public}s] returning extension for healthd", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAC47E0](v13, -1, -1);
    v17 = v12;
    a1 = v19;
    MEMORY[0x22AAC47E0](v17, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return (*((*MEMORY[0x277D85000] & *v2) + 0x80))(a1);
}

uint64_t sub_2288EBA90(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  sub_22892EDC8();
  v13 = sub_22892EDD8();
  v14 = sub_22892F398();
  v15 = os_log_type_enabled(v13, v14);
  v45 = ObjectType;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v44 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v43 = v10;
    v19 = v2;
    v20 = a1;
    v21 = v18;
    v46 = v18;
    *v17 = 136446210;
    v22 = sub_22892F948();
    v24 = sub_2288B748C(v22, v23, &v46);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s] returning extension for profile", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v25 = v21;
    a1 = v20;
    v2 = v19;
    v10 = v43;
    MEMORY[0x22AAC47E0](v25, -1, -1);
    v26 = v17;
    v5 = v44;
    MEMORY[0x22AAC47E0](v26, -1, -1);
  }

  v27 = *(v6 + 8);
  v27(v12, v5);
  v28 = [a1 profileIdentifier];
  v29 = [v28 type];

  if (v29 == 1 && (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
  {
    v31 = v30;
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
    v33 = a1;
    v34 = v32(v31);

    return v34;
  }

  else
  {
    sub_22892EDC8();
    v36 = sub_22892EDD8();
    v37 = sub_22892F398();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v38 = 136446210;
      v40 = sub_22892F948();
      v42 = sub_2288B748C(v40, v41, &v46);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2288B2000, v36, v37, "[%{public}s] profile extension not supported for non-primary profile", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAC47E0](v39, -1, -1);
      MEMORY[0x22AAC47E0](v38, -1, -1);
    }

    v27(v10, v5);
    return 0;
  }
}

id sub_2288EBEB0(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ProductionProfileExtension());
  v3 = a1;
  v4 = sub_2288FF978(v3);

  return v4;
}

uint64_t static HealthBalanceDaemonPlugin.shouldLoad(for:)(void *a1)
{
  v1 = [a1 behavior];
  v2 = [v1 isRealityDevice];

  return v2 ^ 1;
}

id HealthBalanceDaemonPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthBalanceDaemonPlugin.init()()
{
  v1 = &v0[OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier];
  *v1 = sub_22892E3C8();
  v1[1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HealthBalanceDaemonPlugin();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HealthBalanceDaemonPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthBalanceDaemonPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthBalanceDaemonPlugin.taskServerClasses()()
{
  sub_2288EC34C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228931EA0;
  sub_2288EC484(0, &unk_2813DF438, &unk_2813DF0E0, &unk_2289315A4, type metadata accessor for SleepingSampleDaySummaryQueryServer);
  *(v0 + 32) = v1;
  sub_2288EC3F0();
  *(v0 + 40) = v2;
  *(v0 + 48) = type metadata accessor for TrainingLoadSummaryQueryServer();
  return v0;
}

char *sub_2288EC240(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288C02E8();
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

void sub_2288EC34C()
{
  if (!qword_2813DE958)
  {
    sub_2288EC3A4();
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE958);
    }
  }
}

unint64_t sub_2288EC3A4()
{
  result = qword_2813DE8C0;
  if (!qword_2813DE8C0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813DE8C0);
  }

  return result;
}

void sub_2288EC3F0()
{
  if (!qword_2813DF448[0])
  {
    sub_2288BABAC(255);
    sub_2288EC51C(qword_2813DF1B0, sub_2288BABAC);
    Server = type metadata accessor for SleepingSampleDaySummaryQueryServer();
    if (!v1)
    {
      atomic_store(Server, qword_2813DF448);
    }
  }
}

void sub_2288EC484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    v10 = sub_2288EC51C(a3, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2288EC51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of HealthBalanceDaemonPlugin.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2288EC70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2288EC754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2288EC7B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2288EC814(v7, v9) & 1;
}

uint64_t sub_2288EC814(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_22892F818();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return v10;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40))
  {
    v11 = a1;
    v12 = a1[4];
    v13 = a2;
    v14 = sub_22892F818();
    a2 = v13;
    v15 = v14;
    a1 = v11;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 48) ^ *(a2 + 48)))
  {
    return 0;
  }

  v17 = *(a1 + 49);
  v18 = *(a2 + 49);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v10 = 0;
  if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
  {
LABEL_27:
    if (a1[7] == *(a2 + 56))
    {
      v19 = *(a2 + 72);
      if (a1[9])
      {
        if ((*(a2 + 72) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (a1[8] != *(a2 + 64))
        {
          v19 = 1;
        }

        if (v19)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return v10;
}

uint64_t sub_2288EC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v7 = v6;
  v35 = a1;
  v42 = *MEMORY[0x277D85DE8];
  sub_2288CD8F0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *&v7[OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_dataSource];
  sub_2288ED204(a2, v15);
  v16 = sub_22892DDC8();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v18 = sub_22892DD58();
    (*(v17 + 8))(v15, v16);
  }

  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = a3;
  v19[4] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2288ED268;
  *(v20 + 24) = v19;
  v40 = sub_2288ED274;
  v41 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2288ECE24;
  v39 = &block_descriptor_4;
  v21 = _Block_copy(&aBlock);
  v22 = v7;

  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = a5;
  *(v23 + 24) = v24;
  v40 = sub_2288ED2B0;
  v41 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2288ECE5C;
  v39 = &block_descriptor_11;
  v25 = _Block_copy(&aBlock);

  aBlock = 0;
  v26 = [v34 collectionCalculator:v35 queryForInterval:v18 error:&aBlock sampleHandler:v21 mergeHandler:v25];
  _Block_release(v25);
  _Block_release(v21);

  v27 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v29 = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    goto LABEL_9;
  }

  if ((v26 & 1) == 0)
  {
    sub_22892DE38();

    swift_willThrow();
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2288ECD20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, double, double, double), double a6, double a7, double a8)
{
  if ([*(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_includedDateIntervals) hasOverlapWithStartTime:a7 endTime:a8])
  {
    return a5(a1, a2 & 1, a3, a6, a7, a8) & 1;
  }

  v17 = *(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_unitTest_excludedSampleHandler);
  if (v17)
  {
    v18 = *(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_unitTest_excludedSampleHandler + 8);

    v17(a1, a2 & 1, a3, a6, a7, a8);
    sub_2288C751C(v17);
  }

  return 1;
}

uint64_t sub_2288ED204(uint64_t a1, uint64_t a2)
{
  sub_2288CD8F0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288ED274()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2288ED2B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2288ED3C8(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 daemon];
  if (!v11 || (v12 = v11, v13 = [v11 behavior], v12, !v13))
  {
    v14 = [objc_opt_self() sharedBehavior];
    if (!v14)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v13 = v14;
  }

  v15 = [v13 features];

  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = [v15 sleepResultsNotificationsOnWatch];

  if (v16)
  {
    v17 = *(a6 + 8);
    type metadata accessor for SleepScoreNotificationWorker();
    sub_228926F08(a4);
    swift_unknownObjectRetain();
    sub_22892C4E4(a1, a2, a3);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_2288ED530(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  sub_2288ED69C(v13, sub_2288ED1F4, v11);
}

void sub_2288ED5F8(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2288ED7C4();
}

uint64_t sub_2288ED638(uint64_t a1)
{
  v2 = *(a1 + qword_27D85B948);

  return swift_unknownObjectRelease();
}

uint64_t sub_2288ED69C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v9 = *(*(v8 + 8) + 8);
  type metadata accessor for VitalsOutlierNotificationWorker();
  v10 = *(v3 + qword_27D85B948);
  sub_228926F08(v10);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v10;
  swift_unknownObjectRetain_n();
  v12 = a1;

  sub_228926F3C(v12, sub_2288ED7F4, v11);
}

uint64_t sub_2288ED804@<X0>(uint64_t a1@<X8>)
{
  sub_2288C3E44(0);
  sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44);
  sub_22892F2E8();
  sub_22892F318();
  if (v7[4] == v7[0])
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_22892F338();
    sub_2288C337C(v4, a1, sub_2288B4B3C);
    v3(v7, 0);
    v2 = 0;
  }

  sub_2288B4B3C(0);
  return (*(*(v5 - 8) + 56))(a1, v2, 1, v5);
}

uint64_t sub_2288ED94C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_2288EECB0(7);
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_2288ED9AC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_2288EECB0(28);
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_2288EDA0C()
{
  if (*(v0 + 40))
  {
    v1 = sub_2288ED94C();
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 > 3)
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v5 = v1 + 48;
        v4 = 0.0;
        v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v7 = *v5;
          v4 = v4 + *(v5 - 16) + *(v5 - 8) + *v5 + *(v5 + 8);
          v5 += 32;
          v6 -= 4;
        }

        while (v6);
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v4 = 0.0;
      }

      v8 = v2 - v3;
      v9 = (v1 + 8 * v3 + 32);
      do
      {
        v10 = *v9++;
        v4 = v4 + v10;
        --v8;
      }

      while (v8);
    }

    else
    {
      v4 = 0.0;
    }

LABEL_12:

    *(v0 + 32) = v4;
    *(v0 + 40) = 0;
    return v4;
  }

  return *(v0 + 32);
}

double sub_2288EDACC()
{
  if (*(v0 + 56))
  {
    v1 = sub_2288ED9AC();
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 > 3)
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v5 = v1 + 48;
        v4 = 0.0;
        v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v7 = *v5;
          v4 = v4 + *(v5 - 16) + *(v5 - 8) + *v5 + *(v5 + 8);
          v5 += 32;
          v6 -= 4;
        }

        while (v6);
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v4 = 0.0;
      }

      v8 = v2 - v3;
      v9 = (v1 + 8 * v3 + 32);
      do
      {
        v10 = *v9++;
        v4 = v4 + v10;
        --v8;
      }

      while (v8);
    }

    else
    {
      v4 = 0.0;
    }

LABEL_12:

    *(v0 + 48) = v4;
    *(v0 + 56) = 0;
    return v4;
  }

  return *(v0 + 48);
}

uint64_t sub_2288EDB8C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v115 = a3;
  v116 = a2;
  v121 = a1;
  sub_2288BB4E0();
  v112 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = &v105 - v9;
  sub_2288B4B3C(0);
  v109 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892EDE8();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22892EFA8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v114 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = &v105 - v22;
  sub_2288BF284(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v105 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v105 - v31;
  v33 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  swift_beginAccess();
  sub_2288C337C(v4 + v33, v32, sub_2288BF284);
  v118 = v18;
  v34 = *(v18 + 48);
  v35 = v34(v32, 1, v17);
  v36 = v32;
  v37 = v17;
  sub_2288C3680(v36, sub_2288BF284);
  if (v35 == 1)
  {
    v38 = v118;
    (*(v118 + 16))(v30, v116, v37);
    (*(v38 + 56))(v30, 0, 1, v37);
    swift_beginAccess();
    sub_2288EEC4C(v30, v4 + v33);
    swift_endAccess();
  }

  sub_2288C337C(v4 + v33, v27, sub_2288BF284);
  if (v34(v27, 1, v37) == 1)
  {
    return sub_2288C3680(v27, sub_2288BF284);
  }

  v40 = *(v118 + 32);
  v107 = v118 + 32;
  v106 = v40;
  v40(v117, v27, v37);
  v41 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit;
  v42 = *(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit);
  if (v42)
  {
    v43 = v42;
    v44 = v121;
    v45 = [v121 _unit];
    sub_2288BC0FC(0, &unk_2813DEB70, 0x277CCDAB0);
    v46 = sub_22892F468();

    if ((v46 & 1) == 0)
    {
      sub_22892EDC8();
      v65 = v43;
      v66 = v44;
      v67 = sub_22892EDD8();
      v68 = sub_22892F378();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = v37;
        v71 = swift_slowAlloc();
        *v69 = 138412546;
        v72 = [v66 _unit];
        *(v69 + 4) = v72;
        *(v69 + 12) = 2112;
        *(v69 + 14) = v65;
        *v71 = v72;
        v71[1] = v42;
        v73 = v65;
        _os_log_impl(&dword_2288B2000, v67, v68, "Received invalid different unit %@ when previously had %@", v69, 0x16u);
        sub_2288D6D64();
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v71, -1, -1);
        MEMORY[0x22AAC47E0](v69, -1, -1);

        (*(v119 + 8))(v16, v120);
        return (*(v118 + 8))(v117, v70);
      }

      else
      {

        (*(v119 + 8))(v16, v120);
        return (*(v118 + 8))(v117, v37);
      }
    }

    v108 = v37;
  }

  else
  {
    v108 = v37;
    v47 = [v121 _unit];
    v43 = *(v4 + v41);
    *(v4 + v41) = v47;
  }

  v48 = sub_22892EF88();
  result = sub_2288ED94C();
  v49 = result;
  v50 = *(result + 16);
  v120 = v48;
  if (!v50)
  {

    v60 = v121;
    if (v115)
    {
      return (*(v118 + 8))(v117, v108);
    }

LABEL_31:
    result = sub_2288ED9AC();
    v74 = result;
    v75 = *(result + 16);
    if (v75)
    {
      v76 = 0;
      v119 = result + 32;
      v77 = v48 ^ 0x7FFFFFFFFFFFFFFFLL;
      v78 = v48;
      while (v76 < *(v74 + 16))
      {
        if (v76 == v77)
        {
          goto LABEL_59;
        }

        v79 = *(v119 + 8 * v76);
        v80 = v4[9];
        v81 = *(v80 + 2);
        if (v81 < (v78 + 1))
        {
          do
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v4[9] = v80;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v80 = sub_2288D6184(0, v81 + 1, 1, v80);
              v4[9] = v80;
            }

            v84 = *(v80 + 2);
            v83 = *(v80 + 3);
            if (v84 >= v83 >> 1)
            {
              v80 = sub_2288D6184((v83 > 1), v84 + 1, 1, v80);
            }

            *(v80 + 2) = v84 + 1;
            *&v80[8 * v84 + 32] = 0;
            v4[9] = v80;
            v81 = *(v80 + 2);
          }

          while (v81 < v78 + 1);
        }

        v60 = v121;
        [v121 _value];
        v86 = v85;
        v87 = sub_2288EDACC();
        v88 = v4[9];
        result = swift_isUniquelyReferenced_nonNull_native();
        v4[9] = v88;
        if (result)
        {
          if (v120 < 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          result = sub_2288FC71C(v88);
          v88 = result;
          if (v120 < 0)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        if (v78 >= *(v88 + 16))
        {
          goto LABEL_60;
        }

        ++v76;
        *(v88 + 8 * v78 + 32) = v79 * v86 / v87 + *(v88 + 8 * v78 + 32);
        v4[9] = v88;
        ++v78;
        if (v76 == v75)
        {
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {
LABEL_48:

      [v60 _value];
      v89 = v108;
      v90 = v113;
      v91 = v114;
      v92 = v116;
      if (v93 <= 0.0)
      {
        return (*(v118 + 8))(v117, v108);
      }

      v94 = *(v4[3] + 16);
      sub_22892EF78();
      sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
      result = sub_22892F048();
      if (result)
      {
        v95 = v118;
        v96 = *(v118 + 16);
        v97 = v110;
        v96(v110, v92, v89);
        v98 = v112;
        v96((v97 + *(v112 + 48)), v91, v89);
        v99 = v111;
        sub_2288C337C(v97, v111, sub_2288BB4E0);
        v121 = *(v98 + 48);
        v100 = v90;
        v101 = v90;
        v102 = v106;
        v106(v100, v99, v89);
        v103 = *(v95 + 8);
        v103(v121 + v99, v89);
        sub_2288C344C(v97, v99, sub_2288BB4E0);
        v102(v101 + *(v109 + 36), v99 + *(v98 + 48), v89);
        v103(v99, v89);
        swift_beginAccess();
        sub_2288BA98C(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
        if ((sub_22892F088() & 1) == 0)
        {
          sub_2288C4040(0);
          v104 = sub_22892F918();
          sub_2288C3E44(0);
          sub_22892F8F8();
          v104(v122, 0);
        }

        swift_endAccess();
        sub_2288C3680(v101, sub_2288B4B3C);
        v103(v114, v89);
        return (v103)(v117, v89);
      }
    }

    __break(1u);
    return result;
  }

  v51 = 0;
  v119 = result + 32;
  v52 = v48 ^ 0x7FFFFFFFFFFFFFFFLL;
  v53 = v48;
  while (1)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v51 == v52)
    {
      goto LABEL_56;
    }

    v54 = *(v119 + 8 * v51);
    v55 = v4[8];
    v56 = *(v55 + 2);
    if (v56 < (v53 + 1))
    {
      do
      {
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v4[8] = v55;
        if ((v57 & 1) == 0)
        {
          v55 = sub_2288D6184(0, v56 + 1, 1, v55);
          v4[8] = v55;
        }

        v59 = *(v55 + 2);
        v58 = *(v55 + 3);
        if (v59 >= v58 >> 1)
        {
          v55 = sub_2288D6184((v58 > 1), v59 + 1, 1, v55);
        }

        *(v55 + 2) = v59 + 1;
        *&v55[8 * v59 + 32] = 0;
        v4[8] = v55;
        v56 = *(v55 + 2);
      }

      while (v56 < v53 + 1);
    }

    v60 = v121;
    [v121 _value];
    v62 = v61;
    v63 = sub_2288EDA0C();
    v64 = v4[8];
    result = swift_isUniquelyReferenced_nonNull_native();
    v4[8] = v64;
    if (result)
    {
      v48 = v120;
      if (v120 < 0)
      {
        break;
      }

      goto LABEL_21;
    }

    result = sub_2288FC71C(v64);
    v64 = result;
    v48 = v120;
    if (v120 < 0)
    {
      break;
    }

LABEL_21:
    if (v53 >= *(v64 + 16))
    {
      goto LABEL_57;
    }

    ++v51;
    *(v64 + 8 * v53 + 32) = v54 * v62 / v63 + *(v64 + 8 * v53 + 32);
    v4[8] = v64;
    ++v53;
    if (v51 == v50)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:

  if ((v115 & 1) == 0)
  {
    goto LABEL_31;
  }

  return (*(v118 + 8))(v117, v108);
}

uint64_t sub_2288EE824(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 56) = 1;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 48) = 0;
  *(v2 + 64) = v5;
  *(v2 + 72) = v5;
  *(v2 + 80) = v5;
  v6 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  v7 = sub_22892EFA8();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  sub_22892F928();
  *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit) = 0;
  v8 = v2 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_activityType;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  return v2;
}

char *sub_2288EE940()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 8);

  v4 = *(v0 + 9);

  v5 = *(v0 + 10);

  sub_2288C3680(&v0[OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex], sub_2288BF284);
  v6 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_validDataDayRanges;
  sub_2288C4040(0);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);

  return v0;
}

uint64_t sub_2288EE9FC()
{
  sub_2288EE940();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecentBiasBaselineCalculator()
{
  result = qword_2813DF860;
  if (!qword_2813DF860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2288EEAA8()
{
  sub_2288BF284(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2288C4040(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2288EEBA8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  result = sub_2288EE824(a1, a2 & 1);
  *a3 = v9;
  return result;
}

uint64_t sub_2288EEC4C(uint64_t a1, uint64_t a2)
{
  sub_2288BF284(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288EECB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 1.0 / result * 1.57079633;
    v3 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v3 + 2);
    v5 = 0.0;
    do
    {
      v6 = cos(v5);
      v7 = *(v3 + 3);
      if (v4 >= v7 >> 1)
      {
        v8 = v6;
        v9 = sub_2288D6184((v7 > 1), v4 + 1, 1, v3);
        v6 = v8;
        v3 = v9;
      }

      *(v3 + 2) = v4 + 1;
      *&v3[8 * v4 + 32] = v6;
      v5 = v2 + v5;
      ++v4;
      --v1;
    }

    while (v1);
    return v3;
  }

  return result;
}

uint64_t sub_2288EED9C(void *a1, void *a2)
{
  v72 = sub_22892E048();
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v72);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = sub_22892EFA8();
  v71 = *(v10 - 8);
  v11 = v71[8];
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  sub_2288EF930();
  v16 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCCB90]);
  [a2 morningIndex];
  sub_22892EED8();
  v17 = [a2 calendar];
  v70 = v9;
  sub_22892E018();

  v18 = sub_2288DADC0(a2, v16, a1);
  v68 = v16;
  v65 = v10;
  v66 = v15;
  v64 = v18;
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  v20 = _HKStatisticsOptionPercentile();
  v21 = [objc_opt_self() calculatorForQuantityType:v16 intervalCollection:0 options:v20 | 0x20 mergeStrategy:0 computationMethod:7];
  if (!v21)
  {

LABEL_5:
    v46 = v71[2];
    v31 = v67;
    v46(v67, v15, v10);
    v33 = v4;
    v47 = *(v4 + 16);
    v35 = v69;
    v48 = v72;
    v47(v69, v70, v72);
    v49 = type metadata accessor for SleepingSampleAggregator();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v40 = swift_allocObject();
    v46((v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v31, v10);
    v44 = v68;
    v52 = v48;
    v45 = v64;
    v47((v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v35, v52);
    v53 = v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v53 = 0x3FB999999999999ALL;
    *(v53 + 16) = 16;
    *(v53 + 8) = 0;
    *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
    goto LABEL_6;
  }

  v22 = v21;
  v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v24 = v22;
  v25 = [v23 initWithDouble_];
  v26 = [objc_allocWithZone(MEMORY[0x277D108C0]) initWithPercentile_];
  v63 = v22;
  v27 = a1;
  v28 = v4;
  v29 = v26;

  v62 = v24;
  [v24 setStatisticsConfiguration_];

  v60 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v27 quantityType:v16];
  v61 = v19;
  v30 = v71[2];
  v31 = v67;
  v30(v67, v15, v10);
  v32 = v10;
  v33 = v28;
  v34 = *(v28 + 16);
  v35 = v69;
  v36 = v72;
  v34(v69, v70, v72);
  v37 = type metadata accessor for SleepingSampleAggregator();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v30((v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v31, v32);
  v34((v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v35, v36);
  v41 = v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
  *v41 = 0x3FB999999999999ALL;
  *(v41 + 8) = 0;
  *(v41 + 16) = 16;
  v42 = v64;
  *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v63;
  *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v42;
  v43 = v60;
  *(v40 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v60;
  v44 = v61;
  v45 = v62;
  [v45 setSourceOrderProvider_];
  [v45 setDataSource_];

LABEL_6:
  v54 = *(v33 + 8);
  v55 = v72;
  v54(v35, v72);
  v56 = v71[1];
  v57 = v65;
  v56(v31, v65);
  v54(v70, v55);
  v56(v66, v57);
  return v40;
}

uint64_t sub_2288EF3C8(void *a1, void *a2, id *a3, uint64_t a4)
{
  v61 = a4;
  v63 = sub_22892E048();
  v7 = *(v63 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v63);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = sub_22892EFA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v64 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  sub_2288EF930();
  v20 = MEMORY[0x22AAC3A10](*a3);
  v21 = v19;
  v22 = v20;
  [a2 morningIndex];
  sub_22892EED8();
  v23 = [a2 calendar];
  v24 = v12;
  sub_22892E018();

  v25 = sub_2288C96D0(a2, v22, a1, 0);
  v59 = v21;
  v60 = v25;
  v57 = v22;
  v58 = v12;
  if (v25 && (v26 = [objc_opt_self() calculatorForQuantityType:v22 intervalCollection:0 options:34 mergeStrategy:0 computationMethod:1]) != 0)
  {
    v56 = v26;
    v55 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:a1 quantityType:v22];
    v27 = v13;
    v28 = v14;
    v29 = *(v14 + 16);
    v30 = v64;
    v29(v64, v21, v13);
    v31 = v7[2];
    v32 = v62;
    v31(v62, v24, v63);
    v33 = type metadata accessor for SleepingSampleAggregator();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v29((v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v30, v13);
    v37 = v63;
    v31((v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v32, v63);
    v38 = v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v38 = 0;
    *(v38 + 8) = 1;
    v39 = v60;
    *(v38 + 16) = v61;
    v41 = v55;
    v40 = v56;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v56;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v39;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v41;
    v42 = v40;
    swift_unknownObjectRetain();
    [v42 setSourceOrderProvider_];
    [v42 setDataSource_];

    v43 = v37;
  }

  else
  {
    v28 = v14;
    v44 = *(v14 + 16);
    v45 = v64;
    v44(v64, v21, v13);
    v56 = v13;
    v46 = v7[2];
    v32 = v62;
    v43 = v63;
    v46(v62, v12, v63);
    v47 = type metadata accessor for SleepingSampleAggregator();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v36 = swift_allocObject();
    v50 = v45;
    v27 = v56;
    v44((v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v50, v56);
    v46((v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v32, v43);
    v51 = v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v51 = 0;
    *(v51 + 8) = 1;
    *(v51 + 16) = v61;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v36 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
  }

  swift_unknownObjectRelease();
  v52 = v7[1];
  v52(v32, v43);
  v53 = *(v28 + 8);
  v53(v64, v27);
  v52(v58, v43);
  v53(v59, v27);
  return v36;
}

unint64_t sub_2288EF930()
{
  result = qword_2813DEC40;
  if (!qword_2813DEC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC40);
  }

  return result;
}

void sub_2288EFA7C(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, void (**a5)(char *, uint64_t)@<X4>, SEL *a6@<X5>, id *a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  v129 = a8;
  v150 = a7;
  v141 = a5;
  v148 = a4;
  v116 = a3;
  v124 = a2;
  v119 = a1;
  v16 = MEMORY[0x277D83D88];
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v109 - v19;
  sub_2288D6B24();
  v147 = v20;
  v118 = *(v20 - 8);
  v21 = *(v118 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v110 = &v109 - v24;
  v122 = sub_22892EA78();
  v144 = *(v122 - 8);
  v25 = *(v144 + 64);
  MEMORY[0x28223BE20](v122);
  v128 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], v16);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v149 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v109 - v31;
  sub_2288F13D8(0, &qword_2813DFE80, MEMORY[0x277D0FF90], v16);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v145 = &v109 - v35;
  v143 = sub_22892EFA8();
  v140 = *(v143 - 8);
  v36 = *(v140 + 64);
  v37 = MEMORY[0x28223BE20](v143);
  v134 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v142 = &v109 - v40;
  MEMORY[0x28223BE20](v39);
  v146 = &v109 - v41;
  v42 = sub_22892E5A8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v151 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v127 = &v109 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v109 - v49;
  v51 = objc_opt_self();
  v52 = [v51 *a6];
  v53 = objc_opt_self();
  v139 = [v53 quantityWithUnit:v52 doubleValue:a10];

  v54 = [v51 *a6];
  v55 = [v53 quantityWithUnit:v54 doubleValue:a11];

  sub_2288EF930();
  v56 = MEMORY[0x22AAC3A10](*v150);
  v57 = [v56 canonicalUnit];

  if (!v57)
  {
    goto LABEL_27;
  }

  v58 = swift_unknownObjectRetain();
  v129(v58);
  v60 = *(v43 + 16);
  v59 = v43 + 16;
  v60(a9, v50, v42);
  sub_2288F1298();
  v62 = v139;
  *(a9 + v61[9]) = v139;
  *(a9 + v61[10]) = v55;
  *(a9 + v61[11]) = a12;
  *(a9 + v61[12]) = 0;
  v113 = v61;
  v63 = v61[13];
  v115 = a9;
  *(a9 + v63) = v57;
  v112 = v62;
  v111 = v55;
  v121 = v57;
  v114 = v50;
  sub_22892E558();
  v130 = 0;
  v64 = (v148 >> 1);
  v65 = v144;
  v123 = v144 + 16;
  v138 = (v144 + 48);
  v139 = (v144 + 56);
  v126 = (v144 + 32);
  v148 = (v59 + 16);
  v125 = (v144 + 8);
  v136 = (v59 + 32);
  v137 = (v59 + 40);
  v140 += 8;
  v132 = (v118 + 56);
  v141 = (v59 - 8);
  v131 = (v118 + 48);
  v120 = MEMORY[0x277D84F90];
  v66 = v116;
  v67 = v116;
  v68 = v122;
  v69 = v145;
  v133 = v64;
  while (1)
  {
    if (v67 == v64)
    {
      v70 = 1;
      v150 = v64;
      goto LABEL_8;
    }

    if (v67 < v66 || v67 >= v64)
    {
      break;
    }

    (*(v65 + 16))(v32, v124 + *(v65 + 72) * v67, v68);
    v70 = 0;
    v150 = (v67 + 1);
LABEL_8:
    v71 = 1;
    (*v139)(v32, v70, 1, v68);
    v72 = v149;
    sub_2288F14C4(v32, v149);
    if ((*v138)(v72, 1, v68) != 1)
    {
      v73 = v128;
      v74 = (*v126)(v128, v149, v68);
      v75 = v127;
      v129(v74);
      (*v148)(v69, v75, v42);
      (*v125)(v73, v68);
      v71 = 0;
    }

    (*v137)(v69, v71, 1, v42);
    if ((*v136)(v69, 1, v42) == 1)
    {
      swift_unknownObjectRelease();
      v102 = *v140;
      v103 = v143;
      (*v140)(v146, v143);
      v104 = v142;
      v105 = v114;
      sub_22892E558();
      v106 = v113;
      v107 = v115;
      v108 = sub_2288F1850((v115 + v113[15]), v104, v120);

      v102(v104, v103);
      (*v141)(v105, v42);
      *(v107 + v106[14]) = v108;
      return;
    }

    v76 = v32;
    v77 = v66;
    v78 = v69;
    v79 = v42;
    (*v148)(v151, v78, v42);
    v80 = v142;
    sub_22892E558();
    sub_22892EAB8();
    v81 = v134;
    sub_22892EF28();
    sub_2288BA9D4(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v82 = v143;
    v83 = sub_22892F038();
    v84 = *v140;
    (*v140)(v81, v82);
    v84(v80, v82);
    if ((v83 & 1) != 0 && v130 < sub_22892EAC8())
    {
      v85 = v151;
      v86 = sub_22892E598();
      if (v86)
      {
        v87 = v86;
        [v86 doubleValueForUnit_];
        v89 = v88;

        ++v130;
        v90 = *(v147 + 48);
        v91 = v135;
        sub_22892E558();
        v92 = v91;
        v68 = v122;
        v93 = 0;
        *&v91[v90] = v89;
      }

      else
      {
        v93 = 1;
        v92 = v135;
      }
    }

    else
    {
      v93 = 1;
      v92 = v135;
      v85 = v151;
    }

    v94 = v147;
    (*v132)(v92, v93, 1, v147);
    v42 = v79;
    (*v141)(v85, v79);
    v95 = (*v131)(v92, 1, v94) == 1;
    v66 = v77;
    v32 = v76;
    if (v95)
    {
      sub_2288F1558(v92);
      v65 = v144;
      v69 = v145;
      v64 = v133;
      v67 = v150;
    }

    else
    {
      v96 = v110;
      sub_2288F15E4(v92, v110);
      sub_2288F15E4(v96, v117);
      v97 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v144;
      v69 = v145;
      v64 = v133;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v97 = sub_2288D628C(0, v97[2] + 1, 1, v97);
      }

      v100 = v97[2];
      v99 = v97[3];
      v68 = v122;
      if (v100 >= v99 >> 1)
      {
        v97 = sub_2288D628C(v99 > 1, v100 + 1, 1, v97);
      }

      v97[2] = v100 + 1;
      v101 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v120 = v97;
      sub_2288F15E4(v117, v97 + v101 + *(v118 + 72) * v100);
      v67 = v150;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_2288F06C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, uint64_t (**a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v129 = a5;
  v133 = a4;
  v117 = a3;
  v112 = a2;
  v107 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = &v97 - v10;
  sub_2288D6B24();
  v132 = v11;
  v106 = *(v11 - 8);
  v12 = *(v106 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v105 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v97 - v15;
  v137 = sub_22892EA78();
  v16 = *(v137 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v137);
  v116 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], v7);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v135 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v134 = &v97 - v23;
  v24 = v7;
  v25 = v16;
  sub_2288F13D8(0, &qword_2813DFE80, MEMORY[0x277D0FF90], v24);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v104 = &v97 - v28;
  v127 = sub_22892EFA8();
  v128 = *(v127 - 8);
  v29 = *(v128 + 64);
  v30 = MEMORY[0x28223BE20](v127 - 8);
  v122 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v130 = &v97 - v33;
  MEMORY[0x28223BE20](v32);
  v131 = &v97 - v34;
  v35 = sub_22892E5A8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v136 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v115 = &v97 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v97 - v42;
  v44 = objc_opt_self();
  v45 = [v44 hourUnit];
  v46 = objc_opt_self();
  v126 = [v46 quantityWithUnit:v45 doubleValue:1.0];

  v47 = [v44 hourUnit];
  v48 = v35;
  v49 = [v46 quantityWithUnit:v47 doubleValue:3.8];

  v50 = [v44 secondUnit];
  swift_unknownObjectRetain();
  sub_22892EA38();
  v51 = *(v36 + 16);
  v36 += 16;
  v51(a6, v43, v48);
  sub_2288F1298();
  v53 = v126;
  *(a6 + v52[9]) = v126;
  *(a6 + v52[10]) = v49;
  *(a6 + v52[11]) = 0;
  *(a6 + v52[12]) = 0;
  v101 = v52;
  v54 = v52[13];
  v103 = a6;
  *(a6 + v54) = v50;
  v100 = v53;
  v99 = v49;
  v109 = v50;
  v102 = v43;
  result = sub_22892E558();
  v118 = 0;
  v56 = v133 >> 1;
  v110 = v25 + 16;
  v125 = (v25 + 48);
  v126 = (v25 + 56);
  v114 = (v25 + 32);
  v133 = (v36 + 16);
  v111 = v25;
  v113 = (v25 + 8);
  v57 = v104;
  v123 = (v36 + 32);
  v124 = (v36 + 40);
  v128 += 8;
  v129 = (v36 - 8);
  v120 = (v106 + 48);
  v121 = (v106 + 56);
  v108 = MEMORY[0x277D84F90];
  v58 = v117;
  while (1)
  {
    if (v58 == v56)
    {
      v59 = 1;
      v58 = v56;
      goto LABEL_7;
    }

    if (v58 < v117 || v58 >= v56)
    {
      break;
    }

    (*(v111 + 16))(v134, v112 + *(v111 + 72) * v58, v137);
    v59 = 0;
    ++v58;
LABEL_7:
    v60 = 1;
    v61 = v134;
    v62 = v137;
    (*v126)(v134, v59, 1, v137);
    v63 = v135;
    sub_2288F14C4(v61, v135);
    if ((*v125)(v63, 1, v62) != 1)
    {
      v64 = v116;
      v65 = v137;
      (*v114)(v116, v135, v137);
      v66 = v115;
      sub_22892EA38();
      (*v133)(v57, v66, v48);
      (*v113)(v64, v65);
      v60 = 0;
    }

    (*v124)(v57, v60, 1, v48);
    if ((*v123)(v57, 1, v48) == 1)
    {
      swift_unknownObjectRelease();
      v89 = v127;
      v90 = *v128;
      (*v128)(v131, v127);
      v91 = v48;
      v92 = v130;
      v93 = v102;
      sub_22892E558();
      v94 = v101;
      v95 = v103;
      v96 = sub_2288F1850((v103 + v101[15]), v92, v108);

      v90(v92, v89);
      result = (*v129)(v93, v91);
      *(v95 + v94[14]) = v96;
      return result;
    }

    v67 = v57;
    v68 = v48;
    (*v133)(v136, v57, v48);
    v69 = v130;
    sub_22892E558();
    sub_22892EAB8();
    v70 = v122;
    sub_22892EF28();
    sub_2288BA9D4(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v71 = v127;
    v72 = sub_22892F038();
    v73 = *v128;
    (*v128)(v70, v71);
    v73(v69, v71);
    if ((v72 & 1) != 0 && v118 < sub_22892EAC8())
    {
      v74 = v136;
      v75 = sub_22892E598();
      if (v75)
      {
        v76 = v75;
        [v75 doubleValueForUnit_];
        v78 = v77;

        ++v118;
        v79 = *(v132 + 48);
        v80 = v119;
        sub_22892E558();
        v81 = 0;
        *(v80 + v79) = v78;
      }

      else
      {
        v81 = 1;
        v80 = v119;
      }
    }

    else
    {
      v81 = 1;
      v80 = v119;
      v74 = v136;
    }

    v82 = v132;
    (*v121)(v80, v81, 1, v132);
    v48 = v68;
    (*v129)(v74, v68);
    v83 = (*v120)(v80, 1, v82) == 1;
    v57 = v67;
    if (v83)
    {
      result = sub_2288F1558(v80);
    }

    else
    {
      v84 = v98;
      sub_2288F15E4(v80, v98);
      sub_2288F15E4(v84, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v108 = sub_2288D628C(0, v108[2] + 1, 1, v108);
      }

      v87 = v108[2];
      v86 = v108[3];
      if (v87 >= v86 >> 1)
      {
        v108 = sub_2288D628C(v86 > 1, v87 + 1, 1, v108);
      }

      v88 = v108;
      v108[2] = v87 + 1;
      result = sub_2288F15E4(v105, v88 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v87);
    }
  }

  __break(1u);
  return result;
}

void sub_2288F1298()
{
  if (!qword_2813DF6D8[0])
  {
    sub_2288F132C();
    sub_2288BA9D4(&qword_2813DEA88, sub_2288F132C);
    v0 = type metadata accessor for SleepingSampleBaselineCalculator();
    if (!v1)
    {
      atomic_store(v0, qword_2813DF6D8);
    }
  }
}

void sub_2288F132C()
{
  if (!qword_2813DEA80)
  {
    sub_2288F13D8(255, &qword_2813DEAF8, MEMORY[0x277D100B8], MEMORY[0x277D83F98]);
    sub_22892E5A8();
    sub_2288F143C();
    v0 = sub_22892F6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA80);
    }
  }
}

void sub_2288F13D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2288F143C()
{
  result = qword_2813DEB00;
  if (!qword_2813DEB00)
  {
    sub_2288F13D8(255, &qword_2813DEAF8, MEMORY[0x277D100B8], MEMORY[0x277D83F98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEB00);
  }

  return result;
}

uint64_t sub_2288F14C4(uint64_t a1, uint64_t a2)
{
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288F1558(uint64_t a1)
{
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288F15E4(uint64_t a1, uint64_t a2)
{
  sub_2288D6B24();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288F1650()
{
  sub_22892E5A8();
  if (v0 <= 0x3F)
  {
    sub_2288BC0FC(319, &unk_2813DEC98, 0x277CCD7E8);
    if (v1 <= 0x3F)
    {
      sub_2288BC0FC(319, &unk_2813DEB70, 0x277CCDAB0);
      if (v2 <= 0x3F)
      {
        sub_2288F17EC(319, &qword_2813DED18, sub_2288F17B8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22892EB18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2288F17EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288F1850(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v160 = a2;
  sub_2288BB4E0();
  v150 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = &v136 - v10;
  sub_2288B4B3C(0);
  v148 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v154 = &v136 - v16;
  sub_2288D6B24();
  v158 = *(v17 - 8);
  v18 = *(v158 + 8);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v140 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v164 = &v136 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v139 = &v136 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v136 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v136 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v136 - v31;
  v151 = sub_22892EFA8();
  v159 = *(v151 - 8);
  v33 = *(v159 + 64);
  v34 = MEMORY[0x28223BE20](v151);
  v138 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v142 = &v136 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v144 = &v136 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v137 = &v136 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v143 = &v136 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v153 = &v136 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v156 = &v136 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v155 = &v136 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v157 = &v136 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v136 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v136 - v55;
  v57 = sub_22892EAD8();
  v58 = *(a3 + 16);
  if (!v58)
  {
    *a1 = v57;
    v75 = MEMORY[0x277D100C8];
    goto LABEL_12;
  }

  v162 = v57;
  v145 = a1;
  v141 = v15;
  v147 = v9;
  v161 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v59 = a3 + v161;
  sub_2288F259C(v59, v32, sub_2288D6B24);
  v60 = v159 + 32;
  v61 = *(v159 + 32);
  v62 = v32;
  v63 = v151;
  v61(v54, v62, v151);
  v163 = v56;
  v64 = v54;
  v65 = v61;
  v61(v56, v64, v63);
  v165 = v58;
  v66 = *(v158 + 9);
  sub_2288F259C(v59 + v66 * (v58 - 1), v30, sub_2288D6B24);
  v158 = v65;
  v152 = v60;
  v65(v157, v30, v63);
  v67 = v153;
  sub_22892EED8();
  v68 = v156;
  sub_22892EEF8();
  v70 = (v159 + 8);
  v69 = *(v159 + 8);
  v69(v67, v63);
  v153 = sub_2288BFD2C();
  v71 = sub_22892F038();
  v72 = v63;
  v146 = v69;
  if (v71)
  {
    v73 = v155;
    v158(v155, v68, v63);
    v74 = v159;
  }

  else
  {
    v69(v68, v63);
    v74 = v159;
    v73 = v155;
    (*(v159 + 16))(v155, v160, v63);
  }

  v76 = v163;
  result = sub_22892F048();
  v78 = v147;
  if ((result & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v79 = *(v74 + 16);
  v156 = v70;
  v80 = v149;
  v79(v149, v76, v72);
  v81 = v150;
  v82 = v80 + *(v150 + 48);
  v159 = v74 + 16;
  v136 = v79;
  v79(v82, v73, v72);
  sub_2288F259C(v80, v78, sub_2288BB4E0);
  v83 = *(v81 + 48);
  v84 = v154;
  v158(v154, v78, v72);
  v85 = (v78 + v83);
  v86 = v146;
  v146(v85, v72);
  sub_2288F26D0(v80, v78, sub_2288BB4E0);
  v158((v84 + *(v148 + 36)), (v78 + *(v81 + 48)), v72);
  v87 = v86;
  v86(v78, v72);
  result = sub_22892F048();
  if (result)
  {
    result = sub_22892F028();
    v88 = result << 63 >> 63;
  }

  else
  {
    v88 = 0;
  }

  v89 = v157;
  a1 = v145;
  v90 = v165 + v88;
  v92 = v162;
  v91 = v163;
  if (v165 + v88 >= v162)
  {
    v99 = 0;
    v100 = 0;
    v98 = MEMORY[0x277D84F90];
    do
    {
      v101 = (v99 + 1);
      if (__OFADD__(v99, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_2288F259C(v59, v27, sub_2288D6B24);
      result = sub_22892EEE8();
      if ((result & 1) != 0 || v100 < v92)
      {
        if (__OFADD__(v100++, 1))
        {
          goto LABEL_32;
        }

        sub_2288F26D0(v27, v164, sub_2288D6B24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = v98;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2288D6734(0, *(v98 + 16) + 1, 1);
          v98 = v166;
        }

        v105 = *(v98 + 16);
        v104 = *(v98 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_2288D6734(v104 > 1, v105 + 1, 1);
          v98 = v166;
        }

        *(v98 + 16) = v105 + 1;
        result = sub_2288F26D0(v164, v98 + v161 + v105 * v66, sub_2288D6B24);
        v92 = v162;
        v91 = v163;
      }

      else
      {
        result = sub_2288F2604(v27, sub_2288D6B24);
      }

      ++v99;
      v59 += v66;
    }

    while (v101 != v165);
    v106 = *(v98 + 16);
    if (v106)
    {
      v107 = v98 + v161;
      v165 = sub_2288D6B24;
      v108 = v139;
      sub_2288F259C(v98 + v161, v139, sub_2288D6B24);
      v109 = v137;
      v110 = v151;
      v111 = v158;
      v158(v137, v108, v151);
      v112 = v143;
      v111(v143, v109, v110);
      v113 = v107 + (v106 - 1) * v66;
      v114 = v140;
      sub_2288F259C(v113, v140, v165);
      v115 = v138;
      v116 = v114;
      v117 = v112;
      v111(v138, v116, v110);
      v118 = v142;
      v111(v142, v115, v110);
      v120 = v154;
      v119 = v155;
    }

    else
    {
      v117 = v143;
      v110 = v151;
      v121 = v136;
      v136(v143, v91, v151);
      v118 = v142;
      v119 = v155;
      v121(v142, v155, v110);
      v120 = v154;
    }

    v122 = v144;
    sub_22892EF08();
    v123 = v146;
    v146(v118, v110);
    v124 = v117;
    v125 = sub_22892F048();
    sub_2288F2604(v120, sub_2288B4B3C);
    v123(v119, v110);
    v123(v157, v110);
    result = (v123)(v163, v110);
    if (v125)
    {
      v126 = v149;
      v127 = v158;
      v158(v149, v124, v110);
      v128 = v150;
      v127(v126 + *(v150 + 48), v122, v110);
      v129 = v147;
      sub_2288F259C(v126, v147, sub_2288BB4E0);
      v165 = *(v128 + 48);
      v127(v141, v129, v110);
      v123(v165 + v129, v110);
      sub_2288F26D0(v126, v129, sub_2288BB4E0);
      v130 = v141;
      v127(&v141[*(v148 + 36)], (v129 + *(v128 + 48)), v110);
      v123(v129, v110);
      sub_2288F2664();
      v132 = *(v131 + 48);
      v133 = v145;
      sub_2288F26D0(v130, v145, sub_2288B4B3C);
      *(v133 + v132) = v100;
      v134 = *MEMORY[0x277D100D0];
      v135 = sub_22892EB18();
      (*(*(v135 - 8) + 104))(v133, v134, v135);
      return v98;
    }

    goto LABEL_34;
  }

  v87(v155, v72);
  v87(v89, v72);
  v87(v91, v72);
  sub_2288F2738();
  v94 = *(v93 + 48);
  v95 = *(v93 + 64);
  sub_2288F26D0(v154, a1, sub_2288B4B3C);
  *(a1 + v94) = v90;
  *(a1 + v95) = v92;
  v75 = MEMORY[0x277D100C0];
LABEL_12:
  v96 = *v75;
  v97 = sub_22892EB18();
  (*(*(v97 - 8) + 104))(a1, v96, v97);
  return 0;
}

uint64_t sub_2288F259C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288F2604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2288F2664()
{
  if (!qword_2813DECC0)
  {
    sub_2288B4B3C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DECC0);
    }
  }
}

uint64_t sub_2288F26D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2288F2738()
{
  if (!qword_2813DECC8)
  {
    sub_2288B4B3C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2813DECC8);
    }
  }
}

void sub_2288F27A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2288F27FC();
  }
}

uint64_t sub_2288F27FC()
{
  v103[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  sub_2288B5C84(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v99 = &v93[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v100 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v93[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v93[-v12];
  MEMORY[0x28223BE20](v11);
  v102 = &v93[-v14];
  v15 = sub_22892EE28();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v93[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_22892EE38();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_22892EDC8();
  v23 = sub_22892EDD8();
  v24 = sub_22892F398();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v103[0] = v26;
    *v25 = 136446210;
    v27 = sub_22892F948();
    v29 = sub_2288B748C(v27, v28, v103);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2288B2000, v23, v24, "[%{public}s] evaluating widgets reload", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAC47E0](v26, -1, -1);
    MEMORY[0x22AAC47E0](v25, -1, -1);
  }

  v30 = *(v5 + 8);
  v30(v102, v4);
  v31 = [objc_opt_self() sharedBehavior];
  if (!v31)
  {
LABEL_27:
    __break(1u);
  }

  v32 = v31;
  v33 = [v31 isAppleWatch];

  if (v33)
  {
    goto LABEL_20;
  }

  v34 = *(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_cloudSyncManager);
  if (!v34)
  {
    goto LABEL_20;
  }

  v103[0] = 0;
  v35 = v34;
  v36 = [v35 canPerformCloudSyncWithError_];
  v37 = v103[0];
  if (!v36)
  {
    v44 = v103[0];
    v45 = sub_22892DE38();

    swift_willThrow();
    goto LABEL_20;
  }

  v103[0] = 0;
  v38 = v37;
  v39 = [v35 restoreCompletionDateWithError_];
  v40 = v103[0];
  if (v39)
  {
    v41 = v99;
    sub_22892DEC8();
    v42 = v40;

    v43 = sub_22892DEF8();
    (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
  }

  else
  {
    v46 = sub_22892DEF8();
    v41 = v99;
    (*(*(v46 - 8) + 56))(v99, 1, 1, v46);
    v47 = v40;
  }

  sub_2288F56EC(v41, sub_2288B5C84);
  if (!v40)
  {

    if (!v39)
    {
      goto LABEL_16;
    }

LABEL_20:
    v71 = v100;
    sub_22892EDC8();
    v72 = sub_22892EDD8();
    v73 = sub_22892F398();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v30;
      v76 = swift_slowAlloc();
      v103[0] = v76;
      *v74 = 136446210;
      v77 = sub_22892F948();
      v79 = v4;
      v80 = sub_2288B748C(v77, v78, v103);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_2288B2000, v72, v73, "[%{public}s] requesting widgets reload", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x22AAC47E0](v76, -1, -1);
      MEMORY[0x22AAC47E0](v74, -1, -1);

      v75(v71, v79);
    }

    else
    {

      v30(v71, v4);
    }

    v81 = v101;
    v82 = *(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 24);
    v83 = *(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 32);
    __swift_project_boxed_opaque_existential_1((v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader), v82);
    v84 = OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadReasons;
    swift_beginAccess();
    v85 = *(v81 + v84);
    v86 = *(v83 + 8);

    v86(v87, v82, v83);

    v88 = *(v81 + v84);
    *(v81 + v84) = MEMORY[0x277D84FA0];

    goto LABEL_24;
  }

  v102 = v5;
  sub_22892EDC8();
  v48 = v40;
  v49 = sub_22892EDD8();
  v50 = sub_22892F378();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v96 = v49;
    v52 = v51;
    v95 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v103[0] = v97;
    *v52 = 136446466;
    v53 = sub_22892F948();
    v94 = v50;
    v55 = sub_2288B748C(v53, v54, v103);
    v99 = v13;
    v56 = v30;
    v57 = v55;

    *(v52 + 4) = v57;
    v30 = v56;
    *(v52 + 12) = 2112;
    *(v52 + 14) = v48;
    v58 = v95;
    *v95 = v40;
    v48 = v48;
    v59 = v96;
    _os_log_impl(&dword_2288B2000, v96, v94, "[%{public}s] Error reading last restore completion date %@", v52, 0x16u);
    sub_2288F56EC(v58, sub_2288D6D64);
    MEMORY[0x22AAC47E0](v58, -1, -1);
    v60 = v97;
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x22AAC47E0](v60, -1, -1);
    MEMORY[0x22AAC47E0](v52, -1, -1);

    v61 = v99;
  }

  else
  {

    v61 = v13;
  }

  v30(v61, v4);

  if (v39)
  {
    goto LABEL_20;
  }

LABEL_16:
  v62 = v4;
  v63 = v98;
  sub_22892EDC8();
  v64 = sub_22892EDD8();
  v65 = sub_22892F398();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v103[0] = v67;
    *v66 = 136446722;
    v68 = sub_22892F948();
    v70 = sub_2288B748C(v68, v69, v103);

    *(v66 + 4) = v70;
    *(v66 + 12) = 1024;
    *(v66 + 14) = 1;
    *(v66 + 18) = 1024;
    *(v66 + 20) = 0;
    _os_log_impl(&dword_2288B2000, v64, v65, "[%{public}s] skipping widgets reload because canPerformCloudSync %{BOOL}d and isRestoreCompleted %{BOOL}d", v66, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AAC47E0](v67, -1, -1);
    MEMORY[0x22AAC47E0](v66, -1, -1);
  }

  v30(v63, v62);
  v91 = *(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 24);
  v92 = *(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 32);
  __swift_project_boxed_opaque_existential_1((v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader), v91);
  result = (*(v92 + 16))(v91, v92);
LABEL_24:
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2288F3204()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider];
  v3 = *&v0[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider + 8];
  swift_getObjectType();
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  v5 = v0;
  v4();
  swift_unknownObjectRelease();

  v7.receiver = v5;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_2288F3420(unsigned __int8 *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EE28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v16 = v15;
  LOBYTE(v15) = sub_22892EE38();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    sub_22892EDC8();
    v18 = sub_22892EDD8();
    v19 = sub_22892F398();
    if (os_log_type_enabled(v18, v19))
    {
      v31 = v4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136446466;
      v22 = sub_22892F948();
      v24 = sub_2288B748C(v22, v23, v32);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = "SleepingSampleTypesRemoved";
      v26 = 0xD000000000000018;
      if (v14 != 1)
      {
        v26 = 0xD00000000000001ALL;
        v25 = "tion";
      }

      if (v14)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0xD000000000000010;
      }

      if (v14)
      {
        v28 = v25;
      }

      else
      {
        v28 = "SleepingSampleTypesAdded";
      }

      v29 = sub_2288B748C(v27, v28 | 0x8000000000000000, v32);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_2288B2000, v18, v19, "[%{public}s] running reload operation with reason: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v21, -1, -1);
      MEMORY[0x22AAC47E0](v20, -1, -1);

      (*(v5 + 8))(v8, v31);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    swift_beginAccess();
    sub_2288F3E90(&v33, v14);
    swift_endAccess();
    result = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation);
    if (result)
    {
      return [result execute];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288F37AC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v10 = sub_22892EDD8();
  v11 = sub_22892F398();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    v15 = sub_22892F948();
    v17 = sub_2288B748C(v15, v16, aBlock);
    v30 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2288B2000, v10, v11, "[%{public}s] profileDidBecomeReady", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAC47E0](v14, -1, -1);
    v19 = v13;
    a1 = v31;
    MEMORY[0x22AAC47E0](v19, -1, -1);

    (*(v6 + 8))(v9, v30);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v20 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider);
  v21 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider + 8);
  v22 = swift_getObjectType();
  v23 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  (*(v21 + 8))(v2, &off_283BD4620, v23, v22, v21);
  v24 = [a1 database];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = ObjectType;
  aBlock[4] = sub_2288F55F8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288F3CC4;
  aBlock[3] = &block_descriptor_5;
  v27 = _Block_copy(aBlock);

  [v24 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v23 block:v27];
  _Block_release(v27);

  v28 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_didBecomeReady);
  if (v28)
  {
    v29 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_didBecomeReady + 8);
    v28();
  }
}

void sub_2288F3AE4()
{
  v0 = sub_22892EDE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v5 = sub_22892EDD8();
  v6 = sub_22892F398();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = sub_22892F948();
    v11 = sub_2288B748C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2288B2000, v5, v6, "[%{public}s] first unlock occurred", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAC47E0](v8, -1, -1);
    MEMORY[0x22AAC47E0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    HIBYTE(v14) = 0;
    sub_2288F3420(&v14 + 7);
  }
}

uint64_t sub_2288F3CC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_2288F3E0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22892F458();
  v5 = -1 << *(a2 + 32);
  result = sub_22892F568();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2288F3E90(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](a2);
  v7 = sub_22892F8C8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2288F48E8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2288F3FD0(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
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

    v17 = sub_22892F598();

    if (v17)
    {

      sub_2288BC0FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22892F588();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2288F4270(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2288F46CC(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_2288F3E0C(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_2288BC0FC(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22892F458();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22892F468();

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
      sub_2288F4A34(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2288F4270(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2288F5610(0, a3, a4, a5, a6);
    v10 = sub_22892F608();
    v24 = v10;
    sub_22892F578();
    if (sub_22892F5A8())
    {
      sub_2288BC0FC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2288F46CC(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22892F458();
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

      while (sub_22892F5A8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2288F4488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2288F5548();
  result = sub_22892F5F8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22892F8A8();
      MEMORY[0x22AAC3F20](v18);
      result = sub_22892F8C8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2288F46CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2288F5610(0, a2, a3, a4, a5);
  result = sub_22892F5F8();
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
      result = sub_22892F458();
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

uint64_t sub_2288F48E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2288F4488(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2288F4BDC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2288F4E64(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v4);
  result = sub_22892F8C8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22892F848();
  __break(1u);
  return result;
}

void sub_2288F4A34(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2288F46CC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2288F4D10(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2288F5078(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22892F458();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2288BC0FC(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22892F468();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22892F848();
  __break(1u);
}

void *sub_2288F4BDC()
{
  v1 = v0;
  sub_2288F5548();
  v2 = *v0;
  v3 = sub_22892F5E8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2288F4D10(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2288F5610(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22892F5E8();
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

uint64_t sub_2288F4E64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2288F5548();
  result = sub_22892F5F8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22892F8A8();
      MEMORY[0x22AAC3F20](v17);
      result = sub_22892F8C8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_2288F5078(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_2288F5610(0, a2, a3, a4, a5);
  result = sub_22892F5F8();
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
      result = sub_22892F458();
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

id sub_2288F5280(const char *a1, unsigned __int8 a2)
{
  v29 = a1;
  v4 = v2;
  swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892EE28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_22892EE38();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_22892EDC8();
    v18 = sub_22892EDD8();
    v19 = sub_22892F398();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v5;
      v22 = a2;
      v23 = v21;
      v30 = v21;
      *v20 = 136446210;
      v24 = sub_22892F948();
      v26 = sub_2288B748C(v24, v25, &v30);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_2288B2000, v18, v19, v29, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v27 = v23;
      a2 = v22;
      MEMORY[0x22AAC47E0](v27, -1, -1);
      MEMORY[0x22AAC47E0](v20, -1, -1);

      (*(v6 + 8))(v9, v28);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v31 = a2;
    return sub_2288F3420(&v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288F5548()
{
  if (!qword_2813DEAE0)
  {
    sub_2288F55A4();
    v0 = sub_22892F628();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEAE0);
    }
  }
}

unint64_t sub_2288F55A4()
{
  result = qword_2813DFDD8;
  if (!qword_2813DFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFDD8);
  }

  return result;
}

void sub_2288F55F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2288F3AE4();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2288F5610(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2288BC0FC(255, a3, a4);
    sub_2288F569C(a5, a3, a4);
    v9 = sub_22892F628();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2288F569C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2288BC0FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2288F56EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288F574C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_22892E778();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2288F5830@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v27 = sub_22892E778();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[10];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v6);
  v13 = &v26 - v12;
  v14 = v3[11];
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v19 = &v26 - v18;
  (*(v10 + 16))(v13, &v2[v3[12]], v9);
  sub_22892F1A8();
  v20 = *(*v2 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v8, &v2[v20], v27);
  v21 = &v2[*(*v2 + 112)];
  v22 = *v21;
  v23 = v21[1];
  v24 = *&v2[*(*v2 + 120)];

  swift_unknownObjectRetain();
  return sub_2288F6BD8(v19, v8, v22, v23, v24, v14, v28);
}

uint64_t sub_2288F5AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v37 = a1;
  v4 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator.InnerIteratorResult();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v31 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v18 = v17;
  v19 = *(v17 - 8);
  v32 = *(v19 + 56);
  v33 = v19 + 56;
  v32(v16, 2, 2, v17);
  v20 = v5[2];
  v20(v14, v16, v4);
  v21 = *(v19 + 48);
  v39 = v19 + 48;
  v40 = v18;
  v38 = v21;
  v22 = v21(v14, 2, v18);
  v36 = v5;
  v23 = v5[1];
  if (v22 == 2)
  {
    v24 = (v36 + 4);
    do
    {
      v23(v14, v4);
      sub_2288F6E80(v37, v11);
      v23(v16, v4);
      (*v24)(v16, v11, v4);
      v20(v14, v16, v4);
    }

    while (v38(v14, 2, v40) == 2);
  }

  v23(v14, v4);
  v25 = v34;
  (v36[4])(v34, v16, v4);
  v26 = v40;
  if (v38(v25, 2, v40))
  {
    v27 = 1;
    v28 = v35;
  }

  else
  {
    v29 = v25;
    v28 = v35;
    sub_2288C0D18(v29, v35, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v27 = 0;
  }

  return (v32)(v28, v27, 1, v26);
}

uint64_t sub_2288F5E18@<X0>(uint64_t a1@<X8>)
{
  v8 = v1;
  sub_2288D6B24();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v108 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v107 - v14;
  sub_2288B4AD8(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v107 - v20;
  v22 = sub_22892EB18();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22892E5A8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  (*(v30 + 16))(&v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_2288F1298();
  v32 = v31;
  v33 = v31[15];
  (*(v23 + 16))(v26, &v33[v8], v22);
  v34 = sub_22892E4D8();
  (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
  v110 = a1;
  result = sub_22892E928();
  v36 = v32[14];
  v37 = *(v8 + v36);
  if (v37)
  {
    v38 = *(v8 + v36);

    v40 = sub_2288F6820(v39, 0.05);
    if (v41)
    {
    }

    v42 = *&v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2288FC708(v37);
    }

    v43 = v37[2];
    v44 = v111;
    v107 = v37 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v115[0] = v107;
    v115[1] = v43;
    sub_2288FC730(v115);
    v45 = v37[2];
    v46 = v112;
    if ((v45 * 3) >> 64 == (3 * v45) >> 63)
    {
      v47 = (3 * v45) >> 2;
      if (v47 < v45)
      {
        a1 = *(v44 + 72);
        v48 = *(v112 + 48);
        v5 = *(v107 + v47 * a1 + v48);
        v4 = *(v107 + (v45 >> 2) * a1 + v48);
        v2 = v5 - v4;
        v6 = (v5 - v4) * 1.5;
        v49 = &off_278609000;
        if ((sub_22892EAA8() & 1) == 0)
        {
          goto LABEL_11;
        }

        v50 = sub_22892EAF8();
        v51 = sub_22892EAD8();
        v52 = __OFSUB__(v50, v51);
        v53 = v50 - v51;
        if (!v52)
        {
          v54 = sub_22892EAE8();
          if (!__OFSUB__(v55, v54))
          {
            v56 = v53 / (v55 - v54);
            [*(v8 + v32[10]) doubleValueForUnit_];
            v6 = v6 * v56 + (1.0 - v56) * v57;
LABEL_11:
            v3 = v42;
            v7 = v4 - v6;
            if (*(v8 + v32[12]) != 1)
            {
              goto LABEL_35;
            }

            if (v37[2])
            {
              sub_2288FDB34(v107, v15, sub_2288D6B24);
              v58 = *&v15[*(v46 + 48)];
              v113 = 0;
              v59 = sub_22892EFA8();
              (*(*(v59 - 8) + 8))(v15, v59);
            }

            else
            {
              v113 = 1;
              v58 = 0;
            }

            v60 = sub_22892E598();
            v61 = v60;
            if (v60)
            {
              [v60 doubleValueForUnit_];
              v4 = v62;

              if (v113)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v4 = 0.0;
              if (v113)
              {
LABEL_17:
                v15 = MEMORY[0x277D84F90];
                if (v61)
                {
                  goto LABEL_18;
                }

                goto LABEL_26;
              }
            }

            v15 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
            v67 = *(v15 + 2);
            v66 = *(v15 + 3);
            if (v67 >= v66 >> 1)
            {
              v15 = sub_2288D6184((v66 > 1), v67 + 1, 1, v15);
            }

            *(v15 + 2) = v67 + 1;
            *&v15[8 * v67 + 32] = v58;
            v49 = &off_278609000;
            if (v61)
            {
LABEL_18:
              v33 = &off_278609000;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_19:
                v64 = *(v15 + 2);
                v63 = *(v15 + 3);
                v65 = v64 + 1;
                if (v64 >= v63 >> 1)
                {
                  v15 = sub_2288D6184((v63 > 1), v64 + 1, 1, v15);
                }

                *(v15 + 2) = v65;
                *&v15[8 * v64 + 32] = v4;
                v49 = v33;
LABEL_27:
                v68 = *(v15 + 4);
                v69 = v65 - 1;
                if (v65 != 1)
                {
                  v70 = (v15 + 40);
                  do
                  {
                    v71 = *v70++;
                    v72 = v71;
                    if (v71 < v68)
                    {
                      v68 = v72;
                    }

                    --v69;
                  }

                  while (v69);
                }

                if (v7 > v68)
                {
LABEL_36:
                  v73 = v5 + v6;
                  if (*(v8 + v32[11]) != 1)
                  {
                    goto LABEL_61;
                  }

                  v74 = v37[2];
                  if (v74)
                  {
                    v75 = v108;
                    sub_2288FDB34(v107 + (v74 - 1) * a1, v108, sub_2288D6B24);
                    v76 = *(v75 + *(v46 + 48));
                    v114 = 0;
                    v77 = sub_22892EFA8();
                    (*(*(v77 - 8) + 8))(v75, v77);
                  }

                  else
                  {
                    v114 = 1;
                    v76 = 0;
                  }

                  v78 = sub_22892E598();
                  v79 = v78;
                  if (v78)
                  {
                    [v78 *(v49 + 418)];
                    v81 = v80;

                    if (v114)
                    {
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    v81 = 0;
                    if (v114)
                    {
LABEL_42:
                      v82 = MEMORY[0x277D84F90];
                      if (v79)
                      {
LABEL_43:
                        v83 = v49;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v82 = sub_2288D6184(0, *(v82 + 2) + 1, 1, v82);
                        }

                        v85 = *(v82 + 2);
                        v84 = *(v82 + 3);
                        v86 = v85 + 1;
                        if (v85 >= v84 >> 1)
                        {
                          v82 = sub_2288D6184((v84 > 1), v85 + 1, 1, v82);
                        }

                        *(v82 + 2) = v86;
                        *&v82[8 * v85 + 32] = v81;
                        v49 = v83;
LABEL_53:
                        v89 = *(v82 + 4);
                        v90 = v86 - 1;
                        if (v86 != 1)
                        {
                          v91 = (v82 + 40);
                          do
                          {
                            v92 = *v91++;
                            v93 = v92;
                            if (v89 < v92)
                            {
                              v89 = v93;
                            }

                            --v90;
                          }

                          while (v90);
                        }

                        if (v73 <= v89)
                        {
                          goto LABEL_62;
                        }

                        goto LABEL_61;
                      }

                      goto LABEL_52;
                    }
                  }

                  v82 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
                  v88 = *(v82 + 2);
                  v87 = *(v82 + 3);
                  if (v88 >= v87 >> 1)
                  {
                    v82 = sub_2288D6184((v87 > 1), v88 + 1, 1, v82);
                  }

                  *(v82 + 2) = v88 + 1;
                  *&v82[8 * v88 + 32] = v76;
                  if (v79)
                  {
                    goto LABEL_43;
                  }

LABEL_52:
                  v86 = *(v82 + 2);
                  if (v86)
                  {
                    goto LABEL_53;
                  }

LABEL_61:
                  v89 = v73;
LABEL_62:
                  v94 = *(v8 + v32[13]);
                  [*(v8 + v32[9]) *(v49 + 418)];
                  v96 = v3 - v95;
                  v97 = v95 + v3;
                  v98 = objc_opt_self();
                  v99 = [v98 quantityWithUnit:v94 doubleValue:v3];
                  if (v96 >= v68)
                  {
                    v100 = v68;
                  }

                  else
                  {
                    v100 = v96;
                  }

                  v101 = [v98 quantityWithUnit:v94 doubleValue:v100];
                  if (v89 > v97)
                  {
                    v102 = v89;
                  }

                  else
                  {
                    v102 = v97;
                  }

                  v103 = [v98 quantityWithUnit:v94 doubleValue:v102];
                  [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v101 maximum:v103 isMinimumInclusive:1 isMaximumInclusive:1];

                  v104 = [v98 quantityWithUnit:v94 doubleValue:v2];
                  v105 = [v98 quantityWithUnit:v94 doubleValue:v68];
                  v106 = [v98 quantityWithUnit:v94 doubleValue:v89];
                  [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v105 maximum:v106 isMinimumInclusive:1 isMaximumInclusive:1];

                  sub_22892E4C8();
                  sub_22892E918();
                }

LABEL_35:
                v68 = v7;
                goto LABEL_36;
              }

LABEL_75:
              v15 = sub_2288D6184(0, *(v15 + 2) + 1, 1, v15);
              goto LABEL_19;
            }

LABEL_26:
            v65 = *(v15 + 2);
            if (!v65)
            {

              goto LABEL_35;
            }

            goto LABEL_27;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_73;
  }

  return result;
}

uint64_t sub_2288F6820(uint64_t a1, double a2)
{
  sub_2288D6B24();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288FDB9C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288FDC08(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = COERCE_DOUBLE(MEMORY[0x28223BE20](v16));
  v21 = (&v38 - v20);
  v22 = 0;
  v23 = 1.0 - a2;
  v24 = *(a1 + 16);
  v44 = (v10 + 56);
  v45 = v24;
  v42 = a1;
  v43 = (v10 + 48);
  v25 = 0.0;
  v26 = 0.0;
  if (!v24)
  {
    goto LABEL_7;
  }

LABEL_2:
  if (--v24 >= v45)
  {
    __break(1u);
    goto LABEL_12;
  }

  v27 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24;
  v28 = *(v9 + 48);
  *v13 = v22;
  *&result = COERCE_DOUBLE(sub_2288FDB34(v27, v13 + v28, sub_2288D6B24));
  if (__OFADD__(v22++, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_2288FDC3C(v13, v18, sub_2288FDB9C);
  for (i = 0; ; i = 1)
  {
    (*v44)(v18, i, 1, v9);
    sub_2288FDC3C(v18, v21, sub_2288FDC08);
    if ((*v43)(v21, 1, v9) == 1)
    {
      break;
    }

    v31 = v21 + *(v9 + 48);
    v32 = *&v31[*(v40 + 48)];
    v33 = *v21;
    v34 = sub_22892EFA8();
    v35 = *(v34 - 8);
    v36 = v39;
    (*(v35 + 32))(v39, v31, v34);
    v37 = pow(v23, v33);
    v25 = v25 + v32 * v37;
    v26 = v26 + v37;
    *&result = COERCE_DOUBLE((*(v35 + 8))(v36, v34));
    if (v24)
    {
      goto LABEL_2;
    }

LABEL_7:
    ;
  }

  if (v26 > 0.0)
  {
    *&result = v25 / v26;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_2288F6BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v10 = sub_22892EDE8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22892E778();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator();
  *(a7 + *(v17 + 40)) = 0;
  v18 = *(v17 + 36);
  v19 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(a7 + v18, a1, AssociatedTypeWitness);
  v22 = v33;
  (*(v13 + 16))(v16, v33, v12);
  v23 = type metadata accessor for SleepingSampleBaselineAccumulator();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  *(v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
  *(v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v27;
  *(v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v27;
  sub_22892EDC8();
  sub_22892ED48();
  (*(v13 + 32))(v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v16, v12);
  v28 = (v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  v29 = v35;
  *v28 = v34;
  v28[1] = v29;
  *(v26 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v36;
  (*(v13 + 8))(v22, v12);
  result = (*(v21 + 8))(v32, AssociatedTypeWitness);
  *a7 = v26;
  return result;
}

uint64_t sub_2288F6E80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v96 = a1;
  v98 = a2;
  sub_2288BF284(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22892EA78();
  v80 = *(v81 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF2B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  v85 = *(v11 - 1);
  v86 = v11;
  v12 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v79 - v15;
  sub_2288B5D1C();
  v94 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v95 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892E478();
  v92 = *(v19 - 8);
  v93 = v19;
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v19);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22892E778();
  v22 = *(v88 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22892EFA8();
  v97 = *(v26 - 8);
  v27 = *(v97 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v90 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v89 = &v79 - v30;
  v99 = sub_22892E6D8();
  v31 = *(v99 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v99);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v79 - v36;
  v38 = v2;
  v39 = *v2;
  v40 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
  swift_beginAccess();
  v41 = *(v39 + v40);
  if (*(v41 + 16))
  {
    v86 = v38;
    swift_beginAccess();
    v42 = v41 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v43 = v99;
    (*(v31 + 16))(v35, v42, v99);
    sub_2288FDA5C(0, 1, sub_2288D5FD8, MEMORY[0x277D0FFC8]);
    swift_endAccess();
    v87 = *(v31 + 32);
    v87(v37, v35, v43);
    v44 = v89;
    sub_22892E5E8();
    v45 = v88;
    (*(v22 + 16))(v25, v39 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v88);
    v46 = v91;
    sub_22892E708();
    (*(v22 + 8))(v25, v45);
    v47 = v95;
    sub_22892E438();
    (*(v92 + 8))(v46, v93);
    v48 = v97;
    v49 = v90;
    (*(v97 + 16))(v90, v47 + *(v94 + 36), v26);
    sub_2288BA88C(v47, sub_2288B5D1C);
    sub_2288BAA1C(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
    v50 = sub_22892F088();
    v51 = *(v48 + 8);
    v51(v49, v26);
    v51(v44, v26);
    v52 = v99;
    if (v50)
    {
      *(v86 + *(v96 + 40)) = 1;
    }

    v53 = v98;
    v87(v98, v37, v52);
    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v55 = v54;
    goto LABEL_5;
  }

  v57 = v85;
  v58 = v86;
  v59 = v87;
  v99 = v26;
  if (*(v38 + *(v96 + 40)))
  {
    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v61 = v60;
    v62 = *(*(v60 - 8) + 56);
    v63 = v98;
    v64 = 1;
  }

  else
  {
    v95 = *(v96 + 40);
    v65 = *(v96 + 36);
    v66 = *(v96 + 16);
    v67 = *(*(v96 + 24) + 8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_22892F4B8();
    if ((*(v57 + 48))(v59, 1, v58) == 1)
    {
      sub_2288BA88C(v59, sub_2288BF2B8);
      v68 = v84;
      (*(v97 + 56))(v84, 1, 1, v99);
      sub_2288F81BC(v68);
      sub_2288BA88C(v68, sub_2288BF284);
      *(v38 + v95) = 1;
    }

    else
    {
      v69 = v82;
      sub_2288C0D18(v59, v82, &qword_2813DE910, MEMORY[0x277D100B8]);
      v70 = v83;
      sub_2288FDCBC(v69, v83);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2288FDD3C(v69);
        v71 = *v70;
        v72 = *(v70 + 8);
        *(v38 + v95) = 1;
        v53 = v98;
        *v98 = v71;
        *(v53 + 8) = v72;
        sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        v55 = v73;
LABEL_5:
        swift_storeEnumTagMultiPayload();
        return (*(*(v55 - 8) + 56))(v53, 0, 2, v55);
      }

      v74 = v80;
      v75 = v79;
      v76 = v70;
      v77 = v81;
      (*(v80 + 32))(v79, v76, v81);
      sub_2288F78DC(v75);
      (*(v74 + 8))(v75, v77);
      sub_2288FDD3C(v69);
    }

    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v61 = v78;
    v62 = *(*(v78 - 8) + 56);
    v63 = v98;
    v64 = 2;
  }

  return v62(v63, v64, 2, v61);
}

uint64_t sub_2288F78DC(uint64_t a1)
{
  v2 = v1;
  v75 = a1;
  sub_2288BF284(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C();
  v66 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22892E478();
  v67 = *(v69 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22892EFA8();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v59 - v19);
  v21 = sub_22892EA78();
  v76 = *(v21 - 8);
  v77 = v21;
  v22 = *(v76 + 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v71 = &v59 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v65 = &v59 - v29;
  MEMORY[0x28223BE20](v28);
  v73 = &v59 - v30;
  v31 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates;
  swift_beginAccess();
  v32 = *(*(v1 + v31) + 16);
  if (v32 >= sub_22892E728())
  {
    v33 = *(v1 + v31);
    v34 = *(v33 + 16);
    if (v34)
    {
      v60 = v11;
      v35 = *(v76 + 2);
      v64 = (v76[80] + 32) & ~v76[80];
      v63 = *(v76 + 9);
      v62 = v76 + 16;
      v61 = v35;
      v35(v73, v33 + v64 + v63 * (v34 - 1), v77);
      v36 = v75;
      sub_22892EA48();
      sub_22892EA48();
      v59 = sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
      v37 = sub_22892F018();
      v38 = *(v74 + 8);
      (v38)(v18, v12);
      (v38)(v20, v12);
      if (v37)
      {
        v39 = v60;
        sub_22892E708();
        v40 = v70;
        sub_22892E438();
        (*(v67 + 8))(v39, v69);
        v41 = v68;
        sub_22892EA48();
        if (sub_22892F038())
        {
          v42 = *(v66 + 36);
          v43 = sub_22892F048();
          (v38)(v41, v12);
          sub_2288BA88C(v40, sub_2288B5D1C);
          v20 = v76;
          v18 = v77;
          v38 = v71;
          if (v43)
          {
            v61(v65, v36, v77);
            v44 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete;
            swift_beginAccess();
            v45 = *(v2 + v44);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + v44) = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v45 = sub_2288D6030(0, *(v45 + 2) + 1, 1, v45);
              *(v2 + v44) = v45;
            }

            v48 = *(v45 + 2);
            v47 = *(v45 + 3);
            if (v48 >= v47 >> 1)
            {
              v45 = sub_2288D6030(v47 > 1, v48 + 1, 1, v45);
            }

            *(v45 + 2) = v48 + 1;
            v20[4](&v45[v64 + v48 * v63], v65, v18);
            *(v2 + v44) = v45;
            swift_endAccess();
            v36 = v75;
          }
        }

        else
        {
          (v38)(v41, v12);
          sub_2288BA88C(v40, sub_2288B5D1C);
          v20 = v76;
          v18 = v77;
          v38 = v71;
        }

        v54 = v72;
        sub_22892EA48();
        (*(v74 + 56))(v54, 0, 1, v12);
        sub_2288F81BC(v54);
        sub_2288BA88C(v54, sub_2288BF284);
        (v20[1])(v73, v18);
        v61(v38, v36, v18);
        swift_beginAccess();
        v37 = *(v2 + v31);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v31) = v37;
        if (v55)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      v37 = sub_2288D6030(0, *(v37 + 16) + 1, 1, v37);
      *(v2 + v31) = v37;
LABEL_18:
      v57 = *(v37 + 16);
      v56 = *(v37 + 24);
      if (v57 >= v56 >> 1)
      {
        v37 = sub_2288D6030(v56 > 1, v57 + 1, 1, v37);
      }

      *(v37 + 16) = v57 + 1;
      v20[4]((v37 + v64 + v57 * v63), v38, v18);
      goto LABEL_21;
    }
  }

  v49 = v76;
  v50 = v77;
  (*(v76 + 2))(v25, v75, v77);
  swift_beginAccess();
  v37 = *(v1 + v31);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v31) = v37;
  if ((v51 & 1) == 0)
  {
    v37 = sub_2288D6030(0, *(v37 + 16) + 1, 1, v37);
    *(v2 + v31) = v37;
  }

  v53 = *(v37 + 16);
  v52 = *(v37 + 24);
  if (v53 >= v52 >> 1)
  {
    v37 = sub_2288D6030(v52 > 1, v53 + 1, 1, v37);
  }

  *(v37 + 16) = v53 + 1;
  v49[4](v37 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v49[9] * v53, v25, v50);
LABEL_21:
  *(v2 + v31) = v37;
  return swift_endAccess();
}

uint64_t sub_2288F8144@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  sub_2288F5830(a1);
}

uint64_t sub_2288F817C()
{
  v1 = sub_2288FDDB4();
  v2 = *v0;

  return v1;
}

uint64_t sub_2288F81BC(uint64_t a1)
{
  v347 = a1;
  sub_2288B4AD8(0, &unk_2813DFE68, MEMORY[0x277D0FF98], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v334 = &v304 - v4;
  v5 = sub_22892E948();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v333 = &v304 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v332 = &v304 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v331 = &v304 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v330 = &v304 - v14;
  MEMORY[0x28223BE20](v13);
  v329 = &v304 - v15;
  sub_2288BB4E0();
  v328 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v327 = &v304 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v326 = &v304 - v20;
  v325 = sub_22892E6D8();
  v343 = *(v325 - 8);
  v21 = *(v343 + 64);
  v22 = MEMORY[0x28223BE20](v325);
  v357 = &v304 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v304 - v24;
  sub_2288B5C84(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v324 = &v304 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v376 = &v304 - v30;
  sub_2288FC50C(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v391 = &v304 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288D6B24();
  v405 = v34;
  v344 = *(v34 - 8);
  v35 = *(v344 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v359 = &v304 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v337 = &v304 - v38;
  sub_2288FC540(0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v323 = &v304 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v366 = &v304 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v412 = &v304 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v304 - v47;
  v380 = sub_22892E538();
  v409 = *(v380 - 8);
  v49 = v409[8];
  v50 = MEMORY[0x28223BE20](v380);
  v342 = &v304 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v379 = &v304 - v52;
  sub_2288FC574(0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v413 = &v304 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v341 = &v304 - v57;
  v410 = sub_22892E5A8();
  v404 = *(v410 - 8);
  v58 = *(v404 + 8);
  v59 = MEMORY[0x28223BE20](v410);
  v390 = &v304 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v361 = &v304 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v377 = &v304 - v64;
  MEMORY[0x28223BE20](v63);
  v362 = &v304 - v65;
  sub_2288F1298();
  v360 = v66;
  v67 = *(*(v66 - 1) + 64);
  v68 = MEMORY[0x28223BE20](v66);
  v365 = &v304 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v367 = &v304 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v368 = &v304 - v73;
  MEMORY[0x28223BE20](v72);
  v370 = &v304 - v74;
  sub_2288BF284(0);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v307 = &v304 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = sub_22892EFA8();
  v399 = *(v403 - 8);
  v78 = *(v399 + 8);
  v79 = MEMORY[0x28223BE20](v403);
  v336 = &v304 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v335 = &v304 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v358 = &v304 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v394 = &v304 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v398 = &v304 - v88;
  MEMORY[0x28223BE20](v87);
  v90 = &v304 - v89;
  sub_2288B4B3C(0);
  v345 = v91;
  v92 = *(*(v91 - 8) + 64);
  v93 = MEMORY[0x28223BE20](v91);
  v356 = &v304 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v96 = &v304 - v95;
  v408 = sub_22892ED38();
  v407 = *(v408 - 1);
  v97 = *(v407 + 64);
  v98 = MEMORY[0x28223BE20](v408);
  v406 = &v304 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v101 = &v304 - v100;
  v102 = sub_22892EA78();
  v103 = *(v102 - 8);
  v104 = *(v103 + 64);
  v105 = MEMORY[0x28223BE20](v102);
  v340 = &v304 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x28223BE20](v105);
  v386 = &v304 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v373 = (&v304 - v110);
  MEMORY[0x28223BE20](v109);
  v112 = &v304 - v111;
  v113 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates;
  result = swift_beginAccess();
  v381 = v1;
  v363 = v113;
  v115 = *(v1 + v113);
  v116 = *(v115 + 16);
  if (v116)
  {
    v117 = v409;
    v339 = v96;
    v306 = v103;
    v119 = *(v103 + 16);
    v118 = v103 + 16;
    v364 = (*(v118 + 64) + 32) & ~*(v118 + 64);
    v385 = *(v118 + 56);
    v338 = v112;
    v411 = v102;
    v401 = v118;
    v400 = v119;
    v119(v112, v115 + v364 + v385 * (v116 - 1), v102);
    sub_22892ED28();
    v120 = sub_22892ED58();
    v121 = sub_22892F428();
    if (sub_22892F478())
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      v123 = sub_22892ED18();
      _os_signpost_emit_with_name_impl(&dword_2288B2000, v120, v121, v123, "SleepingSampleBaselineAccumulator.completeDaySummariesIfPossible", "", v122, 2u);
      MEMORY[0x22AAC47E0](v122, -1, -1);
    }

    v124 = v407;
    v125 = v408;
    (*(v407 + 16))(v406, v101, v408);
    v126 = sub_22892EDA8();
    v127 = *(v126 + 48);
    v128 = *(v126 + 52);
    swift_allocObject();
    v304 = sub_22892ED98();
    (*(v124 + 8))(v101, v125);
    v129 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete;
    v130 = v381;
    swift_beginAccess();
    v305 = v129;
    v131 = *(v130 + v129);
    v317 = *(v131 + 16);
    if (!v317)
    {
LABEL_82:
      v294 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
      v295 = v381;
      swift_beginAccess();
      v296 = *(*(v295 + v294) + 16);
      v297 = v305;
      swift_beginAccess();
      v298 = v306;
      v299 = v338;
      v300 = v411;
      if (!v296)
      {
LABEL_85:
        swift_endAccess();
        sub_2288FAEA4();

        return (*(v298 + 8))(v299, v300);
      }

      if (*(*(v381 + v297) + 16) >= v296)
      {
        sub_2288FDA5C(0, v296, sub_2288D6030, MEMORY[0x277D100B8]);
        goto LABEL_85;
      }

      goto LABEL_96;
    }

    v322 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
    v321 = v131 + v364;
    v406 = v399 + 8;
    v346 = (v399 + 48);
    v315 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider;
    v319 = (v117 + 13);
    v312 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider;
    v352 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
    v320 = *MEMORY[0x277CCC938];
    v378 = (v117 + 1);
    v316 = (v404 + 16);
    v397 = (v404 + 56);
    v402 = (v306 + 8);
    v408 = (v404 + 8);
    v396 = (v306 + 56);
    v395 = (v306 + 48);
    v318 = *MEMORY[0x277D0FF70];
    v383 = (v306 + 32);
    v392 = (v404 + 48);
    v389 = (v404 + 32);
    v388 = (v344 + 56);
    v387 = (v344 + 48);
    v311 = (v399 + 32);
    v310 = (v343 + 16);
    v309 = v343 + 32;
    v308 = (v343 + 8);

    v132 = 0;
    v355 = 0;
    v382 = -v385;
    v393 = v48;
    v133 = v339;
    v399 = v90;
    v313 = v25;
    v314 = v131;
    while (2)
    {
      if (v132 >= *(v131 + 16))
      {
LABEL_90:
        __break(1u);
      }

      else
      {
        v369 = v132;
        v400(v373, v321 + v132 * v385, v411);
        sub_22892EA48();
        sub_22892E718();
        v134 = *v406;
        v135 = v403;
        (*v406)(v90, v403);
        v136 = *v346;
        v137 = 1;
        v138 = (*v346)(v347, 1, v135);
        v139 = v355;
        if (v138 != 1)
        {
          v140 = v307;
          sub_2288FDB34(v347, v307, sub_2288BF284);
          v141 = v403;
          if (v136(v140, 1, v403) == 1)
          {
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
          if (sub_22892F048())
          {
            v142 = *(v345 + 36);
            v137 = sub_22892F028() ^ 1;
          }

          v138 = v134(v140, v141);
        }

        v404 = v134;
        v143 = v363;
        v144 = *(v381 + v363);
        MEMORY[0x28223BE20](v138);
        v302 = v133;

        v145 = sub_2288FB260(sub_2288FC5DC, (&v304 - 4), v144);
        v147 = v146;

        if (v147)
        {
LABEL_99:
          v416 = 0;
          v417 = 0xE000000000000000;
          sub_22892F648();

          v416 = 0xD000000000000027;
          v417 = 0x8000000228934770;
          v414 = 0;
          v415 = 0xE000000000000000;
          sub_22892F718();
          MEMORY[0x22AAC3770](3943982, 0xE300000000000000);
          v301 = *(v345 + 36);
          sub_22892F718();
          MEMORY[0x22AAC3770](v414, v415);

          v303 = 0;
          v302 = 232;
          result = sub_22892F738();
          __break(1u);
          return result;
        }

        v374 = *(v381 + v143);
        v148 = *(v374 + 16);
        if (v148 >= v145)
        {
          if ((v145 & 0x8000000000000000) == 0)
          {
            v354 = v137;
            v355 = v139;
            v149 = v374;
            v150 = v374 + v364;

            v152 = v373;
            sub_2288EF9D8(v151, v150, v145, ((2 * v148) | 1), v373, v370);
            sub_2288EF97C(v149, v150, v145, ((2 * v148) | 1), v152, v368);
            v384 = v150;
            v407 = v145;
            v353 = ((2 * v148) | 1);
            sub_2288EFA2C(v149, v150, v145, v353, v152, v367);

            v153 = v362;
            sub_22892EA68();
            v154 = objc_opt_self();
            v155 = [v154 _changeInDegreeCelsiusUnit];
            v156 = objc_opt_self();
            v157 = [v156 quantityWithUnit:v155 doubleValue:0.55];

            v158 = [v154 _changeInDegreeCelsiusUnit];
            v375 = [v156 quantityWithUnit:v158 doubleValue:1.1];

            sub_2288FC5FC();
            v160 = *(v159 + 48);
            v161 = *(v159 + 52);
            v162 = swift_allocObject();
            v163 = *(*v162 + 104);
            v372 = v162;
            v164 = (v162 + v163);
            sub_2288EF930();
            *v164 = 0;
            v164[1] = 0;
            v165 = MEMORY[0x22AAC3A10](v320);
            v166 = [v165 _unitForChangeInCanonicalUnit];

            v371 = v166;
            if (!v166)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v167 = v379;
            sub_22892E548();
            v168 = v342;
            v169 = v380;
            (*v319)(v342, v318, v380);
            sub_2288BAA1C(&qword_2813DFE88, MEMORY[0x277D0FF80]);
            v170 = sub_22892F088();
            v171 = *v378;
            (*v378)(v168, v169);
            v171(v167, v169);
            v409 = v148;
            if (v170)
            {
              v351 = v157;
              v172 = v148 - 1;
              v173 = v374 + v364 + v385 * v148;
              v174 = v374 + v364 + v385 * (v148 - 1);
              v175 = -v407;
              v176 = v411;
              while (v175 + v172 != -1)
              {
                if (v172 < v407 || v172 >= v148)
                {
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

                v177 = v386;
                v400(v386, v174, v176);
                v178 = v377;
                sub_22892EA68();
                v179 = *v402;
                (*v402)(v177, v176);
                v180 = v379;
                sub_22892E548();
                LOBYTE(v177) = sub_22892E518();
                v181 = v180;
                v148 = v409;
                v176 = v411;
                v171(v181, v380);
                (*v408)(v178, v410);
                --v172;
                v173 += v382;
                v174 += v382;
                if (v177)
                {
                  v182 = v386;
                  v400(v386, v173, v176);
                  v183 = v341;
                  sub_22892EA68();
                  v179(v182, v176);
                  v184 = 0;
                  v48 = v393;
LABEL_25:
                  v186 = v410;
                  v153 = v362;
                  v185 = v316;
                  v187 = v369;
                  v157 = v351;
                  goto LABEL_26;
                }
              }

              v184 = 1;
              v48 = v393;
              v183 = v341;
              goto LABEL_25;
            }

            v185 = v316;
            v183 = v341;
            v186 = v410;
            (*v316)(v341, v153, v410);
            v184 = 0;
            v187 = v369;
LABEL_26:
            v369 = v187 + 1;
            v188 = *v397;
            (*v397)(v183, v184, 1, v186);
            v189 = v372;
            sub_2288FDC3C(v183, v372 + *(*v372 + 112), sub_2288FC574);
            v190 = *v185;
            v191 = v361;
            (*v185)(v361, v153, v186);
            v192 = (v189 + *(*v189 + 96));
            v190(v192, v191, v186);
            v193 = v360;
            *&v192[v360[9]] = v157;
            v194 = v375;
            *&v192[v193[10]] = v375;
            v192[v193[11]] = 0;
            v192[v193[12]] = 1;
            v195 = v193[13];
            v351 = v192;
            v196 = v371;
            *&v192[v195] = v371;
            v350 = v157;
            v349 = v194;
            v375 = v196;
            sub_22892E558();
            v197 = 0;
            v198 = v407;
            v371 = MEMORY[0x277D84F90];
LABEL_48:
            v225 = v411;
            while (1)
            {
              if (v198 == v148)
              {
                v199 = 1;
                v198 = v148;
              }

              else
              {
                if (v198 < v407 || v198 >= v148)
                {
                  __break(1u);
                  goto LABEL_88;
                }

                v400(v48, v384 + v198 * v385, v225);
                v199 = 0;
                ++v198;
              }

              v200 = *v396;
              v201 = 1;
              (*v396)(v48, v199, 1, v225);
              v202 = v48;
              v203 = v412;
              sub_2288FDC3C(v202, v412, sub_2288FC540);
              v204 = *v395;
              if ((*v395)(v203, 1, v225) != 1)
              {
                v205 = v386;
                (*v383)(v386, v412, v225);
                sub_22892EA68();
                (*v402)(v205, v225);
                v201 = 0;
              }

              v206 = v413;
              v207 = v410;
              v188(v413, v201, 1, v410);
              if ((*v392)(v206, 1, v207) == 1)
              {
                break;
              }

              v208 = v390;
              (*v389)(v390, v413, v207);
              v209 = v399;
              sub_22892E558();
              sub_22892EAB8();
              v210 = v394;
              sub_22892EF28();
              sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
              v211 = v403;
              v212 = sub_22892F038();
              v213 = v404;
              v404(v210, v211);
              v213(v209, v211);
              v48 = v393;
              if (v212)
              {
                v214 = sub_22892EAC8();
                v215 = v391;
                v148 = v409;
                if (v197 < v214 && (v216 = sub_22892E598()) != 0)
                {
                  v217 = v216;
                  [v216 doubleValueForUnit_];
                  v219 = v218;

                  ++v197;
                  v220 = *(v405 + 48);
                  sub_22892E558();
                  v221 = 0;
                  *(v215 + v220) = v219;
                }

                else
                {
                  v221 = 1;
                }
              }

              else
              {
                v221 = 1;
                v215 = v391;
                v148 = v409;
              }

              v222 = v405;
              (*v388)(v215, v221, 1, v405);
              (*v408)(v208, v207);
              if ((*v387)(v215, 1, v222) == 1)
              {
                sub_2288BA88C(v215, sub_2288FC50C);
                goto LABEL_48;
              }

              v223 = v337;
              sub_2288FDC3C(v215, v337, sub_2288D6B24);
              sub_2288FDC3C(v223, v359, sub_2288D6B24);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v225 = v411;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v371 = sub_2288D628C(0, v371[2] + 1, 1, v371);
              }

              v227 = v371[2];
              v226 = v371[3];
              if (v227 >= v226 >> 1)
              {
                v371 = sub_2288D628C(v226 > 1, v227 + 1, 1, v371);
              }

              v228 = v371;
              v371[2] = v227 + 1;
              sub_2288FDC3C(v359, v228 + ((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v227, sub_2288D6B24);
            }

            v229 = v403;
            v404(v398, v403);
            v230 = v399;
            v231 = v361;
            sub_22892E558();
            v232 = v360;
            v233 = v351;
            v348 = sub_2288F1850(&v351[v360[15]], v230, v371);

            v234 = *v408;
            (*v408)(v362, v207);
            v404(v230, v229);
            v234(v231, v207);
            *&v233[v232[14]] = v348;
            v235 = *(v381 + v315);
            *(v372 + *(*v372 + 104)) = v235;
            v375 = v235;
            swift_unknownObjectRetain();
            v236 = v407;
            sub_2288F06C4(v374, v384, v407, v353, v373, v365);
            v237 = v370 + v232[15];
            if (sub_22892EA88() & 1) != 0 && (v238 = v368 + v232[15], (sub_22892EA88()) && (v239 = v367 + v232[15], (sub_22892EA88()) && (v240 = v372 + v232[15] + *(*v372 + 96), (sub_22892EA88()))
            {
              v241 = v365 + v232[15];
              v242 = sub_22892EA88();
              v243 = v411;
              v244 = v394;
              v245 = v340;
              v246 = v409;
              if (((v354 | v242) & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v243 = v411;
              v244 = v394;
              v245 = v340;
              v246 = v409;
              if ((v354 & 1) == 0)
              {
LABEL_81:

                v291 = v372;
                swift_setDeallocating();
                sub_2288BA88C(v291 + *(*v291 + 96), sub_2288F1298);
                swift_unknownObjectRelease();
                sub_2288BA88C(v291 + *(*v291 + 112), sub_2288FC574);
                v292 = *(*v291 + 48);
                v293 = *(*v291 + 52);
                swift_deallocClassInstance();
                sub_2288BA88C(v365, sub_2288F1298);
                sub_2288BA88C(v367, sub_2288F1298);
                sub_2288BA88C(v368, sub_2288F1298);
                sub_2288BA88C(v370, sub_2288F1298);
                (*v402)(v373, v243);
                sub_2288BA88C(v339, sub_2288B4B3C);
                goto LABEL_82;
              }
            }

            if (v246 != v236)
            {
              v249 = v246 - 1;
              v250 = -v236;
              v251 = v374 + v364 + v385 * (v246 - 1);
              while (1)
              {
                if (v249 < v407 || v249 >= v246)
                {
                  goto LABEL_89;
                }

                v400(v245, v251, v243);
                v252 = v376;
                sub_22892EA28();
                (*v402)(v245, v243);
                v253 = sub_22892DEF8();
                v254 = (*(*(v253 - 8) + 48))(v252, 1, v253);
                sub_2288BA88C(v252, sub_2288B5C84);
                if (v254 != 1)
                {
                  break;
                }

                --v249;
                v251 += v382;
                if (v250 + v249 == -1)
                {
                  v247 = 1;
LABEL_65:
                  v248 = v403;
                  v244 = v394;
                  v236 = v407;
                  goto LABEL_66;
                }
              }

              v400(v366, v251, v243);
              v247 = 0;
              goto LABEL_65;
            }

            v247 = 1;
            v248 = v403;
LABEL_66:
            v200(v366, v247, 1, v243);
            sub_22892EA48();
            v255 = *(v381 + v363);
            if (v236 < *(v255 + 16))
            {
              v256 = v386;
              v400(v386, v255 + v364 + v236 * v385, v243);
              v257 = v399;
              sub_22892EA48();
              v258 = *v402;
              (*v402)(v256, v243);
              v259 = v335;
              sub_22892EA48();
              v260 = v336;
              sub_22892EED8();
              sub_22892EEF8();
              v261 = v404;
              v404(v260, v248);
              v261(v259, v248);
              sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
              if ((sub_22892F048() & 1) == 0)
              {
                goto LABEL_94;
              }

              v409 = v258;
              v262 = *v311;
              v263 = v257;
              v264 = v326;
              (*v311)(v326, v263, v248);
              v265 = v328;
              v262((v264 + *(v328 + 48)), v244, v248);
              v266 = v327;
              sub_2288FDB34(v264, v327, sub_2288BB4E0);
              v267 = *(v265 + 48);
              v268 = v356;
              v262(v356, v266, v248);
              v261((v266 + v267), v248);
              sub_2288FDC3C(v264, v266, sub_2288BB4E0);
              v262(&v268[*(v345 + 36)], (v266 + *(v265 + 48)), v248);
              v261(v266, v248);
              v269 = v323;
              sub_2288FDB34(v366, v323, sub_2288FC540);
              v270 = v411;
              if (v204(v269, 1, v411) == 1)
              {
                sub_2288BA88C(v269, sub_2288FC540);
                v271 = sub_22892DEF8();
                (*(*(v271 - 8) + 56))(v324, 1, 1, v271);
              }

              else
              {
                sub_22892EA28();
                (v409)(v269, v270);
              }

              v272 = v334;
              sub_2288F5E18(v329);
              sub_2288F5E18(v330);
              sub_2288F5E18(v331);
              sub_2288FB5D8(v332);
              sub_2288F5E18(v333);
              v273 = v313;
              sub_22892E5F8();
              if (*(v381 + v312))
              {
                sub_22890217C(v273, v272);
              }

              else
              {
                v274 = sub_22892E638();
                (*(*(v274 - 8) + 56))(v272, 1, 1, v274);
              }

              v275 = v325;
              v276 = v357;
              v48 = v393;
              v133 = v339;
              v90 = v399;
              v131 = v314;
              sub_22892E648();
              v277 = v273;
              v278 = v273;
              v279 = v275;
              (*v310)(v276, v278, v275);
              v280 = v381;
              v281 = v352;
              swift_beginAccess();
              v282 = *(v280 + v281);
              v283 = swift_isUniquelyReferenced_nonNull_native();
              *(v280 + v281) = v282;
              if ((v283 & 1) == 0)
              {
                v282 = sub_2288D5FD8(0, v282[2] + 1, 1, v282);
                *(v381 + v352) = v282;
              }

              v285 = v282[2];
              v284 = v282[3];
              if (v285 >= v284 >> 1)
              {
                v282 = sub_2288D5FD8(v284 > 1, v285 + 1, 1, v282);
              }

              v282[2] = v285 + 1;
              (*(v343 + 32))(v282 + ((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v285, v357, v279);
              v286 = v381;
              *(v381 + v352) = v282;
              swift_endAccess();
              v287 = v363;
              swift_beginAccess();
              if (*(*(v286 + v287) + 16) > v407)
              {
                sub_2288FDA5C(0, v407 + 1, sub_2288D6030, MEMORY[0x277D100B8]);
                swift_endAccess();
                v288 = v372;
                swift_setDeallocating();
                sub_2288BA88C(v288 + *(*v288 + 96), sub_2288F1298);
                swift_unknownObjectRelease();
                sub_2288BA88C(v288 + *(*v288 + 112), sub_2288FC574);
                v289 = *(*v288 + 48);
                v290 = *(*v288 + 52);
                swift_deallocClassInstance();

                (*v308)(v277, v279);
                sub_2288BA88C(v366, sub_2288FC540);
                sub_2288BA88C(v365, sub_2288F1298);
                sub_2288BA88C(v367, sub_2288F1298);
                sub_2288BA88C(v368, sub_2288F1298);
                sub_2288BA88C(v370, sub_2288F1298);
                (v409)(v373, v411);
                sub_2288BA88C(v133, sub_2288B4B3C);
                v132 = v369;
                if (v369 != v317)
                {
                  continue;
                }

                goto LABEL_82;
              }

LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_92;
  }

  return result;
}

uint64_t sub_2288FAEA4()
{
  v0 = sub_22892ED78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892ED38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892ED58();
  sub_22892ED88();
  v11 = sub_22892F418();
  if (sub_22892F478())
  {

    sub_22892EDB8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v10, v11, v14, "SleepingSampleBaselineAccumulator.completeDaySummariesIfPossible", v12, v13, 2u);
    MEMORY[0x22AAC47E0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2288FB0F8()
{
  v0 = sub_22892EFA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EA48();
  sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  if (sub_22892F048())
  {
    sub_2288B4B3C(0);
    v6 = *(v5 + 36);
    v7 = sub_22892F028();
  }

  else
  {
    v7 = 0;
  }

  (*(v1 + 8))(v4, v0);
  return v7 & 1;
}

uint64_t sub_2288FB260(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_22892EA78() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2288FB34C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
  v2 = sub_22892E778();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates);

  v4 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries);

  v5 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete);

  v6 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
  v7 = sub_22892ED68();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingSampleBaselineAccumulator()
{
  result = qword_2813DF690;
  if (!qword_2813DF690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288FB4CC()
{
  result = sub_22892E778();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22892ED68();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2288FB5D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v170 = a1;
  sub_2288BB4E0();
  v146 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v145 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v144 = &v134 - v7;
  v151 = sub_22892EFA8();
  v155 = *(v151 - 8);
  v8 = *(v155 + 64);
  v9 = MEMORY[0x28223BE20](v151);
  v148 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v134 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v134 - v14;
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v15;
  sub_2288B4A64(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v157 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892EB18();
  v20 = *(v19 - 8);
  v158 = v19;
  v159 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v143 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v152 = &v134 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v154 = &v134 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v134 - v28;
  sub_2288B4B3C(0);
  v156 = v30;
  v160 = *(v30 - 8);
  v31 = *(v160 + 64);
  MEMORY[0x28223BE20](v30);
  v161 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22892E538();
  v34 = *(v33 - 8);
  v163 = v33;
  v164 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v162 = &v134 - v39;
  sub_2288CD8F0(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22892DDC8();
  v45 = *(v44 - 8);
  v166 = v44;
  v167 = v45;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v165 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288FC574(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22892E5A8();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v153 = &v134 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v168 = &v134 - v57;
  v169 = sub_22892E948();
  v58 = *(v169 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v169);
  v61 = &v134 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1 + *(*v1 + 96);
  sub_2288F5E18(v61);
  v63 = *(v2 + *(*v2 + 104));
  if (!v63)
  {
    goto LABEL_12;
  }

  sub_2288FDB34(v2 + *(*v2 + 112), v51, sub_2288FC574);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_2288BA88C(v51, sub_2288FC574);
LABEL_12:
    (*(v58 + 32))(v170, v61, v169);
    return;
  }

  v142 = v58;
  v64 = v63;
  v65 = v168;
  (*(v53 + 32))();
  swift_unknownObjectRetain();
  sub_22892E588();
  v67 = v166;
  v66 = v167;
  if ((*(v167 + 48))(v43, 1, v166) == 1)
  {
    (*(v53 + 8))(v65, v52);
    swift_unknownObjectRelease();
    sub_2288BA88C(v43, sub_2288CD8F0);
LABEL_11:
    v58 = v142;
    goto LABEL_12;
  }

  v140 = v64;
  v141 = v53;
  v139 = v52;
  (*(v66 + 32))(v165, v43, v67);
  v68 = v162;
  v69 = v66;
  sub_22892E548();
  v70 = v163;
  v71 = v164;
  (*(v164 + 13))(v38, *MEMORY[0x277D0FF60], v163);
  v72 = sub_22892E528();
  v74 = *(v71 + 1);
  v73 = (v71 + 8);
  v74(v38, v70);
  v138 = v74;
  v74(v68, v70);
  if ((v72 & 1) == 0)
  {
    swift_unknownObjectRelease();
    (*(v69 + 8))(v165, v67);
    goto LABEL_10;
  }

  v75 = v67;
  v76 = v165;
  v77 = sub_22891A730(v165);
  if (v78)
  {
    swift_unknownObjectRelease();
    (*(v167 + 8))(v76, v67);
LABEL_10:
    (*(v141 + 8))(v168, v139);
    goto LABEL_11;
  }

  v79 = v77;
  sub_22892E878();
  v80 = v157;
  sub_22892EA98();
  v81 = v158;
  v82 = *(v159 + 8);
  v137 = v159 + 8;
  v136 = v82;
  v82(v29, v158);
  v83 = v160 + 48;
  v84 = *(v160 + 48);
  v85 = v84(v80, 1, v156);
  v58 = v142;
  v164 = v73;
  if (v85 == 1)
  {
    v134 = v84;
    v135 = v79;
    v160 = v83;
    v86 = v149;
    sub_22892E558();
    v87 = v147;
    sub_22892E558();
    v88 = v148;
    sub_22892EED8();
    v89 = v150;
    sub_22892EEF8();
    v90 = v155;
    v91 = (v155 + 8);
    v92 = *(v155 + 8);
    v93 = v88;
    v94 = v151;
    v92(v93, v151);
    v148 = v91;
    v147 = v92;
    v92(v87, v94);
    sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    if ((sub_22892F048() & 1) == 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v95 = *(v90 + 32);
    v96 = v144;
    v95(v144, v86, v94);
    v97 = v146;
    v95((v96 + *(v146 + 48)), v89, v94);
    v98 = v145;
    sub_2288FDB34(v96, v145, sub_2288BB4E0);
    v99 = *(v97 + 48);
    v155 = v90 + 32;
    v100 = v161;
    v95(v161, v98, v94);
    v101 = v147;
    (v147)(v98 + v99, v94);
    sub_2288FDC3C(v96, v98, sub_2288BB4E0);
    v102 = *(v97 + 48);
    v103 = v156;
    v95((v100 + *(v156 + 36)), (v98 + v102), v94);
    v101(v98, v94);
    v104 = v157;
    v105 = v134(v157, 1, v103);
    v81 = v158;
    v75 = v166;
    v79 = v135;
    if (v105 != 1)
    {
      sub_2288BA88C(v104, sub_2288B4A64);
    }
  }

  else
  {
    sub_2288FDC3C(v80, v161, sub_2288B4B3C);
  }

  v106 = v153;
  sub_22892E938();
  v107 = v162;
  sub_22892E548();
  v108 = *(v141 + 8);
  v141 += 8;
  v108(v106, v139);
  v109 = sub_22892E518();
  v138(v107, v163);
  v110 = __OFADD__(v79, v109 & 1);
  v111 = v79 + (v109 & 1);
  if (v110)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (sub_22892E8F8() > 3)
  {
    v164 = v108;
    sub_2288F2738();
    v121 = *(v120 + 48);
    v163 = *(v120 + 64);
    sub_2288FDB34(v161, v154, sub_2288B4B3C);
    v122 = v152;
    sub_22892E878();
    v123 = sub_22892EAF8();
    v124 = v136;
    v136(v122, v81);
    v125 = v143;
    sub_22892E878();
    v126 = sub_22892EB08();
    v124(v125, v81);
    v127 = v126 - 1;
    if (!__OFSUB__(v126, 1))
    {
      v110 = __OFSUB__(v127, v111);
      v128 = v127 - v111;
      if (!v110)
      {
        v110 = __OFADD__(v123, v128);
        v129 = v123 + v128;
        v119 = v168;
        v108 = v164;
        if (!v110)
        {
          v130 = v154;
          *(v154 + v121) = v129;
          v114 = v130;
          v131 = v152;
          sub_22892E878();
          v132 = sub_22892EB08();
          v136(v131, v81);
          *(v114 + v163) = v132;
          v75 = v166;
          goto LABEL_28;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_2288EF930();
  v112 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v113 = [v112 _rollingBaselineConfiguration];

  v114 = v154;
  if (v113)
  {
    v115 = [v113 minimumSampleCount];

    sub_2288F2738();
    v117 = *(v116 + 48);
    v118 = *(v116 + 64);
    sub_2288FDB34(v161, v114, sub_2288B4B3C);
    if (!__OFSUB__(v115, v111))
    {
      *(v114 + v117) = &v115[-v111];
      v119 = v168;
      if (!__OFSUB__(v115, 1))
      {
        *(v114 + v118) = v115 - 1;
LABEL_28:
        v133 = v165;
        (*(v159 + 104))(v114, *MEMORY[0x277D100C0], v81);
        sub_22892E888();
        swift_unknownObjectRelease();
        sub_2288BA88C(v161, sub_2288B4B3C);
        (*(v167 + 8))(v133, v75);
        v108(v119, v139);
        goto LABEL_12;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
}

void sub_2288FC5FC()
{
  if (!qword_2813DF100[0])
  {
    sub_2288F132C();
    sub_2288FC660();
    v0 = type metadata accessor for SleepingWristTemperatureBaselineCalculator();
    if (!v1)
    {
      atomic_store(v0, qword_2813DF100);
    }
  }
}

unint64_t sub_2288FC660()
{
  result = qword_2813DEA90;
  if (!qword_2813DEA90)
  {
    sub_2288F132C();
    sub_2288BAA1C(&qword_2813DEB08, sub_2288FC5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEA90);
  }

  return result;
}

uint64_t sub_2288FC730(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2288D6B24();
        v6 = sub_22892F248();
        *(v6 + 16) = v5;
      }

      sub_2288D6B24();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_2288FCAB4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2288FC85C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2288FC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2288D6B24();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v31 - v19;
  v33 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v38 = v21;
    v32 = v22;
    v26 = v21 + v22 * a3;
LABEL_5:
    v36 = v23;
    v37 = a3;
    v34 = v26;
    v35 = v25;
    while (1)
    {
      sub_2288FDB34(v26, v20, sub_2288D6B24);
      sub_2288FDB34(v23, v16, sub_2288D6B24);
      v27 = *(v9 + 48);
      v28 = *&v20[v27];
      v29 = *&v16[v27];
      sub_2288BA88C(v16, sub_2288D6B24);
      result = sub_2288BA88C(v20, sub_2288D6B24);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v37 + 1;
        v23 = v36 + v32;
        v25 = v35 - 1;
        v26 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_2288FDC3C(v26, v13, sub_2288D6B24);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2288FDC3C(v13, v23, sub_2288D6B24);
      v23 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288FCAB4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  sub_2288D6B24();
  v10 = v9;
  v120 = *(v9 - 8);
  v11 = *(v120 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v123 = &v109 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v109 - v17;
  result = MEMORY[0x28223BE20](v16);
  v20 = &v109 - v19;
  v122 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_228916EB0(a4);
    }

    v126 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v122)
      {
        v105 = *(result + 16 * a4);
        v106 = result;
        v107 = *(result + 16 * (a4 - 1) + 40);
        sub_2288FD418(*v122 + *(v120 + 72) * v105, *v122 + *(v120 + 72) * *(result + 16 * (a4 - 1) + 32), *v122 + *(v120 + 72) * v107, v5);
        if (v6)
        {
        }

        if (v107 < v105)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_228916EB0(v106);
        }

        if (a4 - 2 >= *(v106 + 2))
        {
          goto LABEL_123;
        }

        v108 = &v106[16 * a4];
        *v108 = v105;
        *(v108 + 1) = v107;
        v126 = v106;
        sub_228916E24(a4 - 1);
        result = v126;
        a4 = *(v126 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v111 = a4;
  v125 = v10;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v116 = v23;
    if (v22 + 1 >= v21)
    {
      v21 = v22 + 1;
    }

    else
    {
      v26 = *(v120 + 72);
      v5 = *v122 + v26 * v25;
      v119 = *v122;
      v27 = v119;
      sub_2288FDB34(v119 + v26 * v25, v20, sub_2288D6B24);
      v28 = v27 + v26 * v24;
      v29 = v24;
      v30 = v124;
      sub_2288FDB34(v28, v124, sub_2288D6B24);
      v31 = *(v10 + 48);
      v32 = *&v20[v31];
      v33 = *(v30 + v31);
      sub_2288BA88C(v30, sub_2288D6B24);
      result = sub_2288BA88C(v20, sub_2288D6B24);
      v110 = v29;
      v34 = v29 + 2;
      v121 = v26;
      v35 = v119 + v26 * (v29 + 2);
      while (v21 != v34)
      {
        sub_2288FDB34(v35, v20, sub_2288D6B24);
        v36 = v124;
        sub_2288FDB34(v5, v124, sub_2288D6B24);
        v37 = *(v125 + 48);
        v38 = *&v20[v37];
        v39 = *(v36 + v37);
        sub_2288BA88C(v36, sub_2288D6B24);
        result = sub_2288BA88C(v20, sub_2288D6B24);
        ++v34;
        v35 += v121;
        v5 += v121;
        if (v32 < v33 == v38 >= v39)
        {
          v21 = v34 - 1;
          break;
        }
      }

      v24 = v110;
      a4 = v111;
      v10 = v125;
      if (v32 < v33)
      {
        if (v21 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v21)
        {
          v109 = v6;
          v40 = v121 * (v21 - 1);
          v41 = v21 * v121;
          v42 = v21;
          v43 = v21;
          v44 = v110;
          v45 = v110 * v121;
          do
          {
            if (v44 != --v43)
            {
              v46 = *v122;
              if (!*v122)
              {
                goto LABEL_132;
              }

              v5 = v46 + v45;
              sub_2288FDC3C(v46 + v45, v115, sub_2288D6B24);
              if (v45 < v40 || v5 >= v46 + v41)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2288FDC3C(v115, v46 + v40, sub_2288D6B24);
            }

            ++v44;
            v40 -= v121;
            v41 -= v121;
            v45 += v121;
          }

          while (v44 < v43);
          v6 = v109;
          v24 = v110;
          a4 = v111;
          v10 = v125;
          v21 = v42;
        }
      }
    }

    v47 = v122[1];
    if (v21 < v47)
    {
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_125;
      }

      if (v21 - v24 < a4)
      {
        if (__OFADD__(v24, a4))
        {
          goto LABEL_127;
        }

        if ((v24 + a4) >= v47)
        {
          v48 = v122[1];
        }

        else
        {
          v48 = v24 + a4;
        }

        if (v48 < v24)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v21 != v48)
        {
          break;
        }
      }
    }

    v22 = v21;
    if (v21 < v24)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v116;
    }

    else
    {
      result = sub_2288D605C(0, *(v116 + 2) + 1, 1, v116);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v49 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      result = sub_2288D605C((v49 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v50 = &v23[16 * a4];
    *(v50 + 4) = v24;
    *(v50 + 5) = v22;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v52 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v53 = *(v23 + 4);
          v54 = *(v23 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_113;
          }

          v69 = &v23[16 * v5];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_116;
          }

          v75 = &v23[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_120;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v23[16 * v5];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_115;
        }

        v82 = &v23[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v52 - 1;
        if (v52 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v122)
        {
          goto LABEL_131;
        }

        v90 = v23;
        v91 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v52 + 40];
        sub_2288FD418(*v122 + *(v120 + 72) * v91, *v122 + *(v120 + 72) * *&v23[16 * v52 + 32], *v122 + *(v120 + 72) * v5, v51);
        if (v6)
        {
        }

        if (v5 < v91)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = v90;
        }

        else
        {
          v92 = sub_228916EB0(v90);
        }

        v10 = v125;
        if (a4 >= *(v92 + 2))
        {
          goto LABEL_110;
        }

        v93 = &v92[16 * a4];
        *(v93 + 4) = v91;
        *(v93 + 5) = v5;
        v126 = v92;
        result = sub_228916E24(v52);
        v23 = v126;
        v5 = *(v126 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v23[16 * v5 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_111;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_112;
      }

      v64 = &v23[16 * v5];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_114;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_117;
      }

      if (v68 >= v60)
      {
        v86 = &v23[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_121;
        }

        if (v55 < v89)
        {
          v52 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = v122[1];
    a4 = v111;
    if (v22 >= v21)
    {
      goto LABEL_96;
    }
  }

  v109 = v6;
  v110 = v24;
  a4 = *v122;
  v94 = *(v120 + 72);
  v95 = *v122 + v94 * (v21 - 1);
  v96 = -v94;
  v97 = v24 - v21;
  v113 = v94;
  v114 = v48;
  v5 = a4 + v21 * v94;
LABEL_86:
  v121 = v21;
  v117 = v5;
  v118 = v97;
  v119 = v95;
  v98 = v125;
  while (1)
  {
    sub_2288FDB34(v5, v20, sub_2288D6B24);
    v99 = v124;
    sub_2288FDB34(v95, v124, sub_2288D6B24);
    v100 = *(v98 + 48);
    v101 = *&v20[v100];
    v102 = *(v99 + v100);
    sub_2288BA88C(v99, sub_2288D6B24);
    result = sub_2288BA88C(v20, sub_2288D6B24);
    if (v101 >= v102)
    {
LABEL_85:
      v21 = v121 + 1;
      v22 = v114;
      v95 = v119 + v113;
      v97 = v118 - 1;
      v5 = v117 + v113;
      if (v121 + 1 != v114)
      {
        goto LABEL_86;
      }

      v6 = v109;
      v24 = v110;
      v10 = v125;
      if (v114 < v110)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v103 = v123;
    sub_2288FDC3C(v5, v123, sub_2288D6B24);
    v98 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_2288FDC3C(v103, v95, sub_2288D6B24);
    v95 += v96;
    v5 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_2288FD418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = a3;
  sub_2288D6B24();
  v49 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = v44 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v53 = a1;
  v52 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44[1] = v4;
    v27 = a4 + v20;
    if (v20 < 1)
    {
      v30 = a4 + v20;
    }

    else
    {
      v28 = -v16;
      v29 = a4 + v20;
      v30 = v27;
      v46 = v28;
      v47 = a4;
      do
      {
        v44[0] = v30;
        v31 = a2;
        v32 = a2 + v28;
        while (1)
        {
          v34 = v50;
          if (v31 <= a1)
          {
            v53 = v31;
            v51 = v44[0];
            goto LABEL_59;
          }

          v45 = v30;
          v50 += v28;
          v35 = v29 + v28;
          sub_2288FDB34(v35, v14, sub_2288D6B24);
          v36 = v32;
          v37 = v32;
          v38 = v14;
          v39 = v48;
          sub_2288FDB34(v37, v48, sub_2288D6B24);
          v40 = *(v49 + 48);
          v41 = *(v38 + v40);
          v42 = *(v39 + v40);
          v43 = v39;
          v14 = v38;
          sub_2288BA88C(v43, sub_2288D6B24);
          sub_2288BA88C(v38, sub_2288D6B24);
          if (v41 < v42)
          {
            break;
          }

          v30 = v35;
          if (v34 < v29 || v50 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v36;
          }

          else
          {
            v32 = v36;
            if (v34 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v47;
          v28 = v46;
          if (!v33)
          {
            a2 = v31;
            goto LABEL_58;
          }
        }

        if (v34 < v31 || v50 >= v31)
        {
          a2 = v36;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v45;
          v28 = v46;
        }

        else
        {
          v30 = v45;
          v28 = v46;
          a2 = v36;
          if (v34 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v47);
    }

LABEL_58:
    v53 = a2;
    v51 = v30;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v51 = a4 + v19;
    if (v19 >= 1 && a2 < v50)
    {
      do
      {
        sub_2288FDB34(a2, v14, sub_2288D6B24);
        v23 = v48;
        sub_2288FDB34(a4, v48, sub_2288D6B24);
        v24 = *(v49 + 48);
        v25 = *&v14[v24];
        v26 = *(v23 + v24);
        sub_2288BA88C(v23, sub_2288D6B24);
        sub_2288BA88C(v14, sub_2288D6B24);
        if (v25 >= v26)
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = a4 + v16;
          a4 += v16;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        a1 += v16;
        v53 = a1;
      }

      while (a4 < v21 && a2 < v50);
    }
  }

LABEL_59:
  sub_228916EC4(&v53, &v52, &v51);
  return 1;
}

unint64_t sub_2288FD910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2288FDA5C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_2288FD910(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_2288FDB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2288FDB9C()
{
  if (!qword_2813DECD8)
  {
    sub_2288D6B24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DECD8);
    }
  }
}

uint64_t sub_2288FDC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288FDCBC(uint64_t a1, uint64_t a2)
{
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288FDD3C(uint64_t a1)
{
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288FDDD8()
{
  sub_2288BF214(319, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2288FDE7C(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleBaselineAccumulator();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(*(a1 + 24) + 8);
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2288FDF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_26;
  }

  v14 = v13 + ((v12 + 8) & ~v12) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 < 2)
    {
LABEL_26:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v9 + 48);

        return v21((a1 + v12 + 8) & ~v12);
      }

      else
      {
        v20 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_26;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_2288FE0FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 64) + ((v11 + 8) & ~v11) + 1;
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (*(v9 + 64) + ((v11 + 8) & ~v11) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&a1[v13] = v16;
              }

              else
              {
                *&a1[v13] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      a1[v13] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
  }

  else if (v14)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *(v9 + 56);

    v21(&a1[v11 + 8] & ~v11, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *a1 = v20;
  }
}

uint64_t sub_2288FE378()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2288FE3E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2288FE428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2288FE474(uint64_t a1)
{
  v35 = a1;
  v1 = sub_22892E9E8();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892DFB8();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892E048();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22892DEF8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22892EFA8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_22892DF58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892EA08();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x28223BE20](v19);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v35)
  {
    sub_22892DF48();
    v25 = sub_22892DF08();
    v29[0] = v26;
    v29[1] = v25;
    (*(v15 + 8))(v18, v14);
    sub_22892DED8();
    v28 = v30;
    v27 = v31;
    (*(v30 + 104))(v7, *MEMORY[0x277CC9830], v31);
    sub_22892DFC8();
    (*(v28 + 8))(v7, v27);
    sub_22892EF48();
    (*(v33 + 104))(v32, *MEMORY[0x277D10078], v34);
    sub_22892E988();
    sub_2288DBD40(v24);
    return (*(v20 + 8))(v24, v19);
  }

  return result;
}

id sub_2288FE870(void *a1, void *a2)
{
  v4 = a1;
  sub_22892F948();
  v5 = objc_allocWithZone(MEMORY[0x277D10800]);
  v6 = sub_22892F098();

  v7 = [v5 initWithProfile:v4 debugIdentifier:v6 delegate:0];

  v8 = objc_allocWithZone(v2);
  v9 = sub_2288FF65C(v7, a2);

  return v9;
}

id sub_2288FE93C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22892EDE8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  sub_22892EDC8();

  v16 = sub_22892EDD8();
  v17 = sub_22892F398();

  v18 = os_log_type_enabled(v16, v17);
  v56 = v13;
  v53 = a4;
  v54 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v55 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v52 = a3;
    v22 = v21;
    v57[0] = v21;
    *v20 = 136446466;
    v23 = sub_22892F948();
    v25 = sub_2288B748C(v23, v24, v57);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_2288B748C(a1, a2, v57);
    _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s] Requesting work for %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    a3 = v52;
    MEMORY[0x22AAC47E0](v26, -1, -1);
    v27 = v20;
    v9 = v55;
    MEMORY[0x22AAC47E0](v27, -1, -1);
  }

  v28 = v9[1];
  v28(v15, v8);
  v57[0] = 0;
  v29 = [a3 requestWorkWithPriority:2 error:v57];
  v30 = v57[0];
  if (v29)
  {
    v31 = *MEMORY[0x277D85DE8];

    return v30;
  }

  else
  {
    v55 = v57[0];
    v33 = v57[0];
    v34 = sub_22892DE38();

    swift_willThrow();
    v35 = v56;
    sub_22892EDC8();

    v36 = v34;
    v37 = sub_22892EDD8();
    v38 = sub_22892F378();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55 = v9;
      v42 = v41;
      v57[0] = v41;
      *v39 = 136446722;
      v43 = sub_22892F948();
      v45 = sub_2288B748C(v43, v44, v57);
      v53 = v8;
      v46 = v45;

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_2288B748C(v54, a2, v57);
      *(v39 + 22) = 2114;
      v47 = v34;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v48;
      *v40 = v48;
      _os_log_impl(&dword_2288B2000, v37, v38, "[%{public}s] Failed to request work for %{public}s: %{public}@", v39, 0x20u);
      sub_2288DDB10(v40);
      MEMORY[0x22AAC47E0](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v42, -1, -1);
      MEMORY[0x22AAC47E0](v39, -1, -1);

      v49 = v56;
      v50 = v53;
    }

    else
    {

      v49 = v35;
      v50 = v8;
    }

    result = (v28)(v49, v50);
    v51 = *MEMORY[0x277D85DE8];
  }

  return result;
}

id sub_2288FEE10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductionProfileExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2288FEF04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  sub_22892F218();

  v5 = a2;
  v4();
}

id sub_2288FEFA8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state;
  v15 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = &v13[*(v10 + 28)];
  sub_22892DF48();
  sub_2289001FC(0, &qword_2813DEAB0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  v18 = *(v17 + 52);
  v19 = (*(v17 + 48) + 3) & 0x1FFFFFFFCLL;
  v20 = swift_allocObject();
  *(v20 + ((*(*v20 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228900268(v13, v20 + *(*v20 + *MEMORY[0x277D841D0] + 16), type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  *&a4[v14] = v20;
  v21 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_changeDetector];
  *v21 = a1;
  *(v21 + 1) = &off_283BD3EE0;
  v22 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = a1;

  sub_22892F948();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v24 = sub_22892F488();
  sub_228900198(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v25 = swift_allocObject();
  v26 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v27 = sub_22892F098();

  v28 = [v26 initWithName:v27 loggingCategory:v24];

  *(v25 + 16) = v28;
  *&a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers] = v25;
  v34.receiver = a4;
  v34.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 sharedDiagnosticManager];
  [v32 addObject_];

  [*(*&v23[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] + 16) registerObserver:v31 queue:0];

  return v31;
}

void *sub_2288FF324(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v42 = a9;
  v43 = a10;
  v15 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a11;
  swift_getMetatypeMetadata();
  v20 = a1;
  sub_22892F808();
  v21 = HKCreateSerialDispatchQueue();
  swift_unknownObjectRelease();
  v22 = objc_allocWithZone(MEMORY[0x277D10838]);
  v23 = sub_22892F098();
  v24 = [v22 initWithProfile:v20 clientIdentifier:v23 eventHandlerQueue:v21];

  v25 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:a4 healthDataSource:v20 currentCountryCode:0];
  v26 = swift_allocObject();
  sub_2288DEA34();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  v26[13] = v27;
  sub_228900198(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v29 = &v19[*(v16 + 28)];
  sub_2289001FC(0, &unk_27D85BC10, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache);
  *v29 = 0;
  *(v29 + 1) = 0;
  v31 = *(v30 + 52);
  v32 = (*(v30 + 48) + 3) & 0x1FFFFFFFCLL;
  v33 = swift_allocObject();
  *(v33 + ((*(*v33 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228900268(v19, v33 + *(*v33 + *MEMORY[0x277D841D0] + 16), type metadata accessor for VitalsOutlierNotificationAnalysisStateCache);
  v26[14] = v33;
  v26[2] = a2;
  v26[3] = v24;
  v26[4] = a3;
  v26[5] = &protocol witness table for SleepingSampleDaySummaryCurrentValueCache;
  v34 = v44;
  v35 = v45;
  v26[6] = v25;
  v26[7] = v34;
  v36 = v46;
  v37 = v47;
  v26[8] = v35;
  v26[9] = v36;
  v39 = v42;
  v38 = v43;
  v26[10] = v37;
  v26[11] = v39;
  v26[12] = v38;
  [a2 startObservation_];
  return v26;
}

id sub_2288FF65C(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  *&v2[qword_27D85B940] = a1;
  *&v2[qword_27D85B948] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v6 = a1;

  v7 = objc_msgSendSuper2(&v25, sel_init);
  [v6 setDelegate_];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22890015C;
  *(v9 + 24) = v8;
  v10 = a2[3];
  v11 = swift_allocObject();
  v11[2] = sub_228900164;
  v11[3] = v9;
  aBlock[4] = sub_22890016C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288FEF04;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  [v10 beginReceivingEventsWithHandler_];
  _Block_release(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_22890015C;
  *(v14 + 24) = v8;
  v15 = a2[13];
  v26 = sub_228900174;
  v27 = v14;

  os_unfair_lock_lock((v15 + 32));
  sub_22890017C((v15 + 16));
  os_unfair_lock_unlock((v15 + 32));
  v16 = a2[4];
  v17 = a2[5];
  v18 = swift_getObjectType();
  (*(v17 + 8))(a2, &off_283BD5418, 0, v18, v17);

  aBlock[0] = 0;
  if ([v13 requestWorkWithPriority:2 error:aBlock])
  {
    v19 = aBlock[0];
  }

  else
  {
    v20 = aBlock[0];
    v21 = sub_22892DE38();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_2288FF978(void *a1)
{
  v2 = v1;
  sub_22892E268();
  v4 = a1;
  v5 = sub_22892E258();
  v6 = objc_allocWithZone(type metadata accessor for SleepingSampleChangeManager());
  v7 = v4;
  v8 = sub_2288E3CF0(v7, 0, 0, v5, 1.0);
  v9 = objc_allocWithZone(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache());
  v10 = sub_2288FEFA8(v8, sub_2288DEC64, 0, v9);
  v11 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_currentValueCache;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_currentValueCache] = v10;
  v12 = v7;
  v13 = [v12 daemon];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 behavior];

    v16 = [v15 isAppleWatch];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() sharedWidgetService];
  v18 = sub_22891DF84(v16);

  v79 = v11;
  v19 = *&v2[v11];
  v20 = v17;

  v21 = v19;
  v22 = [v12 cloudSyncManager];
  v83[3] = &type metadata for BalanceWidgetTimelineReloader;
  v83[4] = &off_283BD4B30;
  LOBYTE(v83[0]) = v16;
  v83[1] = v20;
  v83[2] = v18;
  v23 = type metadata accessor for BalanceWidgetSchedulingManager();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation] = 0;
  sub_2288D3D58(v83, &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader]);
  v25 = &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider];
  *v25 = v21;
  *(v25 + 1) = &protocol witness table for SleepingSampleDaySummaryCurrentValueCache;
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_cloudSyncManager] = v22;
  v26 = v12;
  v27 = v22;
  v28 = sub_22892F098();
  v29 = HKCreateSerialDispatchQueue();

  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue] = v29;
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadReasons] = MEMORY[0x277D84FA0];
  v30 = &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_didBecomeReady];
  *v30 = 0;
  *(v30 + 1) = 0;
  v82.receiver = v24;
  v82.super_class = v23;
  v31 = objc_msgSendSuper2(&v82, sel_init);
  [v26 registerProfileReadyObserver:v31 queue:0];
  v32 = *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = objc_allocWithZone(MEMORY[0x277CCDD98]);
  aBlock[4] = sub_2289000DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288F3CC4;
  aBlock[3] = &block_descriptor_6;
  v35 = _Block_copy(aBlock);

  v36 = [v34 initWithMode:1 clock:1 queue:v32 delay:v35 block:1.0];
  _Block_release(v35);

  __swift_destroy_boxed_opaque_existential_0(v83);

  v37 = *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation];
  *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation] = v36;

  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_widgetSchedulingManager] = v31;
  v38 = sub_2288E34E8(v26);
  v39 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager] = v38;
  sub_2288BC0FC(0, &unk_2813DEC30, 0x277CCD570);
  sub_22892F3D8();
  v40 = objc_allocWithZone(MEMORY[0x277D10718]);
  v41 = sub_22892F098();

  v42 = [v40 initWithCategory:105 domainName:v41 profile:v26];

  type metadata accessor for ImbalanceUserNotificationCoordinator();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v43 = v42;
  v44 = sub_22892F488();
  v45 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v44 healthDataSource:v26];

  v46 = v26;
  v47 = sub_2288DDCCC(v46, v43, v45);

  v48 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_imbalanceUserNotificationCoordinator;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_imbalanceUserNotificationCoordinator] = v47;
  sub_2288DB354();
  v50 = v49;
  v51 = 0;
  if (v50)
  {
    sub_2289000FC();
    v78 = type metadata accessor for SleepResultsNotificationManagerHealthDelegate();
    v52 = *&v2[v79];
    v53 = *&v2[v39];
    v54 = v46;
    v55 = v43;
    v56 = v43;
    v57 = v52;
    v58 = v53;
    v59 = sub_22892E258();
    v60 = *&v2[v48];
    v61 = v60;
    v62 = v56;
    v43 = v55;
    v63 = sub_2288FF324(v54, v62, v57, v58, v59, v60, sub_22891E83C, 0, sub_22891E8A8, 0, v78);

    v51 = sub_2288FE870(v54, v63);
  }

  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepResultsNotificationManager] = v51;
  v64 = [v46 daemon];
  if (!v64)
  {

    goto LABEL_10;
  }

  v65 = v64;
  v66 = [v64 behavior];
  v67 = [v66 isCompanionCapable];

  if ((v67 & 1) == 0)
  {
LABEL_10:
    v71 = 0;
    goto LABEL_11;
  }

  v68 = sub_22892F488();
  v69 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v68 healthDataSource:v46];

  v70 = objc_allocWithZone(type metadata accessor for AnalyticsDailyMultiEventManager());
  v71 = sub_228908770(v46, v69, 0, 0);
LABEL_11:
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_analyticsDailyEventManager] = v71;
  v72 = *&v2[v48];
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  type metadata accessor for UITriggerObserver();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_2289000F4;
  *(v74 + 24) = v73;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_uiTriggerObserver] = v74;
  v80.receiver = v2;
  v80.super_class = type metadata accessor for ProductionProfileExtension();
  v75 = v72;
  v76 = objc_msgSendSuper2(&v80, sel_init);

  return v76;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289000FC()
{
  if (!qword_27D85BBF0)
  {
    type metadata accessor for SleepResultsNotificationManagerHealthDelegate();
    v0 = type metadata accessor for SleepResultsNotificationManager();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85BBF0);
    }
  }
}

void sub_228900198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2289001FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_22892F688();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228900268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289002D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2289174A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228900D08(v5);
  *a1 = v2;
  return result;
}

unint64_t BalanceWidgetReloadReason.description.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t BalanceWidgetReloadReason.hashValue.getter()
{
  v1 = *v0;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v1);
  return sub_22892F8C8();
}

unint64_t sub_228900424()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t sub_228900480()
{
  result = qword_2813DFDD0;
  if (!qword_2813DFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFDD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BalanceWidgetReloadReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BalanceWidgetReloadReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22890064C(uint64_t a1, int a2)
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