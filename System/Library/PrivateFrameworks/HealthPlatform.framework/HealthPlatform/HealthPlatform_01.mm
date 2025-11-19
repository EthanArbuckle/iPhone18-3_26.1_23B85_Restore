uint64_t sub_228406468(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855CFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 2;
  v16 = a1[2];
  if (v16)
  {
    v59 = v4;
    v60 = v15;
    v61 = v13;
    v63 = result;
    v64 = v6;
    v65 = v5;
    v18 = a1[3];
    v19 = a1[4];

    if (v19)
    {
      v57 = sub_2284D5F74();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v57 = 7104878;
    }

    v66 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v22 = sub_22855CABC();
    v23 = __swift_project_value_buffer(v22, qword_280DEEC98);

    v58 = v23;
    v24 = sub_22855CA8C();
    v25 = sub_22855D6AC();

    v26 = os_log_type_enabled(v24, v25);
    v62 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v56 = v16;
      v28 = v27;
      v29 = swift_slowAlloc();
      *v28 = 136446466;
      v67 = v29;
      aBlock = 91;
      v69 = 0xE100000000000000;
      v30 = sub_22855E34C();
      v55 = v18;
      MEMORY[0x22AAB92A0](v30);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v31 = sub_2283F8938(aBlock, v69, &v67);

      *(v28 + 4) = v31;
      v18 = v55;
      *(v28 + 12) = 2080;
      v32 = sub_2283F8938(v57, v21, &v67);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2283ED000, v24, v25, "%{public}s Cancelling legacy generation for progress %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v29, -1, -1);
      v33 = v28;
      v16 = v56;
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    else
    {
    }

    sub_228416CF8(v16);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    v34 = v66;
    v35 = v66[5];
    if (v35)
    {

      v36 = v35;
      v37 = sub_22855CA8C();
      v38 = sub_22855D6AC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v16;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 136446210;
        v67 = v41;
        aBlock = 91;
        v69 = 0xE100000000000000;
        v42 = sub_22855E34C();
        v43 = v18;
        MEMORY[0x22AAB92A0](v42);

        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        MEMORY[0x22AAB92A0](*(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
        MEMORY[0x22AAB92A0](93, 0xE100000000000000);
        v44 = sub_2283F8938(aBlock, v69, &v67);

        *(v40 + 4) = v44;
        v18 = v43;
        _os_log_impl(&dword_2283ED000, v37, v38, "%{public}s Cancelling original legacy generation progress", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        v45 = v41;
        v34 = v66;
        MEMORY[0x22AABAD40](v45, -1, -1);
        v46 = v40;
        v16 = v39;
        MEMORY[0x22AABAD40](v46, -1, -1);
      }

      v34[5] = 0;
      [v36 cancel];
    }

    v47 = *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v48 = swift_allocObject();
    *(v48 + 16) = v16;
    *(v48 + 24) = v18;
    v72 = sub_2284D70D4;
    v73 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_228401F54;
    v71 = &block_descriptor_18;
    v49 = _Block_copy(&aBlock);

    v50 = v60;
    sub_22855CFDC();
    v67 = MEMORY[0x277D84F90];
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v51 = v16;
    v52 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v52);
    v53 = v62;
    v54 = v65;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v50, v53, v49);
    _Block_release(v49);
    sub_228416CF8(v51);
    (*(v64 + 8))(v53, v54);
    (*(v61 + 8))(v50, v63);
  }

  return result;
}

uint64_t sub_228406B60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228406B98(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2284856A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2284896F4();
      goto LABEL_16;
    }

    sub_22848A8E0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22855E22C();
  sub_22855D20C();
  result = sub_22855E27C();
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

      result = sub_22855E15C();
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
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

