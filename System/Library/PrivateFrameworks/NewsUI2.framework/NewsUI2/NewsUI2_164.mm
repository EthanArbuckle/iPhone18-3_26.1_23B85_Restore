uint64_t sub_21992A3F4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_219928A80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21992A460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219928A80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21992A4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21992A504(void *a1)
{
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21992A5E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_219BEE544();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for FeedAvailability();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21992A6F8, 0, 0);
}

uint64_t sub_21992A6F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + 56) useFood])
    {
      v0[16] = *(v2 + 64);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_21992A8C4;

      return MEMORY[0x282193DF0](0, ObjectType);
    }

    sub_21992B19C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21992B19C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21992A8C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_219909CFC;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_21992A9E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21992A9E0()
{
  v16 = v0;
  v1 = [*(v0 + 144) recipeCatalogTagID];
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
    v4 = sub_219BF5414();
    v6 = v5;

    v7 = v2[12];
    v8 = v2[13];
    __swift_project_boxed_opaque_existential_1(v2 + 9, v7);
    memset(v14, 0, sizeof(v14));
    v15 = -1;
    *(v0 + 160) = (*(v8 + 8))(v4, v6, 13, v14, v7, v8);

    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_21992ABD0;
    v10 = *(v0 + 112);

    return MEMORY[0x2821D23D8](v10);
  }

  else
  {
    sub_21992B19C();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_21992ABD0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_219909D94;
  }

  else
  {

    v2 = sub_21992ACEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21992ACEC()
{
  sub_218C8CC10(v0[14], v0[13]);
  if (swift_getEnumCaseMultiPayload())
  {
    v1 = v0[14];
    sub_2190BB958(v0[13], type metadata accessor for FeedAvailability);
    sub_21992B19C();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_2190BB958(v1, type metadata accessor for FeedAvailability);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[13];
    v0[23] = *v5;
    sub_218BFB73C();
    sub_218BFB694(v5 + *(v6 + 48));
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_219BEE534();
    sub_219BF5BD4();
    v0[24] = sub_219BF5BC4();
    v8 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_21992AEE0, v8, v7);
  }
}

uint64_t sub_21992AEE0()
{
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186DB6BC();
  (*(v6 + 16))(v4, v3, v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v6 + 32))(v9 + v8, v4, v7);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v10 = v1;

  v11 = sub_219BE1E04();
  v0[25] = v11;

  if (v11)
  {
    v12 = sub_219909A1C;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_21992B05C()
{
  sub_21881ADAC(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2F54();
}

uint64_t sub_21992B100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_21992A5E8(a1, v1);
}

unint64_t sub_21992B19C()
{
  result = qword_27CC20FF8;
  if (!qword_27CC20FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20FF8);
  }

  return result;
}

unint64_t sub_21992B204()
{
  result = qword_27CC21008;
  if (!qword_27CC21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21008);
  }

  return result;
}

BOOL sub_21992B258(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_219BF5414();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  NewsActivityType2.init(rawValue:)(v5);
  return v7 != 37;
}

uint64_t sub_21992B2C8(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_219BF5414();
  v4 = v3;

  if (v2 == sub_219BF5414() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();
  }

  return v7 & 1;
}

