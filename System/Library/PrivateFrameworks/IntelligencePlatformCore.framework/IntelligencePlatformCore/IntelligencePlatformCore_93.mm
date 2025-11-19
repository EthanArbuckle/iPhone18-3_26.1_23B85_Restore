uint64_t sub_1C4C47A98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v12 = *(a3 + 56);
  v11 = *(a3 + 64);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1C4EFB758();
  v13 = sub_1C4EFBC18();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
    return sub_1C46AA374(v17);
  }

  else
  {
    v15 = v13;
    (*(v7 + 8))(v10, v6);
    sub_1C46AA374(v17);
    v16 = *a2;
    *a2 = v15;
  }
}

void *sub_1C4C47C08()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[8];

  return v0;
}

uint64_t sub_1C4C47C5C()
{
  sub_1C4C47C08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C47CD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  *(&v10 - v5) = a2;
  v7 = *MEMORY[0x1E69A0060];
  v8 = sub_1C4EFBD98();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_1C440BAA8(v6, 0, 1, v8);

  return sub_1C4EFB6F8();
}

uint64_t sub_1C4C47DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C4C47E60(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v13 = *(a1 + 16);
  v14 = (v6 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      return v18;
    }

    (*(v6 + 16))(v11, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v3);
    sub_1C4F01968();
    if (v1)
    {
      break;
    }

    ++v12;
    sub_1C471D870();
    v16 = v15;
    (*v14)(v11, v3);
    sub_1C49D3A70(v16);
  }

  (*v14)(v11, v3);
}

uint64_t sub_1C4C47FEC()
{
  v1 = v0;
  v2 = type metadata accessor for GraphTriple(0);
  v116 = *(v2 - 8);
  v3 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4EFF0C8();
  v8 = sub_1C43FCDF8(v7);
  v135 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1C43FD2C8(&v107 - v17);
  v122 = sub_1C4EFDE88();
  v18 = sub_1C43FCDF8(v122);
  v126 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2C8(&v107 - v26);
  v117 = sub_1C4EFD548();
  v27 = sub_1C43FCDF8(v117);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  v35 = sub_1C4EFDE68();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v38 - v37);
  v121 = sub_1C4EFDE98();
  v39 = sub_1C43FCDF8(v121);
  v120 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v119 = v44 - v43;
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker, v131);
  v45 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_graphStore);
  v46 = v132;
  v47 = sub_1C4418280(v131, v132);
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v51 = (v50 - v49);
  (*(v52 + 16))(v50 - v49);
  v53 = *v51;

  v118 = v45;
  v54 = sub_1C4C49008(v53, v45);
  v55 = sub_1C440962C(v131);
  v56 = v130;
  sub_1C471B834(v55, v57, v58, v59, v60, v61, v62, v63, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117);
  if (v56)
  {
  }

  v114 = 0;
  v113 = v54;
  v115 = v1;
  v108 = v14;
  v109 = v7;
  v110 = v6;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v64 = *(sub_1C4EFEEF8() - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v67 = swift_allocObject();
  v111 = xmmword_1C4F0D130;
  *(v67 + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v130 = v68;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v111;
  sub_1C4EFD4C8();
  v70 = sub_1C4EFD2F8();
  v72 = v71;
  (*(v29 + 8))(v34, v117);
  *(inited + 32) = v70;
  *(inited + 40) = v72;
  sub_1C448DE08(inited);
  v117 = v73;
  v74 = v126;
  v75 = *(v126 + 104);
  v76 = v122;
  (v75)(v128, *MEMORY[0x1E69A95C0], v122);
  sub_1C4400844();
  v75();
  v77 = v123;
  sub_1C4400844();
  v75();
  v78 = v124;
  sub_1C4400844();
  v75();
  v79 = v125;
  sub_1C4400844();
  v75();
  v80 = v128;
  sub_1C4EFDE58();

  v81 = *(v74 + 8);
  v81(v79, v76);
  v81(v78, v76);
  v81(v77, v76);
  v81(v129, v76);
  v81(v80, v76);
  v82 = v119;
  sub_1C4EFDEA8();
  v83 = sub_1C4EFF8F8();
  v84 = v127;
  sub_1C440BAA8(v127, 1, 1, v83);
  v85 = sub_1C498DB80();
  sub_1C482ADC8(v84);
  (*(v120 + 8))(v82, v121);
  v86 = *(v85 + 16);
  if (v86)
  {
    v131[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v87 = v131[0];
    v88 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v128 = v85;
    v89 = v85 + v88;
    v130 = *(v116 + 72);
    v90 = (v135 + 16);
    v129 = v135 + 32;
    v91 = v110;
    v92 = v109;
    v93 = v108;
    do
    {
      sub_1C443C008(v89, v91, type metadata accessor for GraphTriple);
      (*v90)(v93, v91, v92);
      sub_1C449F280(v91, type metadata accessor for GraphTriple);
      v131[0] = v87;
      v94 = *(v87 + 16);
      if (v94 >= *(v87 + 24) >> 1)
      {
        sub_1C459D178();
        v91 = v110;
        v87 = v131[0];
      }

      *(v87 + 16) = v94 + 1;
      (*(v135 + 32))(v87 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v94, v93, v92);
      v89 += v130;
      --v86;
    }

    while (v86);

    v95 = v115;
    v96 = v114;
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
    v95 = v115;
    v96 = v114;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v97 = sub_1C4F00978();
  sub_1C442B738(v97, qword_1EDE2DF70);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v98 = sub_1C4F00968();
  v99 = sub_1C4F01CB8();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v131[0] = v101;
    *v100 = 136315394;
    *(v100 + 4) = sub_1C441D828(*(v95 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config), *(v95 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config + 8), v131);
    *(v100 + 12) = 2048;
    *(v100 + 14) = *(v87 + 16);

    _os_log_impl(&dword_1C43F8000, v98, v99, "FeatureView %s: Fetching facts for people count:%ld", v100, 0x16u);
    sub_1C440962C(v101);
    MEMORY[0x1C6942830](v101, -1, -1);
    MEMORY[0x1C6942830](v100, -1, -1);
  }

  else
  {
  }

  sub_1C4C47E60(v87);
  if (v96)
  {

    sub_1C4C49124(v134);
  }

  sub_1C4C49124(v134);

  v103 = v95[3];
  v104 = v95[4];
  v105 = v95[5];
  v106 = v95[6];
  v131[0] = v95[2];
  v131[1] = v103;
  v131[2] = v104;
  v132 = v105;
  v133 = v106;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C47D32C8();
}

void *sub_1C4C48B74()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F280(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_graphStore);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker));
  return v0;
}

uint64_t sub_1C4C48BFC()
{
  sub_1C4C48B74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonEntityTaggingFactsView()
{
  result = qword_1EDDDFC10;
  if (!qword_1EDDDFC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C48CA8()
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

uint64_t sub_1C4C48D54()
{
  sub_1C4C47FEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EF98F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v17[4] = &off_1F43E2390;
  v17[0] = a1;
  sub_1C442E860(v17, a3 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker);
  *(a3 + 16) = a2;
  sub_1C443C008(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v9, type metadata accessor for Configuration);

  sub_1C4EF9888();

  sub_1C440962C(v17);
  (*(v11 + 8))(v9, v10);
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_databaseURL, v14, v10);
  return a3;
}

uint64_t sub_1C4C49008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorDatabaseEventTracker();
  v18[3] = v4;
  v18[4] = &off_1F43E2390;
  v18[0] = a1;
  v5 = type metadata accessor for EntityTaggingFactsFeaturizer();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_1C4418280(v18, v4);
  v10 = *(*(v4 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_1C4C48E24(*v13, a2, v8);
  sub_1C440962C(v18);
  return v15;
}

uint64_t sub_1C4C491A8(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; --v1)
  {
    v3 = i[1];
    v8 = *i;
    v9[0] = v3;
    *(v9 + 9) = *(i + 25);
    sub_1C45A2358(&v8, v6);
    v4 = sub_1C472675C(&v8);
    sub_1C45EC75C(&v8);
    sub_1C49D3A70(v4);
    i += 3;
  }

  return v7;
}

void sub_1C4C49250(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v11 = v1[7];
    if (v11)
    {
      v53 = a1;
      sub_1C442E860(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker, &v60);
      v12 = v63;
      v13 = sub_1C4418280(&v60, v63);
      v14 = *(*(v12 - 8) + 64);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v20 = swift_retain_n();
      v55 = sub_1C4C4DF30(v20, v19, 0);
      sub_1C440962C(&v60);
      v21 = sub_1C4409678((v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider + 24));
      (*(v7 + 104))(v10, *MEMORY[0x1E69A9418], v6);
      v22 = *v21;
      v23 = sub_1C45EA9C0(v10);
      v56 = v3;
      if (v3)
      {
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        v29 = v23;
        v52 = v11;
        v50 = v4;
        (*(v7 + 8))(v10, v6);
        v30 = 0;
        v4 = *(v29 + 16);
        v31 = v29 + 72;
        v54 = MEMORY[0x1E69E7CC0];
        v57 = v29;
        v51 = v29 + 72;
LABEL_11:
        v32 = (v31 + 48 * v30);
        while (v4 != v30)
        {
          if (v30 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          if (*v32 == 17)
          {
            v33 = *(v32 - 5);
            v34 = *(v32 - 4);
            v35 = *(v32 - 3);
            v36 = *(v32 - 2);
            v37 = *(v32 - 1);
            v60 = v33;
            v61 = v34;
            v58 = 44;
            v59 = 0xE100000000000000;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if ((sub_1C4F02048() & 1) == 0)
            {
              v38 = v54;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v40 = *(v38 + 16);
                sub_1C459D238();
                v38 = v65;
              }

              v41 = *(v38 + 16);
              v42 = v41 + 1;
              if (v41 >= *(v38 + 24) >> 1)
              {
                v54 = v41 + 1;
                sub_1C459D238();
                v42 = v54;
                v38 = v65;
              }

              ++v30;
              *(v38 + 16) = v42;
              v54 = v38;
              v43 = v38 + 48 * v41;
              *(v43 + 32) = v33;
              *(v43 + 40) = v34;
              *(v43 + 48) = v35;
              *(v43 + 56) = v36;
              *(v43 + 64) = v37;
              *(v43 + 72) = 17;
              v29 = v57;
              v31 = v51;
              goto LABEL_11;
            }

            sub_1C45A23B4(v33, v34, v35, v36, v37, 17);
            v29 = v57;
          }

          v32 += 48;
          ++v30;
        }

        v44 = v56;
        sub_1C4C491A8(v54);

        if (!v44)
        {
          v45 = v50[3];
          v46 = v50[4];
          v47 = v50[5];
          v48 = v50[6];
          v60 = v50[2];
          v61 = v45;
          v62 = v46;
          v63 = v47;
          v64 = v48;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          sub_1C47D32C8();

          sub_1C4D0E5C0();
        }
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
LABEL_27:
        swift_once();
      }

      v24 = sub_1C4F00978();
      sub_1C442B738(v24, qword_1EDE2DDE0);

      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CF8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v60 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1C441D828(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config + 8), &v60);
        _os_log_impl(&dword_1C43F8000, v25, v26, "FeatureView: %s: Featurizer is nil. Ignoring AllSources and returning", v27, 0xCu);
        sub_1C440962C(v28);
        MEMORY[0x1C6942830](v28, -1, -1);
        MEMORY[0x1C6942830](v27, -1, -1);
      }

      sub_1C4D0E51C();
    }
  }
}

void *sub_1C4C4985C()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[7];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker));
  return v0;
}

uint64_t sub_1C4C498D8()
{
  sub_1C4C4985C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonEntityTaggingView()
{
  result = qword_1EDDE1DF0;
  if (!qword_1EDDE1DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C49984()
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

uint64_t sub_1C4C49A2C(uint64_t a1)
{
  sub_1C4C49250(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C49AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EF97E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C4F01C78();
  sub_1C4C4D5F4(&qword_1EC0C5020, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_1C4F01FA8();
    if (!v14)
    {
      break;
    }

    sub_1C44482AC(&v13, v12);
    v9 = sub_1C4C4D088(v12, a2);
    v10 = sub_1C440962C(v12);
    if (v9)
    {
      MEMORY[0x1C6940330](v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v8 = v15;
    }
  }

  (*(v4 + 8))(v7, v3);

  return v8;
}

void *sub_1C4C49C9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      v8 = *(*&__dst[1] + 16);
      sub_1C4C4D5F4(&qword_1EDDFEDB8, type metadata accessor for ErrorHandlingDatabasePool);
      v9 = sub_1C4EFDC78();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFDC68();
      v12 = objc_allocWithZone(sub_1C4EFE168());
      v15 = sub_1C4EFE148();
      _s29PhotosAutonamingViewGeneratorCMa();
      a2 = swift_allocObject();
      a2[18] = &type metadata for PhotosAutonamingRejectionProvider;
      a2[19] = &off_1F4404F80;
      memcpy(a2 + 2, __dst, 0x60uLL);
      a2[14] = v15;
    }

    else
    {
      sub_1C44206C8();
      sub_1C450B034();
      sub_1C43FFB2C();
      *v13 = a1;
      *(v13 + 8) = a2;
      *(v13 + 16) = xmmword_1C4F5B670;
      *(v13 + 32) = 0xD000000000000025;
      *(v13 + 40) = a4;
      *(v13 + 48) = __dst[0];
      *(v13 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4C49EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1C4C49C9C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C49F88(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FCED0();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "PhotosAutonamingViewGenerator: Performing full rebuild.", v7, 2u);
    sub_1C43FBE2C();
  }

  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (a1 & 0xC000000000000001) == 0);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6940F90](0, a1);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v20 = v9;
    v18 = 0;
    v19 = 0;
    v10 = *(*(v1 + 32) + 16);
    MEMORY[0x1EEE9AC00](v9);
    v17[2] = v2;
    v17[3] = &v19;
    v17[4] = a1;
    v17[5] = &v20;
    v17[6] = &v18;

    sub_1C446C37C(sub_1C4C4D514, v17);

    sub_1C4C4A5F8();
  }

  else
  {
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();
    if (os_log_type_enabled(v12, v13))
    {
      *sub_1C43FCED0() = 0;
      sub_1C44011B0(&dword_1C43F8000, v14, v15, "Expected at least one KG source");
      sub_1C43FBE2C();
    }

    sub_1C44206C8();
    sub_1C446D0DC();
    sub_1C43FFB2C();
    return sub_1C4407F5C(v16, 31);
  }
}

uint64_t sub_1C4C4A1AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a3;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  v27 = 0;
  v28 = 0xE000000000000000;
  v30 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4F02248();

  v27 = 0xD000000000000015;
  v28 = 0x80000001C4FB3220;
  MEMORY[0x1C6940010](__dst[0], __dst[1]);
  sub_1C4EFB758();
  v25 = a1;
  v14 = v26;
  sub_1C4EFBFF8();
  if (v14)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v10 + 8))(v13, v9);

    MEMORY[0x1EEE9AC00](v16);
    *(&v21 - 2) = __dst;
    sub_1C4EFBFD8();
    v17 = v30;
    v19 = v23;
    v18 = v24;
    v20 = v22;
    while (*(sub_1C4C4A498(v20, v17, v19, v18, a2) + 16))
    {
      sub_1C4B76FC8();
    }

    sub_1C4B76B30();
  }
}

unint64_t sub_1C4C4A498(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4428DA0();
  v22 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = a2 + 32;
  while (1)
  {
    result = *a1;
    if (*a1 >= v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (v22)
    {
      v14 = MEMORY[0x1C6940F90]();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_14;
    }

    v14 = *(v12 + 8 * result);

LABEL_7:
    v15 = *a3;
    *a3 = v14;

    v16 = *a4;
    v17 = *(a5 + 72);
    v23[0] = *(a5 + 56);
    v23[1] = v17;
    v24 = *(a5 + 88);
    v18 = sub_1C4CDFB34(v16, 0, v23, 0, 1);
    v20 = v19;
    v21 = v18;

    *a4 = v20;
    if (*(v21 + 16))
    {
      return v21;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_15;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C4C4A5F8()
{
  sub_1C4C4A65C();
  v1 = *(*(v0 + 32) + 16);

  sub_1C446C37C(sub_1C4C4D538, v0);
}

uint64_t sub_1C4C4A65C()
{
  v1 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "PhotosAutonamingViewGenerator: Removing rejections.", v5, 2u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  v6 = *(*(v1 + 32) + 16);

  sub_1C446C37C(sub_1C4C4C540, 0);
}

uint64_t sub_1C4C4A778(uint64_t a1, void *a2)
{
  v4 = a2[18];
  v5 = a2[19];
  sub_1C4409678(a2 + 15, v4);
  v7[2] = a2;
  v7[3] = a1;
  return (*(v5 + 8))(sub_1C4C4D554, v7, v4, v5);
}

void sub_1C4C4A80C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v94 = a2;
  v77 = sub_1C4EFBC98();
  v5 = *(v77 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v77);
  v86 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1C4EFF0C8();
  v80 = *(v82 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v78 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EFB678();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v81 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = v76 - v14;
  v15 = sub_1C456902C(&qword_1EC0C5010, qword_1C4F5EDF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = (v76 - v17);
  v92 = sub_1C4EFF1E8();
  v18 = *(v92 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v76 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  if (qword_1EDDFECB0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v28 = sub_1C4F00978();
  v29 = sub_1C442B738(v28, qword_1EDDFECB8);
  v30 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v95 = v29;
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();

  v33 = os_log_type_enabled(v31, v32);
  v87 = a3;
  v85 = v5;
  v89 = v26;
  v76[1] = v30;
  if (v33)
  {
    v34 = v30;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v91 = v25;
    v37 = v36;
    v38 = swift_slowAlloc();
    v96 = v38;
    *v35 = 138740483;
    *(v35 + 4) = v34;
    *v37 = v34;
    v90 = v18;
    *(v35 + 12) = 2085;
    v39 = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v40 = v23;
    v41 = sub_1C441D828(v91, v27, &v96);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2085;
    v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = MEMORY[0x1C6940380](v42, &type metadata for AutonamingRejection.RejectedInfo);
    v45 = v44;

    v46 = sub_1C441D828(v43, v45, &v96);
    v18 = v90;

    *(v35 + 24) = v46;
    v23 = v40;
    _os_log_impl(&dword_1C43F8000, v31, v32, "PhotosAutonamingViewGenerator: Processing rejection: %{sensitive}@ - %{sensitive}s - %{sensitive}s.", v35, 0x20u);
    sub_1C4423A0C(v37, &qword_1EC0BDA00, &qword_1C4F10D30);
    v47 = v37;
    v25 = v91;
    MEMORY[0x1C6942830](v47, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v38, -1, -1);
    MEMORY[0x1C6942830](v35, -1, -1);
  }

  v48 = v93;
  v49 = *(v94 + 112);
  v26 = 0;
  sub_1C4EFE158();
  a3 = v95;
  if (sub_1C44157D4(v48, 1, v92) == 1)
  {
    sub_1C4423A0C(v48, &qword_1EC0C5010, qword_1C4F5EDF0);
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CF8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C43F8000, v50, v51, "PhotosAutonamingViewGenerator: Could not process rejection because GraphPerson could not be found.", v52, 2u);
      MEMORY[0x1C6942830](v52, -1, -1);
    }
  }

  else
  {
    v94 = v27;
    v91 = v25;
    v53 = v88;
    v54 = v92;
    (*(v18 + 4))(v88, v48, v92);
    v25 = v23;
    (*(v18 + 2))(v23, v53, v54);
    v55 = sub_1C4EFF1D8();
    v56 = v18 + 8;
    v18 = *(v18 + 1);
    v90 = v56;
    (v18)(v53, v54);
    v5 = v55;
    v24 = sub_1C4F00968();
    v57 = sub_1C4F01CF8();
    if (os_log_type_enabled(v24, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v57, "PhotosAutonamingViewGenerator: Obtained a GraphPerson for the rejection", v58, 2u);
      MEMORY[0x1C6942830](v58, -1, -1);
    }

    v59 = 0;
    v27 = v89;
    v60 = *(v89 + 16);
    v23 = (v89 + 48);
    while (v60 != v59)
    {
      if (v59 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v61 = *v23;
      v62 = *(v23 - 1);
      v96 = *(v23 - 2);
      v97 = v62;
      v98 = v61;
      sub_1C4C4D55C();
      v24 = sub_1C4C4B3D8(&v96, v5);
      sub_1C4C4D564();
      if (v24)
      {
        v93 = v18;

        v66 = sub_1C4F00968();
        v67 = sub_1C4F01CF8();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_1C43F8000, v66, v67, "PhotosAutonamingViewGenerator: Removing person.", v68, 2u);
          MEMORY[0x1C6942830](v68, -1, -1);
        }

        v69 = v79;
        sub_1C4EFB648();
        sub_1C4EFB638();
        sub_1C4C4D5F4(&qword_1EC0C5018, MEMORY[0x1E69A9870]);
        v70 = v78;
        sub_1C4EFD5A8();
        v71 = sub_1C4EFF048();
        v73 = v72;
        (*(v80 + 8))(v70, v82);
        v96 = v71;
        v97 = v73;
        sub_1C4415EA8();
        sub_1C4EFB668();

        sub_1C4EFB638();
        (*(v83 + 32))(v81, v69, v84);
        v74 = v86;
        sub_1C4EFBC88();
        sub_1C4EFC008();
        v75 = (v85 + 1);

        (*v75)(v74, v77);
        v93(v25, v92);
        return;
      }

      v23 += 24;
      ++v59;
    }

    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CF8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1C43F8000, v63, v64, "PhotosAutonamingViewGenerator: Will not remove person because no feedback matches the current suggestion.", v65, 2u);
      MEMORY[0x1C6942830](v65, -1, -1);
    }

    (v18)(v25, v92);
  }
}

uint64_t sub_1C4C4B3D8(uint64_t a1, void *a2)
{
  v5 = sub_1C4EF9788();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v13 = [a2 suggestedNameComponents];
    if (v13)
    {
      v14 = v13;
      v52 = v6;
      sub_1C4EF9768();

      v15 = sub_1C4EF9758();
      v16 = [v15 autonamingFeedbackStandardizedRepresentation];

      v17 = sub_1C4F01138();
      v19 = v18;

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C4D55C();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      sub_1C4C4D564();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v51 = v17;
        v24 = v23;
        v25 = swift_slowAlloc();
        v50[1] = v2;
        v26 = v25;
        v53 = v25;
        *v24 = 136643075;
        *(v24 + 4) = sub_1C441D828(v51, v19, &v53);
        *(v24 + 12) = 2085;
        *(v24 + 14) = sub_1C441D828(v12, v11, &v53);
        _os_log_impl(&dword_1C43F8000, v21, v22, "PhotosAutonamingViewGenerator: Comparing suggested name '%{sensitive}s' with rejected name '%{sensitive}s'.", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v26, -1, -1);
        v27 = v24;
        v17 = v51;
        MEMORY[0x1C6942830](v27, -1, -1);
      }

      if (v17 == v12 && v11 == v19)
      {
        LOBYTE(v29) = 1;
      }

      else
      {
        LOBYTE(v29) = sub_1C4F02938();
      }

      (*(v52 + 8))(v10, v5);
      return v29 & 1;
    }

    v39 = [a2 suggestedNameString];
    if (!v39)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v47 = sub_1C4F00978();
      sub_1C442B738(v47, qword_1EDDFECB8);
      v29 = sub_1C4F00968();
      v48 = sub_1C4F01CF8();
      if (os_log_type_enabled(v29, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C43F8000, v29, v48, "PhotosAutonamingViewGenerator: Graph Person has no suggested name.", v49, 2u);
        MEMORY[0x1C6942830](v49, -1, -1);
      }

      LOBYTE(v29) = 0;
      return v29 & 1;
    }

    v40 = v39;
    v41 = sub_1C4F01138();
    v43 = v42;

    if (v41 != v12 || v11 != v43)
    {
      v45 = sub_1C4F02938();

      return v45 & 1;
    }

    goto LABEL_36;
  }

  v29 = [a2 suggestedContactIdentifier];
  if (v29)
  {
    v30 = sub_1C4F01138();
    v32 = v31;

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1C4F00978();
    sub_1C442B738(v33, qword_1EDDFECB8);
    sub_1C4C4D55C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CF8();

    sub_1C4C4D564();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136643075;
      *(v36 + 4) = sub_1C441D828(v30, v32, &v53);
      *(v36 + 12) = 2085;
      *(v36 + 14) = sub_1C441D828(v12, v11, &v53);
      _os_log_impl(&dword_1C43F8000, v34, v35, "PhotosAutonamingViewGenerator: Comparing suggested contact ID '%{sensitive}s' with rejected contact ID '%{sensitive}s'.", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v37, -1, -1);
      MEMORY[0x1C6942830](v36, -1, -1);
    }

    if (v30 == v12 && v11 == v32)
    {
LABEL_36:

      LOBYTE(v29) = 1;
      return v29 & 1;
    }

    LOBYTE(v29) = sub_1C4F02938();
  }

  return v29 & 1;
}