id _s14HealthPlatform0A15AppPluginSourceC24allowedBundleIdentifiersShySSGSgyFZ_0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleInternalInstall];

    if (!v2)
    {
      return 0;
    }

    v3 = *MEMORY[0x277CCE378];
    sub_22855D1AC();
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v5 = sub_22855D17C();

    v6 = [v4 initWithSuiteName_];

    if (!v6)
    {
      return 0;
    }

    v7 = sub_22855D17C();
    v8 = [v6 arrayForKey_];

    if (!v8)
    {
      return 0;
    }

    v9 = sub_22855D3AC();

    v10 = sub_228464940(v9);

    if (v10)
    {
      v11 = sub_228406280(v10);

      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(void (**(*a1)())(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a1;
  v11 = sub_22855BF5C();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855C06C();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v63 = v17;
  v64 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v58 - v18;
  sub_228407690();
  v19 = swift_allocObject();
  *(v19 + 28) = 0;
  *(v19 + 16) = MEMORY[0x277D84F90];
  *(v19 + 24) = 0;
  *(v6 + 16) = v19;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v20 = qword_280DEEBA0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_22855CABC();
  __swift_project_value_buffer(v21, qword_280DEEBA8);
  v22 = sub_22855CA8C();
  v23 = sub_22855D6AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2283ED000, v22, v23, "Setting up for bundle loading...", v24, 2u);
    MEMORY[0x22AABAD40](v24, -1, -1);
  }

  v25 = sub_22855CA8C();
  v26 = sub_22855D6AC();

  if (os_log_type_enabled(v25, v26))
  {
    v59 = a2;
    v60 = v6;
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v71 = v27;
    *v6 = 136315138;
    v28 = *(a4 + 16);
    if (v28)
    {
      a2 = sub_22840770C(*(a4 + 16), 0);
      v29 = sub_2284077A8(v70, (a2 + 32), v28, a4);
      sub_228407958();
      if (v29 != v28)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {

      a2 = MEMORY[0x277D84F90];
    }

    v70[0] = a2;
    v30 = MEMORY[0x277D837D0];
    sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228407900(&qword_280DEE7C0, &qword_280DEE7C8, v30);
    v31 = sub_22855D15C();
    v33 = v32;

    v34 = sub_2283F8938(v31, v33, &v71);

    *(v6 + 4) = v34;
    _os_log_impl(&dword_2283ED000, v25, v26, "Disabled identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);

    a2 = v59;
    v6 = v60;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_13:

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71 = v39;
      *v38 = 136315138;
      v40 = *(a5 + 16);
      if (v40)
      {
        a2 = sub_22840770C(*(a5 + 16), 0);
        v41 = sub_2284077A8(v70, (a2 + 32), v40, a5);
        sub_228407958();
        if (v41 != v40)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {

        a2 = MEMORY[0x277D84F90];
      }

      v70[0] = a2;
      v53 = MEMORY[0x277D837D0];
      sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_228407900(&qword_280DEE7C0, &qword_280DEE7C8, v53);
      v54 = sub_22855D15C();
      v56 = v55;

      v57 = sub_2283F8938(v54, v56, &v71);

      *(v38 + 4) = v57;
      _os_log_impl(&dword_2283ED000, v35, v36, "PLUGIN ALLOW LIST ENABLED; limiting plugins to: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v38, -1, -1);

      a2 = v37;
      v42 = v69;
      if (v69)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_9:

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_18:
  v42 = v69;
  if (!v69)
  {
LABEL_19:
    type metadata accessor for StorageLocations();
    v43 = v64;
    static StorageLocations.rootDirectory.getter();
    v70[0] = 0xD000000000000026;
    v70[1] = 0x800000022856F190;
    v45 = v65;
    v44 = v66;
    v46 = v62;
    (*(v65 + 104))(v62, *MEMORY[0x277CC91C0], v66);
    sub_2283F79A4();
    v47 = v61;
    sub_22855C05C();
    (*(v45 + 8))(v46, v44);
    v49 = v67;
    v48 = v68;
    (*(v67 + 8))(v43, v68);
    v50 = *(v49 + 32);
    v50(v43, v47, v48);
    v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    a2 = swift_allocObject();
    v50((a2 + v51), v43, v48);
    v42 = sub_228462AB8;
  }

LABEL_20:
  *(v6 + 24) = v42;
  *(v6 + 32) = a2;
  return v6;
}

uint64_t sub_228407608()
{
  v1 = sub_22855C06C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228407690()
{
  if (!qword_280DED070)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED070);
    }
  }
}

void *sub_22840770C(uint64_t a1, uint64_t a2)
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

  sub_2283F783C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2284077A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_228407900(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283F783C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HealthAppPluginSource.plugin(name:allowDynamicFallback:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (sub_22855D28C())
  {
  }

  else
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);

    MEMORY[0x22AAB92A0](0x6C7068746C616568, 0xEC0000006E696775);
  }

  v5 = v1[2];
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock((v5 + 28));
  sub_2284084EC((v5 + 16), a1);
  os_unfair_lock_unlock((v5 + 28));
}

void sub_228407AD0(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v125 = a3;
  v107 = a6;
  LODWORD(v110) = a5;
  v122 = a4;
  v123 = a7;
  v116 = sub_22855BF5C();
  v118 = *(v116 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22855C06C();
  v117 = *(v115 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = &v105 - v15;
  v121 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v119 = *(v121 - 8);
  v16 = *(v119 + 8);
  v17 = MEMORY[0x28223BE20](v121);
  v109 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v105 - v20;
  MEMORY[0x28223BE20](v19);
  v114 = (&v105 - v21);
  v112 = a1;
  v22 = *a1;
  v23 = *(*a1 + 2) + 1;
  v24 = (v22 + 72);
  while (--v23)
  {
    v25 = *(v24 - 5);
    v26 = *(v24 - 4);
    v28 = *(v24 - 3);
    v27 = *(v24 - 2);
    v30 = *(v24 - 1);
    v29 = *v24;
    if (v25 == a2 && v26 == v125)
    {
      v25 = a2;
LABEL_21:
      v45 = v123;
      *v123 = v25;
      v45[1] = v26;
      v45[2] = v28;
      v45[3] = v27;
      v45[4] = v30;
      v45[5] = v29;

      v46 = v28;

LABEL_22:
      swift_unknownObjectRetain();
      return;
    }

    v24 += 6;
    if (sub_22855E15C())
    {
      goto LABEL_21;
    }
  }

  v32 = v120;
  sub_22840857C(a2, v125, v120);
  v33 = v121;
  if ((*(v119 + 6))(v32, 1, v121) == 1)
  {
    sub_22840BD38(v32);
    if (v110)
    {
      v34 = v112;
      v35 = v124;
      sub_22846140C(v112);
      if (v35)
      {
        return;
      }

      v124 = 0;
      v36 = *(*v34 + 2) + 1;
      v37 = (*v34 + 72);
      while (--v36)
      {
        v38 = *(v37 - 5);
        v39 = *(v37 - 4);
        v41 = *(v37 - 3);
        v40 = *(v37 - 2);
        v43 = *(v37 - 1);
        v42 = *v37;
        if (v38 == a2 && v39 == v125)
        {
          v38 = a2;
LABEL_34:
          v103 = v123;
          *v123 = v38;
          v103[1] = v39;
          v103[2] = v41;
          v103[3] = v40;
          v103[4] = v43;
          v103[5] = v42;

          v104 = v41;

          goto LABEL_22;
        }

        v37 += 6;
        if (sub_22855E15C())
        {
          goto LABEL_34;
        }
      }
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v64 = v125;
    *v65 = a2;
    v65[1] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v47 = v114;
    sub_22840875C(v32, v114);
    v48 = *(v33 + 24);
    v49 = v47[1];
    v106 = *v47;
    v126 = v106;
    v127 = v49;
    v50 = v118;
    v52 = v118 + 104;
    v51 = *(v118 + 104);
    v53 = v111;
    LODWORD(v120) = *MEMORY[0x277CC91D8];
    v54 = v116;
    v105 = v51;
    v51(v111);
    v55 = sub_2283F79A4();

    v110 = v48;
    v56 = v113;
    v125 = v55;
    sub_22855C05C();
    v58 = *(v50 + 8);
    v57 = v50 + 8;
    v119 = v58;
    v58(v53, v54);

    v59 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v60 = sub_22855BFBC();
    v61 = [v59 initWithURL_];

    v62 = v117 + 8;
    v63 = *(v117 + 8);
    v63(v56, v115);
    if (v61)
    {
      sub_228408938(v61, v112, v123);
      sub_228408700(v47);
    }

    else
    {
      v118 = v57;
      v66 = v116;
      v123 = v63;
      v124 = v52;
      v122 = v49;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v117 = v62;
      v67 = sub_22855CABC();
      __swift_project_value_buffer(v67, qword_280DEEBD0);
      v68 = v108;
      sub_228408514(v47, v108, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v69 = v47;
      v70 = v109;
      sub_228408514(v69, v109, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v71 = sub_22855CA8C();
      v72 = sub_22855D68C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v128 = v112;
        *v73 = 136315650;
        v126 = v107;
        swift_getMetatypeMetadata();
        v74 = sub_22855D1BC();
        v76 = sub_2283F8938(v74, v75, &v128);

        *(v73 + 4) = v76;
        LODWORD(v107) = v72;
        *(v73 + 12) = 2080;
        v77 = *(v68 + 16);
        v78 = *(v68 + 24);

        sub_228408700(v68);
        v79 = sub_2283F8938(v77, v78, &v128);
        v80 = v116;

        *(v73 + 14) = v79;
        *(v73 + 22) = 2080;
        v81 = *(v121 + 24);
        v82 = v70[1];
        v126 = *v70;
        v127 = v82;
        v83 = v53;
        v84 = v53;
        v85 = v80;
        v86 = v80;
        v87 = v105;
        v105(v83, v120, v85);

        v88 = v113;
        sub_22855C05C();
        v119(v84, v86);

        sub_228463074(&qword_27D83FC20, MEMORY[0x277CC9260]);
        v53 = v84;
        v89 = v115;
        v90 = sub_22855E11C();
        v92 = v91;
        (v123)(v88, v89);
        sub_228408700(v70);
        v93 = sub_2283F8938(v90, v92, &v128);

        *(v73 + 24) = v93;
        _os_log_impl(&dword_2283ED000, v71, v107, "[%s] Known URL for bundle identifier %s appears invalid; cannot load bundle at that location: %s", v73, 0x20u);
        v94 = v112;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v94, -1, -1);
        v95 = v73;
        v66 = v116;
        MEMORY[0x22AABAD40](v95, -1, -1);

        v96 = v122;
      }

      else
      {

        sub_228408700(v70);
        sub_228408700(v68);
        v88 = v113;
        v96 = v122;
        v87 = v105;
      }

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      v98 = v97;
      v126 = v106;
      v127 = v96;
      v87(v53, v120, v66);

      v99 = v114;
      sub_22855C05C();
      v119(v53, v66);

      v100 = sub_22855C01C();
      v102 = v101;
      (v123)(v88, v115);
      *v98 = v100;
      v98[1] = v102;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_228408700(v99);
    }
  }
}

uint64_t sub_228408514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22840857C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + 40);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_228408514(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v12, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v16 = *v12 == a1 && v12[1] == a2;
      if (v16 || (sub_22855E15C() & 1) != 0)
      {
        sub_22840875C(v12, a3);
        v17 = 0;
        return (*(v8 + 56))(a3, v17, 1, v7);
      }

      ++v15;
      result = sub_228408700(v12);
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v17 = 1;
    return (*(v8 + 56))(a3, v17, 1, v7);
  }

  return result;
}

uint64_t sub_228408700(uint64_t a1)
{
  v2 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22840875C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284087D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C06C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22840888C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22855C06C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_228408938(void *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v96[1] = *MEMORY[0x277D85DE8];
  v9 = *v5;
  if (HKIsUnitTesting())
  {
    v10 = [objc_opt_self() callStackSymbols];
    v11 = sub_22855D3AC();

    if (*(v11 + 16) >= 5uLL)
    {
      v12 = 5;
    }

    else
    {
      v12 = *(v11 + 16);
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v14 = v13;
    if (*(v11 + 16) == v12)
    {
    }

    else
    {
      sub_2284438D8(v11, v11 + 32, 0, (2 * v12) | 1);
    }

    *v14 = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v16 = [a1 bundleIdentifier];
  if (v16)
  {
    v91 = a1;
    v92 = a3;
    v90 = v9;
    v17 = v16;
    v93 = sub_22855D1AC();
    v94 = v18;

    v89 = a2;
    v19 = *a2;
    v20 = (*a2 + 72);
    v88 = v19;
    v21 = *(v19 + 2) + 1;
    while (--v21)
    {
      v22 = *(v20 - 5);
      v23 = *(v20 - 4);
      v25 = *(v20 - 3);
      v24 = *(v20 - 2);
      v26 = *(v20 - 1);
      v27 = *v20;
      if (v24 == v93 && v26 == v94)
      {
        v24 = v93;
LABEL_29:

        v60 = v25;

        swift_unknownObjectRetain();

        *v92 = v22;
        v92[1] = v23;
        v92[2] = v60;
        v92[3] = v24;
        v92[4] = v26;
        v92[5] = v27;
        goto LABEL_45;
      }

      v20 += 6;
      if (sub_22855E15C())
      {
        goto LABEL_29;
      }
    }

    if (sub_228409270(v93, v94, *(v5 + 48)))
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v45 = sub_22855CABC();
      __swift_project_value_buffer(v45, qword_280DEEBD0);
      v46 = v91;
      v47 = sub_22855CA8C();
      v48 = sub_22855D68C();

      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_44;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v96[0] = v50;
      *v49 = 136315394;
      v95[0] = v90;
      swift_getMetatypeMetadata();
      v51 = sub_22855D1BC();
      v53 = sub_2283F8938(v51, v52, v96);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = [v46 bundlePath];
      v55 = sub_22855D1AC();
      v57 = v56;

      v58 = sub_2283F8938(v55, v57, v96);

      *(v49 + 14) = v58;
      v59 = "[%s] Ignoring plugin bundle (disabled): %s";
LABEL_43:
      _os_log_impl(&dword_2283ED000, v47, v48, v59, v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v50, -1, -1);
      MEMORY[0x22AABAD40](v49, -1, -1);
LABEL_44:

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      *v85 = v93;
      v85[1] = v94;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_45;
    }

    v61 = *(v5 + 56);
    if (v61 && (sub_228409270(v93, v94, v61) & 1) == 0)
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v75 = sub_22855CABC();
      __swift_project_value_buffer(v75, qword_280DEEBD0);
      v76 = v91;
      v47 = sub_22855CA8C();
      v48 = sub_22855D68C();

      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_44;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v95[0] = v50;
      *v49 = 136315394;
      v77 = sub_228460FD8();
      v79 = sub_2283F8938(v77, v78, v95);

      *(v49 + 4) = v79;
      *(v49 + 12) = 2080;
      v80 = [v76 bundlePath];
      v81 = sub_22855D1AC();
      v83 = v82;

      v84 = sub_2283F8938(v81, v83, v95);

      *(v49 + 14) = v84;
      v59 = "[%s] Ignoring plugin bundle (not in allow list): %s";
      goto LABEL_43;
    }

    v62 = v91;
    HealthAppPluginInfo.init(bundle:)(v62, v95);
    if (v4)
    {
      goto LABEL_45;
    }

    v64 = v95[0];
    v63 = v95[1];
    v65 = v95[2];
    v66 = v95[3];
    v67 = v95[4];
    v68 = v95[5];
    v95[0] = 0;
    if (![v62 loadAndReturnError_])
    {
      v87 = v95[0];
      sub_22855BF3C();

      swift_willThrow();
      swift_unknownObjectRelease();

LABEL_8:

      goto LABEL_45;
    }

    v69 = v95[0];

    v70 = v65;

    swift_unknownObjectRetain();
    v71 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_228409BF8(0, *(v88 + 2) + 1, 1, v88);
    }

    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_228409BF8((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[48 * v73];
    *(v74 + 4) = v64;
    *(v74 + 5) = v63;
    *(v74 + 6) = v70;
    *(v74 + 7) = v66;
    *(v74 + 8) = v67;
    *(v74 + 9) = v68;
    *v89 = v71;
    *v92 = v64;
    v92[1] = v63;
    v92[2] = v70;
    v92[3] = v66;
    v92[4] = v67;
    v92[5] = v68;
  }

  else
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v29 = sub_22855CABC();
    __swift_project_value_buffer(v29, qword_280DEEBD0);
    v30 = a1;
    v31 = sub_22855CA8C();
    v32 = sub_22855D68C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v96[0] = v34;
      *v33 = 136315394;
      v95[0] = v9;
      swift_getMetatypeMetadata();
      v35 = sub_22855D1BC();
      v37 = sub_2283F8938(v35, v36, v96);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v30 bundlePath];
      v39 = sub_22855D1AC();
      v41 = v40;

      v42 = sub_2283F8938(v39, v41, v96);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2283ED000, v31, v32, "[%s] Ignoring plugin bundle (no bundle identifier): %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    *v43 = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v44 = v30;
  }

LABEL_45:
  v86 = *MEMORY[0x277D85DE8];
}

uint64_t sub_228409270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22855E22C();
  sub_22855D20C();
  v7 = sub_22855E27C();
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
    if (v12 || (sub_22855E15C() & 1) != 0)
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

void HealthAppPluginInfo.init(bundle:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22855C06C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 bundleIdentifier];
  if (!v9)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22855CABC();
    __swift_project_value_buffer(v27, qword_280DEEBD0);
    v28 = a1;
    v29 = sub_22855CA8C();
    v30 = sub_22855D69C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136315138;
      v33 = [v28 bundlePath];
      v34 = sub_22855D1AC();
      v36 = v35;

      v37 = sub_2283F8938(v34, v36, &v76);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2283ED000, v29, v30, "Plugin bundle at %s has no bundle identifier.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AABAD40](v32, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }

    goto LABEL_20;
  }

  v10 = v9;
  v11 = sub_22855D1AC();
  v13 = v12;

  if (![a1 principalClass])
  {

    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v38 = sub_22855CABC();
    __swift_project_value_buffer(v38, qword_280DEEBD0);
    v28 = a1;
    v29 = sub_22855CA8C();
    v39 = sub_22855D69C();

    if (os_log_type_enabled(v29, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v76 = v41;
      *v40 = 136315138;
      v42 = [v28 bundlePath];
      v43 = sub_22855D1AC();
      v45 = v44;

      v46 = sub_2283F8938(v43, v45, &v76);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_2283ED000, v29, v39, "Plugin bundle at %s has no principal class.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v40, -1, -1);
    }

LABEL_20:

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    *v47 = v28;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v75 = v11;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v15 = swift_conformsToProtocol2();
  if (v15)
  {
    v16 = ObjCClassMetadata == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v48 = v15;
    v74 = v13;
    v49 = [a1 bundleURL];
    sub_22855C00C();

    v73 = sub_22855BFAC();
    v51 = v50;
    (*(v5 + 8))(v8, v4);
    v52 = (*(v48 + 8))(ObjCClassMetadata, v48);
LABEL_21:
    *a2 = v73;
    a2[1] = v51;
    v53 = v74;
    v54 = v75;
    a2[2] = a1;
    a2[3] = v54;
    a2[4] = v53;
    a2[5] = v52;
    return;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && ObjCClassMetadata)
  {
    v18 = v17;
    v74 = v13;
    v19 = [a1 bundleURL];
    sub_22855C00C();

    v73 = sub_22855BFAC();
    v51 = v20;
    v21 = (*(v5 + 8))(v8, v4);
    v72 = &v72;
    v22 = *(ObjCClassMetadata - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 8))(ObjCClassMetadata, v18);
    v26 = sub_22855E14C();
    (*(v22 + 8))(v25, ObjCClassMetadata);
    v52 = v26;
    goto LABEL_21;
  }

  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v55 = sub_22855CABC();
  __swift_project_value_buffer(v55, qword_280DEEBD0);
  v56 = a1;
  v57 = sub_22855CA8C();
  v58 = sub_22855D68C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76 = v60;
    *v59 = 136315394;
    v61 = [v56 bundlePath];
    v62 = sub_22855D1AC();
    v64 = v63;

    v65 = sub_2283F8938(v62, v64, &v76);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    v66 = sub_22855E34C();
    v68 = sub_2283F8938(v66, v67, &v76);

    *(v59 + 14) = v68;
    _os_log_impl(&dword_2283ED000, v57, v58, "Plugin bundle at %s has a principal class (%s) of an unknown type; cannot instantiate.", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v60, -1, -1);
    MEMORY[0x22AABAD40](v59, -1, -1);
  }

  type metadata accessor for HealthAppPluginInfo.LoadError(0);
  sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
  swift_allocError();
  v70 = v69;
  *v69 = sub_22855E34C();
  v70[1] = v71;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

char *sub_228409BF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DED038, &type metadata for HealthAppPluginInfo, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_228409D54()
{
  if (!qword_280DE9390)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22855C37C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9390);
    }
  }
}

