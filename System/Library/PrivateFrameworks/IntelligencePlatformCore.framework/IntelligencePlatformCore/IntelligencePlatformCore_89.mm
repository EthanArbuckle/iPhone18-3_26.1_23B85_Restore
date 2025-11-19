void sub_1C4BEE248()
{
  v2 = v0;
  v3 = sub_1C4EFDAB8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_featurizer);
    if (v12)
    {
      v13 = sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider + 24));
      (*(v6 + 104))(v11, *MEMORY[0x1E69A9418], v3);
      v14 = *v13;

      v15 = sub_1C45EA9C0(v11);
      if (v1)
      {
        (*(v6 + 8))(v11, v3);
      }

      else
      {
        v21 = v15;
        (*(v6 + 8))(v11, v3);
        sub_1C4BECA58(v21, v12);

        v22 = v2[3];
        v23 = v2[4];
        v24 = v2[5];
        v25 = v2[6];
        v26[0] = v2[2];
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;
        v26[4] = v25;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C4D0E5C0();
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v16 = sub_1C4F00978();
      sub_1C442B738(v16, qword_1EDE2DDE0);

      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CF8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config + 8), v26);
        _os_log_impl(&dword_1C43F8000, v17, v18, "%s: Featurizer is nil. Ignoring AllSources and returning", v19, 0xCu);
        sub_1C440962C(v20);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4D0E51C();
    }
  }
}

void *sub_1C4BEE5A8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextAspects);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextViews);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_featurizer);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider));
  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_keyValueStore);

  return v0;
}

uint64_t sub_1C4BEE64C()
{
  sub_1C4BEE5A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceContextualFeatureView()
{
  result = qword_1EDDF1108;
  if (!qword_1EDDF1108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BEE6F8()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BEE7BC()
{
  sub_1C4BEE248();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C4BEE870()
{
  result = qword_1EC0C4908;
  if (!qword_1EC0C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4908);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MergedContextViewError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BEE9A4()
{
  result = qword_1EC0C4910;
  if (!qword_1EC0C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4910);
  }

  return result;
}

uint64_t sub_1C4BEE9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 40) = *(a1 + 24);
  sub_1C4BEF204(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config, _s10ViewConfigVMa);
  sub_1C4BEF204(a3, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_environmentConfig, type metadata accessor for Configuration);
  return v3;
}

uint64_t sub_1C4BEEA88()
{
  sub_1C43FBCD4();
  v1[7] = v0;
  v2 = *(*(_s10ViewConfigVMa(0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_1C4EF9D38();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BEEB70, 0, 0);
}

uint64_t sub_1C4BEEB70()
{
  if ([objc_opt_self() isInternalDevice])
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    sub_1C4EF9058();
    v6 = sub_1C4EF9CF8();
    v8 = v7;
    (*(v2 + 8))(v1, v4);
    v9 = v5[3];
    v10 = v5[4];
    v11 = v5[5];
    v12 = v5[6];
    *(v0 + 16) = v5[2];
    *(v0 + 24) = v9;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
    *(v0 + 48) = v12;
    v13 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config);
    sub_1C463F29C(v13, v3);
    v15 = *v13;
    v14 = v13[1];
    v16 = type metadata accessor for EntityRelevanceDataCollectionTask();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    *(v0 + 96) = sub_1C46ED494((v0 + 16), v3, v15, v14, v6, v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = swift_task_alloc();
    *(v0 + 104) = v19;
    *v19 = v0;
    v19[1] = sub_1C4BEED60;

    return sub_1C46ED560();
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);

    sub_1C43FBDA0();

    return v23();
  }
}

uint64_t sub_1C4BEED60()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1C4BEEEE0;
  }

  else
  {
    v3 = sub_1C4BEEE70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4BEEE70()
{
  sub_1C43FBCD4();
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[8];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4BEEEE0()
{
  sub_1C43FBCD4();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  sub_1C43FBDA0();
  v5 = v0[14];

  return v4();
}

void *sub_1C4BEEF50()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C443C120(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config, _s10ViewConfigVMa);
  sub_1C443C120(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_environmentConfig, type metadata accessor for Configuration);
  return v0;
}

uint64_t sub_1C4BEEFDC()
{
  sub_1C4BEEF50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceDataCollectionView()
{
  result = qword_1EC0C4918;
  if (!qword_1EC0C4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BEF088()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Configuration();
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

uint64_t sub_1C4BEF160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4BEEA88();
}

uint64_t sub_1C4BEF204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C4BEF26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4D50A90(&unk_1F43D6BC0);
  sub_1C463402C(v22);
  v24 = v23;

  sub_1C4499940(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4BEF2D0(unint64_t a1, uint64_t a2)
{
  v153 = a2;
  v148 = a1;
  v157 = sub_1C4EFDAB8();
  v3 = sub_1C43FCDF8(v157);
  v156 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  v154 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v144 - v9;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBFDC();
  v152 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v144 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v144 - v18;
  v20 = sub_1C4EF9CD8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v166 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v144 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v144 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v144 - v34;
  v36 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_keyValueStore);
  v37 = v155;
  sub_1C446FB00();
  v150 = v23;
  if (v37)
  {

    sub_1C440BAA8(v19, 1, 1, v20);
    v155 = 0;
LABEL_4:
    sub_1C44686E4(v19);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v149 = v20;
    v38 = v157;
    v39 = sub_1C4F00978();
    sub_1C442B738(v39, qword_1EDE2DDE0);
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CF8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C43F8000, v40, v41, "EntityRelevanceFeatureView: Using current context plus fixed previous entity interaction.", v42, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4EF9CC8();
    sub_1C44010E4();
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v43 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    sub_1C440B56C(v43, v165);
    v45 = *(v44 + 72);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1C4F0D130;
    v49 = v48 + v47;
    v50 = *MEMORY[0x1E69A9418];
    v51 = v156;
    v52 = *(v156 + 104);
    v52(v49, v50, v38);
    v53 = sub_1C4413988();
    v54 = v154;
    v52(v154, v50, v38);
    v55 = v152;
    v56 = v149;
    sub_1C440BAA8(v152, 1, 1, v149);
    v57 = *v53;
    v58 = v155;
    sub_1C45E1070(&v162);
    v151 = v58;
    if (v58)
    {
      sub_1C44686E4(v55);
      v59 = *(v51 + 8);
      v59(v54, v38);
      (*(v150 + 8))(v166, v56);
      v59(v49, v38);
      *(v48 + 16) = 0;
      swift_setDeallocating();
      return sub_1C49E167C();
    }

    v61 = (v49 + *(v147 + 12));
    sub_1C44686E4(v55);
    (*(v51 + 8))(v54, v38);
    v62 = *v163;
    *v61 = v162;
    v61[1] = v62;
    *(v61 + 25) = *&v163[9];
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4407E98();
    sub_1C4403DDC(v63, v64);
    sub_1C4F00F28();
    v65 = type metadata accessor for BehaviorContext();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    sub_1C45D689C();
    v69 = v68;
    goto LABEL_12;
  }

  v151 = v32;
  v145 = v16;
  v147 = v29;
  v146 = v10;
  v149 = v35;
  v155 = 0;
  if (sub_1C44157D4(v19, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  v99 = v23;
  v100 = v149;
  (*(v23 + 32))(v149, v19, v20);
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v101 = sub_1C4F00978();
  sub_1C442B738(v101, qword_1EDE2DDE0);
  v102 = sub_1C4F00968();
  v103 = sub_1C4F01CD8();
  v104 = os_log_type_enabled(v102, v103);
  v105 = v151;
  if (v104)
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_1C43F8000, v102, v103, "EntityRelevanceFeatureView: Mocked date context found in KeyValueStore.", v106, 2u);
    v100 = v149;
    sub_1C43FBE2C();
  }

  v107 = *(v99 + 16);
  v107(v105, v100, v20);
  v108 = sub_1C4F00968();
  v109 = v99;
  v110 = sub_1C4F01CD8();
  if (os_log_type_enabled(v108, v110))
  {
    v111 = swift_slowAlloc();
    v154 = v107;
    v112 = v111;
    v113 = swift_slowAlloc();
    v158[0] = v113;
    *v112 = 136315138;
    sub_1C4403DDC(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
    v114 = sub_1C4F02858();
    v115 = v105;
    v117 = v116;
    v166 = *(v109 + 8);
    v166(v115, v20);
    v118 = sub_1C441D828(v114, v117, v158);

    *(v112 + 4) = v118;
    _os_log_impl(&dword_1C43F8000, v108, v110, "EntityRelevanceFeatureView: Using %s as the context instead of reading from currentContext views.", v112, 0xCu);
    sub_1C440962C(v113);
    sub_1C43FBE2C();
    v107 = v154;
    sub_1C43FBE2C();
  }

  else
  {

    v166 = *(v109 + 8);
    v166(v105, v20);
  }

  v119 = v156;
  v107(v147, v149, v20);
  sub_1C44010E4();
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v120 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
  sub_1C440B56C(v120, &v163[24]);
  v122 = *(v121 + 72);
  v124 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v125 = swift_allocObject();
  v70 = v20;
  *(v125 + 16) = xmmword_1C4F0D130;
  v154 = v125;
  v126 = *MEMORY[0x1E69A9418];
  v127 = *(v119 + 104);
  v152 = v125 + v124;
  v128 = v157;
  v127();
  v129 = sub_1C4413988();
  v130 = v146;
  (v127)(v146, v126, v128);
  v77 = v149;
  v82 = v130;
  v81 = v145;
  v107(v145, v149, v20);
  sub_1C440BAA8(v81, 0, 1, v20);
  v131 = *v129;
  v132 = v155;
  sub_1C45E1070(&v160);
  v151 = v132;
  if (v132)
  {
    sub_1C44686E4(v81);
    v133 = *(v156 + 8);
    v134 = v157;
    v133(v82, v157);
    v135 = v166;
    v166(v147, v70);
    v135(v77, v70);
    v133(v152, v134);
    *(v154 + 2) = 0;
    swift_setDeallocating();
    return sub_1C49E167C();
  }

LABEL_44:
  v136 = (v152 + *(v144[1] + 48));
  sub_1C44686E4(v81);
  (*(v156 + 8))(v82, v157);
  v137 = v161[0];
  *v136 = v160;
  v136[1] = v137;
  *(v136 + 25) = *(v161 + 9);
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4407E98();
  sub_1C4403DDC(v138, v139);
  sub_1C4F00F28();
  v140 = type metadata accessor for BehaviorContext();
  v141 = *(v140 + 48);
  v142 = *(v140 + 52);
  swift_allocObject();
  sub_1C45D689C();
  v69 = v143;
  v166(v77, v70);
LABEL_12:
  v159 = MEMORY[0x1E69E7CC0];
  v155 = *(v148 + 16);
  v154 = (v148 + 32);

  v70 = 0;
  v152 = v69;
  while (v70 != v155)
  {
    v71 = &v154[48 * v70];
    v72 = *(v71 + 1);
    v164 = *v71;
    *v165 = v72;
    *&v165[9] = *(v71 + 25);
    sub_1C45A2358(&v164, v158);
    sub_1C4D50A90(&unk_1F43D6BC0);
    v74 = sub_1C4601874(&v164, v73, v69);

    if (v74)
    {
      v156 = v70;
      v166 = v74;
      v75 = [v74 featureNames];
      v76 = sub_1C4F01AB8();

      v77 = v76 + 56;
      v78 = 1 << *(v76 + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v76 + 56);
      v81 = (v78 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v82 = 0;
      v157 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v83 = v82;
        if (!v80)
        {
          break;
        }

LABEL_23:
        v84 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        v85 = (*(v76 + 48) + ((v82 << 10) | (16 * v84)));
        v70 = *v85;
        v86 = v85[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v87 = sub_1C4F01108();
        v88 = [v166 featureValueForName_];

        if (v88)
        {
          v150 = sub_1C45D2400();
          v149 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = *(v157 + 16);
            sub_1C458B504();
            v157 = v96;
          }

          v90 = *(v157 + 16);
          v91 = v90 + 1;
          if (v90 >= *(v157 + 24) >> 1)
          {
            v148 = v90 + 1;
            sub_1C458B504();
            v91 = v148;
            v157 = v97;
          }

          v92 = v157;
          *(v157 + 16) = v91;
          v93 = (v92 + 40 * v90);
          v93[4] = v70;
          v93[5] = v86;
          v94 = v149;
          v93[6] = v150;
          v93[7] = v94;
          v93[8] = v88;
        }

        else
        {
        }
      }

      while (1)
      {
        v82 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v82 >= v81)
        {
          sub_1C45EC75C(&v164);

          swift_unknownObjectRelease();
          v69 = v152;
          v70 = v156;
          v98 = v157;
          goto LABEL_32;
        }

        v80 = *(v77 + 8 * v82);
        ++v83;
        if (v80)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    sub_1C45EC75C(&v164);
    v98 = MEMORY[0x1E69E7CC0];
LABEL_32:
    ++v70;
    sub_1C49D3A70(v98);
  }

  return v159;
}

void sub_1C4BF01BC()
{
  v2 = v0;
  v3 = sub_1C4EFDAB8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_featurizer);
    if (v11)
    {
      v12 = sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider + 24));
      (*(v6 + 104))(v10, *MEMORY[0x1E69A9418], v3);
      v13 = *v12;

      v14 = sub_1C45EA9C0(v10);
      if (v1)
      {
        (*(v6 + 8))(v10, v3);
      }

      else
      {
        v20 = v14;
        (*(v6 + 8))(v10, v3);
        sub_1C4BEF2D0(v20, v11);

        v21 = v2[3];
        v22 = v2[4];
        v23 = v2[5];
        v24 = v2[6];
        v26[0] = v2[2];
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C4D0E5C0();
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v15 = sub_1C4F00978();
      sub_1C442B738(v15, qword_1EDE2DDE0);

      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CF8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config + 8), v26);
        _os_log_impl(&dword_1C43F8000, v16, v17, "%s: Featurizer is nil. Ignoring AllSources and returning", v18, 0xCu);
        sub_1C440962C(v19);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4D0E51C();
    }
  }
}

void *sub_1C4BF0524()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_featurizer);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider));
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_keyValueStore);

  return v0;
}

uint64_t sub_1C4BF05A8()
{
  sub_1C4BF0524();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceFeatureView()
{
  result = qword_1EDDE10A8;
  if (!qword_1EDDE10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BF0654()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BF0708()
{
  sub_1C4BF01BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BF07B0()
{
  v1[13] = v0;
  v2 = sub_1C4F01828();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for BehaviorDigestRunSpecification(0);
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  v1[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v10 = *(*(sub_1C456902C(&qword_1EC0C4938, qword_1C4F5CCB0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BF097C, 0, 0);
}

uint64_t sub_1C4BF097C()
{
  v73 = v0;
  v1 = v0[13];
  v2 = v1[2];
  v0[27] = v2;
  v0[28] = v1[3];
  v0[29] = v1[4];
  v3 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v4 = sub_1C4A72854(0, v3);
  v0[2] = v2;
  v0[3] = v4;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[22];
    sub_1C45F6EC8();
    sub_1C44CDA7C();
    v9 = 1;
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      v11 = v0[28];
      v10 = v0[29];
      v12 = v0[26];
      v14 = v0[23];
      v13 = v0[24];
      sub_1C44CDA7C();
      v11(v14);
      sub_1C4420C3C(v14, &qword_1EC0B9CF8, &unk_1C4F11660);
      v9 = 0;
    }

    v15 = v0[26];
    sub_1C440BAA8(v15, v9, 1, v0[18]);
    sub_1C4414160(v15);
    if (v16)
    {
      sub_1C43FDFF0();

      v38 = v0[3];

      sub_1C43FBDA0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    v17 = v0[26];
    v18 = v0[21];
    sub_1C442D650();
    sub_1C4BF85E8();
    if (p_info[205] != -1)
    {
      swift_once();
    }

    v20 = v0[20];
    v19 = v0[21];
    v21 = sub_1C4F00978();
    v0[30] = sub_1C442B738(v21, qword_1EDE2DDE0);
    sub_1C442D650();
    sub_1C4BF8590();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CF8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[20];
    if (v24)
    {
      sub_1C43FECF0();
      v26 = swift_slowAlloc();
      sub_1C43FEC60();
      v27 = swift_slowAlloc();
      v72[0] = v27;
      *v26 = 136315138;
      sub_1C4433E14();
      sub_1C4F02438();
      sub_1C442BA70();
      v28 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
      sub_1C4F02438();
      v29 = v0[10];
      v30 = v0[11];
      sub_1C441A76C();
      sub_1C4BF8528(v25, v31);
      sub_1C441D828(v29, v30, v72);
      sub_1C4426A94();

      *(v26 + 4) = v29;
      _os_log_impl(&dword_1C43F8000, v22, v23, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v26, 0xCu);
      sub_1C440962C(v27);
      v32 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v32);
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v25, v33);
    }

    v34 = v0[21];
    v35 = *(v34 + *(v0[18] + 20));
    v0[31] = v35;
    v36 = v35[2];
    v0[32] = v36;
    v0[33] = 0;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v36)
    {
      break;
    }

    sub_1C4BF8528(v34, type metadata accessor for BehaviorDigestRunSpecification);
  }

  if (v35[2])
  {
    v39 = v35[4];
    v0[34] = v39;
    v40 = v35[5];
    v0[35] = v40;
    swift_unknownObjectRetain();
    sub_1C4F01968();
    v43 = v0[30];
    v44 = v0[21];
    v45 = v0[19];
    sub_1C442D650();
    sub_1C4BF8590();
    swift_unknownObjectRetain();
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CF8();
    swift_unknownObjectRelease();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[19];
    if (v48)
    {
      v50 = sub_1C440F274();
      v72[0] = swift_slowAlloc();
      *v50 = 136315394;
      v0[6] = v39;
      v0[7] = v40;
      swift_unknownObjectRetain();
      sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
      v51 = sub_1C4F01198();
      v53 = sub_1C441D828(v51, v52, v72);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v0[8] = 0;
      v0[9] = 0xE000000000000000;
      sub_1C4EF9CD8();
      sub_1C4F02438();
      sub_1C442BA70();
      v54 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
      sub_1C4F02438();
      v56 = v0[8];
      v55 = v0[9];
      sub_1C441A76C();
      sub_1C4BF8528(v49, v57);
      v58 = sub_1C4402120();
      v61 = sub_1C441D828(v58, v59, v60);

      *(v50 + 14) = v61;
      _os_log_impl(&dword_1C43F8000, v46, v47, "BehaviorDigestBatchedTaskRunner: Running %s over %s", v50, 0x16u);
      swift_arrayDestroy();
      v62 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v62);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v49, v63);
    }

    swift_getObjectType();
    v64 = *(v40 + 16);
    sub_1C4404280();
    v71 = v65 + *v65;
    v67 = *(v66 + 4);
    v68 = swift_task_alloc();
    v0[36] = v68;
    *v68 = v0;
    sub_1C4412778(v68);
    sub_1C440405C();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BF10F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 296) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4BF11EC()
{
  v83 = v0;
  v2 = v0[34];
  result = swift_unknownObjectRelease();
  v4 = v0[32];
  v5 = v0[33] + 1;
  v80 = v0[37];
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v0[33] = v5;
    if (v5 != v4)
    {
      break;
    }

    v7 = v0[21];
    sub_1C441A76C();
    sub_1C4BF8528(v8, v9);

    v11 = v0[24];
    v10 = v0[25];
    v1 = v0[22];
    sub_1C45F6EC8();
    sub_1C4402B58();
    sub_1C44CDA7C();
    v12 = 1;
    sub_1C4414160(v11);
    if (!v13)
    {
      v1 = v0[28];
      v14 = v0[29];
      v15 = v0[26];
      v17 = v0[23];
      v16 = v0[24];
      sub_1C44CDA7C();
      (v1)(v17);
      sub_1C4420C3C(v17, &qword_1EC0B9CF8, &unk_1C4F11660);
      v12 = 0;
    }

    v18 = v0[26];
    v19 = v0[18];
    sub_1C440BAA8(v18, v12, 1, v19);
    if (sub_1C44157D4(v18, 1, v19) == 1)
    {
      sub_1C43FDFF0();

      v48 = v0[3];

      sub_1C43FBDA0();
      goto LABEL_16;
    }

    v20 = v0[26];
    v21 = v0[21];
    sub_1C442D650();
    sub_1C4BF85E8();
    if (p_info[205] != -1)
    {
      swift_once();
    }

    v4 = v0[20];
    v22 = v0[21];
    v23 = sub_1C4F00978();
    v0[30] = sub_1C442B738(v23, qword_1EDE2DDE0);
    sub_1C442D650();
    sub_1C4402120();
    sub_1C4BF8590();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[20];
    if (v26)
    {
      sub_1C43FECF0();
      v4 = swift_slowAlloc();
      sub_1C43FEC60();
      v1 = swift_slowAlloc();
      v82 = v1;
      *v4 = 136315138;
      sub_1C4433E14();
      sub_1C4F02438();
      sub_1C442BA70();
      v28 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
      sub_1C4F02438();
      v29 = v0[10];
      v30 = v0[11];
      sub_1C441A76C();
      sub_1C4BF8528(v27, v31);
      v32 = sub_1C4414A08();
      v35 = sub_1C441D828(v32, v33, v34);
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);

      *(v4 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v24, v25, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v4, 0xCu);
      sub_1C440962C(v1);
      v36 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v36);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v27, v37);
    }

    result = sub_1C4415D1C();
    v5 = 0;
  }

  if (v5 < *(v0[31] + 16))
  {
    sub_1C440C770(v5);
    sub_1C4F01968();
    if (!v80)
    {
      v51 = v0[30];
      v52 = v0[21];
      v53 = v0[19];
      sub_1C442D650();
      sub_1C4BF8590();
      swift_unknownObjectRetain();
      v54 = sub_1C4F00968();
      v55 = sub_1C4F01CF8();
      swift_unknownObjectRelease();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v0[19];
      if (v56)
      {
        v58 = sub_1C440F274();
        v82 = swift_slowAlloc();
        *v58 = 136315394;
        v0[6] = v4;
        v0[7] = v1;
        swift_unknownObjectRetain();
        sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
        v59 = sub_1C4F01198();
        sub_1C441D828(v59, v60, &v82);

        sub_1C440BFE8();
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C442BA70();
        v61 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
        sub_1C44185F8();
        sub_1C4F02438();
        v62 = v0[8];
        v63 = v0[9];
        sub_1C441A76C();
        sub_1C4BF8528(v57, v64);
        v65 = sub_1C4414A08();
        v68 = sub_1C441D828(v65, v66, v67);

        *(v58 + 14) = v68;
        sub_1C4423D00(&dword_1C43F8000, v69, v70, "BehaviorDigestBatchedTaskRunner: Running %s over %s");
        swift_arrayDestroy();
        v71 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v71);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v57, v72);
      }

      swift_getObjectType();
      v73 = *(v1 + 16);
      sub_1C4404280();
      v81 = v74 + *v74;
      v76 = *(v75 + 4);
      v77 = swift_task_alloc();
      v0[36] = v77;
      *v77 = v0;
      sub_1C4412778();
      sub_1C4409BA4();

      __asm { BRAA            X3, X16 }
    }

    v38 = v0[31];
    v39 = v0[29];
    v40 = v0[27];
    v41 = v0[21];

    swift_unknownObjectRelease();
    sub_1C441A76C();
    sub_1C4BF8528(v41, v42);

    v43 = v0[3];

    v45 = v0[25];
    v44 = v0[26];
    v47 = v0[23];
    v46 = v0[24];
    sub_1C440254C();

    sub_1C43FBDA0();
LABEL_16:
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

void sub_1C4BF18B8()
{
  v111 = v0;
  v1 = *(v0 + 296);
  *(v0 + 96) = v1;
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  if (v5)
  {
    v8 = *(v0 + 248);
    v108 = *(v0 + 232);
    v9 = *(v0 + 216);
    v10 = *(v0 + 168);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);

    (*(v13 + 32))(v12, v11, v14);
    sub_1C4426130();
    sub_1C4472598(v15, v16);
    swift_allocError();
    (*(v13 + 16))(v17, v12, v14);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v13 + 8))(v12, v14);
    sub_1C441A76C();
    sub_1C4BF8528(v10, v18);

    v19 = *(v0 + 24);

    v73 = *(v0 + 200);
    v72 = *(v0 + 208);
    v75 = *(v0 + 184);
    v74 = *(v0 + 192);
    sub_1C440254C();

    sub_1C43FBDA0();