uint64_t sub_1C4C4B9E4(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0();
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 2:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0x7165527261656C63 && v7 == 0xED00006465726975)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

uint64_t sub_1C4C4BC00()
{
  sub_1C4C4A65C();
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v1 = *(__dst[2] + 16);
  v3[2] = __dst;
  return sub_1C446C37C(sub_1C4B7BCC4, v3);
}

uint64_t sub_1C4C4BC64(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0();
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 1:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0xD000000000000013 && 0x80000001C4F87C40 == v7)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

void sub_1C4C4BE70(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v5 = sub_1C4F00978();
    v50 = sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "PhotosAutonamingViewGenerator: handleUpdate called.", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v47 = a1;
    v9 = *(a1 + 64);
    v10 = sub_1C4428DA0();
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = 0;
    v49 = *(v47 + 56);
    a1 = v9 & 0xC000000000000001;
    v48 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v13 = MEMORY[0x1C6940F90](v12, v9);
      }

      else
      {
        if (v12 >= *(v48 + 16))
        {
          goto LABEL_42;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (*(v49 + 32) & 1) != 0 || *(v13 + 32) == 1 && (sub_1C4C149D8())
      {
        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CF8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1C43F8000, v15, v16, "PhotosAutonamingViewGenerator: KG or control source updated. Performing full rebuild and removing rejected associations.", v17, 2u);
          MEMORY[0x1C6942830](v17, -1, -1);
        }

        v18 = *(v3 + 72);
        v52[0] = *(v3 + 56);
        v52[1] = v18;
        v53 = *(v3 + 88);
        v19 = sub_1C4CDFB34(0, 1, v52, 0, 1);
        v21 = v20;
        v22 = v19;
        v23 = memcpy(__dst, (v3 + 16), sizeof(__dst));
        v24 = *(__dst[2] + 16);
        MEMORY[0x1EEE9AC00](v23);
        v45[2] = __dst;
        v45[3] = v22;
        v45[4] = 0;
        v45[5] = 0;
        sub_1C446C37C(sub_1C4C4D56C, v45);

        v25 = sub_1C4F00968();
        v26 = sub_1C4F01CF8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1C43F8000, v25, v26, "PhotosAutonamingViewGenerator: Finished inserting triples.", v27, 2u);
          MEMORY[0x1C6942830](v27, -1, -1);
        }

        sub_1C4CDF41C(v21);
      }

      else
      {
        *(v13 + 34) = 1;
      }

      ++v12;
      if (v14 == v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_21:
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CF8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C43F8000, v28, v29, "PhotosAutonamingViewGenerator: Removing rejected associations.", v30, 2u);
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  sub_1C4C4A5F8();
  sub_1C4441C50(*(v46 + 33));
  v33 = v32 == 0xD000000000000013 && 0x80000001C4F87C40 == v31;
  v34 = v47;
  if (v33)
  {

    goto LABEL_30;
  }

  v35 = sub_1C4F02938();

  if (v35)
  {
LABEL_30:
    sub_1C4CDD42C();
  }

  v36 = *(v34 + 72);
  v37 = sub_1C4428DA0();
  if (v37)
  {
    v38 = v37;
    if (v37 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v38; ++i)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6940F90](i, v36);
      }

      else
      {
        v40 = *(v36 + 8 * i + 32);
      }

      sub_1C4CBF8F8();
    }
  }

  v41 = *(v34 + 56);
  sub_1C444F17C();
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CF8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1C43F8000, v42, v43, "PhotosAutonamingViewGenerator: Completed.", v44, 2u);
    MEMORY[0x1C6942830](v44, -1, -1);
  }
}

uint64_t sub_1C4C4C3B0(unint64_t a1)
{
  v3 = *(a1 + 96);
  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (v3 & 0xC000000000000001) == 0);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6940F90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    if (sub_1C4C4B9E4(a1))
    {
      sub_1C4C4BC00();
      sub_1C4D0E478();
    }

    else if (sub_1C4C4BC64(a1))
    {
      sub_1C4C49F88(*(a1 + 64));
      if (!v1)
      {
        sub_1C4D0E5C0();
      }
    }

    else
    {
      sub_1C4C4BE70(a1, v4);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();
    if (os_log_type_enabled(v6, v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C44011B0(&dword_1C43F8000, v8, v9, "Expected a KV source config");
      sub_1C43FBE2C();
    }

    sub_1C44206C8();
    sub_1C446D0DC();
    sub_1C43FFB2C();
    return sub_1C4407F5C(v10, 27);
  }
}

uint64_t sub_1C4C4C540()
{
  v1 = sub_1C4EFB0B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v0)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1C4C4D5F4(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C4C4C7C4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00C8];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB4F8();

  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4C4C98C()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C4AF9ADC(v2);

  sub_1C440962C((v0 + 120));
  return v0;
}

uint64_t sub_1C4C4C9D4()
{
  sub_1C4C4C98C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C4CA08(unint64_t a1)
{
  sub_1C4C4C3B0(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AutonamingRejection.init(identifierType:identifier:rejectedInfos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AutonamingRejection.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C4C4CB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v8 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  isEscapingClosureAtFileLocation = sub_1C44B90E0(v7);
  v10 = objc_opt_self();
  v11 = [isEscapingClosureAtFileLocation librarySpecificFetchOptions];
  v12 = [v10 fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions_];

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    sub_1C4C4D3A4(sub_1C4C4D5AC, v13, v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDDFECB8);
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FCED0();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "Could not get rejected persons.", v17, 2u);
    sub_1C43FBE2C();
  }

  sub_1C44206C8();
  sub_1C446D0DC();
  sub_1C43FFB2C();
  sub_1C4407F5C(v18, 31);
}

void sub_1C4C4CDB4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **))
{
  [a1 fetchPropertySetsIfNeeded];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [a1 userFeedbackProperties];
  v8 = [v7 autonamingUserFeedbacks];

  if (v8)
  {
    v28 = a1;
    v29 = a4;

    v9 = sub_1C4C49AD4(v8, v6);

    v10 = sub_1C4428DA0();
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 != v11)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6940F90](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v35 = v13;
      sub_1C4C4D23C(&v35, &v31);

      v15 = v33;
      v16 = v31;
      v17 = v32;
      if (v33 == 255)
      {
        sub_1C4C4D5DC(v31, v32, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v12 + 16);
          sub_1C458F5F8();
          v12 = v21;
        }

        v18 = *(v12 + 16);
        if (v18 >= *(v12 + 24) >> 1)
        {
          sub_1C458F5F8();
          v12 = v22;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 24 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        *(v19 + 48) = v15 & 1;
      }

      ++v11;
    }

    sub_1C4EFFC88();
    v23 = sub_1C4EFFC78();
    v24 = [v28 localIdentifier];
    v25 = sub_1C4F01138();
    v27 = v26;

    v31 = v23;
    v32 = v25;
    v33 = v27;
    v34 = v12;
    v29(&v31);
    v30 = v31;
  }

  else
  {
  }
}

uint64_t sub_1C4C4D088(uint64_t a1, uint64_t a2)
{
  sub_1C442B870(a1, v11);
  sub_1C4461BB8(0, &qword_1EC0C5028, 0x1E6978B00);
  if (swift_dynamicCast())
  {
  }

  else
  {
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C442B738(v4, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CE8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C43F8000, v5, v6, "PHPersonUserFeedbackProperties.autonamingUserFeedbacks element type was not a PHUserFeedback", v7, 2u);
        MEMORY[0x1C6942830](v7, -1, -1);
      }

      swift_beginAccess();
      *(a2 + 16) = 1;
    }
  }

  sub_1C442B870(a1, v11);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1C4C4D23C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] != 3 || (v4 = sub_1C4D3C5B4(v3), !v5))
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = -1;
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v5;
  v8 = [v3 feature];
  if (v8 == 2)
  {
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    return;
  }

  if (v8 != 1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "PhotosAutonamingViewGenerator: Unknown feedback case for autonaming. Will not process this feedback.", v13, 2u);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    goto LABEL_12;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  v9 = 1;
LABEL_13:
  *(a2 + 16) = v9;
}

void sub_1C4C4D3A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1C4C4D5D4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C4AAF5EC;
  v8[3] = &unk_1F4404FE0;
  v7 = _Block_copy(v8);

  [a3 enumerateObjectsUsingBlock_];
  _Block_release(v7);
}

void sub_1C4C4D488(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **))
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4C4CDB4(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4C4D5AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C4C4D5DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C4C4D564();
  }

  return result;
}

uint64_t sub_1C4C4D5F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4C4D66C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else if (*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_featurizer))
  {
    v40 = a1;
    sub_1C442E860(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker, v37);
    sub_1C4418280(v37, v38);
    sub_1C43FCE64();
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v17);
    sub_1C43FBCC4();
    v20 = (v19 - v18);
    (*(v21 + 16))(v19 - v18);
    v22 = *v20;
    v23 = swift_retain_n();
    sub_1C4C4DF30(v23, v22, 1);
    sub_1C440962C(v37);
    v24 = sub_1C4409678((v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider + 24));
    (*(v8 + 104))(v14, *MEMORY[0x1E69A9418], v6);
    v25 = *v24;
    v26 = sub_1C45EA9C0(v14);
    if (v3)
    {
      (*(v8 + 8))(v14, v6);
    }

    else
    {
      v32 = v26;
      (*(v8 + 8))(v14, v6);
      sub_1C4C491A8(v32);

      v33 = v4[3];
      v34 = v4[4];
      v35 = v4[5];
      v36 = v4[6];
      v37[0] = v4[2];
      v37[1] = v33;
      v37[2] = v34;
      v38 = v35;
      v39 = v36;
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
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDE0);

    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1C441D828(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config + 8), v37);
      _os_log_impl(&dword_1C43F8000, v28, v29, "%s: Featurizer is nil. Ignoring AllSources and returning", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    sub_1C4D0E51C();
  }
}

void *sub_1C4C4DAD8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_featurizer);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker));
  return v0;
}