uint64_t sub_228409DC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2283F0D04(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_228409E5C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v4 = sub_22855E27C();

  return sub_22840A110(a1, v4);
}

uint64_t sub_228409EEC()
{
  v0 = objc_opt_self();
  v1 = [v0 currentQueue];
  v2 = [v0 mainQueue];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DE9418, 0x277CCABD8);
      v4 = sub_22855D9AC();

      if ((v4 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v5 = sub_228400874();
      v6 = [v5 viewContext];

      return v6;
    }

    v3 = v1;
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id NSManagedObjectContext.feedItemsController(sortDescriptors:predicate:sectionNameKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  [v7 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v8 = sub_22855D39C();
  [v7 setSortDescriptors_];

  if (a4)
  {
    a4 = sub_22855D17C();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:v4 sectionNameKeyPath:a4 cacheName:0];

  return v9;
}

unint64_t sub_22840A110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22855D1AC();
      v9 = v8;
      if (v7 == sub_22855D1AC() && v9 == v10)
      {
        break;
      }

      v12 = sub_22855E15C();

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

id _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_22855D17C();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    [v2 setReturnsObjectsAsFaults_];
  }

  return v2;
}

uint64_t sub_22840A300(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22840A348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22840A390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22840A3D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(uint64_t a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = MEMORY[0x277D837D0];
  v3 = sub_22840A7C8();
  *(v2 + 64) = v3;
  *(v2 + 32) = 0x73656C69666F7270;
  *(v2 + 40) = 0xE800000000000000;
  result = sub_22855D62C();
  v5 = *(a1 + 16);
  if (v5)
  {
    v16 = result;
    v17 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v6 = (a1 + 32);
    while (1)
    {
      v10 = *v6++;
      v9 = v10;
      if (v10)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_228560570;
        *(v11 + 56) = MEMORY[0x277D837D0];
        *(v11 + 64) = v3;
        *(v11 + 32) = 0x73656C69666F7270;
        *(v11 + 40) = 0xE800000000000000;
        v12 = v9;
        result = [v12 identifier];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v13 = result;
        *(v11 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
        *(v11 + 104) = sub_22840A81C();
        *(v11 + 72) = v13;
        sub_22855D62C();
      }

      else
      {
        v7 = v16;
      }

      sub_22855DD1C();
      v8 = *(v17 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      if (!--v5)
      {
        v14 = sub_22855D39C();

        v15 = [objc_opt_self() orPredicateWithSubpredicates_];

        return v15;
      }
    }
  }

  return result;
}

void sub_22840A70C()
{
  if (!qword_280DED008)
  {
    sub_22840A764();
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED008);
    }
  }
}

unint64_t sub_22840A764()
{
  result = qword_280DEEB20;
  if (!qword_280DEEB20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DEEB20);
  }

  return result;
}

unint64_t sub_22840A7C8()
{
  result = qword_280DED2B0;
  if (!qword_280DED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2B0);
  }

  return result;
}

unint64_t sub_22840A81C()
{
  result = qword_280DED0B8;
  if (!qword_280DED0B8)
  {
    sub_2283EF310(255, &unk_280DED0C0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED0B8);
  }

  return result;
}

uint64_t UserInterface.identifier.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 4)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v3 = a1;
  }

  if (a3 <= 2u)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  sub_22840A934(a1, a2, a3);
  return v4;
}

uint64_t sub_22840A934(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_22840A968(uint64_t *a1@<X8>)
{
  v2 = 0x656D6F726863;
  if (*v1)
  {
    v2 = 0x656D6F7268436F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FeedItem.searchSection.getter()
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v0 searchSectionRawValue]);
  if (result == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if (result >= 0xDu)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

uint64_t HealthAppPluginSource.tabProvidingPlugins()()
{
  v44 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *&v46 = &v40 - v4;
  v5 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v45 = v0;
  v14 = v0[5];
  v15 = *(v14 + 16);
  v48 = v1;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    *&v47 = v5;
    while (v17 < *(v14 + 16))
    {
      v19 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v20 = *(v49 + 72);
      sub_228408514(v14 + v19 + v20 * v17, v13, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v13[*(v5 + 36)] == 1)
      {
        sub_22840875C(v13, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v18 + 16) + 1, 1);
          v18 = v50;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22840B0EC(v22 > 1, v23 + 1, 1);
          v18 = v50;
        }

        *(v18 + 16) = v23 + 1;
        result = sub_22840875C(v54, v18 + v19 + v23 * v20);
        v5 = v47;
      }

      else
      {
        result = sub_228408700(v13);
      }

      if (v16 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_13:
  v43 = *(v18 + 16);
  if (v43)
  {
    v24 = 0;
    v54 = MEMORY[0x277D84F90];
    v25 = v46;
    v26 = v41;
    v42 = v18;
    while (v24 < *(v18 + 16))
    {
      sub_228408514(v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v24, v26, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = v45;
      v30 = sub_22840B13C(v27, v28, v25);
      v31 = v29[2];
      MEMORY[0x28223BE20](v30);
      *(&v40 - 6) = v27;
      *(&v40 - 5) = v28;
      *(&v40 - 4) = v25;
      *(&v40 - 3) = v29;
      *(&v40 - 16) = 1;
      *(&v40 - 1) = v44;
      os_unfair_lock_lock((v31 + 28));
      v32 = v48;
      sub_22840B2D8((v31 + 16), &v50);
      if (v32)
      {
        os_unfair_lock_unlock((v31 + 28));

        sub_22840BD38(v25);
        sub_228408700(v26);

        return v54;
      }

      v48 = 0;
      os_unfair_lock_unlock((v31 + 28));
      sub_22840BD38(v25);
      v33 = v50;
      v34 = v52;
      v46 = v53;
      v47 = v51;
      sub_228408700(v26);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v54 + 2) + 1, 1, v54);
        v54 = result;
      }

      v36 = *(v54 + 2);
      v35 = *(v54 + 3);
      if (v36 >= v35 >> 1)
      {
        result = sub_228409BF8((v35 > 1), v36 + 1, 1, v54);
        v54 = result;
      }

      v37 = v54;
      *(v54 + 2) = v36 + 1;
      v38 = &v37[48 * v36];
      *(v38 + 4) = v33;
      ++v24;
      v39 = v46;
      *(v38 + 40) = v47;
      *(v38 + 7) = v34;
      *(v38 + 4) = v39;
      v18 = v42;
      if (v43 == v24)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_24:

  return v54;
}

size_t sub_22840AEF8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
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

size_t sub_22840B0EC(size_t a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED030, type metadata accessor for HealthAppPluginSource.KnownBundle, type metadata accessor for HealthAppPluginSource.KnownBundle);
  *v3 = result;
  return result;
}

uint64_t sub_22840B13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 40);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      sub_228408514(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v12, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v16 = *(v12 + 2) == a1 && *(v12 + 3) == a2;
      if (v16 || (sub_22855E15C() & 1) != 0)
      {
        sub_22840875C(v12, a3);
        v17 = 0;
        return (*(v8 + 56))(a3, v17, 1, v7);
      }

      ++v15;
      result = sub_228408700(v12);
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v17 = 1;
    return (*(v8 + 56))(a3, v17, 1, v7);
  }

  return result;
}