LABEL_20:

    v76();
  }

  else
  {
    v20 = *(v0 + 240);

    swift_unknownObjectRetain();
    v21 = v6;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();
    swift_unknownObjectRelease();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 296);
    if (v24)
    {
      v107 = *(v0 + 272);
      v26 = sub_1C440F274();
      v27 = swift_slowAlloc();
      sub_1C43FEC60();
      v28 = swift_slowAlloc();
      v110[0] = v28;
      *v26 = 136315394;
      *(v0 + 32) = v107;
      swift_unknownObjectRetain();
      sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
      v29 = sub_1C4F01198();
      v31 = sub_1C441D828(v29, v30, v110);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      sub_1C4404B90();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      sub_1C4420C3C(v27, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C446C0A0(v28);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v39 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v39);

      swift_unknownObjectRelease();
    }

    else
    {
      v26 = *(v0 + 272);

      swift_unknownObjectRelease();
    }

    v40 = *(v0 + 256);
    v41 = *(v0 + 264) + 1;
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    while (1)
    {
      *(v0 + 264) = v41;
      if (v41 != v40)
      {
        break;
      }

      v43 = *(v0 + 168);
      sub_1C441A76C();
      sub_1C4BF8528(v44, v45);

      v47 = *(v0 + 192);
      v46 = *(v0 + 200);
      v48 = *(v0 + 176);
      sub_1C45F6EC8();
      sub_1C44CDA7C();
      v49 = 1;
      if (sub_1C44157D4(v47, 1, v48) != 1)
      {
        v51 = *(v0 + 224);
        v50 = *(v0 + 232);
        v52 = *(v0 + 208);
        v54 = *(v0 + 184);
        v53 = *(v0 + 192);
        sub_1C44CDA7C();
        v51(v54);
        sub_1C4420C3C(v54, &qword_1EC0B9CF8, &unk_1C4F11660);
        v49 = 0;
      }

      v55 = *(v0 + 208);
      sub_1C440BAA8(v55, v49, 1, *(v0 + 144));
      sub_1C4414160(v55);
      if (v56)
      {
        sub_1C43FDFF0();

        v77 = *(v0 + 24);

        sub_1C43FBDA0();
        goto LABEL_20;
      }

      v57 = *(v0 + 208);
      v58 = *(v0 + 168);
      sub_1C442D650();
      sub_1C4BF85E8();
      if (p_info[205] != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 160);
      v60 = *(v0 + 168);
      v61 = sub_1C4F00978();
      v26 = sub_1C442B738(v61, qword_1EDE2DDE0);
      *(v0 + 240) = v26;
      sub_1C442D650();
      sub_1C4402120();
      sub_1C4BF8590();
      v62 = sub_1C4F00968();
      v63 = sub_1C4F01CF8();
      v64 = os_log_type_enabled(v62, v63);
      v40 = *(v0 + 160);
      if (v64)
      {
        sub_1C43FECF0();
        v65 = swift_slowAlloc();
        sub_1C43FEC60();
        v26 = swift_slowAlloc();
        v110[0] = v26;
        *v65 = 136315138;
        sub_1C4433E14();
        sub_1C4F02438();
        sub_1C442BA70();
        v66 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
        sub_1C4F02438();
        v67 = *(v0 + 80);
        v68 = *(v0 + 88);
        sub_1C441A76C();
        sub_1C4BF8528(v40, v69);
        sub_1C441D828(v67, v68, v110);
        sub_1C4426A94();
        p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);

        *(v65 + 4) = v67;
        _os_log_impl(&dword_1C43F8000, v62, v63, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v65, 0xCu);
        sub_1C440962C(v26);
        v70 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v70);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v40, v71);
      }

      sub_1C4415D1C();
      v41 = 0;
    }

    if (v41 >= *(*(v0 + 248) + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C440C770(v41);
      sub_1C4F01968();
      v78 = *(v0 + 240);
      v79 = *(v0 + 168);
      v80 = *(v0 + 152);
      sub_1C442D650();
      sub_1C4BF8590();
      swift_unknownObjectRetain();
      v81 = sub_1C4F00968();
      v82 = sub_1C4F01CF8();
      swift_unknownObjectRelease();
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 152);
      if (v83)
      {
        v85 = sub_1C440F274();
        v110[0] = swift_slowAlloc();
        *v85 = 136315394;
        *(v0 + 48) = v40;
        *(v0 + 56) = v26;
        swift_unknownObjectRetain();
        sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
        v86 = sub_1C4F01198();
        sub_1C441D828(v86, v87, v110);

        sub_1C440BFE8();
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C442BA70();
        v88 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
        sub_1C44185F8();
        sub_1C4F02438();
        v89 = *(v0 + 64);
        v90 = *(v0 + 72);
        sub_1C441A76C();
        sub_1C4BF8528(v84, v91);
        v92 = sub_1C4414A08();
        v95 = sub_1C441D828(v92, v93, v94);

        *(v85 + 14) = v95;
        sub_1C4423D00(&dword_1C43F8000, v96, v97, "BehaviorDigestBatchedTaskRunner: Running %s over %s");
        swift_arrayDestroy();
        v98 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v98);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v84, v99);
      }

      ObjectType = swift_getObjectType();
      v101 = *(v26 + 16);
      sub_1C4404280();
      v109 = (v102 + *v102);
      v104 = *(v103 + 4);
      v105 = swift_task_alloc();
      *(v0 + 288) = v105;
      *v105 = v0;
      v106 = sub_1C4412778();

      v109(v106, ObjectType, v26);
    }
  }
}

uint64_t sub_1C4BF227C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BF22C8()
{
  sub_1C43FBCD4();
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  *(v0 + 304) = v3;
  *(v0 + 248) = v4;
  v5 = type metadata accessor for Configuration();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v0 + 272) = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4BF234C()
{
  sub_1C4404D98();
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  v5 = *(v0 + 264);

  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 272);
    v8 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 32) = v8;
    v9 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v9;
    _s45EntityRelevanceHistoricalFeatureViewGeneratorCMa();
    swift_unownedRetainStrong();
    sub_1C4420610();
    sub_1C4BF8590();

    sub_1C46F4E90(v0 + 16, v0 + 144);
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_1C4BF2564;
    v11 = *(v0 + 272);

    return sub_1C4BF2754();
  }

  else
  {
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    sub_1C450B034();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = v13;
    *(v15 + 16) = xmmword_1C4F5B670;
    *(v15 + 32) = 0xD000000000000025;
    *(v15 + 40) = 0x80000001C4FB83A0;
    *(v15 + 48) = v18;
    *(v15 + 64) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = *(v0 + 272);

    sub_1C43FBDA0();

    return v17();
  }
}

uint64_t sub_1C4BF2564(uint64_t a1)
{
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v2;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 288) = v1;

  if (!v1)
  {
    *(v5 + 296) = a1;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4BF2678()
{
  sub_1C43FBCD4();
  v1 = v0[34];
  sub_1C46EEFDC((v0 + 2));

  v2 = v0[1];
  v3 = v0[37];

  return v2(v3, &off_1F44026A8);
}

uint64_t sub_1C4BF26F0()
{
  sub_1C43FBCD4();
  sub_1C46EEFDC(v0 + 16);
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4BF2754()
{
  sub_1C43FBCD4();
  v1[124] = v0;
  v1[123] = v2;
  v1[122] = v3;
  v4 = sub_1C4EFDAB8();
  v1[125] = v4;
  v5 = *(v4 - 8);
  sub_1C4404280();
  v1[126] = v6;
  v8 = *(v7 + 64);
  v1[127] = sub_1C43FE604();
  v1[128] = swift_task_alloc();
  v9 = type metadata accessor for Configuration();
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v1[129] = sub_1C43FE604();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4BF2864()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 976);
  sub_1C4420610();
  sub_1C4BF8590();
  v3 = type metadata accessor for KeyValueStore();
  sub_1C43FD23C(v3);
  swift_allocObject();
  *(v0 + 1072) = KeyValueStore.init(config:domain:)(v1, 1413829954, 0xE400000000000000);
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 976);
  *(v0 + 1080) = sub_1C4ABF81C();
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 976);
  v6 = sub_1C44E7FAC();
  *(v0 + 1088) = v6;
  v7 = v6;
  v8 = *(v0 + 1056);
  v9 = *(v0 + 976);
  sub_1C4420610();
  sub_1C4BF8590();
  v10 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  v11 = type metadata accessor for BehaviorHistoryUtility();
  *(v0 + 1096) = v11;
  sub_1C43FD23C(v11);
  swift_allocObject();
  *(v0 + 1104) = sub_1C4623CF4(v8, v10);
  v12 = *(v0 + 1048);
  v13 = *(v0 + 976);
  sub_1C4420610();
  sub_1C4BF8590();
  v14 = type metadata accessor for GraphStore();
  sub_1C43FD23C(v14);
  swift_allocObject();
  *(v0 + 1112) = GraphStore.init(config:)(v12);
  v15 = *(v0 + 1008);
  result = sub_1C4EFDA88();
  v17 = result;
  v18 = 0;
  v37 = *(result + 16);
  v36 = (v15 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  while (v37 != v18)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v0 + 1024);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = *(v15 + 72);
    (*(v15 + 16))(v20, v17 + v21 + v22 * v18, *(v0 + 1000));
    v23 = sub_1C4BF5404(v20);
    v24 = *(v0 + 1024);
    if (v23)
    {
      v35 = *v36;
      (*v36)(*(v0 + 1016), *(v0 + 1024), *(v0 + 1000));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v19 + 16);
        sub_1C459D1E0();
      }

      v26 = *(v19 + 16);
      if (v26 >= *(v19 + 24) >> 1)
      {
        sub_1C459D1E0();
      }

      ++v18;
      v27 = *(v0 + 1016);
      v28 = *(v0 + 1000);
      *(v19 + 16) = v26 + 1;
      result = v35(v19 + v21 + v26 * v22, v27, v28);
    }

    else
    {
      result = (*(v15 + 8))(*(v0 + 1024), *(v0 + 1000));
      ++v18;
    }
  }

  sub_1C4598238();
  *(v0 + 1120) = v29;
  *(v0 + 1256) = [objc_opt_self() isInternalDevice];
  v30 = swift_task_alloc();
  *(v0 + 1128) = v30;
  *v30 = v0;
  v30[1] = sub_1C4BF2E70;
  sub_1C4409BA4();

  return sub_1C470CF78(v31, v32, v33);
}

uint64_t sub_1C4BF2E70()
{
  sub_1C4404D98();
  sub_1C441648C();
  v7 = v6;
  sub_1C43FBE64();
  *v8 = v7;
  v10 = *(v9 + 1128);
  v11 = *v3;
  sub_1C43FBDAC();
  *v12 = v11;
  v7[142] = v1;

  if (!v1)
  {
    v7[143] = v2;
    v7[144] = v0;
    v7[145] = v5;
    v7[146] = v4;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4BF2F98()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[150] = v0[143];
  v0[149] = v3;
  v0[148] = v2;
  v0[147] = v1;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = swift_task_alloc();
  v0[151] = v4;
  *v4 = v0;
  sub_1C4433904(v4);
  v5 = sub_1C44692CC();

  return sub_1C470CF78(v5, v6, v7);
}

uint64_t sub_1C4BF3054()
{
  sub_1C4404D98();
  sub_1C441648C();
  v7 = v6;
  sub_1C43FBE64();
  *v8 = v7;
  v10 = *(v9 + 1208);
  v11 = *v3;
  sub_1C43FBDAC();
  *v12 = v11;
  v7[152] = v1;

  if (!v1)
  {
    v7[153] = v2;
    v7[154] = v0;
    v7[155] = v5;
    v7[156] = v4;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4BF317C()
{
  v186 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1224);
  v172 = *(v0 + 1232);
  v173 = *(v0 + 1240);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 984);

  v174 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v0 + 928) = *(v5 + 48);
  v178 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C482FCC4(v178);
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  v175 = v1;
  v180 = v6;
  if (v4)
  {
    v167 = *(v0 + 1200);
    v8 = *(v0 + 1176);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C43FCEE8(v9, qword_1EDE2DDE0);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v11))
    {
      v12 = sub_1C43FCED0();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v10, v11, "Default ER model available, queueing evaluation tasks.", v12, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v13 = *(v0 + 1192);
    v14 = *(v0 + 1184);
    v15 = *(v0 + 1072);
    v157 = *(v0 + 1120);
    v16 = *(v0 + 992);
    v163 = v16;
    v17 = *(v0 + 984);
    v18 = *(v0 + 976);

    v19 = swift_task_alloc();
    v19[2] = v18;
    v19[3] = v8;
    v19[4] = v14;
    v19[5] = v13;
    v19[6] = v167;
    v19[7] = v17;
    sub_1C4426EC0();
    v20[8] = v15;
    v20[9] = v21;
    v20[10] = v16;
    sub_1C440DA0C();
    sub_1C45DAB7C();
    v23 = v22;

    sub_1C49D47F8(v23);
    v24 = swift_task_alloc();
    v24[2] = v18;
    v24[3] = v8;
    v24[4] = v14;
    v24[5] = v13;
    v24[6] = v167;
    v24[7] = v17;
    sub_1C4426EC0();
    *(v25 + 64) = v27;
    *(v25 + 72) = v26;
    v28 = sub_1C4411360(v25, v163);
    v30 = sub_1C45DAE74(v28, v29, v180);

    sub_1C49D47F8(v30);

    v1 = v175;
    p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
  }

  if (v1)
  {
    if (p_info[205] != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v31 = sub_1C4F00978();
    sub_1C43FCEE8(v31, qword_1EDE2DDE0);
    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v33))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4404B90();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      v39 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v39);
    }

    v160 = *(v0 + 1120);
    v40 = *(v0 + 1072);
    v41 = *(v0 + 992);
    v168 = v41;
    v42 = *(v0 + 984);
    v43 = *(v0 + 976);

    v44 = swift_task_alloc();
    v44[2] = v43;
    v44[3] = v1;
    v44[4] = v173;
    v44[5] = v172;
    v44[6] = v174;
    v44[7] = v42;
    sub_1C4426EC0();
    v45[8] = v40;
    v45[9] = v46;
    v45[10] = v41;
    sub_1C45DAB7C();
    v48 = v47;

    sub_1C49D47F8(v48);
    v49 = swift_task_alloc();
    v49[2] = v43;
    v49[3] = v1;
    v49[4] = v173;
    v49[5] = v172;
    v49[6] = v174;
    v49[7] = v42;
    sub_1C4426EC0();
    v50[8] = v52;
    v50[9] = v51;
    v50[10] = v168;
    v53 = sub_1C45DAE74(sub_1C4BF8730, v49, v180);

    sub_1C49D47F8(v53);
  }

  v54 = *(v0 + 1104);
  v55 = *(v0 + 1096);
  v164 = v55;
  v169 = *(v0 + 1120);
  v56 = *(v0 + 1080);
  v181 = *(v0 + 1072);
  v57 = *(v0 + 1040);
  v58 = *(v0 + 976);
  sub_1C456902C(&qword_1EC0B8D08, &unk_1C4F0E140);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1C4F0D130;
  sub_1C4420610();
  sub_1C4BF8590();
  sub_1C456902C(&qword_1EC0B8D18, &unk_1C4F0E150);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C4F0D130;

  v60 = sub_1C45EDEF8();
  v61 = type metadata accessor for BehaviorDatabaseEventTracker();
  *(v0 + 504) = v61;
  *(v0 + 512) = &off_1F43E2390;
  *(v0 + 480) = v60;
  *(v0 + 544) = v55;
  *(v0 + 552) = &off_1F43E41D8;
  *(v0 + 520) = v54;
  type metadata accessor for EntityRelevanceEvaluationSampleProvider();
  v62 = swift_allocObject();
  v63 = sub_1C4418280(v0 + 480, v61);
  sub_1C43FCE64();
  v65 = v64;
  v67 = *(v66 + 64);
  v68 = sub_1C43FBE7C();
  (*(v65 + 16))(v68, v63, v61);
  v69 = *v68;
  *(v62 + 56) = v61;
  *(v62 + 64) = &off_1F43E2390;
  *(v62 + 32) = v69;
  *(v62 + 16) = xmmword_1C4F1FD20;
  sub_1C441D670((v0 + 520), v62 + 72);
  *(v62 + 112) = 0;
  *(v62 + 120) = v169;
  *(v62 + 128) = 5;

  sub_1C446C0A0((v0 + 480));

  v70 = *(v56 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  *(v0 + 584) = v61;
  *(v0 + 592) = &off_1F43E2390;
  *(v0 + 560) = v70;

  v71 = sub_1C45ED17C();
  *(v0 + 624) = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  *(v0 + 632) = &off_1F43E2510;
  *(v0 + 600) = v71;
  *(v0 + 704) = v164;
  *(v0 + 712) = &off_1F43E41D8;
  *(v0 + 680) = v54;

  sub_1C45EA370(v0 + 680, (v0 + 640));
  sub_1C440962C((v0 + 680));
  *(v59 + 32) = v62;
  sub_1C441D670((v0 + 560), v59 + 40);
  sub_1C441D670((v0 + 600), v59 + 80);
  sub_1C441D670((v0 + 640), v59 + 120);
  v72 = v181;
  *(v59 + 160) = v181;
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;
  *(v59 + 184) = 0;
  v165 = v59;
  v74 = (v178 + 8);
  v73 = v178[8];
  sub_1C441E77C(v178);
  v77 = v76 & v75;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DDE2C();
  v78 = (63 - v56) >> 6;

  v79 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v80 = v79;
    if (!v77)
    {
      break;
    }

LABEL_18:
    v182 = *(v0 + 1112);
    v81 = *(v0 + 1104);
    v82 = *(v0 + 1096);
    v83 = *(v0 + 1088);
    v84 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    v85 = v84 | (v79 << 6);
    v86 = (v178[6] + 16 * v85);
    v72 = *v86;
    v87 = v86[1];
    sub_1C4707E5C(v178[7] + 224 * v85, v0 + 32);
    *(v0 + 16) = v72;
    *(v0 + 24) = v87;
    *(v0 + 744) = v82;
    *(v0 + 752) = &off_1F43E41D8;
    *(v0 + 720) = v81;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = v0 + 32;
    sub_1C46D9C30(v72, v87, v83, v182, v0 + 720, (v0 + 256));
    sub_1C440962C((v0 + 720));
    sub_1C4420C3C(v0 + 16, &qword_1EC0C4948, &qword_1C4F5CD48);
    if (*(v0 + 256))
    {
      memcpy(__dst, (v0 + 256), sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = *(v170 + 16);
        sub_1C43FCEC0();
        sub_1C458E6B0();
        v170 = v90;
      }

      v72 = *(v170 + 16);
      v88 = *(v170 + 24);
      v56 = v72 + 1;
      if (v72 >= v88 >> 1)
      {
        sub_1C43FCFE8(v88);
        sub_1C458E6B0();
        v170 = v91;
      }

      *(v170 + 16) = v56;
      memcpy((v170 + 160 * v72 + 32), __dst, 0xA0uLL);
    }

    else
    {
      sub_1C4420C3C(v0 + 256, &qword_1EC0C4950, &qword_1C4F5CD50);
    }
  }

  while (1)
  {
    v79 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_35:
      v153 = *(v74 + 16);
      sub_1C43FCEC0();
      sub_1C458E5F4();
      v74 = v154;
      goto LABEL_29;
    }

    if (v79 >= v78)
    {
      break;
    }

    v77 = *(v74 + 8 * v79);
    ++v80;
    if (v77)
    {
      goto LABEL_18;
    }
  }

  v92 = *(v0 + 1256);
  v93 = *(v0 + 1104);
  v94 = *(v0 + 1096);
  v176 = *(v0 + 1080);
  v183 = *(v0 + 1072);
  v95 = *(v0 + 1040);
  v96 = *(v0 + 1032);
  v97 = *(v0 + 984);
  v161 = *(v0 + 976);

  if (v92)
  {
    v98 = 43200.0;
  }

  else
  {
    v98 = 14400.0;
  }

  sub_1C4420C3C(v0 + 928, &qword_1EC0C4940, &qword_1C4F5CD40);
  __dst[0] = v165;
  sub_1C49D4750(v170);
  v99 = __dst[0];
  v100 = *(v97 + 40);
  *(v0 + 936) = v100;
  v101 = sub_1C456902C(&qword_1EC0C4958, qword_1C4F5CD58);
  sub_1C43FD23C(v101);
  v102 = swift_allocObject();
  v103 = (v102 + qword_1EC0BBDA8);
  v103[3] = v94;
  v103[4] = &off_1F43E41D8;
  *v103 = v93;
  sub_1C441EFF8();
  sub_1C4423848(v104);
  sub_1C441EFF8();
  *v106 = v105 + 19;
  v106[1] = v107;
  v109 = (v108 + qword_1EC0BBDF0);
  *v109 = 0;
  v109[1] = 0;
  *(v108 + qword_1EC0BBDF8) = MEMORY[0x1E69E7CC0];
  sub_1C4420610();
  sub_1C4BF85E8();
  v110 = (v102 + qword_1EC0BBDC0);
  v111 = *(v97 + 48);
  v113 = *v97;
  v112 = *(v97 + 16);
  v110[2] = *(v97 + 32);
  v110[3] = v111;
  *v110 = v113;
  v110[1] = v112;
  *(v102 + qword_1EC0BBDB0) = v99;
  *(v102 + qword_1EC0BBDB8) = v183;
  sub_1C4410660();
  *(v102 + v114) = v115;
  *(v102 + qword_1EC0BBDD0) = v100;
  *(v102 + qword_1EC0BBDD8) = v98;
  *(v158 + 56) = v101;
  *(v158 + 64) = &off_1F43E9F28;
  *(v158 + 32) = v102;

  sub_1C44DDE2C();
  sub_1C46F4E90(v97, v0 + 416);
  sub_1C4812774();
  v117 = v116;

  __dst[0] = v158;
  sub_1C49D4728(v117);
  v74 = __dst[0];
  sub_1C4BF8590();
  v118 = sub_1C4F00518();

  v119 = sub_1C4F00508();
  *(v0 + 784) = v94;
  *(v0 + 792) = &off_1F43E41D8;
  *(v0 + 760) = v93;
  *(v0 + 824) = v118;
  *(v0 + 832) = &off_1F43E7288;
  *(v0 + 800) = v119;
  v56 = type metadata accessor for JointHUDataCollectionTaskManager(0);
  sub_1C43FD23C(v56);
  v72 = swift_allocObject();
  v120 = sub_1C4418280(v0 + 800, v118);
  sub_1C43FCE64();
  v122 = v121;
  v124 = *(v123 + 64);
  v125 = sub_1C43FBE7C();
  (*(v122 + 16))(v125, v120, v118);
  v126 = *v125;
  v127 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker);
  v127[3] = v118;
  v127[4] = &off_1F43E7288;
  *v127 = v126;
  sub_1C441B06C();
  *(v72 + 16) = v129;
  *(v72 + 24) = v128;
  sub_1C441EFF8();
  *v131 = v130 + 15;
  v131[1] = v132;
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = 0;
  v133 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v133[1] = 0;
  v133[2] = 0;
  *v133 = 0;
  v134 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  *v134 = 0u;
  v134[1] = 0u;
  sub_1C4BF85E8();
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase) = v176;
  sub_1C441D670((v0 + 760), v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource);
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore) = v183;
  sub_1C4410660();
  *(v72 + v135) = v136;
  sub_1C446C0A0((v0 + 800));

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v138 = *(v74 + 16);
  v137 = *(v74 + 24);
  if (v138 >= v137 >> 1)
  {
    sub_1C43FCFE8(v137);
    sub_1C458E5F4();
    v74 = v155;
  }

  v159 = *(v0 + 1192);
  v162 = *(v0 + 1200);
  v156 = *(v0 + 1184);
  v139 = *(v0 + 1176);
  v184 = *(v0 + 1088);
  v177 = *(v0 + 1112);
  v179 = *(v0 + 1080);
  v166 = *(v0 + 1104);
  v171 = *(v0 + 1072);
  v140 = *(v0 + 1032);
  v141 = *(v0 + 992);
  v142 = *(v0 + 984);
  *(v0 + 864) = v56;
  *(v0 + 872) = &off_1F43F24F0;
  v143 = *(v0 + 976);
  *(v0 + 840) = v72;
  *(v74 + 16) = v138 + 1;
  sub_1C441D670((v0 + 840), v74 + 40 * v138 + 32);
  sub_1C4BF8590();
  v144 = *(v141 + 48);
  v145 = *(v141 + 52);
  swift_allocObject();
  v146 = sub_1C4426A94();
  sub_1C4BF6074(v146, v142, v74);
  sub_1C4BF8640(v139);
  sub_1C4BF8640(v175);

  v147 = *(v0 + 1064);
  v148 = *(v0 + 1056);
  v149 = sub_1C4440060();
  sub_1C4BF8528(v149, type metadata accessor for Configuration);

  v150 = sub_1C43FD5F0();

  return v151(v150);
}