uint64_t sub_1C4C4DB5C()
{
  sub_1C4C4DAD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotosPersonEntityTaggingView()
{
  result = qword_1EDDDF668;
  if (!qword_1EDDDF668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C4DC08()
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

uint64_t sub_1C4C4DCB0(uint64_t a1)
{
  sub_1C4C4D66C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C4DD58(uint64_t *a1)
{
  v5[3] = *a1;
  v5[4] = &off_1F43E2390;
  v5[0] = a1;

  v1 = objc_autoreleasePoolPush();
  sub_1C4724B80(v5, &v4);
  objc_autoreleasePoolPop(v1);
  v2 = v4;
  sub_1C440962C(v5);
  return v2;
}

uint64_t sub_1C4C4DDEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v15[4] = &off_1F43E2390;
  v15[0] = a2;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar;
  v9 = sub_1C4EF9F88();
  sub_1C440BAA8(a4 + v8, 1, 1, v9);
  *(a4 + 16) = a1;
  *(a4 + 24) = a3 & 1;
  sub_1C442E860(v15, a4 + 40);
  v10 = *sub_1C4409678((a4 + 40), *(a4 + 64));

  sub_1C4C4DD58(v10);
  sub_1C456902C(&qword_1EC0C5030, &qword_1C4F5EF28);
  v11 = swift_allocObject();
  v11[1] = xmmword_1C4F0CE60;
  sub_1C465C50C();
  v12 = v17[0];
  v11[2] = v16;
  v11[3] = v12;
  *(v11 + 57) = *(v17 + 9);
  sub_1C465C50C();

  v13 = v18[0];
  v11[5] = v17[2];
  v11[6] = v13;
  *(v11 + 105) = *(v18 + 9);

  sub_1C440962C(v15);
  *(a4 + 32) = v11;
  return a4;
}

uint64_t sub_1C4C4DF30(uint64_t a1, uint64_t a2, char a3)
{
  v20 = type metadata accessor for BehaviorDatabaseEventTracker();
  v21 = &off_1F43E2390;
  v19[0] = a2;
  v6 = type metadata accessor for EntityTaggingFeaturizer();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1C4418280(v19, v20);
  sub_1C43FCE64();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  v17 = sub_1C4C4DDEC(a1, *v15, a3 & 1, v9);
  sub_1C440962C(v19);
  return v17;
}

uint64_t sub_1C4C4E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s34PHPersonIdentifierMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C4E1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C4E04C(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

unint64_t sub_1C4C4E24C()
{
  v174 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  v1 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  v170 = v147 - v5;
  v6 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v167 = v147 - v8;
  sub_1C43FBE44();
  v9 = sub_1C4EFDE68();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FD2D8();
  v166 = v11;
  v12 = sub_1C43FBE44();
  v184 = type metadata accessor for GraphTriple(v12);
  v13 = sub_1C43FCDF8(v184);
  v150 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v183 = v17;
  sub_1C43FBE44();
  v152 = sub_1C4EFF8A8();
  v18 = sub_1C43FCDF8(v152);
  v149 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v151 = v22;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v182 = v147 - v25;
  sub_1C43FBE44();
  v26 = sub_1C4EFDE88();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v179 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v177 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v176 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v147 - v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v147 - v42;
  v178 = sub_1C4EFDE98();
  v44 = sub_1C43FCDF8(v178);
  v181 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  v180 = v48;
  sub_1C43FBE44();
  v175 = sub_1C4EFF0C8();
  v185 = sub_1C4F00F28();
  v153 = v0;
  v169 = *(v0 + 16);
  v49 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v50 = *(sub_1C4EFEEF8() - 8);
  v51 = *(v50 + 72);
  v52 = *(v50 + 80);
  v53 = swift_allocObject();
  v168 = xmmword_1C4F0D130;
  *(v53 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE308();
  sub_1C4D504A4();
  v165 = v54;
  sub_1C448DE08(&unk_1F43D6A30);
  v164 = v55;
  v160 = v51;
  v159 = v52;
  v162 = v49;
  v56 = swift_allocObject();
  sub_1C442C690(v56);
  v161 = (v52 + 32) & ~v52;
  sub_1C4EFE658();
  sub_1C4D504A4();
  v58 = v57;
  v59 = *MEMORY[0x1E69A95C0];
  v60 = v29 + 104;
  v61 = *(v29 + 104);
  v62 = v43;
  sub_1C4412864();
  v61();
  v63 = v40;
  sub_1C4412864();
  v61();
  v64 = v37;
  sub_1C4412864();
  v61();
  v65 = v176;
  sub_1C4412864();
  v61();
  v66 = v177;
  v158 = v59;
  sub_1C4412864();
  v157 = v60;
  v156 = v61;
  v61();
  v145 = v66;
  v146 = v58;
  v67 = v65;
  sub_1C4EFDCD8();

  v69 = v179 + 8;
  v68 = *(v179 + 8);
  v68(v66, v26);
  v70 = v69;
  v68(v67, v26);
  v165 = v64;
  v68(v64, v26);
  v164 = v63;
  v68(v63, v26);
  v163 = v62;
  v155 = v68;
  v68(v62, v26);
  v71 = sub_1C4EFF8F8();
  v72 = v182;
  sub_1C440BAA8(v182, 1, 1, v71);
  v73 = v180;
  v74 = sub_1C498DB80();
  v75 = v178;
  v76 = v74;
  sub_1C4423A0C(v72, &qword_1EC0BAA00, &unk_1C4F17400);
  v77 = *(v181 + 8);
  v181 += 8;
  v154 = v77;
  v77(v73, v75);
  v78 = *(v76 + 16);
  if (v78)
  {
    v179 = v70;
    v148 = v26;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v79 = __dst[0];
    v80 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v147[1] = v76;
    v81 = v76 + v80;
    v182 = *(v150 + 72);
    v82 = v149;
    v83 = (v149 + 16);
    v84 = v152;
    v85 = v151;
    do
    {
      v86 = v183;
      sub_1C4709E74(v81, v183);
      (*v83)(v85, v86 + *(v184 + 24), v84);
      sub_1C4709ED8(v86);
      __dst[0] = v79;
      v88 = *(v79 + 16);
      v87 = *(v79 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1C4413A88(v87);
        sub_1C459D120();
        v79 = __dst[0];
      }

      *(v79 + 16) = v88 + 1;
      (*(v82 + 32))(v79 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v88, v85, v84);
      v81 += v182;
      --v78;
    }

    while (v78);

    v26 = v148;
  }

  else
  {
  }

  sub_1C459740C();
  v184 = v89;
  v90 = swift_allocObject();
  sub_1C442C690(v90);
  sub_1C4EFE558();
  sub_1C4D504A4();
  v183 = v91;
  v92 = v163;
  sub_1C440109C();
  v93 = v156;
  v156();
  v94 = v164;
  sub_1C440109C();
  v93();
  v95 = v165;
  sub_1C440109C();
  v93();
  v96 = v176;
  sub_1C440109C();
  v93();
  v97 = v177;
  sub_1C440109C();
  v93();
  v144[1] = v97;
  v144[0] = v184;
  sub_1C4EFDE58();

  v98 = v155;
  v155(v97, v26);
  v98(v96, v26);
  v98(v95, v26);
  v98(v94, v26);
  v98(v92, v26);
  v99 = v180;
  sub_1C4EFDEA8();
  v100 = sub_1C4EFD678();
  v101 = v167;
  v102 = sub_1C440BAA8(v167, 1, 1, v100);
  MEMORY[0x1EEE9AC00](v102);
  v145 = &v185;
  sub_1C48687D0(v99, v101, sub_1C4C4F2A0, v144);
  sub_1C4423A0C(v101, &unk_1EC0C07E0, &unk_1C4F168F0);
  v154(v99, v178);
  v103 = v185;
  v104 = *(v185 + 16);
  if (v104)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58();
    v105 = __dst[0];
    result = sub_1C4703354(v103);
    v109 = 0;
    v110 = v103 + 64;
    v169 = v175 - 8;
    v164 = v107;
    v163 = v103 + 72;
    v168 = xmmword_1C4F0CE60;
    v165 = v104;
    v166 = v103 + 64;
    v167 = v103;
    v111 = v174;
    v112 = v171;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v103 + 32))
    {
      if ((*(v110 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v103 + 36) != v107)
      {
        goto LABEL_30;
      }

      v179 = 1 << result;
      v180 = result >> 6;
      v177 = v109;
      v178 = v107;
      LODWORD(v176) = v108;
      v113 = *(v111 + 48);
      v114 = *(v103 + 56);
      v115 = (*(v103 + 48) + 16 * result);
      v117 = *v115;
      v116 = v115[1];
      v118 = v175;
      v119 = *(v175 - 8);
      v120 = v119;
      v121 = v114 + *(v119 + 72) * result;
      v122 = *(v119 + 16);
      v184 = v105;
      v123 = v170;
      v183 = result;
      v122(&v170[v113], v121, v175);
      *v112 = v117;
      v112[1] = v116;
      v124 = *(v111 + 48);
      v182 = *(v120 + 32);
      (v182)(v112 + v124, &v123[v113], v118);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v125 = swift_allocObject();
      sub_1C442C690(v125);
      v126 = v172;
      sub_1C4C4321C(v112, v172);
      v127 = *v126;
      v128 = v126[1];
      v181 = *(v111 + 48);
      v125[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v125[4].n128_u64[0] = MEMORY[0x1E69A0138];
      v125[2].n128_u64[0] = v127;
      v125[2].n128_u64[1] = v128;
      v129 = v173;
      sub_1C4C4321C(v112, v173);
      v130 = *(v129 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v131 = *(v111 + 48);
      v125[6].n128_u64[0] = v118;
      v125[6].n128_u64[1] = sub_1C4C4328C();
      v132 = sub_1C4422F90(&v125[4].n128_i64[1]);
      v133 = v129 + v131;
      v105 = v184;
      (v182)(v132, v133, v118);
      sub_1C4423A0C(v112, &qword_1EC0BDCE0, &unk_1C4F31990);
      (*(v120 + 8))(v126 + v181, v118);
      __dst[0] = v105;
      v135 = *(v105 + 16);
      v134 = *(v105 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_1C4413A88(v134);
        sub_1C459DB58();
        v105 = __dst[0];
      }

      *(v105 + 16) = v135 + 1;
      *(v105 + 8 * v135 + 32) = v125;
      v103 = v167;
      v136 = 1 << *(v167 + 32);
      result = v183;
      if (v183 >= v136)
      {
        goto LABEL_31;
      }

      v110 = v166;
      v137 = *(v166 + 8 * v180);
      if ((v137 & v179) == 0)
      {
        goto LABEL_32;
      }

      if (*(v167 + 36) != v178)
      {
        goto LABEL_33;
      }

      v138 = v137 & (-2 << (v183 & 0x3F));
      if (v138)
      {
        v136 = __clz(__rbit64(v138)) | v183 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v139 = v180 << 6;
        v140 = v180 + 1;
        v141 = (v163 + 8 * v180);
        while (v140 < (v136 + 63) >> 6)
        {
          v143 = *v141++;
          v142 = v143;
          v139 += 64;
          ++v140;
          if (v143)
          {
            sub_1C440951C(v183, v178, v176 & 1);
            v136 = __clz(__rbit64(v142)) + v139;
            goto LABEL_26;
          }
        }

        sub_1C440951C(v183, v178, v176 & 1);
      }

LABEL_26:
      v108 = 0;
      v109 = (v177 + 1);
      result = v136;
      v107 = v164;
      if (v177 + 1 == v165)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_27:
    memcpy(__dst, (v153 + 24), sizeof(__dst));
    sub_1C4BC7458();
  }

  return result;
}

uint64_t sub_1C4C4F174(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_1C4EFF0C8();
  (*(*(v9 - 8) + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80730();
  return 1;
}

uint64_t sub_1C4C4F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s30PreprocessObjectsViewGeneratorCMa();
      a4 = swift_allocObject();
      memcpy((a4 + 16), __src, 0x60uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = xmmword_1C4F5B670;
      *(v8 + 32) = 0xD000000000000025;
      *(v8 + 40) = 0x80000001C4FB83A0;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C4F3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C4F2B8(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C4F4A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = sub_1C4EFF1C8();
  v15 = sub_1C43FCDF8(v14);
  v57 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v21 = sub_1C4F00978();
  v59 = sub_1C442B738(v21, qword_1EDDFECB8);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    sub_1C43FD1A8();
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C43F8000, v22, v23, "PhotosAutonamingViewGenerator: Performing full rebuild.", v24, 2u);
    v2 = v1;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (sub_1C4428DA0())
  {
    sub_1C4431590(0, (a1 & 0xC000000000000001) == 0);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1C6940F90](0, a1);
    }

    else
    {
      v25 = *(a1 + 32);
    }

    v62 = v25;
    sub_1C4EF9E48();
    sub_1C43FCF64();
    sub_1C440BAA8(v26, v27, v28, v29);
    sub_1C4EFF1A8();
    if (v2)
    {

      sub_1C43FCF64();
      sub_1C440BAA8(v30, v31, v32, v14);
      sub_1C4C50A00(v13);
      v33 = sub_1C4F00968();
      sub_1C4F01CD8();
      v34 = sub_1C4407F80();
      if (os_log_type_enabled(v34, v35))
      {
        sub_1C43FD1A8();
        v36 = swift_slowAlloc();
        *v36 = 0;
        sub_1C441253C();
        _os_log_impl(v37, v38, v39, v40, v36, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C446D0DC();
      swift_allocError();
      sub_1C43FE0B0(v41, 0xD000000000000027);
    }

    else
    {
      sub_1C440BAA8(v13, 0, 1, v14);
      v52 = v57;
      v53 = (*(v57 + 32))(v20, v13, v14);
      v60 = 0;
      v61 = 0;
      v54 = *(*(v58 + 32) + 16);
      MEMORY[0x1EEE9AC00](v53);
      *(&v56 - 6) = v55;
      *(&v56 - 5) = &v61;
      *(&v56 - 4) = a1;
      *(&v56 - 3) = &v62;
      *(&v56 - 2) = &v60;
      *(&v56 - 1) = v20;

      sub_1C446C37C(sub_1C4C50A68, (&v56 - 8));

      (*(v52 + 8))(v20, v14);
    }
  }

  else
  {
    v42 = sub_1C4F00968();
    sub_1C4F01CD8();
    v43 = sub_1C4407F80();
    if (os_log_type_enabled(v43, v44))
    {
      sub_1C43FD1A8();
      v45 = swift_slowAlloc();
      *v45 = 0;
      sub_1C441253C();
      _os_log_impl(v46, v47, v48, v49, v45, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    swift_allocError();
    return sub_1C43FE0B0(v50, 0xD00000000000001FLL);
  }
}

unint64_t sub_1C4C4FA0C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4428DA0();
  v25 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = a2 + 32;
  while (1)
  {
    result = *a1;
    if (*a1 >= v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (v25)
    {
      v14 = MEMORY[0x1C6940F90]();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_17;
    }

    v14 = *(v12 + 8 * result);

LABEL_7:
    v15 = *a3;
    *a3 = v14;

    v16 = *a4;
    v17 = *(a5 + 72);
    v26[0] = *(a5 + 56);
    v26[1] = v17;
    v27 = *(a5 + 88);
    v18 = sub_1C4CDFB34(v16, 0, v26, 0, 1);
    v20 = v19;
    v21 = v18;

    *a4 = v20;
    if (*(v21 + 16))
    {
      MEMORY[0x1EEE9AC00](v22);
      sub_1C45D9F98();
      if (!v24)
      {
        v10 = v23;
      }

      return v10;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_18;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1C4C4FBE4(uint64_t a1)
{
  sub_1C4C4F4A0(*(a1 + 64));
  if (!v1)
  {
    sub_1C4D0E5C0();
  }
}

uint64_t sub_1C4C4FC28(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = sub_1C4EFF1C8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (os_log_type_enabled(v20, v21))
    {
      sub_1C43FD1A8();
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Preprocess Objects: handleUpdate called.", v22, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4EF9E48();
    sub_1C43FCF64();
    sub_1C440BAA8(v23, v24, v25, v26);
    sub_1C4EFF1A8();
    sub_1C440BAA8(v11, 0, 1, v12);
    v43 = v15;
    v27 = *(v15 + 4);
    v44 = v12;
    v27(v49, v11, v12);
    v11 = *(a1 + 64);
    v47 = sub_1C4428DA0();
    if (!v47)
    {
      return (*(v43 + 1))(v49, v44);
    }

    v28 = 0;
    v29 = *(v48 + 72);
    v51[0] = *(v48 + 56);
    v51[1] = v29;
    v52 = *(v48 + 88);
    v46 = v11 & 0xC000000000000001;
    v45 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v46)
      {
        MEMORY[0x1C6940F90](v28, v11);
      }

      else
      {
        if (v28 >= *(v45 + 16))
        {
          goto LABEL_18;
        }

        v30 = *(v11 + 8 * v28 + 32);
      }

      v12 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();
      if (os_log_type_enabled(v31, v32))
      {
        sub_1C43FD1A8();
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C43F8000, v31, v32, "PreprocessObjectsView: KG or control source updated. Performing full rebuild and removing rejected associations.", v33, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v34 = sub_1C4CDFB34(0, 1, v51, 0, 1);
      v36 = v35;
      MEMORY[0x1EEE9AC00](v34);
      *(&v43 - 2) = v49;
      sub_1C45D9F98();
      v38 = v37;

      v39 = memcpy(__dst, (v48 + 16), sizeof(__dst));
      v15 = &v43;
      v40 = *(__dst[2] + 16);
      MEMORY[0x1EEE9AC00](v39);
      *(&v43 - 4) = __dst;
      *(&v43 - 3) = v38;
      *(&v43 - 2) = 0;
      *(&v43 - 1) = 0;
      sub_1C446C37C(sub_1C4C4D56C, (&v43 - 6));

      v41 = sub_1C4F00968();
      a1 = sub_1C4F01CF8();
      if (os_log_type_enabled(v41, a1))
      {
        sub_1C43FD1A8();
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C43F8000, v41, a1, "PreprocessObjectsView: Finished inserting triples.", v15, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C4CDF41C(v36);

      ++v28;
      if (v12 == v47)
      {
        return (*(v43 + 1))(v49, v44);
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1C44064A8();
    swift_once();
  }
}

uint64_t sub_1C4C50240@<X0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v30 = *a1;
  v31 = v6;
  v7 = *(a1 + 5);
  v32 = *(a1 + 4);
  v27 = *(a1 + 6);
  v28 = v7;
  v33 = *(a1 + 7);
  v25 = *(a1 + 9);
  v26 = *(a1 + 8);
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v10 = *(a1 + 12);
  v11 = *(a1 + 14);
  v12 = *(a1 + 16);
  v23 = *(a1 + 15);
  v24 = *(a1 + 13);
  v13 = *(a1 + 17);
  v21 = *(a1 + 145);
  v22 = *(a1 + 144);
  sub_1C4EFF168();
  v14 = sub_1C4EFF1B8();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v17 = v14;
    v18 = v15;

    v19 = v31;
    *a3 = v30;
    *(a3 + 16) = v19;
    *(a3 + 32) = v32;
    *(a3 + 40) = v28;
    v20 = v33;
    *(a3 + 48) = v27;
    *(a3 + 56) = v20;
    *(a3 + 64) = v26;
    *(a3 + 72) = v25;
    *(a3 + 80) = v8;
    *(a3 + 88) = v17;
    *(a3 + 96) = v18;
    *(a3 + 104) = v24;
    *(a3 + 112) = v11;
    *(a3 + 120) = v23;
    *(a3 + 128) = v12;
    *(a3 + 136) = v13;
    *(a3 + 144) = v22;
    *(a3 + 145) = v21;
    sub_1C487BE08(&v30, v29);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4C503A4(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0();
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 2:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0x7165527261656C63 && v7 == 0xED00006465726975)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

uint64_t sub_1C4C505C0()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v1 = *(__dst[2] + 16);
  v3[2] = __dst;
  return sub_1C446C37C(sub_1C4B7BCC4, v3);
}

uint64_t sub_1C4C50620(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0();
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 1:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0xD000000000000013 && 0x80000001C4F87C40 == v7)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

void sub_1C4C5082C(uint64_t a1)
{
  if (sub_1C4C503A4(a1))
  {
    sub_1C4C505C0();
    sub_1C4D0E478();
  }

  else if (sub_1C4C50620(a1))
  {
    sub_1C4C4F4A0(*(a1 + 64));
    if (!v1)
    {
      sub_1C4D0E5C0();
    }
  }

  else
  {
    sub_1C4C4FC28(a1);
  }
}

uint64_t sub_1C4C508A8()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C4AF9ADC(v2);
  return swift_deallocClassInstance();
}

uint64_t sub_1C4C50910(uint64_t a1)
{
  sub_1C4C5082C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C50988(uint64_t a1)
{
  sub_1C4C4FBE4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C50A00(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4C50A68(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  sub_1C4C4F96C(a1, v1[2]);
}

void *sub_1C4C50AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s10ViewConfigVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  swift_unownedRetainStrong();
  v14 = *(a4 + 16);

  sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

  if (!v5)
  {
    v21 = *&v13[*(v10 + 84)];
    if (v21)
    {
      swift_unownedRetainStrong();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ViewGeneration.ViewClients.storage(for:fullRebuild:)();

      sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
      if (swift_dynamicCast())
      {
        sub_1C445F57C(v13);
        memcpy(__dst, __src, sizeof(__dst));
        _s41RepresentationLearningSubsetViewGeneratorCMa();
        v14 = swift_allocObject();
        v14[2] = a5;
        memcpy(v14 + 3, __dst, 0x48uLL);
        v14[12] = v21;

        return v14;
      }

      v14 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = xmmword_1C4F5B670;
      *(v23 + 32) = 0xD000000000000025;
      *(v23 + 40) = 0x80000001C4FB83A0;
      *(v23 + 48) = v25;
      *(v23 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v14 = 0x80000001C4FBCA00;
      sub_1C450B034();
      swift_allocError();
      *v22 = 0xD00000000000001CLL;
      *(v22 + 8) = 0x80000001C4FBCA00;
      *(v22 + 16) = 0xD000000000000021;
      *(v22 + 24) = 0x80000001C4F87B50;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      *(v22 + 48) = *__src;
      *(v22 + 64) = 1;
      swift_willThrow();
    }

    sub_1C445F57C(v13);
  }

  return v14;
}

uint64_t sub_1C4C50DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C50AF8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

BOOL sub_1C4C50E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v11 = sub_1C457A9B4();
  if (v12)
  {
    v13 = *(*(a2 + 56) + 8 * v11);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C465CC6C(0, v13);

    if (v14)
    {
      v15 = a1 + *(a4(0) + 20);
      v26 = sub_1C4EFEB68();
      MEMORY[0x1EEE9AC00](v26);
      sub_1C4416D48();
      v17 = sub_1C44CE068(a5, v16, v14);

      if (v17)
      {
        return 0;
      }
    }
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = sub_1C457A9B4();
  if ((v19 & 1) == 0)
  {
    return 1;
  }

  v20 = *(*(a2 + 56) + 8 * v18);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = sub_1C465CC6C(1, v20);

  if (!v21)
  {
    return 1;
  }

  v22 = a1 + *(a4(0) + 28);
  v27 = sub_1C4EFEB68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4416D48();
  v24 = sub_1C44CE068(a6, v23, v21);

  return !v24;
}

uint64_t sub_1C4C5103C()
{
  v1 = v0;
  v2 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30[-v4];
  v6 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30[-v8];
  v36 = MEMORY[0x1E69E7CC0];
  v10 = *(v0 + 16);
  v11 = sub_1C4EFDE98();
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v11);
  v15 = sub_1C4EFD678();
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v15);
  v34 = v1;
  v35 = &v36;
  sub_1C4C44B94(v9, v5, sub_1C4C5191C, v33);
  sub_1C4423A0C(v5, &unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C4423A0C(v9, &qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v11);
  sub_1C43FCF64();
  sub_1C440BAA8(v22, v23, v24, v15);
  v31 = v1;
  v32 = &v36;
  sub_1C4C44BAC(v9, v5, sub_1C4C51924, v30);
  sub_1C4423A0C(v5, &unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C4423A0C(v9, &qword_1EC0BE4F0, &qword_1C4F37248);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDE2DF70);
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    swift_beginAccess();
    *(v28 + 4) = *(v36 + 16);
    _os_log_impl(&dword_1C43F8000, v26, v27, "Writing %ld rows to representation learning subset view", v28, 0xCu);
    MEMORY[0x1C6942830](v28, -1, -1);
  }

  memcpy(__dst, (v1 + 24), sizeof(__dst));
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BC7458();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C4C51358(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1C4C50E80(a1, *(a2 + 96), 0, type metadata accessor for GraphTriple, sub_1C4579E44, sub_1C4579E44))
  {
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F13950;
    v6 = sub_1C4EFF0C8();
    *(v5 + 56) = v6;
    *(v5 + 64) = sub_1C4C5192C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
    v7 = sub_1C4422F90((v5 + 32));
    (*(*(v6 - 8) + 16))(v7, a1, v6);
    v8 = type metadata accessor for GraphTriple(0);
    v9 = v8[5];
    v10 = sub_1C4EFEEF8();
    *(v5 + 96) = v10;
    v11 = sub_1C4C5192C(&qword_1EC0BFA10, MEMORY[0x1E69A9748]);
    *(v5 + 104) = v11;
    v12 = sub_1C4422F90((v5 + 72));
    v13 = *(*(v10 - 8) + 16);
    v13(v12, a1 + v9, v10);
    v14 = v8[6];
    v15 = sub_1C4EFF8A8();
    *(v5 + 136) = v15;
    *(v5 + 144) = sub_1C4C5192C(&qword_1EC0BFA38, MEMORY[0x1E69A99E8]);
    v16 = sub_1C4422F90((v5 + 112));
    (*(*(v15 - 8) + 16))(v16, a1 + v14, v15);
    v17 = v8[7];
    *(v5 + 176) = v10;
    *(v5 + 184) = v11;
    v18 = sub_1C4422F90((v5 + 152));
    v13(v18, a1 + v17, v10);
    v19 = (a1 + v8[8]);
    v21 = *v19;
    v20 = v19[1];
    v22 = MEMORY[0x1E69A0138];
    *(v5 + 216) = MEMORY[0x1E69E6158];
    *(v5 + 224) = v22;
    *(v5 + 192) = v21;
    *(v5 + 200) = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4588E94();
    v23 = *(*a3 + 16);
    sub_1C4589A7C();
    v24 = *a3;
    *(v24 + 16) = v23 + 1;
    *(v24 + 8 * v23 + 32) = v5;
  }

  return 1;
}

uint64_t sub_1C4C51628(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1C4C50E80(a1, *(a2 + 96), 1, type metadata accessor for EventTriple, sub_1C4579E44, sub_1C44CE790))
  {
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C4F13950;
    v6 = sub_1C4EFF0C8();
    *(v5 + 56) = v6;
    *(v5 + 64) = sub_1C4C5192C(&qword_1EDDFA1C8, MEMORY[0x1E69A9810]);
    v7 = sub_1C4422F90((v5 + 32));
    (*(*(v6 - 8) + 16))(v7, a1, v6);
    v8 = type metadata accessor for EventTriple(0);
    v9 = v8[5];
    v10 = sub_1C4EFEEF8();
    *(v5 + 96) = v10;
    v11 = sub_1C4C5192C(&qword_1EC0BFA10, MEMORY[0x1E69A9748]);
    *(v5 + 104) = v11;
    v12 = sub_1C4422F90((v5 + 72));
    v13 = *(*(v10 - 8) + 16);
    v13(v12, a1 + v9, v10);
    v14 = v8[6];
    v15 = sub_1C4EFF8A8();
    *(v5 + 136) = v15;
    *(v5 + 144) = sub_1C4C5192C(&qword_1EC0BFA38, MEMORY[0x1E69A99E8]);
    v16 = sub_1C4422F90((v5 + 112));
    (*(*(v15 - 8) + 16))(v16, a1 + v14, v15);
    v17 = v8[7];
    *(v5 + 176) = v10;
    *(v5 + 184) = v11;
    v18 = sub_1C4422F90((v5 + 152));
    v13(v18, a1 + v17, v10);
    v19 = (a1 + v8[8]);
    v21 = *v19;
    v20 = v19[1];
    v22 = MEMORY[0x1E69A0138];
    *(v5 + 216) = MEMORY[0x1E69E6158];
    *(v5 + 224) = v22;
    *(v5 + 192) = v21;
    *(v5 + 200) = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4588E94();
    v23 = *(*a3 + 16);
    sub_1C4589A7C();
    v24 = *a3;
    *(v24 + 16) = v23 + 1;
    *(v24 + 8 * v23 + 32) = v5;
  }

  return 1;
}

uint64_t sub_1C4C5192C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C4C51984(char a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
  sub_1C448DE08(&unk_1F43D2FE0);
  sub_1C49BF650(v15, v14);
  sub_1C4EF9CC8();
  if (a1)
  {
    sub_1C4EF9BE8();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v5 + 8);
  v17(v9, v2);
  sub_1C440BAA8(v13, v16, 1, v2);
  if (sub_1C44157D4(v13, 1, v2) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1C4EF9BF8();
    v17(v13, v2);
  }

  [v14 setFromDate_];

  return v14;
}

uint64_t sub_1C4C51B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s24ScoredTopicViewGeneratorCMa();
      result = swift_allocObject();
      *(result + 16) = v12;
      *(result + 24) = v13;
      *(result + 40) = v14;
      *(result + 48) = a5 & 1;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v11;
      *(v10 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4C51CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C51B5C(a1, a2, a3, *v3, *(v3 + 8));
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C51D70()
{
  v2 = v0;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1C4EF98F8();
  v4 = sub_1C43FCDF8(v3);
  v58 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
  v11 = sub_1C4C51984(*(v0 + 48));
  v12 = swift_allocObject();
  v12[2] = MEMORY[0x1E69E7CC0];
  aBlock[4] = sub_1C4C52714;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4575BB0;
  aBlock[3] = &unk_1F44053B0;
  v13 = _Block_copy(aBlock);

  v59 = v11;
  aBlock[0] = 0;
  LODWORD(v11) = [v10 iterRankedTopicsWithQuery:v11 error:aBlock block:v13];
  _Block_release(v13);
  if (v11)
  {
    v53 = v3;
    v54 = v9;
    v55 = v10;
    v14 = v2[2];
    v15 = v2[3];
    v17 = v2[4];
    v16 = v2[5];
    v18 = aBlock[0];
    v19 = v14;
    v56 = v15;
    v57 = v17;
    v20 = v17;
    v21 = v16;
    v22 = sub_1C4947630(v14, v15, v20);
    if (v1)
    {

      v23 = v55;
    }

    else
    {
      v30 = v22;
      v51 = v21;
      v52 = v14;
      if (qword_1EDDFECD0 != -1)
      {
        sub_1C44066DC();
      }

      v31 = sub_1C4F00978();
      sub_1C442B738(v31, qword_1EDE2DF70);

      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CF8();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v54;
      v23 = v55;
      if (v34)
      {
        v36 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v36 = 134218242;
        *(v36 + 4) = v30;
        *(v36 + 12) = 2080;
        v37 = *(v57 + 16);
        v49 = v32;
        v38 = v58;
        v39 = v53;
        (*(v58 + 16))(v35, v37 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v53);
        sub_1C44266D0();
        v48 = v33;
        v47 = sub_1C4F02858();
        v41 = v40;
        (*(v38 + 8))(v35, v39);
        v42 = sub_1C441D828(v47, v41, aBlock);

        *(v36 + 14) = v42;
        v32 = v49;
        _os_log_impl(&dword_1C43F8000, v49, v48, "writing %ld scored topic rows to %s", v36, 0x16u);
        v43 = v50;
        sub_1C440962C(v50);
        MEMORY[0x1C6942830](v43, -1, -1);
        MEMORY[0x1C6942830](v36, -1, -1);
      }

      v21 = v51;
      v19 = v52;
    }

    swift_beginAccess();
    v44 = v12[2];
    v45 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BC7440(v45, v19, v56, v57, v21);
  }

  else
  {
    v24 = aBlock[0];
    sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DF70);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Failed to retrieve topics from Portrait", v28, 2u);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    swift_willThrow();
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C4C52280(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0C890;
  v6 = [a1 item];
  v7 = [v6 topicIdentifier];

  v8 = sub_1C4F01138();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69A0138];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = v12;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  [a1 score];
  v13 = MEMORY[0x1E69A0168];
  *(v5 + 96) = MEMORY[0x1E69E63B0];
  *(v5 + 104) = v13;
  *(v5 + 72) = v14;
  v15 = [a1 item];
  v16 = [v15 mostRelevantRecord];

  if (!v16)
  {
    v22 = (v5 + 112);
    *(v5 + 136) = v11;
    *(v5 + 144) = v12;
    goto LABEL_5;
  }

  v17 = [v16 source];

  v18 = [v17 documentId];
  v19 = sub_1C4F01138();
  v21 = v20;

  v22 = (v5 + 112);
  *(v5 + 136) = v11;
  *(v5 + 144) = v12;
  if (!v21)
  {
LABEL_5:
    *v22 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v22 = v19;
LABEL_6:
  *(v5 + 120) = v21;
  swift_beginAccess();
  sub_1C4588E94();
  v23 = *(*(a3 + 16) + 16);
  sub_1C4589A7C();
  v24 = *(a3 + 16);
  *(v24 + 16) = v23 + 1;
  *(v24 + 8 * v23 + 32) = v5;
  *(a3 + 16) = v24;
  return swift_endAccess();
}

uint64_t sub_1C4C5248C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ScoredTopicView(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4C525EC()
{
  result = qword_1EC0C5038;
  if (!qword_1EC0C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5038);
  }

  return result;
}

uint64_t sub_1C4C52640()
{
  sub_1C4C51D70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C526B8()
{
  sub_1C4C51D64();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C5271C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4C52758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C4C527DC(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1C4C52AD8(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);
      sub_1C44025B0();
      return sub_1C4460468();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C52858(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1C4F02528();

    return v10;
  }

  v4 = sub_1C4428DA0();
  v5 = sub_1C4C52AD8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1C4C5A9F0(0, a2);
  sub_1C4C5A9F0(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1C4461BB8(0, &qword_1EDDF05C0, 0x1E698EF28);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1C4F02288();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1C4C529A0(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1C4F02528();

    return v10;
  }

  v4 = sub_1C4428DA0(a2);
  v5 = sub_1C4C52AD8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1C4C5A9F0(0, a2);
  sub_1C4C5A9F0(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    _s12JobSchedulerC10JobTrackerCMa(0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1C4F02288();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1C4C52AD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C4C52B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  sub_1C4C5ACD4(a1, a2, __src);

  if (!v4)
  {
    _s26SiriRemembersViewGeneratorCMa();
    a4 = swift_allocObject();
    sub_1C4C52C68(__src);
  }

  return a4;
}

uint64_t sub_1C4C52BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C52B24(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C52C68(void *__src)
{
  v2 = v1;
  *(v1 + 144) = 15;
  v5 = __src[2];
  v4 = __src[3];
  v14 = *__src;
  v13 = v4;
  *(v2 + 104) = v14;
  *(v2 + 120) = v5;
  *(v2 + 128) = v4;
  memcpy((v2 + 16), __src, 0x58uLL);
  _s26SiriRemembersViewGeneratorC11GuardedDataCMa();
  sub_1C43FBDBC();
  v6 = swift_allocObject();
  v7 = sub_1C4EFD8C8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C448DB48(&v14, v12);

  sub_1C4C5AB98(&v13, v12, &qword_1EC0BB018, qword_1C4F50870);
  sub_1C4C5ABF8(__src, v12);
  *(v6 + 16) = sub_1C4EFD8B8();
  sub_1C456902C(&unk_1EC0C5080, qword_1C4F5F490);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v6;
  sub_1C4C5AC54(__src);
  *(v2 + 136) = v10;
  return v2;
}

uint64_t sub_1C4C52D80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(*(v0 + 120) + 16);
  v6[2] = v1;
  v6[3] = v2;
  v7 = v3;
  return sub_1C446C37C(sub_1C4B18820, v6);
}

uint64_t sub_1C4C52DD8()
{
  v1 = v0;
  v2 = sub_1C4EF98F8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = objc_opt_self();
  v12 = v1[15];
  (*(v5 + 16))(v10, *(v12 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  sub_1C4EF98E8();
  (*(v5 + 8))(v10, v2);
  v13 = sub_1C4F01108();

  [v11 truncateDatabaseAtPath_];

  v14 = v1[16];
  return sub_1C4B16DCC(v1[13], v1[14], v12);
}

uint64_t sub_1C4C52F30(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1C4F018C8();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1C4F00978();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4C53070, 0, 0);
}

uint64_t sub_1C4C534BC()
{
  v0 = sub_1C4F018C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4F00978();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00178();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    sub_1C4F01958();
    sub_1C4C5AB40(&qword_1EDDFA5E8, MEMORY[0x1E69E85F0]);
    v15 = sub_1C4F02858();
    v16 = v0;
    v18 = v17;
    (*(v1 + 8))(v4, v16);
    v19 = sub_1C441D828(v15, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1C43F8000, v10, v11, "SiriRemembersViewGenerator: performUpdate: priority at end current = %s.", v13, 0xCu);
    sub_1C440962C(v14);
    MEMORY[0x1C6942830](v14, -1, -1);
    MEMORY[0x1C6942830](v13, -1, -1);

    return (*(v6 + 8))(v9, v21);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1C4C5375C(uint64_t a1)
{
  v10 = 0;
  v3 = *(*(v1 + 120) + 16);
  v9[2] = a1;
  v9[4] = &v10;

  sub_1C446C37C(sub_1C4C5A9D0, v9);

  if (v10)
  {
    sub_1C4F01828();
    sub_1C4C5AB40(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    sub_1C43FFC70();
    sub_1C4F00EA8();
    return swift_willThrow();
  }

  else
  {
    v5 = *(a1 + 72);
    result = sub_1C4428DA0();
    if (result)
    {
      v6 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C6940F90](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          sub_1C4CBF8F8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4C538B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v66 = a2;
  v67 = a3;
  v71 = sub_1C4F00978();
  v7 = sub_1C43FCDF8(v71);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v69 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  sub_1C4F00178();
  v19 = sub_1C4F00968();
  sub_1C4F01CC8();
  v20 = sub_1C44016D0();
  if (os_log_type_enabled(v20, v21))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C446C0D0(&dword_1C43F8000, v22, v23, "SiriRemembersViewGenerator: checking for any stream pruning");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v70 = *(v9 + 8);
  v70(v18, v71);
  sub_1C4441C50(*(a1 + 33));
  if (v25 == 0x676E616843736168 && v24 == 0xEA00000000007365)
  {
  }

  else
  {
    v27 = sub_1C4F02938();

    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  v29 = sub_1C4CC05C4();
  v30 = v15;
  v32 = v31;
  v33 = v29;
  v34 = sub_1C4450454();
  v36 = v35;
  v37 = v34;
  sub_1C4F00178();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v68 = v30;
  v38 = sub_1C4F00968();
  v39 = sub_1C4F01CC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v40 = os_log_type_enabled(v38, v39);
  v64 = a1;
  v65 = v5;
  if (v40)
  {
    sub_1C43FEC60();
    v41 = swift_slowAlloc();
    sub_1C43FEC60();
    v42 = swift_slowAlloc();
    v63 = v4;
    v43 = v42;
    v72 = v42;
    *v41 = 136315650;
    v44 = sub_1C4CC0B10();
    v46 = v36;
    v47 = sub_1C441D828(v44, v45, &v72);

    *(v41 + 4) = v47;
    v36 = v46;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v33;
    *(v41 + 22) = 2048;
    *(v41 + 24) = v37;
    _os_log_impl(&dword_1C43F8000, v38, v39, "SiriRemembersViewGenerator: %s: timestamps: %f , %f", v41, 0x20u);
    sub_1C440962C(v43);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v70(v68, v71);
  v48 = v69;
  if (v33 == v37)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    v68 = v32;
    sub_1C4F00178();
    v49 = v64;

    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CF8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = sub_1C440F274();
      sub_1C43FEC60();
      v53 = swift_slowAlloc();
      v63 = v36;
      v54 = v53;
      v72 = v53;
      *v52 = 136315394;
      v55 = sub_1C4CC0B10();
      v57 = sub_1C441D828(v55, v56, &v72);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v37;
      _os_log_impl(&dword_1C43F8000, v50, v51, "SiriRemembersViewGenerator: %s has been pruned, new first timestamp is %f", v52, 0x16u);
      sub_1C440962C(v54);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v58 = v69;
    }

    else
    {

      v58 = v48;
    }

    v70(v58, v71);
    v59 = v49[20];
    v60 = v49[21];
    v61 = v49[22];
    sub_1C44505F8(v49[19]);
    sub_1C4C53D4C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1C4C53D4C()
{
  sub_1C43FE628();
  v70 = v1;
  v71 = v2;
  v3 = v0;
  v62 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v59 - v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFBC98();
  v17 = sub_1C43FCDF8(v16);
  v68 = v18;
  v69 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v67 = v22 - v21;
  sub_1C43FBE44();
  v23 = sub_1C4EFB678();
  v24 = sub_1C43FCDF8(v23);
  v65 = v25;
  v66 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v64 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v59 - v30;
  v32 = sub_1C4F00978();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CC8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = sub_1C440F274();
    v61 = v3;
    v44 = v43;
    sub_1C43FEC60();
    v45 = swift_slowAlloc();
    v60 = v32;
    v46 = v8;
    v47 = v10;
    v48 = v45;
    v72[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_1C441D828(v47, v46, v72);
    *(v44 + 12) = 2048;
    *(v44 + 14) = v6;
    _os_log_impl(&dword_1C43F8000, v41, v42, "SiriRemembersViewGenerator: deleteAllInteractions: from %s before %f", v44, 0x16u);
    sub_1C440962C(v48);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (*(v35 + 8))(v40, v60);
  }

  else
  {

    (*(v35 + 8))(v40, v32);
  }

  v49 = sub_1C4EFD848();
  v51 = v50;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v72[0] = v49;
  v72[1] = v51;
  sub_1C4415EA8();
  sub_1C4EFB668();

  sub_1C4EFB638();
  v72[3] = MEMORY[0x1E69E63B0];
  v72[4] = MEMORY[0x1E69A0160];
  v72[0] = v6;
  sub_1C4EFB658();
  sub_1C4C5AAE8(v72, &qword_1EC0C5040);
  sub_1C4EFB638();
  (*(v65 + 32))(v64, v31, v66);
  v52 = v67;
  sub_1C4EFBC88();
  v53 = v70;
  sub_1C4EFBEE8();
  if (v53)
  {
    (*(v68 + 8))(v52, v69);
  }

  else
  {
    (*(v68 + 8))(v52, v69);
    sub_1C4EFB768();
    v54 = v63;
    sub_1C43FCF64();
    sub_1C440BAA8(v55, v56, v57, v58);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v54, &unk_1EC0C06C0);

    sub_1C4C5A0F0(v62);
  }

  sub_1C44109F8();
}

void *sub_1C4C541E8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];
  v5 = v0[9];
  v6 = v0[11];

  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[16];

  v10 = v0[17];

  return v0;
}

uint64_t sub_1C4C5427C()
{
  sub_1C4C541E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C542D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C4C52F30(a1);
}

void sub_1C4C54368(uint64_t a1, uint64_t a2)
{
  v8 = *(v3 + 88);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_11:
    sub_1C44066DC();
    goto LABEL_5;
  }

  v2 = v4;
  v7 = v3;
  v5 = a2;
  v6 = a1;
  *(v3 + 88) = v10;
  if (*(v3 + 64) || v10 < 301)
  {
LABEL_8:
    v15 = *(v7 + 16);
    sub_1C4B8BF6C(v6, v5);
    return;
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v13))
  {
    sub_1C43FECF0();
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = 300;
    _os_log_impl(&dword_1C43F8000, v12, v13, "SiriRemembersViewGenerator: Hit id change count limit of %ld", v14, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4C544A4();
  if (!v2)
  {
    goto LABEL_8;
  }
}

void sub_1C4C544A4()
{
  if (!v0[8])
  {
    v2 = v0;
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DF70);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v5))
    {
      sub_1C43FD1A8();
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v4, v5, "SiriRemembersViewGenerator: Dropping indexes", v6, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v7 = v2[3];
    v8 = v2[4];
    v9 = v2[5];
    v10 = v2[6];
    v11 = v2[7];
    sub_1C4B17324();
    if (!v1)
    {
      v15 = v2[8];
      v16 = v2[9];
      v17 = v2[10];
      v2[8] = v12;
      v2[9] = v13;
      v2[10] = v14;
      sub_1C4C5AA48(v15);
    }
  }
}

void sub_1C4C545B4()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0;
    v3 = v0[9];
    v4 = v0[10];
    v5 = qword_1EDDFECD0;
    v6 = v0[8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v5 != -1)
    {
      sub_1C44066DC();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DF70);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v9))
    {
      sub_1C43FD1A8();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "SiriRemembersViewGenerator: Restoring indexes", v10, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4B17950(v2[7], v1, v3, v4, v2[3], v2[4], v2[5], v2[6]);
  }
}

void *sub_1C4C546F0()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];
  v7 = v0[10];
  sub_1C4C5AA48(v0[8]);
  return v0;
}

uint64_t sub_1C4C54750()
{
  sub_1C4C546F0();

  return swift_deallocClassInstance();
}

void sub_1C4C547A8(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v79 = a4;
  v8 = sub_1C4F00978();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v67 - v14;
  v87 = a2;
  v15 = *(a2 + 56);
  v16 = *(v15 + 96);
  if (v16 >> 60 == 15)
  {
    v17 = 0.0;
    v78 = v8;
    v18 = 0.0;
  }

  else
  {
    v19 = *(v15 + 88);
    sub_1C44344B8(v19, *(v15 + 96));
    sub_1C44F9344(v19, v16);
    if (v4)
    {
      return;
    }

    v78 = v8;
    v17 = v20;
    v18 = v21;
  }

  v22 = *(a3 + 64);
  v85[0] = *(a3 + 48);
  v85[1] = v22;
  v85[2] = *(a3 + 80);
  v86 = *(a3 + 96);
  _s23UpdatedObjectDiffWriterCMa();
  swift_allocObject();
  sub_1C4B8CE5C(v85, v84);

  sub_1C4B8B458();
  if (!v4)
  {
    v24 = v23;
    v69 = v18;
    v67 = v17;
    v68 = v16 >> 60;
    v70 = v15;
    v71 = 0;
    v25 = *(a3 + 104);
    v26 = *(a3 + 112);
    v28 = *(a3 + 120);
    v27 = *(a3 + 128);
    v75 = a3;
    _s26SiriRemembersViewGeneratorC11DiffTrackerCMa();
    v29 = swift_allocObject();
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v29 + 16) = v24;
    *(v29 + 24) = v25;
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    *(v29 + 48) = v27;
    *(v29 + 56) = a1;
    v77 = v29;
    v30 = *(v87 + 72);
    v31 = v24;
    v32 = sub_1C4428DA0();
    v33 = v30 & 0xC000000000000001;
    v73 = 0x80000001C4F862C0;
    v72 = 0x80000001C4F86260;
    v76 = a1;

    v74 = v31;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; v32 != i; ++i)
    {
      if (v33)
      {
        v27 = MEMORY[0x1C6940F90](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v27 = *(v30 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v83 = v27;

        goto LABEL_43;
      }

      if (*(v27 + 32) == 1)
      {
        switch(*(v27 + 72))
        {
          case 3:
            v35 = &v88;
            goto LABEL_17;
          case 4:

            goto LABEL_34;
          case 0xA:
            v35 = &v89;
LABEL_17:
            v36 = *(v35 - 32);
            goto LABEL_18;
          default:
LABEL_18:
            v37 = sub_1C4F02938();

            if ((v37 & 1) == 0)
            {
              continue;
            }

LABEL_34:
            v43 = v81;
            sub_1C4F00178();
            v44 = sub_1C4F00968();
            v48 = sub_1C4F01CF8();
            if (os_log_type_enabled(v44, v48))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_1C43F8000, v44, v48, "SiriRemembersViewGenerator: performUpdate: weekly schedule full rebuild", v46, 2u);
              LOBYTE(v32) = 1;
              v33 = v71;
              v41 = v78;
              goto LABEL_36;
            }

            LOBYTE(v32) = 1;
            v33 = v71;
            v41 = v78;
            break;
        }

LABEL_38:
        v49 = v83;

        (*(v49 + 8))(v43, v41);
        _s26SiriRemembersViewGeneratorC16CachedStatementsCMa();
        v27 = swift_allocObject();

        v30 = v27;
        sub_1C4C5A5D8();
        if (v33)
        {
LABEL_39:

          return;
        }

        if (v32)
        {
          v50 = *(v75 + 136);
          os_unfair_lock_lock(v50 + 6);
          sub_1C4C55290(&v50[4]);
          os_unfair_lock_unlock(v50 + 6);
          sub_1C4C544A4();
          sub_1C4B8B8EC();
          v33 = 0;
          sub_1C448DE08(&unk_1F43DD040);
          v30 = v76;
          sub_1C46A9F14(v58);
          goto LABEL_81;
        }

        v83 = v27;
LABEL_43:
        v51 = *(v87 + 80);
        v52 = sub_1C4428DA0();
        if (!v52)
        {
LABEL_67:
          sub_1C4C545B4();
          v59 = v69;
          if (!v33)
          {
            sub_1C4B8BB5C();
            if (v68 <= 0xE && v60 == v67 && v61 == v59)
            {

              *(v70 + 34) = 1;
            }

            else
            {
              v64 = sub_1C44F95AC(v60, v61);
              v66 = v65;
              sub_1C4CCDA9C(v64, v65);

              sub_1C4434000(v64, v66);
            }

            return;
          }

          goto LABEL_39;
        }

        v53 = v52;
        v54 = 0;
        v87 = v51 & 0xC000000000000001;
        v81 = 0x80000001C4F87C40;
        v82 = (v51 & 0xFFFFFFFFFFFFFF8);
        v80 = 0x80000001C4F87C20;
        v78 = 0xD000000000000010;
        while (2)
        {
          if (v87)
          {
            v55 = MEMORY[0x1C6940F90](v54, v51);
          }

          else
          {
            if (v54 >= *(v82 + 2))
            {
              goto LABEL_84;
            }

            v55 = *(v51 + 8 * v54 + 32);
          }

          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            os_unfair_lock_unlock((v30 + 24));
            __break(1u);
            return;
          }

          if ((v32 & 1) == 0)
          {
            if (v55[32] != 1)
            {
              goto LABEL_62;
            }

            v30 = 0xED00006465726975;
            switch(v55[33])
            {
              case 1:
                v30 = v81;
                break;
              case 2:
                break;
              case 3:
                v30 = 0xEA00000000007365;
                break;
              case 4:

                goto LABEL_62;
              default:
                v30 = v80;
                break;
            }

            v57 = sub_1C4F02938();

            if (v57)
            {
LABEL_62:
              v55[34] = 1;
              goto LABEL_63;
            }
          }

          v30 = v75;
          sub_1C4C553F8();
          if (v33)
          {

            goto LABEL_39;
          }

          if (v32)
          {
LABEL_63:
          }

          else
          {
            v30 = sub_1C4F01948();

            if (v30)
            {
              *v79 = 1;
              goto LABEL_67;
            }
          }

          ++v54;
          if (v56 == v53)
          {
            goto LABEL_67;
          }

          continue;
        }
      }
    }

    sub_1C4441C50(*(v70 + 33));
    v40 = v39 == 0xD000000000000013 && 0x80000001C4F87C40 == v38;
    v41 = v78;
    if (v40)
    {

      v33 = v71;
      v43 = v82;
    }

    else
    {
      v42 = sub_1C4F02938();

      v33 = v71;
      v43 = v82;
      if ((v42 & 1) == 0)
      {
        v43 = v80;
        sub_1C4F00178();
        v44 = sub_1C4F00968();
        v45 = sub_1C4F01CF8();
        if (!os_log_type_enabled(v44, v45))
        {
          LOBYTE(v32) = 0;
          goto LABEL_38;
        }

        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1C43F8000, v44, v45, "SiriRemembersViewGenerator: performUpdate: incremental update", v46, 2u);
        LOBYTE(v32) = 0;
        goto LABEL_36;
      }
    }

    sub_1C4F00178();
    v44 = sub_1C4F00968();
    v47 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v44, v47))
    {
      LOBYTE(v32) = 1;
      goto LABEL_38;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1C43F8000, v44, v47, "SiriRemembersViewGenerator: performUpdate: control source full rebuild", v46, 2u);
    LOBYTE(v32) = 1;
LABEL_36:
    MEMORY[0x1C6942830](v46, -1, -1);
    goto LABEL_38;
  }
}

uint64_t sub_1C4C55290(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00178();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "SiriRemembersViewGenerator: performUpdate: fullCoverage = true", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(*a1 + 16);

  sub_1C4EFD8A8();
}

void sub_1C4C553F8()
{
  sub_1C4C55464();
  if (!v0)
  {
    v2 = v1;
    if (v1 && (sub_1C4F01948() & 1) != 0)
    {
      sub_1C4CC06D4(v2);
    }

    else
    {
      sub_1C444D5B8(v2);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C4C55464()
{
  sub_1C43FE628();
  v90 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v79 = v9;
  v11 = v10;
  v12 = sub_1C4EF9CD8();
  v13 = sub_1C43FCDF8(v12);
  v76 = v14;
  v77 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v75 = v18 - v17;
  sub_1C43FBE44();
  v19 = sub_1C4F00978();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v78 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v82 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v80 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v72 - v31;
  v33 = *(v11 + 192);
  v84 = *(v11 + 184);
  v87 = v33;
  v34 = *(v11 + 160);
  v35 = *(v11 + 168);
  v36 = *(v11 + 176);
  v81 = sub_1C44505F8(*(v11 + 152));
  v88 = v22;
  v89 = v37;
  v38 = *(v11 + 136);
  v83 = v38;
  if (!v38)
  {
    v74 = [objc_opt_self() platform];
LABEL_5:
    sub_1C4CC0AAC();
    v42 = v6;
    if (v4)
    {
      v43 = v87;
      swift_unknownObjectRelease();
      v85 = 0;
LABEL_7:
      v44 = v82;
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v45 = sub_1C4F00968();
      v46 = sub_1C4F01CB8();

      v47 = os_log_type_enabled(v45, v46);
      v72[1] = v42;
      if (v47)
      {
        sub_1C43FECF0();
        v48 = swift_slowAlloc();
        v73 = v2;
        v49 = v48;
        sub_1C43FEC60();
        v50 = v8;
        v51 = swift_slowAlloc();
        v91[0] = v51;
        *v49 = 136315138;
        *(v49 + 4) = sub_1C441D828(v84, v43, v91);
        _os_log_impl(&dword_1C43F8000, v45, v46, "SiriRemembersViewGenerator: processStream %s", v49, 0xCu);
        sub_1C440962C(v51);
        v8 = v50;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C442EDAC();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      (*(v88 + 8))(v44, v19);
      v52 = objc_autoreleasePoolPush();
      v53 = v90;
      v54 = sub_1C4C6C820();
      if (!v53)
      {
        v55 = v54;
        sub_1C4C55F18(v54, v85, v84, v87, v81, v89, v83 == 0, v74, v79, v8);

        objc_autoreleasePoolPop(v52);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v52);
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v85 = v41;
    v56 = v90;
    sub_1C4C538B0(v11, v8, v6);
    if (v56)
    {

      goto LABEL_14;
    }

    v73 = v2;
    sub_1C4441C50(*(v11 + 33));
    if (v63 == 0xD000000000000013 && 0x80000001C4F87C40 == v62)
    {

      v43 = v87;
    }

    else
    {
      v2 = sub_1C4F02938();

      v43 = v87;
      if ((v2 & 1) == 0)
      {
        v90 = 0;
        sub_1C442EDAC();
        goto LABEL_7;
      }
    }

    v86 = v19;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v65 = sub_1C4F00968();
    v2 = sub_1C4F01CF8();

    if (os_log_type_enabled(v65, v2))
    {
      sub_1C43FECF0();
      v66 = swift_slowAlloc();
      v90 = v8;
      v67 = v66;
      sub_1C43FEC60();
      v68 = swift_slowAlloc();
      v91[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_1C441D828(v84, v43, v91);
      _os_log_impl(&dword_1C43F8000, v65, v2, "SiriRemembersViewGenerator: processStream %s: processing tombstones", v67, 0xCu);
      sub_1C440962C(v68);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v8 = v90;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v88 + 8))(v80, v86);
    sub_1C442EDAC();
    sub_1C4C55C7C(v69, v70, v71);
    v90 = 0;
    v19 = v86;
    v43 = v87;
    goto LABEL_7;
  }

  v86 = v19;
  v91[3] = &_s24SiriInferenceFeatureFlagON;
  v91[4] = sub_1C4C5A97C();
  LOBYTE(v91[0]) = 1;
  v39 = v38;
  v40 = sub_1C4EFA738();
  sub_1C440962C(v91);
  if (v40)
  {
    v74 = [v39 platform];

    v19 = v86;
    goto LABEL_5;
  }

  sub_1C4F00178();
  v57 = sub_1C4F00968();
  sub_1C4F01CF8();
  v58 = sub_1C44016D0();
  if (os_log_type_enabled(v58, v59))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C446C0D0(&dword_1C43F8000, v60, v61, "SiriRemembersViewGenerator: processStream: ignoring remote stream since siriRemembersPrivateDeviceSync feature flag is disabled.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v88 + 8))(v32, v86);
LABEL_18:
  sub_1C44109F8();
}

uint64_t sub_1C4C55C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = a3[23];
  v9 = a3[24];
  v10 = sub_1C4F01108();
  v12 = a3[17];
  v11 = a3[18];
  v37[0] = 0;
  v13 = [v7 deletedEventTimestampsForStream:v10 account:v11 device:v12 bookmark:sub_1C4CC064C() error:v37];

  swift_unknownObjectRelease();
  v14 = v37[0];
  if (v13)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v15 = sub_1C4F01678();
    v16 = v14;

    v17 = a3[20];
    v18 = a3[21];
    v19 = a3[22];
    sub_1C44505F8(a3[19]);
    v21 = v20;
    v22 = sub_1C4428DA0();
    if (v22)
    {
      v23 = v22;
      v37[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D100();
      if (v23 < 0)
      {
        __break(1u);
      }

      v34 = v21;
      v35 = v5;
      v36 = v4;
      v24 = 0;
      v25 = v37[0];
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1C6940F90](v24, v15);
        }

        else
        {
          v26 = *(v15 + 8 * v24 + 32);
        }

        v27 = v26;
        [v26 doubleValue];
        v29 = v28;

        v37[0] = v25;
        v30 = v25[2];
        if (v30 >= v25[3] >> 1)
        {
          sub_1C459D100();
          v25 = v37[0];
        }

        ++v24;
        v25[2] = v30 + 1;
        v25[v30 + 4] = v29;
      }

      while (v23 != v24);
    }

    sub_1C4C59768();
  }

  else
  {
    v31 = v37[0];
    sub_1C4EF97A8();

    result = swift_willThrow();
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1C4C55F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FBDBC();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  v31 = objc_autoreleasePoolPush();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v12;
  v38 = sub_1C4C5AA94;
  v39 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C4442530;
  v37 = &unk_1F4405500;
  v25 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C43FBDBC();
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1C43FBDBC();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = v27;
  *(v18 + 40) = a7;
  *(v18 + 48) = a8;
  *(v18 + 56) = a10;
  *(v18 + 64) = a5;
  *(v18 + 72) = a6;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = v13;
  v38 = sub_1C4C5AAA0;
  v39 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C462BCF4;
  v37 = &unk_1F44055A0;
  v19 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v20 = [a1 drivableSinkWithBookmark:a2 completion:v25 shouldContinue:v19];
  _Block_release(v19);
  _Block_release(v25);

  objc_autoreleasePoolPop(v31);
  swift_beginAccess();
  v21 = *(v13 + 16);
  if (v21)
  {
    v22 = *v14;
    swift_willThrow();
    v23 = v21;
  }

  else
  {
    swift_beginAccess();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
  }

  return v14;
}

uint64_t sub_1C4C56238(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1C4F00978();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v36[-1] - v17;
  if ([a1 state] == 1)
  {
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = a1;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v35 = v10;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_1C441D828(a3, a4, v36);
      *(v22 + 12) = 2112;
      v25 = [v19 error];
      if (v25)
      {
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      *(v22 + 14) = v25;
      *v23 = v26;
      _os_log_impl(&dword_1C43F8000, v20, v21, "SiriRemembersViewGenerator: failed to update from %s. Error: %@", v22, 0x16u);
      sub_1C4C5AAE8(v23, &qword_1EC0BDA00);
      MEMORY[0x1C6942830](v23, -1, -1);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);

      return (*(v11 + 8))(v18, v35);
    }

    else
    {

      return (*(v11 + 8))(v18, v10);
    }
  }

  else
  {
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35 = v10;
      v30 = a3;
      v31 = v29;
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1C441D828(v30, a4, v36);
      _os_log_impl(&dword_1C43F8000, v27, v28, "SiriRemembersViewGenerator: finished update from %s", v31, 0xCu);
      sub_1C440962C(v32);
      MEMORY[0x1C6942830](v32, -1, -1);
      MEMORY[0x1C6942830](v31, -1, -1);

      (*(v11 + 8))(v14, v35);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    swift_beginAccess();
    v34 = *(a5 + 16);
    *(a5 + 16) = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }
}

id sub_1C4C565EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v53 = a4;
  v14 = sub_1C4F00978();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v21 = Strong;
  swift_beginAccess();
  v50 = swift_weakLoadStrong();
  if (!v50)
  {

LABEL_34:
    v33 = 0;
    return (v33 & 1);
  }

  v48 = v14;
  v49 = v15;
  v45 = a10;
  v46 = a9;
  v47 = a11;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C56E74(v23, a5 & 1, a6, v21, v51, v52, v46, v50);
LABEL_33:
        swift_unknownObjectRelease();
LABEL_42:
        v44 = sub_1C4F01948();

        v33 = v44 ^ 1;
        return (v33 & 1);
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C56F98(v26, a5 & 1, a6, v21, v51, v52, v46, v50);
        goto LABEL_33;
      }

      goto LABEL_45;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C570BC(v28, a5 & 1, a6, v21, v51, v52, v46, v50);
        goto LABEL_33;
      }

      goto LABEL_46;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      result = [a1 respondsToSelector_];
      if (result)
      {
        [a1 timestamp];
        sub_1C4C571E0(v30, a5 & 1, a6, v21, v51, v52, v46, v50);
        goto LABEL_33;
      }

      goto LABEL_47;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_eventBody))
  {
LABEL_36:
    sub_1C4F00178();
    v34 = v47;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_unknownObjectRetain();
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CE8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_1C441D828(v45, v34, v54);
      *(v37 + 12) = 2080;
      if ([a1 respondsToSelector_])
      {
        v39 = [a1 eventBody];
      }

      else
      {
        v39 = 1;
      }

      v40 = v49;
      v54[4] = v39;
      sub_1C456902C(&unk_1EC0C5048, &unk_1C4F5F400);
      v41 = sub_1C4F01198();
      v43 = sub_1C441D828(v41, v42, v54);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1C43F8000, v35, v36, "SiriRemembersViewGenerator: receiveInput error: unknown event body in %s: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v38, -1, -1);
      MEMORY[0x1C6942830](v37, -1, -1);

      (*(v40 + 8))(v19, v48);
    }

    else
    {

      (*(v49 + 8))(v19, v48);
    }

    goto LABEL_42;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v32 = v31;
  result = [a1 respondsToSelector_];
  if (result)
  {
    [a1 timestamp];
    sub_1C4C57304(v32, a5 & 1, a6, v21, v51, v52, v46, v50);
    goto LABEL_33;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_1C4C57428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v386 = v21;
  v380 = v24;
  v381 = v25;
  v358 = v26;
  v387 = v27;
  *&v371 = v28;
  v376 = v29;
  v355 = v30;
  v32 = v31;
  v353 = sub_1C4EFD888();
  v33 = sub_1C43FCDF8(v353);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v356 = v39 - v38;
  sub_1C43FBE44();
  v40 = sub_1C4EFD968();
  v41 = sub_1C43FCDF8(v40);
  v354 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v374 = v48;
  v49 = sub_1C456902C(&qword_1EC0C5068, &qword_1C4F5F410);
  v50 = sub_1C43FBD18(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD230();
  v378 = v55;
  sub_1C43FBE44();
  v366 = sub_1C4EF9CD8();
  v56 = sub_1C43FCDF8(v366);
  v361 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD230();
  v359 = v64;
  sub_1C43FBE44();
  v385 = sub_1C4F00978();
  v65 = sub_1C43FCDF8(v385);
  v382 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FD230();
  v369 = v73;
  v74 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v75 = sub_1C43FBD18(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v334 - v83;
  v85 = sub_1C456902C(&unk_1EC0C5070, qword_1C4F5F418);
  v86 = sub_1C43FBD18(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v388 = &v334 - v89;
  sub_1C43FBE44();
  v90 = sub_1C4EFB768();
  v91 = sub_1C43FCDF8(v90);
  v93 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBCC4();
  v98 = v97 - v96;
  v99 = sub_1C4EFD838();
  v100 = sub_1C43FCDF8(v99);
  v383 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v100);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v105);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FD230();
  v384 = v107;
  v379 = v32;
  v108 = sub_1C45B1F9C(v32, &selRef_identifier);
  if (!v109)
  {
    v123 = sub_1C4EFD6D8();
    sub_1C441A8B8();
    sub_1C4C5AB40(v124, v125);
    sub_1C43FFC70();
    sub_1C43FBDF0();
    *v126 = 0xD000000000000025;
    v126[1] = v127;
    v128 = *MEMORY[0x1E69A9340];
    sub_1C440A6B8(v123);
    (*(v129 + 104))();
    swift_willThrow();
    goto LABEL_93;
  }

  v110 = v109;
  *&v350 = v35;
  v351 = v40;
  v111 = v387[2];
  v112 = v108;
  v113 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1C4F0D130;
  v115 = MEMORY[0x1E69A0138];
  *(v114 + 56) = MEMORY[0x1E69E6158];
  *(v114 + 64) = v115;
  *(v114 + 32) = v112;
  *(v114 + 40) = v110;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  (*(v93 + 8))(v98, v90);
  sub_1C43FCF64();
  sub_1C440BAA8(v116, v117, v118, v90);
  sub_1C43FF80C();
  sub_1C4C5AB40(v119, v120);
  sub_1C440BFD0();
  v121 = v386;
  sub_1C4EFB408();
  v122 = v121;
  if (v121)
  {

    sub_1C4C5AAE8(&v392, &unk_1EC0BC770);
    sub_1C4C5AAE8(v84, &unk_1EC0C06C0);
LABEL_93:
    sub_1C44109F8();
    return;
  }

  v130 = v99;
  v346 = v112;
  v386 = v113;
  v348 = v90;
  v131 = a21;
  sub_1C4C5AAE8(&v392, &unk_1EC0BC770);
  sub_1C4C5AAE8(v84, &unk_1EC0C06C0);
  v132 = sub_1C44157D4(v388, 1, v99);
  v133 = MEMORY[0x1E69A0168];
  v349 = v99;
  v347 = v131;
  if (v132 == 1)
  {
    sub_1C4C5AAE8(v388, &unk_1EC0C5070);
    v134 = v370;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v135 = sub_1C4F00968();
    v136 = sub_1C4F01CC8();

    v137 = os_log_type_enabled(v135, v136);
    v138 = MEMORY[0x1E69A0138];
    if (v137)
    {
      sub_1C43FECF0();
      v139 = v134;
      v140 = swift_slowAlloc();
      sub_1C43FEC60();
      v130 = swift_slowAlloc();
      *&v392 = v130;
      *v140 = 136315138;
      v141 = sub_1C44347A0();

      *(v140 + 4) = v141;
      _os_log_impl(&dword_1C43F8000, v135, v136, "SiriRemembersViewGenerator: receiveInput: treating %s as a new interaction.", v140, 0xCu);
      sub_1C440962C(v130);
      sub_1C4425528();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v142 = v139;
      v138 = MEMORY[0x1E69A0138];
      (*(v382 + 8))(v142, v385);
    }

    else
    {

      (*(v382 + 8))(v134, v385);
    }

    v153 = MEMORY[0x1E69E6158];
    v379;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01D28();
    sub_1C441BB28(&v393 + 8);
    sub_1C4EFD738();
    (*(v383 + 32))(v384, v110, v130);
    v388 = v387[3];
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1C4F0FC40;
    v155 = sub_1C4EFD798();
    *(v154 + 56) = v153;
    *(v154 + 64) = v138;
    *(v154 + 32) = v155;
    *(v154 + 40) = v156;
    v157 = sub_1C4EFD7D8();
    *(v154 + 96) = v153;
    *(v154 + 104) = v138;
    *(v154 + 72) = v157;
    *(v154 + 80) = v158;
    v159 = sub_1C4EFD7A8();
    *(v154 + 136) = v153;
    *(v154 + 144) = v138;
    *(v154 + 112) = v159;
    *(v154 + 120) = v160;
    v161 = sub_1C4EFD808();
    *(v154 + 176) = v153;
    *(v154 + 184) = v138;
    *(v154 + 152) = v161;
    *(v154 + 160) = v162;
    v163 = sub_1C4EFD6E8();
    v146 = MEMORY[0x1E69A0150];
    *(v154 + 216) = MEMORY[0x1E69E6370];
    *(v154 + 224) = v146;
    *(v154 + 192) = v163 & 1;
    v164 = sub_1C4EFD728();
    v165 = MEMORY[0x1E69E72F0];
    v166 = MEMORY[0x1E69A01B8];
    *(v154 + 256) = MEMORY[0x1E69E72F0];
    *(v154 + 264) = v166;
    *(v154 + 232) = v164;
    v167 = sub_1C4EFD818();
    *(v154 + 296) = v165;
    *(v154 + 304) = v166;
    *(v154 + 272) = v167;
    v168 = sub_1C4EFD758();
    *(v154 + 336) = v165;
    *(v154 + 344) = v166;
    *(v154 + 312) = v168;
    v169 = v359;
    sub_1C4EFD828();
    sub_1C4EF9AD8();
    v171 = v170;
    (*(v361 + 8))(v169, v366);
    v172 = MEMORY[0x1E69E63B0];
    *(v154 + 376) = MEMORY[0x1E69E63B0];
    *(v154 + 384) = v133;
    *(v154 + 352) = v171;
    sub_1C4EFD768();
    *(v154 + 416) = v172;
    *(v154 + 424) = v133;
    *(v154 + 392) = v173;
    v174 = sub_1C4EFD7E8();
    if (v175)
    {
      v176 = MEMORY[0x1E69A0138];
      v177 = MEMORY[0x1E69E6158];
    }

    else
    {
      v174 = 0;
      v177 = 0;
      v176 = 0;
      *(v154 + 448) = 0;
    }

    v122 = 0;
    *(v154 + 432) = v174;
    *(v154 + 440) = v175;
    *(v154 + 456) = v177;
    *(v154 + 464) = v176;
    v183 = sub_1C4EFD718();
    *(v154 + 496) = MEMORY[0x1E69E6530];
    *(v154 + 504) = MEMORY[0x1E69A0180];
    *(v154 + 472) = v183;
    sub_1C4EFD788();
    *(v154 + 536) = MEMORY[0x1E69E63B0];
    *(v154 + 544) = MEMORY[0x1E69A0168];
    *(v154 + 512) = v184;
    v185 = sub_1C4EFD7F8();
    *(v154 + 576) = MEMORY[0x1E69E6370];
    *(v154 + 584) = v146;
    *(v154 + 552) = v185 & 1;
    v186 = sub_1C4EFD6F8();
    *(v154 + 616) = v165;
    *(v154 + 624) = v166;
    *(v154 + 592) = v186;
    v187 = sub_1C4EFD778();
    *(v154 + 656) = v165;
    *(v154 + 664) = v166;
    *(v154 + 632) = v187;
    *(v154 + 696) = sub_1C4EFD858();
    *(v154 + 704) = sub_1C4C5AB40(&qword_1EDDFA208, MEMORY[0x1E69A9378]);
    sub_1C4422F90((v154 + 672));
    sub_1C4EFD748();
    v188 = v360;
    sub_1C4EFB728();
    sub_1C440DA94(v188);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v188, &unk_1EC0C06C0);
    sub_1C4EFBF18();
    sub_1C4EFD7C8();
    sub_1C4425528();
  }

  else
  {
    v143 = *(v383 + 32);
    v144 = v377;
    v145 = v388;
    v388 = (v383 + 32);
    *&v371 = v143;
    v143(v377, v145, v99);
    v146 = v369;
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v147 = sub_1C4F00968();
    v148 = sub_1C4F01CC8();

    if (os_log_type_enabled(v147, v148))
    {
      sub_1C43FECF0();
      v149 = swift_slowAlloc();
      sub_1C43FEC60();
      v150 = swift_slowAlloc();
      *&v392 = v150;
      *v149 = 136315138;
      v151 = sub_1C44347A0();

      *(v149 + 4) = v151;
      v122 = 0;
      v144 = v377;
      _os_log_impl(&dword_1C43F8000, v147, v148, "SiriRemembersViewGenerator: receiveInput: treating %s as an update.", v149, 0xCu);
      sub_1C440962C(v150);
      v152 = v349;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v152 = v99;
    }

    (*(v382 + 8))(v146, v385);
    v178 = v384;
    v179 = v367;
    sub_1C4EFD708();
    v180 = v178;
    v166 = v152;
    (v371)(v180, v179, v152);
    sub_1C43FF80C();
    sub_1C4C5AB40(v181, v182);
    sub_1C4EFBA68();
    (*(v383 + 8))(v144, v152);
  }

  v189 = sub_1C4EFD798();
  sub_1C4C54368(v189, v190);
  sub_1C441E810();

  v191 = v355;
  v192 = sub_1C4428DA0();
  v193 = 0;
  v340 = v191 & 0xC000000000000001;
  v339 = v191 & 0xFFFFFFFFFFFFFF8;
  v338 = v191 + 32;
  v379 = (v354 + 32);
  v360 = (v354 + 16);
  v380 = (v354 + 8);
  v369 = (v382 + 8);
  v346 = (v361 + 8);
  v336 = v350 + 8;
  v371 = xmmword_1C4F0CE60;
  *(&v194 + 1) = 12;
  v350 = xmmword_1C4F0F820;
  *&v194 = 136315138;
  v342 = v194;
  *&v194 = 134218240;
  v335 = v194;
  *(&v194 + 1) = 6;
  v334 = xmmword_1C4F0C890;
  *&v194 = 136642819;
  v343 = v194;
  v337 = v192;
  while (1)
  {
    if (v193 == v192)
    {
      goto LABEL_92;
    }

    if (v340)
    {
      v195 = v193;
      v196 = MEMORY[0x1C6940F90](v193, v355);
    }

    else
    {
      if (v193 >= *(v339 + 16))
      {
        goto LABEL_101;
      }

      v195 = v193;
      v196 = *(v338 + 8 * v193);
    }

    v197 = v196;
    v341 = v195 + 1;
    if (__OFADD__(v195, 1))
    {
      break;
    }

    v354 = sub_1C45B1F9C(v196, &selRef_key);
    v358 = v198;
    if (!v198)
    {
      v322 = sub_1C4EFD6D8();
      sub_1C441A8B8();
      sub_1C4C5AB40(v323, v324);
      sub_1C43FFC70();
      sub_1C43FBDF0();
      sub_1C440548C(v325, v326);
      v327 = *MEMORY[0x1E69A9340];
      sub_1C440A6B8(v322);
      (*(v328 + 104))(v329, v330);
      swift_willThrow();

LABEL_92:
      v318 = sub_1C445008C();
      v319(v318, v166);
      goto LABEL_93;
    }

    v344 = v197;
    v199 = [v197 entities];
    v200 = sub_1C4461BB8(0, &qword_1EDDF05C0, 0x1E698EF28);
    sub_1C43FBC98();
    v201 = sub_1C4F01678();

    if (v376)
    {
      sub_1C4414724();
      goto LABEL_45;
    }

    v202 = v122;
    sub_1C4C52858(15, v201);
    v205 = v204;
    v166 = (v206 >> 1);
    if ((v206 & 1) == 0)
    {
      v207 = v166 - v204;
      if (__OFSUB__(v166, v204))
      {
        goto LABEL_103;
      }

      if (v207)
      {
LABEL_29:
        if (v207 < 1)
        {
          v201 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v388 = v203;
          sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
          v201 = swift_allocObject();
          v208 = j__malloc_size(v201);
          *(v201 + 16) = v207;
          *(v201 + 24) = (2 * ((v208 - 32) / 8)) | 1;
        }

        if (v205 == v166)
        {
          goto LABEL_105;
        }

        swift_arrayInitWithCopy();
        goto LABEL_43;
      }

LABEL_42:
      v201 = MEMORY[0x1E69E7CC0];
LABEL_43:
      sub_1C4414724();
      sub_1C4425528();
      v122 = v202;
      goto LABEL_44;
    }

    v388 = v203;
    sub_1C4F02998();
    swift_unknownObjectRetain_n();
    v209 = swift_dynamicCastClass();
    if (!v209)
    {
      swift_unknownObjectRelease();
      v209 = MEMORY[0x1E69E7CC0];
    }

    v146 = *(v209 + 16);

    v207 = v166 - v205;
    if (__OFSUB__(v166, v205))
    {
      goto LABEL_104;
    }

    if (v146 != v207)
    {
      swift_unknownObjectRelease();
      sub_1C441E810();
      v203 = v388;
      if (v207)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }

    v201 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    sub_1C4414724();
    sub_1C4425528();
    v122 = v202;
    sub_1C441E810();
    if (v201)
    {
      goto LABEL_45;
    }

    v201 = MEMORY[0x1E69E7CC0];
LABEL_44:
    swift_unknownObjectRelease();
LABEL_45:
    if (v201 >> 62)
    {
      v210 = sub_1C4F02128();
    }

    else
    {
      v210 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v210)
    {
      v211 = 0;
      v361 = v387[5];
      v367 = v201 & 0xC000000000000001;
      v345 = v201 & 0xFFFFFFFFFFFFFF8;
      v368 = v201;
      v359 = v210;
      do
      {
        if (v367)
        {
          v212 = MEMORY[0x1C6940F90](v211, v201);
        }

        else
        {
          if (v211 >= *(v345 + 16))
          {
            goto LABEL_100;
          }

          v212 = *(v201 + 8 * v211 + 32);
        }

        v388 = v212;
        v381 = v211 + 1;
        if (__OFADD__(v211, 1))
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        sub_1C43FCF64();
        sub_1C440BAA8(v213, v214, v215, v200);
        v216 = swift_allocObject();
        sub_1C442F428(v216, &a9);
        v217 = sub_1C45B1F9C(v388, &selRef_identifier);
        if (v218)
        {
          v219 = MEMORY[0x1E69E6158];
          v220 = MEMORY[0x1E69A0138];
        }

        else
        {
          v217 = 0;
          v219 = 0;
          v220 = 0;
          v216[3].n128_u64[0] = 0;
        }

        v216[2].n128_u64[0] = v217;
        v216[2].n128_u64[1] = v218;
        v216[3].n128_u64[1] = v219;
        v216[4].n128_u64[0] = v220;
        v221 = sub_1C45B1F9C(v388, &selRef_type);
        if (v222)
        {
          v223 = MEMORY[0x1E69E6158];
          v224 = MEMORY[0x1E69A0138];
        }

        else
        {
          v221 = 0;
          v223 = 0;
          v224 = 0;
          v216[5].n128_u64[1] = 0;
        }

        v216[4].n128_u64[1] = v221;
        v216[5].n128_u64[0] = v222;
        v216[6].n128_u64[0] = v223;
        v216[6].n128_u64[1] = v224;
        sub_1C4EFB728();
        sub_1C440DA94(v146);
        sub_1C4C5AB40(&unk_1EDDFA1E8, MEMORY[0x1E69A9398]);
        sub_1C440BFD0();
        v225 = v375;
        sub_1C4EFB408();
        sub_1C4C5AAE8(&v392, &unk_1EC0BC770);
        sub_1C4C5AAE8(v146, &unk_1EC0C06C0);
        v226 = sub_1C44157D4(v225, 1, v200);
        v382 = v211;
        if (v226 == 1)
        {
          sub_1C4C5AAE8(v225, &qword_1EC0C5068);
          v227 = v388;
          sub_1C4EFD828();
          sub_1C441BB28(&v391);
          sub_1C4EFD828();
          sub_1C4EFD928();
          v370 = 0;
          v377 = v387[6];
          v228 = swift_allocObject();
          sub_1C442F428(v228, &v373);
          swift_beginAccess();
          v229 = sub_1C4EFD798();
          v230 = MEMORY[0x1E69E6158];
          v228[3].n128_u64[1] = MEMORY[0x1E69E6158];
          v231 = MEMORY[0x1E69A0138];
          v228[4].n128_u64[0] = MEMORY[0x1E69A0138];
          v228[2].n128_u64[0] = v229;
          v228[2].n128_u64[1] = v232;
          v233 = sub_1C4EFD7D8();
          v228[6].n128_u64[0] = v230;
          v228[6].n128_u64[1] = v231;
          v228[4].n128_u64[1] = v233;
          v228[5].n128_u64[0] = v234;
          v235 = sub_1C4EFD7A8();
          v228[8].n128_u64[1] = v230;
          v228[9].n128_u64[0] = v231;
          v228[7].n128_u64[0] = v235;
          v228[7].n128_u64[1] = v236;
          v237 = sub_1C4EFD808();
          v228[11].n128_u64[0] = v230;
          v228[11].n128_u64[1] = v231;
          v228[9].n128_u64[1] = v237;
          v228[10].n128_u64[0] = v238;
          sub_1C441BB28(&v389);
          sub_1C4EFD948();
          sub_1C4EF9AD8();
          v240 = v239;
          v166 = v346;
          v241 = *v346;
          v242 = v366;
          (*v346)(v230, v366);
          v243 = MEMORY[0x1E69E63B0];
          v228[13].n128_u64[1] = MEMORY[0x1E69E63B0];
          v244 = MEMORY[0x1E69A0168];
          v228[14].n128_u64[0] = MEMORY[0x1E69A0168];
          v228[12].n128_u64[0] = v240;
          sub_1C441BB28(&v390);
          sub_1C4EFD958();
          sub_1C4EF9AD8();
          v246 = v245;
          v247 = v242;
          v248 = v348;
          v241(v230, v247);
          v228[16].n128_u64[0] = v243;
          v228[16].n128_u64[1] = v244;
          v228[14].n128_u64[1] = v246;
          sub_1C441BB28(&v388);
          sub_1C4EFB728();
          sub_1C43FBD94();
          sub_1C440BAA8(v249, v250, v251, v248);
          v252 = v370;
          sub_1C4EFC0A8();
          if (v252)
          {

            sub_1C4435534();

            sub_1C441C598();

            sub_1C4C5AAE8(v230, &unk_1EC0C06C0);
            sub_1C4C5AAE8(v378, &qword_1EC0C5068);
            v320 = sub_1C441D430();
            v321(v320);
            (*v380)(v373, v351);
            goto LABEL_93;
          }

          v146 = 0;
          sub_1C4C5AAE8(v230, &unk_1EC0C06C0);
          sub_1C4EFBF18();
          v253 = v373;
          swift_beginAccess();
          sub_1C4EFD7C8();
          swift_endAccess();
          v254 = v362;
          sub_1C4F00178();
          v255 = sub_1C4F00968();
          v256 = sub_1C4F01CC8();
          v257 = sub_1C44016D0();
          if (os_log_type_enabled(v257, v258))
          {
            sub_1C43FECF0();
            v259 = v253;
            v260 = v254;
            v261 = swift_slowAlloc();
            sub_1C43FEC60();
            v262 = swift_slowAlloc();
            *&v392 = v262;
            *v261 = v342;
            v263 = sub_1C4EFD798();
            v166 = sub_1C441D828(v263, v264, &v392);

            *(v261 + 4) = v166;
            _os_log_impl(&dword_1C43F8000, v255, v256, "SiriRemembersViewGenerator: receiveInput: inserted new entity: %s", v261, 0xCu);
            sub_1C440962C(v262);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();

            sub_1C442C080();
            v265 = v260;
            v253 = v259;
          }

          else
          {

            sub_1C442C080();
            v265 = v254;
          }

          v166(v265, v385);
          v281 = v378;
          sub_1C4C5AAE8(v378, &qword_1EC0C5068);
          v200 = v351;
          (*v360)(v281, v253, v351);
          sub_1C43FBD94();
          sub_1C440BAA8(v286, v287, v288, v200);
          v377 = *v380;
          v377(v253, v200);
          v122 = 0;
          v285 = v372;
        }

        else
        {
          v146 = *v379;
          v266 = v225;
          v267 = v374;
          (*v379)(v374, v266, v200);
          sub_1C441BB28(&v392);
          sub_1C4F00178();
          v166 = v364;
          (*v360)(v364, v267, v200);
          v268 = v200;
          v269 = sub_1C4F00968();
          v270 = sub_1C4F01CC8();
          v271 = sub_1C44016D0();
          if (os_log_type_enabled(v271, v272))
          {
            sub_1C43FECF0();
            v273 = swift_slowAlloc();
            sub_1C43FEC60();
            v274 = swift_slowAlloc();
            *&v392 = v274;
            *v273 = v343;
            v275 = sub_1C4EFD798();
            v276 = v166;
            v166 = v277;
            v377 = *v380;
            v377(v276, v268);
            v278 = sub_1C441D828(v275, v166, &v392);

            *(v273 + 4) = v278;
            _os_log_impl(&dword_1C43F8000, v269, v270, "SiriRemembersViewGenerator: receiveInput: found existing entity: %{sensitive}s", v273, 0xCu);
            sub_1C440962C(v274);
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v122 = 0;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();

            sub_1C442C080();
            v279 = v365;
          }

          else
          {

            v377 = *v380;
            v377(v166, v200);
            sub_1C442C080();
            v279 = v211;
          }

          v166(v279, v385);
          v200 = v268;
          v280 = v374;
          sub_1C4C59BF0();
          v281 = v378;
          sub_1C4C5AAE8(v378, &qword_1EC0C5068);
          v146(v281, v280, v268);
          sub_1C43FBD94();
          sub_1C440BAA8(v282, v283, v284, v268);
          v285 = v372;
        }

        sub_1C4C5AB98(v281, v285, &qword_1EC0C5068, &qword_1C4F5F410);
        if (sub_1C44157D4(v285, 1, v200) == 1)
        {
          sub_1C4C5AAE8(v281, &qword_1EC0C5068);

          sub_1C4C5AAE8(v285, &qword_1EC0C5068);
          sub_1C4425528();
          sub_1C441E810();
        }

        else
        {
          v146 = 0;
          v289 = v363;
          (*v379)(v363, v285, v200);
          v290 = sub_1C4EFD7B8();
          if ((v291 & 1) == 0)
          {
            v294 = v290;
            v200 = v289;
            v295 = sub_1C4EFD7B8();
            v201 = v368;
            v293 = v382;
            if (v296)
            {

              sub_1C4414724();
              sub_1C4403A3C();
              v297();
              sub_1C4C5AAE8(v378, &qword_1EC0C5068);
              sub_1C4425528();
              v122 = 0;
              sub_1C441E810();
              goto LABEL_76;
            }

            v298 = v295;
            sub_1C4F00178();
            v299 = sub_1C4F00968();
            v300 = sub_1C4F01CC8();
            if (sub_1C43FEB2C(v300))
            {
              v301 = sub_1C440F274();
              *v301 = v335;
              *(v301 + 4) = v294;
              *(v301 + 12) = 2048;
              *(v301 + 14) = v298;
              _os_log_impl(&dword_1C43F8000, v299, v300, "SiriRemembersViewGenerator: receiveInput: joining: %lld <-> %lld", v301, 0x16u);
              v201 = v368;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            v166(v357, v385);
            v302 = v387[8];
            v303 = swift_allocObject();
            sub_1C442F428(v303, &a9);
            v304 = MEMORY[0x1E69E7360];
            v305[7] = MEMORY[0x1E69E7360];
            v306 = MEMORY[0x1E69A01D0];
            v305[8] = MEMORY[0x1E69A01D0];
            v305[9] = v298;
            v305[4] = v294;
            v305[12] = v304;
            v305[13] = v306;
            sub_1C441BB28(&v380);
            sub_1C4EFB728();
            sub_1C440DA94(v293);
            v394 = 0;
            v392 = 0u;
            v393 = 0u;
            sub_1C4EFB9A8();
            v370 = 0;
            sub_1C4C5AAE8(&v392, &unk_1EC0BC770);
            sub_1C4C5AAE8(v293, &unk_1EC0C06C0);
            v166 = v349;
            if (v390)
            {
              v307 = v356;
              goto LABEL_85;
            }

            v307 = v356;
            if (v389)
            {
LABEL_85:
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4EFD878();
              *&v392 = &unk_1F43DD070;
              sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
              sub_1C4C5AB40(&unk_1EDDFA1F8, MEMORY[0x1E69A9388]);
              sub_1C4C1F36C();
              v146 = v353;
              v200 = v307;
              v308 = v370;
              sub_1C4EFBAD8();
              v122 = v308;
              if (v308)
              {

                sub_1C4435534();

                sub_1C441C598();

                v331 = sub_1C447F37C();
                v332(v331);
LABEL_97:
                sub_1C4403A3C();
                v333();
                sub_1C4C5AAE8(v378, &qword_1EC0C5068);
                goto LABEL_92;
              }

              v309 = sub_1C447F37C();
              v310(v309);
            }

            else
            {
              v200 = v387[9];
              v312 = swift_allocObject();
              sub_1C442F428(v312, &v360);
              v313 = MEMORY[0x1E69E7360];
              v314[7] = MEMORY[0x1E69E7360];
              v315 = MEMORY[0x1E69A01D0];
              v314[8] = MEMORY[0x1E69A01D0];
              v314[9] = v298;
              v314[4] = v294;
              v314[12] = v313;
              v314[13] = v315;
              v314[17] = MEMORY[0x1E69E6158];
              v314[18] = MEMORY[0x1E69A0138];
              v314[14] = v354;
              v312[7].n128_u64[1] = sub_1C4435534();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v316 = v352;
              sub_1C4EFB728();
              sub_1C440DA94(v316);
              v317 = v370;
              sub_1C4EFC0A8();
              v122 = v317;
              if (v317)
              {

                sub_1C4435534();

                sub_1C441C598();

                sub_1C4C5AAE8(v316, &unk_1EC0C06C0);
                goto LABEL_97;
              }

              sub_1C4C5AAE8(v316, &unk_1EC0C06C0);
            }

            sub_1C4414724();
            sub_1C4403A3C();
            v311();
            sub_1C4C5AAE8(v378, &qword_1EC0C5068);
            sub_1C441E810();
            goto LABEL_75;
          }

          sub_1C4403A3C();
          v292();
          sub_1C4C5AAE8(v378, &qword_1EC0C5068);
          sub_1C4425528();
          v122 = 0;
          sub_1C441E810();
        }

        v201 = v368;
LABEL_75:
        v293 = v382;
LABEL_76:
        v211 = v293 + 1;
      }

      while (v381 != v359);
    }

    sub_1C4435534();

    sub_1C441C598();

    v192 = v337;
    v193 = v341;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void sub_1C4C59768()
{
  sub_1C43FE628();
  v60 = v1;
  v53 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v57 = v10;
  v11 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  v61 = sub_1C4EFB768();
  v17 = sub_1C43FCDF8(v61);
  v54 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v59 = sub_1C4F00978();
  v24 = sub_1C43FCDF8(v59);
  *&v58 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CC8();

  v33 = os_log_type_enabled(v31, v32);
  v52 = v5;
  v55 = v9;
  if (v33)
  {
    v34 = v7;
    v35 = sub_1C440F274();
    sub_1C43FEC60();
    v36 = swift_slowAlloc();
    v56 = v3;
    v37 = v36;
    v62 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1C441D828(v57, v9, &v62);
    *(v35 + 12) = 2048;
    *(v35 + 14) = *(v34 + 16);

    _os_log_impl(&dword_1C43F8000, v31, v32, "SiriRemembersViewGenerator: deleteInteractions: from %s harvested at %ld different times", v35, 0x16u);
    sub_1C440962C(v37);
    v3 = v56;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v38);
    v7 = v34;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v39);
  }

  else
  {
  }

  (*(v58 + 8))(v30, v59);
  v40 = v60;
  sub_1C4EFBE98();
  if (v40)
  {
LABEL_10:
    sub_1C44109F8();
  }

  else
  {
    v56 = v3;
    v59 = sub_1C4EFD848();
    v42 = v41;
    v62 = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45DB908(&v62);
    v43 = 0;
    v44 = v62;
    v60 = *(v62 + 16);
    v45 = (v54 + 8);
    v58 = xmmword_1C4F0CE60;
    while (1)
    {
      if (v60 == v43)
      {

        sub_1C4C5A0F0(v52);

        goto LABEL_10;
      }

      if (v43 >= *(v44 + 16))
      {
        break;
      }

      v46 = *(v44 + 8 * v43 + 32);
      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v47 = swift_allocObject();
      *(v47 + 16) = v58;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = MEMORY[0x1E69A0138];
      *(v47 + 32) = v59;
      *(v47 + 40) = v42;
      *(v47 + 96) = MEMORY[0x1E69E63B0];
      *(v47 + 104) = MEMORY[0x1E69A0168];
      *(v47 + 72) = v46;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB728();
      sub_1C4EFC088();
      v48 = v61;
      (*v45)(v23, v61);
      sub_1C43FCF64();
      sub_1C440BAA8(v49, v50, v51, v48);
      sub_1C4EFC0A8();
      ++v43;
      sub_1C4C5AAE8(v16, &unk_1EC0C06C0);
    }

    __break(1u);

    __break(1u);
  }
}

void sub_1C4C59BF0()
{
  sub_1C43FE628();
  v90 = v1;
  v91 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v85 = v12;
  v86 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v84 = v16 - v15;
  v17 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v18 = sub_1C43FBD18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v87 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v83 - v23;
  v25 = sub_1C45B1F9C(v9, &selRef_fields);
  if (v26)
  {
    v27 = v26;
    v89 = v25;
    v28 = sub_1C45B1F9C(v9, &selRef_fieldsTokens);
  }

  else
  {
    v89 = sub_1C4EFD7A8();
    v27 = v30;
    v28 = sub_1C4EFD808();
  }

  v88 = v28;
  v31 = v29;
  v32 = sub_1C4EFD7B8();
  if (v33 & 1) != 0 || (v34 = v32, v35 = sub_1C4EFD7B8(), (v36))
  {

    v37 = sub_1C4EFD6D8();
    sub_1C441A8B8();
    sub_1C4C5AB40(v38, v39);
    sub_1C43FFC70();
    sub_1C43FBDF0();
    sub_1C440548C(v40, v41);
    v42 = *MEMORY[0x1E69A9340];
    sub_1C440A6B8(v37);
    (*(v43 + 104))();
    swift_willThrow();
    goto LABEL_27;
  }

  v44 = v35;
  v83[0] = v3;
  v83[1] = v7;
  v45 = *(v3 + 80);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C4F0D480;
  v47 = MEMORY[0x1E69E6158];
  v48 = MEMORY[0x1E69A0138];
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = v48;
  v49 = v90;
  *(v46 + 32) = v90;
  *(v46 + 40) = v5;
  v50 = MEMORY[0x1E69E7360];
  v51 = MEMORY[0x1E69A01D0];
  *(v46 + 96) = MEMORY[0x1E69E7360];
  *(v46 + 104) = v51;
  *(v46 + 72) = v34;
  *(v46 + 136) = v50;
  *(v46 + 144) = v51;
  *(v46 + 112) = v44;
  *(v46 + 176) = v47;
  *(v46 + 184) = v48;
  *(v46 + 152) = v49;
  *(v46 + 160) = v5;
  swift_bridgeObjectRetain_n();
  sub_1C4EFB728();
  v52 = sub_1C4EFB768();
  sub_1C43FBD94();
  sub_1C440BAA8(v53, v54, v55, v52);
  v56 = v91;
  sub_1C4EFC0A8();
  sub_1C4C5AAE8(v24, &unk_1EC0C06C0);
  if (v56)
  {
    goto LABEL_8;
  }

  v57 = v83[0];
  v58 = v88;
  if (v31)
  {
    if (sub_1C4EFD7A8() == v89 && v27 == v59)
    {
    }

    else
    {
      v61 = sub_1C4F02938();

      if ((v61 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (sub_1C4EFD808() == v58 && v31 == v62)
    {

      goto LABEL_9;
    }

    v64 = sub_1C4F02938();

    if (v64)
    {
LABEL_8:

LABEL_9:

      goto LABEL_27;
    }
  }

LABEL_23:
  v90 = *(v57 + 56);
  v91 = v52;
  v65 = swift_allocObject();
  v66 = v65;
  *(v65 + 16) = xmmword_1C4F13950;
  v67 = MEMORY[0x1E69E6158];
  *(v65 + 56) = MEMORY[0x1E69E6158];
  *(v65 + 64) = MEMORY[0x1E69A0138];
  *(v65 + 32) = v89;
  *(v65 + 40) = v27;
  if (v31)
  {
    v68 = MEMORY[0x1E69A0138];
    v69 = MEMORY[0x1E69E6158];
  }

  else
  {
    v58 = 0;
    v69 = 0;
    v68 = 0;
    *(v65 + 88) = 0;
  }

  v70 = v84;
  *(v65 + 72) = v58;
  *(v65 + 80) = v31;
  *(v65 + 96) = v69;
  *(v65 + 104) = v68;
  sub_1C4EF9CC8();
  sub_1C4EF9AD8();
  v72 = v71;
  (*(v85 + 8))(v70, v86);
  v73 = MEMORY[0x1E69A0168];
  v66[17] = MEMORY[0x1E69E63B0];
  v66[18] = v73;
  v66[14] = v72;
  v74 = sub_1C4EFD798();
  v66[22] = v67;
  v75 = MEMORY[0x1E69A0138];
  v66[23] = MEMORY[0x1E69A0138];
  v66[19] = v74;
  v66[20] = v76;
  v77 = sub_1C4EFD7D8();
  v66[27] = v67;
  v66[28] = v75;
  v66[24] = v77;
  v66[25] = v78;
  v79 = v87;
  sub_1C4EFB728();
  sub_1C43FBD94();
  sub_1C440BAA8(v80, v81, v82, v91);
  sub_1C4EFC0A8();
  sub_1C4C5AAE8(v79, &unk_1EC0C06C0);
LABEL_27:
  sub_1C44109F8();
}

uint64_t sub_1C4C5A0F0(uint64_t a1)
{
  v36 = a1;
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v37 = sub_1C4F00978();
  v13 = *(v37 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  sub_1C4F00178();
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CC8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C43F8000, v19, v20, "SiriRemembersViewGenerator: deleteOrphanedInteractions started", v21, 2u);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  v22 = *(v13 + 8);
  v22(v18, v37);
  result = sub_1C4EFBED8();
  if (!v1)
  {
    v24 = sub_1C4EFB768();
    sub_1C440BAA8(v12, 1, 1, v24);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v12, &unk_1EC0C06C0);

    v25 = *(v36 + 16);
    sub_1C4B8C3E4(0xD00000000000003DLL, 0x80000001C4FBCED0);
    sub_1C4EFBED8();
    sub_1C440BAA8(v9, 1, 1, v24);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v9, &unk_1EC0C06C0);

    sub_1C4EFBED8();
    v26 = v24;
    v27 = v35;
    sub_1C440BAA8(v35, 1, 1, v26);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v27, &unk_1EC0C06C0);

    sub_1C4EFBED8();
    v28 = v34;
    sub_1C440BAA8(v34, 1, 1, v26);
    sub_1C4EFC0A8();
    sub_1C4C5AAE8(v28, &unk_1EC0C06C0);

    v29 = v33;
    sub_1C4F00178();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CC8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C43F8000, v30, v31, "SiriRemembersViewGenerator: deleteOrphanedInteractions completed", v32, 2u);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    return (v22)(v29, v37);
  }

  return result;
}

uint64_t *sub_1C4C5A5D8()
{
  v2 = *v0;
  v3 = sub_1C4EFBED8();
  if (v1)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v0[2] = v3;
    v0[3] = sub_1C44412B8();
    v0[4] = sub_1C4EFBED8();
    v0[5] = sub_1C44412B8();
    v0[6] = sub_1C44412B8();
    v0[7] = sub_1C4418C80();
    v0[8] = sub_1C44412B8();
    v0[9] = sub_1C4418C80();
    v5 = sub_1C44412B8();

    v0[10] = v5;
  }

  return v0;
}

void *sub_1C4C5A8A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  return v0;
}

uint64_t sub_1C4C5A900()
{
  sub_1C4C5A8A0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4C5A97C()
{
  result = qword_1EDDFCC70;
  if (!qword_1EDDFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCC70);
  }

  return result;
}

uint64_t sub_1C4C5A9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1C4F02128();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4C5AA48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4C5AAE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4415D68(a1, a2);
  v5 = sub_1C456902C(v3, v4);
  sub_1C440A6B8(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_1C4C5AB40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4C5AB98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C456902C(a3, a4);
  sub_1C440A6B8(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

void sub_1C4C5ACD4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4C81AA0();
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a3, __src, 0x58uLL);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 16) = 0xD000000000000017;
      *(v7 + 24) = 0x80000001C4FBCAD0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C5ADCC(uint64_t *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    a1[3] = &type metadata for SiriRemembersDatabaseTable;
    a1[4] = &off_1F43FC9B8;
    v5 = swift_allocObject();
    *a1 = v5;
    v6 = sub_1C441A8D0(v5);
    v7 = MEMORY[0x1E69E7CC0];
    *(v6 + 32) = v4;
    *(v6 + 40) = v7;
  }
}

void sub_1C4C5AE5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = (a3 + *(_s6ConfigVMa() + 52));
    v12 = v11[1];
    if (v12)
    {
      v13 = v11[6];
      v15 = v11[4];
      v14 = v11[5];
      v17 = v11[2];
      v16 = v11[3];
      v18 = *v11;
      a4[3] = &_s23SiriRemembersViewClientVN;
      a4[4] = &off_1F44056D8;
      v19 = swift_allocObject();
      *a4 = v19;
      v20 = sub_1C441A8D0(v19);
      v21 = MEMORY[0x1E69E7CC0];
      v20[4] = v10;
      v20[5] = v21;
      v20[6] = v18;
      v20[7] = v12;
      v20[8] = v17;
      v20[9] = v16;
      v20[10] = v15;
      v20[11] = v14;
      v20[12] = v13;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = 0xD000000000000016;
      *(v22 + 24) = 0x80000001C4FBD5D0;
      *(v22 + 32) = 0xD000000000000033;
      *(v22 + 40) = 0x80000001C4FBD5F0;
      *(v22 + 48) = 0uLL;
      *(v22 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C5AFEC()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4B16DCC(0x7463617265746E69, 0xEC000000736E6F69, v1);
  }
}

void sub_1C4C5B070()
{
  v9 = 0;
  v10 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    v2 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v1);
    strcpy(v5, "interactions");
    v5[13] = 0;
    v6 = -5120;
    v7 = v3;
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(sub_1C4B18820, &v4);
  }
}

uint64_t sub_1C4C5B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s33SourceConfidenceViewViewGeneratorCMa();
      v5 = swift_allocObject();
      *(v5 + 16) = a5;
      *(v5 + 24) = v13;
      *(v5 + 32) = v14;
      *(v5 + 48) = v15;
    }

    else
    {
      sub_1C450B034();
      v9 = swift_allocError();
      *v10 = a1;
      *(v10 + 8) = a2;
      *(v10 + 16) = xmmword_1C4F5B670;
      *(v10 + 32) = 0xD000000000000025;
      *(v10 + 40) = 0x80000001C4FB83A0;
      *(v10 + 48) = v12;
      *(v10 + 64) = 0;
      v5 = v9;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v5;
}

uint64_t sub_1C4C5B338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C5B1D4(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C5B3E4()
{
  v77 = sub_1C4EFFB98();
  v1 = *(v77 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBFDC();
  v76 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v64 - v5;
  v6 = sub_1C456902C(&qword_1EC0C5090, &unk_1C4F5F5A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FBFDC();
  v74 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v10;
  v11 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v64 - v13);
  v65 = v0;
  v15 = v0[2];
  v16 = type metadata accessor for Source();
  sub_1C440BAA8(v14, 1, 1, v16);
  v17 = sub_1C450C07C(v14);
  sub_1C46A1238(v14);
  v18 = 0;
  v20 = v17 + 64;
  v19 = *(v17 + 64);
  v69 = v17;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v66 = v1 + 16;
  v75 = (v1 + 32);
  v78 = MEMORY[0x1E69E7CC0];
  v68 = v1;
  v71 = (v1 + 8);
  v70 = xmmword_1C4F0D480;
  v72 = v17 + 64;
  if ((v22 & v19) == 0)
  {
LABEL_5:
    v26 = v74;
    while (1)
    {
      v25 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v25 >= v24)
      {
        v54 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
        sub_1C440BAA8(v26, 1, 1, v54);
        v23 = 0;
        goto LABEL_11;
      }

      v23 = *(v20 + 8 * v25);
      ++v18;
      if (v23)
      {
        v18 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  while (1)
  {
    v25 = v18;
LABEL_10:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = v27 | (v25 << 6);
    v30 = v68;
    v29 = v69;
    v31 = v67;
    v32 = v77;
    (*(v68 + 16))(v67, *(v69 + 48) + *(v68 + 72) * v28, v77);
    v33 = *(*(v29 + 56) + 8 * v28);
    v34 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v26 = v74;
    v36(v74, v31, v32);
    *(v26 + v35) = v33;
    sub_1C440BAA8(v26, 0, 1, v34);
LABEL_11:
    v37 = v26;
    v38 = v73;
    sub_1C4C5BAA0(v37, v73);
    v39 = sub_1C456902C(&qword_1EC0C5098, qword_1C4F5F5B8);
    if (sub_1C44157D4(v38, 1, v39) == 1)
    {
      break;
    }

    v40 = *(v38 + *(v39 + 48));
    (*v75)(v76, v38, v77);
    v41 = sub_1C4EFFB88();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    v45 = sub_1C4EFFB78();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v49 = swift_allocObject();
    *(v49 + 16) = v70;
    v50 = MEMORY[0x1E69E6158];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    v51 = MEMORY[0x1E69A0138];
    *(v49 + 64) = MEMORY[0x1E69A0138];
    *(v49 + 72) = v43;
    *(v49 + 32) = 0x6C6542726F697270;
    *(v49 + 40) = 0xEB00000000666569;
    *(v49 + 96) = v50;
    *(v49 + 104) = v51;
    *(v49 + 80) = v44;
    *(v49 + 136) = v50;
    *(v49 + 144) = v51;
    *(v49 + 112) = v47;
    *(v49 + 120) = v48;
    *(v49 + 176) = MEMORY[0x1E69E63B0];
    *(v49 + 184) = MEMORY[0x1E69A0168];
    *(v49 + 152) = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = *(v78 + 16);
      sub_1C458B824();
      v78 = v56;
    }

    v52 = *(v78 + 16);
    if (v52 >= *(v78 + 24) >> 1)
    {
      sub_1C458B824();
      v78 = v57;
    }

    (*v71)(v76);
    v53 = v78;
    *(v78 + 16) = v52 + 1;
    *(v53 + 8 * v52 + 32) = v49;
    v20 = v72;
    if (!v23)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v58 = sub_1C4F00978();
  sub_1C442B738(v58, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v59 = sub_1C4F00968();
  v60 = sub_1C4F01CB8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = *(v78 + 16);

    _os_log_impl(&dword_1C43F8000, v59, v60, "Writing %ld rows to SourceConfidenceView", v61, 0xCu);
    MEMORY[0x1C6942830](v61, -1, -1);
  }

  else
  {
  }

  v62 = v65;

  sub_1C4BC7440(v78, v62[3], v62[4], v62[5], v62[6]);
}

void *sub_1C4C5B9FC()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  return v0;
}

uint64_t sub_1C4C5BA48()
{
  sub_1C4C5B9FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C5BAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5090, &unk_1C4F5F5A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C4C5BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      type metadata accessor for GlobalKnowledgeStore(0);
      swift_unownedRetainStrong();
      sub_1C4C62810(a4 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v12, type metadata accessor for Configuration);

      v15 = sub_1C48300AC(v12);
      v16 = [objc_opt_self() sharedInstance];
      _s28SportsSchedulesViewGeneratorCMa();
      v12 = swift_allocObject();
      v12[10] = sub_1C4461BB8(0, &qword_1EDDF0478, 0x1E698AF30);
      v12[11] = &off_1F4405860;
      v12[2] = v18;
      v12[3] = v19;
      v12[4] = v20;
      v12[5] = v21;
      v12[6] = v15;
      v12[7] = v16;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v13 = a1;
      *(v13 + 8) = a2;
      *(v13 + 16) = xmmword_1C4F5B670;
      *(v13 + 32) = 0xD000000000000025;
      *(v13 + 40) = 0x80000001C4FB83A0;
      *(v13 + 48) = v17;
      *(v13 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v12;
}

uint64_t sub_1C4C5BDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C5BB68(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C5BEB8()
{
  v1 = v0;
  v2 = sub_1C4EF98F8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = objc_opt_self();
  v12 = v1[4];
  (*(v5 + 16))(v10, *(v12 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v2);
  sub_1C4EF98E8();
  (*(v5 + 8))(v10, v2);
  v13 = sub_1C4F01108();

  [v11 truncateDatabaseAtPath_];

  v14 = v1[5];
  return sub_1C4B44868(v1[2], v1[3], v12);
}

uint64_t sub_1C4C5C010()
{
  sub_1C43FBCD4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1C4EFF448();
  v1[10] = v3;
  sub_1C43FCF7C(v3);
  v1[11] = v4;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_1C4F00978();
  v1[15] = v7;
  sub_1C43FCF7C(v7);
  v1[16] = v8;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4C5C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C440C6BC();
  v18 = *v17;
  sub_1C43FBE64();
  *v19 = v18;
  v21 = *(v20 + 224);
  *v19 = *v17;
  v18[29] = v22;
  v18[30] = v16;

  if (v16)
  {
    v24 = v18[25];
    v23 = v18[26];
    v26 = v18[23];
    v25 = v18[24];
    v28 = v18[21];
    v27 = v18[22];
    v30 = v18[19];
    v29 = v18[20];
    v45 = v18[18];
    v46 = v18[17];
    v47 = v18[14];
    v48 = v18[13];
    v31 = v18[12];

    sub_1C43FBDA0();
    sub_1C440405C();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v45, v46, v47, v48, a14, a15, a16);
  }

  else
  {
    sub_1C440405C();

    return MEMORY[0x1EEE6DFA0](v41, v42, v43);
  }
}

void sub_1C4C5C6C8()
{
  v115 = v0;
  v1 = *(v0 + 232);
  v2 = sub_1C4428DA0();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if (v4)
    {
      v8 = MEMORY[0x1C6940F90](v3, v112[29]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v11 = sub_1C4C6261C(v8);
    v13 = v12;

    ++v3;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v7 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1C443D664();
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v3 = v10;
    }
  }

  v19 = v112[29];

  v20 = v7;
  if (!*(v7 + 16))
  {
    v35 = v112[23];

    sub_1C4F00178();
    v36 = sub_1C4F00968();
    sub_1C4F01CC8();
    sub_1C4405A60();
    v29 = v112;
    if (os_log_type_enabled(v36, v37))
    {
      sub_1C43FD1A8();
      v38 = swift_slowAlloc();
      sub_1C43FBD24(v38);
      sub_1C43FBED8(&dword_1C43F8000, v39, v40, "SportsSchedulesViewGenerator: performUpdate: No favorite teams");
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v41 = v112[27];
    v42 = v112[23];
    v43 = v112[15];
    v44 = v112[16];
    v45 = v112[8];

    v46 = sub_1C4402B58();
    v41(v46);
    sub_1C4D0E5C0();
    goto LABEL_25;
  }

  v21 = v112[22];
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CC8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v112[27];
  v26 = v112[22];
  v28 = v112[15];
  v27 = v112[16];
  v29 = v112;
  if (v24)
  {
    sub_1C43FECF0();
    v30 = swift_slowAlloc();
    v109 = v25;
    v31 = swift_slowAlloc();
    v114[0] = v31;
    *v30 = 136642819;
    v32 = MEMORY[0x1C6940380](v20, MEMORY[0x1E69E6158]);
    v34 = sub_1C441D828(v32, v33, v114);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1C43F8000, v22, v23, "SportsSchedulesViewGenerator: performUpdate: teams: %{sensitive}s", v30, 0xCu);
    sub_1C440962C(v31);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v109(v26, v28);
  }

  else
  {

    v25(v26, v28);
  }

  v47 = v112[30];
  v48 = v112[9];
  v49 = sub_1C4C5DA14(v112[13], v20);
  v112[31] = v49;
  v112[32] = v50;
  if (v47)
  {
    v51 = v112[18];

    sub_1C4F00178();
    v52 = v47;
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();

    if (os_log_type_enabled(v53, v54))
    {
      sub_1C43FECF0();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v47;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_1C43F8000, v53, v54, "SportsSchedulesViewGenerator: error while getting next game for teams: %@", v55, 0xCu);
      sub_1C4420C3C(v56, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v59 = v112[27];
    v60 = v112[18];
    v61 = v112[15];
    v62 = v112[16];
    v63 = v112[8];

    v59(v60, v61);
    sub_1C4D0E51C();

LABEL_25:
    sub_1C4413AC8();
    v113 = v29[12];

    sub_1C43FC1B0();

    v64();
    return;
  }

  v65 = v49;
  v66 = v112[21];
  v68 = v112[13];
  v67 = v112[14];
  v70 = v112[10];
  v69 = v112[11];

  (*(v69 + 32))(v67, v68, v70);
  sub_1C4F00178();
  v71 = sub_1C4F00968();
  v72 = sub_1C4F01CC8();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v112[27];
  v75 = v112[21];
  v76 = v112[15];
  v77 = v112[16];
  if (v73)
  {
    v110 = v112[27];
    v78 = v112[14];
    v79 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v79 = 136315394;
    v80 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v107 = v76;
    v108 = v75;
    v81 = MEMORY[0x1C6940380](v80, MEMORY[0x1E69E6158]);
    v83 = v82;

    v84 = sub_1C441D828(v81, v83, v114);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    swift_beginAccess();
    v85 = sub_1C4EFF438();
    v87 = sub_1C441D828(v85, v86, v114);

    *(v79 + 14) = v87;
    _os_log_impl(&dword_1C43F8000, v71, v72, "SportsSchedulesViewGenerator: performUpdate: gameIds: %s of type: %s", v79, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v110(v108, v107);
  }

  else
  {

    v74(v75, v76);
  }

  if (!*(v65 + 16))
  {
    v95 = v112[19];
    v96 = v112[8];

    sub_1C4D0E5C0();
    sub_1C4F00178();
    v97 = sub_1C4F00968();
    v98 = sub_1C4F01CC8();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v112[27];
    v101 = v112[19];
    v103 = v112[15];
    v102 = v112[16];
    v104 = v112[14];
    v105 = v112[11];
    v111 = v112[10];
    if (v99)
    {
      sub_1C43FD1A8();
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1C43F8000, v97, v98, "SportsSchedulesViewGenerator: performUpdate: No games to process, update complete", v106, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v100(v101, v103);
    (*(v105 + 8))(v104, v111);

    goto LABEL_25;
  }

  v88 = v112[14];
  v90 = v112[11];
  v89 = v112[12];
  v91 = v112[10];
  swift_beginAccess();
  (*(v90 + 16))(v89, v88, v91);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v92 = swift_task_alloc();
  v112[33] = v92;
  *v92 = v112;
  v92[1] = sub_1C4C5CF3C;
  v93 = v112[12];
  v94 = v112[9];

  sub_1C4C5E698();
}

uint64_t sub_1C4C5CF3C()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 264);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;
  v4[34] = v0;
  v4[35] = v1;

  if (v1)
  {
    v10 = v4[31];
    v11 = v4[32];
    v12 = sub_1C441BDD4();
    v4[40] = v13;
    v4[41] = v14;
    v13(v12);

    v15 = sub_1C43FCE74();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }

  else
  {
    v18 = v4[31];
    v19 = sub_1C441BDD4();
    v4[36] = v20;
    v4[37] = v21;
    v20(v19);

    v22 = swift_task_alloc();
    v4[38] = v22;
    *v22 = v8;
    v22[1] = sub_1C4C5D0EC;
    v23 = v4[9];
    v24 = v4[32];

    return sub_1C4C5E994(v24, v0);
  }
}

uint64_t sub_1C4C5D0EC()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v2[39] = v0;

  if (v0)
  {
    v8 = sub_1C4C5D5E8;
  }

  else
  {
    v9 = v2[34];
    v10 = v2[32];

    v8 = sub_1C4C5D204;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4C5D204()
{
  v1 = v0[20];
  v2 = v0[8];
  sub_1C4D0E5C0();
  sub_1C4F00178();
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  v16 = v6;
  v17 = v0[31];
  v7 = v0[27];
  v8 = v0[20];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[10];
  if (v5)
  {
    sub_1C43FD1A8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v3, v4, "SportsSchedulesViewGenerator: performUpdate: complete", v13, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7(v8, v9);
  v16(v11, v12);

  sub_1C4413AC8();
  v18 = v0[12];

  sub_1C43FC1B0();

  return v14();
}

uint64_t sub_1C4C5D3C0()
{
  v1 = v0[35];
  v2 = v0[17];
  sub_1C4F00178();
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    sub_1C43FECF0();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "SportsSchedulesViewGenerator: error while getting game time for games: %@", v7, 0xCu);
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v11 = v0[40];
  v12 = v0[35];
  v23 = v0[31];
  v24 = v0[41];
  v13 = v0[27];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[10];
  v19 = v4;
  v20 = v0[8];

  v13(v15, v16);
  sub_1C4D0E51C();

  v11(v17, v18);

  sub_1C4413AC8();
  v25 = v0[12];

  sub_1C43FC1B0();

  return v21();
}

uint64_t sub_1C4C5D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C440C6BC();
  v18 = v16[36];
  v17 = v16[37];
  v19 = v16[34];
  v20 = v16[31];
  v21 = v16[32];
  v22 = v16[14];
  v23 = v16[10];

  v18(v22, v23);

  v25 = v16[25];
  v24 = v16[26];
  v27 = v16[23];
  v26 = v16[24];
  v29 = v16[21];
  v28 = v16[22];
  v31 = v16[19];
  v30 = v16[20];
  v32 = v16[17];
  v33 = v16[18];
  v43 = v16[14];
  v44 = v16[13];
  v45 = v16[12];
  v46 = v16[39];

  sub_1C43FBDA0();
  sub_1C440405C();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, a14, a15, a16);
}

uint64_t sub_1C4C5D71C()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = v1[11];
  sub_1C4409678(v1 + 7, v1[10]);
  sub_1C44164EC(v2);
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1C4C5D830;
  v7 = sub_1C4402B58();

  return v9(v7);
}

uint64_t sub_1C4C5D830()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1C4C5D964, 0, 0);
  }
}

uint64_t sub_1C4C5D964()
{
  sub_1C43FCF70();
  v1 = *(v0 + 32);
  v2 = [v1 teams];
  sub_1C4461BB8(0, &unk_1EDDFA480, 0x1E698AF38);
  v3 = sub_1C4F01678();

  sub_1C43FBCF0();

  return v4(v3);
}

uint64_t sub_1C4C5DA14(uint64_t a1, uint64_t a2)
{
  v163 = a2;
  v151 = a1;
  v4 = sub_1C4EFD548();
  v159 = sub_1C43FCDF8(v4);
  v160 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v159);
  sub_1C43FD2D8();
  v158 = v8;
  sub_1C43FBE44();
  v165 = sub_1C4EFEEF8();
  v9 = sub_1C43FCDF8(v165);
  v161 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v172 = v13;
  v14 = *(*(sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v168 = v16;
  sub_1C43FBE44();
  v166 = sub_1C4EFF0C8();
  v17 = sub_1C43FCDF8(v166);
  v157 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v167 = v21;
  sub_1C43FBE44();
  v164 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v22 = sub_1C43FCDF8(v164);
  v162 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = sub_1C4F00978();
  v153 = sub_1C43FCDF8(v29);
  v154 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v153);
  sub_1C43FBD08();
  v152 = (v33 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v147 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v147 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v147 - v42;
  v44 = sub_1C4EFF3B8();
  v45 = sub_1C43FCDF8(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  v53 = *(v2 + 48);
  sub_1C4C5EBE0();
  v54 = GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v52, 0, 0, 700);
  v56 = (v47 + 8);
  if (v3)
  {
    (*v56)(v52, v44);
    return v53;
  }

  v57 = v55;
  v148 = v37;
  v150 = v54;
  v58 = v154;
  (*v56)(v52, v44);
  if (v57)
  {

    sub_1C4F00178();
    v59 = sub_1C4F00968();
    v53 = sub_1C4F01CD8();
    v60 = os_log_type_enabled(v59, v53);
    v61 = v153;
    if (v60)
    {
      sub_1C43FD1A8();
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1C43F8000, v59, v53, "SportsSchedulesViewGenerator: liveApiIdSearch timed out", v62, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    (*(v58 + 8))(v43, v61);
    sub_1C4C626B8();
    v63 = swift_allocError();
    sub_1C442E654(v63, v64);
    swift_willThrow();
    return v53;
  }

  v66 = v40;
  sub_1C4F00178();
  v67 = v150;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v68 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4405A60();
  v70 = os_log_type_enabled(v68, v69);
  v147[1] = 0;
  if (v70)
  {
    sub_1C43FECF0();
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = *(v67 + 16);

    _os_log_impl(&dword_1C43F8000, v68, v57, "SportsSchedulesViewGenerator: performUpdate: received %ld triples", v71, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v72 = v164;
  v73 = v165;
  v74 = *(v58 + 8);
  v154 = v58 + 8;
  v149 = v74;
  v74(v66, v153);
  v75 = *(v67 + 16);
  v76 = v172;
  if (v75)
  {
    v163 = *(v72 + 20);
    v77 = *(v162 + 80);
    sub_1C43FC354();
    v79 = v67 + v78;
    v81 = *(v80 + 72);
    v161 = (v82 + 8);
    v162 = v81;
    v155 = (v157 + 16);
    v156 = (v83 + 8);
    v160 = (v157 + 32);
    v84 = MEMORY[0x1E69E7CC0];
    v85 = v166;
    do
    {
      sub_1C4412888();
      sub_1C4C62810(v79, v28, v86);
      sub_1C4EFEBB8();
      sub_1C440B6A8();
      sub_1C4C6279C(&off_1EDDFCCA8, v87);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v171[0] == v169 && v171[1] == v170)
      {
        (*v161)(v76, v73);
      }

      else
      {
        v89 = sub_1C4F02938();
        v90 = v76;
        v91 = v89;
        (*v161)(v90, v73);

        if ((v91 & 1) == 0)
        {
          v92 = 1;
          v76 = v172;
          goto LABEL_26;
        }
      }

      v93 = (v28 + *(v164 + 32));
      v94 = *v93;
      v95 = v93[1];
      v96 = v158;
      sub_1C4EFD018();
      v97 = sub_1C4EFD2F8();
      v99 = v98;
      (*v156)(v96, v159);
      if (v94 == v97 && v95 == v99)
      {

        v76 = v172;
LABEL_28:
        v102 = v168;
        v85 = v166;
        (*v155)(v168, v28, v166);
        v92 = 0;
        v73 = v165;
        goto LABEL_29;
      }

      v101 = sub_1C4F02938();

      v76 = v172;
      if (v101)
      {
        goto LABEL_28;
      }

      v92 = 1;
      v73 = v165;
      v85 = v166;
LABEL_26:
      v102 = v168;
LABEL_29:
      sub_1C440BAA8(v102, v92, 1, v85);
      sub_1C49327BC(v28);
      if (sub_1C44157D4(v102, 1, v85) == 1)
      {
        sub_1C4420C3C(v102, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v103 = *v160;
        (*v160)(v167, v102, v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = *(v84 + 16);
          v109 = sub_1C43FCEC0();
          sub_1C44D45E4(v109, v110, v111, v84);
          v84 = v112;
        }

        v105 = *(v84 + 16);
        v104 = *(v84 + 24);
        if (v105 >= v104 >> 1)
        {
          v113 = sub_1C43FCFE8(v104);
          sub_1C44D45E4(v113, v105 + 1, 1, v84);
          v84 = v114;
        }

        *(v84 + 16) = v105 + 1;
        sub_1C43FBF6C();
        v103(v84 + v106 + *(v107 + 72) * v105, v167, v85);
        v76 = v172;
      }

      v79 += v162;
      --v75;
    }

    while (v75);
  }

  sub_1C45972E0();
  v115 = v148;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v116 = sub_1C4F00968();
  v117 = sub_1C4F01CC8();

  if (os_log_type_enabled(v116, v117))
  {
    sub_1C43FECF0();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v171[0] = v119;
    *v118 = 136315138;
    sub_1C44011D0();
    sub_1C4C6279C(v120, v121);
    v122 = sub_1C4F01AC8();
    v124 = sub_1C441D828(v122, v123, v171);

    *(v118 + 4) = v124;
    _os_log_impl(&dword_1C43F8000, v116, v117, "SportsSchedulesViewGenerator: performUpdate: gameEntityIdentifiers: %s", v118, 0xCu);
    sub_1C440962C(v119);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v125 = v153;
  v149(v115, v153);
  v126 = v152;
  sub_1C4C5F17C();
  sub_1C4C5F17C();
  v128 = v127;

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v129 = sub_1C4F00968();
  v130 = sub_1C4F01CC8();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v171[0] = v172;
    *v131 = 136315394;
    sub_1C4EFF8A8();
    sub_1C4420740();
    sub_1C4C6279C(v132, v133);
    v134 = sub_1C4F01AC8();
    v136 = sub_1C441D828(v134, v135, v171);

    *(v131 + 4) = v136;
    *(v131 + 12) = 2080;
    v137 = sub_1C4F01AC8();
    v139 = sub_1C441D828(v137, v138, v171);

    *(v131 + 14) = v139;
    _os_log_impl(&dword_1C43F8000, v129, v130, "SportsSchedulesViewGenerator: performUpdate: umcRelationshipIdentifiers: %s, statsRelationshipIdentifiers: %s", v131, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v149(v152, v153);
  }

  else
  {

    v149(v126, v125);
  }

  v140 = v151;
  if (*(v128 + 16))
  {

    sub_1C4C5F9A4();
    v53 = v141;

    v142 = MEMORY[0x1E69A98E0];
  }

  else
  {

    sub_1C4C5F9A4();
    v53 = v143;

    v142 = MEMORY[0x1E69A98D0];
  }

  v144 = *v142;
  v145 = sub_1C4EFF448();
  sub_1C43FBCE0(v145);
  (*(v146 + 104))(v140, v144);
  return v53;
}

uint64_t sub_1C4C5E698()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C4F00978();
  v1[5] = v4;
  sub_1C43FCF7C(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = sub_1C4EFF3B8();
  v1[8] = v8;
  sub_1C43FCF7C(v8);
  v1[9] = v9;
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v12 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4C5E79C()
{
  sub_1C43FEAEC();
  v1 = v0[10];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[4] + 48);
  sub_1C4C5FE28();
  v5 = GlobalKnowledgeStore.liveApiIdSearch(request:updateCache:lookupCache:serverTimeoutMs:)(v1, 0, 0, 700);
  v7 = v6;
  (*(v0[9] + 8))(v0[10], v0[8]);
  if (v7)
  {
    v8 = v0[7];

    sub_1C4F00178();
    v9 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C4405A60();
    if (os_log_type_enabled(v9, v10))
    {
      sub_1C43FD1A8();
      v11 = swift_slowAlloc();
      sub_1C43FBD24(v11);
      _os_log_impl(&dword_1C43F8000, v9, v5, "SportsSchedulesViewGenerator: liveApiIdSearch timed out", 0, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    v15 = *(v13 + 8);
    v16 = sub_1C4402B58();
    v17(v16);
    sub_1C4C626B8();
    v18 = swift_allocError();
    sub_1C442E654(v18, v19);
    swift_willThrow();
    v20 = v0[10];
    v21 = v0[7];

    sub_1C43FBDA0();

    return v22();
  }

  else
  {
    v24 = v0[10];
    v25 = v0[7];

    sub_1C43FBCF0();

    return v26(v5);
  }
}

uint64_t sub_1C4C5E994(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4C5E9AC()
{
  sub_1C43FEAEC();
  v1 = v0[4];
  v2 = v0[2];
  sub_1C4C5BE78();
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  sub_1C4418704(sub_1C4C62680, v5, v6, v7, v8, v9, v10, v11, v23, v25);

  v12 = v0[3];
  v13 = *(v3 + 16);
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;

  sub_1C4418704(sub_1C4C6269C, v14, v15, v16, v17, v18, v19, v20, v24, v26);

  sub_1C43FC1B0();

  return v22();
}

void *sub_1C4C5EAC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[6];

  sub_1C440962C(v0 + 7);
  return v0;
}

uint64_t sub_1C4C5EB1C()
{
  sub_1C4C5EAC8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C5EB50()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4707B70;

  return sub_1C4C5C010();
}

void sub_1C4C5EBE0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0B8FD0, &qword_1C4F0EAB0);
  v5 = sub_1C43FCDF8(v4);
  v87 = v6;
  v88 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v89 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFF458();
  v12 = sub_1C43FCDF8(v11);
  v79 = v13;
  v80 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v78 = v16;
  sub_1C43FBE44();
  v77 = sub_1C4EFF988();
  v17 = sub_1C43FCDF8(v77);
  v75 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v76 = v21;
  sub_1C43FBE44();
  v85 = sub_1C4EFF448();
  v22 = sub_1C43FCDF8(v85);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v90 = sub_1C4EFF428();
  v30 = sub_1C43FCDF8(v90);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBD08();
  v86 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v74 - v38;
  v40 = *(v1 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v81 = v3;
  if (v40)
  {
    v91 = MEMORY[0x1E69E7CC0];
    sub_1C459DAA8();
    v42 = v91;
    LODWORD(v84) = *MEMORY[0x1E69A98D0];
    v83 = *(v24 + 104);
    *&v82 = v32 + 32;
    v43 = (v1 + 40);
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43;
      (v83)(v29, v84, v85);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF3E8();
      v91 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C43FCFE8(v46);
        sub_1C459DAA8();
        v42 = v91;
      }

      *(v42 + 16) = v47 + 1;
      v48 = *(v32 + 80);
      sub_1C43FC354();
      (*(v32 + 32))(v42 + v49 + *(v32 + 72) * v47, v39, v90);
      v43 += 2;
      --v40;
    }

    while (v40);
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v42 + 16);
  if (v50)
  {
    v91 = v41;
    sub_1C459DA68();
    v52 = v90;
    v51 = v91;
    v54 = *(v32 + 16);
    v53 = v32 + 16;
    v55 = *(v53 + 64);
    sub_1C43FC354();
    v57 = v42 + v56;
    v84 = *(v53 + 56);
    v85 = v58;
    v83 = (v53 - 8);
    v82 = xmmword_1C4F0D130;
    v59 = v89;
    do
    {
      v61 = v85;
      v60 = v86;
      v85(v86, v57, v52);
      v62 = *(v88 + 48);
      v61(v59, v60, v52);
      sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v63 = sub_1C4EFEEF8();
      sub_1C43FCF7C(v63);
      v65 = *(v64 + 72);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      *(swift_allocObject() + 16) = v82;
      v59 = v89;
      sub_1C4EFE408();
      sub_1C4D504A4();
      v69 = v68;
      (*v83)(v60, v52);
      *(v59 + v62) = v69;
      v91 = v51;
      v71 = *(v51 + 16);
      v70 = *(v51 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C43FCFE8(v70);
        sub_1C459DA68();
        v51 = v91;
      }

      *(v51 + 16) = v71 + 1;
      sub_1C43FBF6C();
      sub_1C4C6272C(v59, v51 + v72 + *(v73 + 72) * v71);
      v57 += v84;
      --v50;
    }

    while (v50);
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4BA029C(v51);
  (*(v75 + 104))(v76, *MEMORY[0x1E69A9A50], v77);
  (*(v79 + 104))(v78, *MEMORY[0x1E69A9900], v80);
  sub_1C4402B58();
  sub_1C4EFF378();
  sub_1C43FE9F0();
}

void sub_1C4C5F17C()
{
  sub_1C43FBD3C();
  v118 = v0;
  v2 = v1;
  v4 = v3;
  v100 = sub_1C4EFF448();
  v5 = sub_1C43FCDF8(v100);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v99 = v10;
  sub_1C43FBE44();
  v105 = sub_1C4EFEEF8();
  v11 = sub_1C43FCDF8(v105);
  v116 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v95 - v19;
  sub_1C43FBE44();
  v20 = sub_1C4EFF0C8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = *(*(sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v115 = v31;
  sub_1C43FBE44();
  v32 = sub_1C4EFF8A8();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v114 = v38;
  sub_1C43FBE44();
  v108 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v39 = sub_1C44057B8(v108);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v2 + 16);
  if (v113)
  {
    v117 = v32;
    v101 = v17;
    v45 = 0;
    v46 = *(v42 + 80);
    v111 = *(v42 + 72);
    v112 = v2 + ((v46 + 32) & ~v46);
    v47 = v4 + 56;
    v119 = v23 + 16;
    v104 = (v116 + 8);
    v98 = *v118;
    v97 = (v7 + 104);
    v96 = (v7 + 8);
    v95 = (v35 + 16);
    v116 = MEMORY[0x1E69E7CC0];
    v106 = v35;
    v110 = (v35 + 32);
    v48 = v4;
    v49 = v115;
    while (1)
    {
      v118 = v45;
      sub_1C4412888();
      sub_1C4C62810(v50, v44, v51);
      if (*(v4 + 16))
      {
        break;
      }

      v64 = 1;
LABEL_21:
      v69 = v117;
      sub_1C440BAA8(v49, v64, 1, v117);
      sub_1C49327BC(v44);
      if (sub_1C44157D4(v49, 1, v69) == 1)
      {
        sub_1C4420C3C(v49, &qword_1EC0B9A10, &qword_1C4F107C0);
      }

      else
      {
        v70 = v69;
        v71 = *v110;
        (*v110)(v114, v49, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v116 + 16);
          v89 = sub_1C43FCEC0();
          sub_1C458BBE0(v89, v90, v91, v92);
          v116 = v93;
        }

        v73 = *(v116 + 16);
        v72 = *(v116 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1C458BBE0(v72 > 1, v73 + 1, 1, v116);
          v116 = v94;
        }

        *(v116 + 16) = v73 + 1;
        sub_1C43FBF6C();
        v71(v75 + v74 + *(v76 + 72) * v73, v114);
        v4 = v48;
        v49 = v115;
      }

      v45 = (v118 + 1);
      if ((v118 + 1) == v113)
      {
        goto LABEL_41;
      }
    }

    v52 = *(v4 + 40);
    sub_1C44011D0();
    sub_1C4C6279C(&qword_1EDDFE820, v53);
    v54 = sub_1C4F00FD8();
    v55 = ~(-1 << *(v4 + 32));
    do
    {
      v56 = v54 & v55;
      if (((*(v47 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v55)) & 1) == 0)
      {
        goto LABEL_20;
      }

      (*(v23 + 16))(v28, *(v48 + 48) + *(v23 + 72) * v56, v20);
      sub_1C44011D0();
      sub_1C4C6279C(&qword_1EDDFCC98, v57);
      v58 = sub_1C4F010B8();
      (*(v23 + 8))(v28, v20);
      v54 = v56 + 1;
    }

    while ((v58 & 1) == 0);
    v59 = v108[5];
    sub_1C4EFE308();
    sub_1C440B6A8();
    v61 = sub_1C4C6279C(&off_1EDDFCCA8, v60);
    v62 = v105;
    sub_1C4402B58();
    sub_1C4F01578();
    v103 = v61;
    sub_1C4F01578();
    if (v122 == v120 && v123 == v121)
    {
      LODWORD(v107) = 1;
    }

    else
    {
      LODWORD(v107) = sub_1C4F02938();
    }

    v102 = *v104;
    v102(v109, v62);

    if ((v107 & 1) == 0)
    {
LABEL_20:
      v64 = 1;
      v4 = v48;
      v49 = v115;
      goto LABEL_21;
    }

    v65 = v108[7];
    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4402B58();
    sub_1C4F01578();
    if (v122 == v120 && v123 == v121)
    {
      v77 = sub_1C440484C();
      v78(v77);
    }

    else
    {
      LODWORD(v107) = sub_1C4F02938();
      v67 = sub_1C440484C();
      v68(v67);

      if ((v107 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v79 = &v44[v108[8]];
    v81 = *v79;
    v80 = *(v79 + 1);
    v107 = v81;
    v103 = v80;
    v82 = v99;
    v83 = v100;
    (*v97)(v99, v98, v100);
    v102 = sub_1C4EFF438();
    v85 = v84;
    (*v96)(v82, v83);
    if (v107 == v102 && v103 == v85)
    {

      v49 = v115;
    }

    else
    {
      v87 = sub_1C4F02938();

      v49 = v115;
      if ((v87 & 1) == 0)
      {
        v64 = 1;
LABEL_39:
        v4 = v48;
        goto LABEL_21;
      }
    }

    (*v95)(v49, &v44[v108[6]], v117);
    v64 = 0;
    goto LABEL_39;
  }

  v116 = MEMORY[0x1E69E7CC0];
LABEL_41:
  sub_1C459740C();
  sub_1C43FE9F0();
}