void sub_22840B318(char **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void (*a8)(char *, uint64_t)@<X8>)
{
  v107 = a7;
  LODWORD(v110) = a6;
  v112 = a5;
  v122 = a4;
  v126 = a3;
  v124 = a8;
  v117 = sub_22855BF5C();
  v119 = *(v117 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x28223BE20](v117);
  v111 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22855C06C();
  v118 = *(v116 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = (&v106 - v16);
  v123 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v120 = *(v123 - 8);
  v17 = *(v120 + 64);
  v18 = MEMORY[0x28223BE20](v123);
  v109 = (&v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v106 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = (&v106 - v22);
  v113 = a1;
  v23 = *a1;
  v24 = *(*a1 + 2) + 1;
  v25 = (v23 + 72);
  while (--v24)
  {
    v26 = *(v25 - 5);
    v27 = *(v25 - 4);
    v29 = *(v25 - 3);
    v28 = *(v25 - 2);
    v30 = *(v25 - 1);
    v31 = *v25;
    if (v28 == a2 && v30 == v126)
    {
      v28 = a2;
LABEL_21:
      v46 = v124;
      *v124 = v26;
      *(v46 + 1) = v27;
      *(v46 + 2) = v29;
      *(v46 + 3) = v28;
      *(v46 + 4) = v30;
      *(v46 + 5) = v31;

      v47 = v29;

LABEL_22:
      swift_unknownObjectRetain();
      return;
    }

    v25 += 6;
    if (sub_22855E15C())
    {
      goto LABEL_21;
    }
  }

  v33 = v121;
  sub_22840D038(v122, v121);
  v34 = v123;
  if ((*(v120 + 48))(v33, 1, v123) == 1)
  {
    sub_22840BD38(v33);
    if (v110)
    {
      v35 = v113;
      v36 = v125;
      sub_22846140C(v113);
      if (v36)
      {
        return;
      }

      v125 = 0;
      v37 = *(*v35 + 2) + 1;
      v38 = (*v35 + 72);
      while (--v37)
      {
        v39 = *(v38 - 5);
        v40 = *(v38 - 4);
        v42 = *(v38 - 3);
        v41 = *(v38 - 2);
        v44 = *(v38 - 1);
        v43 = *v38;
        if (v41 == a2 && v44 == v126)
        {
          v41 = a2;
LABEL_34:
          v104 = v124;
          *v124 = v39;
          *(v104 + 1) = v40;
          *(v104 + 2) = v42;
          *(v104 + 3) = v41;
          *(v104 + 4) = v44;
          *(v104 + 5) = v43;

          v105 = v42;

          goto LABEL_22;
        }

        v38 += 6;
        if (sub_22855E15C())
        {
          goto LABEL_34;
        }
      }
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v65 = v126;
    *v66 = a2;
    v66[1] = v65;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v48 = v115;
    sub_22840875C(v33, v115);
    v49 = *(v34 + 24);
    v50 = v48[1];
    v110 = *v48;
    v127 = v110;
    v128 = v50;
    v51 = v119;
    v53 = v119 + 104;
    v52 = *(v119 + 104);
    v54 = v111;
    LODWORD(v122) = *MEMORY[0x277CC91D8];
    v55 = v117;
    v106 = v52;
    v52(v111);
    v56 = sub_2283F79A4();

    v120 = v49;
    v57 = v114;
    v126 = v56;
    sub_22855C05C();
    v59 = *(v51 + 8);
    v58 = v51 + 8;
    v121 = v59;
    v59(v54, v55);

    v60 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v61 = sub_22855BFBC();
    v62 = [v60 initWithURL_];

    v63 = v118 + 8;
    v64 = *(v118 + 8);
    v64(v57, v116);
    if (v62)
    {
      sub_228408938(v62, v113, v124);
      sub_228408700(v48);
    }

    else
    {
      v119 = v58;
      v67 = v117;
      v124 = v64;
      v125 = v53;
      v113 = v50;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v118 = v63;
      v68 = sub_22855CABC();
      __swift_project_value_buffer(v68, qword_280DEEBD0);
      v69 = v108;
      sub_228408514(v48, v108, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v70 = v48;
      v71 = v109;
      sub_228408514(v70, v109, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v72 = sub_22855CA8C();
      v73 = sub_22855D68C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v129 = v112;
        *v74 = 136315650;
        v127 = v107;
        swift_getMetatypeMetadata();
        v75 = sub_22855D1BC();
        v77 = sub_2283F8938(v75, v76, &v129);

        *(v74 + 4) = v77;
        LODWORD(v107) = v73;
        *(v74 + 12) = 2080;
        v78 = *(v69 + 16);
        v79 = *(v69 + 24);

        sub_228408700(v69);
        v80 = sub_2283F8938(v78, v79, &v129);
        v81 = v117;

        *(v74 + 14) = v80;
        *(v74 + 22) = 2080;
        v82 = *(v123 + 24);
        v83 = v71[1];
        v127 = *v71;
        v128 = v83;
        v84 = v54;
        v85 = v54;
        v86 = v81;
        v87 = v81;
        v88 = v106;
        v106(v84, v122, v86);

        v89 = v114;
        sub_22855C05C();
        v121(v85, v87);

        sub_228463074(&qword_27D83FC20, MEMORY[0x277CC9260]);
        v54 = v85;
        v90 = v116;
        v91 = sub_22855E11C();
        v93 = v92;
        v124(v89, v90);
        sub_228408700(v71);
        v94 = sub_2283F8938(v91, v93, &v129);

        *(v74 + 24) = v94;
        _os_log_impl(&dword_2283ED000, v72, v107, "[%s] Known URL for bundle identifier %s appears invalid; cannot load bundle at that location: %s", v74, 0x20u);
        v95 = v112;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v95, -1, -1);
        v96 = v74;
        v67 = v117;
        MEMORY[0x22AABAD40](v96, -1, -1);

        v97 = v113;
      }

      else
      {

        sub_228408700(v71);
        sub_228408700(v69);
        v97 = v113;
        v89 = v114;
        v88 = v106;
      }

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      v99 = v98;
      v127 = v110;
      v128 = v97;
      v88(v54, v122, v67);

      v100 = v115;
      sub_22855C05C();
      v121(v54, v67);

      v101 = sub_22855C01C();
      v103 = v102;
      v124(v89, v116);
      *v99 = v101;
      v99[1] = v103;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_228408700(v100);
    }
  }
}

uint64_t sub_22840BD38(uint64_t a1)
{
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static NSUserDefaults.healthAppShared.getter()
{
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DED1C8;

  return v1;
}

uint64_t sub_22840BE0C()
{
  result = sub_22840BE2C();
  qword_280DED1C8 = result;
  return result;
}

uint64_t sub_22840BE2C()
{
  v0 = *MEMORY[0x277CCE378];
  sub_22855D1AC();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22855D17C();

  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    return v3;
  }

  sub_22855DC6C();

  v5 = sub_22855D1AC();
  MEMORY[0x22AAB92A0](v5);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void *HealthAppNotificationManager.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];

  return _s14HealthPlatform0A22AppNotificationManagerC18notificationCenterACSo06UNUserdG0C_tcfC_0(v0);
}

void *_s14HealthPlatform0A22AppNotificationManagerC18notificationCenterACSo06UNUserdG0C_tcfC_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v3 = sub_22855BDCC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_22855BDBC();
  v7 = sub_22855BD9C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_22855BD8C();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  v13 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v14 = v2;
  v15 = sub_22855D17C();
  v16 = [v13 initWithCategory:1 domainName:v15 healthStore:v14];

  type metadata accessor for HealthAppNotificationManager();
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  v17[8] = v18;
  v17[9] = sub_22840C148(MEMORY[0x277D84F90]);
  v17[2] = a1;
  v17[3] = v6;
  v17[4] = v10;
  v17[5] = v11;
  v17[6] = v14;
  v17[7] = v16;
  return v17;
}

unint64_t sub_22840C148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_27D83F5C8, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_2283F9B94);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F5E0(v4, &v13, &qword_27D83F940, &qword_27D83F440);
      v5 = v13;
      v6 = v14;
      result = sub_2283F6D18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2283FAB3C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_22840C2D0()
{
  v0 = sub_22855CABC();
  __swift_allocate_value_buffer(v0, qword_280DE9DD0);
  __swift_project_value_buffer(v0, qword_280DE9DD0);
  return sub_22855CA9C();
}

uint64_t dispatch thunk of HealthAppNotificationManager.getNotificationSettings()()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 184))();
}

id sub_22840C374()
{
  v1 = [*(v0 + 16) notificationSettings];

  return v1;
}

uint64_t PinnedContentManager.__allocating_init(healthStore:domain:)(void *a1)
{
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v2 = swift_allocObject();
  sub_2283F2234();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = a1;
  *(v2 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v7 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v8 = v6;
  v9 = sub_22855D17C();

  v10 = [v7 initWithCategory:1 domainName:v9 healthStore:v8];

  *(v2 + 16) = v10;
  [v10 startObservation_];

  v11 = objc_allocWithZone(sub_22855BCCC());
  v12 = v8;
  v13 = sub_22855BCBC();
  v14 = swift_allocObject();
  v15 = sub_228401798(v13, v2, v14);

  return v15;
}

id static Feed.predicate(kind:associatedProfileIdentifier:feedPrefixKeyPath:)(unsigned __int8 a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = sub_22840C950(a3, a4, a1);
  if (!a2)
  {
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228560580;
    if (v4)
    {
      v23 = v4;

      MEMORY[0x22AAB92A0](46, 0xE100000000000000);
      v4 = a3;
      v14 = v23;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);

    MEMORY[0x22AAB92A0](0xD000000000000011, 0x80000002285729E0);

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_22840A7C8();
    *(v13 + 32) = v4;
    *(v13 + 40) = v14;
    v16 = sub_22855D62C();
    goto LABEL_11;
  }

  v8 = a2;
  result = [v8 identifier];
  if (result)
  {
    v10 = result;
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_228560570;
    if (v4)
    {
      v22 = v4;

      MEMORY[0x22AAB92A0](46, 0xE100000000000000);
      v4 = a3;
      v12 = v22;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);

    MEMORY[0x22AAB92A0](0xD000000000000022, 0x8000000228574AC0);

    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_22840A7C8();
    *(v11 + 32) = v4;
    *(v11 + 40) = v12;
    *(v11 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v11 + 104) = sub_22840A81C();
    *(v11 + 72) = v10;
    v15 = v10;
    v16 = sub_22855D62C();

LABEL_11:
    sub_22840CC88(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_228563E50;
    *(v17 + 32) = v7;
    *(v17 + 40) = v16;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v18 = v16;
    v19 = v7;
    v20 = sub_22855D39C();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_22840C950(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560570;
  if (a2)
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v15 = v7;

  MEMORY[0x22AAB92A0](0x56776152646E696BLL, 0xEC00000065756C61);

  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22840A7C8();
  *(v6 + 64) = v11;
  *(v6 + 32) = v15;
  *(v6 + 40) = v9;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v12 = 0xE700000000000000;
      v13 = 0x73656369746F6ELL;
    }

    else if (a3 == 4)
    {
      v12 = 0xE800000000000000;
      v13 = 0x73656C6369747261;
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x73646E657274;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v12 = 0x800000022856D770;
      v13 = 0xD000000000000011;
    }

    else
    {
      v12 = 0xEA00000000007374;
      v13 = 0x6867696C68676968;
    }
  }

  else
  {
    v12 = 0xED000068746C6165;
    v13 = 0x48726F4673707061;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v13;
  *(v6 + 80) = v12;
  return sub_22855D62C();
}

void sub_22840CB74(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_22842BFBC(255, a3);
    v4 = sub_22855E12C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22840CBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22840CC38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22840CC88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22840CCD8(char a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22840A7C8();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x800000022856E2C0;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 64) = v4;
  *(v2 + 72) = 0xD000000000000026;
  if (a1)
  {
    v5 = "com.apple.health.pinnedContent.logging";
  }

  else
  {
    v5 = "com.apple.health.pinnedContent.summary";
  }

  *(v2 + 80) = (v5 - 32) | 0x8000000000000000;
  return sub_22855D62C();
}

id static SourceProfile.primary.getter()
{
  v0 = [objc_opt_self() primaryProfile];

  return v0;
}

id static FeedItem.fetchRequest(predicate:)(uint64_t a1)
{
  v2 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  [v2 setPredicate_];
  return v2;
}

id static Feed.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t HealthAppPluginSource.plugin(bundleIdentifier:allowDynamicFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(char *, uint64_t)@<X8>)
{
  v9 = *v4;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16[-v12];
  sub_22840B13C(a1, a2, &v16[-v12]);
  v14 = v4[2];
  v17 = a1;
  v18 = a2;
  v19 = v13;
  v20 = v4;
  v21 = a3;
  v22 = v9;
  os_unfair_lock_lock((v14 + 28));
  sub_22840B2C0((v14 + 16), a4);
  os_unfair_lock_unlock((v14 + 28));
  return sub_22840BD38(v13);
}

uint64_t sub_22840D038(uint64_t a1, uint64_t a2)
{
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RelevantDateInterval()
{
  result = qword_280DEEDB0;
  if (!qword_280DEEDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22840D104()
{
  result = sub_22855BE1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22840D194(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void FeedItem.contentKind.getter(char *a1@<X8>)
{
  v3 = [v1 contentKindRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  ContentKind.init(rawValue:)(v7);
  v8 = v26;
  if (v26 == 25)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = v1;
    v11 = sub_22855CA8C();
    v12 = sub_22855D69C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      v15 = [v10 contentKindRawValue];
      v16 = sub_22855D1AC();
      v18 = v17;

      v19 = sub_2283F8938(v16, v18, &v25);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v10 uniqueIdentifier];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = sub_2283F8938(v21, v23, &v25);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_2283ED000, v11, v12, "Somehow a content kind got stored that we do not know about: %s, identifier: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v14, -1, -1);
      MEMORY[0x22AABAD40](v13, -1, -1);
    }

    v8 = 16;
  }

  *a1 = v8;
}

HealthPlatform::ContentKind_optional __swiftcall ContentKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855E17C();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t FeedItem.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v41 = v2;
  v24 = [v2 relevantStartDate];
  if (v24)
  {
    v40 = a1;
    v25 = v24;
    sub_22855C13C();

    v26 = v5[4];
    v26(v23, v21, v4);
    v27 = [v41 relevantEndDate];
    if (v27)
    {
      v28 = v27;
      sub_22855C13C();

      v26(v18, v15, v4);
      v29 = v5[2];
      v29(v12, v23, v4);
      v29(v9, v18, v4);
      v30 = v40;
      sub_22855BDFC();
      v31 = v41;
      [v41 relevantRampUpTime];
      v33 = v32;
      [v31 relevantRampDownTime];
      v35 = v34;
      v36 = v5[1];
      v36(v18, v4);
      v36(v23, v4);
      v37 = type metadata accessor for RelevantDateInterval();
      *(v30 + *(v37 + 20)) = v33;
      *(v30 + *(v37 + 24)) = v35;
      return (*(*(v37 - 8) + 56))(v30, 0, 1, v37);
    }

    (v5[1])(v23, v4);
    a1 = v40;
  }

  v39 = type metadata accessor for RelevantDateInterval();
  return (*(*(v39 - 8) + 56))(a1, 1, 1, v39);
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t _s14HealthPlatform17ForYouSectionKindO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_22855DFBC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22840DA18()
{
  result = qword_280DEEC40;
  if (!qword_280DEEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC40);
  }

  return result;
}

uint64_t sub_22840DA6C()
{
  v1 = *v0;
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t ContentKind.rawValue.getter()
{
  result = 0x7472656C61;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x656C6369747261;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x67676F4C61746164;
      break;
    case 7:
      result = 0x6D6D755361746164;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x5365727574616566;
      break;
    case 0xC:
      result = 0x6867696C68676968;
      break;
    case 0xD:
      result = 0x6867696C68676968;
      break;
    case 0xE:
      result = 0x697461676976616ELL;
      break;
    case 0xF:
      result = 0x617461446F6ELL;
      break;
    case 0x10:
      result = 0x726568746FLL;
      break;
    case 0x11:
      result = 0x6D726F6674616C70;
      break;
    case 0x12:
      result = 0x6F69746F6D6F7270;
      break;
    case 0x13:
      result = 0x74706D6F7270;
      break;
    case 0x14:
      result = 0x656C69666F7270;
      break;
    case 0x15:
      result = 0x6E6F6974616C6572;
      break;
    case 0x16:
      result = 0x73676E6974746573;
      break;
    case 0x17:
      result = 0x657461647075;
      break;
    case 0x18:
      result = 0x72616265646973;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_22840DDD4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ContentKind.rawValue.getter();
  v4 = v3;
  if (v2 == ContentKind.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22855E15C();
  }

  return v7 & 1;
}

unint64_t sub_22840DE70()
{
  result = qword_280DE8E90;
  if (!qword_280DE8E90)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_280DE8E90);
  }

  return result;
}

void *sub_22840E048@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_22840E078(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22840E0F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22855D1AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22840E124()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E174()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E1AC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5 = 0;
  return v2(&v5);
}

uint64_t sub_22840E37C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840E3B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22840E57C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  FeedItem.contentKind.getter(&v4);
  *a2 = v4;
}

uint64_t sub_22840E5BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = FeedItem.favoriteStatus.getter();
  *a2 = result;
  return result;
}

uint64_t sub_22840E604@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (([*a1 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    result = 13;
  }

  else
  {
    result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v3 searchSectionHintRawValue]);
  }

  *a2 = result;
  return result;
}

id sub_22840E660(_BYTE *a1, id *a2)
{
  if (*a1 == 13)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *a1;
  }

  [*a2 setSearchSectionHintRawValue_];
  return sub_22841E13C();
}