uint64_t sub_1C4BF3F24()
{
  sub_1C4404D98();
  v24 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = *(v0 + 1136);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DDE0);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1136);
  if (v6)
  {
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    sub_1C43FEC60();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 904);
    v11 = *(v0 + 912);
    v12 = *(v0 + 920);
    v13 = sub_1C4F02A38();
    v15 = sub_1C441D828(v13, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Failed to create default ER model: %s", v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v17);
  }

  else
  {
  }

  *(v0 + 1176) = 0u;
  *(v0 + 1192) = 0u;
  v18 = swift_task_alloc();
  *(v0 + 1208) = v18;
  *v18 = v0;
  sub_1C4433904(v18);
  v19 = sub_1C44692CC();

  return sub_1C470CF78(v19, v20, v21);
}

uint64_t sub_1C4BF40FC()
{
  v170 = v0;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  if (qword_1EDDFA668 != -1)
  {
LABEL_34:
    sub_1C4406758();
    swift_once();
  }

  v2 = *(v0 + 1216);
  v3 = sub_1C4F00978();
  sub_1C43FCEE8(v3, qword_1EDE2DDE0);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1216);
  if (v7)
  {
    sub_1C43FECF0();
    v9 = p_info;
    v10 = swift_slowAlloc();
    sub_1C43FEC60();
    v11 = swift_slowAlloc();
    __dst[0] = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 880);
    v13 = *(v0 + 888);
    v14 = *(v0 + 896);
    v15 = sub_1C4F02A38();
    v17 = sub_1C441D828(v15, v16, __dst);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Failed to create Trial ER model: %s", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    p_info = v9;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v18 = *(v0 + 1176);
  *(v0 + 928) = *(*(v0 + 984) + 48);
  v162 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C482FCC4(v162);
  if (v18)
  {
    v20 = *(v0 + 1200);
    v21 = *(v0 + 1176);
    if (*(p_info + 1640) != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v164 = v19;
    sub_1C43FCEE8(v3, qword_1EDE2DDE0);
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v23))
    {
      v24 = sub_1C43FCED0();
      *v24 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v23, "Default ER model available, queueing evaluation tasks.", v24, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v25 = *(v0 + 1192);
    v26 = *(v0 + 1184);
    v153 = *(v0 + 1120);
    v27 = *(v0 + 1072);
    v28 = *(v0 + 992);
    v158 = v28;
    v29 = *(v0 + 984);
    v30 = *(v0 + 976);

    v31 = swift_task_alloc();
    sub_1C4435CFC(v31);
    sub_1C4426EC0();
    v32[8] = v27;
    v32[9] = v33;
    v32[10] = v28;
    sub_1C440DA0C();
    sub_1C45DAB7C();
    v35 = v34;

    sub_1C49D47F8(v35);
    v36 = swift_task_alloc();
    sub_1C4435CFC(v36);
    sub_1C4426EC0();
    *(v37 + 64) = v39;
    *(v37 + 72) = v38;
    v40 = sub_1C4411360(v37, v158);
    v42 = sub_1C45DAE74(v40, v41, v164);

    sub_1C49D47F8(v42);
  }

  v43 = *(v0 + 1104);
  v44 = *(v0 + 1096);
  v156 = v44;
  v159 = *(v0 + 1120);
  v45 = *(v0 + 1080);
  v165 = *(v0 + 1072);
  v46 = *(v0 + 1040);
  v47 = *(v0 + 976);
  sub_1C456902C(&qword_1EC0B8D08, &unk_1C4F0E140);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1C4F0D130;
  sub_1C4420610();
  sub_1C4BF8590();
  sub_1C456902C(&qword_1EC0B8D18, &unk_1C4F0E150);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C4F0D130;

  v49 = sub_1C45EDEF8();
  v50 = type metadata accessor for BehaviorDatabaseEventTracker();
  *(v0 + 504) = v50;
  *(v0 + 512) = &off_1F43E2390;
  *(v0 + 480) = v49;
  *(v0 + 544) = v44;
  *(v0 + 552) = &off_1F43E41D8;
  *(v0 + 520) = v43;
  type metadata accessor for EntityRelevanceEvaluationSampleProvider();
  v51 = swift_allocObject();
  v52 = sub_1C4418280(v0 + 480, v50);
  sub_1C43FCE64();
  v54 = v53;
  v56 = *(v55 + 64);
  v57 = sub_1C43FBE7C();
  (*(v54 + 16))(v57, v52, v50);
  v58 = *v57;
  *(v51 + 56) = v50;
  *(v51 + 64) = &off_1F43E2390;
  *(v51 + 32) = v58;
  *(v51 + 16) = xmmword_1C4F1FD20;
  sub_1C441D670((v0 + 520), v51 + 72);
  *(v51 + 112) = 0;
  *(v51 + 120) = v159;
  *(v51 + 128) = 5;

  sub_1C440962C((v0 + 480));

  v59 = *(v45 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  *(v0 + 584) = v50;
  *(v0 + 592) = &off_1F43E2390;
  *(v0 + 560) = v59;

  v60 = sub_1C45ED17C();
  *(v0 + 624) = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  *(v0 + 632) = &off_1F43E2510;
  *(v0 + 600) = v60;
  *(v0 + 704) = v156;
  *(v0 + 712) = &off_1F43E41D8;
  *(v0 + 680) = v43;

  sub_1C45EA370(v0 + 680, (v0 + 640));
  sub_1C440962C((v0 + 680));
  *(v48 + 32) = v51;
  sub_1C441D670((v0 + 560), v48 + 40);
  sub_1C441D670((v0 + 600), v48 + 80);
  sub_1C441D670((v0 + 640), v48 + 120);
  *(v48 + 160) = v165;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 184) = 0;
  v61 = v162[8];
  sub_1C441E77C(v162);
  p_info = v63 & v62;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DDE2C();
  v64 = (63 - v45) >> 6;

  v65 = 0;
  v160 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v66 = v65;
    if (!p_info)
    {
      break;
    }

LABEL_16:
    v166 = *(v0 + 1112);
    v67 = *(v0 + 1104);
    v68 = *(v0 + 1096);
    v69 = *(v0 + 1088);
    v70 = __clz(__rbit64(p_info));
    p_info &= p_info - 1;
    v71 = v70 | (v65 << 6);
    v72 = (v162[6] + 16 * v71);
    v74 = *v72;
    v73 = v72[1];
    sub_1C4707E5C(v162[7] + 224 * v71, v0 + 32);
    *(v0 + 16) = v74;
    *(v0 + 24) = v73;
    *(v0 + 744) = v68;
    *(v0 + 752) = &off_1F43E41D8;
    *(v0 + 720) = v67;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C46D9C30(v74, v73, v69, v166, v0 + 720, (v0 + 256));
    sub_1C440962C((v0 + 720));
    sub_1C4420C3C(v0 + 16, &qword_1EC0C4948, &qword_1C4F5CD48);
    if (*(v0 + 256))
    {
      memcpy(__dst, (v0 + 256), 0xA0uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = *(v160 + 16);
        sub_1C43FCEC0();
        sub_1C458E6B0();
        v160 = v78;
      }

      v76 = *(v160 + 16);
      v75 = *(v160 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C43FCFE8(v75);
        sub_1C458E6B0();
        v160 = v79;
      }

      *(v160 + 16) = v76 + 1;
      memcpy((v160 + 160 * v76 + 32), __dst, 0xA0uLL);
    }

    else
    {
      sub_1C4420C3C(v0 + 256, &qword_1EC0C4950, &qword_1C4F5CD50);
    }
  }

  while (1)
  {
    v65 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v65 >= v64)
    {
      break;
    }

    p_info = v162[v65 + 8];
    ++v66;
    if (p_info)
    {
      goto LABEL_16;
    }
  }

  v80 = *(v0 + 1256);
  v81 = *(v0 + 1104);
  v82 = *(v0 + 1096);
  v154 = *(v0 + 1080);
  v167 = *(v0 + 1072);
  v83 = *(v0 + 1040);
  v84 = *(v0 + 1032);
  v85 = *(v0 + 984);
  v149 = *(v0 + 976);

  if (v80)
  {
    v86 = 43200.0;
  }

  else
  {
    v86 = 14400.0;
  }

  sub_1C4420C3C(v0 + 928, &qword_1EC0C4940, &qword_1C4F5CD40);
  __dst[0] = v48;
  sub_1C49D4750(v160);
  v87 = __dst[0];
  v88 = *(v85 + 40);
  *(v0 + 936) = v88;
  v89 = sub_1C456902C(&qword_1EC0C4958, qword_1C4F5CD58);
  sub_1C43FD23C(v89);
  v90 = swift_allocObject();
  v91 = (v90 + qword_1EC0BBDA8);
  v91[3] = v82;
  v91[4] = &off_1F43E41D8;
  *v91 = v81;
  sub_1C441EFF8();
  sub_1C4423848(v92);
  sub_1C441EFF8();
  *v94 = v93 + 19;
  v94[1] = v95;
  v97 = (v96 + qword_1EC0BBDF0);
  *v97 = 0;
  v97[1] = 0;
  *(v96 + qword_1EC0BBDF8) = MEMORY[0x1E69E7CC0];
  sub_1C4420610();
  sub_1C4BF85E8();
  v98 = (v90 + qword_1EC0BBDC0);
  v99 = *(v85 + 48);
  v101 = *v85;
  v100 = *(v85 + 16);
  v98[2] = *(v85 + 32);
  v98[3] = v99;
  *v98 = v101;
  v98[1] = v100;
  *(v90 + qword_1EC0BBDB0) = v87;
  *(v90 + qword_1EC0BBDB8) = v167;
  sub_1C4410660();
  *(v90 + v102) = v103;
  *(v90 + qword_1EC0BBDD0) = v88;
  *(v90 + qword_1EC0BBDD8) = v86;
  *(v151 + 56) = v89;
  *(v151 + 64) = &off_1F43E9F28;
  *(v151 + 32) = v90;

  sub_1C44DDE2C();
  sub_1C46F4E90(v85, v0 + 416);
  sub_1C4812774();
  v105 = v104;

  __dst[0] = v151;
  sub_1C49D4728(v105);
  v106 = __dst[0];
  sub_1C4BF8590();
  v107 = sub_1C4F00518();

  v108 = sub_1C4F00508();
  *(v0 + 784) = v82;
  *(v0 + 792) = &off_1F43E41D8;
  *(v0 + 760) = v81;
  *(v0 + 824) = v107;
  *(v0 + 832) = &off_1F43E7288;
  *(v0 + 800) = v108;
  v109 = type metadata accessor for JointHUDataCollectionTaskManager(0);
  sub_1C43FD23C(v109);
  v110 = swift_allocObject();
  v111 = sub_1C4418280(v0 + 800, v107);
  sub_1C43FCE64();
  v113 = v112;
  v115 = *(v114 + 64);
  v116 = sub_1C43FBE7C();
  (*(v113 + 16))(v116, v111, v107);
  v117 = *v116;
  v118 = (v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker);
  v118[3] = v107;
  v118[4] = &off_1F43E7288;
  *v118 = v117;
  sub_1C441B06C();
  *(v110 + 16) = v120;
  *(v110 + 24) = v119;
  sub_1C441EFF8();
  *v122 = v121 + 15;
  v122[1] = v123;
  *(v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = 0;
  v124 = (v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v124[1] = 0;
  v124[2] = 0;
  *v124 = 0;
  v125 = (v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  *v125 = 0u;
  v125[1] = 0u;
  sub_1C4BF85E8();
  *(v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase) = v154;
  sub_1C441D670((v0 + 760), v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource);
  *(v110 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore) = v167;
  sub_1C4410660();
  *(v110 + v126) = v127;
  sub_1C440962C((v0 + 800));

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v145 = *(v106 + 16);
    sub_1C43FCEC0();
    sub_1C458E5F4();
    v106 = v146;
  }

  v129 = *(v106 + 16);
  v128 = *(v106 + 24);
  if (v129 >= v128 >> 1)
  {
    sub_1C43FCFE8(v128);
    sub_1C458E5F4();
    v106 = v147;
  }

  v150 = *(v0 + 1192);
  v152 = *(v0 + 1200);
  v148 = *(v0 + 1184);
  v130 = *(v0 + 1176);
  v155 = *(v0 + 1104);
  v168 = *(v0 + 1088);
  v161 = *(v0 + 1112);
  v163 = *(v0 + 1080);
  v157 = *(v0 + 1072);
  v131 = *(v0 + 1032);
  v132 = *(v0 + 992);
  v133 = *(v0 + 984);
  *(v0 + 864) = v109;
  *(v0 + 872) = &off_1F43F24F0;
  v134 = *(v0 + 976);
  *(v0 + 840) = v110;
  *(v106 + 16) = v129 + 1;
  sub_1C441D670((v0 + 840), v106 + 40 * v129 + 32);
  sub_1C44139A8();
  sub_1C4BF8590();
  v135 = *(v132 + 48);
  v136 = *(v132 + 52);
  swift_allocObject();
  v137 = sub_1C4426A94();
  sub_1C4BF6074(v137, v133, v106);
  sub_1C4BF8640(v130);
  sub_1C43FEAF8();
  sub_1C4BF8640(v138);

  v139 = *(v0 + 1064);
  v140 = *(v0 + 1056);
  v141 = sub_1C4440060();
  sub_1C4BF8528(v141, v110);

  v142 = sub_1C43FD5F0();

  return v143(v142);
}

uint64_t sub_1C4BF4DF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4BF4EA8;

  return sub_1C4BF22C8();
}

uint64_t sub_1C4BF4EA8(uint64_t a1, uint64_t a2)
{
  sub_1C43FBDE4();
  v7 = *(v6 + 16);
  v8 = *v3;
  sub_1C43FBDAC();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

void sub_1C4BF4FAC()
{
  v1 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v2 = static NSUserDefaults.enableERHistoricalFeatureGeneration.getter();
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 48);
    v27 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 32);
    v28 = v3;
    v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 16);
    v25 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact);
    v26 = v4;
    v5 = *(v27 + 16);
    MEMORY[0x1EEE9AC00](v2);
    v19[2] = v6;
    sub_1C446C37C(sub_1C4707C54, v19);
    v8 = *(v1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers);
    if (v8)
    {
      v9 = 0;
      v10 = *(v8 + 16);
      v11 = v8 + 32;
      *&v7 = 136315394;
      v20 = v7;
      while (v10 != v9)
      {
        if (v9 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        sub_1C442E860(v11, v22);
        v12 = v23;
        v13 = v24;
        sub_1C4409678(v22, v23);
        (*(v13 + 24))(v12, v13);
        sub_1C440962C(v22);
        v11 += 40;
        ++v9;
      }
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
LABEL_15:
      sub_1C4406758();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDE2DDE0);
    v21 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = sub_1C43FCED0();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v15, "Skipping clearing historical feature data view: 'enableERHistoricalFeatureGeneration is set to false", v16, 2u);
      v17 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v17);
    }

    v18 = v21;
  }
}

uint64_t sub_1C4BF5404(uint64_t a1)
{
  v2 = sub_1C4EFDAB8();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v7 = *(v3 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0D480;
  v10 = v9 + v8;
  v11 = *(v4 + 104);
  v11(v10, *MEMORY[0x1E69A93E0], v2);
  v11(v10 + v7, *MEMORY[0x1E69A9418], v2);
  v11(v10 + 2 * v7, *MEMORY[0x1E69A9420], v2);
  v11(v10 + 3 * v7, *MEMORY[0x1E69A9458], v2);
  v31 = a1;
  LOBYTE(v7) = sub_1C479B760(sub_1C4BF86F8, v30, v9);
  swift_setDeallocating();
  sub_1C49E1558();
  if (v7)
  {
    v12 = v29;
  }

  else
  {
    sub_1C4EFDA68();
    sub_1C4836304();
    v14 = v13;

    v12 = v29;
    if ((v14 & 1) == 0)
    {
      v15 = sub_1C4EFDA58();
      MEMORY[0x1EEE9AC00](v15);
      *(&v28 - 2) = a1;
      v16 = sub_1C479B760(sub_1C4BF8748, (&v28 - 4), v15);

      if (v16)
      {
        return 1;
      }
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDE2DDE0);
  (*(v4 + 16))(v12, a1, v2);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    sub_1C4472598(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
    v23 = sub_1C4F02858();
    v24 = v12;
    v26 = v25;
    (*(v4 + 8))(v24, v2);
    v27 = sub_1C441D828(v23, v26, &v32);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1C43F8000, v19, v20, "EntityRelevanceHistoricalFeatureViewGenerator: Skipping evaluation of %s using shared database", v21, 0xCu);
    sub_1C440962C(v22);
    MEMORY[0x1C6942830](v22, -1, -1);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v12, v2);
  }

  return 0;
}