uint64_t sub_21992B36C(void *a1)
{
  v2 = v1;
  sub_21896FA3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v83 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v83 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v83 - v15;
  v17 = [a1 userInfo];
  if (v17)
  {
    v91 = v5;
    v89 = v12;
    v90 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v17;
    v19 = sub_219BF5214();

    v20 = [a1 activityType];
    v21 = sub_219BF5414();
    v23 = v22;

    [a1 _executionContext];
    v24 = [a1 interaction];
    sub_218D16ED0(v21, v23, v19, v24, &v100);

    v32 = v100;
    v33 = NewsActivity2.activityTraits.getter();
    v88 = v32;
    v86 = 0;
    v87 = v1;
    v85 = v9;
    if (v33)
    {
      v84 = v16;
      v34 = *(v33 + 2);
      v83[1] = v33;
      v35 = v33 + 32;
      do
      {
        if (!v34)
        {

          v32 = v88;
          v2 = v87;
          v9 = v85;
          goto LABEL_11;
        }

        if (!*v35)
        {
          v62 = v19;

          goto LABEL_23;
        }

        v36 = sub_219BF78F4();

        ++v35;
        --v34;
      }

      while ((v36 & 1) == 0);
      v62 = v19;
LABEL_23:

      v85 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
      v63 = v88;
      *&v100 = v88;
      v64 = v87;
      v65 = sub_21992C284(&v100, v62);

      v66 = sub_219BDFA44();
      (*(*(v66 - 8) + 56))(v84, 1, 1, v66);
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
      sub_218718690(v64 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver, v99);
      sub_2187B1814(v99, &v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (v95)
      {
        sub_21875F93C(&v93, &v96);
        *&v93 = v63;
        v31 = sub_2194DA78C(&v96);
        v68 = v67;
        v90 = v69;
        __swift_destroy_boxed_opaque_existential_1(&v96);
      }

      else
      {
        sub_2187B1D30(&v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v68 = qword_280ED32E0;
        v70 = qword_280ED32E8;

        v90 = v70;
        sub_2188202A8(v68);
      }

      v92 = v63;
      if (v65)
      {
        v71 = sub_219BDD274();
        v72 = v65;
      }

      else
      {
        v72 = 0;
        v71 = 0;
        *(&v93 + 1) = 0;
        v94 = 0;
      }

      v73 = v84;
      *&v93 = v72;
      v95 = v71;
      v74 = v89;
      sub_2189B4E2C(v84, v89);
      sub_2187B1814(&v100, &v96, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v75 = (*(v91 + 80) + 24) & ~*(v91 + 80);
      v76 = (v6 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      *(v77 + 16) = v65;
      sub_2189B4EAC(v74, v77 + v75);
      v78 = v77 + v76;
      v79 = v97;
      *v78 = v96;
      *(v78 + 16) = v79;
      *(v78 + 32) = v98;
      v80 = (v77 + ((v76 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v80 = v31;
      v80[1] = v68;
      v80[2] = v90;
      swift_retain_n();

      sub_2188202A8(v68);
      sub_218702160();
      sub_21992C5DC(&qword_280EE5D90, sub_218702160);
      v81 = v86;
      sub_219BEB474();
      if (!v81)
      {

        sub_2187B1D30(v99, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1D30(&v100, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218A42D80(v73);
        sub_218806FD0(&v93);
        sub_218932F9C(v88);
        sub_2187FABEC(v68);
        return v31;
      }

      sub_218806FD0(&v93);
      sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v60 = sub_219BE2FF4();
      sub_218932F9C(v88);

      sub_2187FABEC(v68);
      sub_2187B1D30(v99, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1D30(&v100, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v61 = v73;
      goto LABEL_33;
    }

LABEL_11:
    v84 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
    *&v100 = v32;
    v37 = sub_21992C284(&v100, v19);

    v38 = sub_219BDFA44();
    (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    sub_218718690(v2 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver, v99);
    sub_2187B1814(v99, &v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v95)
    {
      v39 = v9;
      sub_21875F93C(&v93, &v96);
      *&v93 = v32;
      v31 = sub_2194DA78C(&v96);
      v41 = v40;
      v89 = v42;
      __swift_destroy_boxed_opaque_existential_1(&v96);
      v43 = v91;
    }

    else
    {
      v39 = v9;
      sub_2187B1D30(&v93, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v43 = v91;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v31 = qword_280ED32D8;
      v41 = qword_280ED32E0;
      v44 = qword_280ED32E8;

      v89 = v44;
      sub_2188202A8(v41);
    }

    v92 = v32;
    v45 = v41;
    if (v37)
    {
      v46 = sub_219BDD274();
      v47 = v37;
    }

    else
    {
      v47 = 0;
      v46 = 0;
      *(&v93 + 1) = 0;
      v94 = 0;
    }

    *&v93 = v47;
    v95 = v46;
    v48 = v39;
    v49 = v90;
    sub_2189B4E2C(v48, v90);
    sub_2187B1814(&v100, &v96, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v50 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v51 = (v6 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = v37;
    sub_2189B4EAC(v49, v53 + v50);
    v54 = v53 + v51;
    v55 = v97;
    *v54 = v96;
    *(v54 + 16) = v55;
    *(v54 + 32) = v98;
    v56 = (v53 + v52);
    v57 = (v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v56 = 0;
    v56[1] = 0;
    *v57 = v31;
    v57[1] = v45;
    v58 = v45;
    v57[2] = v89;
    swift_retain_n();

    sub_2188202A8(v45);
    sub_218702160();
    sub_21992C5DC(&qword_280EE5D90, sub_218702160);
    v59 = v86;
    sub_219BEB464();
    if (v59)
    {

      sub_218806FD0(&v93);
      sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v60 = sub_219BE2FF4();
      sub_218932F9C(v88);

      sub_2187FABEC(v58);
      sub_2187B1D30(v99, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1D30(&v100, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v61 = v85;
LABEL_33:
      sub_218A42D80(v61);
      return v60;
    }

    sub_2187B1D30(v99, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1D30(&v100, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v85);
    sub_218806FD0(&v93);
    sub_218932F9C(v88);
    sub_2187FABEC(v45);
  }

  else
  {
    sub_219BF61F4();
    sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    v26 = [a1 activityType];
    v27 = sub_219BF5414();
    v29 = v28;

    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_2186FC3BC();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_2186C6148(0, &qword_280E8D790);
    v30 = sub_219BF6F44();
    sub_219BE5314();

    LOBYTE(v100) = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return v31;
}

uint64_t sub_21992C284(unint64_t *a1, uint64_t a2)
{
  v4 = sub_219BE0364();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2186C6148(0, &qword_280E8E650);
  v16 = sub_219BF6284();
  v17 = v9;
  sub_219BF72A4();
  if (!*(a2 + 16) || (v10 = sub_21931EECC(v18), (v11 & 1) == 0))
  {
    sub_218B6B67C(v18);
    return 0;
  }

  sub_2186D1230(*(a2 + 56) + 32 * v10, v19);
  sub_218B6B67C(v18);
  if ((swift_dynamicCast() & 1) == 0 || v16 != 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = (v8 >> 58) & 0x3C | (v8 >> 1) & 3;
  if (v13 <= 0x1E && ((1 << v13) & 0x40F0011E) != 0)
  {
    v12 = sub_219BDD144();
    sub_219BE0354();
    sub_21992C5DC(&qword_280EE8430, MEMORY[0x277D2E4C0]);
    sub_219BDD1F4();
    (*(v5 + 8))(v7, v4);
  }

  return v12;
}

uint64_t sub_21992C4D8()
{

  v1 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
  sub_218702160();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver);

  return swift_deallocClassInstance();
}

uint64_t sub_21992C5DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21992C650(void *a1)
{
  sub_21992D1FC(0, &qword_27CC21030, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992D140();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s12HeadlineDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21992C804@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992D1FC(0, &qword_27CC21020, MEMORY[0x277D844C8]);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992D140();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_219BF76F4();
  v12[1] = v14;
  sub_219BDB954();
  v20 = 1;
  sub_2188390BC(&unk_280EE9D10);
  sub_219BF76E4();
  (*(v13 + 8))(v9, v19);
  sub_218AB007C(v6, v12 + *(v10 + 20));
  sub_21992D194(v12, v17, _s12HeadlineDataVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21992D01C(v12, _s12HeadlineDataVMa);
}

uint64_t sub_21992CAFC()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21992CB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21992CC2C(uint64_t a1)
{
  v2 = sub_21992D140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992CC68(uint64_t a1)
{
  v2 = sub_21992D140();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21992CCDC(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadlineModel(0);
  if ((sub_21912DF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v15 = *(_s8HeadlineVMa(0) + 20);
  v16 = *(v12 + 48);
  sub_21992D194(a1 + v15, v14, sub_21873F65C);
  sub_21992D194(a2 + v15, &v14[v16], sub_21873F65C);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_21992D01C(v14, sub_21873F65C);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21992D194(v14, v10, sub_21873F65C);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21992D01C(v14, sub_2193D01B8);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_2188390BC(&qword_280EE9D20);
  v19 = sub_219BF53A4();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_21992D01C(v14, sub_21873F65C);
  return (v19 & 1) != 0;
}

uint64_t sub_21992D01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21992D0C4()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21992D140()
{
  result = qword_27CC21028;
  if (!qword_27CC21028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21028);
  }

  return result;
}

uint64_t sub_21992D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21992D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992D140();
    v7 = a3(a1, &_s12HeadlineDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_21992D260(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && a1[1] == a2[1] || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s12HeadlineDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21992D194(a1 + v17, v14, sub_21873F65C);
    sub_21992D194(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_21992D01C(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21992D194(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_21992D01C(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21992D01C(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

unint64_t sub_21992D5C0()
{
  result = qword_27CC21038;
  if (!qword_27CC21038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21038);
  }

  return result;
}

unint64_t sub_21992D618()
{
  result = qword_27CC21040;
  if (!qword_27CC21040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21040);
  }

  return result;
}

unint64_t sub_21992D670()
{
  result = qword_27CC21048;
  if (!qword_27CC21048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21048);
  }

  return result;
}

uint64_t _s7URLDataVMa()
{
  result = qword_27CC21050;
  if (!qword_27CC21050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21992D738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BDB954();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992DD28(0, &qword_27CC21060, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992DC70();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2188390BC(&unk_280EE9D10);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21992DCC4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21992D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21992DA68(uint64_t a1)
{
  v2 = sub_21992DC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992DAA4(uint64_t a1)
{
  v2 = sub_21992DC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21992DAF8(void *a1)
{
  sub_21992DD28(0, &qword_27CC21070, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992DC70();
  sub_219BF7B44();
  sub_219BDB954();
  sub_2188390BC(&unk_280EE9D40);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21992DC70()
{
  result = qword_27CC21068;
  if (!qword_27CC21068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21068);
  }

  return result;
}

uint64_t sub_21992DCC4(uint64_t a1, uint64_t a2)
{
  v4 = _s7URLDataVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21992DD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992DC70();
    v7 = a3(a1, &_s7URLDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21992DDA0()
{
  result = qword_27CC21078;
  if (!qword_27CC21078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21078);
  }

  return result;
}

unint64_t sub_21992DDF8()
{
  result = qword_27CC21080;
  if (!qword_27CC21080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21080);
  }

  return result;
}

unint64_t sub_21992DE50()
{
  result = qword_27CC21088;
  if (!qword_27CC21088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21088);
  }

  return result;
}

uint64_t sub_21992DECC(void *a1)
{
  sub_21992ECE4(0, &qword_27CC210B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992EC28();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s9IssueDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21992E080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992ECE4(0, &qword_27CC210A0, MEMORY[0x277D844C8]);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992EC28();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_219BF76F4();
  v12[1] = v14;
  sub_219BDB954();
  v20 = 1;
  sub_2188390BC(&unk_280EE9D10);
  sub_219BF76E4();
  (*(v13 + 8))(v9, v19);
  sub_218AB007C(v6, v12 + *(v10 + 20));
  sub_21992EC7C(v12, v17, _s9IssueDataVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21992EB74(v12, _s9IssueDataVMa);
}

uint64_t sub_21992E378(uint64_t a1)
{
  v2 = sub_21992EC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992E3B4(uint64_t a1)
{
  v2 = sub_21992EC28();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21992E428(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && a1[1] == a2[1] || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s9IssueDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21992EC7C(a1 + v17, v14, sub_21873F65C);
    sub_21992EC7C(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_21992EB74(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21992EC7C(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_21992EB74(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21992EB74(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

BOOL sub_21992E774(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_219BDB954();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[8];
  v11 = a1[10];
  v41 = a1[11];
  v42 = v11;
  v12 = a1[24];
  v13 = a2[8];
  v14 = a2[10];
  LODWORD(v9) = a2[11];
  v39 = a1[12];
  v40 = v9;
  LODWORD(v9) = a2[12];
  v37 = v12;
  v38 = v9;
  v36 = a2[24];
  sub_2189666A0();
  v15 = sub_219BF6DD4();
  result = 0;
  if ((v15 & 1) != 0 && ((v10 ^ v13) & 1) == 0)
  {
    v17 = sub_219BF6DD4();
    result = 0;
    if ((v17 & 1) != 0 && ((v42 ^ v14) & 1) == 0 && ((v41 ^ v40) & 1) == 0 && ((v39 ^ v38) & 1) == 0 && ((v37 ^ v36) & 1) == 0)
    {
      v18 = *(_s5IssueVMa(0) + 20);
      v19 = *(v32 + 48);
      v20 = &a1[v18];
      v21 = v33;
      sub_21992EC7C(v20, v33, sub_21873F65C);
      sub_21992EC7C(&a2[v18], v21 + v19, sub_21873F65C);
      v23 = v34;
      v22 = v35;
      v24 = *(v34 + 48);
      if (v24(v21, 1, v35) == 1)
      {
        if (v24(v21 + v19, 1, v22) == 1)
        {
          sub_21992EB74(v21, sub_21873F65C);
          return 1;
        }
      }

      else
      {
        v25 = v31;
        sub_21992EC7C(v21, v31, sub_21873F65C);
        if (v24(v21 + v19, 1, v22) != 1)
        {
          v26 = v21 + v19;
          v27 = v30;
          (*(v23 + 32))(v30, v26, v22);
          sub_2188390BC(&qword_280EE9D20);
          v28 = sub_219BF53A4();
          v29 = *(v23 + 8);
          v29(v27, v22);
          v29(v25, v22);
          sub_21992EB74(v21, sub_21873F65C);
          return (v28 & 1) != 0;
        }

        (*(v23 + 8))(v25, v22);
      }

      sub_21992EB74(v21, sub_2193D01B8);
      return 0;
    }
  }

  return result;
}

uint64_t sub_21992EB74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21992EC28()
{
  result = qword_27CC210A8;
  if (!qword_27CC210A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210A8);
  }

  return result;
}

uint64_t sub_21992EC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21992ECE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992EC28();
    v7 = a3(a1, &_s9IssueDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21992ED5C()
{
  result = qword_27CC210B8;
  if (!qword_27CC210B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210B8);
  }

  return result;
}

unint64_t sub_21992EDB4()
{
  result = qword_27CC210C0;
  if (!qword_27CC210C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210C0);
  }

  return result;
}

unint64_t sub_21992EE0C()
{
  result = qword_27CC210C8;
  if (!qword_27CC210C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210C8);
  }

  return result;
}

uint64_t sub_21992EE60@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5ModelOMa();
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992F354(v26, v16, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2199314D8(v16, v13, _s12HeadlineDataVMa);
      sub_21992F354(&v13[*(v11 + 20)], v27, sub_21873F65C);
      v18 = _s12HeadlineDataVMa;
      v19 = v13;
      return sub_2199313D0(v19, v18);
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_2199314D8(v16, v7, _s9IssueDataVMa);
      sub_21992F354(&v7[*(v5 + 20)], v27, sub_21873F65C);
      v18 = _s9IssueDataVMa;
      v19 = v7;
      return sub_2199313D0(v19, v18);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_2199314D8(v16, v4, _s14PuzzleFeedDataVMa);
      sub_21992F354(&v4[*(v2 + 20)], v27, sub_21873F65C);
      v18 = _s14PuzzleFeedDataVMa;
      v19 = v4;
      return sub_2199313D0(v19, v18);
    }

LABEL_7:
    sub_2199314D8(v16, v10, _s7TagDataVMa);
    sub_21992F354(&v10[*(v8 + 20)], v27, sub_21873F65C);
    v18 = _s7TagDataVMa;
    v19 = v10;
    return sub_2199313D0(v19, v18);
  }

  if (EnumCaseMultiPayload == 5)
  {
    v20 = v16;
    v16 = v25;
    sub_2199314D8(v20, v25, _s10PuzzleDataVMa);
    sub_21992F354(&v16[*(v24 + 20)], v27, sub_21873F65C);
    v21 = _s10PuzzleDataVMa;
  }

  else
  {
    v22 = sub_219BDB954();
    (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
    v21 = _s5ModelOMa;
  }

  v18 = v21;
  v19 = v16;
  return sub_2199313D0(v19, v18);
}

uint64_t _s5ModelOMa()
{
  result = qword_27CC210D0;
  if (!qword_27CC210D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21992F354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21992F3BC()
{
  result = _s12HeadlineDataVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s7TagDataVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s9IssueDataVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s14PuzzleFeedDataVMa(319);
        if (v4 <= 0x3F)
        {
          result = _s10PuzzleDataVMa(319);
          if (v5 <= 0x3F)
          {
            result = _s7URLDataVMa();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21992F484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v41);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v40);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v43);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - v9;
  v10 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931540(0, &qword_27CC210E8, MEMORY[0x277D844C8]);
  v14 = v13;
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = _s5ModelOMa();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_219931430();
  v21 = v45;
  sub_219BF7B34();
  if (!v21)
  {
    v45 = v19;
    v22 = v44;
    v54 = 0;
    sub_219931484();
    sub_219BF7734();
    v23 = v16;
    if (v55 <= 2u)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          v48 = 1;
          sub_2199315F8(&qword_27CC21118, _s7TagDataVMa);
          v26 = v32;
          sub_219BF7734();
          (*(v42 + 8))(v16, v14);
          v25 = v45;
          sub_2199314D8(v26, v45, _s7TagDataVMa);
        }

        else
        {
          v49 = 1;
          sub_2199315F8(&qword_27CC21120, _s9IssueDataVMa);
          v28 = v36;
          sub_219BF7734();
          (*(v42 + 8))(v23, v14);
          v25 = v45;
          sub_2199314D8(v28, v45, _s9IssueDataVMa);
        }
      }

      else
      {
        v47 = 1;
        sub_2199315F8(&qword_27CC21128, _s12HeadlineDataVMa);
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v12, v45, _s12HeadlineDataVMa);
      }
    }

    else if (v55 > 4u)
    {
      if (v55 == 5)
      {
        v52 = 1;
        sub_2199315F8(&qword_27CC21108, _s10PuzzleDataVMa);
        v27 = v34;
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v27, v45, _s10PuzzleDataVMa);
      }

      else
      {
        v53 = 1;
        sub_2199315F8(&qword_27CC21100, _s7URLDataVMa);
        v30 = v37;
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v30, v45, _s7URLDataVMa);
      }
    }

    else if (v55 == 3)
    {
      v50 = 1;
      sub_2199315F8(&qword_27CC21118, _s7TagDataVMa);
      v24 = v33;
      sub_219BF7734();
      (*(v42 + 8))(v23, v14);
      v25 = v45;
      sub_2199314D8(v24, v45, _s7TagDataVMa);
    }

    else
    {
      v51 = 1;
      sub_2199315F8(&qword_27CC21110, _s14PuzzleFeedDataVMa);
      v29 = v39;
      sub_219BF7734();
      (*(v42 + 8))(v16, v14);
      v25 = v45;
      sub_2199314D8(v29, v45, _s14PuzzleFeedDataVMa);
    }

    swift_storeEnumTagMultiPayload();
    sub_2199314D8(v25, v22, _s5ModelOMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_21992FD94(void *a1)
{
  v41 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v41);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v40);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v39);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v42);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - v8;
  v9 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s5ModelOMa();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931540(0, &qword_27CC21130, MEMORY[0x277D84538]);
  v50 = v15;
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931430();
  sub_219BF7B44();
  sub_21992F354(v51, v14, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v19 = v50;
      v20 = v17;
      if (EnumCaseMultiPayload == 5)
      {
        v21 = v45;
        sub_2199314D8(v14, v45, _s10PuzzleDataVMa);
        v54 = 1280;
        sub_2199315A4();
        v30 = v52;
        sub_219BF7834();
        if (!v30)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21150, _s10PuzzleDataVMa);
          sub_219BF7834();
        }

        v23 = _s10PuzzleDataVMa;
      }

      else
      {
        v21 = v46;
        sub_2199314D8(v14, v46, _s7URLDataVMa);
        v54 = 1536;
        sub_2199315A4();
        v37 = v52;
        sub_219BF7834();
        if (!v37)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21140, _s7URLDataVMa);
          sub_219BF7834();
        }

        v23 = _s7URLDataVMa;
      }
    }

    else
    {
      v19 = v50;
      v20 = v17;
      if (EnumCaseMultiPayload == 3)
      {
        v21 = v43;
        sub_2199314D8(v14, v43, _s7TagDataVMa);
        v54 = 768;
        sub_2199315A4();
        v22 = v52;
        sub_219BF7834();
        if (!v22)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21148, _s7TagDataVMa);
          sub_219BF7834();
        }

        v23 = _s7TagDataVMa;
      }

      else
      {
        v21 = v44;
        sub_2199314D8(v14, v44, _s14PuzzleFeedDataVMa);
        v54 = 1024;
        sub_2199315A4();
        v36 = v52;
        sub_219BF7834();
        if (!v36)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21158, _s14PuzzleFeedDataVMa);
          sub_219BF7834();
        }

        v23 = _s14PuzzleFeedDataVMa;
      }
    }

    v32 = v23;
    v33 = v21;
LABEL_30:
    sub_2199313D0(v33, v32);
    return (*(v53 + 8))(v20, v19);
  }

  v24 = v48;
  if (!EnumCaseMultiPayload)
  {
    sub_2199314D8(v14, v11, _s12HeadlineDataVMa);
    v54 = 0;
    sub_2199315A4();
    v19 = v50;
    v20 = v17;
    v31 = v52;
    sub_219BF7834();
    if (!v31)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21168, _s12HeadlineDataVMa);
      sub_219BF7834();
    }

    v32 = _s12HeadlineDataVMa;
    v33 = v11;
    goto LABEL_30;
  }

  v26 = v50;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v47;
    sub_2199314D8(v14, v47, _s7TagDataVMa);
    v54 = 256;
    sub_2199315A4();
    v27 = v52;
    sub_219BF7834();
    if (!v27)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21148, _s7TagDataVMa);
      sub_219BF7834();
    }

    v28 = _s7TagDataVMa;
    v29 = v25;
  }

  else
  {
    sub_2199314D8(v14, v48, _s9IssueDataVMa);
    v54 = 512;
    sub_2199315A4();
    v34 = v52;
    sub_219BF7834();
    if (!v34)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21160, _s9IssueDataVMa);
      sub_219BF7834();
    }

    v28 = _s9IssueDataVMa;
    v29 = v24;
  }

  sub_2199313D0(v29, v28);
  return (*(v53 + 8))(v17, v26);
}

uint64_t sub_219930754(uint64_t a1)
{
  v2 = sub_219931430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219930790(uint64_t a1)
{
  v2 = sub_219931430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199307E4()
{
  sub_219BF5524();
}

uint64_t sub_2199308EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219931814();
  *a1 = result;
  return result;
}

void sub_21993091C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE600000000000000;
  v6 = 0x656C7A7A7570;
  if (v2 != 5)
  {
    v6 = 7107189;
    v5 = 0xE300000000000000;
  }

  v7 = 0xEA0000000000746ELL;
  v8 = 0x65764574726F7073;
  if (v2 != 3)
  {
    v8 = 0x6546656C7A7A7570;
    v7 = 0xEA00000000006465;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6775156;
  if (v2 != 1)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_219930ACC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v2 - 8);
  v60 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v56 - v13);
  v15 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = _s5ModelOMa();
  MEMORY[0x28223BE20](v18);
  v64 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v63 = (&v56 - v21);
  MEMORY[0x28223BE20](v22);
  v62 = (&v56 - v23);
  MEMORY[0x28223BE20](v24);
  v61 = (&v56 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = (&v56 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v56 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v56 - v33);
  sub_21993136C();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v38 + 56);
  sub_21992F354(v66, v37, _s5ModelOMa);
  sub_21992F354(v67, &v37[v39], _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v41 = v63;
        sub_21992F354(v37, v63, _s5ModelOMa);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v42 = v59;
          sub_2199314D8(&v37[v39], v59, _s10PuzzleDataVMa);
          v43 = sub_219932434(v41, v42);
          v44 = _s10PuzzleDataVMa;
          goto LABEL_21;
        }

        v54 = _s10PuzzleDataVMa;
      }

      else
      {
        v41 = v64;
        sub_21992F354(v37, v64, _s5ModelOMa);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v42 = v60;
          sub_2199314D8(&v37[v39], v60, _s7URLDataVMa);
          v43 = sub_219BDB8A4();
          v44 = _s7URLDataVMa;
          goto LABEL_21;
        }

        v54 = _s7URLDataVMa;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v41 = v61;
      sub_21992F354(v37, v61, _s5ModelOMa);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v42 = v57;
        sub_2199314D8(&v37[v39], v57, _s7TagDataVMa);
        v43 = sub_219933568(v41, v42);
        v44 = _s7TagDataVMa;
LABEL_21:
        v47 = v37;
        v48 = v44;
        sub_2199313D0(v42, v44);
        v49 = v41;
        goto LABEL_22;
      }

      v54 = _s7TagDataVMa;
    }

    else
    {
      v41 = v62;
      sub_21992F354(v37, v62, _s5ModelOMa);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v42 = v58;
        sub_2199314D8(&v37[v39], v58, _s14PuzzleFeedDataVMa);
        v43 = sub_219931888(v41, v42);
        v44 = _s14PuzzleFeedDataVMa;
        goto LABEL_21;
      }

      v54 = _s14PuzzleFeedDataVMa;
    }

    v50 = v54;
    v51 = v41;
LABEL_30:
    sub_2199313D0(v51, v50);
    v43 = 0;
    v53 = sub_21993136C;
    goto LABEL_31;
  }

  v45 = v65;
  if (!EnumCaseMultiPayload)
  {
    sub_21992F354(v37, v34, _s5ModelOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2199314D8(&v37[v39], v17, _s12HeadlineDataVMa);
      v43 = sub_21992C64C(v34, v17);
      v47 = v37;
      v48 = _s12HeadlineDataVMa;
      sub_2199313D0(v17, _s12HeadlineDataVMa);
      v49 = v34;
      goto LABEL_22;
    }

    v50 = _s12HeadlineDataVMa;
    v51 = v34;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21992F354(v37, v31, _s5ModelOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v50 = _s7TagDataVMa;
      v51 = v31;
      goto LABEL_30;
    }

    v46 = v14;
    sub_2199314D8(&v37[v39], v14, _s7TagDataVMa);
    v43 = sub_219933568(v31, v14);
    v47 = v37;
    v48 = _s7TagDataVMa;
    sub_2199313D0(v46, _s7TagDataVMa);
    v49 = v31;
  }

  else
  {
    sub_21992F354(v37, v28, _s5ModelOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v50 = _s9IssueDataVMa;
      v51 = v28;
      goto LABEL_30;
    }

    sub_2199314D8(&v37[v39], v45, _s9IssueDataVMa);
    v43 = sub_21992E428(v28, v45);
    v47 = v37;
    v48 = _s9IssueDataVMa;
    sub_2199313D0(v45, _s9IssueDataVMa);
    v49 = v28;
  }

LABEL_22:
  v52 = v48;
  v37 = v47;
  sub_2199313D0(v49, v52);
  v53 = _s5ModelOMa;
LABEL_31:
  sub_2199313D0(v37, v53);
  return v43 & 1;
}

void sub_21993136C()
{
  if (!qword_27CC210E0)
  {
    _s5ModelOMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC210E0);
    }
  }
}

uint64_t sub_2199313D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219931430()
{
  result = qword_27CC210F0;
  if (!qword_27CC210F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210F0);
  }

  return result;
}

unint64_t sub_219931484()
{
  result = qword_27CC210F8;
  if (!qword_27CC210F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210F8);
  }

  return result;
}

uint64_t sub_2199314D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219931540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219931430();
    v7 = a3(a1, &_s5ModelO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199315A4()
{
  result = qword_27CC21138;
  if (!qword_27CC21138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21138);
  }

  return result;
}

uint64_t sub_2199315F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219931664()
{
  result = qword_27CC21170;
  if (!qword_27CC21170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21170);
  }

  return result;
}

unint64_t sub_2199316BC()
{
  result = qword_27CC21178;
  if (!qword_27CC21178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21178);
  }

  return result;
}

unint64_t sub_219931714()
{
  result = qword_27CC21180;
  if (!qword_27CC21180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21180);
  }

  return result;
}

unint64_t sub_21993176C()
{
  result = qword_27CC21188;
  if (!qword_27CC21188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21188);
  }

  return result;
}

unint64_t sub_2199317C0()
{
  result = qword_27CC21190;
  if (!qword_27CC21190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21190);
  }

  return result;
}

uint64_t sub_219931814()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21993188C(void *a1)
{
  sub_219931E7C(0, &unk_27CC211C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931E28();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s14PuzzleFeedDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219931A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931E7C(0, &qword_27CC211B0, MEMORY[0x277D844C8]);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931E28();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_219BF76F4();
  v12[1] = v14;
  sub_219BDB954();
  v20 = 1;
  sub_2188390BC(&unk_280EE9D10);
  sub_219BF76E4();
  (*(v13 + 8))(v9, v19);
  sub_218AB007C(v6, v12 + *(v10 + 20));
  sub_21993222C(v12, v17, _s14PuzzleFeedDataVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219932294(v12, _s14PuzzleFeedDataVMa);
}

uint64_t sub_219931D38(uint64_t a1)
{
  v2 = sub_219931E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219931D74(uint64_t a1)
{
  v2 = sub_219931E28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219931E28()
{
  result = qword_27CC211B8;
  if (!qword_27CC211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211B8);
  }

  return result;
}

void sub_219931E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219931E28();
    v7 = a3(a1, &_s14PuzzleFeedDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_219931EE0(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && a1[1] == a2[1] || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s14PuzzleFeedDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21993222C(a1 + v17, v14, sub_21873F65C);
    sub_21993222C(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_219932294(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21993222C(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_219932294(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_219932294(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

uint64_t sub_21993222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219932294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219932308()
{
  result = qword_27CC211D8;
  if (!qword_27CC211D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211D8);
  }

  return result;
}

unint64_t sub_219932360()
{
  result = qword_27CC211E0;
  if (!qword_27CC211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211E0);
  }

  return result;
}

unint64_t sub_2199323B8()
{
  result = qword_27CC211E8;
  if (!qword_27CC211E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211E8);
  }

  return result;
}

uint64_t sub_219932438(void *a1)
{
  sub_219932A28(0, &unk_27CC21228, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199329D4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s10PuzzleDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2199325EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219932A28(0, &qword_27CC21210, MEMORY[0x277D844C8]);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199329D4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_219BF76F4();
  v12[1] = v14;
  sub_219BDB954();
  v20 = 1;
  sub_2188390BC(&unk_280EE9D10);
  sub_219BF76E4();
  (*(v13 + 8))(v9, v19);
  sub_218AB007C(v6, v12 + *(v10 + 20));
  sub_219932DD8(v12, v17, _s10PuzzleDataVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219932E40(v12, _s10PuzzleDataVMa);
}

uint64_t sub_2199328E4(uint64_t a1)
{
  v2 = sub_2199329D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219932920(uint64_t a1)
{
  v2 = sub_2199329D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2199329D4()
{
  result = qword_27CC21218;
  if (!qword_27CC21218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21218);
  }

  return result;
}

void sub_219932A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199329D4();
    v7 = a3(a1, &_s10PuzzleDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_219932A8C(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && a1[1] == a2[1] || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s10PuzzleDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_219932DD8(a1 + v17, v14, sub_21873F65C);
    sub_219932DD8(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_219932E40(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_219932DD8(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_219932E40(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_219932E40(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

uint64_t sub_219932DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219932E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219932EB4()
{
  result = qword_27CC21238;
  if (!qword_27CC21238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21238);
  }

  return result;
}

unint64_t sub_219932F0C()
{
  result = qword_27CC21240;
  if (!qword_27CC21240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21240);
  }

  return result;
}

unint64_t sub_219932F64()
{
  result = qword_27CC21248;
  if (!qword_27CC21248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21248);
  }

  return result;
}

uint64_t sub_21993300C(void *a1)
{
  sub_219933CF8(0, &qword_27CC21270, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219933C3C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s7TagDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2199331C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219933CF8(0, &qword_27CC21260, MEMORY[0x277D844C8]);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219933C3C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v21 = 0;
  *v12 = sub_219BF76F4();
  v12[1] = v14;
  sub_219BDB954();
  v20 = 1;
  sub_2188390BC(&unk_280EE9D10);
  sub_219BF76E4();
  (*(v13 + 8))(v9, v19);
  sub_218AB007C(v6, v12 + *(v10 + 20));
  sub_219933C90(v12, v17, _s7TagDataVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218D37C24(v12, _s7TagDataVMa);
}

uint64_t sub_2199334B8(uint64_t a1)
{
  v2 = sub_219933C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199334F4(uint64_t a1)
{
  v2 = sub_219933C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_219933568(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && a1[1] == a2[1] || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s7TagDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_219933C90(a1 + v17, v14, sub_21873F65C);
    sub_219933C90(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_218D37C24(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_219933C90(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_218D37C24(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_218D37C24(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

BOOL sub_2199338B4(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagModel();
  if ((static TagModel.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v15 = *(_s3TagVMa(0) + 20);
  v16 = *(v12 + 48);
  sub_219933C90(a1 + v15, v14, sub_21873F65C);
  sub_219933C90(a2 + v15, &v14[v16], sub_21873F65C);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_218D37C24(v14, sub_21873F65C);
      return 1;
    }

    goto LABEL_7;
  }

  sub_219933C90(v14, v10, sub_21873F65C);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_218D37C24(v14, sub_2193D01B8);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_2188390BC(&qword_280EE9D20);
  v19 = sub_219BF53A4();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_218D37C24(v14, sub_21873F65C);
  return (v19 & 1) != 0;
}

unint64_t sub_219933C3C()
{
  result = qword_27CC21268;
  if (!qword_27CC21268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21268);
  }

  return result;
}

uint64_t sub_219933C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219933CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219933C3C();
    v7 = a3(a1, &_s7TagDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219933D70()
{
  result = qword_27CC21278;
  if (!qword_27CC21278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21278);
  }

  return result;
}

unint64_t sub_219933DC8()
{
  result = qword_27CC21280;
  if (!qword_27CC21280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21280);
  }

  return result;
}

unint64_t sub_219933E20()
{
  result = qword_27CC21288;
  if (!qword_27CC21288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21288);
  }

  return result;
}

uint64_t sub_219933E74@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v26);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11SportsEventVMa();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s13ResolvedModelOMa();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199343D0(v30, v17, _s13ResolvedModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = v17;
        v17 = v29;
        sub_219934438(v21, v29, _s10PuzzleFeedVMa);
        sub_2199343D0(&v17[*(v28 + 20)], v31, sub_21873F65C);
        v22 = _s10PuzzleFeedVMa;
      }

      else
      {
        v24 = sub_219BDB954();
        (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
        v22 = _s13ResolvedModelOMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_219934438(v17, v5, _s11SportsEventVMa);
        sub_2199343D0(&v5[*(v3 + 20)], v31, sub_21873F65C);
        v19 = _s11SportsEventVMa;
        v20 = v5;
        return sub_219935058(v20, v19);
      }

      v23 = v17;
      v17 = v27;
      sub_219934438(v23, v27, _s6PuzzleVMa);
      sub_2199343D0(&v17[*(v26 + 24)], v31, sub_21873F65C);
      v22 = _s6PuzzleVMa;
    }

    v19 = v22;
    v20 = v17;
    return sub_219935058(v20, v19);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_219934438(v17, v11, _s3TagVMa);
      sub_2199343D0(&v11[*(v9 + 20)], v31, sub_21873F65C);
      v19 = _s3TagVMa;
      v20 = v11;
    }

    else
    {
      sub_219934438(v17, v8, _s5IssueVMa);
      sub_2199343D0(&v8[*(v6 + 20)], v31, sub_21873F65C);
      v19 = _s5IssueVMa;
      v20 = v8;
    }
  }

  else
  {
    sub_219934438(v17, v14, _s8HeadlineVMa);
    sub_2199343D0(&v14[*(v12 + 20)], v31, sub_21873F65C);
    v19 = _s8HeadlineVMa;
    v20 = v14;
  }

  return sub_219935058(v20, v19);
}

uint64_t sub_2199343D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219934438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199344A0(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v98 = a2;
  v2 = sub_219BDB954();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s11SportsEventVMa();
  MEMORY[0x28223BE20](v8 - 8);
  v88 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = _s13ResolvedModelOMa();
  MEMORY[0x28223BE20](v19);
  v93 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = (&v87 - v22);
  MEMORY[0x28223BE20](v23);
  v95 = (&v87 - v24);
  MEMORY[0x28223BE20](v25);
  v94 = (&v87 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v87 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v87 - v34);
  sub_219934FF4();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 56);
  sub_2199343D0(v97, v38, _s13ResolvedModelOMa);
  sub_2199343D0(v98, &v38[v40], _s13ResolvedModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2199343D0(v38, v32, _s13ResolvedModelOMa);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_219935058(v32, _s3TagVMa);
          goto LABEL_36;
        }

        sub_219934438(&v38[v40], v15, _s3TagVMa);
        LOBYTE(v40) = sub_2199338B4(v32, v15);
        sub_219935058(v15, _s3TagVMa);
        v54 = v32;
        v55 = _s3TagVMa;
LABEL_39:
        sub_219935058(v54, v55);
        goto LABEL_44;
      }

      sub_2199343D0(v38, v29, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_219935058(v29, _s5IssueVMa);
        goto LABEL_36;
      }

      sub_219934438(&v38[v40], v12, _s5IssueVMa);
      LOBYTE(v40) = sub_21992E774(v29, v12);
      v67 = _s5IssueVMa;
      sub_219935058(v12, _s5IssueVMa);
      v54 = v29;
    }

    else
    {
      sub_2199343D0(v38, v35, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        v66 = _s8HeadlineVMa;
        goto LABEL_34;
      }

      sub_219934438(&v38[v40], v18, _s8HeadlineVMa);
      LOBYTE(v40) = sub_21992CCDC(v35, v18);
      v67 = _s8HeadlineVMa;
      sub_219935058(v18, _s8HeadlineVMa);
      v54 = v35;
    }

    v55 = v67;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v76 = v93;
      sub_2199343D0(v38, v93, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v78 = v91;
        v77 = v92;
        v79 = v87;
        (*(v91 + 32))(v87, &v38[v40], v92);
        LOBYTE(v40) = sub_219BDB8A4();
        v80 = *(v78 + 8);
        v80(v79, v77);
        v80(v76, v77);
        goto LABEL_44;
      }

      (*(v91 + 8))(v76, v92);
      goto LABEL_36;
    }

    v35 = v96;
    sub_2199343D0(v38, v96, _s13ResolvedModelOMa);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v56 = v90;
      sub_219934438(&v38[v40], v90, _s10PuzzleFeedVMa);
      v57 = [*v35 identifier];
      v58 = sub_219BF5414();
      v60 = v59;

      v61 = [*v56 identifier];
      v62 = sub_219BF5414();
      v64 = v63;

      if (v58 == v62 && v60 == v64)
      {

        v65 = _s10PuzzleFeedVMa;
LABEL_25:
        v52 = v65;
        sub_219935058(v56, v65);
        v53 = v35;
LABEL_26:
        sub_219935058(v53, v52);
        LOBYTE(v40) = 1;
LABEL_44:
        v81 = _s13ResolvedModelOMa;
        goto LABEL_45;
      }

      v83 = sub_219BF78F4();

      v84 = _s10PuzzleFeedVMa;
LABEL_43:
      v85 = v84;
      sub_219935058(v56, v84);
      sub_219935058(v35, v85);
      LODWORD(v40) = v83 << 31 >> 31;
      goto LABEL_44;
    }

    v66 = _s10PuzzleFeedVMa;
LABEL_34:
    sub_219935058(v35, v66);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v35 = v95;
    sub_2199343D0(v38, v95, _s13ResolvedModelOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v56 = v89;
      sub_219934438(&v38[v40], v89, _s6PuzzleVMa);
      v68 = [*v35 identifier];
      v69 = sub_219BF5414();
      v71 = v70;

      v72 = [*v56 identifier];
      v73 = sub_219BF5414();
      v75 = v74;

      if (v69 == v73 && v71 == v75)
      {

        v65 = _s6PuzzleVMa;
        goto LABEL_25;
      }

      v83 = sub_219BF78F4();

      v84 = _s6PuzzleVMa;
      goto LABEL_43;
    }

    v66 = _s6PuzzleVMa;
    goto LABEL_34;
  }

  v42 = v94;
  sub_2199343D0(v38, v94, _s13ResolvedModelOMa);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v43 = v88;
    sub_219934438(&v38[v40], v88, _s11SportsEventVMa);
    v44 = [*v42 identifier];
    v45 = sub_219BF5414();
    v47 = v46;

    v48 = [*v43 identifier];
    v49 = sub_219BF5414();
    v51 = v50;

    if (v45 != v49 || v47 != v51)
    {
      v82 = sub_219BF78F4();

      sub_219935058(v43, _s11SportsEventVMa);
      sub_219935058(v42, _s11SportsEventVMa);
      LODWORD(v40) = v82 << 31 >> 31;
      goto LABEL_44;
    }

    v52 = _s11SportsEventVMa;
    sub_219935058(v43, _s11SportsEventVMa);
    v53 = v42;
    goto LABEL_26;
  }

  sub_219935058(v42, _s11SportsEventVMa);
LABEL_36:
  LOBYTE(v40) = 0;
  v81 = sub_219934FF4;
LABEL_45:
  sub_219935058(v38, v81);
  return v40 & 1;
}

void sub_219934FF4()
{
  if (!qword_27CC21290)
  {
    _s13ResolvedModelOMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC21290);
    }
  }
}

uint64_t sub_219935058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2199350CC()
{
  result = qword_27CC21298;
  if (!qword_27CC21298)
  {
    sub_219935124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21298);
  }

  return result;
}

void sub_219935124()
{
  if (!qword_27CC212A0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212A0);
    }
  }
}

uint64_t sub_219935174()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2199351CC()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219935220@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_219935338()
{
  result = qword_27CC212A8;
  if (!qword_27CC212A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC212A8);
  }

  return result;
}

uint64_t sub_21993538C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF5474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  sub_219BF5464();
  v9 = sub_219BF5424();
  v11 = v10;

  (*(v3 + 8))(v5, v2);
  sub_21993634C();
  v21[3] = v12;
  v21[0] = v9;
  v21[1] = v11;
  sub_219936E2C(v21, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v13 = type metadata accessor for CuratedShortcut(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_2187BCA7C(v8, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v15 = sub_219BE5434();
    __swift_project_value_buffer(v15, qword_280F62538);
    v16 = sub_219BE5414();
    v17 = sub_219BF61F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2186C1000, v16, v17, "Unable to create a shortcut from raw string data value", v18, 2u);
      MEMORY[0x21CECF960](v18, -1, -1);
    }

    v19 = 1;
  }

  else
  {
    sub_2199379E4(v8, a1, type metadata accessor for CuratedShortcut);
    v19 = 0;
  }

  return (*(v14 + 56))(a1, v19, 1, v13);
}

uint64_t sub_21993568C@<X0>(void *a1@<X8>)
{
  v109 = a1;
  v1 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v1 - 8);
  v102 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v101);
  v104 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v99);
  v103 = (&v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = _s7TagDataVMa(0);
  v5 = MEMORY[0x28223BE20](v105);
  v100 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v108 = (&v92 - v7);
  v107 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v107);
  v106 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E5DAC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v92 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v92 - v22;
  v112 = sub_219BDB954();
  v110 = *(v112 - 8);
  v24 = MEMORY[0x28223BE20](v112);
  v95 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v94 = &v92 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v93 = &v92 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v92 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v92 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v92 - v36;
  v38 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v38);
  v40 = (&v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = _s5ModelOMa();
  MEMORY[0x28223BE20](v41);
  v43 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CuratedShortcut(0);
  sub_219937A4C(v111 + *(v44 + 20), v43, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v53 = v107;
    if (EnumCaseMultiPayload)
    {
      v54 = v112;
      v55 = v110;
      if (EnumCaseMultiPayload == 1)
      {
        v56 = v108;
        sub_2199379E4(v43, v108, _s7TagDataVMa);
        sub_2188383F8(v56 + *(v105 + 20), v18);
        if ((*(v55 + 48))(v18, 1, v54) == 1)
        {
          sub_2187BCA7C(v18, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v58 = *v56;
          v57 = v56[1];

          sub_219937AB4(v56, _s7TagDataVMa);
          v59 = v109;
          *v109 = v58;
          v59[1] = v57;
          type metadata accessor for CuratedShortcut.Identifier(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_219937AB4(v56, _s7TagDataVMa);
        v85 = *(v55 + 32);
        v85(v32, v18, v54);
        v85(v109, v32, v54);
      }

      else
      {
        v74 = v106;
        sub_2199379E4(v43, v106, _s9IssueDataVMa);
        sub_2188383F8(v74 + *(v53 + 20), v21);
        if ((*(v55 + 48))(v21, 1, v54) == 1)
        {
          sub_2187BCA7C(v21, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v76 = *v74;
          v75 = v74[1];

          sub_219937AB4(v74, _s9IssueDataVMa);
          v77 = v109;
          *v109 = v76;
          v77[1] = v75;
          type metadata accessor for CuratedShortcut.Identifier(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_219937AB4(v74, _s9IssueDataVMa);
        v86 = *(v55 + 32);
        v86(v35, v21, v54);
        v86(v109, v35, v54);
      }
    }

    else
    {
      sub_2199379E4(v43, v40, _s12HeadlineDataVMa);
      v67 = v23;
      sub_2188383F8(v40 + *(v38 + 20), v23);
      v68 = v110;
      v69 = v23;
      v70 = v112;
      if ((*(v110 + 48))(v69, 1, v112) == 1)
      {
        sub_2187BCA7C(v67, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v72 = *v40;
        v71 = v40[1];

        sub_219937AB4(v40, _s12HeadlineDataVMa);
        v73 = v109;
        *v109 = v72;
        v73[1] = v71;
        type metadata accessor for CuratedShortcut.Identifier(0);
        return swift_storeEnumTagMultiPayload();
      }

      sub_219937AB4(v40, _s12HeadlineDataVMa);
      v84 = *(v68 + 32);
      v84(v37, v67, v70);
      v84(v109, v37, v70);
    }

LABEL_27:
    type metadata accessor for CuratedShortcut.Identifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 4)
  {
    v60 = v112;
    v61 = v110;
    if (EnumCaseMultiPayload != 5)
    {
      v83 = v102;
      sub_2199379E4(v43, v102, _s7URLDataVMa);
      (*(v61 + 32))(v109, v83, v60);
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    v62 = v103;
    sub_2199379E4(v43, v103, _s10PuzzleDataVMa);
    v63 = v96;
    sub_2188383F8(v62 + *(v99 + 20), v96);
    if ((*(v61 + 48))(v63, 1, v60) == 1)
    {
      sub_2187BCA7C(v63, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v65 = *v62;
      v64 = v62[1];

      sub_219937AB4(v62, _s10PuzzleDataVMa);
      v66 = v109;
      *v109 = v65;
      v66[1] = v64;
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_219937AB4(v62, _s10PuzzleDataVMa);
    v89 = *(v61 + 32);
    v90 = v93;
    v89(v93, v63, v60);
    v89(v109, v90, v60);
    goto LABEL_27;
  }

  v46 = v112;
  v47 = v110;
  if (EnumCaseMultiPayload != 3)
  {
    v78 = v104;
    sub_2199379E4(v43, v104, _s14PuzzleFeedDataVMa);
    v79 = v97;
    sub_2188383F8(v78 + *(v101 + 20), v97);
    if ((*(v47 + 48))(v79, 1, v46) == 1)
    {
      sub_2187BCA7C(v79, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v81 = *v78;
      v80 = v78[1];

      sub_219937AB4(v78, _s14PuzzleFeedDataVMa);
      v82 = v109;
      *v109 = v81;
      v82[1] = v80;
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_219937AB4(v78, _s14PuzzleFeedDataVMa);
    v87 = *(v47 + 32);
    v88 = v94;
    v87(v94, v79, v46);
    goto LABEL_26;
  }

  v48 = v100;
  sub_2199379E4(v43, v100, _s7TagDataVMa);
  v49 = v98;
  sub_2188383F8(v48 + *(v105 + 20), v98);
  if ((*(v47 + 48))(v49, 1, v46) != 1)
  {
    sub_219937AB4(v48, _s7TagDataVMa);
    v87 = *(v47 + 32);
    v88 = v95;
    v87(v95, v49, v46);
LABEL_26:
    v87(v109, v88, v46);
    goto LABEL_27;
  }

  sub_2187BCA7C(v49, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v51 = *v48;
  v50 = v48[1];

  sub_219937AB4(v48, _s7TagDataVMa);
  v52 = v109;
  *v109 = v51;
  v52[1] = v50;
  type metadata accessor for CuratedShortcut.Identifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_21993634C()
{
  if (!qword_280EE9CC8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9CC8);
    }
  }
}

uint64_t sub_21993639C()
{
  v1 = v0;
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219937A4C(v1, v8, type metadata accessor for CuratedShortcut.Identifier);
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v10 = sub_219BDB804();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_219936540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_2186E5DAC(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v45 - v6;
  v7 = sub_219BE3184();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v45 - v10;
  v59 = _s5ModelOMa();
  MEMORY[0x28223BE20](v59);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219937B14(0, &qword_27CC212E0, MEMORY[0x277D844C8]);
  v14 = v13;
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219937948();
  v20 = v61;
  sub_219BF7B34();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v17;
  v21 = a1;
  v61 = v19;
  LOBYTE(v63) = 0;
  v22 = v16;
  v23 = sub_219BF76F4();
  v25 = v61;
  *v61 = v23;
  v25[1] = v26;
  v50 = v26;
  LOBYTE(v63) = 1;
  sub_21993799C(&qword_27CC212F0, _s5ModelOMa);
  sub_219BF7734();
  v27 = v51;
  sub_2199379E4(v12, v25 + v51[5], _s5ModelOMa);
  sub_2199378F0();
  v62 = 2;
  sub_219937B78(&qword_27CC212F8);
  v28 = v14;
  v59 = 0;
  sub_219BF76E4();
  v29 = v63;
  v30 = MEMORY[0x277D84FA0];
  if (!v63)
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *(v25 + v27[6]) = v29;
  v62 = 3;
  sub_219BF76E4();
  v31 = v63;
  if (!v63)
  {
    v31 = v30;
  }

  *(v25 + v27[7]) = v31;
  LOBYTE(v63) = 4;
  sub_21993799C(&qword_280EE68E8, MEMORY[0x277D6CF38]);
  v32 = v56;
  v33 = v58;
  sub_219BF76E4();
  v48 = v22;
  v49 = v28;
  v34 = v57;
  v35 = *(v57 + 48);
  v47 = v57 + 48;
  v36 = v35(v32, 1, v33);
  v46 = v35;
  if (v36 == 1)
  {
    v37 = v54;
    sub_219BE3174();
    if (v35(v32, 1, v33) != 1)
    {
      sub_2187BCA7C(v32, &qword_280EE68E0, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    v37 = v54;
    (*(v34 + 32))(v54, v32, v33);
  }

  v38 = *(v34 + 32);
  v38(v61 + v51[8], v37, v33);
  LOBYTE(v63) = 5;
  v39 = v55;
  sub_219BF76E4();
  v40 = v46;
  if (v46(v39, 1, v33) == 1)
  {
    v41 = v52;
    sub_219BE3164();
    (*(v60 + 8))(v48, v49);
    v42 = v40(v39, 1, v33);
    v43 = v53;
    if (v42 != 1)
    {
      sub_2187BCA7C(v39, &qword_280EE68E0, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    (*(v60 + 8))(v48, v49);
    v41 = v52;
    v38(v52, v39, v33);
    v43 = v53;
  }

  v44 = v61;
  v38(v61 + v51[9], v41, v33);
  sub_219937A4C(v44, v43, type metadata accessor for CuratedShortcut);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_219937AB4(v44, type metadata accessor for CuratedShortcut);
}

uint64_t sub_219936E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  sub_2186D1230(a1, v16);
  if (swift_dynamicCast())
  {
    v11 = v15[2];
    v10 = v15[3];
    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    v12 = type metadata accessor for CuratedShortcut(0);
    sub_21993799C(&qword_27CC20930, type metadata accessor for CuratedShortcut);
    sub_219BDAFC4();
    sub_2186C6190(v11, v10);

    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_2199376D8(v7, v9);
    return sub_2199376D8(v9, a2);
  }

  else
  {
    v13 = type metadata accessor for CuratedShortcut(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_2199371F8(void *a1)
{
  v3 = v1;
  sub_219937B14(0, &qword_27CC21300, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219937948();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedShortcut(0);
    LOBYTE(v14) = 1;
    _s5ModelOMa();
    sub_21993799C(&qword_27CC21308, _s5ModelOMa);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2199378F0();
    sub_219937B78(&qword_27CC21310);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_219BF7834();
    LOBYTE(v14) = 4;
    sub_219BE3184();
    sub_21993799C(&qword_280EE68F8, MEMORY[0x277D6CF38]);
    sub_219BF7834();
    LOBYTE(v14) = 5;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219937528()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0xD000000000000014;
  v4 = 0x567377654E6E696DLL;
  if (v1 != 4)
  {
    v4 = 0x567377654E78616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65646F6DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219937604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219937DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21993762C(uint64_t a1)
{
  v2 = sub_219937948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219937668(uint64_t a1)
{
  v2 = sub_219937948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199376D8(uint64_t a1, uint64_t a2)
{
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219937758()
{
  sub_2186EAF08();
  if (v0 <= 0x3F)
  {
    sub_2199377D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2199377D4()
{
  if (!qword_27CC212C0)
  {
    v0 = sub_219BDB954();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212C0);
    }
  }
}

void sub_219937844()
{
  _s5ModelOMa();
  if (v0 <= 0x3F)
  {
    sub_2199378F0();
    if (v1 <= 0x3F)
    {
      sub_219BE3184();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2199378F0()
{
  if (!qword_27CC212D8)
  {
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212D8);
    }
  }
}

unint64_t sub_219937948()
{
  result = qword_27CC212E8;
  if (!qword_27CC212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC212E8);
  }

  return result;
}

uint64_t sub_21993799C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2199379E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219937A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219937AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219937B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219937948();
    v7 = a3(a1, &type metadata for CuratedShortcut.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219937B78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2199378F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219937BD8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CuratedShortcut(0);
  if ((sub_219930750(a1 + v5[5], a2 + v5[5]) & 1) == 0 || (sub_21947B910(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0 || (sub_21947B910(*(a1 + v5[7]), *(a2 + v5[7])) & 1) == 0 || (sub_219BE3154() & 1) == 0)
  {
    return 0;
  }

  return sub_219BE3154();
}

unint64_t sub_219937CC8()
{
  result = qword_27CC21318;
  if (!qword_27CC21318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21318);
  }

  return result;
}

unint64_t sub_219937D20()
{
  result = qword_27CC21320;
  if (!qword_27CC21320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21320);
  }

  return result;
}

unint64_t sub_219937D78()
{
  result = qword_27CC21328;
  if (!qword_27CC21328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21328);
  }

  return result;
}

uint64_t sub_219937DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D3ECE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D3ED00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_21993800C(void *a1, void *a2, uint64_t a3)
{
  if (!_s7NewsUI216ShortcutCategoryV2eeoiySbAC_ACtFZ_0(a1, a2) || (sub_2199343CC(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_2199380A8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

BOOL sub_21993811C()
{
  v1 = *v0;
  result = 1;
  if ([*(v1 + 32) useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    if (sub_219BEED44())
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219938188()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = v9;
  sub_2187B14CC(v29, &v24, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v25)
  {
    sub_21875F93C(&v24, v26);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_2187448D0(&v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v23[2] = 0xF000000000000050;
  v25 = sub_219BDD274();
  *&v24 = v8;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v31, v26, &qword_280EE33A0, &qword_280EE33B0);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23[0] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  sub_2189B4EAC(v4, v17 + v14);
  v18 = v17 + v15;
  v19 = v26[1];
  *v18 = v26[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v27;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;
  swift_retain_n();

  sub_2188202A8(v11);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v11);
  sub_2187448D0(v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v23[0]);
  return sub_2187448D0(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_219938704@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21993873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void))
{
  v7 = v6;
  v354 = a6;
  v355 = a5;
  v356 = a4;
  v312 = a3;
  v357 = a2;
  v337 = a1;
  v315 = sub_219BE4B84();
  v314 = *(v315 - 8);
  v8 = MEMORY[0x28223BE20](v315);
  v311 = &v302 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = v9;
  MEMORY[0x28223BE20](v8);
  v313 = &v302 - v10;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v308 = &v302 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_219BDE294();
  v307 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  v305 = &v302 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_219BDEE04();
  v304 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v303 = &v302 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_219BE4B14();
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v317 = &v302 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_219BF1414();
  v316 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v338 = (&v302 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v340 = &v302 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_219BE4B54();
  v326 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v325 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_219BE4C84();
  v334 = *(v335 - 8);
  MEMORY[0x28223BE20](v335);
  v333 = &v302 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_219BE89F4();
  v336 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v352 = &v302 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21993BD30(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v350 = &v302 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v347 = &v302 - v25;
  v323 = sub_219BED214();
  v322 = *(v323 - 8);
  v26 = MEMORY[0x28223BE20](v323);
  v320 = &v302 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v321 = &v302 - v28;
  v345 = sub_219BE4AD4();
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v343 = &v302 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE4C24();
  v31 = *(v30 - 8);
  v365 = v30;
  v366 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v363 = &v302 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = v33;
  MEMORY[0x28223BE20](v32);
  v362 = &v302 - v34;
  v328 = sub_219BE4A94();
  v332 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v331 = &v302 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_219BE49F4();
  v329 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v37 = &v302 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_219BE4A04();
  v341 = *(v342 - 8);
  v38 = MEMORY[0x28223BE20](v342);
  v324 = &v302 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v302 - v40;
  v349 = sub_219BE4C44();
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v346 = &v302 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BE49D4();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v302 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v47 = qword_280F61728;
  sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v359 = v48;
  v49 = swift_allocObject();
  v360 = xmmword_219C09BA0;
  *(v49 + 16) = xmmword_219C09BA0;
  v367 = 0;
  v368 = 0xE000000000000000;
  sub_219BF7484();
  v351 = v7;
  v50 = v367;
  v51 = v368;
  *(v49 + 56) = MEMORY[0x277D837D0];
  v361 = sub_2186FC3BC();
  *(v49 + 64) = v361;
  *(v49 + 32) = v50;
  *(v49 + 40) = v51;
  v52 = v351;
  v358 = v47;
  sub_219BE5314();

  (*(v44 + 16))(v46, v52, v43);
  v53 = (*(v44 + 88))(v46, v43);
  if (v53 == *MEMORY[0x277D348B8])
  {
    (*(v44 + 96))(v46, v43);
    v54 = v348;
    v55 = v346;
    v56 = v349;
    (*(v348 + 32))(v346, v46, v349);
    sub_219BE4C34();
    v57 = v341;
    v58 = v342;
    v59 = (*(v341 + 88))(v41, v342);
    if (v59 == *MEMORY[0x277D348C8])
    {
      (*(v57 + 96))(v41, v58);
      v60 = v329;
      v61 = v330;
      (*(v329 + 32))(v37, v41, v330);
      sub_219BF6214();
      v62 = swift_allocObject();
      *(v62 + 16) = v360;
      v367 = 0;
      v368 = 0xE000000000000000;
      sub_219BF7484();
      v63 = v367;
      v64 = v368;
      v65 = v361;
      *(v62 + 56) = MEMORY[0x277D837D0];
      *(v62 + 64) = v65;
      *(v62 + 32) = v63;
      *(v62 + 40) = v64;
      sub_219BE5314();

      v66 = sub_219BE49E4();
      v67 = sub_21993BD64(v337, v357, v66, 1);
      (*(v60 + 8))(v37, v61);
LABEL_61:
      (*(v54 + 8))(v55, v56);
      return v67;
    }

    if (v59 == *MEMORY[0x277D348D0])
    {
      (*(v57 + 96))(v41, v58);
      v91 = v328;
      (*(v332 + 32))(v331, v41, v328);
      sub_219BF6214();
      v92 = swift_allocObject();
      *(v92 + 16) = v360;
      v367 = 0;
      v368 = 0xE000000000000000;
      sub_219BF7484();
      v93 = v367;
      v94 = v368;
      v95 = v361;
      *(v92 + 56) = MEMORY[0x277D837D0];
      *(v92 + 64) = v95;
      *(v92 + 32) = v93;
      *(v92 + 40) = v94;
      sub_219BE5314();

      v96 = sub_219BE4A84();
      v97 = sub_219BE4A74();
      if (v97)
      {
        v98 = *(v97 + 16);
        if (v98)
        {
          v356 = v96;
          v367 = MEMORY[0x277D84F90];
          v99 = v97;
          sub_218C35FF8(0, v98, 0);
          v100 = v367;
          v361 = *(v366 + 2);
          v101 = v366[80];
          v355 = v99;
          v102 = v99 + ((v101 + 32) & ~v101);
          v359 = *(v366 + 9);
          *&v360 = v101;
          v358 = (v101 + 16) & ~v101;
          v103 = (v366 + 32);
          v366 += 16;
          v104 = (v366 - 8);
          do
          {
            v105 = v361;
            v106 = v362;
            v107 = v365;
            v361(v362, v102, v365);
            v108 = v363;
            v105(v363, v106, v107);
            v109 = v358;
            v110 = swift_allocObject();
            (*v103)(v110 + v109, v108, v107);
            v111 = swift_allocObject();
            *(v111 + 16) = sub_2199408B8;
            *(v111 + 24) = v110;
            (*v104)(v106, v107);
            v367 = v100;
            v113 = *(v100 + 16);
            v112 = *(v100 + 24);
            if (v113 >= v112 >> 1)
            {
              sub_218C35FF8((v112 > 1), v113 + 1, 1);
              v100 = v367;
            }

            *(v100 + 16) = v113 + 1;
            v114 = v100 + 16 * v113;
            *(v114 + 32) = sub_2199408BC;
            *(v114 + 40) = v111;
            v102 += v359;
            --v98;
          }

          while (v98);

          v56 = v349;
          v54 = v348;
          v55 = v346;
          v91 = v328;
          v96 = v356;
        }

        else
        {

          v100 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v100 = 0;
      }

      v67 = sub_21993C1AC(v337, v357, v96, v100);

      (*(v332 + 8))(v331, v91);
      goto LABEL_61;
    }

    v139 = v57;
    LODWORD(v366) = sub_219BF61F4();
    v140 = swift_allocObject();
    *(v140 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    v141 = v324;
    sub_219BE4C34();
    sub_219BF7484();
    v142 = *(v139 + 8);
    v142(v141, v58);
    v143 = v367;
    v144 = v368;
    v145 = v361;
    *(v140 + 56) = MEMORY[0x277D837D0];
    *(v140 + 64) = v145;
    *(v140 + 32) = v143;
    *(v140 + 40) = v144;
    sub_219BE5314();

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v67 = sub_219BE3014();
    (*(v54 + 8))(v55, v56);
    v142(v41, v58);
  }

  else if (v53 == *MEMORY[0x277D34898])
  {
    (*(v44 + 96))(v46, v43);
    (*(v344 + 32))(v343, v46, v345);
    sub_219BF6214();
    v68 = swift_allocObject();
    *(v68 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v69 = v367;
    v70 = v368;
    v71 = v361;
    *(v68 + 56) = MEMORY[0x277D837D0];
    *(v68 + 64) = v71;
    *(v68 + 32) = v69;
    *(v68 + 40) = v70;
    sub_219BE5314();

    v72 = sub_219BE4A84();
    v73 = sub_219BE4A74();
    if (v73)
    {
      v74 = *(v73 + 16);
      if (v74)
      {
        v346 = v72;
        v367 = MEMORY[0x277D84F90];
        v75 = v73;
        sub_218C35FF8(0, v74, 0);
        v76 = v367;
        v351 = *(v366 + 2);
        v77 = v366[80];
        v342 = v75;
        v78 = v75 + ((v77 + 32) & ~v77);
        v349 = *(v366 + 9);
        v350 = v77;
        v348 = (v77 + 16) & ~v77;
        v79 = (v366 + 32);
        v366 += 16;
        v80 = (v366 - 8);
        do
        {
          v81 = v362;
          v82 = v365;
          v83 = v351;
          (v351)(v362, v78, v365);
          v84 = v363;
          v83(v363, v81, v82);
          v85 = v348;
          v86 = swift_allocObject();
          (*v79)(v86 + v85, v84, v82);
          v87 = swift_allocObject();
          *(v87 + 16) = sub_2199408B8;
          *(v87 + 24) = v86;
          (*v80)(v81, v82);
          v367 = v76;
          v89 = *(v76 + 16);
          v88 = *(v76 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_218C35FF8((v88 > 1), v89 + 1, 1);
            v76 = v367;
          }

          *(v76 + 16) = v89 + 1;
          v90 = v76 + 16 * v89;
          *(v90 + 32) = sub_2199408BC;
          *(v90 + 40) = v87;
          v78 += v349;
          --v74;
        }

        while (v74);

        v72 = v346;
      }

      else
      {

        v76 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v76 = 0;
    }

    v192 = v347;
    v366 = v76;
    if (v72 < 1)
    {
      sub_219BF61F4();
      v205 = swift_allocObject();
      *(v205 + 16) = v360;
      v367 = v72;
      v206 = sub_219BF7894();
      v207 = v361;
      *(v205 + 56) = MEMORY[0x277D837D0];
      *(v205 + 64) = v207;
      *(v205 + 32) = v206;
      *(v205 + 40) = v208;
      sub_219BE5314();

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v67 = sub_219BE3014();
    }

    else
    {
      LODWORD(v365) = *MEMORY[0x277D6E0D8];
      v364 = (v336 + 104);
      do
      {
        v193 = sub_21917A9E4(v76);
        sub_219BF6214();
        v194 = swift_allocObject();
        *(v194 + 16) = v360;
        v367 = 0;
        v368 = 0xE000000000000000;
        v371 = v193;
        sub_218731D50();
        sub_219BF7484();
        v195 = v367;
        v196 = v368;
        v197 = v361;
        *(v194 + 56) = MEMORY[0x277D837D0];
        *(v194 + 64) = v197;
        *(v194 + 32) = v195;
        *(v194 + 40) = v196;
        sub_219BE5314();

        swift_getObjectType();
        sub_219BEAD24();
        swift_unknownObjectRetain();
        sub_219BF2B14();
        v198 = sub_219BF2B34();
        (*(*(v198 - 8) + 56))(v192, 0, 1, v198);
        (*v364)(v352, v365, v353);
        v369 = sub_219BDD274();
        v370 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
        v367 = v354;
        v199 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v199 init];
        sub_219BE8314();
        v372 = 0u;
        v373 = 0u;
        v374 = 0;
        swift_allocObject();
        v192 = v347;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v192, sub_21993BD30);

        swift_unknownObjectRelease();
        --v72;
        v76 = v366;
      }

      while (v72);
      v200 = v320;
      sub_219BED1F4();
      v201 = v321;
      sub_219BED244();
      v202 = *(v322 + 8);
      v203 = v323;
      v202(v200, v323);
      sub_2186C6148(0, &qword_280E8E3B0);
      v204 = sub_219BF66A4();
      v67 = sub_219BE2E04();

      v202(v201, v203);
    }

    (*(v344 + 8))(v343, v345);
  }

  else if (v53 == *MEMORY[0x277D348C0])
  {
    (*(v44 + 96))(v46, v43);
    (*(v334 + 32))(v333, v46, v335);
    sub_219BF6214();
    v115 = swift_allocObject();
    *(v115 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v116 = v367;
    v117 = v368;
    v118 = v361;
    *(v115 + 56) = MEMORY[0x277D837D0];
    *(v115 + 64) = v118;
    *(v115 + 32) = v116;
    *(v115 + 40) = v117;
    sub_219BE5314();

    v119 = sub_219BE4A84();
    v120 = sub_219BE4A74();
    if (v120)
    {
      v121 = *(v120 + 16);
      if (v121)
      {
        v346 = v119;
        v367 = MEMORY[0x277D84F90];
        v122 = v120;
        sub_218C35FF8(0, v121, 0);
        v123 = v367;
        v351 = *(v366 + 2);
        v124 = v366[80];
        v345 = v122;
        v125 = v122 + ((v124 + 32) & ~v124);
        v348 = *(v366 + 9);
        v349 = v124;
        v347 = ((v124 + 16) & ~v124);
        v126 = (v366 + 32);
        v366 += 16;
        v127 = (v366 - 8);
        do
        {
          v128 = v362;
          v129 = v365;
          v130 = v123;
          v131 = v351;
          (v351)(v362, v125, v365);
          v132 = v363;
          v131(v363, v128, v129);
          v133 = v347;
          v134 = swift_allocObject();
          (*v126)(&v133[v134], v132, v129);
          v135 = swift_allocObject();
          *(v135 + 16) = sub_2199408B8;
          *(v135 + 24) = v134;
          v123 = v130;
          (*v127)(v128, v129);
          v367 = v130;
          v137 = *(v130 + 16);
          v136 = *(v130 + 24);
          if (v137 >= v136 >> 1)
          {
            sub_218C35FF8((v136 > 1), v137 + 1, 1);
            v123 = v367;
          }

          *(v123 + 16) = v137 + 1;
          v138 = v123 + 16 * v137;
          *(v138 + 32) = sub_2199408BC;
          *(v138 + 40) = v135;
          v125 += v348;
          --v121;
        }

        while (v121);

        v119 = v346;
      }

      else
      {

        v123 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v123 = 0;
    }

    v235 = v350;
    v366 = v123;
    if (v119 < 1)
    {
      sub_219BF61F4();
      v248 = swift_allocObject();
      *(v248 + 16) = v360;
      v367 = v119;
      v249 = sub_219BF7894();
      v250 = v361;
      *(v248 + 56) = MEMORY[0x277D837D0];
      *(v248 + 64) = v250;
      *(v248 + 32) = v249;
      *(v248 + 40) = v251;
      sub_219BE5314();

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v67 = sub_219BE3014();
    }

    else
    {
      LODWORD(v365) = *MEMORY[0x277D6E0D8];
      v364 = (v336 + 104);
      do
      {
        v236 = sub_21917A9E4(v123);
        sub_219BF6214();
        v237 = swift_allocObject();
        *(v237 + 16) = v360;
        v367 = 0;
        v368 = 0xE000000000000000;
        v371 = v236;
        sub_218731D50();
        sub_219BF7484();
        v238 = v367;
        v239 = v368;
        v240 = v361;
        *(v237 + 56) = MEMORY[0x277D837D0];
        *(v237 + 64) = v240;
        *(v237 + 32) = v238;
        *(v237 + 40) = v239;
        sub_219BE5314();

        swift_getObjectType();
        sub_219BEAD34();
        swift_unknownObjectRetain();
        sub_219BF2B14();
        v241 = sub_219BF2B34();
        (*(*(v241 - 8) + 56))(v235, 0, 1, v241);
        (*v364)(v352, v365, v353);
        v369 = sub_219BDD274();
        v370 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
        v367 = v354;
        v242 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v242 init];
        sub_219BE8314();
        v372 = 0u;
        v373 = 0u;
        v374 = 0;
        swift_allocObject();
        v235 = v350;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v235, sub_21993BD30);

        swift_unknownObjectRelease();
        --v119;
        v123 = v366;
      }

      while (v119);
      v243 = v320;
      sub_219BED1F4();
      v244 = v321;
      sub_219BED244();
      v245 = *(v322 + 8);
      v246 = v323;
      v245(v243, v323);
      sub_2186C6148(0, &qword_280E8E3B0);
      v247 = sub_219BF66A4();
      v67 = sub_219BE2E04();

      v245(v244, v246);
    }

    (*(v334 + 8))(v333, v335);
  }

  else if (v53 == *MEMORY[0x277D348A8])
  {
    (*(v44 + 96))(v46, v43);
    (*(v326 + 32))(v325, v46, v327);
    sub_219BF6214();
    v146 = swift_allocObject();
    *(v146 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v147 = v367;
    v148 = v368;
    v149 = v361;
    *(v146 + 56) = MEMORY[0x277D837D0];
    *(v146 + 64) = v149;
    *(v146 + 32) = v147;
    *(v146 + 40) = v148;
    sub_219BE5314();

    v150 = sub_219BE4A84();
    v151 = sub_219BE4A74();
    if (v151)
    {
      v152 = *(v151 + 16);
      if (v152)
      {
        v347 = v150;
        v367 = MEMORY[0x277D84F90];
        v153 = v151;
        sub_218C35FF8(0, v152, 0);
        v154 = v367;
        v351 = *(v366 + 2);
        v155 = v366[80];
        v346 = v153;
        v156 = &v153[(v155 + 32) & ~v155];
        v349 = *(v366 + 9);
        v350 = v155;
        v348 = (v155 + 16) & ~v155;
        v157 = (v366 + 32);
        v366 += 16;
        v158 = (v366 - 8);
        do
        {
          v159 = v362;
          v160 = v365;
          v161 = v154;
          v162 = v351;
          (v351)(v362, v156, v365);
          v163 = v363;
          v162(v363, v159, v160);
          v164 = v348;
          v165 = swift_allocObject();
          (*v157)(v165 + v164, v163, v160);
          v166 = swift_allocObject();
          *(v166 + 16) = sub_2199408B8;
          *(v166 + 24) = v165;
          v154 = v161;
          (*v158)(v159, v160);
          v367 = v161;
          v168 = *(v161 + 16);
          v167 = *(v161 + 24);
          if (v168 >= v167 >> 1)
          {
            sub_218C35FF8((v167 > 1), v168 + 1, 1);
            v154 = v367;
          }

          *(v154 + 16) = v168 + 1;
          v169 = v154 + 16 * v168;
          *(v169 + 32) = sub_2199408BC;
          *(v169 + 40) = v166;
          v156 += v349;
          --v152;
        }

        while (v152);

        v150 = v347;
      }

      else
      {

        v154 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v154 = 0;
    }

    v256 = v340;
    v366 = v154;
    if (v150 < 1)
    {
      sub_219BF61F4();
      v271 = swift_allocObject();
      *(v271 + 16) = v360;
      v367 = v150;
      v272 = sub_219BF7894();
      v273 = v361;
      *(v271 + 56) = MEMORY[0x277D837D0];
      *(v271 + 64) = v273;
      *(v271 + 32) = v272;
      *(v271 + 40) = v274;
      sub_219BE5314();

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v67 = sub_219BE3014();
    }

    else
    {
      LODWORD(v365) = *MEMORY[0x277D33370];
      v364 = (v316 + 104);
      LODWORD(v363) = *MEMORY[0x277D6E0D8];
      v362 = (v336 + 104);
      do
      {
        v257 = sub_21917A9E4(v154);
        v258 = v150;
        sub_219BF6214();
        v259 = swift_allocObject();
        *(v259 + 16) = v360;
        v367 = 0;
        v368 = 0xE000000000000000;
        v371 = v257;
        sub_218731D50();
        sub_219BF7484();
        v260 = v367;
        v261 = v368;
        v262 = v361;
        *(v259 + 56) = MEMORY[0x277D837D0];
        *(v259 + 64) = v262;
        *(v259 + 32) = v260;
        *(v259 + 40) = v261;
        sub_219BE5314();

        swift_getObjectType();
        sub_219BEAD94();
        v263 = v338;
        *v338 = v257;
        (*v364)(v263, v365, v339);
        swift_unknownObjectRetain();
        sub_219BF2524();
        sub_218AD7B00(0);
        (*(*(v264 - 8) + 56))(v256, 0, 1, v264);
        (*v362)(v352, v363, v353);
        v369 = sub_219BDD274();
        v370 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
        v367 = v354;
        v265 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v265 init];
        sub_219BE8314();
        v372 = 0u;
        v373 = 0u;
        v374 = 0;
        swift_allocObject();
        v256 = v340;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v256, sub_218B24A8C);

        swift_unknownObjectRelease();
        --v150;
        v154 = v366;
      }

      while (v258 != 1);
      v266 = v320;
      sub_219BED1F4();
      v267 = v321;
      sub_219BED244();
      v268 = *(v322 + 8);
      v269 = v323;
      v268(v266, v323);
      sub_2186C6148(0, &qword_280E8E3B0);
      v270 = sub_219BF66A4();
      v67 = sub_219BE2E04();

      v268(v267, v269);
    }

    (*(v326 + 8))(v325, v327);
  }

  else if (v53 == *MEMORY[0x277D348A0])
  {
    (*(v44 + 96))(v46, v43);
    (*(v318 + 32))(v317, v46, v319);
    sub_219BF6214();
    v170 = swift_allocObject();
    *(v170 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v171 = v367;
    v172 = v368;
    v173 = v361;
    *(v170 + 56) = MEMORY[0x277D837D0];
    *(v170 + 64) = v173;
    *(v170 + 32) = v171;
    *(v170 + 40) = v172;
    sub_219BE5314();

    v174 = sub_219BE4A74();
    if (v174)
    {
      v175 = *(v174 + 16);
      if (v175)
      {
        v367 = MEMORY[0x277D84F90];
        v176 = v174;
        sub_218C35FF8(0, v175, 0);
        v177 = v367;
        v354 = *(v366 + 2);
        v178 = v366[80];
        v350 = v176;
        v179 = &v176[(v178 + 32) & ~v178];
        v352 = *(v366 + 9);
        v353 = v178;
        v351 = ((v178 + 16) & ~v178);
        v180 = (v366 + 32);
        v366 += 16;
        v181 = (v366 - 8);
        do
        {
          v182 = v362;
          v183 = v365;
          v184 = v354;
          v354(v362, v179, v365);
          v185 = v363;
          v184(v363, v182, v183);
          v186 = v351;
          v187 = swift_allocObject();
          (*v180)(&v186[v187], v185, v183);
          v188 = swift_allocObject();
          *(v188 + 16) = sub_219940084;
          *(v188 + 24) = v187;
          (*v181)(v182, v183);
          v367 = v177;
          v190 = *(v177 + 16);
          v189 = *(v177 + 24);
          if (v190 >= v189 >> 1)
          {
            sub_218C35FF8((v189 > 1), v190 + 1, 1);
            v177 = v367;
          }

          *(v177 + 16) = v190 + 1;
          v191 = v177 + 16 * v190;
          *(v191 + 32) = sub_219940088;
          *(v191 + 40) = v188;
          v179 = &v352[v179];
          --v175;
        }

        while (v175);
      }

      else
      {

        v177 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v177 = 0;
    }

    v275 = sub_21917A9E4(v177);

    sub_219BF6214();
    v276 = swift_allocObject();
    *(v276 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    *&v372 = v275;
    sub_218731D50();
    sub_219BF7484();
    v277 = v367;
    v278 = v368;
    v279 = v361;
    *(v276 + 56) = MEMORY[0x277D837D0];
    *(v276 + 64) = v279;
    *(v276 + 32) = v277;
    *(v276 + 40) = v278;
    sub_219BE5314();

    sub_2187B2C48();
    v281 = v280;
    v282 = swift_allocBox();
    v284 = v283;
    v285 = *(v281 + 48);
    sub_2199406E0(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
    v287 = *(v286 + 48);
    v366 = v275;
    swift_unknownObjectRetain();
    v288 = v303;
    sub_219BDEDE4();
    v289 = v307;
    v290 = v305;
    v291 = v309;
    (*(v307 + 104))(v305, *MEMORY[0x277D2FF08], v309);
    v292 = sub_219BDB954();
    v293 = v308;
    (*(*(v292 - 8) + 56))(v308, 1, 1, v292);
    sub_219BDD904();
    sub_2187BCAD8(v293, sub_21873F65C);
    (*(v289 + 8))(v290, v291);
    (*(v304 + 8))(v288, v306);
    *(v284 + v287) = 0;
    *(v284 + v285) = MEMORY[0x277D84F90];
    sub_219BF6214();
    v294 = swift_allocObject();
    *(v294 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    *&v372 = v282 | 2;
    sub_219BF7484();
    v295 = v367;
    v296 = v368;
    v297 = v361;
    *(v294 + 56) = MEMORY[0x277D837D0];
    *(v294 + 64) = v297;
    *(v294 + 32) = v295;
    *(v294 + 40) = v296;
    v298 = v317;
    sub_219BE5314();

    MEMORY[0x28223BE20](v299);
    *(&v302 - 6) = v312;
    *(&v302 - 5) = v282 | 2;
    v300 = v356;
    *(&v302 - 4) = v298;
    *(&v302 - 3) = v300;
    *(&v302 - 2) = v355;
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v67 = sub_219BE30B4();
    swift_unknownObjectRelease();

    (*(v318 + 8))(v298, v319);
  }

  else if (v53 == *MEMORY[0x277D348B0])
  {
    (*(v44 + 96))(v46, v43);
    v209 = v52;
    v210 = v314;
    v211 = *(v314 + 32);
    v365 = v314 + 32;
    v366 = v211;
    v212 = v313;
    v213 = v315;
    (v211)(v313, v46, v315);
    sub_219BF6214();
    v214 = swift_allocObject();
    *(v214 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v215 = v367;
    v216 = v368;
    v217 = v361;
    *(v214 + 56) = MEMORY[0x277D837D0];
    *(v214 + 64) = v217;
    *(v214 + 32) = v215;
    *(v214 + 40) = v216;
    sub_219BE5314();

    v218 = v357;
    v364 = sub_21993EC08(v212, v337, v357, v209);
    v363 = sub_219BE1C44();
    v219 = v210;
    v220 = *(v210 + 16);
    v221 = v311;
    v222 = v213;
    v220(v311, v212, v213);
    v223 = (*(v219 + 80) + 16) & ~*(v219 + 80);
    v224 = (v310 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
    v225 = (v224 + 15) & 0xFFFFFFFFFFFFFFF8;
    v226 = (v225 + 15) & 0xFFFFFFFFFFFFFFF8;
    v227 = (v226 + 15) & 0xFFFFFFFFFFFFFFF8;
    v228 = swift_allocObject();
    (v366)(v228 + v223, v221, v222);
    v229 = v337;
    *(v228 + v224) = v337;
    *(v228 + v225) = v218;
    *(v228 + v226) = v312;
    v230 = (v228 + v227);
    v231 = v355;
    *v230 = v356;
    v230[1] = v231;
    *(v228 + ((v227 + 23) & 0xFFFFFFFFFFFFFFF8)) = v354;
    v232 = swift_allocObject();
    *(v232 + 16) = sub_21993FD14;
    *(v232 + 24) = v228;
    v233 = (v229 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v234 = v363;
    v67 = sub_219BE2F64();

    (*(v314 + 8))(v313, v315);
  }

  else
  {
    sub_219BF61F4();
    v252 = swift_allocObject();
    *(v252 + 16) = v360;
    v367 = 0;
    v368 = 0xE000000000000000;
    sub_219BF7484();
    v253 = v367;
    v254 = v368;
    v255 = v361;
    *(v252 + 56) = MEMORY[0x277D837D0];
    *(v252 + 64) = v255;
    *(v252 + 32) = v253;
    *(v252 + 40) = v254;
    sub_219BE5314();

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v67 = sub_219BE3014();
    (*(v44 + 8))(v46, v43);
  }

  return v67;
}

id sub_21993BD64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 < 1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = sub_219BF7894();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_219BE5314();

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    if (a4)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      v9 = swift_allocObject();
      result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
      *(v9 + 16) = result;
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      v12 = swift_allocObject();
      v12[2] = a2;
      v12[3] = v8;
      v12[4] = v7;
      v12[5] = v9;
      v13 = objc_allocWithZone(MEMORY[0x277D82BB8]);
      v21 = v11;

      v20 = [v13 init];
      swift_beginAccess();

      sub_219BE2754();

      v18 = swift_allocObject();
      *(v18 + 16) = sub_21994014C;
      *(v18 + 24) = v12;
      sub_2186C6148(0, &qword_280E8DA00);

      sub_219BE2704();
    }

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v19 = sub_21993D420(a3, v7);

    return v19;
  }
}

id sub_21993C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = sub_219BF7894();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_219BE5314();

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    *(v8 + 16) = result;
    if (result)
    {
      v10 = result;
      v11 = swift_allocObject();
      v11[2] = a2;
      v11[3] = a4;
      v11[4] = v7;
      v11[5] = a3;
      v11[6] = v8;
      v12 = objc_allocWithZone(MEMORY[0x277D82BB8]);

      v13 = v10;

      v21 = [v12 init];
      swift_beginAccess();

      sub_219BE2754();

      v18 = swift_allocObject();
      *(v18 + 16) = sub_21994048C;
      *(v18 + 24) = v11;
      sub_2186C6148(0, &qword_280E8DA00);

      sub_219BE2704();

      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      v19 = sub_219BE5314();
      MEMORY[0x28223BE20](v19);
      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v20 = sub_219BE30B4();

      return v20;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21993C670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  sub_21917A5AC(a1);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);

  v13 = v11 + 40;
  v14 = -1;
  while (v14 - v12 != -1)
  {
    if (++v14 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = v13 + 16;
    v16 = *(v13 - 8);
    v33 = v10;

    v16(v32, &v33);

    v13 = v15;
    if ((v32[0] & 1) == 0)
    {

      if (qword_280E8D830 == -1)
      {
LABEL_9:
        sub_219BF6214();
        sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_219C09BA0;
        v33 = 0;
        v34 = 0xE000000000000000;
        v32[0] = v10;
        sub_218731D50();
        sub_219BF7484();
        v18 = v33;
        v19 = v34;
        *(v17 + 56) = MEMORY[0x277D837D0];
        *(v17 + 64) = sub_2186FC3BC();
        *(v17 + 32) = v18;
        *(v17 + 40) = v19;
        sub_219BE5314();

        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a4 + 16) = v22;
  if (qword_280E8D830 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v10 = qword_280F61728;
  sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09EC0;
  swift_beginAccess();
  v24 = sub_219BF7894();
  v26 = v25;
  v27 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v28 = sub_2186FC3BC();
  *(v23 + 64) = v28;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  swift_beginAccess();
  if (__OFSUB__(a5, *(a4 + 16)))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = sub_219BF7894();
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  sub_219BE5314();

  swift_beginAccess();
  if (*(a4 + 16) == a5)
  {
    sub_219BF6214();
    sub_219BE5314();
    swift_beginAccess();
    v31 = *(a6 + 16);
    *(a6 + 16) = 0;
  }
}

void sub_21993CA74(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a7;
  v14 = sub_219BE49D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  if (*(a5 + 16) >= a6)
  {

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    v31 = sub_219BE5314();
    a1(v31);
  }

  else
  {
    v34 = a6;
    v35 = v14;
    v19 = a8;
    v33 = a9;
    v20 = qword_280E8D830;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v21 = swift_allocObject();
    *(v21 + 16) = 2;
    sub_219BF6214();
    sub_219BE5314();
    sub_21993D420(2, v21);

    v22 = sub_219BE1C44();
    v32 = sub_219BE2F74();

    v23 = v35;
    (*(v15 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v35);
    v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = v34;
    *(v26 + 2) = a5;
    *(v26 + 3) = v27;
    *(v26 + 4) = sub_218A2DB54;
    *(v26 + 5) = v18;
    (*(v15 + 32))(&v26[v24], v17, v23);
    *&v26[v25] = v19;
    *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v33;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2199404B4;
    *(v28 + 24) = v26;
    v29 = (v19 & 0x7FFFFFFFFFFFFFFFLL);

    v30 = sub_219BE2E54();
    sub_219BE2F74();
  }
}

uint64_t sub_21993CE64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_beginAccess();
  v8 = *(a1 + 16);
  sub_219BF6214();
  if (v8 >= a2)
  {
    v22 = sub_219BE5314();
    return a3(v22);
  }

  else
  {
    v23 = a3;
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09EC0;
    swift_beginAccess();
    v10 = sub_219BF7894();
    v12 = v11;
    v13 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v14 = sub_2186FC3BC();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    result = swift_beginAccess();
    if (__OFSUB__(a2, *(a1 + 16)))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_219BF7894();
      *(v9 + 96) = v13;
      *(v9 + 104) = v14;
      *(v9 + 72) = v16;
      *(v9 + 80) = v17;
      sub_219BE5314();

      sub_219BF6214();
      v18 = sub_219BE5314();
      MEMORY[0x28223BE20](v18);
      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE30B4();
      v19 = sub_219BE1C44();
      v20 = swift_allocObject();
      *(v20 + 16) = v23;
      *(v20 + 24) = a4;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_218BBF788;
      *(v21 + 24) = v20;

      sub_219BE2F74();
    }
  }

  return result;
}

void sub_21993D224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21917A5AC(a1);
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v10;
    if (qword_280E8D830 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  swift_beginAccess();
  v12 = sub_219BF7894();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_219BE5314();

  swift_beginAccess();
  if (!*(a4 + 16))
  {
    sub_219BF6214();
    sub_219BE5314();
    swift_beginAccess();
    v15 = *(a5 + 16);
    *(a5 + 16) = 0;
  }
}

uint64_t sub_21993D420(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  result = swift_beginAccess();
  if (__OFSUB__(a1, *(a2 + 16)))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_219BF7894();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    sub_219BE5314();

    MEMORY[0x28223BE20](v9);
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE30B4();
  }

  return result;
}

uint64_t sub_21993D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a5;
  v9 = sub_219BED174();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BED214();
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v31 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v33 = *(v16 + 8);
  v33(v19, v15);
  v23 = swift_allocObject();
  v24 = v35;
  v25 = v36;
  v23[2] = v32;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = sub_2187A913C;
  v23[6] = v22;
  aBlock[4] = sub_21994047C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_187;
  v26 = _Block_copy(aBlock);
  v27 = (v25 & 0x7FFFFFFFFFFFFFFFLL);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187A56B8(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_2187A56B8(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  v28 = v31;
  MEMORY[0x21CECD420](v21, v14, v11, v26);
  _Block_release(v26);

  (*(v39 + 8))(v11, v9);
  (*(v37 + 8))(v14, v38);
  return (v33)(v21, v34);
}

uint64_t sub_21993DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(a1 + 16) = v12;
  if (v12 >= 1)
  {
    if (qword_280E8D830 == -1)
    {
LABEL_4:
      sub_219BF6214();
      sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_219C09BA0;
      swift_beginAccess();
      if (!__OFSUB__(a2, *(a1 + 16)))
      {
        v38 = a2;
        v14 = sub_219BF7894();
        v16 = v15;
        *(v13 + 56) = MEMORY[0x277D837D0];
        *(v13 + 64) = sub_2186FC3BC();
        *(v13 + 32) = v14;
        *(v13 + 40) = v16;
        sub_219BE5314();

        sub_219BE8664();
        v17 = sub_219BE7BC4();

        sub_219BE8664();
        v18 = sub_219BE7BC4();

        [v18 contentOffset];
        v20 = v19;

        sub_219BE8664();
        v21 = sub_219BE7BC4();

        [v21 contentOffset];
        v23 = v22;

        sub_219BE8664();
        v24 = sub_219BE7BC4();

        [v24 frame];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v39.origin.x = v26;
        v39.origin.y = v28;
        v39.size.width = v30;
        v39.size.height = v32;
        [v17 setContentOffset_];

        sub_21993D420(v38, a1, a3);
        v33 = sub_219BE1C44();
        v34 = swift_allocObject();
        *(v34 + 16) = a4;
        *(v34 + 24) = a5;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_218BBF788;
        *(v35 + 24) = v34;

        sub_219BE2F74();
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_280E8D830 != -1)
  {
LABEL_11:
    swift_once();
  }

  sub_219BF6214();
  v37 = sub_219BE5314();
  return a4(v37);
}

uint64_t sub_21993DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a5;
  v43 = a8;
  v39 = a6;
  v40 = a4;
  v38 = a2;
  v41 = a9;
  v13 = sub_219BE9414();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE4B14();
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  (*(v16 + 16))(v18, a7, v15);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  v36[1] = a3;
  *(v23 + 4) = a3;
  *(v23 + 5) = v40;
  (*(v16 + 32))(&v23[v21], v18, v37);
  v25 = &v23[v22];
  v26 = v41;
  *v25 = v43;
  *(v25 + 1) = v26;
  v27 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v27 = sub_218A2DB54;
  *(v27 + 1) = v19;

  sub_2189EB264(v24);

  swift_unknownObjectRetain();
  sub_219BE6454();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  v48 = 0;
  v49 = 0xE000000000000000;
  v29 = v24;
  v47 = v24;
  sub_219BF7484();
  v30 = v48;
  v31 = v49;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_2186FC3BC();
  *(v28 + 32) = v30;
  *(v28 + 40) = v31;
  sub_219BE5314();

  v48 = v29;
  v33 = v44;
  v32 = v45;
  v34 = v46;
  (*(v45 + 104))(v44, *MEMORY[0x277D6E598], v46);
  sub_219BE6474();
  (*(v32 + 8))(v33, v34);
}

void sub_21993E294(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v50 = a8;
  v51 = a7;
  v49 = a6;
  v56 = a4;
  v57 = a5;
  v13 = sub_219BED174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BED1D4();
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED214();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v46 = v16;
    v47 = v14;
    v48 = v13;
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v59 = 0xE000000000000000;
    v64 = a3;
    sub_219BF7484();
    v27 = aBlock;
    v28 = v59;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_219BE5314();

    aBlock = v25;
    v29 = NewsActivity2.identifier.getter();
    v31 = v30;
    v64 = a3;
    if (v29 == NewsActivity2.identifier.getter() && v31 == v32)
    {

LABEL_8:
      sub_2186C6148(0, &qword_280E8E3B0);
      v45 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BE4B04();
      sub_219BED244();
      v34 = v53;
      v52 = *(v52 + 8);
      (v52)(v22, v53);
      v35 = swift_allocObject();
      v36 = v50;
      v35[2] = v51;
      v35[3] = v36;
      v35[4] = a9;
      v35[5] = a10;
      v37 = v57;
      v35[6] = v56;
      v35[7] = v37;
      v62 = sub_219940644;
      v63 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_218793E0C;
      v61 = &block_descriptor_124;
      v38 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_219BED1A4();
      aBlock = MEMORY[0x277D84F90];
      sub_2187A56B8(&qword_280E927E0, MEMORY[0x277D85198]);
      sub_21879DD98();
      sub_2187A56B8(&qword_280E8EFA0, sub_21879DD98);
      v39 = v55;
      v40 = v48;
      sub_219BF7164();
      v41 = v45;
      MEMORY[0x21CECD420](v24, v18, v39, v38);
      _Block_release(v38);

      (*(v47 + 8))(v39, v40);
      (*(v54 + 8))(v18, v46);
      (v52)(v24, v34);
      return;
    }

    v33 = sub_219BF78F4();

    if (v33)
    {
      goto LABEL_8;
    }

    type metadata accessor for PersonalizationScriptTestCase.Errors();
    sub_2187A56B8(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors);
    v42 = swift_allocError();
    *v43 = a3;
    swift_storeEnumTagMultiPayload();
    sub_2189EB264(a3);
    v56(v42);
  }
}

void sub_21993E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v17 = a3;
  v5 = sub_219BED214();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_getObjectType();
  sub_219BEAF54();
  sub_219BEA9A4();
  sub_219BE70A4();

  sub_219BED1F4();
  sub_219BED244();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_219BE2E14();
  v12(v11, v5);
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 16) = v17;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_218807D28;
  *(v15 + 24) = v13;

  v16 = sub_219BE2E54();
  sub_219BE2F74();
}

id sub_21993EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE4B84();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  type metadata accessor for BrowsePresentationRequirements();
  swift_allocObject();
  v12 = sub_218EDBE24(v10);
  v13 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  *(v13 + 16) = result;
  if (result)
  {
    v15 = result;
    v26 = a4;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = a3;
    v16[4] = v13;
    v17 = objc_allocWithZone(MEMORY[0x277D82BB8]);
    v18 = v15;

    v27 = a3;

    v19 = [v17 init];
    swift_beginAccess();

    sub_219BE2754();

    v20 = swift_allocObject();
    *(v20 + 16) = sub_2199407DC;
    *(v20 + 24) = v16;
    sub_2186C6148(0, &qword_280E8DA00);

    sub_219BE2704();

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    v21 = sub_219BE5314();
    MEMORY[0x28223BE20](v21);
    v23 = v26;
    v22 = v27;
    *(&v25 - 4) = v12;
    *(&v25 - 3) = v23;
    *(&v25 - 2) = a2;
    *(&v25 - 1) = v22;
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v24 = sub_219BE30B4();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21993EFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218EDC3E8();
  sub_21917A5AC(a1);
  if (!*(*(a2 + 16) + 16))
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    *(a4 + 16) = 0;
  }
}

void sub_21993F06C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_219BE49D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  if (*(*(a5 + 16) + 16))
  {
    v35 = v14;
    v36 = v18;
    v37 = a8;
    v38 = a5;
    v19 = qword_280E8D830;

    if (v19 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v20 = swift_allocObject();
    *(v20 + 16) = 2;
    sub_219BF6214();
    sub_219BE5314();
    sub_21993D420(2, v20);

    v21 = sub_219BE1C44();
    v34[1] = sub_219BE2F74();

    v22 = a6;
    v23 = v35;
    (*(v15 + 16))(v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v35);
    v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v25 = (v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v38;
    (*(v15 + 32))(v27 + v24, v17, v23);
    *(v27 + v25) = a7;
    v28 = v36;
    *(v27 + v26) = v37;
    v29 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_218A2DB54;
    v29[1] = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2199407F4;
    *(v30 + 24) = v27;
    v31 = (a7 & 0x7FFFFFFFFFFFFFFFLL);

    v32 = sub_219BE2E54();
    sub_219BE2F74();
  }

  else
  {

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    v33 = sub_219BE5314();
    a1(v33);
  }
}

uint64_t sub_21993F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BF6214();
  v8 = sub_219BE5314();
  MEMORY[0x28223BE20](v8);
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v9 = sub_219BE1C44();
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218BBF788;
  *(v11 + 24) = v10;

  sub_219BE2F74();
}

uint64_t sub_21993F664(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void, void, void))
{
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v48 = sub_219BE49D4();
  v14 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219940658();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE4B94();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  v52 = a5;
  sub_218F98F90(v19);
  sub_2199406E0(0, &qword_27CC21340, MEMORY[0x277D34968], sub_21994075C);
  if ((*(*(v25 - 8) + 48))(v19, 1, v25) == 1)
  {

    v26 = sub_2187BCAD8(v19, sub_219940658);
    return a1(v26);
  }

  else
  {
    v42 = a11;
    v43 = v24;
    v46 = v20;
    v47 = v21;
    v28 = *(v21 + 32);
    v45 = v23;
    v28(v23, v19, v20);
    sub_21952B978(v16);

    v30 = v49;
    v29 = v50;
    v31 = v51;
    v32 = v42;
    v44 = sub_21993873C(v49, v50, v51, a9, a10, v42);
    (*(v14 + 8))(v16, v48);
    v33 = swift_allocObject();
    v33[2] = v52;
    v33[3] = v30;
    v33[4] = v29;
    v33[5] = v31;
    v33[6] = a9;
    v33[7] = a10;
    v33[8] = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_219940790;
    *(v34 + 24) = v33;
    v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v36 = sub_219BE2E54();
    sub_219BE2F64();

    v37 = swift_allocObject();
    v38 = v43;
    *(v37 + 16) = sub_218A2DB54;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_218BBF788;
    *(v39 + 24) = v37;
    v40 = sub_219BE2E54();
    sub_219BE2F74();

    return (*(v47 + 8))(v45, v46);
  }
}

uint64_t sub_21993FAFC()
{
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_21993FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_219BE4B84();
  MEMORY[0x28223BE20](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16, a1);
  type metadata accessor for BrowseNonPresentationRequirements();
  swift_allocObject();
  v21 = sub_218F98A6C(v16);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v18 = sub_219BE30B4();

  return v18;
}

uint64_t sub_21993FD14()
{
  v1 = *(sub_219BE4B84() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21993FB8C(v0 + v2, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21993FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2187E2B98(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_219940194(a2, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2187E2B98);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_219940330(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, sub_2187E2B98);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  sub_219BE3494();
}

uint64_t sub_21993FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218CF6310(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_219940194(a2, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), sub_218CF6310);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_219940330(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, sub_218CF6310);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  sub_219BE3494();
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = sub_219BE4C24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_219940114@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_219940194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_59Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = a2(0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_219940330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199403C4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_2199404B4()
{
  sub_219BE49D4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return sub_21993CE64(v1, v2, v3, v4);
}

void sub_21994058C(uint64_t *a1)
{
  v3 = *(sub_219BE4B14() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21993E294(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_219940658()
{
  if (!qword_27CC21338)
  {
    sub_2199406E0(255, &qword_27CC21340, MEMORY[0x277D34968], sub_21994075C);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC21338);
    }
  }
}

void sub_2199406E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2199407F4()
{
  v1 = *(sub_219BE49D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_21993F450(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_2199408C4@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2199409D4()
{
  v0 = sub_219BDBD34();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  sub_219BDB154();
  type metadata accessor for TagFeedConfigData();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 32) = 0;
  result = (*(v2 + 32))(v5 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v4, v1);
  qword_27CCD8EF8 = v5;
  return result;
}

char **sub_219940B20(void *a1)
{
  v32 = *v1;
  v33 = v2;
  v4 = sub_219BDBD34();
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9358C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDB184();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219941990(0, &qword_27CC21350, MEMORY[0x277D844C8]);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199418E8();
  v15 = v33;
  sub_219BF7B34();
  if (v15)
  {
    swift_deallocPartialClassInstance();
    v19 = a1;
  }

  else
  {
    v33 = v11;
    v37 = 0;
    v16 = v30;
    v1[2] = sub_219BF76F4();
    v1[3] = v17;
    v35 = 1;
    sub_21994193C();
    sub_219BF76E4();
    *(v1 + 32) = v36 & 1;
    v34 = 2;
    sub_219941A48(&unk_280EE9DD8);
    v27 = v8;
    v18 = v31;
    sub_219BF76E4();
    v32 = v14;
    v21 = v29;
    v22 = *(v29 + 48);
    v23 = v22(v27, 1, v9);
    v26 = a1;
    if (v23 == 1)
    {
      sub_219BDBD24();
      v24 = v33;
      sub_219BDB154();
      (*(v16 + 8))(v32, v31);
      v25 = v27;
      if (v22(v27, 1, v9) != 1)
      {
        sub_218BACB50(v25);
      }
    }

    else
    {
      (*(v16 + 8))(v32, v18);
      v24 = v33;
      (*(v21 + 32))(v33, v27, v9);
    }

    (*(v21 + 32))(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v24, v9);
    v19 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v1;
}

uint64_t sub_219940FDC(void *a1)
{
  v3 = v1;
  sub_219941990(0, &qword_27CC21368, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199418E8();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v11[14] = *(v3 + 32);
    v11[13] = 1;
    sub_2199419F4();
    sub_219BF7834();
    v11[12] = 2;
    sub_219BDB184();
    sub_219941A48(&qword_280EE9DE8);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2199411CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  if (v2 != 1)
  {
    v4 = 0x746E496863746566;
    v3 = 0xED00006C61767265;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x444964726F636572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656372756F73;
  if (*a2 != 1)
  {
    v8 = 0x746E496863746566;
    v7 = 0xED00006C61767265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444964726F636572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2199412E0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21994138C()
{
  sub_219BF5524();
}

uint64_t sub_219941424()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2199414CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219941BF8();
  *a1 = result;
  return result;
}

void sub_2199414FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656372756F73;
  if (v2 != 1)
  {
    v5 = 0x746E496863746566;
    v4 = 0xED00006C61767265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444964726F636572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219941564()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x746E496863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_2199415C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219941BF8();
  *a1 = result;
  return result;
}

uint64_t sub_2199415F0(uint64_t a1)
{
  v2 = sub_2199418E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21994162C(uint64_t a1)
{
  v2 = sub_2199418E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219941668()
{

  v1 = OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval;
  v2 = sub_219BDB184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagFeedConfigData()
{
  result = qword_280ED4ED8;
  if (!qword_280ED4ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219941760()
{
  result = sub_219BDB184();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_219941818()
{
  result = qword_27CC21348;
  if (!qword_27CC21348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21348);
  }

  return result;
}

char **sub_21994186C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_219940B20(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2199418E8()
{
  result = qword_27CC21358;
  if (!qword_27CC21358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21358);
  }

  return result;
}

unint64_t sub_21994193C()
{
  result = qword_27CC21360;
  if (!qword_27CC21360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21360);
  }

  return result;
}

void sub_219941990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199418E8();
    v7 = a3(a1, &type metadata for TagFeedConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199419F4()
{
  result = qword_27CC21370;
  if (!qword_27CC21370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21370);
  }

  return result;
}

uint64_t sub_219941A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BDB184();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219941A8C()
{
  result = qword_27CC21378;
  if (!qword_27CC21378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21378);
  }

  return result;
}

unint64_t sub_219941AF4()
{
  result = qword_27CC21380;
  if (!qword_27CC21380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21380);
  }

  return result;
}

unint64_t sub_219941B4C()
{
  result = qword_27CC21388;
  if (!qword_27CC21388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21388);
  }

  return result;
}

unint64_t sub_219941BA4()
{
  result = qword_27CC21390;
  if (!qword_27CC21390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21390);
  }

  return result;
}

uint64_t sub_219941BF8()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_219941C54(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v71 = a3;
  v73 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v72 = v5;
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = (&v56 - v6);
  v62 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v16 = v15;
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v56 - v19;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  v30 = a1;
  sub_219BEB354();
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v31 = sub_218A2D984;
    v32 = v22;
LABEL_5:
    sub_218C69A30(v32, v31);
    sub_2199424F8();
    v34 = swift_allocError();
    v36 = v69;
    v35 = v70;
    *v69 = v34;
    v37 = v72;
    (*(v35 + 104))(v36, *MEMORY[0x277D6DF68], v72);
    v73(v36);
    return (*(v35 + 8))(v36, v37);
  }

  (*(v25 + 32))(v29, v22, v24);
  sub_219BEB1C4();
  v33 = v68;
  if ((*(v68 + 48))(v14, 1, v16) == 1)
  {
    (*(v25 + 8))(v29, v24);
    v31 = sub_218A7BA30;
    v32 = v14;
    goto LABEL_5;
  }

  v39 = *(v33 + 32);
  v60 = v16;
  v39(v67, v14, v16);
  (*(v25 + 16))(v64, v29, v24);
  v40 = *(v66 + 16);
  v41 = v63;
  v58 = v66 + 16;
  v59 = v30;
  v57 = v40;
  v40(v63, v30, v10);
  *v8 = v61;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 8) = 23068672;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  sub_219BE5FB4();
  v42 = v10;
  sub_219BE69E4();
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v29;
  if (sub_219BE6E54())
  {
    v44 = MEMORY[0x277D6DF80];
    v45 = v69;
  }

  else
  {
    sub_218A7BB4C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 64);
    v45 = v69;
    v57(v69, v41, v42);
    sub_218718690(v74, v45 + v47);
    v49 = *MEMORY[0x277D6D868];
    v50 = sub_219BE6DF4();
    (*(*(v50 - 8) + 104))(v45 + v48, v49, v50);
    v44 = MEMORY[0x277D6DF78];
  }

  v51 = v70;
  v52 = v72;
  (*(v70 + 104))(v45, *v44, v72);
  v73(v45);
  (*(v51 + 8))(v45, v52);
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v65, v60);
  (*(v66 + 8))(v41, v42);
  v55 = *(v25 + 8);
  v55(v64, v24);
  v53(v67, v54);
  v55(v43, v24);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_219942464(uint64_t a1)
{
  v2 = sub_218B12884();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2199424A4()
{
  result = qword_280E95AD8;
  if (!qword_280E95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95AD8);
  }

  return result;
}

unint64_t sub_2199424F8()
{
  result = qword_27CC21398;
  if (!qword_27CC21398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21398);
  }

  return result;
}

unint64_t sub_219942560()
{
  result = qword_27CC213A0;
  if (!qword_27CC213A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC213A0);
  }

  return result;
}

uint64_t sub_2199425B4(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = type metadata accessor for SportsHighlights(0);
  v3 = 0;
  v26 = a1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  v27 = v2;
  v4 = MEMORY[0x277D84F90];
  v25 = *(*(v2 - 8) + 72);
  while (1)
  {
    v6 = *(v26 + v25 * v3 + *(v27 + 20));
    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      v8 = sub_219BF7214();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v4 >> 62;
    if (v4 >> 62)
    {
      v24 = sub_219BF7214();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v4 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_36;
    }

    v29 = v3;
    v31 = v4;
    v16 = v12 + 8 * v13 + 32;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_2187E7248();
      sub_219949BE0(&qword_280E8EBE0, sub_2187E7248);
      for (i = 0; i != v15; ++i)
      {
        v18 = sub_218A352D0(v30, i, v6);
        v20 = *v19;
        swift_unknownObjectRetain();
        (v18)(v30, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_2186D6710(0, &qword_280E8E260);
      swift_arrayInitWithCopy();
    }

    v3 = v29;
    v4 = v31;
    if (v8 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v8);
      v23 = v21 + v8;
      if (v22)
      {
        goto LABEL_37;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    if (++v3 == v28)
    {
      return v4;
    }
  }

  result = sub_219BF7214();
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2199428EC()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MySportsTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 18;
  sub_2189AE994(0);
  v22 = sub_219BEE964();
  sub_2186E4EF4(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = (v11 + v10);
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  sub_219BEDD14();
  (*(v1 + 16))(v3, v6, v0);
  sub_21994D5D4(v6, type metadata accessor for MySportsTodayFeedGroupConfigData);
  v13 = sub_219BF1784();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2197C9C7C(0, &qword_280E91230, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v17 = *MEMORY[0x277D32308];
  v18 = *(v8 + 104);
  v19 = v21;
  v18(v12, v17, v21);
  swift_allocObject();
  *(v12 + v9) = sub_219BEFB94();
  v18((v12 + v9), v17, v19);
  v23 = v22;
  sub_2191EE478(v11);
  return v23;
}

uint64_t sub_219942D04(uint64_t a1, uint64_t a2)
{
  v3[207] = v2;
  v3[201] = a2;
  v3[195] = a1;
  sub_2186E4EF4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[213] = swift_task_alloc();
  sub_219BEF554();
  v3[219] = swift_task_alloc();
  v3[225] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[231] = v4;
  v3[237] = *(v4 - 8);
  v3[238] = swift_task_alloc();
  v5 = sub_219BF1214();
  v3[239] = v5;
  v3[240] = *(v5 - 8);
  v3[241] = swift_task_alloc();
  v3[242] = type metadata accessor for MySportsTodayFeedGroupConfigData();
  v3[243] = swift_task_alloc();
  v3[244] = swift_task_alloc();
  v6 = sub_219BF1934();
  v3[245] = v6;
  v7 = *(v6 - 8);
  v3[246] = v7;
  v3[247] = *(v7 + 64);
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219942F74, 0, 0);
}

uint64_t sub_219942F74()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v21 = v0[241];
  v5 = v0[240];
  v19 = v0[242];
  v20 = v0[239];
  v18 = v0[249];
  v0[251] = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config;
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  v0[252] = v6;
  sub_219BEDD14();
  v7 = *(v1 + 16);
  v0[253] = v7;
  v0[254] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v18, v3, v2);
  sub_21994D5D4(v3, type metadata accessor for MySportsTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v21, v4 + *(v19 + 28), v20);
  sub_21994D5D4(v4, type metadata accessor for MySportsTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v8 = v0[249];
  v9 = v0[246];
  v10 = v0[245];
  v11 = v0[241];
  v12 = v0[240];
  v13 = v0[239];
  sub_219BF1774();

  (*(v12 + 8))(v11, v13);
  v14 = *(v9 + 8);
  v0[255] = v14;
  v0[256] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  sub_219BEF164();
  v15 = v0[207];
  v0[257] = v0[177];
  __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService), *(v15 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService + 24));
  v0[258] = sub_2191ABC74(1);
  v16 = swift_task_alloc();
  v0[259] = v16;
  *v16 = v0;
  v16[1] = sub_219943340;

  return MEMORY[0x2821D23D8](v0 + 175);
}

uint64_t sub_219943340()
{
  *(*v1 + 2080) = v0;

  if (v0)
  {
    v2 = sub_21994481C;
  }

  else
  {
    v2 = sub_219943474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219943474()
{
  v1 = *(v0 + 1400);
  *(v0 + 2088) = v1;
  v2 = *(v0 + 1408);
  *(v0 + 2096) = v2;
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v3 = *(v0 + 1984);
    v4 = *(v0 + 1968);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1656);
    v7 = *(v0 + 1608);
    (*(v0 + 2024))(v3, *(v0 + 2000), v5);
    v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v0 + 2104) = v9;
    *(v9 + 2) = v6;
    *(v9 + 3) = v7;
    *(v9 + 4) = v1;
    *(v9 + 5) = v2;
    (*(v4 + 32))(&v9[v8], v3, v5);

    v10 = MEMORY[0x277D83940];
    sub_2186E4EF4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
    swift_asyncLet_begin();
    v11 = swift_allocObject();
    *(v0 + 2112) = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;

    sub_2186E4EF4(0, &unk_27CC213B0, MEMORY[0x277D34B80], v10);
    swift_asyncLet_begin();
    v12 = swift_task_alloc();
    *(v0 + 2120) = v12;
    *v12 = v0;
    v12[1] = sub_2199438A8;
    v13 = *(v0 + 2056);
    v14 = *(v0 + 2000);

    return sub_219946F38(v2, v13, v14);
  }

  if (v2 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v16 = *(v0 + 2040);
  v17 = *(v0 + 2000);
  v18 = *(v0 + 1960);

  v19 = sub_219BEEDD4();
  sub_219949BE0(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D323F0], v19);
  swift_willThrow();

  v16(v17, v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2199438A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *v4;
  v6[266] = a1;
  v6[267] = a2;
  v6[268] = a3;
  v6[269] = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_219944938, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v6[270] = v8;
    *v8 = v7;
    v8[1] = sub_219943A4C;
    v9 = v6[262];
    v10 = v6[257];
    v11 = v6[250];
    v12 = v6[201];

    return sub_21994AFEC(v12, v10, v9, a2, v11);
  }
}

uint64_t sub_219943A4C(uint64_t a1)
{
  *(*v1 + 2168) = a1;

  return MEMORY[0x2822009F8](sub_219943B4C, 0, 0);
}

uint64_t sub_219943B4C()
{
  v1 = sub_2199425B4(v0[271]);
  v0[272] = v1;
  v2 = swift_task_alloc();
  v0[273] = v2;
  *v2 = v0;
  v2[1] = sub_219943C18;
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[262];
  v6 = v0[257];
  v7 = v0[250];
  v8 = v0[201];

  return sub_21994BD1C(v8, v6, v5, v4, v3, v1, v7);
}

uint64_t sub_219943C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[274] = a1;
  v5[275] = a2;
  v5[276] = a3;
  v5[277] = v3;

  if (v3)
  {
    v6 = sub_219943EB0;
  }

  else
  {

    v6 = sub_219943D58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219943D58()
{
  v1 = v0[277];
  v2 = sub_2199476E0(v0[201], v0[274], v0[275], v0[276], v0[266], v0[267], v0[268]);
  v0[278] = v1;
  v0[279] = v2;
  v0[280] = v3;
  if (v1)
  {
    sub_2187A9CC4(v0[274]);

    return MEMORY[0x282200920](v0 + 82, v0 + 189, sub_219944B3C, v0 + 190);
  }

  else
  {

    return MEMORY[0x282200928](v0 + 2, v0 + 183, sub_219944100, v0 + 202);
  }
}

uint64_t sub_219943EB0()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_219943F74, v0 + 1424);
}

uint64_t sub_219943FCC()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944100()
{
  *(v0 + 2248) = *(v0 + 1464);

  return MEMORY[0x282200928](v0 + 656, v0 + 1512, sub_219944170, v0 + 1664);
}

uint64_t sub_219944170()
{
  v1 = v0[189];
  v0[282] = v1;

  v2 = swift_task_alloc();
  v0[283] = v2;
  *v2 = v0;
  v2[1] = sub_21994423C;
  v3 = v0[281];
  v4 = v0[280];
  v5 = v0[279];
  v6 = v0[271];
  v7 = v0[250];
  v8 = v0[201];

  return sub_219947E04(v8, v7, v5, v4, v3, v6, v1);
}

uint64_t sub_21994423C(uint64_t a1)
{
  v3 = *v2;
  v3[167] = v2;
  v3[168] = a1;
  v3[169] = v1;
  v3[284] = v1;

  if (v1)
  {
    v4 = sub_219944CC8;
  }

  else
  {

    v4 = sub_2199443A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2199443A4()
{
  v6 = v0[274];
  if (v6)
  {
  }

  v3 = v0[238];
  v1 = v0[237];
  v5 = v0[231];
  v4 = v0[195];
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for MySportsTodayFeedGroupKnobs();
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  sub_2187A9CC4(v6);

  (*(v1 + 32))(v4, v3, v5);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_2197C9C7C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 82, v0 + 189, sub_21994468C, v0 + 226);
}

uint64_t sub_2199446E4()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21994481C()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944938()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_2199449B0, v0 + 1296);
}

uint64_t sub_219944A08()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944B94()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944CC8()
{
  v1 = *(v0 + 2192);

  sub_2187A9CC4(v1);

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_219944D9C, v0 + 1712);
}

uint64_t sub_219944DF4()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_2193CEC5C;

  return sub_219944FE0(a3, a4, a6);
}

uint64_t sub_219944FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_219BDBD34();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = sub_219BF4264();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  v4[40] = swift_task_alloc();
  sub_219BF4CF4();
  v4[41] = swift_task_alloc();
  sub_2186E4EF4(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v4[44] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_219BF0644();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199452A8, 0, 0);
}

uint64_t sub_2199452A8()
{
  v1 = v0;
  v4 = v0 + 50;
  v3 = v0[50];
  v2 = v4[1];
  v5 = v1[48];
  v6 = v1[49];
  sub_219BEF154();
  (*(v6 + 104))(v3, *MEMORY[0x277D32EF8], v5);
  sub_219949BE0(&unk_280E90EE0, MEMORY[0x277D32F00]);
  v7 = sub_219BF53A4();
  v8 = *(v6 + 8);
  v8(v3, v5);
  v8(v2, v5);
  if ((v7 & 1) == 0)
  {
    v13 = v1[46];
    v12 = v1[47];
    v14 = v1[45];
    v1[52] = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs;
    v1[53] = type metadata accessor for MySportsTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    v15 = *(v13 + 8);
    v1[54] = v15;
    v1[55] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);
    v56 = v1[26];
    v1[56] = v56;
    sub_219BEF134();
    sub_219BEF524();
    v57 = v15;
    v15(v12, v14);
    v16 = v1[27];
    v1[57] = v16;
    sub_219BF1724();
    v17 = sub_219BF5AA4();

    if (v17 >> 62)
    {
      v18 = sub_219BF7214();
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_9:
        v60 = MEMORY[0x277D84F90];
        v19 = sub_21870B65C(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          return MEMORY[0x2821D23D8](v19);
        }

        v58 = v16;
        v54 = v1;
        v20 = 0;
        v21 = v60;
        v22 = v17;
        v23 = v17 & 0xC000000000000001;
        v24 = v17;
        do
        {
          if (v23)
          {
            MEMORY[0x21CECE0F0](v20, v22);
          }

          else
          {
          }

          v25 = sub_219BF3ED4();
          v27 = v26;

          v29 = *(v60 + 16);
          v28 = *(v60 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_21870B65C((v28 > 1), v29 + 1, 1);
          }

          ++v20;
          *(v60 + 16) = v29 + 1;
          v30 = v60 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v22 = v24;
        }

        while (v18 != v20);

        v1 = v54;
        v16 = v58;
LABEL_20:
        v1[58] = sub_218845F78(v21);

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v31 = v1[47];
        v32 = v1[42];
        v53 = v1[44];
        v55 = v1[43];
        v51 = v1[45];
        v52 = v1[40];
        v59 = v1[33];
        v1[59] = qword_280F616D8;
        sub_2186F20D4();
        v1[60] = v33;
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_219C0B8C0;
        v35 = MEMORY[0x277D83B88];
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = MEMORY[0x277D83B88];
        *(v34 + 64) = v36;
        *(v34 + 32) = v56;
        *(v34 + 96) = v35;
        *(v34 + 104) = v36;
        *(v34 + 72) = v16;
        v37 = MEMORY[0x277D837D0];
        v38 = sub_219BF5D54();
        v40 = v39;
        *(v34 + 136) = v37;
        v41 = sub_2186FC3BC();
        v1[61] = v41;
        *(v34 + 144) = v41;
        *(v34 + 112) = v38;
        *(v34 + 120) = v40;
        sub_219BF6214();
        sub_219BE5314();

        sub_219BEF134();
        sub_219BEF524();
        v57(v31, v51);
        sub_219BF4CE4();
        sub_219BF4CA4();
        v42 = *MEMORY[0x277D34400];
        v43 = sub_219BF43B4();
        v44 = *(v43 - 8);
        (*(v44 + 104))(v32, v42, v43);
        (*(v44 + 56))(v32, 0, 1, v43);
        v45 = sub_219BF4F64();
        (*(*(v45 - 8) + 56))(v52, 6, 6, v45);
        sub_218F6B224(v32, v53);
        sub_21994D504(v52, v53 + v55[5], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        v46 = (v53 + v55[6]);
        *v46 = 0;
        v46[1] = 0;
        sub_21994D5D4(v52, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        sub_21994D6C0(v32, &unk_280E8FE40, MEMORY[0x277D34408]);
        v47 = (v53 + v55[7]);
        *v47 = 0x7374726F7053796DLL;
        v47[1] = 0xE800000000000000;
        v48 = *(v59 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsConfiguringDataService + 8);
        ObjectType = swift_getObjectType();
        v1[62] = (*(v48 + 8))(v53, ObjectType, v48);
        v50 = swift_task_alloc();
        v1[63] = v50;
        *v50 = v1;
        v50[1] = sub_219945A9C;
        v19 = v1[39];

        return MEMORY[0x2821D23D8](v19);
      }
    }

    v21 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v9 = v1[1];
  v10 = MEMORY[0x277D84F90];

  return v9(v10);
}

uint64_t sub_219945A9C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_219946148;
  }

  else
  {
    v2 = sub_219945BCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_219945BCC()
{
  v56 = *(v0 + 464);
  v54 = *(v0 + 472);
  v55 = *(v0 + 456);
  v52 = *(v0 + 432);
  v1 = *(v0 + 376);
  v51 = *(v0 + 360);
  v53 = *(v0 + 248);
  v50 = sub_219BF4234();
  sub_219BEF134();
  v2 = sub_219BEF264();
  v3 = sub_219BEF264();
  sub_219BEF524();
  v4 = *(v0 + 232);
  v5 = sub_219BF0BC4();
  v6 = MEMORY[0x277D84FA0];
  v7 = sub_2194796A0(MEMORY[0x277D84FA0], v5);
  sub_219BEF524();
  v52(v1, v51);
  v8 = *(v0 + 521);
  *(v0 + 104) = v54;
  *(v0 + 112) = 0x7374726F7053796DLL;
  *(v0 + 120) = 0xE800000000000000;
  *(v0 + 128) = v55;
  *(v0 + 136) = v56;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 168);
  v10 = *(v0 + 120);
  v11 = *(v0 + 136);
  *(v0 + 64) = v9;
  *(v0 + 48) = v11;
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 184) = v6;
  *(v0 + 96) = v6;
  *(v0 + 32) = v10;
  if (v53 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v0 + 472);
  if (v12)
  {
    v57 = MEMORY[0x277D84F90];
    v14 = v13;
    result = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v57;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v17, *(v0 + 248));
        v18 = [swift_unknownObjectRetain() identifier];
        v19 = sub_219BF5414();
        v21 = v20;

        swift_unknownObjectRelease_n();
        v23 = *(v57 + 16);
        v22 = *(v57 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21870B65C((v22 > 1), v23 + 1, 1);
        }

        ++v17;
        *(v57 + 16) = v23 + 1;
        v24 = v57 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v17);
    }

    else
    {
      v42 = *(v0 + 248) + 32;
      do
      {
        v43 = [swift_unknownObjectRetain_n() identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        swift_unknownObjectRelease_n();
        v48 = *(v57 + 16);
        v47 = *(v57 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21870B65C((v47 > 1), v48 + 1, 1);
        }

        *(v57 + 16) = v48 + 1;
        v49 = v57 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v42 += 8;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v25 = v13;
    v16 = MEMORY[0x277D84F90];
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 288);
  v28 = *(v0 + 272);
  v29 = sub_218845F78(v16);

  sub_219BDBD24();
  v30 = sub_219AC4E80(v50, v0 + 16, v29, v27);

  (*(v26 + 8))(v27, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C09EC0;
  if (v50 >> 62)
  {
    v32 = sub_219BF7214();
  }

  else
  {
    v32 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D83B88];
  v34 = MEMORY[0x277D83C10];
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = v34;
  *(v31 + 32) = v32;
  if (v30 >> 62)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = *(v0 + 448);
  *(v31 + 96) = v33;
  *(v31 + 104) = v34;
  *(v31 + 72) = v35;
  sub_219BF6214();
  sub_219BE5314();

  v37 = *(v0 + 352);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  v40 = *(v0 + 296);
  if (v35 < v36)
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_218F6B454(v0 + 104);
  (*(v39 + 8))(v38, v40);
  sub_21994D5D4(v37, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v41 = *(v0 + 8);

  return v41(v30);
}

uint64_t sub_219946148()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[44];
  sub_219BF61F4();
  v4 = swift_allocObject();
  v0[24] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[25] = 0xE000000000000000;
  v0[28] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v2;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314();

  sub_21994D5D4(v3, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_219946310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_219515964;

  return sub_2199463B0(a3);
}

uint64_t sub_2199463B0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_219BE4F14();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_2186E4EF4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2[17] = swift_task_alloc();
  v5 = sub_219BDBD34();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21994659C, 0, 0);
}

uint64_t sub_21994659C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = (v0[10] + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsOnboardingManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21994D6C0(v0[17], &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_10:
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[14];
    type metadata accessor for MySportsTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    v28 = *(v26 + 8);
    v28(v25, v27);
    v29 = v0[4];
    v0[23] = v29;
    sub_219BEF134();
    sub_219BEF524();
    v28(v25, v27);
    v30 = v0[5];
    v0[24] = v30;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v31 = v0[10];
    v0[25] = qword_280F616D8;
    sub_2186F20D4();
    v0[26] = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09EC0;
    v34 = MEMORY[0x277D83B88];
    v35 = MEMORY[0x277D83C10];
    *(v33 + 56) = MEMORY[0x277D83B88];
    *(v33 + 64) = v35;
    *(v33 + 32) = v29;
    *(v33 + 96) = v34;
    *(v33 + 104) = v35;
    *(v33 + 72) = v30;
    sub_219BF6214();
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager), *(v31 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager + 24));
    v36 = off_282A790C0[0];
    type metadata accessor for SportsRecommendationManager();
    v0[27] = v36();
    v37 = swift_task_alloc();
    v0[28] = v37;
    *v37 = v0;
    v37[1] = sub_219946AF0;
    v38 = v0[13];

    return MEMORY[0x2821D23D8](v38);
  }

  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[15];
  v9 = v0[16];
  v39 = v0[14];
  v40 = v0[18];
  (*(v8 + 32))(v0[22], v0[17]);
  type metadata accessor for MySportsTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v10 + 8))(v9, v39);
  sub_219BDBBF4();
  sub_219BDBD24();
  v11 = sub_219BDBC24();
  v12 = *(v8 + 8);
  v12(v7, v40);
  if ((v11 & 1) == 0)
  {
    v23 = v0[22];
    v24 = v0[18];
    v12(v0[21], v24);
    v12(v23, v24);
    goto LABEL_10;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[18];
  sub_2186F20D4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v17 = sub_219BDBBA4();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_219BF6214();
  sub_219BE5314();

  v12(v14, v15);
  v12(v13, v15);

  v20 = v0[1];
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

uint64_t sub_219946AF0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_219946DAC;
  }

  else
  {

    v2 = sub_219946C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219946C0C()
{
  v1 = v0[23];
  sub_219BEF0B4();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BF6974();
  swift_unknownObjectRelease();
  v2 = sub_219BE4F04();

  if (*(v2 + 16) >= v1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];

    sub_219BF6214();
    v2 = MEMORY[0x277D84F90];
    sub_219BE5314();
    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_219946DAC()
{
  v1 = v0[29];

  sub_219BF61F4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = v0[1];
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_219946F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for MySportsTodayFeedGroupConfigData();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for SportsSectionCurationRequest();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219947000, 0, 0);
}

uint64_t sub_219947000()
{
  v1 = v0;
  v4 = v0 + 9;
  v3 = v0[9];
  v2 = v4[1];
  v5 = v1[6];
  v6 = *(v5 + 16);
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  swift_unknownObjectRetain();
  sub_219BEDD14();
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = v7[1];

  sub_21994D5D4(v2, type metadata accessor for MySportsTodayFeedGroupConfigData);
  v10 = *(v5 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BF1724();
  v11 = sub_219BF5AB4();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v8;
  v41 = v6;
  v39 = v9;
  if (v12)
  {
    v42 = MEMORY[0x277D84F90];
    v13 = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v13);
    }

    v38 = v10;
    v14 = 0;
    v15 = v42;
    v16 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v16);
      }

      else
      {
      }

      v17 = sub_219BF16A4();
      v19 = v18;

      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v14;
      *(v42 + 16) = v21 + 1;
      v22 = v42 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v16 = v11;
    }

    while (v12 != v14);

    v10 = v38;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v23 = sub_2194B1FF0(v15, v10);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v25 = v1[11];
  v24 = v1[12];
  v26 = v1[5];
  v27 = qword_280F616D8;
  v28 = MEMORY[0x277D30BC8];
  v1[13] = qword_280F616D8;
  v29 = *v28;
  v30 = *(v25 + 40);
  v31 = *MEMORY[0x277D32958];
  v32 = sub_219BEFBD4();
  (*(*(v32 - 8) + 104))(v24 + v30, v31, v32);
  v33 = v27;
  v34 = v29;
  v35 = sub_219A09690(v26);
  *v24 = v26;
  v24[1] = v41;
  v24[2] = v40;
  v24[3] = v39;
  v24[4] = v23;
  v24[5] = v33;
  v24[6] = v34;
  *(v24 + *(v25 + 44)) = v35;

  sub_219BF6214();
  sub_219BE5314();
  v1[14] = sub_21924C6E8(v24);
  v36 = swift_task_alloc();
  v1[15] = v36;
  *v36 = v1;
  v36[1] = sub_219947410;
  v13 = (v1 + 2);

  return MEMORY[0x2821D23D8](v13);
}

uint64_t sub_219947410()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_219947610;
  }

  else
  {

    v2 = sub_21994752C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21994752C()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_219BF6214();
  sub_219BE5314();
  sub_21994D5D4(v1, type metadata accessor for SportsSectionCurationRequest);

  v5 = v0[1];

  return v5(v2, v3, v4);
}

uint64_t sub_219947610()
{
  v1 = *(v0 + 96);

  sub_219BF6214();
  sub_219BE5314();
  sub_21994D5D4(v1, type metadata accessor for SportsSectionCurationRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2199476E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v45 = a4;
  v68 = a3;
  v46 = a2;
  v32[1] = a1;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v7;
  type metadata accessor for MySportsTodayFeedGroupKnobs();
  v37 = a5;

  v38 = a6;

  sub_219BEF134();
  sub_219BEF524();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v44 = v47;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v34 = qword_280F616D8;
  sub_218E59C4C(v46);

  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v42 = v47;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v33 = v47;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v41 = v47;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v40 = v47;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v39 = v47;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v15 = v47;
  v16 = v33;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v17 = v47;
  sub_219BF6214();
  v18 = v34;
  sub_219BE5314();
  v63[0] = v42;
  v63[1] = v16;
  v63[2] = v41;
  v63[3] = v40;
  v63[4] = v39;
  v63[5] = v15;
  v35 = v15;
  v63[6] = v17;
  v63[7] = v46;
  v19 = v45;
  v63[8] = v68;
  v63[9] = v45;
  v20 = v37;
  v21 = v38;
  v63[10] = v37;
  v63[11] = v38;
  v22 = v43;
  v63[12] = v43;
  v64 = v44;
  *&v65[3] = *&v67[3];
  *v65 = *v67;
  v66 = v18;
  sub_2197C99D8(v63, &v47);
  v23 = v36;
  v36 = sub_21924D498(v63);
  v25 = v24;
  if (v23)
  {
    v47 = v42;
    v48 = v16;
    v49 = v41;
    v50 = v40;
    v51 = v39;
    v52 = v35;
    v53 = v17;
    v54 = v46;
    v55 = v68;
    v56 = v19;
    v57 = v20;
    v58 = v21;
    v59 = v22;
    v60 = v44;
    *v61 = *v67;
    *&v61[3] = *&v67[3];
    v62 = v18;
    sub_2197C9A34(&v47);
    v26 = v63;
  }

  else
  {
    sub_2197C9A34(v63);
    sub_2186F20D4();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    v28 = sub_219458290(v36, v25);
    v30 = v29;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2186FC3BC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_219BF6214();
    sub_219BE5314();

    v47 = v42;
    v48 = v16;
    v49 = v41;
    v50 = v40;
    v51 = v39;
    v52 = v35;
    v53 = v17;
    v54 = v46;
    v55 = v68;
    v56 = v45;
    v57 = v37;
    v58 = v38;
    v59 = v22;
    v60 = v44;
    *v61 = *v67;
    *&v61[3] = *&v67[3];
    v62 = v18;
    v26 = &v47;
  }

  sub_2197C9A34(v26);
  return v36;
}

uint64_t sub_219947E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = MEMORY[0x277D83D88];
  sub_2186E4EF4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v8[10] = swift_task_alloc();
  sub_2186E4EF4(0, &qword_280E90150, MEMORY[0x277D33EC8], v9);
  v8[11] = swift_task_alloc();
  sub_2186E4EF4(0, &unk_280E91A10, sub_2189AE994, v9);
  v8[12] = swift_task_alloc();
  v10 = sub_219BF2AB4();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  sub_2186E4EF4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v9);
  v8[16] = swift_task_alloc();
  v11 = sub_219BF2034();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v12 = sub_219BE4F54();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = swift_task_alloc();
  v13 = sub_219BF3484();
  v8[23] = v13;
  v8[24] = *(v13 - 8);
  v8[25] = swift_task_alloc();
  v14 = sub_219BF3C84();
  v8[26] = v14;
  v8[27] = *(v14 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v15 = sub_219BF1934();
  v8[31] = v15;
  v8[32] = *(v15 - 8);
  v8[33] = swift_task_alloc();
  sub_21994D49C(0, &qword_280E8E960, type metadata accessor for SportsSection);
  v8[34] = v16;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v17 = sub_219BF3E84();
  v8[37] = v17;
  v8[38] = *(v17 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v18 = sub_219BF47F4();
  v8[43] = v18;
  v8[44] = *(v18 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219948338, 0, 0);
}

uint64_t sub_219948338()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[38];
    v135 = v0[34];
    v155 = MEMORY[0x277D84F90];
    sub_218C35610(0, v2, 0);
    v4 = v155;
    v5 = 0;
    v6 = *(type metadata accessor for SportsSection() - 8);
    v132 = *(v6 + 72);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v139 = v3;
    v144 = v2;
    do
    {
      v150 = v0[42];
      v9 = v0[35];
      v8 = v0[36];
      v10 = v0[9];
      v11 = v4;
      v12 = *(v135 + 48);
      sub_21994D504(v7, v8 + v12, type metadata accessor for SportsSection);
      *v9 = v5;
      v13 = *(v135 + 48);
      sub_21994D56C(v8 + v12, v9 + v13, type metadata accessor for SportsSection);
      v14 = v9 + v13;
      v4 = v11;
      sub_21994A478(v5, v14, v10, 0x2D6F726568, 0xE500000000000000, v150);
      sub_21994D440(v9, &qword_280E8E960, type metadata accessor for SportsSection);
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C35610(v15 > 1, v16 + 1, 1);
        v4 = v11;
      }

      v17 = v0[42];
      v18 = v0[37];
      ++v5;
      *(v4 + 16) = v16 + 1;
      (*(v139 + 32))(v4 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v16, v17, v18);
      v7 += v132;
    }

    while (v144 != v5);
  }

  v19 = v0;
  v20 = v0[5];
  sub_219BF47E4();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v0[38];
    v136 = v0[34];
    v23 = v0[5];
    v156 = MEMORY[0x277D84F90];
    sub_218C35610(0, v21, 0);
    v24 = v156;
    v25 = 0;
    v26 = *(type metadata accessor for SportsSection() - 8);
    v27 = v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v133 = *(v26 + 72);
    v140 = v22;
    v145 = v21;
    v0 = v19;
    do
    {
      v151 = v24;
      v28 = v0[40];
      v29 = v0;
      v30 = v0[36];
      v31 = v29[35];
      v32 = v29[9];
      v33 = *(v136 + 48);
      sub_21994D504(v27, v30 + v33, type metadata accessor for SportsSection);
      *v31 = v25;
      v34 = *(v136 + 48);
      sub_21994D56C(v30 + v33, v31 + v34, type metadata accessor for SportsSection);
      v35 = v32;
      v24 = v151;
      sub_21994A478(v25, v31 + v34, v35, 0x2D6E6F6974636573, 0xE800000000000000, v28);
      sub_21994D440(v31, &qword_280E8E960, type metadata accessor for SportsSection);
      v37 = *(v151 + 16);
      v36 = *(v151 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_218C35610(v36 > 1, v37 + 1, 1);
        v24 = v151;
      }

      v38 = v29[40];
      v39 = v29[37];
      ++v25;
      *(v24 + 16) = v37 + 1;
      (*(v140 + 32))(v24 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v37, v38, v39);
      v27 += v133;
      v0 = v29;
    }

    while (v145 != v25);
  }

  v40 = v0[33];
  v42 = v0[6];
  v41 = v0[7];
  v43 = v0[3];
  sub_219BF47E4();
  v44 = sub_21994A884(v40, v41, v43);
  if (v42 >> 62)
  {
    v45 = sub_219BF7214();
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = v44;
  if (v45)
  {
    v157 = MEMORY[0x277D84F90];
    v46 = sub_218C34A88(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v46, v47, v48, v49, v50);
    }

    v51 = v0[27];
    v52 = v0[24];
    if ((v42 & 0xC000000000000001) != 0)
    {
      v53 = 0;
      v152 = *MEMORY[0x277D33DF0];
      v146 = (v52 + 104);
      v141 = *MEMORY[0x277D34130];
      do
      {
        v54 = v45;
        v55 = v0[30];
        v57 = v0[25];
        v56 = v0[26];
        v58 = v0[23];
        v59 = MEMORY[0x21CECE0F0](v53, v0[6]);
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        *v57 = v60;
        (*v146)(v57, v152, v58);
        sub_219BF1AC4();
        (*(v51 + 104))(v55, v141, v56);
        v62 = *(v157 + 16);
        v61 = *(v157 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_218C34A88(v61 > 1, v62 + 1, 1);
        }

        v63 = v0[30];
        v64 = v0[26];
        ++v53;
        *(v157 + 16) = v62 + 1;
        (*(v51 + 32))(v157 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v62, v63, v64);
        v45 = v54;
      }

      while (v54 != v53);
    }

    else
    {
      v65 = (v0[6] + 32);
      v153 = *MEMORY[0x277D33DF0];
      v147 = (v52 + 104);
      v142 = *MEMORY[0x277D34130];
      do
      {
        v66 = v0[28];
        v68 = v0[25];
        v67 = v0[26];
        v69 = v0[23];
        v70 = *v65;
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        *v68 = v71;
        (*v147)(v68, v153, v69);

        sub_219BF1AC4();
        (*(v51 + 104))(v66, v142, v67);
        v73 = *(v157 + 16);
        v72 = *(v157 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_218C34A88(v72 > 1, v73 + 1, 1);
        }

        v74 = v0[28];
        v75 = v0[26];
        *(v157 + 16) = v73 + 1;
        (*(v51 + 32))(v157 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v73, v74, v75);
        ++v65;
        --v45;
      }

      while (v45);
    }
  }

  v76 = v0;
  v77 = v0[8];
  v78 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v78);
  sub_218F0BB90(v78);
  sub_219BF3E74();
  v79 = *(v77 + 16);
  if (v79)
  {
    v80 = v76[27];
    v81 = v76[21];
    v82 = v76[8];
    sub_218C34A88(0, v79, 0);
    v83 = *(v81 + 16);
    v81 += 16;
    v84 = v78;
    v85 = v82 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
    v143 = *(v81 + 56);
    v148 = v83;
    v137 = (v81 - 8);
    v134 = *MEMORY[0x277D34100];
    v86 = v76;
    do
    {
      v87 = v86[29];
      v88 = v86[26];
      v89 = v86[22];
      v90 = v86[20];
      v148(v89, v85, v90);
      v91 = sub_219BE4F44();
      (*v137)(v89, v90);
      *v87 = v91;
      (*(v80 + 104))(v87, v134, v88);
      v93 = *(v84 + 16);
      v92 = *(v84 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_218C34A88(v92 > 1, v93 + 1, 1);
      }

      v94 = v86[29];
      v95 = v86[26];
      *(v84 + 16) = v93 + 1;
      (*(v80 + 32))(v84 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v93, v94, v95);
      v85 += v143;
      --v79;
    }

    while (v79);
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    v86 = v76;
  }

  v124 = v86[46];
  v125 = v86[45];
  v96 = v86[44];
  v122 = v86[41];
  v123 = v86[43];
  v98 = v86[38];
  v97 = v86[39];
  v99 = v86[37];
  v126 = v86[16];
  v130 = v86[12];
  v131 = v86[11];
  v100 = v86[9];
  v138 = v86[10];
  v127 = v100;
  v128 = v86;
  sub_218F0B984(v78);
  sub_218F0BA7C(v78);
  sub_218F0BB90(v78);
  sub_219BF3E74();
  v149 = *(v100 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService + 32);
  v154 = *(v100 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v100 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService), v154);
  v101 = MEMORY[0x277D84560];
  sub_2186E4EF4(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v102 = *(v98 + 72);
  v103 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_219C09EC0;
  v105 = v104 + v103;
  v106 = *(v98 + 16);
  v106(v105, v122, v99);
  v106(v105 + v102, v97, v99);
  sub_2191ED654(v129);
  sub_2186E4EF4(0, &unk_280E8B780, MEMORY[0x277D34500], v101);
  v107 = *(v96 + 72);
  v108 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_219C09EC0;
  v110 = v109 + v108;
  v111 = *(v96 + 16);
  v111(v110, v124, v123);
  v111(v110 + v107, v125, v123);
  v112 = sub_219BEC004();
  (*(*(v112 - 8) + 56))(v126, 1, 1, v112);
  sub_219A95188(v78);
  sub_219A95188(v78);
  sub_219A951A0(v78);
  sub_219A951B8(v78);
  sub_219A952CC(v78);
  sub_219A952E4(v78);
  sub_219A953F8(v78);
  sub_219BF2024();
  v113 = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v115 = v114;
  v116 = *(v114 - 8);
  (*(v116 + 16))(v130, v127 + v113, v114);
  (*(v116 + 56))(v130, 0, 1, v115);
  v117 = sub_219BF35D4();
  (*(*(v117 - 8) + 56))(v131, 1, 1, v117);
  *(v128 + 400) = 18;
  sub_2197C9C7C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v118 = sub_219BF2774();
  (*(*(v118 - 8) + 56))(v138, 1, 1, v118);
  v119 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v119 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v120 = swift_task_alloc();
  v128[47] = v120;
  *v120 = v128;
  v120[1] = sub_2199491F4;
  v47 = v128[19];
  v48 = v128[15];
  v46 = v128[33];
  v50 = v149;
  v49 = v154;

  return MEMORY[0x2821921B8](v46, v47, v48, v49, v50);
}

uint64_t sub_2199491F4(uint64_t a1)
{
  v4 = *v2;
  v4[48] = v1;

  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = v4[15];
  v9 = v4[14];
  v10 = v4[13];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v11 = sub_2199495E8;
  }

  else
  {
    v4[49] = a1;
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v11 = sub_2199493F0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2199493F0()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[41];
  v14 = v0[46];
  v13 = v0[45];
  v4 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = *(v0[38] + 8);
  v8();
  (v8)(v3, v4);
  (*(v6 + 8))(v5, v7);
  v9 = *(v2 + 8);
  v9(v13, v1);
  v9(v14, v1);

  v10 = v0[1];
  v11 = v0[49];

  return v10(v11);
}

uint64_t sub_2199495E8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[41];
  v13 = v0[46];
  v12 = v0[45];
  v4 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = *(v0[38] + 8);
  v8();
  (v8)(v3, v4);
  (*(v6 + 8))(v5, v7);
  v9 = *(v2 + 8);
  v9(v12, v1);
  v9(v13, v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2199497DC()
{
  v1 = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config;
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21994D5D4(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs, type metadata accessor for MySportsTodayFeedGroupKnobs);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_mySportsTagService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_tagHighlightsService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsOnboardingManager);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219949978()
{
  sub_2199497DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MySportsTodayFeedGroupEmitter()
{
  result = qword_280EAFCE8;
  if (!qword_280EAFCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219949A24()
{
  sub_21994D634(319, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MySportsTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}