void sub_22840E6B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  FeedItem.associatedKeywords.setter(v4);
}

id sub_22840E718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = FeedItem.userInterface.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

void sub_22840E748(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  sub_22840A934(*a1, v3, v5);
  FeedItem.userInterface.setter(v2, v3, v5);
}

void sub_22840E798(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  FeedItem.hostViewStyle.getter(&v4);
  *a2 = v4;
}

uint64_t sub_22840E828()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22840E870()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22840E8C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E900()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E938()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840E99C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22840E9EC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840EA34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840EA88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_22840EE50(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C10C();
  [v2 setDateSubmitted_];
}

id sub_22840EF78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedSection];
  *a2 = result;
  return result;
}

id sub_22840EFC8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideInDiscover];
  *a2 = result;
  return result;
}

id sub_22840F268@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 searchSectionHintRawValue];
  *a2 = result;
  return result;
}

id sub_22840F2B0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 searchSectionRawValue];
  *a2 = result;
  return result;
}

id sub_22840F2F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sectionSortOrder];
  *a2 = result;
  return result;
}

id sub_22840F3E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_22840F428@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 suggestionRelevanceScore];
  *a2 = v4;
  return result;
}

id sub_22840F4DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usesPlatformView];
  *a2 = result;
  return result;
}

id sub_22840F524@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 legacyUserInterfaceKind];
  *a2 = result;
  return result;
}

id sub_22840F62C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relevantRampUpTime];
  *a2 = v4;
  return result;
}

id sub_22840F674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relevantRampDownTime];
  *a2 = v4;
  return result;
}

id sub_22840F6BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortHint];
  *a2 = result;
  return result;
}

id sub_22840F704@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 indexForSearch];
  *a2 = result;
  return result;
}

uint64_t sub_22840F74C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22855C16C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22840F7F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C16C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22840F8B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840F8F0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840FB94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840FBCC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840FC18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840FC68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GeneratorContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22840FD14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GeneratorContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22840FDC4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setIdentifier_];
}

uint64_t sub_22840FE30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22840FE74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22840FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22840FF58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228410018()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_228410058@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

void sub_2284100A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setIdentifier_];
}

uint64_t sub_228410110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.getter(v5, a3);
}

uint64_t sub_22841014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for UserDefault();
  return sub_228463ACC(a1, v6);
}

uint64_t sub_2284101A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284101F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_228464E14();
  *a2 = result;
  return result;
}

uint64_t sub_228410224()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284102F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410328()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410360()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410398()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284103D0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228410408()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_228410450()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2284104B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_22846CEB8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2284104E4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228410524()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841055C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410598()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284105E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228410620()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410668()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2284106C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284107B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410808()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410890()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284108E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228410928()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410960()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284109C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228450F00();
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
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_228410A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_228450F00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }
}

id sub_228410B90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_228410C14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410C4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410C84()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410CBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228410D30()
{
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22841102C()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2284110AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItem];
  *a2 = result;
  return result;
}

void sub_2284110FC()
{
  if (MEMORY[0x277D85020])
  {
    sub_2284916D4();
  }
}

uint64_t sub_228411138()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228411190()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284111C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411230()
{
  v1 = (type metadata accessor for UnprotectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_22855C1DC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228411320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411360()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284113C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_228411408(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_22841144C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22841148C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2284114DC()
{
  v1 = (type metadata accessor for UnprotectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_22855C1DC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2284115CC()
{
  v1 = (type metadata accessor for ProtectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_22855C1DC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2284116DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411718()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22841178C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 104);
  if (v4 != 255)
  {
    sub_228451F14(*(v0 + 80), *(v0 + 88), *(v0 + 96), v4);
  }

  v5 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22841180C()
{
  v1 = *(v0 + 24);

  sub_2284A6534(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228411850()
{
  v1 = type metadata accessor for PluginFeedItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  sub_22842B20C(*(v5 + 16), *(v5 + 24), *(v5 + 32));
  v7 = *(v0 + v3 + 48);

  v8 = *(v0 + v3 + 64);
  if (v8 >> 60 != 15)
  {
    sub_22842B38C(*(v5 + 56), v8);
  }

  v9 = *(v5 + 80);

  v10 = *(v5 + 96);
  if (v10 >> 60 != 15)
  {
    sub_22842B38C(*(v5 + 88), v10);
  }

  v11 = v1[11];
  v12 = type metadata accessor for RelevantDateInterval();
  if (!(*(*(v12 - 8) + 48))(v5 + v11, 1, v12))
  {
    v13 = sub_22855BE1C();
    (*(*(v13 - 8) + 8))(v5 + v11, v13);
  }

  v14 = *(v5 + v1[13]);

  v15 = *(v5 + v1[14]);

  v16 = *(v5 + v1[15]);

  v17 = *(v5 + v1[16] + 8);

  v18 = *(v5 + v1[17]);

  v19 = *(v5 + v1[18]);

  v20 = *(v5 + v1[20] + 8);

  v21 = *(v5 + v1[21] + 8);

  v22 = *(v5 + v1[22] + 8);

  v23 = *(v5 + v1[27] + 16);

  v24 = (v5 + v1[28]);
  if (*v24)
  {
    v25 = v24[1];
  }

  v26 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v0 + v26 + 8);

  return MEMORY[0x2821FE8E8](v0, v26 + 16, v2 | 7);
}

uint64_t sub_228411A98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411AD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411B7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411BB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411BEC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411C2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411C6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411CAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228411D00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22855C06C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_22855D89C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_228411EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_22855C06C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22855D89C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_228411FD8()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412010()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22841204C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228412140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22855C1DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2284121F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412238()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412270()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284122B0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[9] >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228412308@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_228412350(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_228412394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2283F9B10(v3 + 24, a2);
}

void sub_228412488(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855C08C();
  [v4 setEncodedHKProfileIdentifier_];
}

void sub_228412590(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C19C();
  [v2 setUniqueIdentifier_];
}

uint64_t sub_2284125EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_228412684()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284126F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841272C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412784()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284127BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284127FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2284C7A74;
  a2[1] = v5;
}

uint64_t sub_22841286C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284128A8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228412928()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284129A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_228412B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_228412CC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Profile.hkProfileIdentifier.getter();
  *a2 = result;
  return result;
}

uint64_t sub_228412D18()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412D58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228412DA0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setUniqueIdentifier_];
}

id sub_228412E14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plugin];
  *a2 = result;
  return result;
}

uint64_t sub_228412E64()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_228412EF8()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228412FE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228413028()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413088()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2284130C0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228413100()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228413184()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2284131CC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228413240()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228413294()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413328()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228413380()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413418@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2284E926C;
  a2[1] = v5;
}

uint64_t sub_228413488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_228492FA4;
  a2[1] = v5;
}

uint64_t sub_2284134F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_228466000;
  a2[1] = v5;
}

uint64_t sub_228413568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284135A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228413604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_22841364C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_228400874();
  *a2 = result;
  return result;
}

void sub_228413678(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_2284136C0()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284136F8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228413740()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284137E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413818()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413850()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413888()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284138C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_228413B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_228413CF4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setIdentifier_];
}

id sub_228413D58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feed];
  *a2 = result;
  return result;
}

id sub_228413DA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItems];
  *a2 = result;
  return result;
}

id sub_228413DF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCollapsible];
  *a2 = result;
  return result;
}

id sub_228413E40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_228413EA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413EE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413F18()
{
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_228414000()
{
  if (MEMORY[0x277D85020])
  {
    sub_2284FD600(0, &qword_27D840430, sub_2284FD4DC, MEMORY[0x277D85458]);
  }
}

uint64_t sub_22841406C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284140B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284140F4()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841412C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414164()
{
  if (*v0)
  {
    result = 0x65746E4972657375;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_2284141B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_228501D8C();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_228414264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_228501D8C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22841430C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228414358(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C10C();
  [v2 setDateUpdated_];
}

id sub_2284143B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedProfile];
  *a2 = result;
  return result;
}

void sub_228414408(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setKindRawValue_];
}

id sub_22841446C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sections];
  *a2 = result;
  return result;
}

uint64_t sub_2284144BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284144FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841456C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284145A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284145DC()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228414614()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841464C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284146D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228414708()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414740()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_228414788()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_22841482C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_22855CDEC();
  swift_getWitnessTable();
  sub_22855CB8C();
  return swift_getWitnessTable();
}

uint64_t sub_2284148E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_22850F408();
  sub_228510094(&qword_280DE9810, sub_22850F408);
  sub_22855CB8C();
  return swift_getWitnessTable();
}

uint64_t sub_228414AC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414AFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414B34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228414B74()
{
  sub_228517378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228414C10(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_228414CF0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228414E0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414E78()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_228414EB4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setPackage_];
}

void sub_228414F24(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_22855D17C();
  [v4 setIdentifier_];
}

id sub_228414F88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItem];
  *a2 = result;
  return result;
}

uint64_t sub_228414FD8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  v8 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2284150C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284150FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2284151B8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22841521C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22841525C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284152BC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228415318()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228415358()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284153AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284153E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415438(uint64_t a1, uint64_t a2)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2284154D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SyncError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_228415558(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_228415630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
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
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_228415710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }
}

uint64_t sub_2284157EC()
{
  v1 = *(v0 + 2);
  v2 = *(*(v0 + 3) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 4);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v9 = *&v0[v7 + 8];

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v5 | 7);
}

uint64_t sub_22841592C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22841596C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284159A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284159EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415A24()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();
  v4 = v0[9];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228415AAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415AE4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_228415B44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  sub_22842B38C(*(v0 + 80), *(v0 + 88));
  v4 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_228415BB8()
{
  v1 = sub_22855C62C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228415CB4()
{
  v1 = sub_22855C62C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228415DC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228415E08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415E40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228415E8C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228415EC4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228415F0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 codeRaw];
  *a2 = result;
  return result;
}