uint64_t sub_1C4BF5844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = type metadata accessor for Configuration();
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  sub_1C44139A8();
  sub_1C4BF8590();
  v55 = v16;
  v30 = *(v16 + 16);
  v30(v22, a1, v14);
  v31 = type metadata accessor for EntityRelevanceEvaluationTaskManager();
  sub_1C43FD23C(v31);
  v32 = swift_allocObject();
  v60[3] = &type metadata for EntityRelevanceMLModel;
  v60[4] = &off_1F43E9B30;
  v33 = swift_allocObject();
  v60[0] = v33;
  *(v33 + 16) = a2;
  *(v33 + 24) = a8;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  sub_1C441EFF8();
  *v34 = 0xD000000000000024;
  v34[1] = v35;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  v54 = v29;
  sub_1C4BF8590();
  sub_1C442E860(v60, v32 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  v30(v32 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v22, v14);
  sub_1C4418C28(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  *(v32 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = a6;
  sub_1C4410660();
  *(v32 + v36) = v37;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *(v32 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = a9;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E90(a5, v59);
  v38 = qword_1EDDFA668;

  if (v38 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v39 = sub_1C4F00978();
  sub_1C442B738(v39, qword_1EDE2DDE0);
  sub_1C442E860(v60, v59);
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CB8();
  if (os_log_type_enabled(v40, v41))
  {
    sub_1C43FECF0();
    v42 = swift_slowAlloc();
    sub_1C43FEC60();
    v43 = swift_slowAlloc();
    v61 = v43;
    sub_1C442AC94(4.8149e-34);
    sub_1C440962C(v59);
    v44 = sub_1C441D828(a5, v22, &v61);

    *(v42 + 4) = v44;
    sub_1C4430738(&dword_1C43F8000, v45, v46, "Evaluating '%s'");
    sub_1C440962C(v43);
    v47 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v47);
    v48 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v48);

    (*(v55 + 8))(v22, v14);
    sub_1C44010FC();
    sub_1C4BF8528(v54, v49);
    v50 = v60;
  }

  else
  {

    (*(v55 + 8))(v22, v14);
    sub_1C44010FC();
    sub_1C4BF8528(v54, v51);
    sub_1C440962C(v60);
    v50 = v59;
  }

  result = sub_1C440962C(v50);
  *a7 = v32;
  return result;
}

uint64_t sub_1C4BF5C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v14 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v16 = v15;
  v61 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = type metadata accessor for Configuration();
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v30 = *a1;
  v31 = a1[1];
  v56 = v30;
  sub_1C44139A8();
  sub_1C4BF8590();
  (*(v16 + 104))(v22, *MEMORY[0x1E69A9418], v14);
  v32 = type metadata accessor for EntityRelevanceEvaluationTaskManager();
  sub_1C43FD23C(v32);
  v33 = swift_allocObject();
  v63[3] = &type metadata for EntityRelevanceMLModel;
  v63[4] = &off_1F43E9B30;
  v34 = swift_allocObject();
  v63[0] = v34;
  *(v34 + 16) = a2;
  *(v34 + 24) = a8;
  *(v34 + 32) = a3;
  *(v34 + 40) = a4;
  sub_1C441EFF8();
  *v35 = 0xD000000000000024;
  v35[1] = v36;
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  sub_1C43FC4DC(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  v58 = v29;
  sub_1C4BF8590();
  sub_1C442E860(v63, v33 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  (*(v61 + 16))(v33 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v22, v14);
  sub_1C4418C28(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  *(v33 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = a6;
  sub_1C4410660();
  *(v33 + v37) = v38;
  v39 = (v33 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *v39 = v56;
  v39[1] = v31;
  *(v33 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = a9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E90(a5, v62);
  v40 = qword_1EDDFA668;

  if (v40 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v41 = sub_1C4F00978();
  sub_1C442B738(v41, qword_1EDE2DDE0);
  sub_1C442E860(v63, v62);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CB8();
  if (os_log_type_enabled(v42, v43))
  {
    sub_1C43FECF0();
    v44 = swift_slowAlloc();
    sub_1C43FEC60();
    v45 = swift_slowAlloc();
    v64 = v45;
    sub_1C442AC94(4.8149e-34);
    sub_1C440962C(v62);
    v46 = sub_1C441D828(a5, v14, &v64);

    *(v44 + 4) = v46;
    sub_1C4430738(&dword_1C43F8000, v47, v48, "Evaluating '%s'");
    sub_1C440962C(v45);
    v49 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v49);
    v50 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v50);

    (*(v61 + 8))(v22, v14);
    sub_1C44010FC();
    sub_1C4BF8528(v58, v51);
    v52 = v63;
  }

  else
  {

    (*(v61 + 8))(v22, v14);
    sub_1C44010FC();
    sub_1C4BF8528(v58, v53);
    sub_1C440962C(v63);
    v52 = v62;
  }

  result = sub_1C440962C(v52);
  *a7 = v33;
  return result;
}

uint64_t sub_1C4BF6074(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1C441EFF8();
  *v6 = 0xD00000000000002DLL;
  v6[1] = v7;
  sub_1C4420610();
  sub_1C4BF85E8();
  v8 = (v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact);
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a2[3];
  v8[2] = a2[2];
  v8[3] = v10;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers) = a3;
  return v3;
}

uint64_t sub_1C4BF6104()
{
  sub_1C43FBCD4();
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_1C4F01828();
  v1[20] = v2;
  v3 = *(v2 - 8);
  sub_1C4404280();
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = sub_1C43FE604();
  v1[23] = swift_task_alloc();
  v7 = sub_1C4EF9CD8();
  v1[24] = v7;
  v8 = *(v7 - 8);
  sub_1C4404280();
  v1[25] = v9;
  v11 = *(v10 + 64);
  v1[26] = sub_1C43FE604();
  v1[27] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4BF6240()
{
  v39 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  v1 = static NSUserDefaults.enableERHistoricalFeatureGeneration.getter();
  if ((v1 & 1) == 0)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C43FCEE8(v26, qword_1EDE2DDE0);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (!sub_1C43FEB2C(v28))
    {
      goto LABEL_19;
    }

    v29 = sub_1C43FCED0();
    *v29 = 0;
    v30 = "Skipping historical feature view generation: 'enableERHistoricalFeatureGeneration is set to false";
    goto LABEL_18;
  }

  v2 = *(v0[18] + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers);
  v0[28] = v2;
  if (v2)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
      v37 = v0[18];
    }

    v3 = sub_1C4F00978();
    v0[29] = sub_1C43FCEE8(v3, qword_1EDE2DDE0);

    v4 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      v5 = v0[18];
      sub_1C43FECF0();
      v6 = swift_slowAlloc();
      sub_1C43FEC60();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1C441D828(*(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v38);
      sub_1C4404B90();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_1C446C0A0(v7);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v13 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v13);
    }

    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[19];
    sub_1C4EF9CC8();
    sub_1C4703364(1440);
    sub_1C4EF9BE8();
    v19 = *(v17 + 8);
    v0[30] = v19;
    v0[31] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v16);
    *(swift_task_alloc() + 16) = v14;
    sub_1C49BFEF8();
    v21 = v20;
    v0[32] = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    sub_1C456902C(&qword_1EC0C4928, &qword_1C4F5CCA0);
    inited = swift_initStackObject();
    v0[33] = inited;
    inited[2] = v21;
    inited[3] = sub_1C4BF8504;
    inited[4] = v22;
    swift_bridgeObjectRetain_n();
    v24 = swift_task_alloc();
    v0[34] = v24;
    *v24 = v0;
    v24[1] = sub_1C4BF6688;

    return sub_1C4BF07B0();
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v31 = sub_1C4F00978();
  sub_1C43FCEE8(v31, qword_1EDE2DDE0);
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CD8();
  if (sub_1C43FEB2C(v28))
  {
    v29 = sub_1C43FCED0();
    *v29 = 0;
    v30 = "Skipping historical feature view generation: taskManagers are nil";
LABEL_18:
    _os_log_impl(&dword_1C43F8000, v27, v28, v30, v29, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_19:

  v33 = v0[26];
  v32 = v0[27];
  v35 = v0[22];
  v34 = v0[23];

  sub_1C43FBCF0();

  return v36((v1 & 1) == 0);
}

uint64_t sub_1C4BF6688()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C4BF6784()
{
  v61 = v0;
  v1 = v0[29];
  v2 = v0[18];

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  if (v5)
  {
    v7 = v0[18];
    sub_1C43FECF0();
    v8 = swift_slowAlloc();
    sub_1C43FEC60();
    v9 = swift_slowAlloc();
    *(v8 + 4) = sub_1C4441274(4.8149e-34, v9, v10, v11, v12, v13, v14, v15, v16, v9);
    sub_1C4404B90();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_1C446C0A0(v9);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v22 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v22);
  }

  swift_setDeallocating();
  sub_1C4BF227C();
  v23 = v0[35];
  v24 = v0[29];
  v25 = v0[18];

  v26 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C44020E0())
  {
    v27 = v0[18];
    sub_1C43FECF0();
    v28 = swift_slowAlloc();
    sub_1C43FEC60();
    v29 = swift_slowAlloc();
    *(v28 + 4) = sub_1C4441274(4.8149e-34, v29, v30, v31, v32, v33, v34, v35, v36, v29);
    sub_1C4404B90();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    sub_1C446C0A0(v29);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v42 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v42);
  }

  v43 = 0;
  v44 = v0[28];
  v45 = *(v44 + 16);
  v46 = v44 + 32;
  while (v45 != v43)
  {
    if (v43 >= *(v44 + 16))
    {
      __break(1u);
      return;
    }

    v47 = v0[18];
    sub_1C442E860(v46, (v0 + 7));
    sub_1C4BF76B8(v0 + 7, v47);
    if (v23)
    {

      sub_1C440962C(v0 + 7);
      return;
    }

    ++v43;
    sub_1C440962C(v0 + 7);
    v46 += 40;
  }

  sub_1C4441594();

  v48 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C44020E0())
  {
    v44 = v0[18];
    sub_1C43FECF0();
    v49 = swift_slowAlloc();
    sub_1C43FEC60();
    v50 = swift_slowAlloc();
    v60 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1C441D828(*(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(v44 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v60);
    sub_1C43FBD74(&dword_1C43F8000, v51, v52, "%s: update complete");
    sub_1C440962C(v50);
    v53 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v53);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4450838();
  v54 = sub_1C4402B58();
  (v44)(v54);
  v56 = v0[26];
  v55 = v0[27];
  v58 = v0[22];
  v57 = v0[23];

  sub_1C43FBCF0();

  v59(1);
}

void sub_1C4BF6AB4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  swift_setDeallocating();
  sub_1C4BF227C();
  *(v0 + 136) = v1;
  v5 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 280);
  if (v6)
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);

    (*(v13 + 32))(v11, v10, v12);

    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 144);
      sub_1C43FECF0();
      v18 = swift_slowAlloc();
      sub_1C43FEC60();
      v100 = swift_slowAlloc();
      *v18 = 136315138;
      *(v18 + 4) = sub_1C441B548((v17 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v95, v96, v98);
      sub_1C4404B90();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      sub_1C446C0A0(v100);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v24 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v24);
    }

    v25 = *(v0 + 224);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = (v0 + 96);
      v28 = v25 + 32;
      do
      {
        sub_1C442E860(v28, v27);
        v29 = *(v0 + 120);
        v30 = *(v0 + 128);
        sub_1C4409678(v27, v29);
        (*(v30 + 16))(v29, v30);
        sub_1C440962C(v27);
        v28 += 40;
        --v26;
      }

      while (v26);
    }

    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    v97 = *(v0 + 208);
    v99 = *(v0 + 184);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 160);
    sub_1C4426130();
    sub_1C4472598(v38, v39);
    swift_allocError();
    (*(v36 + 16))(v40, v35, v37);
    swift_willThrow();
    v41 = *(v36 + 8);
    v42 = sub_1C4414A08();
    v43(v42);

    v31(v33, v34);

    sub_1C43FBCF0();
    goto LABEL_20;
  }

  v44 = *(v0 + 232);
  v45 = *(v0 + 144);

  v46 = v7;
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CD8();

  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 280);
  if (v49)
  {
    v51 = *(v0 + 144);
    v52 = sub_1C440F274();
    v53 = swift_slowAlloc();
    sub_1C43FEC60();
    v101 = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = sub_1C441B548((v51 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v95, v96, v98);
    *(v52 + 12) = 2112;
    v54 = v50;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 14) = v55;
    *v53 = v55;
    sub_1C4404B90();
    _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
    sub_1C4420C3C(v53, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v101);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v61 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v61);
  }

  else
  {
  }

  v62 = *(v0 + 232);
  v63 = *(v0 + 144);

  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CF8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 144);
    sub_1C43FECF0();
    v67 = swift_slowAlloc();
    sub_1C43FEC60();
    v102 = swift_slowAlloc();
    *v67 = 136315138;
    *(v67 + 4) = sub_1C441B548((v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v95, v96, v98);
    sub_1C4404B90();
    _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
    sub_1C446C0A0(v102);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v73 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v73);
  }

  v74 = 0;
  v75 = *(v0 + 224);
  v76 = *(v75 + 16);
  for (i = v75 + 32; ; i += 40)
  {
    if (v76 == v74)
    {
      sub_1C4441594();

      v83 = sub_1C4F00968();
      sub_1C4F01CF8();

      if (sub_1C44020E0())
      {
        v75 = *(v0 + 144);
        sub_1C43FECF0();
        v84 = swift_slowAlloc();
        sub_1C43FEC60();
        v103 = swift_slowAlloc();
        *v84 = 136315138;
        *(v84 + 4) = sub_1C441B548((v75 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), v95, v96, v98);
        sub_1C43FBD74(&dword_1C43F8000, v85, v86, "%s: update complete");
        sub_1C440962C(v103);
        v87 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v87);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C4450838();
      v88 = sub_1C4402B58();
      (v75)(v88);
      v90 = *(v0 + 208);
      v89 = *(v0 + 216);
      v92 = *(v0 + 176);
      v91 = *(v0 + 184);

      sub_1C43FBCF0();
LABEL_20:
      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }

    if (v74 >= *(v75 + 16))
    {
      break;
    }

    v78 = *(v0 + 144);
    v79 = sub_1C4402120();
    sub_1C442E860(v79, v80);
    v81 = sub_1C4402B58();
    sub_1C4BF76B8(v81, v82);
    ++v74;
    sub_1C440962C((v0 + 56));
  }

  __break(1u);
}

void sub_1C4BF70E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v7);
  v9 = (*(v8 + 8))(a2, v7, v8);
  if (v3)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DDE0);
    sub_1C442E860(a1, v26);
    v13 = v3;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v16 = 136315394;
      sub_1C442E860(v26, &v25);
      sub_1C456902C(&qword_1EC0B8D10, &qword_1C4F0EFE0);
      v19 = sub_1C4F01198();
      v21 = v20;
      sub_1C440962C(v26);
      v22 = sub_1C441D828(v19, v21, &v27);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      *v17 = v24;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Unable to create invocation of task manager %s: %@", v16, 0x16u);
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      sub_1C440962C(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      sub_1C440962C(v26);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = v9;
    a3[1] = v10;
    a3[2] = v11;
  }
}

uint64_t sub_1C4BF7368@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v32 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9BE8();
  sub_1C4472598(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  result = sub_1C4F01088();
  if (result)
  {
    v30 = v7;
    v31 = v4;
    v20 = a1;
    v29 = a1;
    v21 = *(v15 + 32);
    v21(v13, v18, v14);
    v22 = v32;
    (*(v15 + 16))(&v13[*(v32 + 48)], v20, v14);
    sub_1C44DDE2C();
    v23 = *(v22 + 48);
    v21(a2, v10, v14);
    v24 = *(v15 + 8);
    v24(&v10[v23], v14);
    sub_1C44CDA7C();
    v25 = *(v22 + 48);
    v26 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v21(&a2[*(v26 + 36)], &v10[v25], v14);
    v24(v10, v14);
    v27 = v30;
    sub_1C44DDE2C();
    v28 = *&v27[*(v31 + 48)];
    *&a2[*(type metadata accessor for BehaviorDigestRunSpecification(0) + 20)] = v28;
    return (v24)(v27, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C4BF76B8(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1C4409678(a1, v5);
  (*(v6 + 32))(v5, v6);
  v7 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v7);
  (*(v8 + 24))(v7, v8);
  if (v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    sub_1C442E860(a1, v24);

    v10 = v2;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CE8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_1C441D828(*(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8), &v23);
      *(v13 + 12) = 2080;
      sub_1C442E860(v24, v22);
      sub_1C456902C(&qword_1EC0B8D10, &qword_1C4F0EFE0);
      v15 = sub_1C4F01198();
      v17 = v16;
      sub_1C440962C(v24);
      v18 = sub_1C441D828(v15, v17, &v23);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v19 = sub_1C4F02A38();
      v21 = sub_1C441D828(v19, v20, &v23);

      *(v13 + 24) = v21;
      _os_log_impl(&dword_1C43F8000, v11, v12, "%s: unable to clear %s state: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v14, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {

      sub_1C440962C(v24);
    }
  }
}

void sub_1C4BF7DBC(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  v11 = &unk_1C4F0C000;
  if (a2)
  {
    v12 = a2;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DDE0);
    v14 = a2;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_1C4F02A38();
      v21 = sub_1C441D828(v19, v20, &v34);

      *(v17 + 4) = v21;
      v11 = &unk_1C4F0C000;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error in dodML record creation: %s", v17, 0xCu);
      sub_1C440962C(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      v22 = v17;
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {
    }
  }

  if (p_info[205] != -1)
  {
    swift_once();
  }

  v23 = sub_1C4F00978();
  sub_1C442B738(v23, qword_1EDE2DDE0);
  sub_1C44DDE2C();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = v11[458];
    sub_1C44DDE2C();
    v28 = sub_1C4EF9D38();
    if (sub_1C44157D4(v6, 1, v28) == 1)
    {
      sub_1C4420C3C(v6, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v30 = sub_1C4EF9CF8();
      v29 = v31;
      (*(*(v28 - 8) + 8))(v6, v28);
    }

    sub_1C4420C3C(v9, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v32 = sub_1C441D828(v30, v29, &v34);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1C43F8000, v24, v25, "DodML record writing UUID: %s", v26, 0xCu);
    sub_1C440962C(v27);
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  else
  {

    sub_1C4420C3C(v9, &qword_1EC0B9DC8, &unk_1C4F124A0);
  }
}

uint64_t sub_1C4BF81D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1C4EF9D18();
    v12 = sub_1C4EF9D38();
    v13 = 0;
  }

  else
  {
    v12 = sub_1C4EF9D38();
    v13 = 1;
  }

  sub_1C440BAA8(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_1C4420C3C(v9, &qword_1EC0B9DC8, &unk_1C4F124A0);
}

uint64_t sub_1C4BF82E0()
{
  sub_1C44010FC();
  sub_1C4BF8528(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 8);
  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 24);
  v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 32);
  v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 40);
  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 48);
  v8 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_outputArtifact + 56);

  v9 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_taskManagers);

  v10 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration45EntityRelevanceHistoricalFeatureViewGenerator_name + 8);

  return v0;
}

uint64_t sub_1C4BF8390()
{
  sub_1C4BF82E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s45EntityRelevanceHistoricalFeatureViewGeneratorCMa()
{
  result = qword_1EDDE88B8;
  if (!qword_1EDDE88B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BF843C()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4BF8528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4BF8590()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4BF85E8()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4BF8640(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1C4BF8774(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C4C81AA0();
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v14;
    }

    else
    {
      sub_1C450B034();
      sub_1C43FFB2C();
      *v7 = a1;
      v7[1] = a2;
      sub_1C44139C0();
      *(v8 + 16) = v9;
      *(v8 + 24) = 0x80000001C4FB9640;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C4BF887C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v66 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v65 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v63 = v13 - v12;
  sub_1C4EFDAB8();
  sub_1C43FCE64();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = a1[1];
  v69 = *a1;
  v72 = a1[2];
  v71 = a1[3];
  v21 = a1[4];
  v22 = a1[5];
  v23 = a1[7];
  v93 = a1[6];
  v76 = v23;
  v75 = a1[8];
  v74 = a1[9];
  v73 = a1[10];
  (*(v24 + 104))(v19, *MEMORY[0x1E69A9418]);
  v25 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v67 = v21;
  v28 = sub_1C45EA510(a2, v19, v21, v22);
  v29 = type metadata accessor for BehaviorHistoryUtility();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70 = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v32 = sub_1C4624330(a3, a4);
  if (v62)
  {

    v33 = 0;
  }

  else
  {
    v34 = v32;
    v84 = v25;
    v85 = &off_1F43E2510;
    v87 = v29;
    v88 = &off_1F43E41D8;
    v86 = v32;
    v81[0] = v69;
    v81[1] = v20;
    v81[2] = a2;
    v82 = v28;
    v91 = &type metadata for BehaviorDatabaseHistogramManager;
    v92 = &off_1F43E25F0;
    *&v89 = swift_allocObject();
    sub_1C4BEB830(v81, v89 + 16);
    v79 = v29;
    v80 = &off_1F43E41D8;
    *&v78 = v34;
    v77[4] = &off_1F43E2510;
    v77[3] = v25;
    v77[0] = v28;
    type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v35 = swift_allocObject();
    sub_1C4418280(v77, v25);
    sub_1C43FCE64();
    v37 = *(v36 + 64);
    MEMORY[0x1EEE9AC00](v38);
    sub_1C43FBCC4();
    v41 = (v40 - v39);
    (*(v42 + 16))(v40 - v39);
    v43 = *v41;
    v35[15] = v25;
    v35[16] = &off_1F43E2510;
    v35[12] = v43;
    v35[17] = MEMORY[0x1E69E7CC8];
    sub_1C441D670(&v78, (v35 + 2));
    sub_1C441D670(&v89, (v35 + 7));
    swift_retain_n();

    v33 = v35;

    sub_1C440962C(v77);
    sub_1C4BEB88C(v81);
  }

  v82 = v25;
  v83 = &off_1F43E2510;
  v81[0] = v28;
  v44 = 0;
  if (v33)
  {
    v44 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v45 = &off_1F43E24F0;
  }

  else
  {
    v45 = 0;
    *(&v89 + 1) = 0;
    v90 = 0;
  }

  *&v89 = v33;
  v91 = v44;
  v92 = v45;
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v46 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
  v47 = *(*v46 + 72);
  v48 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C4F0C890;
  v50 = (v49 + v48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BEC810(v75, v74);
  sub_1C4EFBE08();
  *v50 = 1701869940;
  *(v50 + 1) = 0xE400000000000000;
  v51 = *(v65 + 32);
  v51(&v50[v46[7]], v63, v66);
  v52 = &v50[v47];
  sub_1C4EFBE08();
  strcpy(&v50[v47], "behaviorType");
  v52[13] = 0;
  *(v52 + 7) = -5120;
  v53 = sub_1C4411380();
  (v51)(v53);
  v54 = &v50[2 * v47];
  sub_1C4EFBDB8();
  *v54 = 1635017060;
  *(v54 + 1) = 0xE400000000000000;
  v55 = sub_1C4411380();
  (v51)(v55);
  a6[4] = a5;
  a6[5] = v49;
  *a6 = v69;
  a6[1] = v20;
  a6[2] = v72;
  a6[3] = v71;
  sub_1C442E860(v81, (a6 + 11));
  sub_1C46DA590(&v89, (a6 + 6));
  v56 = *(*(a5 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v57 = type metadata accessor for BehaviorDatabaseEventTracker();
  swift_allocObject();
  v58 = sub_1C45DC594(v93, v76, v56, v75, v74, v73);
  a6[19] = v57;
  a6[20] = &off_1F43E2390;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BEC810(v75, v74);

  a6[16] = v58;
  sub_1C4BF9A14(&v89);
  result = sub_1C440962C(v81);
  a6[21] = v67;
  a6[22] = v70;
  a6[23] = v93;
  a6[24] = v76;
  a6[25] = v75;
  a6[26] = v74;
  a6[27] = v73;
  return result;
}

void sub_1C4BF93CC()
{
  v5 = sub_1C44127A4();
  sub_1C4401114(v5);
  if (v1)
  {
    sub_1C43FF76C(v6);
    v8 = *(v7 + 24);
    v22 = *(v7 + 16);
    v23 = 0uLL;
    sub_1C44E9220();
    if (!v0)
    {
      v10 = v9;
      v11 = *(*(v9 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      swift_retain_n();

      v12 = v3;

      sub_1C440392C();
      v14 = v13;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C470336C(v10, v24[9], v1, v22, v14, v24);

      if (!v12)
      {
        v16 = *(v24[4] + 16);
        MEMORY[0x1EEE9AC00](v15);
        v21[2] = v24;
        sub_1C446C37C(sub_1C4707C54, v21);
        sub_1C46EEFDC(v24);
      }
    }
  }

  else
  {
    sub_1C450B034();
    v17 = sub_1C43FFB2C();
    *v18 = v4;
    v18[1] = v2;
    sub_1C442D668(v17, v18);
    sub_1C44010A8(v23, v19, v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BF9570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = (a3 + *(_s6ConfigVMa() + 72));
  v6 = v5[1];
  if (!v6)
  {
    sub_1C450B034();
    v34 = sub_1C43FFB2C();
    *v35 = a1;
    v35[1] = a2;
    sub_1C442D668(v34, v35);
    sub_1C44010A8(v48, v36, v37);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_27;
  }

  v7 = v5[3];
  v8 = *v5;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v8;
  *(inited + 40) = v6;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v39 = v14;
  v40 = v7 + 64;
  if (v13)
  {
    while (1)
    {
      v47 = v16;
LABEL_10:
      v18 = (*(v41 + 56) + 88 * (__clz(__rbit64(v13)) | (v15 << 6)));
      v19 = v18[1];
      v45 = v18[2];
      v46 = *v18;
      v42 = v18[3];
      v21 = v18[4];
      v20 = v18[5];
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[9];
      v43 = v18[8];
      v44 = v18[10];
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_1C4F0C890;
      *(v25 + 32) = v46;
      *(v25 + 40) = v19;
      *(v25 + 48) = v21;
      *(v25 + 56) = v20;
      *(v25 + 64) = v23;
      *(v25 + 72) = v22;
      if (v24)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4BEC810(v43, v24);
        sub_1C443D664();
        v25 = v26;

        *(v25 + 16) = 4;
        *(v25 + 80) = v43;
        *(v25 + 88) = v24;

        sub_1C45E8E50(v43, v24);
        v27 = *(v25 + 16);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = 3;
      }

      v16 = v47;
      v28 = *(v47 + 16);
      if (__OFADD__(v28, v27))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v47 + 24) >> 1)
      {
        sub_1C443D664();
        v16 = v29;
      }

      if (*(v25 + 16))
      {
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v27)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        v14 = v39;
        v10 = v40;
        if (v27)
        {
          v30 = *(v16 + 16);
          v31 = __OFADD__(v30, v27);
          v32 = v30 + v27;
          if (v31)
          {
            goto LABEL_32;
          }

          *(v16 + 16) = v32;
        }
      }

      else
      {

        v14 = v39;
        v10 = v40;
        if (v27)
        {
          goto LABEL_30;
        }
      }

      v13 &= v13 - 1;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v47 = v16;
      v15 = v17;
      goto LABEL_10;
    }
  }

  sub_1C449ADBC(v16);
  sub_1C4C743B4();

LABEL_27:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4BF9A14(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB460, &qword_1C4F5D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4BF9A7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C4BF9ADC(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  sub_1C4BC7950(a1);
  v4 = sub_1C4EFBE98();
  if (v2)
  {
  }

  v6 = v4;

  type metadata accessor for EscapeBlockMonitor();
  v7 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v7;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v6;

  a2(sub_1C4AE5180, v11);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4BF9C7C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  a8(a4, a5, a6, a7);
  v12 = sub_1C4EFBE98();
  if (v10)
  {
  }

  v14 = v12;

  type metadata accessor for EscapeBlockMonitor();
  v15 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v15;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v14;

  a2(a10, v19);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4BF9E2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v6;
  v16 = *(v2 + 32);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "RowUpdatableDatabaseTable: insert with callback", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v11 = *(*(v3 + 24) + 16);
  MEMORY[0x1EEE9AC00](v12);
  v14[2] = v15;
  v14[3] = a1;
  v14[4] = a2;

  sub_1C446C37C(sub_1C4BFC4F0, v14);
}

uint64_t sub_1C4BF9FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2E088);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C43F8000, v12, v13, "RowUpdatableDatabaseTable: insert with callback", v14, 2u);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  v15 = *(a5 + 16);
  MEMORY[0x1EEE9AC00](v16);
  v18[2] = v19;
  v18[3] = a1;
  v18[4] = a2;

  sub_1C446C37C(a7, v18);
}

uint64_t sub_1C4BFA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s10ViewConfigVMa(0);
  v11 = sub_1C43FBCE0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - v17;
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  if (v5)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      v52[0] = v49;
      v52[1] = v50;
      v53 = v51;
      swift_unownedRetainStrong();
      v19 = *(a4 + 16);

      v20 = sub_1C442D680();
      sub_1C443A738(v20, v21, v22, v23, v24, v25, v26, v27);
      v47[1] = a5;

      v30 = &v18[*(v10 + 112)];
      v32 = *v30;
      v31 = v30[1];
      sub_1C4BFC638(*v30);
      v33 = v18;
      v34 = v32;
      sub_1C445F57C(v33);
      if (v32)
      {
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      swift_unownedRetainStrong();
      v35 = *(a4 + 16);

      v36 = sub_1C442D680();
      sub_1C443A738(v36, v37, v38, v39, v40, v41, v42, v43);

      v44 = &v15[*(v10 + 112)];
      v46 = *v44;
      v45 = v44[1];
      sub_1C4BFC638(*v44);
      sub_1C445F57C(v15);
      if (v46)
      {
      }

      else
      {
        v45 = 0;
      }

      swift_unownedRetainStrong();
      _s37EntityRelevanceInferenceViewGeneratorCMa();
      v10 = swift_allocObject();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BFA680(a1, a2, v52, v34, v45, a4);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v28 = a1;
      *(v28 + 8) = a2;
      *(v28 + 16) = xmmword_1C4F5B670;
      *(v28 + 32) = 0xD000000000000025;
      *(v28 + 40) = 0x80000001C4FB83A0;
      *(v28 + 48) = v48;
      *(v28 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v10;
}

uint64_t sub_1C4BFA5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BFA230(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t *sub_1C4BFA680(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v42 = *v8;
  v15 = sub_1C4F01D98();
  v16 = sub_1C43FCDF8(v15);
  v40 = v17;
  v41 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v39 = v21 - v20;
  v38 = sub_1C4F01D58();
  v22 = sub_1C43FBCE0(v38);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = sub_1C4F00D88();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  sub_1C43FBCC4();
  v8[2] = a1;
  v8[3] = a2;
  v44 = *a3;
  v27 = *(a3 + 3);
  v45 = *(a3 + 4);
  sub_1C456902C(&qword_1EC0C4970, &unk_1C4F5CF90);
  v28 = swift_allocObject();
  *(v28 + 56) = 0;
  v29 = a3[1];
  *(v28 + 16) = *a3;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a3 + 4);
  v8[4] = v28;
  v8[5] = a4;
  v8[6] = a5;
  type metadata accessor for EntityRelevanceInferenceCore();
  swift_allocObject();
  sub_1C448DB48(&v44, v43);

  sub_1C445FFF0(&v45, v43, &qword_1EC0BB018, qword_1C4F50870);

  v31 = sub_1C470A450(v30);
  if (v7)
  {

    sub_1C4471348(&v44);

    sub_1C4420C3C(&v45, &qword_1EC0BB018, qword_1C4F50870);
    v32 = v8[3];

    v33 = v8[4];

    v34 = v8[5];

    v35 = v8[6];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8[7] = v31;
    sub_1C4665684();
    sub_1C4F00D78();
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1C4490264(&qword_1EDDF0418, MEMORY[0x1E69E8030]);
    sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4A54BDC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4F020C8();
    (*(v40 + 104))(v39, *MEMORY[0x1E69E8090], v41);
    v36 = sub_1C4F01DC8();

    sub_1C4471348(&v44);

    sub_1C4420C3C(&v45, &qword_1EC0BB018, qword_1C4F50870);
    v8[8] = v36;
    v8[9] = a6;
  }

  return v8;
}

void sub_1C4BFAA64()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 56));
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  sub_1C4CFDDC4();

  os_unfair_lock_unlock((v1 + 56));
}

uint64_t sub_1C4BFAAE0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  *(v0 + 64) = v2;
  os_unfair_lock_lock((v2 + 56));
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  *(v0 + 48) = *(v2 + 48);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  sub_1C4CFDDC4();
  os_unfair_lock_unlock((v2 + 56));
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v13 = *(v1 + 16);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  *(v9 + 32) = v8;
  *(v9 + 40) = v2;
  *(v9 + 48) = v7;
  *(v9 + 56) = v13;
  *(v9 + 72) = v6;
  v10 = *(MEMORY[0x1E69E88D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1C4BFAC44;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C4BFAC44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4BFAD5C, 0, 0);
}

uint64_t sub_1C4BFAD5C()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 56));
  sub_1C4BFBEAC((v1 + 16));
  os_unfair_lock_unlock((*(v0 + 64) + 56));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C4BFAE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v33 = a5;
  v34 = a6;
  v40 = sub_1C4F00D58();
  v43 = *(v40 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4F00D88();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v37 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v33 - v23;
  v38 = *(a2 + 64);
  (*(v20 + 16))(&v33 - v23, a1, v19, v22);
  v25 = (*(v20 + 80) + 72) & ~*(v20 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  *(v26 + 4) = a5;
  v27 = v35;
  *(v26 + 5) = v34;
  *(v26 + 6) = v27;
  *(v26 + 7) = v36;
  *(v26 + 8) = a9;
  (*(v20 + 32))(&v26[v25], v24, v19);
  aBlock[4] = sub_1C4BFC2C8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F44029C0;
  v28 = _Block_copy(aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = v37;
  sub_1C4F00D78();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1C4490264(&qword_1EDDFCF08, MEMORY[0x1E69E7F60]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4A54BDC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
  v31 = v39;
  v30 = v40;
  sub_1C4F020C8();
  MEMORY[0x1C6940AA0](0, v29, v31, v28);
  _Block_release(v28);
  (*(v43 + 8))(v31, v30);
  (*(v41 + 8))(v29, v42);
}

void sub_1C4BFB208(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[2])
  {
    v4 = a1[4];
    v5 = a1[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C0C2D8(v4, v5, v22);

    v24[0] = v22[0];
    v24[1] = v22[1];
    v25 = v23;
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock((a3 + 56));
    sub_1C4BFC344((a3 + 16));
    os_unfair_lock_unlock((a3 + 56));
    sub_1C4BFC36C(v24);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "No feature view dependencies specified. Stopping since there's nowhere to retrieve features from", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    sub_1C470CDF4();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 4;
    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v14 = v11;
    v21 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();

    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1C43F8000, v21, v15, "Failed to update entity relevance inferences due to missing view client: %@", v16, 0xCu);
      sub_1C4420C3C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);

      v20 = v21;
    }

    else
    {

      v20 = v11;
    }
  }
}

uint64_t sub_1C4BFB594(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v31 = a4;
  v32 = a6;
  v40 = a5;
  v30 = a3;
  v11 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  v17 = *(a1 + 16);
  v18 = *a1;
  v19 = a1[3];
  v20 = a1[4];
  v29[0] = a1[1];
  v29[1] = v19;
  v29[2] = v20;
  v35 = v18;
  v36 = v29[0];
  v37 = v17;
  v38 = v19;
  v39 = v20;
  (*(v12 + 16))(v16, a8, v11, v14);
  v21 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v17;
  v23 = v31;
  *(v22 + 32) = v30;
  *(v22 + 40) = v23;
  v24 = v40;
  v25 = v40[1];
  *(v22 + 48) = *v40;
  *(v22 + 64) = v25;
  v26 = v32;
  v27 = v33;
  *(v22 + 80) = *(v24 + 4);
  *(v22 + 88) = v26;
  *(v22 + 96) = v27;
  (*(v12 + 32))(v22 + v21, v16, v11);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BFC460(v40, v34);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BF9E2C(sub_1C4BFC3C0, v22);
}

uint64_t sub_1C4BFB7B8(void (*a1)(void), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v11 = a7[1];
  v40 = *a7;
  v41 = v11;
  *&v42 = *(a7 + 4);
  sub_1C470B7CC(a4, a5, a6, &v40, a8, a9, v43);
  if (v9)
  {
    v12 = v9;
    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = a1;
    v12 = v43[0];
    v32 = v43[3];
    v33 = v43[1];
    v30 = v43[5];
    v44 = v43[0];
    v35 = *(v43[0] + 16);
    sub_1C445FFF0(&v44, &v40, &qword_1EC0C4968, qword_1C4F5CF10);

    v21 = 0;
    v34 = v12;
    for (i = v12 + 7; ; i += 4)
    {
      if (v35 == v21)
      {
        sub_1C4420C3C(&v44, &qword_1EC0C4968, qword_1C4F5CF10);

        sub_1C4420C3C(&v44, &qword_1EC0C4968, qword_1C4F5CF10);

        goto LABEL_14;
      }

      if (v21 >= v34[2])
      {
        break;
      }

      v23 = *(i - 1);
      v24 = *i;
      v25 = *(i - 2);
      v39[0] = *(i - 3);
      v39[1] = v25;
      v39[2] = v23;
      v39[3] = v24;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v33(&v36, v39);

      v26 = v36;
      v27 = v37;
      v12 = *(&v38 + 1);
      v28 = v38;
      v40 = v36;
      v41 = v37;
      v42 = v38;
      if (v32(&v40))
      {
        v40 = v26;
        v41 = v27;
        v42 = __PAIR128__(v12, v28);
        v30(&v36, &v40);
        sub_1C4BFC50C(v26, *(&v26 + 1));
        v40 = v36;
        v41 = v37;
        v42 = v38;
        sub_1C4BFBC48(&v40, v31);
      }

      else
      {
        sub_1C4BFC50C(v26, *(&v26 + 1));
      }

      ++v21;
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DF70);
  v14 = v12;
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CE8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1C43F8000, v15, v16, "Failed to update entity relevance inferences: %@", v17, 0xCu);
    sub_1C4420C3C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v18, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  else
  {
  }

LABEL_14:
  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  return sub_1C4F01818();
}

uint64_t sub_1C4BFBC48(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v25 = a1[3];
  v7 = a1[5];
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v3, v4, &v26);
    _os_log_impl(&dword_1C43F8000, v9, v10, "Computed entity relevance for: %s", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    v14 = v12;
    a2 = v11;
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_1C4F0D480;
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69A0138];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = v18;
  *(v15 + 32) = v3;
  *(v15 + 40) = v4;
  v19 = MEMORY[0x1E69A0168];
  *(v15 + 96) = MEMORY[0x1E69E63B0];
  *(v15 + 104) = v19;
  *(v15 + 72) = v5;
  *(v15 + 136) = v17;
  *(v15 + 144) = v18;
  v20 = v25;
  if (!v6)
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v6)
  {
    v21 = v6;
  }

  v22 = MEMORY[0x1E69E7360];
  *(v15 + 112) = v20;
  *(v15 + 120) = v21;
  v23 = MEMORY[0x1E69A01D0];
  *(v15 + 176) = v22;
  *(v15 + 184) = v23;
  *(v15 + 152) = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  a2(v16);
}

void sub_1C4BFBEAC(__int128 *a1)
{
  v3 = sub_1C4EF98F8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = a1[1];
  v31 = *a1;
  v32 = v11;
  v33 = *(a1 + 4);
  v12 = sub_1C4947844();
  if (v1)
  {
  }

  else
  {
    v13 = v12;
    v14 = v4[2];
    v14(v10, *(*(&v32 + 1) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v3);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    v14(v7, v10, v3);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v18 = 134218242;
      *(v18 + 4) = v13;
      *(v18 + 12) = 2080;
      sub_1C4490264(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0]);
      v29 = v17;
      v19 = sub_1C4F02858();
      v21 = v20;
      v28 = v16;
      v22 = v4[1];
      v22(v7, v3);
      v23 = sub_1C441D828(v19, v21, &v34);

      *(v18 + 14) = v23;
      v24 = v28;
      _os_log_impl(&dword_1C43F8000, v28, v29, "writing %ld entity relevance rows to %s", v18, 0x16u);
      v25 = v30;
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v25, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);

      v22(v10, v3);
    }

    else
    {

      v26 = v4[1];
      v26(v7, v3);
      v26(v10, v3);
    }
  }
}

uint64_t sub_1C4BFC1EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  return v0;
}

uint64_t sub_1C4BFC23C()
{
  sub_1C4BFC1EC();

  return swift_deallocClassInstance();
}

void sub_1C4BFC2C8()
{
  v1 = *(*(sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];

  sub_1C4BFB208(v2, v3, v4);
}

uint64_t sub_1C4BFC3C0()
{
  v1 = *(sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v16 = *(v0 + 96);
  v17 = v0 + ((*(v1 + 80) + 104) & ~*(v1 + 80));
  v7 = sub_1C442D680();
  return sub_1C4BFB7B8(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t sub_1C4BFC4BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *))
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4BFA124(a1, v5, a3);
}

uint64_t sub_1C4BFC50C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C4BFC5E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C4BFC638(uint64_t result)
{
  if (result)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4BFC6A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v9 = *v1;
  v8 = v4;
  a1[3] = &type metadata for EntityRelevanceRankingDatabaseTable;
  a1[4] = &off_1F43E9D58;
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 16) = *v1;
  *(v5 + 32) = *(v1 + 2);
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  sub_1C448DB48(&v9, v7);

  return sub_1C4AF994C(&v8, v7);
}

void sub_1C4BFC748(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa() + 56));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(v8 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v37 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v13 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
      v14 = *(*v13 + 72);
      v35 = v11;
      v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C4F0D480;
      v17 = (v16 + v15);
      v18 = v13[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v17 = 1684628589;
      v17[1] = 0xE400000000000000;
      v19 = v10;
      v20 = (v17 + v14);
      v21 = v17 + v14 + v13[7];
      sub_1C4EFBDE8();
      sub_1C441A7B0();
      *v20 = v22;
      v20[1] = v23;
      v24 = (v17 + 2 * v14);
      v25 = v24 + v13[7];
      sub_1C4EFBDD8();
      sub_1C4407EB0();
      *v24 = v26;
      v24[1] = v27;
      v28 = (v17 + 3 * v14);
      v29 = v28 + v13[7];
      sub_1C4EFBE08();
      *v28 = 0xD000000000000010;
      v28[1] = 0x80000001C4FB97A0;
      a4[3] = &type metadata for EntityRelevanceRankingDatabaseTable;
      a4[4] = &off_1F43E9D58;
      v30 = swift_allocObject();
      *a4 = v30;
      *(v30 + 16) = v19;
      *(v30 + 24) = v9;
      *(v30 + 32) = v35;
      *(v30 + 40) = v37;
      *(v30 + 48) = v16;
    }
  }

  else
  {
    sub_1C450B034();
    v31 = swift_allocError();
    *v32 = a1;
    v32[1] = a2;
    sub_1C442D690(v31, v32);
    sub_1C44010A8(v36, v33, v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BFC9A4()
{
  v5 = (v2 + *(sub_1C440B5BC() + 56));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v5 + 16);
    v26 = 0uLL;
    sub_1C4417990();
    if (!v1)
    {
      v10 = v9;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v11 = type metadata accessor for ViewDatabaseArtifact.Property();
      sub_1C44139CC(v11);
      v13 = *(v12 + 72);
      v14 = sub_1C44127D8();
      sub_1C4432C90(v14, xmmword_1C4F0D480);
      sub_1C4EFBDD8();
      sub_1C442063C();
      sub_1C441A7B0();
      sub_1C4403954(v15);
      sub_1C4407EB0();
      *v8 = v16;
      v8[1] = v17;
      v18 = (v4 + 3 * v13);
      v19 = sub_1C43FE010();
      *v18 = 0xD000000000000010;
      v18[1] = v8;
      v27[0] = v7;
      v27[1] = v6;
      v28 = v31;
      v29 = v10;
      v30 = v14;
      v20 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v19);
      v25[2] = v27;
      sub_1C446C37C(sub_1C4BFCD78, v25);
    }
  }

  else
  {
    sub_1C450B034();
    v21 = swift_allocError();
    *v22 = v3;
    v22[1] = v0;
    sub_1C442D690(v21, v22);
    sub_1C44010A8(v26, v23, v24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BFCB8C()
{
  v5 = (v2 + *(sub_1C440B5BC() + 56));
  if (v5[1])
  {
    v6 = *v5;
    v7 = *(v5 + 16);
    sub_1C4417990();
    if (!v1)
    {
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v8 = type metadata accessor for ViewDatabaseArtifact.Property();
      sub_1C44139CC(v8);
      v10 = *(v9 + 72);
      v11 = sub_1C44127D8();
      sub_1C4432C90(v11, xmmword_1C4F0D480);
      sub_1C4EFBDD8();
      sub_1C442063C();
      sub_1C441A7B0();
      sub_1C4403954(v12);
      sub_1C4407EB0();
      *v7 = v13;
      v7[1] = v14;
      v15 = (v4 + 3 * v10);
      sub_1C43FE010();
      *v15 = 0xD000000000000010;
      v15[1] = v7;
      sub_1C4CFDDC4();
    }
  }

  else
  {
    sub_1C450B034();
    v16 = swift_allocError();
    *v17 = v3;
    v17[1] = v0;
    sub_1C442D690(v16, v17);
    sub_1C44010A8(v20, v18, v19);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BFCDA4()
{
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_1C4EF9F88();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v20 = *(v9 + 8);
  v42 = v9 + 8;
  v43 = v8;
  v39 = v20;
  v20(v12, v8);
  v21 = *MEMORY[0x1E6969AB0];
  v22 = v1[13];
  v22(v7, v21, v0);
  v38 = sub_1C4EF9F78();
  v23 = v1[1];
  v23(v7, v0);
  v22(v7, v21, v0);
  v22(v4, *MEMORY[0x1E6969A10], v0);
  v24 = sub_1C4EF9F48();
  v26 = v25;
  LOBYTE(v9) = v27;
  v23(v4, v0);
  v28 = (v23)(v7, v0);
  if (v9)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    v30 = v38;
    *(&v37 - 4) = v19;
    *(&v37 - 3) = v30;
    *(&v37 - 2) = v15;
    sub_1C49BFC78(sub_1C4BFF3A4, (&v37 - 6), v24, v26, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v29 = v35;
  }

  v39(v15, v43);
  (*(v40 + 8))(v19, v41);
  return v29;
}

uint64_t sub_1C4BFD138()
{
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C4EF9CD8();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EF9F88();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9C88();
  v16 = *MEMORY[0x1E6969A58];
  v17 = v1[13];
  v17(v7, v16, v0);
  v33 = sub_1C4EF9F78();
  v18 = v1[1];
  v18(v7, v0);
  v17(v7, v16, v0);
  v17(v4, *MEMORY[0x1E6969A48], v0);
  v19 = sub_1C4EF9F48();
  v21 = v20;
  v23 = v22;
  v18(v4, v0);
  v24 = (v18)(v7, v0);
  if (v23)
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v26 = v33;
    *(&v33 - 4) = v15;
    *(&v33 - 3) = v26;
    *(&v33 - 2) = v11;
    sub_1C49BFC78(sub_1C4BFF37C, (&v33 - 6), v19, v21, v27, v28, v29, v30, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v25 = v31;
  }

  (*(v36 + 8))(v11, v37);
  (*(v34 + 8))(v15, v35);
  return v25;
}

uint64_t sub_1C4BFD47C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v8 = sub_1C4EF9F68();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = *a1;
  result = (*(v11 + 104))(v15 - v14, *a5, v8);
  if (__OFSUB__(v17, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v11 + 8))(v16, v8);
  }

  return result;
}

uint64_t sub_1C4BFD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 16);
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featureNames;
  sub_1C4499940(&unk_1F43DA920, a2, a3, a4, a5, a6, a7, a8, *a1, *(a1 + 8), v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0, vars8);
  *(v8 + v16) = v17;
  v18 = v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database;
  *v18 = v22;
  *(v18 + 16) = v15;
  *(v18 + 24) = *(a1 + 24);
  sub_1C463F29C(a2, v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_config);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_dayOfWeekBins) = sub_1C4BFCDA4();
  v19 = sub_1C4BFD138();
  v20 = sub_1C4EF9CD8();
  (*(*(v20 - 8) + 8))(a6, v20);
  sub_1C445F57C(a2);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_hourOfDayBins) = v19;
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featurizer) = a4;
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_behaviorDatabase) = a5;
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_graphStore) = a3;
  return v8;
}

uint64_t sub_1C4BFD6E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a2;
  v46 = a4;
  v44 = a1;
  v6 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442D6AC(v12, v40);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = sub_1C456902C(&qword_1EC0C4978, &qword_1C4F5D128);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = *(v4 + *a3);
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v40 = &v40 - v18;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v21 = v49;
    v24 = *(v9 + 16);
    v22 = v9 + 16;
    v23 = v24;
    v25 = v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v41 = *(v22 + 56);
    v42 = v22;
    v26 = (v22 - 8);
    do
    {
      v23(v15, v25, v6);
      v23(v43, v15, v6);
      v47 = 0;
      LOWORD(v48) = 256;
      v27 = type metadata accessor for BehaviorContext();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v46, 1, v44, v30, v31, v32, v33, v34, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      v36 = v35;

      (*v26)(v15, v6);
      v49 = v21;
      v37 = *(v21 + 16);
      if (v37 >= *(v21 + 24) >> 1)
      {
        sub_1C459D100();
        v21 = v49;
      }

      *(v21 + 16) = v37 + 1;
      *(v21 + 8 * v37 + 32) = v36;
      v25 += v41;
      --v20;
    }

    while (v20);
  }

  sub_1C4577DBC();
  v47 = v21;
  sub_1C456902C(&qword_1EC0B8838, "nS\t");
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C4F0D130;
  *(v38 + 32) = *(v21 + 16);
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  sub_1C4BFF2D0();
  sub_1C4F00998();
  return sub_1C4F01D08();
}

uint64_t sub_1C4BFD9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v50 = a2;
  v52 = a4;
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C442D6AC(v7, v43);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - v11;
  v12 = sub_1C4EFDAB8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = sub_1C4EFF0C8();
  v24 = sub_1C43FCDF8(v23);
  v48 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v47 = v29 - v28;
  v30 = a1;
  sub_1C45D5A24(v22);
  v31 = *MEMORY[0x1E69A9468];
  v51 = *(v15 + 104);
  v51(v19, v31, v12);
  sub_1C4BFF334(&qword_1EDDEFFB8, MEMORY[0x1E69A9478]);
  sub_1C4401124();
  sub_1C442066C();
  v32 = *(v15 + 8);
  v32(v19, v12);
  v32(v22, v12);
  if (v54 == v53)
  {
    v33 = sub_1C45D2400();
    v34 = v49;
    sub_1C465C294(v33, v35, v50);

LABEL_3:
    if (sub_1C44157D4(v34, 1, v23) == 1)
    {
      sub_1C47781FC(v34);
LABEL_16:
      v38 = 1;
      v36 = v52;
      return sub_1C440BAA8(v36, v38, 1, v23);
    }

    v36 = v52;
    goto LABEL_13;
  }

  sub_1C45D5A24(v22);
  v51(v19, *MEMORY[0x1E69A9458], v12);
  sub_1C4401124();
  sub_1C442066C();
  v32(v19, v12);
  v32(v22, v12);
  if (v54 != v53)
  {
    sub_1C45D5A24(v22);
    v51(v19, *MEMORY[0x1E69A9420], v12);
    sub_1C4401124();
    sub_1C442066C();
    v32(v19, v12);
    v32(v22, v12);
    if (v54 != v53)
    {
      goto LABEL_16;
    }

    sub_1C45D2400();
    v34 = v46;
    sub_1C4EFF0D8();
    goto LABEL_3;
  }

  v36 = v52;
  if (*(v30 + 40) != 14)
  {
    goto LABEL_11;
  }

  v37 = *(v30 + 8);
  v38 = 1;
  if (v37 && (*(v30 + 20) & 1) != 0)
  {
    v39 = *v30;
    v34 = v44;
    sub_1C465C294(v39, v37, v45);
    if (sub_1C44157D4(v34, 1, v23) != 1)
    {
LABEL_13:
      v40 = v47;
      v41 = *(v48 + 32);
      v41(v47, v34, v23);
      v41(v36, v40, v23);
      v38 = 0;
      return sub_1C440BAA8(v36, v38, 1, v23);
    }

    sub_1C47781FC(v34);
LABEL_11:
    v38 = 1;
  }

  return sub_1C440BAA8(v36, v38, 1, v23);
}

uint64_t sub_1C4BFDE68(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_graphStore);
  v36 = sub_1C4708580(v4);
  v35 = sub_1C4708EDC(v4);
  v5 = *(a1 + 16);
  v6 = (a1 + 72);
  for (i = MEMORY[0x1E69E7CC0]; v5; --v5)
  {
    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *(v6 - 4);
    v11 = *(v6 - 3);
    v12 = *v6;
    *&v37 = *(v6 - 5);
    *(&v37 + 1) = v10;
    v38 = v11;
    v39 = v9;
    v40 = v8;
    v41 = v12;
    v13 = sub_1C440B5E8();
    sub_1C45D7F78(v13, v14, v15, v16, v17, v18);
    sub_1C4BFDFE8(&v37, v34, v36, v35, a2, &v42);
    v19 = sub_1C440B5E8();
    sub_1C45A23B4(v19, v20, v21, v22, v23, v24);
    v25 = v42;
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(i + 16);
        sub_1C458B994();
        i = v28;
      }

      v26 = *(i + 16);
      if (v26 >= *(i + 24) >> 1)
      {
        sub_1C458B994();
        i = v29;
      }

      *(i + 16) = v26 + 1;
      *(i + 8 * v26 + 32) = v25;
    }

    v6 += 48;
  }

  sub_1C45FAC9C(i);
  v31 = v30;

  return v31;
}