uint64_t sub_228415F70()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228415FA8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(*(v0 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v3 | v9;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_228416144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22841617C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_228451F14(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2284161DC()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v21 = sub_22855C37C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v22 = v0;
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = (v0 + v3 + v1[5]);

  v10 = type metadata accessor for GeneratorContext();
  v11 = v9 + v10[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v12 = *(v11 + 1);

    v13 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v14 = sub_22855C16C();
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
  }

  v15 = (v3 + v19 + v5) & ~v5;
  __swift_destroy_boxed_opaque_existential_0((v9 + v10[7]));
  __swift_destroy_boxed_opaque_existential_0((v9 + v10[8]));
  sub_228451F14(*(v6 + v1[6]), *(v6 + v1[6] + 8), *(v6 + v1[6] + 16), *(v6 + v1[6] + 24));
  v16 = *(v6 + v1[7]);

  v17 = *(v6 + v1[8] + 8);

  (*(v4 + 8))(v22 + v15, v21);

  return MEMORY[0x2821FE8E8](v22, v15 + v20, v2 | v5 | 7);
}

uint64_t sub_228416428()
{
  v1 = type metadata accessor for GeneratorContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = *(v6 + 8);

    v8 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v9 = sub_22855C16C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));
  sub_228451F14(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), *(v0 + v10 + 24));

  return MEMORY[0x2821FE8E8](v0, v10 + 25, v2 | 7);
}

uint64_t sub_228416594()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_228416740(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2284167AC(uint64_t a1, uint64_t a2)
{
  sub_228554618();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_228416818(uint64_t a1, uint64_t a2)
{
  sub_228554618();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_228416890()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284168D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[9] >= 2uLL)
  {
  }

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_228416940()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228416978()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284169B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284169F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2283F9B10(v3 + 56, a2);
}

uint64_t sub_228416A40()
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228416B04()
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228416BBC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[9] >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228416C18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228416CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_228416CF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_228416D2C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

id HealthExperienceStoreCleanupOperation.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v15, sel_init);
  v6 = qword_280DEEC90;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DEEC98);
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v7;
    *v12 = v7;
    v13 = v7;
    _os_log_impl(&dword_2283ED000, v9, v10, "%@ init", v11, 0xCu);
    sub_228418694(v12, &qword_280DED080, sub_2284185F4);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  return v7;
}

Swift::Void __swiftcall HealthExperienceStoreCleanupOperation.main()()
{
  v71 = sub_22855C2CC();
  v1 = *(v71 - 1);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v71);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855C2DC();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228418640(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v67 - v11;
  v72 = sub_22855C16C();
  v13 = *(v72 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v72);
  v67[0] = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = v67 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v67 - v19;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v21 = sub_22855CABC();
  v22 = __swift_project_value_buffer(v21, qword_280DEEC98);
  v23 = v0;
  v67[1] = v22;
  v24 = sub_22855CA8C();
  v25 = sub_22855D6AC();

  v26 = os_log_type_enabled(v24, v25);
  v73 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v13;
    v29 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v29 = v23;
    v30 = v23;
    _os_log_impl(&dword_2283ED000, v24, v25, "%@ main()", v27, 0xCu);
    sub_228418694(v29, &qword_280DED080, sub_2284185F4);
    v31 = v29;
    v13 = v28;
    v20 = v73;
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v27, -1, -1);
  }

  sub_22855C15C();
  sub_22855C2BC();
  v32 = v71;
  (*(v1 + 104))(v4, *MEMORY[0x277CC9968], v71);
  sub_22855C2AC();
  (*(v1 + 8))(v4, v32);
  (*(v69 + 8))(v8, v70);
  v33 = v72;
  if ((*(v13 + 48))(v12, 1, v72) == 1)
  {
    sub_228418694(v12, &qword_280DEE380, MEMORY[0x277CC9578]);
    v34 = v67[0];
    (*(v13 + 16))(v67[0], v20, v33);
    v35 = v23;
    v36 = sub_22855CA8C();
    v37 = sub_22855D68C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v34;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = v40;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      sub_228418978(&qword_280DECD88, MEMORY[0x277CC9578]);
      v42 = v35;
      v43 = sub_22855E11C();
      v45 = v44;
      v46 = *(v13 + 8);
      v46(v38, v33);
      v47 = sub_2283F8938(v43, v45, aBlock);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_2283ED000, v36, v37, "%@ cannot generate yesterday from today: %s", v39, 0x16u);
      v48 = v71;
      sub_228418694(v71, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v39, -1, -1);

      v46(v73, v33);
    }

    else
    {

      v66 = *(v13 + 8);
      v66(v34, v33);
      v66(v20, v33);
    }
  }

  else
  {
    v49 = v13;
    (*(v13 + 32))(v68, v12, v33);
    v50 = objc_opt_self();
    v51 = sub_22855C10C();
    v52 = [v50 deleteHistoryBeforeDate_];

    v53 = *&v23[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context];
    v54 = swift_allocObject();
    *(v54 + 16) = v23;
    *(v54 + 24) = v52;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2284186F0;
    *(v55 + 24) = v54;
    aBlock[4] = sub_2284186F8;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor;
    v56 = _Block_copy(aBlock);
    v57 = v23;
    v58 = v52;

    [v53 performBlockAndWait_];
    _Block_release(v56);
    LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

    if (v56)
    {
      __break(1u);
    }

    else
    {
      v59 = v57;
      v60 = sub_22855CA8C();
      v61 = sub_22855D6AC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        *(v62 + 4) = v59;
        *v63 = v59;
        v64 = v59;
        _os_log_impl(&dword_2283ED000, v60, v61, "%@ start() done!", v62, 0xCu);
        sub_228418694(v63, &qword_280DED080, sub_2284185F4);
        MEMORY[0x22AABAD40](v63, -1, -1);
        MEMORY[0x22AABAD40](v62, -1, -1);
      }

      v65 = *(v49 + 8);
      v65(v68, v33);
      v65(v73, v33);
    }
  }
}

void sub_228417838(char *a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = *&a1[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context];
  v31[0] = 0;
  v5 = [v4 executeRequest:a2 error:v31];
  if (v5)
  {
    v6 = v5;
    v7 = v31[0];
  }

  else
  {
    v8 = v31[0];
    v9 = sub_22855BF3C();

    swift_willThrow();
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = a1;
    v12 = a2;
    v13 = v9;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31[0] = v18;
      *v16 = 138412802;
      *(v16 + 4) = v11;
      *v17 = v11;
      *(v16 + 12) = 2080;
      v19 = v11;
      v20 = v12;
      v21 = [v20 description];
      v22 = sub_22855D1AC();
      v24 = v23;

      v25 = sub_2283F8938(v22, v24, v31);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2080;
      v26 = v9;
      sub_228418D44();
      v27 = sub_22855D1CC();
      v29 = sub_2283F8938(v27, v28, v31);

      *(v16 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v14, v15, "%@ executing this request failed: %s with error: %s", v16, 0x20u);
      sub_228418694(v17, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    else
    {
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t HealthExperienceStoreCleanupOperation.description.getter()
{
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000027, 0x800000022856D7D0);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

id HealthExperienceStoreCleanupOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreCleanupOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228417E24()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_228417E6C()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

void *sub_228417ED8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_228417F04@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_228417FB4(uint64_t a1, id *a2)
{
  result = sub_22855D18C();
  *a2 = 0;
  return result;
}

uint64_t sub_22841802C(uint64_t a1, id *a2)
{
  v3 = sub_22855D19C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2284180AC@<X0>(uint64_t *a1@<X8>)
{
  sub_22855D1AC();
  v2 = sub_22855D17C();

  *a1 = v2;
  return result;
}

uint64_t sub_2284180F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_228418D0C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_228418130(uint64_t a1)
{
  v2 = sub_228418978(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_228418978(&unk_27D83F230, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2284181EC(uint64_t a1)
{
  v2 = sub_228418978(&qword_27D83F290, type metadata accessor for URLResourceKey);
  v3 = sub_228418978(&unk_27D83F298, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2284182A8(uint64_t a1)
{
  v2 = sub_228418978(&qword_27D83F2B0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_228418978(&qword_27D83F2B8, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_228418364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855D17C();

  *a2 = v5;
  return result;
}

uint64_t sub_2284183AC(uint64_t a1)
{
  v2 = sub_228418978(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_228418978(&qword_27D83F2A8, type metadata accessor for ProgressUserInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_228418468()
{
  v1 = *v0;
  v2 = sub_22855D1AC();
  v3 = MEMORY[0x22AAB9310](v2);

  return v3;
}

uint64_t sub_2284184A4()
{
  v1 = *v0;
  sub_22855D1AC();
  sub_22855D20C();
}

uint64_t sub_2284184F8()
{
  v1 = *v0;
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v2 = sub_22855E27C();

  return v2;
}

uint64_t sub_22841856C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22855D1AC();
  v6 = v5;
  if (v4 == sub_22855D1AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22855E15C();
  }

  return v9 & 1;
}

unint64_t sub_2284185F4()
{
  result = qword_280DEEB30;
  if (!qword_280DEEB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEEB30);
  }

  return result;
}

void sub_228418640(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228418694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228418640(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2284186F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for ContentMagnitudeFeatureTag(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentMagnitudeFeatureTag(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2284188C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284188E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_228418978(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_228418C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F25A0(0, &qword_280DED010, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_228418D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_228418D44()
{
  result = qword_280DECFE0;
  if (!qword_280DECFE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DECFE0);
  }

  return result;
}

uint64_t (*MockSharableModelStorage.fetchHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284196B0;
}

unint64_t sub_228419298()
{
  result = qword_27D83F328;
  if (!qword_27D83F328)
  {
    sub_2283F8898(255, &qword_27D83F330, &type metadata for SharableModelPredicate, MEMORY[0x277D83D88]);
    sub_22841A730(255, &qword_27D83F338, sub_228419354);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F328);
  }

  return result;
}

void sub_228419354()
{
  if (!qword_27D83F340)
  {
    sub_2284193F4(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_228418D44();
    v0 = sub_22855E2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F340);
    }
  }
}

void sub_2284193F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228419458(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  return v2(&v5);
}

uint64_t sub_22841949C(uint64_t *a1, _OWORD *a2, uint64_t (*a3)(uint64_t, uint64_t (*)(uint64_t a1, char a2), _OWORD *))
{
  v3 = *a1;
  v5[1] = *a2;
  return a3(v3, sub_22841C06C, v5);
}

uint64_t sub_2284194F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22841C100;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_228419614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = sub_22841C0FC;
  v9[1] = v7;
  a4(&v10, v9);
}

uint64_t MockSharableModelStorage.fetchHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.fetchHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C100;
  v3[8] = v7;

  return sub_2284198FC;
}

uint64_t (*MockSharableModelStorage.updateOrCreateHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_228419CFC;
}

unint64_t sub_228419AA8()
{
  result = qword_27D83F358;
  if (!qword_27D83F358)
  {
    sub_2284193F4(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_228419B50();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F358);
  }

  return result;
}

unint64_t sub_228419B50()
{
  result = qword_27D83F360;
  if (!qword_27D83F360)
  {
    sub_2284193F4(255, &qword_280DE8EC0, sub_228418D44, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D83F360);
  }

  return result;
}

uint64_t sub_228419BDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22841C104;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockSharableModelStorage.updateOrCreateHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.updateOrCreateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C104;
  v3[8] = v7;

  return sub_228419F40;
}

uint64_t (*MockSharableModelStorage.deleteHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_22841A334;
}

unint64_t sub_22841A0EC()
{
  result = qword_27D83F378;
  if (!qword_27D83F378)
  {
    sub_2283F8898(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228419B50();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F378);
  }

  return result;
}

uint64_t sub_22841A188(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22841C108;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_22841A2A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[0] = a7;
  v13[1] = v11;
  a4(&v14, v13);
}

uint64_t MockSharableModelStorage.deleteHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.deleteHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C108;
  v3[8] = v7;

  return sub_22841A55C;
}

uint64_t (*MockSharableModelStorage.deleteAllHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_22841AABC;
}

uint64_t sub_22841A730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

double sub_22841A794@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X5>, _OWORD *a5@<X8>)
{
  sub_2284193F4(0, a2, a3, MEMORY[0x277D11C80]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v17 - v12;
  v14 = *a1;
  v15 = *a4;
  swift_beginAccess();
  (*(v10 + 16))(v13, v14 + v15, v9);
  sub_22855C94C();
  (*(v10 + 8))(v13, v9);
  result = v17[0];
  *a5 = *v17;
  return result;
}

uint64_t sub_22841A8D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v4 = 0;
  return v1(&v4);
}

uint64_t sub_22841A908(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22841C0E4;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_22841AA28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_22841C0F4;
  v8[1] = v6;
  a3(v8);
}

uint64_t MockSharableModelStorage.deleteAllHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.deleteAllHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C0E4;
  v3[8] = v7;

  return sub_22841ACB8;
}

void sub_22841ACF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 56);
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 64);
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v10;
    v13 = v9[1];
    *v9 = a6;
    v9[1] = v12;

    v14 = v6[8];

    v8(v6, 0);
    swift_endAccess();
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v10;
    v17 = v9[1];
    *v9 = a4;
    v9[1] = v16;
    v8(v6, 0);
    swift_endAccess();
  }

  free(v6);
}

uint64_t MockSharableModelStorage.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MockSharableModelStorage.init()();
  return v3;
}

uint64_t MockSharableModelStorage.init()()
{
  v1 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v4;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v1);
  v28 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v1);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, v1);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v28 - v20;
  v22 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v32 = sub_228419458;
  v33 = 0;
  sub_228419298();
  sub_22855C92C();
  (*(v18 + 32))(v0 + v22, v21, v17);
  v23 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  v32 = sub_22841C0F0;
  v33 = 0;
  sub_228419AA8();
  sub_22855C92C();
  (*(v12 + 32))(v0 + v23, v15, v11);
  v24 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  v32 = sub_22841C0F0;
  v33 = 0;
  sub_22841A0EC();
  sub_22855C92C();
  (*(v6 + 32))(v0 + v24, v9, v28);
  v25 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  v32 = sub_22841A8D0;
  v33 = 0;
  sub_22841A708(0);
  v26 = v29;
  sub_22855C92C();
  (*(v30 + 32))(v0 + v25, v26, v31);
  return v0;
}

uint64_t MockSharableModelStorage.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18[-1] - v11;
  v13 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v9 + 16))(v12, v3 + v13, v8);
  sub_22855C94C();
  (*(v9 + 8))(v12, v8);
  v14 = v18[0];
  v17 = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v18[0] = sub_22841B3C0;
  v18[1] = v15;
  v14(&v17, v18);
}