void sub_1C4BFDFE8(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v89 = a5;
  v85 = a2;
  v11 = sub_1C4EFDAB8();
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v76 - v16;
  v18 = sub_1C4EFF0C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  v26 = a1[1];
  v87 = *a1;
  v88[0] = v26;
  v27 = *(a1 + 25);
  v29 = v28;
  *(v88 + 9) = v27;
  sub_1C4BFD9FC(&v87, a3, a4, v17);
  if (sub_1C44157D4(v17, 1, v29) == 1)
  {
    sub_1C47781FC(v17);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDE2DDE0);
    sub_1C45A2358(&v87, v86);
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CB8();
    sub_1C45EC75C(&v87);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v86[0] = v34;
      *v33 = 136315138;
      v35 = sub_1C45D58F8();
      v37 = sub_1C441D828(v35, v36, v86);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1C43F8000, v31, v32, "Behavior identifier %s could not be mapped to MDID", v33, 0xCu);
      sub_1C440962C(v34);
      MEMORY[0x1C6942830](v34, -1, -1);
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    v38 = 0;
  }

  else
  {
    v84 = a6;
    v80 = v6;
    (*(v19 + 32))(v25, v17, v29);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v39 = sub_1C4F00978();
    sub_1C442B738(v39, qword_1EDE2DDE0);
    v40 = *(v19 + 16);
    v78 = v25;
    v40(v22, v25, v29);
    sub_1C45A2358(&v87, v86);
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CB8();
    sub_1C45EC75C(&v87);
    v43 = os_log_type_enabled(v41, v42);
    v79 = v19;
    v77 = v29;
    if (v43)
    {
      v44 = v29;
      v45 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v86[0] = v76;
      *v45 = 136315394;
      v46 = sub_1C45D2400();
      v48 = sub_1C441D828(v46, v47, v86);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      sub_1C4BFF334(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
      v49 = sub_1C4F02858();
      v51 = v50;
      v52 = v44;
      v53 = *(v19 + 8);
      v53(v22, v52);
      v54 = sub_1C441D828(v49, v51, v86);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_1C43F8000, v41, v42, "[EntitySimilarityFeatureView] Mapping %s to %s", v45, 0x16u);
      v55 = v76;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v55, -1, -1);
      MEMORY[0x1C6942830](v45, -1, -1);
    }

    else
    {

      v53 = *(v19 + 8);
      v53(v22, v29);
    }

    sub_1C45A2358(&v87, v86);
    v56 = sub_1C4F00968();
    v57 = sub_1C4F01CB8();
    sub_1C45EC75C(&v87);
    v58 = os_log_type_enabled(v56, v57);
    a6 = v84;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v86[0] = v60;
      *v59 = 136315138;
      v61 = v81;
      sub_1C45D5A24(v81);
      sub_1C4BFF334(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
      v62 = v53;
      v63 = v83;
      v64 = sub_1C4F02858();
      v66 = v65;
      v67 = v63;
      v53 = v62;
      (*(v82 + 8))(v61, v67);
      v68 = sub_1C441D828(v64, v66, v86);

      *(v59 + 4) = v68;
      _os_log_impl(&dword_1C43F8000, v56, v57, "[EntitySimilarityFeatureView] BehaviorType %s", v59, 0xCu);
      sub_1C440962C(v60);
      a6 = v84;
      MEMORY[0x1C6942830](v60, -1, -1);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    v69 = v89;
    v70 = sub_1C4BFD6E4(&v87, v89, &OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_dayOfWeekBins, 3);
    v71 = sub_1C4BFD6E4(&v87, v69, &OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_hourOfDayBins, 0);
    sub_1C456902C(&qword_1EC0B9D08, &qword_1C4F11670);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1C4F0CE60;
    *(v38 + 32) = 0xD00000000000001DLL;
    *(v38 + 40) = 0x80000001C4F869C0;
    v72 = v78;
    *(v38 + 48) = sub_1C4EFF048();
    *(v38 + 56) = v73;
    *(v38 + 64) = v70;
    *(v38 + 72) = 0xD00000000000001DLL;
    *(v38 + 80) = 0x80000001C4F869E0;
    v74 = v70;
    *(v38 + 88) = sub_1C4EFF048();
    *(v38 + 96) = v75;
    *(v38 + 104) = v71;

    v53(v72, v77);
  }

  *a6 = v38;
}

uint64_t sub_1C4BFE7BC()
{
  v2 = v0;
  v3 = sub_1C4EFDAB8();
  v4 = sub_1C43FCDF8(v3);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  v20 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featurizer);
  sub_1C4EF9C88();
  sub_1C460299C(v19);
  if (v1)
  {
    return (*(v14 + 8))(v19, v11);
  }

  v35 = v20;
  (*(v14 + 8))(v19, v11);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v22 = *(v39 + 72);
  v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0D480;
  v25 = v2;
  v26 = v24 + v23;
  v27 = *(v39 + 104);
  v27(v24 + v23, *MEMORY[0x1E69A9468], v3);
  v27(v26 + v22, *MEMORY[0x1E69A9410], v3);
  v27(v26 + 2 * v22, *MEMORY[0x1E69A9420], v3);
  v27(v26 + 3 * v22, *MEMORY[0x1E69A9458], v3);
  v40 = MEMORY[0x1E69E7CC0];
  v28 = 4;
  sub_1C459D890();
  v36 = v25;
  v37 = *(v39 + 16);
  v38 = *(v25 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_behaviorDatabase);
  do
  {
    v37(v10, v26, v3);
    sub_1C45ED17C();
    v29 = sub_1C45EA9C0(v10);
    v30 = v3;
    (*(v39 + 8))(v10, v3);

    v31 = *(v40 + 16);
    if (v31 >= *(v40 + 24) >> 1)
    {
      sub_1C459D890();
    }

    *(v40 + 16) = v31 + 1;
    *(v40 + 8 * v31 + 32) = v29;
    v26 += v22;
    --v28;
    v3 = v30;
  }

  while (v28);
  swift_setDeallocating();
  sub_1C49E1558();
  sub_1C45FAED4(v40);
  v33 = v32;

  v34 = sub_1C4BFDE68(v33, v35);

  v41 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database);
  v42 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 8);
  v43 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 16);
  v44 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 24);
  v45 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811E40(v34);

  sub_1C47D32C8();

  return sub_1C4BFEC54(v36);
}

uint64_t sub_1C4BFEE7C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database);
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = *(v6 + 16);
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v3;
  v8[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C463F21C, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C4BFEF78()
{
  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_config);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featureNames);

  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 8);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 24);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_database + 32);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_behaviorDatabase);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_dayOfWeekBins);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_hourOfDayBins);

  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_featurizer);

  v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore27EntitySimilarityFeatureView_graphStore);

  return v0;
}

uint64_t sub_1C4BFF038()
{
  sub_1C4BFEF78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntitySimilarityFeatureView()
{
  result = qword_1EDDE0800;
  if (!qword_1EDDE0800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BFF0E4()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4BFF1A0()
{
  sub_1C4BFE7BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BFF218()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4BFEE5C();
}

unint64_t sub_1C4BFF2D0()
{
  result = qword_1EDDDBBF8;
  if (!qword_1EDDDBBF8)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBBF8);
  }

  return result;
}

uint64_t sub_1C4BFF334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4BFF3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s10ViewConfigVMa(0);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  swift_unownedRetainStrong();
  v15 = a4;
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      swift_unownedRetainStrong();
      v16 = *(a4 + 16);

      sub_1C443A738(a1, a2, v17, v18, v19, v20, v21, v22);

      v25 = *(v14 + *(v8 + 116));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C02434(v14, _s10ViewConfigVMa);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      swift_unownedRetainStrong();
      _s35EntityTaggingInferenceViewGeneratorCMa();
      v15 = swift_allocObject();

      sub_1C4BFF768(v28, v29, v30, v31, v26, a4);
    }

    else
    {
      v15 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = xmmword_1C4F5B670;
      *(v23 + 32) = 0xD000000000000025;
      *(v23 + 40) = 0x80000001C4FB83A0;
      *(v23 + 48) = v27;
      *(v23 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v15;
}

uint64_t sub_1C4BFF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = sub_1C4BFF3CC(a1, a2, a3, *v3);
  v7 = *(v4 + 8);

  return v7(v6);
}

uint64_t sub_1C4BFF6E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C4BFF734()
{
  sub_1C4BFF6E8();

  return swift_deallocClassInstance();
}

void *sub_1C4BFF768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = *v6;
  v13 = sub_1C4F01D98();
  v14 = sub_1C43FCDF8(v13);
  v37 = v15;
  v38 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v36 = v19 - v18;
  v35 = sub_1C4F01D58();
  v20 = sub_1C43FBCE0(v35);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = sub_1C4F00D88();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1C43FBCC4();
  v6[6] = 0x3FE999999999999ALL;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C472B548();
  _s35EntityTaggingInferenceViewGeneratorC12SendableInfoCMa();
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = a3;
  v26[5] = a4;
  v26[6] = v25;
  sub_1C456902C(&qword_1EC0C4990, &qword_1C4F5D258);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  v7[2] = v27;
  v7[3] = a5;
  v7[5] = a6;
  type metadata accessor for EntityTaggingInferenceCore();
  swift_allocObject();
  v28 = swift_retain_n();
  v29 = sub_1C4729DAC(v28);
  if (v41)
  {

    v30 = v7[2];

    v31 = v7[3];

    v32 = v7[5];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[4] = v29;
    sub_1C4461BB8(0, &qword_1EDDFA4A0, 0x1E69E9610);
    sub_1C4F00D78();
    sub_1C4490264(&qword_1EDDF0418, MEMORY[0x1E69E8030]);
    sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4A54BDC(&qword_1EDDF0608, &qword_1EC0B8498, &qword_1C4F0CD40);
    sub_1C4F020C8();
    (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
    v33 = sub_1C4F01DC8();

    v7[7] = v33;
  }

  return v7;
}

void sub_1C4BFFB40()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CFDCF8(v3, v4, v5, v6);

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4BFFBDC()
{
  v1[35] = v0;
  v1[36] = *v0;
  v2 = *(*(type metadata accessor for EntityTaggingInjectedTags() - 8) + 64);
  v1[37] = sub_1C43FBE7C();
  v3 = sub_1C4EFF488();
  v1[38] = v3;
  sub_1C43FCF7C(v3);
  v1[39] = v4;
  v6 = *(v5 + 64);
  v1[40] = sub_1C43FBE7C();
  v7 = *(*(sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0) - 8) + 64);
  v1[41] = sub_1C43FBE7C();
  v8 = sub_1C4EFF0C8();
  v1[42] = v8;
  sub_1C43FCF7C(v8);
  v1[43] = v9;
  v11 = *(v10 + 64);
  v1[44] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4BFFD54, 0, 0);
}

uint64_t sub_1C4BFFD54()
{
  v104 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  v0[45] = v2;
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4CFDCF8(v5, v4, v6, v7);

  os_unfair_lock_unlock((v2 + 24));
  v8 = *(v1 + 40);
  sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, v103);
  v9 = v103[2];
  v11 = v103[3];
  v10 = v103[4];
  v98 = v8;
  v0[46] = v103[1];
  v0[47] = v11;
  v0[48] = v10;
  v12 = *(v10 + 16);
  v13 = swift_task_alloc();
  *(v13 + 16) = &unk_1F43D6800;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v14 = sub_1C49A529C(sub_1C470CB14, v13);
  v0[49] = v14;

  v100 = v14;
  if (*(v14 + 16))
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Entity Tagging: Deleting all events in EntityTaggingInference Biome stream", v18, 2u);
      sub_1C43FBE2C();
    }

    os_unfair_lock_lock((v2 + 24));
    v19 = *(*(v2 + 16) + 48);
    sub_1C472ABA4(v19);

    os_unfair_lock_unlock((v2 + 24));
  }

  v99 = v2;
  v20 = v0[43];
  v21 = v0[39];
  sub_1C456902C(&qword_1EC0B8F48, &qword_1C4F0EA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C4F86030;
  *(inited + 48) = &unk_1F43D6850;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  v23 = *(v10 + 16);
  v24 = swift_task_alloc();
  *(v24 + 16) = 0;
  *(v24 + 24) = inited;
  *(v24 + 32) = v9;
  *(v24 + 40) = v11;
  *(v24 + 48) = v10;
  *(v24 + 56) = 0;
  v25 = sub_1C49A5498(sub_1C470CD1C, v24);
  swift_setDeallocating();
  sub_1C49E15C4();

  v26 = 0;
  v97 = (v20 + 32);
  v102.i64[0] = *(v25 + 16);
  v92 = v21 + 32;
  v93 = v20 + 16;
  v91 = v21 + 40;
  v94 = v20;
  v95 = (v20 + 8);
  v96 = v21;
  v27 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v101 = v27;
    v0[50] = v27;
    for (i = 80 * v26 + 32; ; i += 80)
    {
      if (v102.i64[0] == v26)
      {
        v74 = v0[37];
        v75 = v0[35];

        v102 = *(v75 + 24);
        sub_1C44098F0(v98 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v74);
        v76 = sub_1C472B6C4();
        v39 = v76;
        v25 = v99;
        if (v76 && !*(v76 + 16))
        {

          v39 = 0;
        }

        if (qword_1EDDFECD0 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_39;
      }

      if (v26 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      memcpy(v0 + 2, (v25 + i), 0x49uLL);
      sub_1C470CD44((v0 + 2), (v0 + 12));
      v29 = objc_autoreleasePoolPush();
      sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      v30 = v0[8];
      v31 = v0[9];
      v32 = sub_1C4F01D38();
      objc_autoreleasePoolPop(v29);
      if (v32)
      {
        break;
      }

      sub_1C470CDA0((v0 + 2));
LABEL_15:
      ++v26;
    }

    v34 = v0[41];
    v33 = v0[42];
    v35 = [v32 stringValue];

    sub_1C4F01138();
    v37 = v0[6];
    v36 = v0[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v34, 1, v33) == 1)
    {
      v38 = v0[41];
      sub_1C470CDA0((v0 + 2));

      sub_1C4420C3C(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
      goto LABEL_15;
    }

    v39 = v0[44];
    v40 = v0[40];
    (*v97)(v39, v0[41], v0[42]);
    sub_1C4EFFA88();

    swift_isUniquelyReferenced_nonNull_native();
    v103[0] = v101;
    sub_1C44E3664();
    if (__OFADD__(*(v101 + 16), (v42 & 1) == 0))
    {
      __break(1u);
LABEL_39:
      sub_1C44066DC();
LABEL_29:
      v77 = sub_1C4F00978();
      sub_1C442B738(v77, qword_1EDE2DF70);
      v78 = sub_1C4F00968();
      v79 = sub_1C4F01CF8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1C43F8000, v78, v79, "Entity Tagging: Injected Entity Tags present, skipping inference step.", v80, 2u);
        sub_1C43FBE2C();
      }

      v0[51] = 0;
      v0[52] = v39;
      v82 = v0[35];
      v81 = v0[36];
      v83 = swift_task_alloc();
      v0[53] = v83;
      v83[1].i64[0] = v82;
      v83[1].i64[1] = v100;
      v83[2].i64[0] = v25;
      v83[2].i64[1] = v39;
      v83[3] = vextq_s8(v102, v102, 8uLL);
      v83[4].i64[0] = v101;
      v83[4].i64[1] = 0x3FE999999999999ALL;
      v83[5].i64[0] = v81;
      v84 = *(MEMORY[0x1E69E88D0] + 4);
      v85 = swift_task_alloc();
      v0[54] = v85;
      *v85 = v0;
      v85[1] = sub_1C4C0077C;
      sub_1C43FE030();

      return MEMORY[0x1EEE6DDE0]();
    }

    v43 = v41;
    v44 = v42;
    sub_1C456902C(&qword_1EC0C4980, &qword_1C4F5D1D0);
    v45 = sub_1C4F02458();
    v27 = v103[0];
    if ((v45 & 1) == 0)
    {
      goto LABEL_20;
    }

    v51 = v0[44];
    sub_1C44E3664();
    if ((v44 & 1) == (v52 & 1))
    {
      v43 = v45;
LABEL_20:
      if (v44)
      {
        v53 = sub_1C4432CB0(v45, v0[40], v0[38], v46, v47, v48, v49, v50, v90, v91, v92, v93, v94, v95, v96);
        (*(v54 + 40))(v53);
LABEL_24:
        ++v26;
        v72 = v0[44];
        v73 = v0[42];
        sub_1C470CDA0((v0 + 2));
        (*v95)(v72, v73);
        continue;
      }

      v55 = v0[44];
      v56 = v0[42];
      v57 = v0[40];
      v58 = v0[38];
      *(v27 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v59 = (*(v94 + 16))(*(v27 + 48) + *(v94 + 72) * v43, v55, v56);
      v67 = sub_1C4432CB0(v59, v60, v61, v62, v63, v64, v65, v66, v90, v91, v92, v93, v94, v95, v96);
      (*(v68 + 32))(v67, v57, v58);
      v69 = *(v27 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (!v70)
      {
        *(v27 + 16) = v71;
        goto LABEL_24;
      }

      __break(1u);
      return MEMORY[0x1EEE6DDE0]();
    }

    break;
  }

LABEL_35:
  v87 = v0[42];
  sub_1C43FE030();

  return sub_1C4F029F8();
}

uint64_t sub_1C4C0077C()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 400);
  v5 = *(*v0 + 392);
  v7 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4C008F0, 0, 0);
}

void sub_1C4C008F0()
{
  v1 = v0[51];
  v2 = v0[45];
  os_unfair_lock_lock((v2 + 24));
  sub_1C4C01E38((v2 + 16));
  if (v1)
  {
    v3 = (v0[45] + 24);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = v0[47];
    v5 = v0[48];
    v6 = v0[46];
    v7 = v0[44];
    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[37];
    os_unfair_lock_unlock((v0[45] + 24));

    swift_bridgeObjectRelease_n();

    sub_1C4C02434(v10, type metadata accessor for EntityTaggingInjectedTags);

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1C4C00A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v36[1] = a6;
  v37 = a8;
  v46 = a7;
  v38 = a10;
  v42 = sub_1C4F00D58();
  v45 = *(v42 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C4F00D88();
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v39 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v36 - v26;
  v40 = *(a2 + 56);
  (*(v23 + 16))(v36 - v26, a1, v22, v25);
  v28 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  *(v29 + 32) = a5;
  *(v29 + 40) = a6;
  v30 = v37;
  *(v29 + 48) = v46;
  *(v29 + 56) = v30;
  *(v29 + 64) = a9;
  (*(v23 + 32))(v29 + v28, v27, v22);
  *(v29 + ((v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  aBlock[4] = sub_1C4C0228C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F4402D70;
  v31 = _Block_copy(aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = v39;
  sub_1C4F00D78();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C4490264(&qword_1EDDFCF08, MEMORY[0x1E69E7F60]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4A54BDC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
  v34 = v41;
  v33 = v42;
  sub_1C4F020C8();
  MEMORY[0x1C6940AA0](0, v32, v34, v31);
  _Block_release(v31);
  (*(v45 + 8))(v34, v33);
  (*(v43 + 8))(v32, v44);
}

uint64_t sub_1C4C00E48(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + 16);
  for (i = (a1 + 40); v16; --v16)
  {
    v18 = *i;
    v20[0] = *(i - 1);
    v20[1] = v18;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C00F2C(v20, a2, a3, a4, a5, a6, a9, a7);

    i += 2;
  }

  sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  return sub_1C4F01818();
}

void sub_1C4C00F2C(uint64_t *a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - v15;
  v17 = sub_1C4EFF0C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = a1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v16, 1, v17) == 1)
  {
    sub_1C4420C3C(v16, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1C441D828(v22, v23, &v37);
      _os_log_impl(&dword_1C43F8000, v25, v26, "Entity Tagging: Entity Identifier :%s is not valid", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }
  }

  else
  {
    v29 = (*(v18 + 32))(v21, v16, v17);
    MEMORY[0x1EEE9AC00](v29);
    v30 = v34;
    *(&v32 - 10) = v33;
    *(&v32 - 9) = v22;
    *(&v32 - 8) = v23;
    *(&v32 - 7) = v30;
    v31 = v36;
    *(&v32 - 6) = v35;
    *(&v32 - 5) = v31;
    *(&v32 - 4) = v21;
    *(&v32 - 3) = a8;
    *(&v32 - 2) = a7;
    os_unfair_lock_lock(a2 + 6);
    sub_1C4C0232C();
    os_unfair_lock_unlock(a2 + 6);
    if (v8)
    {
      __break(1u);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
    }
  }
}

uint64_t sub_1C4C01278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v45 = a5;
  v46 = a7;
  v41 = a3;
  v42 = a6;
  v35[1] = a4;
  v43 = a10;
  v36 = sub_1C4EFF0C8();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v36);
  v18 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(*a1 + 24);
  v44 = *(*a1 + 16);
  v22 = v19[4];
  v21 = v19[5];
  v38 = v20;
  v39 = v22;
  v40 = v21;
  v37 = v19[6];
  v23 = v37;
  (*(v15 + 16))(v18, a8, v17);
  v24 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v41;
  *(v26 + 2) = a2;
  *(v26 + 3) = v27;
  v29 = v45;
  v28 = v46;
  *(v26 + 4) = a4;
  *(v26 + 5) = v29;
  *(v26 + 6) = v42;
  *(v26 + 7) = v28;
  *(v26 + 8) = v23;
  (*(v15 + 32))(&v26[v24], v18, v36);
  *&v26[v25] = a9;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = v39;

  v32 = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = v37;
  sub_1C4BF9F98(sub_1C4C02358, v26, v44, v30, v31, v32);
}

void sub_1C4C014D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  v62 = a1;
  v63 = a9;
  v61 = a2;
  v16 = sub_1C4EFFEB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C456902C(&qword_1EC0C4988, qword_1C4F5D1D8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v57 - v25);
  if (a3)
  {
    v63 = v10;
    v27 = sub_1C4663244(a4, a5, a3);
    if (!v27)
    {
      v27 = sub_1C4F00F28();
    }

    v28 = v27;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CF8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1C441D828(a4, a5, &v64);
      _os_log_impl(&dword_1C43F8000, v30, v31, "Entity Tagging: Retrieved injected EntityTags for: %s", v32, 0xCu);
      sub_1C440962C(v33);
      MEMORY[0x1C6942830](v33, -1, -1);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    v34 = 0;
  }

  else
  {
    v58 = v17;
    v59 = v24;
    v60 = v23;
    v43 = v26;
    sub_1C4729FCC(a4, a5, a8);
    v63 = v10;
    if (v10)
    {
      v42 = v63;
      goto LABEL_13;
    }

    v57 = a4;
    sub_1C4EFEF58();
    v28 = sub_1C4EFFEA8();
    v58[1](v20, v16);
    v58 = v43;
    v34 = sub_1C4EFEF68();
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CF8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64 = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_1C441D828(v57, a5, &v64);
      *(v55 + 12) = 2048;
      *(v55 + 14) = v34;
      _os_log_impl(&dword_1C43F8000, v53, v54, "Entity Tagging: Computed EntityTags for: %s (Event ID: %lld)", v55, 0x16u);
      sub_1C440962C(v56);
      MEMORY[0x1C6942830](v56, -1, -1);
      MEMORY[0x1C6942830](v55, -1, -1);
    }

    (*(v59 + 8))(v58, v60);
  }

  sub_1C4EFF0A8();
  v35 = sub_1C4F02B98();
  v64 = v34;
  v36 = sub_1C4F02858();
  sub_1C472ACF4(v35, v28, v36, v37, a10, a6);

  v38 = sub_1C4EFF068();
  v40 = sub_1C4C01B48(v38, v39, v28, v34);

  v41 = v63;
  v62(v40);
  if (!v41)
  {

    return;
  }

  v42 = v41;
LABEL_13:
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DF70);
  v45 = v42;
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CE8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v42;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_1C43F8000, v46, v47, "Entity Tagging: Failed to update entity tagging inferences: %@", v48, 0xCu);
    sub_1C4420C3C(v49, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v49, -1, -1);
    MEMORY[0x1C6942830](v48, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C4C01B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F37DE0;
  v9 = MEMORY[0x1E69A0138];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4412800(0x726568746F6DLL);
  v10 = MEMORY[0x1E69E63B0];
  v11 = MEMORY[0x1E69A0168];
  *(v8 + 96) = MEMORY[0x1E69E63B0];
  *(v8 + 104) = v11;
  sub_1C4407ED0();
  *(v8 + 72) = v12;
  sub_1C4412800(0x726568746166);
  *(v8 + 136) = v10;
  *(v8 + 144) = v11;
  sub_1C4407ED0();
  *(v8 + 112) = v13;
  sub_1C4412800(0x746E65726170);
  *(v8 + 176) = v10;
  *(v8 + 184) = v11;
  sub_1C4407ED0();
  *(v8 + 152) = v14;
  sub_1C4412800(0x726574736973);
  *(v8 + 216) = v10;
  *(v8 + 224) = v11;
  sub_1C4407ED0();
  *(v8 + 192) = v15;
  sub_1C4403974(0x726568746F7262);
  *(v8 + 256) = v10;
  *(v8 + 264) = v11;
  sub_1C4407ED0();
  *(v8 + 232) = v16;
  sub_1C4403974(0x676E696C626973);
  *(v8 + 296) = v10;
  *(v8 + 304) = v11;
  sub_1C4407ED0();
  *(v8 + 272) = v17;
  sub_1C4412800(0x796C696D6166);
  *(v8 + 336) = v10;
  *(v8 + 344) = v11;
  sub_1C4407ED0();
  *(v8 + 312) = v18;
  sub_1C4412800(0x646E65697266);
  *(v8 + 376) = v10;
  *(v8 + 384) = v11;
  sub_1C4407ED0();
  *(v8 + 352) = v19;
  sub_1C465C024(0xD000000000000010, 0x80000001C4FB9970, a3);
  *(v8 + 416) = v10;
  *(v8 + 424) = v11;
  sub_1C4407ED0();
  *(v8 + 392) = v20;
  sub_1C4403974(0x72656E74726170);
  *(v8 + 456) = v10;
  *(v8 + 464) = v11;
  sub_1C4407ED0();
  *(v8 + 432) = v21;
  sub_1C465C024(0x72656B726F776F63, 0xE800000000000000, a3);
  *(v8 + 496) = v10;
  *(v8 + 504) = v11;
  sub_1C4407ED0();
  *(v8 + 472) = v22;
  sub_1C4412800(0x696E6D756C61);
  *(v8 + 536) = v10;
  *(v8 + 544) = v11;
  sub_1C4407ED0();
  *(v8 + 512) = v23;
  sub_1C465C024(0x646C696863, 0xE500000000000000, a3);
  *(v8 + 576) = v10;
  *(v8 + 584) = v11;
  sub_1C4407ED0();
  *(v8 + 552) = v24;
  sub_1C465C024(7237491, 0xE300000000000000, a3);
  *(v8 + 616) = v10;
  *(v8 + 624) = v11;
  sub_1C4407ED0();
  *(v8 + 592) = v25;
  sub_1C465C024(0x7265746867756164, 0xE800000000000000, a3);
  *(v8 + 656) = v10;
  *(v8 + 664) = v11;
  sub_1C4407ED0();
  *(v8 + 632) = v26;
  sub_1C4412800(0x666C6573796DLL);
  *(v8 + 696) = v10;
  *(v8 + 704) = v11;
  sub_1C4407ED0();
  *(v8 + 672) = v27;
  sub_1C4403974(0x6E776F6E6B6E75);
  *(v8 + 736) = v10;
  *(v8 + 744) = v11;
  sub_1C4407ED0();
  *(v8 + 712) = v28;
  *(v8 + 776) = MEMORY[0x1E69E7360];
  *(v8 + 784) = MEMORY[0x1E69A01D0];
  *(v8 + 752) = a4;
  return v8;
}