uint64_t MockSharableModelStorage.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18[-1] - v11;
  v13 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  swift_beginAccess();
  (*(v9 + 16))(v12, v3 + v13, v8);
  sub_22855C94C();
  (*(v9 + 8))(v12, v8);
  v14 = v18[0];
  v17 = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v18[0] = sub_22841B56C;
  v18[1] = v15;
  v14(&v17, v18);
}

uint64_t sub_22841B56C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t MockSharableModelStorage.delete(sharableModelIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18[-1] - v11;
  v13 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  swift_beginAccess();
  (*(v9 + 16))(v12, v3 + v13, v8);
  sub_22855C94C();
  (*(v9 + 8))(v12, v8);
  v14 = v18[0];
  v17 = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v18[0] = sub_22841C0F4;
  v18[1] = v15;
  v14(&v17, v18);
}

uint64_t MockSharableModelStorage.deleteAll(completion:)(uint64_t a1, uint64_t a2)
{
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-1] - v9;
  v11 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v11, v6);
  sub_22855C94C();
  (*(v7 + 8))(v10, v6);
  v12 = v16[0];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[0] = sub_22841C0F4;
  v16[1] = v13;
  v12(v16);
}

uint64_t MockSharableModelStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t MockSharableModelStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockSharableModelStorage()
{
  result = qword_27D83F3A0;
  if (!qword_27D83F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22841BD74()
{
  sub_2284193F4(319, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2284193F4(319, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2284193F4(319, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2284193F4(319, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_22841BFA0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[1] = *a1;
  return v2(sub_22841C034, v5);
}

uint64_t sub_22841BFF0(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *a1;
  v8[1] = *a2;
  return v4(v6, a3, v8);
}

uint64_t sub_22841C034(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_22841C06C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_22841C0AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

double sub_22841C11C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_22841C128@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static InputSignalSet.LookupKey.loggingPinnedContentStateChange.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for LoggingPinnedContentEmptyInputSignal();
  return sub_22855C61C();
}

uint64_t type metadata accessor for LoggingPinnedContentEmptyInputSignal()
{
  result = qword_27D83F3D0;
  if (!qword_27D83F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LoggingPinnedContentEmptyInputSignal.observer.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t LoggingPinnedContentEmptyInputSignal.darwinNotificationName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t static LoggingPinnedContentEmptyInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

void sub_22841C360(int a1)
{
  v2 = v1;
  LODWORD(v32) = a1;
  v3 = *v1;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22841D9D4();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v13 = sub_22855BD2C();
  v32 = v8;
  v14 = v1[7];
  *(&v29 - 2) = MEMORY[0x28223BE20](v13);
  os_unfair_lock_lock((v14 + 32));
  sub_22841DD5C((v14 + 16), v33);
  os_unfair_lock_unlock((v14 + 32));
  if (LOBYTE(v33[0]) == 1)
  {
    LODWORD(v15) = BYTE1(v33[0]);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DE9DF8);
    v17 = sub_22855CA8C();
    v18 = sub_22855D6AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v15;
      v20 = v19;
      v29 = v19;
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v20 = 136446210;
      v21 = sub_22855E34C();
      v23 = sub_2283F8938(v21, v22, v33);

      v24 = v29;
      *(v29 + 4) = v23;
      v15 = v24;
      _os_log_impl(&dword_2283ED000, v17, v18, "[%{public}s] Quick log emptiness changed", v24, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AABAD40](v25, -1, -1);
      v26 = v15;
      LOBYTE(v15) = v31;
      MEMORY[0x22AABAD40](v26, -1, -1);
    }

    sub_22855C84C();
    LOBYTE(v33[0]) = v15 ^ 1;
    sub_22855C57C();
    v27 = *(v2 + 24);
    v28 = *(v2 + 32);
    swift_getObjectType();
    v33[0] = v2;
    sub_22841DD98(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal);
    sub_22855C78C();

    (*(v32 + 8))(v11, v7);
  }

  else
  {
  }
}

uint64_t sub_22841C8E0@<X0>(BOOL *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_22855BC9C() + 16);

  *a1 = v5 == 0;
  if (v4 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v5 == 0) | v4;
  }

  *a2 = v7 & 1;
  a2[1] = v5 == 0;
  return result;
}

void sub_22841C960(uint64_t a1, char a2)
{
  v3 = v2;
  v36 = *v3;
  v37 = sub_22855CFBC();
  v40 = *(v37 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855CFEC();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = sub_22855BF2C();
  v21 = [v20 hk_isDatabaseAccessibilityError];

  if (v21)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v22 = sub_22855CABC();
    __swift_project_value_buffer(v22, qword_280DE9DF8);
    v23 = sub_22855CA8C();
    v24 = sub_22855D68C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_22855E34C();
      v29 = sub_2283F8938(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2283ED000, v23, v24, "[%{public}s] Database inaccessible, scheduling retry when unlocked", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABAD40](v26, -1, -1);
      MEMORY[0x22AABAD40](v25, -1, -1);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v30 = swift_allocObject();
    swift_weakInit();

    sub_228506C84(sub_22841DDE0, v30);
  }

  else if (a2)
  {
    v35[1] = *(v3 + 104);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v17, v3 + OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval);
    v36 = *(v13 + 8);
    v36(v17, v12);
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_22841DD78;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_0;
    v35[0] = _Block_copy(aBlock);

    sub_22855CFDC();
    v41 = MEMORY[0x277D84F90];
    sub_22841DD98(&qword_280DED2D0, MEMORY[0x277D85198]);
    v32 = MEMORY[0x277D85198];
    sub_2283FA2E8(0, &qword_280DED270, MEMORY[0x277D85198]);
    sub_2283F461C(&qword_280DED260, &qword_280DED270, v32);
    v33 = v37;
    sub_22855DA9C();
    v34 = v35[0];
    MEMORY[0x22AAB9840](v19, v11, v7, v35[0]);
    _Block_release(v34);
    (*(v40 + 8))(v7, v33);
    (*(v38 + 8))(v11, v39);
    v36(v19, v12);
  }
}

uint64_t sub_22841CF2C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22841C360(a2 & 1);
  }

  return result;
}

uint64_t sub_22841CF90()
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v0 = sub_22855CABC();
  __swift_project_value_buffer(v0, qword_280DE9DF8);
  v1 = sub_22855CA8C();
  v2 = sub_22855D6AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_22855E34C();
    v7 = sub_2283F8938(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v1, v2, "[%{public}s] Pinned content did update notification received, refetching quick log promotion tile", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22841C360(1);
  }

  return result;
}

Swift::Void __swiftcall LoggingPinnedContentEmptyInputSignal.stopObservation()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    sub_22855C49C();
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t LoggingPinnedContentEmptyInputSignal.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v4 = OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval;
  v5 = sub_22855CFAC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t LoggingPinnedContentEmptyInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v4 = OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval;
  v5 = sub_22855CFAC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22841D2EC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  return swift_unknownObjectRetain();
}

void sub_22841D33C()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    sub_22855C49C();
  }

  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_22841D39C(uint64_t a1)
{
  v2 = sub_22841DD98(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

void *sub_22841D408(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v33 = sub_22855D81C();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855D7BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22855CFEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = sub_22855CFAC();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = 1;
  (*(v9 + 104))(v12, *MEMORY[0x277D85188]);
  v13 = type metadata accessor for LoggingPinnedContentEmptyInputSignal();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v29[0] = "onErrorRetryInterval";
  v29[1] = v17;
  sub_22855CFDC();
  v37 = MEMORY[0x277D84F90];
  sub_22841DD98(&unk_280DED140, MEMORY[0x277D85230]);
  v18 = MEMORY[0x277D85230];
  sub_2283FA2E8(0, &qword_280DED250, MEMORY[0x277D85230]);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v18);
  sub_22855DA9C();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v33);
  v16[13] = sub_22855D84C();
  v19 = v34;
  v16[3] = v35;
  v16[4] = v19;
  v20 = v36;
  v16[2] = v36;
  v21 = v20;
  v16[5] = sub_22855BCEC();
  v16[6] = v22;
  v23 = sub_22855BCCC();
  v24 = objc_allocWithZone(v23);
  v25 = sub_22855BCBC();
  v26 = MEMORY[0x277D0FCF0];
  v16[11] = v23;
  v16[12] = v26;
  v16[8] = v25;
  sub_22841DBF0();
  v27 = swift_allocObject();
  *(v27 + 32) = 0;
  *(v27 + 16) = 2;
  *(v27 + 24) = 0;
  v16[7] = v27;
  (*(v9 + 32))(v16 + OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval, v12, v32);
  return v16;
}

uint64_t _s14HealthPlatform36LoggingPinnedContentEmptyInputSignalC16beginObservation4from14configurationsy0A13Orchestration11ValueAnchorVySbGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v2 = *v0;
  sub_22855C4AC();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[13];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  sub_22855D1DC();
  v8 = v5;

  sub_22855C47C();

  v9 = v1[7];
  os_unfair_lock_lock(v9 + 8);
  sub_22841DC58(&v9[4]);
  os_unfair_lock_unlock(v9 + 8);
  sub_22841C360(1);
}

void sub_22841D9D4()
{
  if (!qword_27D83F3C8)
  {
    v0 = sub_22855C58C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F3C8);
    }
  }
}

uint64_t sub_22841DA58()
{
  result = sub_22855CFAC();
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

uint64_t sub_22841DB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22841DB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_22841DBF0()
{
  if (!qword_27D83F3E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F3E8);
    }
  }
}

uint64_t sub_22841DC50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22841CF90();
}

uint64_t sub_22841DC58(uint64_t a1)
{
  v3 = *(a1 + 8);

  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_22841DC98(uint64_t a1)
{
  sub_22841DCF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22841DCF4()
{
  if (!qword_280DED080)
  {
    sub_2283EF310(255, &qword_280DEEB30, 0x277D82BB8);
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED080);
    }
  }
}

uint64_t sub_22841DD98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FeedItem.eligibleFeedKinds.getter()
{
  FeedItem.contentKind.getter(&v10);
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = v10;
  do
  {
    v5 = byte_283B7EB58[v0 + 32];
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (qword_280DEE748 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = qword_280DEE760;
      }

      else if (v5 == 4)
      {
        v7 = &unk_283B7EAE0;
      }

      else
      {
        v7 = &unk_283B7EB30;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v6 = &unk_283B7EAB8;
      }

      else
      {
        v6 = &unk_283B7EA90;
      }

      if (byte_283B7EB58[v0 + 32])
      {
        v7 = v6;
      }

      else
      {
        v7 = &unk_283B7EB08;
      }
    }

    v8 = sub_228425D94(v2, v7);

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2284272E0(0, *(v1 + 16) + 1, 1);
      }

      v4 = *(v1 + 16);
      v3 = *(v1 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_2284272E0((v3 > 1), v4 + 1, 1);
      }

      *(v1 + 16) = v4 + 1;
      *(v1 + v4 + 32) = v5;
    }

    ++v0;
  }

  while (v0 != 6);
  return v1;
}

void sub_22841E010(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  FeedItem.contentKind.getter(&v4);
  *a2 = v4;
}

id sub_22841E04C(char *a1, void **a2)
{
  v2 = *a2;
  v5 = *a1;
  ContentKind.rawValue.getter();
  v3 = sub_22855D17C();

  [v2 setContentKindRawValue_];

  return sub_22841E13C();
}

id FeedItem.contentKind.setter(char *a1)
{
  v4 = *a1;
  ContentKind.rawValue.getter();
  v2 = sub_22855D17C();

  [v1 setContentKindRawValue_];

  return sub_22841E13C();
}

id sub_22841E13C()
{
  if (([v0 searchSectionHintRawValue] & 0x80000000) != 0 || (v1 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(objc_msgSend(v0, sel_searchSectionHintRawValue)), v1 == 13))
  {
    FeedItem.contentKind.getter(&v8);
    v2 = [v0 keywords];
    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
    v3 = sub_22855D51C();

    sub_22841F558(v3);
    v5 = v4;

    v6 = sub_228406280(v5);

    v1 = sub_228554E94(&v8, v6);
  }

  return [v0 setSearchSectionRawValue_];
}

id (*FeedItem.contentKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  FeedItem.contentKind.getter((a1 + 8));
  return sub_22841E2D0;
}

id sub_22841E2D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  ContentKind.rawValue.getter();
  v4 = sub_22855D17C();

  [v2 setContentKindRawValue_];

  return sub_22841E13C();
}

uint64_t FeedItem.favoriteStatus.getter()
{
  swift_getObjectType();
  v1 = [v0 favoriteStatusRawValue];
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (v6 = [v0 favoriteStatusRawValue], sub_22855D1AC(), v6, v7 = sub_22855DFBC(), , v7 >= 3))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v8 = sub_22855CABC();
    __swift_project_value_buffer(v8, qword_280DEEC98);
    v9 = v0;
    v10 = sub_22855CA8C();
    v11 = sub_22855D69C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136446723;
      v14 = sub_22855E34C();
      v16 = sub_2283F8938(v14, v15, &v28);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = [v9 favoriteStatusRawValue];
      v18 = sub_22855D1AC();
      v20 = v19;

      v21 = sub_2283F8938(v18, v20, &v28);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2081;
      v22 = [v9 description];
      v23 = sub_22855D1AC();
      v25 = v24;

      v26 = sub_2283F8938(v23, v25, &v28);

      *(v12 + 24) = v26;
      _os_log_impl(&dword_2283ED000, v10, v11, "%{public}s Unexpected favorite status %{public}s for feed item %{private}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    return 2;
  }

  return v7;
}

void sub_22841E610(_BYTE *a1, void **a2)
{
  v2 = *a2;
  *a1;
  v3 = sub_22855D17C();

  [v2 setFavoriteStatusRawValue_];
}

void FeedItem.favoriteStatus.setter()
{
  v1 = sub_22855D17C();

  [v0 setFavoriteStatusRawValue_];
}

void (*FeedItem.favoriteStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = FeedItem.favoriteStatus.getter();
  return sub_22841E7E8;
}

void sub_22841E7E8(uint64_t a1)
{
  *(a1 + 8);
  v1 = *a1;
  v2 = sub_22855D17C();

  [v1 setFavoriteStatusRawValue_];
}

uint64_t sub_22841E8BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([*a1 searchSectionRawValue]);
  if (result == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*FeedItem.searchSection.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v2 searchSectionRawValue]);
  if (v4 == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v4;
    return sub_22841EA28;
  }

  return result;
}

uint64_t FeedItem.searchSectionHint.getter()
{
  if (([v0 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    return 13;
  }

  v1 = [v0 searchSectionHintRawValue];

  return _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(v1);
}

id FeedItem.searchSectionHint.setter(unsigned __int8 a1)
{
  if (a1 == 13)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = a1;
  }

  [v1 setSearchSectionHintRawValue_];

  return sub_22841E13C();
}

id (*FeedItem.searchSectionHint.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  if (([v2 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    v4 = 13;
  }

  else
  {
    v4 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v2 searchSectionHintRawValue]);
  }

  *(a1 + 8) = v4;
  return sub_22841EB5C;
}

id sub_22841EB5C(uint64_t a1)
{
  if (*(a1 + 8) == 13)
  {
    v1 = 0xFFFFFFFFLL;
  }

  else
  {
    v1 = *(a1 + 8);
  }

  [*a1 setSearchSectionHintRawValue_];
  return sub_22841E13C();
}

uint64_t FeedItem.associatedKeywords.getter()
{
  v1 = [v0 keywords];
  type metadata accessor for Keyword();
  sub_228428BB0(qword_280DED548, type metadata accessor for Keyword);
  v2 = sub_22855D51C();

  sub_22841F558(v2);
  v4 = v3;

  v5 = sub_228406280(v4);

  return v5;
}

uint64_t FeedItem.associatedHKTypes.getter()
{
  v1 = [v0 dataTypes];
  type metadata accessor for DataType();
  sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
  v2 = sub_22855D51C();

  sub_22841F19C(v2);
  v4 = v3;

  v5 = sub_228429F58(v4, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  return v5;
}

uint64_t sub_22841ED68@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dataTypes];
  type metadata accessor for DataType();
  sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
  v4 = sub_22855D51C();

  sub_22841F19C(v4);
  v6 = v5;

  v7 = sub_228429F58(v6, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  *a2 = v7;
  return result;
}

void sub_22841EE68(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_228428C28(v2, v5);

    sub_228429950(v6, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
    v7 = sub_22855D50C();

    [v3 setDataTypes_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedHKTypes.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_228428C28(a1, v4);

    sub_228429950(v5, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
    v6 = sub_22855D50C();

    [v1 setDataTypes_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void sub_22841F19C(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType);
    sub_22855D56C();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_22855DB8C() || (type metadata accessor for DataType(), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_228407958();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [objc_opt_self() dataTypeWithCode_];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x22AAB9400]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22855D3EC();
      }

      sub_22855D43C();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22841F43C(uint64_t a1)
{
  result = MEMORY[0x22AAB95B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_228406318(&v13, v11, v12);
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

void sub_22841F558(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_22845F430(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_22855D1AC();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2284272C0((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_22842C2B0();
          v7 = sub_22855D54C();
          sub_22855DBBC();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_228416CB8(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_228416CB8(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          v2 = v34;
          if (v6 == v34)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_22841F8B0(uint64_t a1)
{
  v3 = sub_22855C33C();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_22855DB4C();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v49 = MEMORY[0x277D84F90];
  sub_228427310(0, v8 & ~(v8 >> 63), 0);
  v9 = v49;
  if (v43)
  {
    result = sub_22855DAEC();
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    result = sub_22855DAAC();
    v11 = *(a1 + 36);
  }

  v46 = result;
  v47 = v11;
  v48 = v43 != 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v38 = v8;
    v39 = v42 + 32;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v36 = a1 + 56;
    v37 = v14;
    v34 = v1;
    v35 = a1 + 64;
    v40 = a1;
    while (v13 < v8)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_37;
      }

      v17 = v46;
      v18 = v48;
      v44 = v47;
      sub_22845F674(v46, v47, v48, a1);
      v20 = v19;
      v21 = [v19 identifier];
      sub_22855D1AC();

      sub_22855C31C();
      v49 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_228427310(v22 > 1, v23 + 1, 1);
        v9 = v49;
      }

      *(v9 + 16) = v23 + 1;
      result = (*(v42 + 32))(v9 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v23, v7, v41);
      if (v43)
      {
        a1 = v40;
        if (!v18)
        {
          goto LABEL_42;
        }

        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v8 = v38;
        sub_22842C174();
        v15 = sub_22855D54C();
        sub_22855DBBC();
        result = v15(v45, 0);
        if (v13 == v8)
        {
LABEL_34:
          sub_228416CB8(v46, v47, v48);
          return v9;
        }
      }

      else
      {
        a1 = v40;
        if (v18)
        {
          goto LABEL_43;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v24 = 1 << *(v40 + 32);
        if (v17 >= v24)
        {
          goto LABEL_38;
        }

        v25 = v17 >> 6;
        v26 = *(v36 + 8 * (v17 >> 6));
        if (((v26 >> v17) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v40 + 36) != v44)
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v17 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_228416CB8(v17, v44, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v17, v44, 0);
        }

LABEL_33:
        v33 = *(a1 + 36);
        v46 = v24;
        v47 = v33;
        v48 = 0;
        v8 = v38;
        if (v13 == v38)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_22841FCB4(uint64_t a1)
{
  v3 = type metadata accessor for UserProfile();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22855DB4C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v41 = v6;
  v50 = MEMORY[0x277D84F90];
  sub_228427360(0, v7 & ~(v7 >> 63), 0);
  v8 = v50;
  if (v44)
  {
    result = sub_22855DAEC();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_22855DAAC();
    v10 = *(a1 + 36);
  }

  v47 = result;
  v48 = v10;
  v49 = v44 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v38 = a1 + 56;
    v39 = v13;
    v36[1] = v1;
    v37 = a1 + 64;
    v40 = v7;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_37;
      }

      v16 = v47;
      v17 = v49;
      v45 = v48;
      v18 = a1;
      sub_22845F898(v47, v48, v49, a1);
      v20 = v19;
      v21 = Profile.hkProfileIdentifier.getter();
      v22 = [v21 identifier];
      v23 = v41;
      sub_22855C1BC();

      *(v23 + *(v43 + 20)) = v21;
      v50 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_228427360(v24 > 1, v25 + 1, 1);
        v23 = v41;
        v8 = v50;
      }

      *(v8 + 16) = v25 + 1;
      result = sub_22842C078(v23, v8 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, type metadata accessor for UserProfile);
      if (v44)
      {
        if (!v17)
        {
          goto LABEL_42;
        }

        a1 = v18;
        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v40;
        sub_22842C0E0();
        v14 = sub_22855D54C();
        sub_22855DBBC();
        result = v14(v46, 0);
        if (v12 == v7)
        {
LABEL_34:
          sub_228416CB8(v47, v48, v49);
          return v8;
        }
      }

      else
      {
        if (v17)
        {
          goto LABEL_43;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        a1 = v18;
        v26 = 1 << *(v18 + 32);
        if (v16 >= v26)
        {
          goto LABEL_38;
        }

        v27 = v16 >> 6;
        v28 = *(v38 + 8 * (v16 >> 6));
        if (((v28 >> v16) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v18 + 36) != v45)
        {
          goto LABEL_40;
        }

        v29 = v28 & (-2 << (v16 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v37 + 8 * v27);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_228416CB8(v16, v45, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v16, v45, 0);
        }

LABEL_33:
        v35 = *(v18 + 36);
        v47 = v26;
        v48 = v35;
        v49 = 0;
        v7 = v40;
        if (v12 == v40)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}