void sub_1C4C01E38(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C4EF98F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v11 = *(*a1 + 16);
  v10 = *(*a1 + 24);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4947740(v11, v10, v12);
  if (v2)
  {
  }

  else
  {
    v30 = v14;
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();

    v31 = v17;
    v18 = v17;
    v19 = v16;
    if (os_log_type_enabled(v16, v18))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      v28 = v20;
      *v20 = 134218242;
      *(v20 + 4) = v30;
      *(v20 + 12) = 2080;
      (*(v5 + 16))(v8, *(v12 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v4);
      sub_1C4490264(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0]);
      v30 = v19;
      v21 = sub_1C4F02858();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = sub_1C441D828(v21, v23, &v32);

      v25 = v28;
      *(v28 + 14) = v24;
      v26 = v30;
      _os_log_impl(&dword_1C43F8000, v30, v31, "Entity Tagging: writing %ld entity tag rows to %s", v25, 0x16u);
      v27 = v29;
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v25, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4C021A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C4C021E4()
{
  sub_1C4C021A4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C0228C()
{
  v1 = sub_1C456902C(&qword_1EC0C4960, &unk_1C4F5CF00);
  sub_1C43FCF7C(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  v12 = *(v0 + 7);
  v13 = v0[8];
  v14 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4C00E48(v7, v8, v9, v10, v11, v12, v13, v0 + v6, v14);
}

void sub_1C4C02358(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1C4EFF0C8();
  sub_1C43FCF7C(v5);
  v8 = (*(v7 + 64) + ((*(v6 + 80) + 72) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1C4C014D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + v8), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_1C4C02434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C0249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &unk_1F43EA260;
  a5[4] = &off_1F43EA350;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C02540(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = (a3 + *(_s6ConfigVMa() + 60));
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    sub_1C442D6CC(v9);
    sub_1C44E9220();
    if (v4)
    {
      return;
    }

    v13 = v12;
    a4[3] = &unk_1F43EA260;
    a4[4] = &off_1F43EA350;
    v14 = swift_allocObject();
    *a4 = v14;
    v14[2] = v11;
    v14[3] = v10;
    v14[4] = v13;
    v14[5] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C450B034();
    v15 = swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    sub_1C441A7D4(v15, v16);
    sub_1C44010A8(v19, v17, v18);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C02670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + *(_s6ConfigVMa() + 60));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v6[2];
    v18 = 0uLL;
    sub_1C44E9220();
    if (!v3)
    {
      v11 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v10);
      v17[2] = v8;
      v17[3] = v7;
      v17[4] = v12;
      v17[5] = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446C37C(sub_1C4C02940, v17);
    }
  }

  else
  {
    sub_1C450B034();
    v13 = swift_allocError();
    *v14 = a1;
    v14[1] = a2;
    sub_1C441A7D4(v13, v14);
    sub_1C44010A8(v18, v15, v16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C027D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a3 + *(_s6ConfigVMa() + 60));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    sub_1C442D6CC(v7);
    sub_1C44E9220();
    if (!v3)
    {
      v11 = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDCF8(v9, v8, v11, v4);
    }
  }

  else
  {
    sub_1C450B034();
    v12 = swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    sub_1C441A7D4(v12, v13);
    sub_1C44010A8(v16, v14, v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C02970()
{
  result = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4C02A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v424 = a3;
  v5 = sub_1C456902C(&qword_1EC0C49A0, &qword_1C4F5D430);
  sub_1C43FFAE0(v5, &v460);
  v460 = v6;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  sub_1C43FCE30(v10);
  v11 = sub_1C456902C(&qword_1EC0C49A8, &qword_1C4F5D438);
  sub_1C43FFAE0(v11, v458);
  v457 = v12;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  sub_1C43FCE30(v16);
  v17 = sub_1C456902C(&qword_1EC0C49B0, &qword_1C4F5D440);
  sub_1C43FFAE0(v17, &v474);
  v456 = v18;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  sub_1C43FCE30(v22);
  v23 = sub_1C456902C(&qword_1EC0C49B8, &qword_1C4F5D448);
  sub_1C43FFAE0(v23, &v472);
  v455 = v24;
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  sub_1C43FCE30(v28);
  v29 = sub_1C456902C(&qword_1EC0C49C0, &qword_1C4F5D450);
  sub_1C43FFAE0(v29, v468);
  v454 = v30;
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  sub_1C43FCE30(v34);
  v35 = sub_1C456902C(&qword_1EC0C49C8, &qword_1C4F5D458);
  sub_1C43FFAE0(v35, &v414);
  v449 = v36;
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  sub_1C43FCE30(v40);
  v41 = sub_1C456902C(&qword_1EC0C49D0, &qword_1C4F5D460);
  sub_1C43FFAE0(v41, &v412);
  v448 = v42;
  v44 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBC74();
  sub_1C43FCE30(v46);
  v47 = sub_1C456902C(&qword_1EC0C49D8, &qword_1C4F5D468);
  sub_1C43FFAE0(v47, &v410);
  v447 = v48;
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  sub_1C43FCE30(v52);
  v53 = sub_1C456902C(&qword_1EC0C49E0, &qword_1C4F5D470);
  sub_1C43FFAE0(v53, &v423);
  v444 = v54;
  v56 = *(v55 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBC74();
  sub_1C43FCE30(v58);
  v59 = sub_1C456902C(&qword_1EC0C49E8, &qword_1C4F5D478);
  sub_1C43FFAE0(v59, v421);
  v442 = v60;
  v62 = *(v61 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBC74();
  sub_1C43FCE30(v64);
  v65 = sub_1C456902C(&qword_1EC0C49F0, &qword_1C4F5D480);
  sub_1C43FFAE0(v65, v419);
  v441 = v66;
  v68 = *(v67 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBC74();
  sub_1C43FCE30(v70);
  v71 = sub_1C456902C(&qword_1EC0C49F8, &qword_1C4F5D488);
  sub_1C43FFAE0(v71, &v427);
  v438 = v72;
  v74 = *(v73 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBC74();
  sub_1C43FCE30(v76);
  v77 = sub_1C456902C(&qword_1EC0C4A00, &qword_1C4F5D490);
  sub_1C43FFAE0(v77, &v435);
  v436 = v78;
  v80 = *(v79 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBC74();
  sub_1C43FCE30(v82);
  v83 = sub_1C456902C(&qword_1EC0C4A08, &qword_1C4F5D498);
  sub_1C43FFAE0(v83, v433);
  v435 = v84;
  v86 = *(v85 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBC74();
  sub_1C43FCE30(v88);
  v89 = sub_1C456902C(&qword_1EC0C4A10, &qword_1C4F5D4A0);
  sub_1C43FFAE0(v89, &v438);
  v427 = v90;
  v92 = *(v91 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBC74();
  sub_1C43FCE30(v94);
  v95 = sub_1C456902C(&qword_1EC0C4A18, &qword_1C4F5D4A8);
  sub_1C43FFAE0(v95, &v477);
  v426 = v96;
  v98 = *(v97 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FBC74();
  sub_1C43FCE30(v100);
  v101 = sub_1C456902C(&qword_1EC0C4A20, &qword_1C4F5D4B0);
  sub_1C43FFAE0(v101, v450);
  v425 = v102;
  v104 = *(v103 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v105);
  sub_1C43FBC74();
  sub_1C43FCE30(v106);
  v107 = sub_1C456902C(&qword_1EC0C4A28, &qword_1C4F5D4B8);
  sub_1C43FFAE0(v107, &v448);
  v417 = v108;
  v110 = *(v109 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v111);
  sub_1C43FBC74();
  sub_1C43FCE30(v112);
  v113 = sub_1C456902C(&qword_1EC0C4A30, &qword_1C4F5D4C0);
  sub_1C43FFAE0(v113, v463);
  v432 = v114;
  v116 = *(v115 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v117);
  sub_1C43FBC74();
  sub_1C43FCE30(v118);
  v119 = sub_1C456902C(&qword_1EC0C4A38, &qword_1C4F5D4C8);
  sub_1C43FFAE0(v119, &v408);
  v418 = v120;
  v122 = *(v121 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v123);
  sub_1C43FBC74();
  sub_1C43FCE30(v124);
  v453 = sub_1C456902C(&qword_1EC0C4A40, &qword_1C4F5D4D0);
  v125 = sub_1C43FCDF8(v453);
  *&v400 = v126;
  v128 = *(v127 + 64);
  v129 = MEMORY[0x1EEE9AC00](v125);
  v428 = v399 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129);
  v452 = v399 - v131;
  v451 = sub_1C456902C(&qword_1EC0C4A48, &qword_1C4F5D4D8);
  sub_1C43FCDF8(v451);
  v399[25] = v132;
  v134 = *(v133 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBC74();
  sub_1C43FCE30(v136);
  v137 = sub_1C456902C(&qword_1EC0C4A50, &qword_1C4F5D4E0);
  sub_1C43FFAE0(v137, &v441);
  v408 = v138;
  v140 = *(v139 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v141);
  sub_1C43FBC74();
  sub_1C43FCE30(v142);
  v143 = sub_1C456902C(&qword_1EC0C4A58, &qword_1C4F5D4E8);
  sub_1C43FCDF8(v143);
  v145 = v144;
  v147 = *(v146 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v148);
  v150 = v399 - v149;
  v151 = swift_allocObject();
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v152 = MEMORY[0x1E69E7CC0];
  v153 = sub_1C4F00F28();
  v413 = v151;
  *(v151 + 16) = v153;
  v399[21] = v151 + 16;
  v412 = v152;
  v473 = v152;
  v154 = sub_1C456902C(&qword_1EC0C4A60, &qword_1C4F5D4F0);
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();
  v467 = sub_1C4F00C08();
  v157 = v467;
  sub_1C4401CBC(&qword_1EC0C4A68, &qword_1EC0C4A60, &qword_1C4F5D4F0);
  sub_1C4F00C48();
  sub_1C4401CBC(&qword_1EC0C4A70, &qword_1EC0C4A58, &qword_1C4F5D4E8);
  v158 = sub_1C4F00C18();
  (*(v145 + 8))(v150, v143);
  v160 = v424 + 64;
  v159 = *(v424 + 64);
  v161 = 1 << *(v424 + 32);
  v162 = -1;
  v163 = v158;
  v470 = v158;
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  v437 = v162 & v159;
  v423 = (v161 + 63) >> 6;
  sub_1C4405EAC(&v461);
  v432 = v164;
  sub_1C4405EAC(v446);
  v399[3] = v165;
  sub_1C4405EAC(&v480);
  v399[2] = v166;
  sub_1C4405EAC(&v479);
  v399[1] = v167;
  sub_1C4405EAC(&v478);
  v399[0] = v168;
  sub_1C4405EAC(&v475);
  v399[14] = v169;
  sub_1C4405EAC(&v470);
  v399[13] = v170;
  sub_1C4405EAC(v469);
  v399[12] = v171;
  sub_1C4405EAC(v439);
  v408 = v172;
  sub_1C4405EAC(v466);
  v399[22] = v173;
  sub_1C4405EAC(&v465);
  v402 = v174;
  sub_1C4405EAC(&v464);
  v401 = v175;
  sub_1C4405EAC(&v454);
  v444 = v176;
  sub_1C4405EAC(&v453);
  v418 = v177;
  sub_1C4405EAC(&v445);
  v417 = v178;
  sub_1C4405EAC(&v455);
  v405 = v179;
  sub_1C4405EAC(v429);
  v449 = v180;
  sub_1C4405EAC(&v428);
  v448 = v181;
  v427 = v460 + 8;
  v426 = v457 + 8;
  v442 = v456 + 8;
  v441 = v455 + 8;
  v438 = v454 + 8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v182 = 0;
  *&v183 = 136315650;
  v400 = v183;
  v415 = a4;
  v414 = v157;
  v416 = v160;
LABEL_4:
  v184 = v182;
  v185 = v423;
  while (1)
  {
    v186 = v437;
    if (!v437)
    {
      break;
    }

    v187 = v184;
LABEL_10:
    v437 = (v186 - 1) & v186;
    v436 = v187;
    v188 = __clz(__rbit64(v186)) | (v187 << 6);
    v189 = *(v424 + 56);
    v190 = (*(v424 + 48) + 16 * v188);
    v191 = v190[1];
    v425 = *v190;
    v456 = *(v189 + 8 * v188);
    v455 = *(v456 + 16);
    v435 = v191;
    if (!v455)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_76:
      v461 = v163;
      sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
      sub_1C441A7EC();
      sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500);
      sub_1C444B340();
      sub_1C4F00CB8();
      sub_1C4418B14();
      v391 = swift_allocObject();
      v392 = v425;
      v391[2] = v413;
      v391[3] = v392;
      v391[4] = v435;
      sub_1C441E79C();
      sub_1C4401CBC(&qword_1EC0C4AA8, &qword_1EC0C4A50, &qword_1C4F5D4E0);

      v393 = v410;
      sub_1C4F00D28();

      v394 = sub_1C4412818(v439);
      v396 = v395(v394, v393);
      v158 = &v473;
      MEMORY[0x1C6940330](v396);
      if (*((v473 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v473 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v412 = v473;
      v160 = v416;
      v182 = v436;
      goto LABEL_4;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v192 = v456;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_beginAccess();
    v193 = 0;
    v194 = (v192 + 56);
    while (2)
    {
      if (v193 >= *(v456 + 16))
      {
        __break(1u);
        goto LABEL_85;
      }

      v195 = *(v194 - 3);
      v196 = *(v194 - 2);
      v197 = *(v194 - 1);
      ++v193;
      v198 = *v194;
      switch(*v194)
      {
        case 1:
          v460 = v163;
          v461 = v163;
          sub_1C44042C4();
          v204 = swift_allocObject();
          v204[2] = v195;
          v204[3] = v196;
          v278 = sub_1C44047DC();
          sub_1C49F1884(v278, v279, v280, 1u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v281 = sub_1C4426ECC();
          v282 = sub_1C456902C(v281, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          v283 = MEMORY[0x1E69E7CA0];
          sub_1C441F004();
          sub_1C4F00C28();

          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C44139F8(&v481);
          sub_1C440C798();
          v284 = sub_1C4412818(&v480);
          v285(v284, v283);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v282;
          sub_1C4F00C18();
          v286 = sub_1C440E8F0();
          v289 = 1;
          goto LABEL_48;
        case 2:
          v460 = v163;
          v461 = v163;
          sub_1C44042C4();
          v204 = swift_allocObject();
          v204[2] = v195;
          v204[3] = v196;
          v242 = sub_1C44047DC();
          sub_1C49F1884(v242, v243, v244, 2u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v158 = &qword_1EC0C4A88;
          v245 = sub_1C4426ECC();
          v207 = sub_1C456902C(v245, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          sub_1C441066C();
          v454 = v193;
          sub_1C441F004();
          sub_1C4F00CD8();

          sub_1C440398C();
          sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440);
          sub_1C440924C(v471);
          sub_1C4430274();
          sub_1C4F00C28();
          v246 = sub_1C4412818(&v470);
          v247(v246, v204);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448);
          sub_1C43FF778(&v467);
          sub_1C44366E0();
          v248 = sub_1C440FD84(v469);
          v249(v248, v207);
          sub_1C4401CBC(&qword_1EC0C4AD0, &qword_1EC0C49C0, &qword_1C4F5D450);
          sub_1C4402568();
          v250 = sub_1C440E8F0();
          v253 = 2;
          goto LABEL_33;
        case 3:
          v460 = v163;
          v461 = v163;
          sub_1C44042C4();
          v204 = swift_allocObject();
          v204[2] = v195;
          v204[3] = v196;
          v254 = sub_1C44047DC();
          sub_1C49F1884(v254, v255, v256, 3u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v158 = &qword_1EC0C4A88;
          v257 = sub_1C4426ECC();
          v207 = sub_1C456902C(v257, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          sub_1C441066C();
          v454 = v193;
          sub_1C441F004();
          sub_1C4F00CD8();

          sub_1C440398C();
          sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440);
          sub_1C440924C(v471);
          sub_1C4430274();
          sub_1C4F00C28();
          v258 = sub_1C4412818(&v470);
          v259(v258, v204);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448);
          sub_1C43FF778(&v467);
          sub_1C44366E0();
          v260 = sub_1C440FD84(v469);
          v261(v260, v207);
          sub_1C4401CBC(&qword_1EC0C4AD0, &qword_1EC0C49C0, &qword_1C4F5D450);
          sub_1C4402568();
          v250 = sub_1C440E8F0();
          v253 = 3;
LABEL_33:
          sub_1C49F181C(v250, v251, v252, v253);
          v211 = sub_1C4412818(v466);
          v193 = v454;
          goto LABEL_34;
        case 4:
          v213 = *(v194 - 2);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4AB0, &qword_1C4F5D508);
          v214 = sub_1C4F00F28();
          sub_1C4441298(v214);
          if (!v215)
          {
            goto LABEL_67;
          }

          v216 = sub_1C4404A98();
          v218 = sub_1C445FAA8(v216, v217);
          if ((v219 & 1) == 0)
          {
            goto LABEL_67;
          }

          sub_1C4415D48(v218);

          sub_1C44042C4();
          v220 = swift_allocObject();
          sub_1C44164A8(v220);
          v221 = sub_1C4426ECC();
          sub_1C456902C(v221, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          sub_1C441066C();
          v222 = v197;
          v447 = v197;
          sub_1C440924C(&v457);
          sub_1C4F00C28();
          v223 = swift_allocObject();
          *(v223 + 16) = sub_1C4C072C0;
          *(v223 + 24) = v198;
          *(v223 + 32) = v197;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          sub_1C440C010();
          sub_1C4433E30();

          v224 = sub_1C440FD84(&v454);
          v225(v224, v193);
          v226 = MEMORY[0x1E69E7CA0];
          sub_1C440DA44();
          sub_1C4F00AA8();
          v227 = sub_1C44179B0(&v475);
          v228(v227);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C440924C(&v481);
          sub_1C440C798();
          v229 = sub_1C4412818(&v480);
          v193 = v163;
          v230(v229, v222);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v226;
          sub_1C4F00C18();
          v231 = sub_1C4405418();
          v234 = 4;
          goto LABEL_45;
        case 5:
          v290 = *(v194 - 2);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4AB8, &qword_1C4F5D510);
          v291 = sub_1C4F00F28();
          sub_1C4441298(v291);
          if (!v292)
          {
            goto LABEL_67;
          }

          v293 = sub_1C4404A98();
          v295 = sub_1C445FAA8(v293, v294);
          if ((v296 & 1) == 0)
          {
            goto LABEL_67;
          }

          sub_1C4415D48(v295);

          sub_1C44042C4();
          v297 = swift_allocObject();
          sub_1C44164A8(v297);
          v298 = sub_1C4426ECC();
          sub_1C456902C(v298, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          sub_1C441066C();
          sub_1C440924C(v462);
          sub_1C4F00C28();
          sub_1C4418B14();
          v204 = swift_allocObject();
          v204[2] = sub_1C4C072D4;
          v204[3] = v198;
          v204[4] = v197;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          v454 = v193;
          v299 = v445;
          v300 = v434;
          sub_1C4F00AA8();

          v301 = sub_1C440FD84(&v461);
          v302(v301, v300);
          sub_1C4430274();
          sub_1C4F00AA8();
          v303 = sub_1C4412818(&v475);
          v304(v303, v204);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C43FF778(&v481);
          v283 = v453;
          sub_1C4F00C28();
          v305 = sub_1C440FD84(&v480);
          v306(v305, v283);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v299;
          sub_1C4F00C18();
          v307 = sub_1C440E8F0();
          sub_1C49F181C(v307, v308, v309, 5u);

          v211 = sub_1C4412818(&v479);
          v193 = v454;
          goto LABEL_49;
        case 6:
          v310 = *(v194 - 2);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C456902C(&qword_1EC0C4A78, &qword_1C4F5D4F8);
          v311 = sub_1C4F00F28();
          sub_1C4441298(v311);
          if (!v312 || (v313 = sub_1C4404A98(), v315 = sub_1C445FAA8(v313, v314), (v316 & 1) == 0))
          {
LABEL_67:

            sub_1C4C0724C();
            v372 = swift_allocError();
            *v373 = 2;
            goto LABEL_70;
          }

          sub_1C4415D48(v315);

          sub_1C44042C4();
          v317 = swift_allocObject();
          sub_1C44164A8(v317);
          v318 = sub_1C4426ECC();
          sub_1C456902C(v318, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          sub_1C441066C();
          v222 = v197;
          v447 = v197;
          sub_1C440924C(v459);
          sub_1C4F00C28();
          sub_1C4418B14();
          v319 = swift_allocObject();
          v319[2] = sub_1C4C072A0;
          v319[3] = v198;
          v319[4] = v197;
          sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);

          sub_1C440C010();
          sub_1C4433E30();

          v320 = sub_1C440FD84(&v455);
          v321(v320, v193);
          v322 = MEMORY[0x1E69E7CA0];
          sub_1C440DA44();
          sub_1C4F00AA8();
          v323 = sub_1C44179B0(&v475);
          v324(v323);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C440924C(&v481);
          sub_1C440C798();
          v325 = sub_1C4412818(&v480);
          v193 = v163;
          v326(v325, v222);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v322;
          sub_1C4F00C18();
          v231 = sub_1C4405418();
          v234 = 6;
LABEL_45:
          sub_1C49F181C(v231, v232, v233, v234);

          v276 = sub_1C440FD84(&v479);
          goto LABEL_46;
        case 7:
          type metadata accessor for MLMultiArrayDataType(0);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v263 = sub_1C4F00F28();
          sub_1C4441298(v263);
          if (!v264 || (v265 = sub_1C445FAA8(v196, v197), (v266 & 1) == 0))
          {

            sub_1C4C0724C();
            v372 = swift_allocError();
            *v374 = 1;
            goto LABEL_70;
          }

          v267 = *(v158[7] + 8 * v265);

          v460 = v163;
          v461 = v163;
          sub_1C44042C4();
          v268 = swift_allocObject();
          *(v268 + 16) = v195;
          *(v268 + 24) = v267;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v269 = sub_1C4426ECC();
          sub_1C456902C(v269, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          v454 = v193;
          v270 = v428;
          sub_1C441F004();
          sub_1C4F00C28();

          v447 = v197;
          v271 = v452;
          v222 = v453;
          sub_1C4F00AA8();
          v163 = v449;
          v272 = *v449;
          (*v449)(v270, v222);
          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C43FF778(&v481);
          sub_1C4F00C28();
          v272(v271, v222);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v270;
          sub_1C4F00C18();
          v273 = sub_1C4405418();
          sub_1C49F181C(v273, v274, v275, 7u);
          v276 = sub_1C4412818(&v479);
          v193 = v454;
LABEL_46:
          v277(v276, v222);

          v470 = v163;
          goto LABEL_52;
        case 8:
          v460 = v163;
          v461 = v163;
          v204 = swift_allocObject();
          v204[2] = v195;
          v327 = sub_1C44047DC();
          sub_1C49F1884(v327, v328, v329, 8u);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v330 = sub_1C4426ECC();
          v331 = sub_1C456902C(v330, &qword_1C4F5D500);
          sub_1C441A7EC();
          sub_1C4450050(&qword_1EC0C4A90);
          v283 = MEMORY[0x1E69E7CA0];
          sub_1C441F004();
          sub_1C4F00C28();

          sub_1C4407EDC();
          sub_1C4401CBC(&qword_1EC0C4A98, &qword_1EC0C4A40, &qword_1C4F5D4D0);
          sub_1C442068C();
          sub_1C44139F8(&v481);
          sub_1C440C798();
          v332 = sub_1C4412818(&v480);
          v333(v332, v283);
          sub_1C4401CBC(&qword_1EC0C4AA0, &qword_1EC0C4A48, &qword_1C4F5D4D8);
          sub_1C43FCA34();
          v158 = v331;
          sub_1C4F00C18();
          v286 = sub_1C440E8F0();
          v289 = 8;
LABEL_48:
          sub_1C49F181C(v286, v287, v288, v289);
          v211 = sub_1C4433940(&v479);
LABEL_49:
          v262 = v283;
          goto LABEL_50;
        case 9:
          v235 = v197 | v196;
          if (!(v197 | v196 | v195))
          {
            v461 = v163;
            v334 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            v238 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441066C();
            sub_1C44139F8(&v476);
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B20, &qword_1EC0C4A18, &qword_1C4F5D4A8);
            sub_1C43FF778(&v449);
            sub_1C442E614();
            sub_1C4F00C68();
            v335 = sub_1C4433940(&v475);
            v336(v335, v334);
            sub_1C4415024();
            sub_1C4401CBC(&qword_1EC0C4B28, &qword_1EC0C4A20, &qword_1C4F5D4B0);
            sub_1C44139F8(&v447);
            sub_1C4430274();
            sub_1C4F00C28();
            v337 = sub_1C4412818(v446);
            v338(v337, v334);
            sub_1C4401CBC(&qword_1EC0C4B30, &qword_1EC0C4A28, &qword_1C4F5D4B8);
            sub_1C440D248(&v448);
            v158 = &qword_1C4F5D500;
            v204 = sub_1C4F00C18();
            v241 = &v445;
LABEL_57:
            v349 = sub_1C4433940(v241);
LABEL_58:
            v350(v349, v238);
            goto LABEL_51;
          }

          if (v195 == 1 && v235 == 0)
          {
            v461 = v163;
            v339 = sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            v238 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441066C();
            sub_1C44139F8(&v476);
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B20, &qword_1EC0C4A18, &qword_1C4F5D4A8);
            sub_1C43FF778(&v449);
            sub_1C442E614();
            sub_1C4F00C58();
            v340 = sub_1C4433940(&v475);
            v341(v340, v339);
            sub_1C4415024();
            sub_1C4401CBC(&qword_1EC0C4B28, &qword_1EC0C4A20, &qword_1C4F5D4B0);
            v342 = MEMORY[0x1E69E7CA0];
            sub_1C440924C(&v447);
            sub_1C4430274();
            sub_1C4F00C28();
            v343 = sub_1C4412818(v446);
            v344(v343, v339);
            sub_1C4401CBC(&qword_1EC0C4B30, &qword_1EC0C4A28, &qword_1C4F5D4B8);
            sub_1C44139F8(&v437);
            sub_1C442E614();
            sub_1C4F00C28();
            v345 = sub_1C440FD84(&v445);
            v346(v345, v339);
            sub_1C4401CBC(&qword_1EC0C4B38, &qword_1EC0C4A10, &qword_1C4F5D4A0);
            sub_1C440D248(&v438);
            v158 = v342;
            v204 = sub_1C4F00C18();
            v241 = &v436;
            goto LABEL_57;
          }

          if (v195 == 2 && v235 == 0)
          {
            v461 = v163;
            v238 = &qword_1C4F5D500;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90);
            sub_1C444B340();
            sub_1C4425500(&v434);
            sub_1C4F00C78();
            sub_1C4401CBC(&qword_1EC0C4B10, &qword_1EC0C4A00, &qword_1C4F5D490);
            sub_1C44139F8(&v432);
            sub_1C4426148();
            sub_1C4F00C28();
            v347 = sub_1C44179B0(v431);
            v348(v347);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4B18, &qword_1EC0C4A08, &qword_1C4F5D498);
            sub_1C440D248(v433);
            v158 = v198;
            v204 = sub_1C4F00C18();
            v241 = &v430;
            goto LABEL_57;
          }

          if (v195 == 3 && !v235)
          {
            v461 = v163;
            v238 = &qword_1C4F5D500;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90);
            sub_1C444B340();
            sub_1C4425500(v440);
            sub_1C4F00CB8();
            sub_1C441E79C();
            sub_1C4401CBC(&qword_1EC0C4AA8, &qword_1EC0C4A50, &qword_1C4F5D4E0);
            sub_1C44139F8(&v426);
            sub_1C4426148();
            sub_1C4F00C28();
            v239 = sub_1C44179B0(v439);
            v240(v239);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4B08, &qword_1EC0C49F8, &qword_1C4F5D488);
            sub_1C440D248(&v427);
            v158 = v198;
            v204 = sub_1C4F00C18();
            v241 = &v425;
            goto LABEL_57;
          }

          if (v195 == 4 && !v235)
          {
            v461 = v163;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90);
            sub_1C444B340();
            sub_1C4425500(v422);
            sub_1C4F00CE8();
            sub_1C4401CBC(&qword_1EC0C4AF0, &qword_1EC0C49E0, &qword_1C4F5D470);
            v351 = v193;
            v352 = MEMORY[0x1E69E7CA0];
            sub_1C44139F8(v420);
            sub_1C4426148();
            sub_1C4F00C28();
            v353 = sub_1C44179B0(&v417);
            v354(v353);
            sub_1C4407EDC();
            sub_1C4401CBC(&qword_1EC0C4AF8, &qword_1EC0C49E8, &qword_1C4F5D478);
            sub_1C43FF778(&v418);
            v238 = v399[18];
            sub_1C4F00C28();
            v355 = sub_1C4433940(&v416);
            v356(v355, v238);
            sub_1C4401CBC(&qword_1EC0C4B00, &qword_1EC0C49F0, &qword_1C4F5D480);
            sub_1C440D248(v419);
            v158 = v352;
            v204 = sub_1C4F00C18();
            v349 = sub_1C4412818(&v415);
            v193 = v351;
            goto LABEL_58;
          }

          v357 = v193;
          if (v195 != 5 || v235)
          {
            v461 = v163;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4401CBC(&qword_1EC0C4A90, &qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441066C();
            sub_1C44139F8(v462);
            sub_1C4F00C28();
            sub_1C43FE04C();
            sub_1C4401CBC(&qword_1EC0C4B40, &qword_1EC0C4A30, &qword_1C4F5D4C0);
            sub_1C43FF778(v407);
            sub_1C442E614();
            sub_1C4F00C28();
            v367 = sub_1C4433940(&v461);
            v368(v367, &qword_1EC0C4A88);
            sub_1C4401CBC(&qword_1EC0C4B48, &qword_1EC0C4A38, &qword_1C4F5D4C8);
            v369 = v399[5];
            v158 = sub_1C4F00C18();
            v370 = sub_1C4412818(v406);
            v371(v370, v369);

            v470 = v158;
            v163 = v158;
          }

          else
          {
            v461 = v163;
            sub_1C456902C(&qword_1EC0C4A88, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90);
            sub_1C444B340();
            sub_1C4425500(&v413);
            sub_1C4F00CA8();
            sub_1C4401CBC(&qword_1EC0C4AD8, &qword_1EC0C49C8, &qword_1C4F5D458);
            v358 = MEMORY[0x1E69E7CA0];
            sub_1C44139F8(&v411);
            sub_1C4426148();
            sub_1C4F00C28();
            v359 = sub_1C44179B0(&v405);
            v360(v359);
            sub_1C4407EDC();
            sub_1C4401CBC(&qword_1EC0C4AE0, &qword_1EC0C49D0, &qword_1C4F5D460);
            sub_1C43FF778(v409);
            v361 = v399[9];
            sub_1C4F00C28();
            v362 = sub_1C4433940(v404);
            v363(v362, v361);
            sub_1C4401CBC(&qword_1EC0C4AE8, &qword_1EC0C49D8, &qword_1C4F5D468);
            sub_1C440D248(&v410);
            v158 = v358;
            v364 = sub_1C4F00C18();
            v365 = sub_1C4412818(v403);
            v366(v365, v361);

            v470 = v364;
            v163 = v364;
          }

          v193 = v357;
          goto LABEL_52;
        default:
          v199 = *(v194 - 2);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4404A98();
          v200 = sub_1C4F01108();
          v201 = NSClassFromString(v200);

          if (v201)
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v460 = v163;
            v461 = v163;
            *(swift_allocObject() + 16) = ObjCClassMetadata;
            v203 = sub_1C4426ECC();
            v204 = sub_1C456902C(v203, &qword_1C4F5D500);
            sub_1C441A7EC();
            sub_1C4450050(&qword_1EC0C4A90);
            sub_1C441066C();
            sub_1C4F00CD8();

            sub_1C440398C();
            sub_1C4401CBC(&qword_1EC0C4AC0, &qword_1EC0C49B0, &qword_1C4F5D440);
            sub_1C440924C(v471);
            sub_1C4430274();
            sub_1C4F00C28();
            v205 = sub_1C4412818(&v470);
            v206(v205, v204);
            sub_1C4432CC4();
            sub_1C4401CBC(&qword_1EC0C4AC8, &qword_1EC0C49B8, &qword_1C4F5D448);
            v207 = v443;
            v158 = v197;
            sub_1C4F00C18();
            v208 = sub_1C440E8F0();
            sub_1C49F181C(v208, v209, v210, 0);
            v211 = sub_1C440FD84(v469);
LABEL_34:
            v262 = v207;
LABEL_50:
            v212(v211, v262);
LABEL_51:

            v470 = v204;
            v163 = v204;
LABEL_52:
            v194 += 32;
            if (v455 == v193)
            {

              a4 = v415;
              v157 = v414;
              goto LABEL_76;
            }

            continue;
          }

          sub_1C4C0724C();
          v372 = swift_allocError();
          *v375 = 0;
LABEL_70:
          swift_willThrow();
          v411 = 0;
          v376 = sub_1C44047DC();
          sub_1C49F181C(v376, v377, v378, v198);
          v379 = v415;
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v380 = sub_1C4F00978();
          v158 = sub_1C442B738(v380, qword_1EDE2DF70);
          v381 = v435;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v382 = v372;
          v383 = sub_1C4F00968();
          v384 = sub_1C4F01CD8();

          if (os_log_type_enabled(v383, v384))
          {
            v385 = swift_slowAlloc();
            v460 = v163;
            v386 = v385;
            v461 = swift_slowAlloc();
            *v386 = v400;
            v387 = v425;
            *(v386 + 4) = sub_1C441D828(v425, v381, &v461);
            *(v386 + 12) = 2080;
            v388 = sub_1C441D828(v387, v381, &v461);

            *(v386 + 14) = v388;
            *(v386 + 22) = 2080;
            swift_getErrorValue();
            v389 = sub_1C4F02A38();
            v158 = sub_1C441D828(v389, v390, &v461);

            *(v386 + 24) = v158;
            _os_log_impl(&dword_1C43F8000, v383, v384, "SignalPipelineProcessor %s: invalid pipeline for feature %s: %s", v386, 0x20u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            v163 = v460;
            sub_1C43FBE2C();
          }

          else
          {
          }

          v184 = v436;
          v160 = v416;
          v185 = v423;
          a4 = v379;
          v157 = v414;
          break;
      }

      break;
    }
  }

  while (1)
  {
    v187 = v184 + 1;
    if (__OFADD__(v184, 1))
    {
      break;
    }

    if (v187 >= v185)
    {

      v397 = v411;
      sub_1C463ED24(v157, a4);
      if (v397)
      {
      }

      else
      {

        swift_beginAccess();
        v398 = *(v413 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      return;
    }

    v186 = *(v160 + 8 * v187);
    ++v184;
    if (v186)
    {
      goto LABEL_10;
    }
  }

LABEL_85:
  __break(1u);
}

uint64_t sub_1C4C059D4()
{
  v1 = qword_1EC0C4998;
  if (*(v0 + qword_1EC0C4998))
  {
    v2 = *(v0 + qword_1EC0C4998);
  }

  else
  {
    v3 = [*(v0 + qword_1EC152D20) featureNames];
    v2 = sub_1C4F01AB8();

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4C05A74()
{
  v1 = v0;
  v2 = *v0;
  v54[0] = *(v0 + qword_1EC152D20);
  v3 = (*(*(v2 + 88) + 16))(*(v2 + 80));
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  v5 = &unk_1C4F0C000;
  v6 = &qword_1EC151FF8[1];
  if (!*(v3 + 16))
  {
    if (qword_1EDDFECD0 != -1)
    {
LABEL_36:
      sub_1C4400FC0();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DF70);

    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54[0] = v11;
      *v10 = *(v5 + 3664);
      *(v10 + 4) = sub_1C441D828(*(v1 + v6[419]), *(v1 + v6[419] + 8), v54);
      _os_log_impl(&dword_1C43F8000, v8, v9, "SignalView %s: Could not generate requested features", v10, 0xCu);
      sub_1C440962C(v11);
      p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  v12 = v3 + 64;
  v13 = 1 << *(v3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v5 = v14 & *(v3 + 64);
  v52 = v1 + v6[419];
  v6 = ((v13 + 63) >> 6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v53 = v3 + 64;
  v51 = v1;
  v55 = v3;
LABEL_9:
  v16 = v15;
  if (!v5)
  {
    goto LABEL_11;
  }

  do
  {
    v15 = v16;
LABEL_14:
    v17 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v18 = (*(v3 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v3 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v21)
    {
      v22 = sub_1C4404A98();
      v24 = sub_1C445FAA8(v22, v23);
      if (v25)
      {
        v34 = *(*(v3 + 56) + 8 * v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v50 + 16);
          sub_1C458B504();
          v50 = v38;
        }

        v35 = *(v50 + 16);
        if (v35 >= *(v50 + 24) >> 1)
        {
          sub_1C458B504();
          v50 = v39;
        }

        *(v50 + 16) = v35 + 1;
        v36 = (v50 + 40 * v35);
        v36[4] = v19;
        v36[5] = v20;
        v36[6] = 0;
        v36[7] = 0;
        v36[8] = v34;
        p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
        v3 = v55;
        v12 = v53;
        goto LABEL_9;
      }
    }

    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DF70);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1C441D828(*v52, *(v52 + 1), v54);
      *(v29 + 12) = 2080;
      v30 = sub_1C4404A98();
      v33 = sub_1C441D828(v30, v31, v32);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_1C43F8000, v27, v28, "SignalView %s: Could not generate requested feature %s", v29, 0x16u);
      swift_arrayDestroy();
      p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
      sub_1C43FBE2C();
      v1 = v51;
      sub_1C43FBE2C();
    }

    else
    {
    }

    v16 = v15;
    v3 = v55;
    v12 = v53;
  }

  while (v5);
  while (1)
  {
LABEL_11:
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v15 >= v6)
    {
      break;
    }

    v5 = *(v12 + 8 * v15);
    ++v16;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v40 = v1[3];
  v41 = v1[4];
  v42 = v1[5];
  v43 = v1[6];
  v54[0] = v1[2];
  v54[1] = v40;
  v54[2] = v41;
  v54[3] = v42;
  v54[4] = v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C47D32C8();
  if (v49)
  {
  }

  else
  {

    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDE2DF70);

    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CB8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1C441D828(*v52, *(v52 + 1), v54);
      _os_log_impl(&dword_1C43F8000, v45, v46, "SignalView %s: Wrote features", v47, 0xCu);
      sub_1C440962C(v48);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }
}

void *sub_1C4C06088()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + qword_1EC152D18);
  v4 = *(v0 + qword_1EC152D20);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_1EC0C4998);

  return v0;
}

uint64_t sub_1C4C060FC()
{
  sub_1C4C06088();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C061A8()
{
  sub_1C4C05A74();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C4C06220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[3] = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *a2 = a1;

  return a1;
}

uint64_t sub_1C4C06294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = MEMORY[0x1E69E7CA0] + 8;
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_1C442B870(a1, v4 + 16);
}

id sub_1C4C062F8(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  v1 = sub_1C4F02918();
  v2 = [v1 isKindOfClass_];
  swift_unknownObjectRelease();
  return v2;
}

double sub_1C4C0635C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  v3 = sub_1C4F02918();
  v4 = sub_1C4F01108();
  v5 = [v3 valueForKeyPath_];

  swift_unknownObjectRelease();
  if (v5)
  {
    sub_1C4F02078();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C4C0641C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v24 = a2;
  result = sub_1C442B870(a1, a3);
  if (a2[2])
  {
    v7 = a2[4];
    v6 = a2[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C076A8();
    v8 = v24;
    if (v24[2])
    {
      v9 = &qword_1EC0B84C0;
      v10 = MEMORY[0x1E69E7CA0];
      while (1)
      {
        sub_1C44600A0(a3, &v22, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if (!*(&v23 + 1))
        {
          break;
        }

        sub_1C456902C(v9, &qword_1C4F0DD00);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_11;
        }

        if (!*(v21 + 16))
        {

LABEL_11:

          v16 = a3;
LABEL_12:
          result = sub_1C4423A0C(v16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v22 = 0u;
          v23 = 0u;
          goto LABEL_13;
        }

        v11 = v9;
        v12 = v10;
        v13 = sub_1C445FAA8(v7, v6);
        v15 = v14;

        if (v15)
        {
          sub_1C442B870(*(v21 + 56) + 32 * v13, &v22);
          sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        else
        {

          result = sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          v22 = 0u;
          v23 = 0u;
        }

        v10 = v12;
        v9 = v11;
LABEL_13:
        v17 = v23;
        *a3 = v22;
        a3[1] = v17;
        v18 = v8[2];
        if (!v18)
        {
          __break(1u);
          goto LABEL_25;
        }

        v7 = v8[4];
        v6 = v8[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_isUniquelyReferenced_nonNull_native() || (v18 - 1) > v8[3] >> 1)
        {
          sub_1C443D664();
          v8 = v19;
        }

        sub_1C4471348((v8 + 4));
        v20 = v8[2];
        memmove(v8 + 4, v8 + 6, 16 * v20 - 16);
        v8[2] = v20 - 1;
        if (v20 == 1)
        {
        }
      }

      sub_1C4423A0C(a3, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v16 = &v22;
      goto LABEL_12;
    }
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C066C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C442B870(a1, v18);
  if (swift_dynamicCast())
  {
    sub_1C440BAA8(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    sub_1C4EF9AD8();
    v14 = v13;
    result = (*(v9 + 8))(v12, v8);
    v16 = 0;
    *a2 = v14;
  }

  else
  {
    sub_1C440BAA8(v7, 1, 1, v8);
    sub_1C4423A0C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C442B870(a1, v18);
    result = swift_dynamicCast();
    if (result)
    {
      result = sub_1C49F2108(v17[0], v17[1]);
      *a2 = result;
    }

    else
    {
      v16 = 0;
      *a2 = 0;
    }
  }

  *(a2 + 8) = v16 & 1;
  return result;
}

uint64_t sub_1C4C068E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C442B870(a1, &v4);
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1C4C06950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
  *a2 = v3;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4C069A4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[3] = MEMORY[0x1E69E6530];
  *a2 = v2;
  return result;
}

uint64_t sub_1C4C069BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02438();
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3 == 0xE000000000000000;
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C4F02938();
  }

  return v6 & 1;
}

uint64_t sub_1C4C06A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02438();
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3 == 0xE000000000000000;
  }

  if (v5)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1C4F02938();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1C4C06B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C442B870(a1, v24);
  sub_1C456902C(&qword_1EC0C4B50, &qword_1C4F5D518);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  result = sub_1C4428DA0();
  v8 = result;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (a2 + 32);
    v12 = 1;
    do
    {
      v13 = v11[v10];
      v14 = v12 * v13;
      if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
      {
        __break(1u);
        goto LABEL_26;
      }

      ++v10;
      v12 *= v13;
    }

    while (v9 != v10);
    if (result != v14)
    {
      goto LABEL_13;
    }

    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    do
    {
      v15 = *v11++;
      sub_1C4F01B58();
      sub_1C4F02318();
      v16 = *(v24[0] + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v9;
    }

    while (v9);
    v17 = v24[0];
  }

  else
  {
    if (result != 1)
    {
LABEL_13:

LABEL_14:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  result = sub_1C4C07150(v17, a3);
  v19 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  if (v8 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      sub_1C4431590(0, (v23 & 0xC000000000000001) == 0);
      sub_1C4431590(v8 - 1, (v23 & 0xC000000000000001) == 0);
      for (i = 0; i != v8; ++i)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C6940F90](i);
        }

        else
        {
          v21 = *(v23 + 8 * i + 32);
        }

        v22 = v21;
        [v19 setObject:v21 atIndexedSubscript:i];
      }
    }

    result = sub_1C4461BB8(0, &qword_1EC0C4B58, 0x1E695FED0);
    *(a4 + 24) = result;
    *a4 = v19;
  }

  return result;
}