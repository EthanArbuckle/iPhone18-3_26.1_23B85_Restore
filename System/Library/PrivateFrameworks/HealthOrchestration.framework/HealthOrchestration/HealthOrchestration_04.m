uint64_t sub_22882E140()
{

  MEMORY[0x22AAC0340](46, 0xE100000000000000);
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v1 = v0[6];
    v2 = v0[7];
  }

  MEMORY[0x22AAC0340](v1, v2);

  MEMORY[0x22AAC0340](58, 0xE100000000000000);
  v3 = v0[17];
  os_unfair_lock_lock((v3 + 68));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 68));
  v6 = v4[2];
  v5 = v4[3];
  v8 = v4[4];
  v7 = v4[5];

  if (!v7)
  {

    v8 = v6;
    v7 = v5;
  }

  MEMORY[0x22AAC0340](v8, v7);

  sub_228837590();
  v9 = sub_22887F7F0();
  v11 = v10;

  MEMORY[0x22AAC0340](v9, v11);

  MEMORY[0x22AAC0340](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_22882E2F4()
{
  swift_unknownObjectRetain();
  sub_22887F3B0();
  sub_228837590();
  v0 = sub_22887F7F0();
  v2 = v1;

  MEMORY[0x22AAC0340](v0, v2);

  MEMORY[0x22AAC0340](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_22882E3D0(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[3];
  v16 = a2[2];
  v7 = a2[5];
  v17 = a2[4];

  MEMORY[0x22AAC0340](46, 0xE100000000000000);
  if (v5)
  {
    v2 = v5;
  }

  else
  {

    v4 = v3;
  }

  MEMORY[0x22AAC0340](v4, v2);

  sub_228837590();
  v8 = sub_22887F7F0();
  v10 = v9;

  MEMORY[0x22AAC0340](v8, v10);

  MEMORY[0x22AAC0340](34, 0xE100000000000000);

  MEMORY[0x22AAC0340](46, 0xE100000000000000);
  if (v7)
  {
    v6 = v7;
    v11 = v17;
  }

  else
  {

    v11 = v16;
  }

  MEMORY[0x22AAC0340](v11, v6);

  v12 = sub_22887F7F0();
  v14 = v13;

  MEMORY[0x22AAC0340](v12, v14);

  MEMORY[0x22AAC0340](34, 0xE100000000000000);

  return 0;
}

void *sub_22882E66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v117 = sub_22882F2D8(v6, a1);

  sub_22882F848(&v117);
  if (ObjectType)
  {
    v104 = ObjectType;
    goto LABEL_87;
  }

  v110 = a3;

  v7 = v117;
  v8 = *(v117 + 16);
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F98];
  if (v8)
  {
    v121 = MEMORY[0x277D84F90];
    sub_22887F960();
    v11 = (v7 + 4);
    do
    {
      sub_2287E766C(v11, &v117);
      v15 = v119;
      v16 = v120;
      __swift_project_boxed_opaque_existential_1(&v117, v119);
      (*(v16 + 40))(v115, v15, v16);
      v13 = v116;
      if (v116)
      {
        v12 = v115[2];
      }

      else
      {
        v12 = v115[0];
      }

      type metadata accessor for DebugSnapshot();
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v10;
      v14[5] = v10;
      __swift_destroy_boxed_opaque_existential_1(&v117);
      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v11 += 40;
      --v8;
    }

    while (v8);

    v17 = v121;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v109 = v17;
  v113 = a1;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = sub_228876C14(*(v18 + 16), 0);
    v21 = sub_22887CEE8(&v117, v20 + 4, v19, v18);
    swift_bridgeObjectRetain_n();
    sub_2287EF604();
    if (v21 != v19)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      v104 = ObjectType;
LABEL_87:

      __break(1u);
      return result;
    }

    v10 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F90];
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v117 = v20;
  sub_22882F760(&v117);

  v22 = v117;
  v23 = *(v117 + 16);
  if (v23)
  {
    v117 = v9;
    sub_22887F960();
    v24 = v22 + 7;
    v25 = v22 + 7;
    do
    {
      v30 = *v25;
      v25 += 4;
      v29 = v30;
      if (v30)
      {
        v26 = *(v24 - 1);
        v27 = v29;
      }

      else
      {
        v26 = *(v24 - 3);
        v27 = *(v24 - 2);
      }

      type metadata accessor for DebugSnapshot();
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v27;
      v28[4] = v10;
      v28[5] = v10;

      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v24 = v25;
      --v23;
    }

    while (v23);

    v31 = v117;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v108 = v31;
  v32 = v113;
  if ((*(v113 + 50) & 1) == 0)
  {

    v35 = sub_228875080(v34);
    v36 = *(v113 + 56);
    if (*(v36 + 16) <= v35[2] >> 3)
    {
      v117 = v35;
      sub_22887C11C(v36);
      v37 = v117;
    }

    else
    {
      v37 = sub_22887C280(v36, v35);
    }

    v38 = v37[2];
    v39 = MEMORY[0x277D84F90];
    if (!v38)
    {
      v40 = MEMORY[0x277D84F90];
LABEL_31:
      v117 = v40;
      sub_22882F760(&v117);

      v42 = v117;
      v43 = *(v117 + 16);
      if (v43)
      {
        v117 = v39;
        sub_2287F2304(0, v43, 0);
        v33 = v117;
        v44 = v42 + 7;
        v45 = v42 + 7;
        do
        {
          v47 = *v45;
          v45 += 4;
          v46 = v47;
          if (v47)
          {
            v48 = *(v44 - 1);
            v49 = v46;
          }

          else
          {
            v48 = *(v44 - 3);
            v49 = *(v44 - 2);
          }

          v117 = v33;
          v51 = v33[2];
          v50 = v33[3];

          if (v51 >= v50 >> 1)
          {
            sub_2287F2304((v50 > 1), v51 + 1, 1);
            v33 = v117;
          }

          v33[2] = v51 + 1;
          v52 = &v33[2 * v51];
          v52[4] = v48;
          v52[5] = v49;
          v44 = v45;
          --v43;
        }

        while (v43);

        v32 = v113;
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      goto LABEL_41;
    }

    v40 = sub_228876C14(v37[2], 0);
    v41 = sub_22887D068(&v117, v40 + 4, v38, v37);
    ObjectType = v117;

    sub_2287EF604();
    if (v41 == v38)
    {
      v32 = v113;
      goto LABEL_31;
    }

    goto LABEL_85;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_41:
  v53 = *(a2 + 16);
  ObjectType = swift_getObjectType();
  v117 = v53;
  swift_unknownObjectRetain();
  v54 = sub_22887F3B0();
  v56 = v55;
  sub_228836090(0, &qword_2813CF200, &qword_2813CF638);
  inited = swift_initStackObject();
  v58 = inited;
  *(inited + 32) = 0x646573756150;
  *(inited + 16) = xmmword_228883DF0;
  v59 = 0xE600000000000000;
  *(inited + 40) = 0xE600000000000000;
  v60 = 28526;
  if (*(v32 + 49))
  {
    v60 = 5457241;
  }

  v61 = 0xE200000000000000;
  if (*(v32 + 49))
  {
    v61 = 0xE300000000000000;
  }

  *(inited + 48) = v60;
  *(inited + 56) = v61;
  *(inited + 64) = 0x6574617453;
  *(inited + 72) = 0xE500000000000000;
  v106 = v56;
  v107 = v54;
  if (*(v32 + 48))
  {
    if (*(v32 + 48) == 1)
    {
      v62 = 0x657669746341;
    }

    else
    {
      v59 = 0xE500000000000000;
      v62 = 0x6465646E45;
    }
  }

  else
  {
    v59 = 0xEB00000000646574;
    v62 = 0x7261745320746F4ELL;
  }

  v63 = 0;
  v64 = 0;
  *(inited + 80) = v62;
  *(inited + 88) = v59;
  *(inited + 96) = 0x6169726574697243;
  *(inited + 104) = 0xE800000000000000;
  v117 = 0;
  v118 = 0xE000000000000000;
  v65 = *(v32 + 24);
  v66 = 1 << *(v65 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v65 + 64);
  v69 = (v66 + 63) >> 6;
  while (v68)
  {
LABEL_58:
    v71 = *(*(v65 + 56) + ((v63 << 9) | (8 * __clz(__rbit64(v68)))));
    if (v71 >> 62)
    {
      v72 = sub_22887FA20();
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 &= v68 - 1;
    v73 = __OFADD__(v64, v72);
    v64 += v72;
    if (v73)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  while (1)
  {
    v70 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v70 >= v69)
    {
      break;
    }

    v68 = *(v65 + 64 + 8 * v70);
    ++v63;
    if (v68)
    {
      v63 = v70;
      goto LABEL_58;
    }
  }

  v115[0] = v64;
  v74 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v74);

  v75 = v118;
  *(v58 + 112) = v117;
  *(v58 + 120) = v75;
  v105 = sub_2287E97C0(v58);
  swift_setDeallocating();
  sub_228837518(0, &qword_2813CF638);
  swift_arrayDestroy();
  sub_2287E70A8(0, &qword_27D851AE8, 255, sub_22880F3F0, MEMORY[0x277D84560]);
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_228881910;
  *(v76 + 32) = 0x7372656E6E616C50;
  v112 = v76;
  *(v76 + 40) = 0xE800000000000000;
  v77 = *(v113 + 16);
  v78 = *(v77 + 16);
  if (!v78)
  {
    goto LABEL_67;
  }

  v79 = sub_228876B6C(*(v77 + 16), 0);
  v114 = sub_22887D1E8(&v117, v79 + 4, v78, v77);
  swift_bridgeObjectRetain_n();
  sub_2287EF604();
  v80 = MEMORY[0x277D84F98];
  if (v114 != v78)
  {
    __break(1u);
LABEL_67:

    v79 = MEMORY[0x277D84F90];
    v80 = MEMORY[0x277D84F98];
  }

  v117 = v79;
  sub_22882F6DC(&v117, sub_228831FE0, sub_228831208);

  v81 = v117;
  v82 = *(v117 + 16);
  if (v82)
  {
    v115[0] = MEMORY[0x277D84F90];
    sub_22887F960();
    v83 = v81 + 9;
    do
    {
      v90 = *(v83 - 5);
      v91 = *(v83 - 4);
      v92 = *(v83 - 3);
      v93 = *(v83 - 2);
      v84 = *(v83 - 1);
      v94 = *v83;
      v117 = 60;
      v118 = 0xE100000000000000;

      MEMORY[0x22AAC0340](v90, v91);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v94)
      {
        v85 = v94;
      }

      else
      {

        v84 = v92;
        v85 = v93;
      }

      v83 += 6;

      MEMORY[0x22AAC0340](v84, v85);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);

      v86 = v117;
      v87 = v118;
      type metadata accessor for DebugSnapshot();
      v88 = swift_allocObject();
      v88[2] = v86;
      v88[3] = v87;
      v89 = MEMORY[0x277D84F98];
      v88[4] = MEMORY[0x277D84F98];
      v88[5] = v89;
      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      --v82;
    }

    while (v82);

    v95 = v115[0];
    v80 = MEMORY[0x277D84F98];
  }

  else
  {

    v95 = MEMORY[0x277D84F90];
  }

  *(v112 + 48) = v95;
  *(v112 + 56) = 0xD000000000000016;
  *(v112 + 64) = 0x8000000228888EC0;
  *(v112 + 72) = v109;
  strcpy((v112 + 80), "Input Signals");
  *(v112 + 94) = -4864;
  *(v112 + 96) = v108;
  *(v112 + 104) = 0xD000000000000025;
  *(v112 + 112) = 0x8000000228888EE0;
  v96 = v33[2];
  if (v96)
  {
    v117 = MEMORY[0x277D84F90];
    sub_22887F960();
    type metadata accessor for DebugSnapshot();
    v97 = v33 + 5;
    do
    {
      v99 = *(v97 - 1);
      v98 = *v97;
      v100 = swift_allocObject();
      v100[2] = v99;
      v100[3] = v98;
      v100[4] = v80;
      v100[5] = v80;

      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v97 += 2;
      --v96;
    }

    while (v96);

    v101 = v117;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  *(v112 + 120) = v101;
  v102 = sub_2288093F4(v112);
  swift_setDeallocating();
  sub_22880F3F0();
  swift_arrayDestroy();
  type metadata accessor for DebugSnapshot();
  result = swift_allocObject();
  result[2] = v107;
  result[3] = v106;
  result[4] = v105;
  result[5] = v102;
  *v110 = result;
  return result;
}

uint64_t sub_22882F21C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 40))(v9, v4, v5);
  if (v2 == v9[0] && v3 == v9[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22887FBF0();
  }

  return v7 & 1;
}

uint64_t sub_22882F2D8(uint64_t result, uint64_t a2)
{
  v18 = a2;
  v19 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  for (i = MEMORY[0x277D84F90]; v6; result = sub_2287EC014(v20, i + 40 * v16 + 32))
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_2287E766C(*(v19 + 56) + 40 * (v10 | (v2 << 6)), v20);
      v11 = sub_2287EC014(v20, v21);
      v12 = *(v18 + 40);
      MEMORY[0x28223BE20](v11);
      v17[2] = v21;

      v13 = sub_2288285E4(sub_228837570, v17, v12);

      if ((v13 & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v21);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    sub_2287EC014(v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22881DA04(0, *(i + 16) + 1, 1);
      i = v22;
    }

    v16 = *(i + 16);
    v15 = *(i + 24);
    if (v16 >= v15 >> 1)
    {
      sub_22881DA04((v15 > 1), v16 + 1, 1);
      i = v22;
    }

    *(i + 16) = v16 + 1;
  }

LABEL_6:
  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return i;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22882F4DC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 40))(v12, v3, v4);
  v6 = v12[0];
  v5 = v12[1];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 40))(v11, v7, v8);
  if (v6 == v11[0] && v5 == v11[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_22887FBF0();
  }

  return v9 & 1;
}

uint64_t sub_22882F5EC()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock(v1 + 26);
  sub_228837810(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 26);
  return v3;
}

void sub_22882F664()
{
  if (!qword_27D8522E0)
  {
    sub_228835C1C(255, &qword_27D8522E8, &qword_2813CF810);
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8522E0);
    }
  }
}

uint64_t sub_22882F6DC(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_228863C64(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_228830C64(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_22882F760(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_228863C78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228830D6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22882F7CC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_228863F94(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_228830E64(v6);
  return sub_22887F940();
}

uint64_t sub_22882F848(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_228863C8C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_228830F68(v5);
  *a1 = v2;
  return result;
}

char *sub_22882F8B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287E70A8(0, &qword_2813CF1D8, 255, sub_2288360EC, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22882F9E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_27D852318, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22882FB04(char *result, int64_t a2, char a3, char *a4)
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
    sub_228836090(0, &qword_27D852308, &qword_27D852310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22882FC1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_228836090(0, &qword_27D8522F8, &qword_27D852300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_228837518(0, &qword_27D852300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22882FDA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2288374A0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_228835C1C(0, &qword_2813CF650, &unk_2813CF800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22882FEDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF1E8, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_22882FFF8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2287E70A8(0, &qword_27D852330, 255, MEMORY[0x277CC9260], MEMORY[0x277D84560]);
  v10 = *(sub_22887F060() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22887F060() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_228830214(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF220, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228830338(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_27D852320, &type metadata for RequestedWorkExecutor.RequestedWork, MEMORY[0x277D84560]);
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

char *sub_228830470(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF258, &type metadata for InputSignalObservationManager.InputSignalSetupRecord, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2288305CC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
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

  if (v13)
  {
    sub_228835EFC(0, a5, a6, a7, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_228830738(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF260, &type metadata for InputSignalObservationManager.SignalDependent, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22883086C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2287E70A8(0, &qword_2813CF280, 255, sub_22880A4D4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22880A4D4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2288309D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF228, &type metadata for WorkQueue.FetchRequest, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228830B58(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF1C8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_228830C64(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22887FB90();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_22887F500();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_228830D6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22887F500();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2288327B4(v7, v8, a1, v4);
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
    return sub_228831368(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228830E64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
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
        type metadata accessor for WorkCriteriaRecord();
        v6 = sub_22887F500();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_228832D90(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_228831438(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228830F68(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2287E670C(0, &qword_2813D1578);
        v5 = sub_22887F500();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2288334DC(v7, v8, a1, v4);
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
    return sub_228831584(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228831078(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 48 * a3 - 48);
    v8 = result - a3;
LABEL_4:
    v9 = (v6 + 48 * v5);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v25 = v8;
    v28 = v7;
    while (1)
    {
      v27[0] = v10;
      v27[1] = v11;
      v27[2] = v12;
      v27[3] = v13;
      v27[4] = v14;
      v27[5] = v15;
      v16 = v7[1];
      v17 = v7[2];
      v18 = v7[3];
      v20 = v7[4];
      v19 = v7[5];
      v26[0] = *v7;
      v26[1] = v16;
      v26[2] = v17;
      v26[3] = v18;
      v26[4] = v20;
      v26[5] = v19;

      v21 = sub_22882E3D0(v27, v26);

      if (v4)
      {
        break;
      }

      if (v21)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v7[6];
        v11 = v7[7];
        v12 = v7[8];
        v13 = v7[9];
        v14 = v7[10];
        v15 = v7[11];
        v22 = *(v7 + 1);
        *(v7 + 3) = *v7;
        *(v7 + 4) = v22;
        *(v7 + 5) = *(v7 + 2);
        *v7 = v10;
        v7[1] = v11;
        v7[2] = v12;
        v7[3] = v13;
        v7[4] = v14;
        v7[5] = v15;
        v7 -= 6;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v28 + 6;
      v8 = v25 - 1;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_228831208(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = *a4 + 48 * a3 - 48;
    v5 = result - a3;
LABEL_5:
    v21 = v4;
    v22 = a3;
    v6 = (v24 + 48 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v20 = v5;
    while (1)
    {
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v7 != *v4 || v8 != *(v4 + 8))
      {
        v23 = *(v4 + 16);
        result = sub_22887FBF0();
        if (result)
        {
          goto LABEL_17;
        }

        result = sub_22887FBF0();
        v11 = v23;
        if (result)
        {
          goto LABEL_4;
        }
      }

      v14 = v9 == v11 && v10 == v12;
      if (v14 || (result = sub_22887FBF0(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v22 + 1;
        v4 = v21 + 48;
        v5 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_17:
      if (!v24)
      {
        __break(1u);
        return result;
      }

      v9 = *(v4 + 64);
      v10 = *(v4 + 72);
      v15 = *(v4 + 80);
      v16 = *v4;
      v17 = *(v4 + 32);
      *(v4 + 64) = *(v4 + 16);
      *(v4 + 80) = v17;
      v7 = *(v4 + 48);
      v8 = *(v4 + 56);
      *v4 = v7;
      *(v4 + 8) = v8;
      *(v4 + 16) = v9;
      *(v4 + 24) = v10;
      *(v4 + 32) = v15;
      *(v4 + 48) = v16;
      v4 -= 48;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_228831368(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22887FBF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228831438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v17 = v7;
    v18 = v6;
    while (1)
    {

      v8 = sub_22882E140();
      v10 = v9;
      if (v8 == sub_22882E140() && v10 == v11)
      {

LABEL_5:
        ++v4;
        v6 = v18 + 1;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_22887FBF0();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      *v6 = v6[1];
      v6[1] = v14;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228831584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = v27 + 40 * a3;
    v5 = result - a3;
LABEL_6:
    v17 = v4;
    v18 = a3;
    v16 = v5;
    while (1)
    {
      sub_2287E766C(v4, &v24);
      sub_2287E766C(v4 - 40, v21);
      v6 = v25;
      v7 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      (*(v7 + 40))(v20, v6, v7);
      v9 = v20[0];
      v8 = v20[1];
      v10 = v22;
      v11 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v11 + 40))(v19, v10, v11);
      if (v9 == v19[0] && v8 == v19[1])
      {

        __swift_destroy_boxed_opaque_existential_1(v21);
        result = __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_5:
        a3 = v18 + 1;
        v4 = v17 + 40;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_22887FBF0();

      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(&v24);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      sub_2287EC014(v4, &v24);
      v13 = *(v4 - 24);
      *v4 = *(v4 - 40);
      *(v4 + 16) = v13;
      *(v4 + 32) = *(v4 - 8);
      result = sub_2287EC014(&v24, v4 - 40);
      v4 -= 40;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228831778(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v134 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v8 = *v134;
    if (*v134)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_94;
    }

    goto LABEL_132;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      v29 = (v8 + 1);
    }

    else
    {
      v136 = v7;
      v11 = v8;
      v12 = *v6;
      v13 = (*v6 + 48 * v10);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v144 = *v13;
      v145 = v14;
      v146 = v15;
      v147 = v16;
      v148 = v17;
      v149 = v18;
      v19 = (v12 + 48 * v11);
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v24 = v19[4];
      v23 = v19[5];
      v138 = *v19;
      v139 = v20;
      v140 = v21;
      v141 = v22;
      v142 = v24;
      v143 = v23;

      v25 = sub_22882E3D0(&v144, &v138);
      if (v5)
      {
LABEL_103:
      }

      v26 = v25;

      v27 = v11 + 2;
      v129 = v11;
      v131 = 48 * v11;
      v28 = (v12 + 48 * v11 + 72);
      v6 = a3;
      while (1)
      {
        v29 = v136;
        if (v136 == v27)
        {
          break;
        }

        v30 = v28[4];
        v31 = v28[5];
        v32 = v28[6];
        v33 = v28[7];
        v34 = v28[8];
        v144 = v28[3];
        v145 = v30;
        v146 = v31;
        v147 = v32;
        v148 = v33;
        v149 = v34;
        v35 = *(v28 - 2);
        v36 = *(v28 - 1);
        v37 = *v28;
        v39 = v28[1];
        v38 = v28[2];
        v138 = *(v28 - 3);
        v139 = v35;
        v140 = v36;
        v141 = v37;
        v142 = v39;
        v143 = v38;

        LODWORD(v32) = sub_22882E3D0(&v144, &v138);

        ++v27;
        v28 += 6;
        v6 = a3;
        if ((v26 ^ v32))
        {
          v29 = (v27 - 1);
          break;
        }
      }

      v8 = v129;
      if (v26)
      {
        if (v29 < v129)
        {
          goto LABEL_126;
        }

        if (v129 < v29)
        {
          v40 = 48 * v29 - 24;
          v41 = v131 + 32;
          v42 = v29;
          v43 = v129;
          do
          {
            if (v43 != --v42)
            {
              v52 = *v6;
              if (!*v6)
              {
                goto LABEL_130;
              }

              v44 = (v52 + v41);
              v45 = *(v52 + v41 - 32);
              v46 = v52 + v40;
              v47 = *(v44 - 2);
              v48 = *(v44 - 1);
              v49 = *v44;
              v50 = *(v46 + 8);
              v51 = *(v46 - 8);
              *(v44 - 2) = *(v46 - 24);
              *(v44 - 1) = v51;
              *v44 = v50;
              *(v46 - 24) = v45;
              *(v46 - 8) = v47;
              *v46 = v48;
              *(v46 + 8) = v49;
            }

            ++v43;
            v40 -= 48;
            v41 += 48;
          }

          while (v43 < v42);
        }
      }
    }

    v53 = v6[1];
    if (v29 >= v53)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v29, v8))
    {
      goto LABEL_122;
    }

    if (v29 - v8 >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (&v8[a4] >= v53)
    {
      v54 = v6[1];
    }

    else
    {
      v54 = &v8[a4];
    }

    if (v54 < v8)
    {
      goto LABEL_125;
    }

    if (v29 == v54)
    {
LABEL_29:
      v55 = v29;
      if (v29 < v8)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v102 = *v6;
      v103 = (*v6 + 48 * v29 - 48);
      v130 = v8;
      v133 = v54;
      v104 = &v8[-v29];
      do
      {
        v137 = v29;
        v105 = (v102 + 48 * v29);
        v106 = *v105;
        v107 = v105[1];
        v108 = v105[2];
        v109 = v105[3];
        v110 = v105[4];
        v111 = v105[5];
        v126 = v104;
        v127 = v103;
        while (1)
        {
          v112 = v102;
          v144 = v106;
          v145 = v107;
          v146 = v108;
          v147 = v109;
          v148 = v110;
          v149 = v111;
          v113 = v103[1];
          v114 = v103[2];
          v115 = v103[3];
          v117 = v103[4];
          v116 = v103[5];
          v138 = *v103;
          v139 = v113;
          v140 = v114;
          v141 = v115;
          v142 = v117;
          v143 = v116;

          v118 = sub_22882E3D0(&v144, &v138);
          if (v5)
          {
            goto LABEL_103;
          }

          v119 = v118;

          if ((v119 & 1) == 0)
          {
            break;
          }

          if (!v112)
          {
            goto LABEL_128;
          }

          v102 = v112;
          v106 = v103[6];
          v107 = v103[7];
          v108 = v103[8];
          v109 = v103[9];
          v110 = v103[10];
          v111 = v103[11];
          v120 = *(v103 + 1);
          *(v103 + 3) = *v103;
          *(v103 + 4) = v120;
          *(v103 + 5) = *(v103 + 2);
          *v103 = v106;
          v103[1] = v107;
          v103[2] = v108;
          v103[3] = v109;
          v103[4] = v110;
          v103[5] = v111;
          v103 -= 6;
          if (__CFADD__(v104++, 1))
          {
            goto LABEL_88;
          }
        }

        v102 = v112;
LABEL_88:
        v29 = v137 + 1;
        v103 = v127 + 6;
        v104 = v126 - 1;
        v55 = v133;
      }

      while ((v137 + 1) != v133);
      v6 = a3;
      v8 = v130;
      if (v133 < v130)
      {
        goto LABEL_121;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v57 = *(v9 + 2);
    v56 = *(v9 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_22882F8B4((v56 > 1), v57 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v58;
    v59 = &v9[16 * v57];
    *(v59 + 4) = v8;
    *(v59 + 5) = v55;
    v60 = *v134;
    if (!*v134)
    {
      goto LABEL_131;
    }

    v132 = v55;
    if (v57)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v132;
    if (v132 >= v7)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v61 = v58 - 1;
    if (v58 >= 4)
    {
      v66 = &v9[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v9[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_120;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v58 == 3)
    {
      v62 = *(v9 + 4);
      v63 = *(v9 + 5);
      v72 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      v65 = v72;
LABEL_49:
      if (v65)
      {
        goto LABEL_110;
      }

      v78 = &v9[16 * v58];
      v80 = *v78;
      v79 = *(v78 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_113;
      }

      v84 = &v9[16 * v61 + 32];
      v86 = *v84;
      v85 = *(v84 + 1);
      v72 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v72)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v82, v87))
      {
        goto LABEL_117;
      }

      if (v82 + v87 >= v64)
      {
        if (v64 < v87)
        {
          v61 = v58 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v88 = &v9[16 * v58];
    v90 = *v88;
    v89 = *(v88 + 1);
    v72 = __OFSUB__(v89, v90);
    v82 = v89 - v90;
    v83 = v72;
LABEL_63:
    if (v83)
    {
      goto LABEL_112;
    }

    v91 = &v9[16 * v61];
    v93 = *(v91 + 4);
    v92 = *(v91 + 5);
    v72 = __OFSUB__(v92, v93);
    v94 = v92 - v93;
    if (v72)
    {
      goto LABEL_115;
    }

    if (v94 < v82)
    {
      goto LABEL_3;
    }

LABEL_70:
    v99 = v61 - 1;
    if (v61 - 1 >= v58)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_127;
    }

    v8 = *&v9[16 * v99 + 32];
    v100 = *&v9[16 * v61 + 40];
    sub_228833D5C((*v6 + 48 * v8), (*v6 + 48 * *&v9[16 * v61 + 32]), (*v6 + 48 * v100), v60);
    if (v5)
    {
    }

    if (v100 < v8)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_228863AEC(v9);
    }

    if (v99 >= *(v9 + 2))
    {
      goto LABEL_107;
    }

    v101 = &v9[16 * v99];
    *(v101 + 4) = v8;
    *(v101 + 5) = v100;
    v150 = v9;
    result = sub_228863A60(v61);
    v9 = v150;
    v58 = *(v150 + 2);
    if (v58 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
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
  result = sub_228863AEC(v9);
  v9 = result;
LABEL_94:
  v150 = v9;
  v122 = *(v9 + 2);
  if (v122 < 2)
  {
  }

  while (*v6)
  {
    v123 = *&v9[16 * v122];
    v124 = *&v9[16 * v122 + 24];
    sub_228833D5C((*v6 + 48 * v123), (*v6 + 48 * *&v9[16 * v122 + 16]), (*v6 + 48 * v124), v8);
    if (v5)
    {
    }

    if (v124 < v123)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_228863AEC(v9);
    }

    if (v122 - 2 >= *(v9 + 2))
    {
      goto LABEL_119;
    }

    v125 = &v9[16 * v122];
    *v125 = v123;
    *(v125 + 1) = v124;
    v150 = v9;
    result = sub_228863A60(v122 - 1);
    v9 = v150;
    v122 = *(v150 + 2);
    if (v122 <= 1)
    {
    }
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_228831FE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v122 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_115:
    v5 = v10;
    v10 = *v122;
    if (!*v122)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_147:
      result = sub_228863AEC(v5);
      v5 = result;
    }

    v143 = v5;
    v113 = *(v5 + 16);
    if (v113 >= 2)
    {
      while (1)
      {
        v114 = *v7;
        if (!*v7)
        {
          goto LABEL_151;
        }

        v7 = (v113 - 1);
        v115 = *(v5 + 16 * v113);
        v116 = *(v5 + 16 * (v113 - 1) + 40);
        sub_2288342A0((v114 + 48 * v115), (v114 + 48 * *(v5 + 16 * (v113 - 1) + 32)), (v114 + 48 * v116), v10);
        if (v6)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_228863AEC(v5);
        }

        if (v113 - 2 >= *(v5 + 16))
        {
          goto LABEL_141;
        }

        v117 = (v5 + 16 * v113);
        *v117 = v115;
        v117[1] = v116;
        v143 = v5;
        result = sub_228863A60(v7);
        v5 = v143;
        v113 = *(v143 + 16);
        v7 = a3;
        if (v113 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v125 = v10;
    if (v9 + 1 >= v8)
    {
      goto LABEL_30;
    }

    v13 = *v7;
    v14 = *v7 + 48 * v12;
    v131 = v8;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *v7 + 48 * v11;
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v139 = *v14;
    v140 = v15;
    v141 = v16;
    v142 = *(v14 + 32);
    v135 = v18;
    v136 = v19;
    v137 = v20;
    v138 = *(v17 + 32);
    result = _s19HealthOrchestration24ScopedExecutorIdentifierV1loiySbAC_ACtFZ_0(&v139, &v135);
    v21 = v131;
    v133 = result;
    v22 = v11 + 2;
    if (v11 + 2 < v131)
    {
      v119 = v6;
      v23 = (v13 + 48 * v11 + 64);
      while (1)
      {
        v24 = v22;
        v25 = v23;
        v27 = v23[4];
        v26 = v23[5];
        v28 = v23[6];
        v23 += 6;
        v5 = v28;
        v29 = v25[7];
        v31 = *v25;
        v30 = v25[1];
        if (v27 != *(v25 - 2) || v26 != *(v25 - 1))
        {
          v128 = v24;
          result = sub_22887FBF0();
          if (result)
          {
            v10 = v125;
            v24 = v128;
            v21 = v131;
            if ((v133 & 1) == 0)
            {
              v12 = v128;
              v6 = v119;
              v7 = a3;
              goto LABEL_30;
            }

            goto LABEL_8;
          }

          result = sub_22887FBF0();
          v24 = v128;
          v21 = v131;
          if (result)
          {
            goto LABEL_7;
          }
        }

        if (v5 == v31 && v29 == v30)
        {
LABEL_7:
          v10 = v125;
          if (v133)
          {
            v35 = v24 - 1;
            v6 = v119;
            v7 = a3;
            if (v24 < v11)
            {
              goto LABEL_144;
            }

LABEL_28:
            if (v11 <= v35)
            {
              v54 = 48 * v24 - 24;
              v55 = 48 * v11 + 32;
              v56 = v24;
              v57 = v11;
              do
              {
                if (v57 != --v56)
                {
                  v58 = *v7;
                  if (!*v7)
                  {
                    goto LABEL_150;
                  }

                  v59 = (v58 + v55);
                  v60 = *(v58 + v55 - 32);
                  v61 = v58 + v54;
                  v62 = *(v59 - 2);
                  v63 = *(v59 - 1);
                  v64 = *v59;
                  v65 = *(v61 + 8);
                  v66 = *(v61 - 8);
                  *(v59 - 2) = *(v61 - 24);
                  *(v59 - 1) = v66;
                  *v59 = v65;
                  *(v61 - 24) = v60;
                  *(v61 - 8) = v62;
                  *v61 = v63;
                  *(v61 + 8) = v64;
                }

                ++v57;
                v54 -= 48;
                v55 += 48;
              }

              while (v57 < v56);
            }

            v12 = v24;
            goto LABEL_30;
          }
        }

        else
        {
          v34 = v24;
          result = sub_22887FBF0();
          v21 = v131;
          v24 = v34;
          v10 = v125;
          if ((v133 ^ result))
          {
            v12 = v34 - 1;
LABEL_25:
            v6 = v119;
            v7 = a3;
            goto LABEL_26;
          }
        }

LABEL_8:
        v22 = v24 + 1;
        if (v21 == v24 + 1)
        {
          v12 = v24;
          v24 = v21;
          goto LABEL_25;
        }
      }
    }

    v24 = v11 + 2;
LABEL_26:
    v35 = v12;
    v12 = v24;
    if (v133)
    {
      if (v24 < v11)
      {
        goto LABEL_144;
      }

      goto LABEL_28;
    }

LABEL_30:
    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_143;
      }

      if (v12 - v11 < a4)
      {
        v37 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_145;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_62:
    if (v12 < v11)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v68 = *(v10 + 2);
    v67 = *(v10 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_22882F8B4((v67 > 1), v68 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v69;
    v70 = &v10[16 * v68];
    *(v70 + 4) = v11;
    *(v70 + 5) = v12;
    v71 = *v122;
    if (!*v122)
    {
      goto LABEL_152;
    }

    v130 = v12;
    if (v68)
    {
      while (1)
      {
        v5 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v10 + 4);
          v73 = *(v10 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_82:
          if (v75)
          {
            goto LABEL_131;
          }

          v88 = &v10[16 * v69];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_134;
          }

          v94 = &v10[16 * v5 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_138;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v5 = v69 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v98 = &v10[16 * v69];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_96:
        if (v93)
        {
          goto LABEL_133;
        }

        v101 = &v10[16 * v5];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_136;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_103:
        v109 = v5 - 1;
        if (v5 - 1 >= v69)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*v7)
        {
          goto LABEL_149;
        }

        v110 = *&v10[16 * v109 + 32];
        v111 = *&v10[16 * v5 + 40];
        sub_2288342A0((*v7 + 48 * v110), (*v7 + 48 * *&v10[16 * v5 + 32]), (*v7 + 48 * v111), v71);
        if (v6)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_228863AEC(v10);
        }

        if (v109 >= *(v10 + 2))
        {
          goto LABEL_128;
        }

        v112 = &v10[16 * v109];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v143 = v10;
        result = sub_228863A60(v5);
        v10 = v143;
        v69 = *(v143 + 16);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v10[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_129;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_130;
      }

      v83 = &v10[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_132;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_135;
      }

      if (v87 >= v79)
      {
        v105 = &v10[16 * v5 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_139;
        }

        if (v74 < v108)
        {
          v5 = v69 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v130;
    if (v130 >= v8)
    {
      goto LABEL_115;
    }
  }

  v118 = v11;
  v120 = v6;
  v134 = *v7;
  v38 = *v7 + 48 * v12 - 48;
  v39 = v11 - v12;
  v124 = v37;
LABEL_40:
  v127 = v38;
  v129 = v12;
  v40 = (v134 + 48 * v12);
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v5 = v40[3];
  v126 = v39;
  v44 = v39;
  while (1)
  {
    v46 = *(v38 + 16);
    v45 = *(v38 + 24);
    if (v41 != *v38 || v42 != *(v38 + 8))
    {
      v132 = *(v38 + 24);
      result = sub_22887FBF0();
      if (result)
      {
        goto LABEL_52;
      }

      v48 = sub_22887FBF0();
      v45 = v132;
      if (v48)
      {
        goto LABEL_39;
      }
    }

    v49 = v43 == v46 && v5 == v45;
    if (v49 || (result = sub_22887FBF0(), (result & 1) == 0))
    {
LABEL_39:
      ++v12;
      v38 = v127 + 48;
      v39 = v126 - 1;
      if (v129 + 1 != v124)
      {
        goto LABEL_40;
      }

      v12 = v124;
      v11 = v118;
      v6 = v120;
      v7 = a3;
      v10 = v125;
      goto LABEL_62;
    }

LABEL_52:
    if (!v134)
    {
      break;
    }

    v43 = *(v38 + 64);
    v5 = *(v38 + 72);
    v50 = *(v38 + 80);
    v51 = *v38;
    v52 = *(v38 + 32);
    *(v38 + 64) = *(v38 + 16);
    *(v38 + 80) = v52;
    v41 = *(v38 + 48);
    v42 = *(v38 + 56);
    *v38 = v41;
    *(v38 + 8) = v42;
    *(v38 + 16) = v43;
    *(v38 + 24) = v5;
    *(v38 + 32) = v50;
    *(v38 + 48) = v51;
    v38 -= 48;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_2288327B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_228863AEC(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_228834638((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_22887FBF0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22887FBF0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_22882F8B4((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_228834638((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_228863AEC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_228863A60(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_22887FBF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_228832D90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_103:
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v94 = *(v8 + 2);
      if (v94 >= 2)
      {
        while (*a3)
        {
          v95 = *&v8[16 * v94];
          v96 = *&v8[16 * v94 + 24];
          sub_228834860((*a3 + 8 * v95), (*a3 + 8 * *&v8[16 * v94 + 16]), (*a3 + 8 * v96), v7);
          if (v5)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_228863AEC(v8);
          }

          if (v94 - 2 >= *(v8 + 2))
          {
            goto LABEL_129;
          }

          v97 = &v8[16 * v94];
          *v97 = v95;
          *(v97 + 1) = v96;
          result = sub_228863A60(v94 - 1);
          v94 = *(v8 + 2);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_228863AEC(v8);
    v8 = result;
    goto LABEL_105;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    v107 = v8;
    v102 = v9;
    if (v7 < v6)
    {
      v103 = v6;
      v10 = *a3;
      v11 = v7;

      v12 = sub_22882E140();
      v14 = v13;
      v16 = v12 == sub_22882E140() && v14 == v15;
      v99 = v5;
      if (v16)
      {
        v105 = 0;
      }

      else
      {
        v105 = sub_22887FBF0();
      }

      v17 = 8 * v9;
      v18 = v10 + v17 + 16;
      v19 = v17 + 8;
      v7 = v11;
      do
      {
        v22 = v7;
        v23 = v19;
        if (++v7 >= v103)
        {
          break;
        }

        v109 = v7;

        v24 = sub_22882E140();
        v26 = v25;
        v28 = v24 == sub_22882E140() && v26 == v27;
        v20 = v28 ? 0 : sub_22887FBF0();

        v21 = v105 ^ v20;
        v18 += 8;
        v19 = v23 + 8;
        v8 = v107;
        v7 = v109;
      }

      while ((v21 & 1) == 0);
      v5 = v99;
      if ((v105 & 1) == 0)
      {
        goto LABEL_29;
      }

      v29 = v102;
      if (v7 < v102)
      {
        goto LABEL_132;
      }

      if (v102 < v7)
      {
        do
        {
          if (v29 != v22)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v32 = *(v31 + v17);
            *(v31 + v17) = *(v31 + v23);
            *(v31 + v23) = v32;
          }

          ++v29;
          v23 -= 8;
          v17 += 8;
        }

        while (v29 < v22--);
LABEL_29:
        v9 = v102;
        goto LABEL_30;
      }

      v9 = v102;
    }

LABEL_30:
    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_131;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v7 < v9)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_22882F8B4((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v102;
    *(v50 + 5) = v7;
    v51 = *v101;
    if (!*v101)
    {
      goto LABEL_140;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_72:
          if (v56)
          {
            goto LABEL_119;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_122;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_126;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_86:
        if (v74)
        {
          goto LABEL_121;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_124;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_93:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_228834860((*a3 + 8 * v91), (*a3 + 8 * *&v8[16 * v52 + 32]), (*a3 + 8 * v92), v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228863AEC(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_228863A60(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_117;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_118;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_120;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_123;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_127;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_103;
    }
  }

  v34 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_133;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v7 == v34)
  {
    goto LABEL_52;
  }

  v100 = v5;
  v35 = *a3;
  v36 = (*a3 + 8 * v7 - 8);
  v37 = v9 - v7;
  v104 = v34;
LABEL_41:
  v110 = v7;
  v38 = v37;
  v106 = v36;
  while (1)
  {

    v39 = sub_22882E140();
    v41 = v40;
    if (v39 == sub_22882E140() && v41 == v42)
    {

LABEL_40:
      v7 = (v110 + 1);
      v36 = v106 + 1;
      --v37;
      if (v110 + 1 == v104)
      {
        v7 = v104;
        v5 = v100;
        v8 = v107;
        v9 = v102;
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v44 = sub_22887FBF0();

    if ((v44 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v36;
    *v36 = v36[1];
    v36[1] = v45;
    --v36;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_2288334DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_98:
    v7 = *v96;
    if (!*v96)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_132:
      result = sub_228863AEC(v8);
      v8 = result;
    }

    v88 = v5;
    v116 = v8;
    v89 = *(v8 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = *&v8[16 * v89];
        v5 = *&v8[16 * v89 + 24];
        sub_228834BC4((*a3 + 40 * v90), (*a3 + 40 * *&v8[16 * v89 + 16]), *a3 + 40 * v5, v7);
        if (v88)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228863AEC(v8);
        }

        if (v89 - 2 >= *(v8 + 2))
        {
          goto LABEL_126;
        }

        v91 = &v8[16 * v89];
        *v91 = v90;
        *(v91 + 1) = v5;
        v116 = v8;
        result = sub_228863A60(v89 - 1);
        v8 = v116;
        v89 = *(v116 + 2);
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_136;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if ((v7 + 1) < v6)
    {
      v10 = *a3;
      sub_2287E766C(*a3 + 40 * (v7 + 1), &v113);
      sub_2287E766C(v10 + 40 * v7, v110);
      v104 = sub_22882F4DC(&v113, v110);
      if (!v5)
      {
        v102 = v6;
        __swift_destroy_boxed_opaque_existential_1(v110);
        result = __swift_destroy_boxed_opaque_existential_1(&v113);
        v11 = v7 + 2;
        v93 = v7;
        v12 = 40 * v7;
        v13 = v10 + 40 * v7 + 80;
        v100 = v8;
        do
        {
          if (v102 == v11)
          {
            v21 = v102;
            goto LABEL_16;
          }

          sub_2287E766C(v13, &v113);
          sub_2287E766C(v13 - 40, v110);
          v15 = v114;
          v16 = v115;
          __swift_project_boxed_opaque_existential_1(&v113, v114);
          (*(v16 + 40))(&v108, v15, v16);
          v17 = v108;
          v18 = v109;
          v20 = v111;
          v19 = v112;
          __swift_project_boxed_opaque_existential_1(v110, v111);
          (*(v19 + 40))(&v106, v20, v19);
          v7 = v107;
          if (v17 == v106 && v18 == v107)
          {
            v14 = 0;
          }

          else
          {
            v14 = sub_22887FBF0();
          }

          __swift_destroy_boxed_opaque_existential_1(v110);
          result = __swift_destroy_boxed_opaque_existential_1(&v113);
          ++v11;
          v13 += 40;
          v8 = v100;
        }

        while (((v104 ^ v14) & 1) == 0);
        v21 = v11 - 1;
LABEL_16:
        v9 = v93;
        v5 = 0;
        if (v104)
        {
          if (v21 < v93)
          {
            goto LABEL_131;
          }

          if (v93 < v21)
          {
            v22 = 40 * v21 - 40;
            v23 = v21;
            v7 = v93;
            do
            {
              if (v7 != --v23)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v25 = v24 + v12;
                v26 = v24 + v22;
                sub_2287EC014((v24 + v12), &v113);
                v27 = *(v26 + 32);
                v28 = *(v26 + 16);
                *v25 = *v26;
                *(v25 + 16) = v28;
                *(v25 + 32) = v27;
                result = sub_2287EC014(&v113, v26);
              }

              ++v7;
              v22 -= 40;
              v12 += 40;
            }

            while (v7 < v23);
            v5 = 0;
          }
        }

        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_1(v110);
      __swift_destroy_boxed_opaque_existential_1(&v113);
    }

    v21 = v7 + 1;
LABEL_25:
    v29 = a3[1];
    if (v21 >= v29)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v9))
    {
      goto LABEL_128;
    }

    if (v21 - v9 >= a4)
    {
LABEL_34:
      v7 = v21;
      if (v21 < v9)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_129;
    }

    if (&v9[a4] >= v29)
    {
      v7 = a3[1];
    }

    else
    {
      v7 = &v9[a4];
    }

    if (v7 < v9)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v21 == v7)
    {
      goto LABEL_34;
    }

    v94 = v9;
    v95 = v5;
    v105 = *a3;
    v77 = *a3 + 40 * v21;
    v78 = v9 - v21;
    v97 = v7;
LABEL_87:
    v103 = v21;
    v98 = v78;
    v99 = v77;
LABEL_88:
    sub_2287E766C(v77, &v113);
    sub_2287E766C(v77 - 40, v110);
    v79 = v114;
    v80 = v115;
    __swift_project_boxed_opaque_existential_1(&v113, v114);
    (*(v80 + 40))(&v108, v79, v80);
    v81 = v108;
    v82 = v109;
    v83 = v111;
    v84 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v84 + 40))(&v106, v83, v84);
    if (v81 != v106 || v82 != v107)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(&v113);
LABEL_86:
    ++v21;
    v77 = v99 + 40;
    v78 = v98 - 1;
    v7 = v97;
    if (v103 + 1 != v97)
    {
      goto LABEL_87;
    }

    v9 = v94;
    v5 = v95;
    if (v97 < v94)
    {
      goto LABEL_127;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_22882F8B4((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v96;
    if (!*v96)
    {
      goto LABEL_137;
    }

    if (v31)
    {
      while (2)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = &v8[16 * v32 + 32];
          v41 = *(v40 - 64);
          v42 = *(v40 - 56);
          v46 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          if (v46)
          {
            goto LABEL_114;
          }

          v45 = *(v40 - 48);
          v44 = *(v40 - 40);
          v46 = __OFSUB__(v44, v45);
          v38 = v44 - v45;
          v39 = v46;
          if (v46)
          {
            goto LABEL_115;
          }

          v47 = &v8[16 * v32];
          v49 = *v47;
          v48 = *(v47 + 1);
          v46 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v46)
          {
            goto LABEL_117;
          }

          v46 = __OFADD__(v38, v50);
          v51 = v38 + v50;
          if (v46)
          {
            goto LABEL_120;
          }

          if (v51 >= v43)
          {
            v69 = &v8[16 * v35 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v46 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v46)
            {
              goto LABEL_124;
            }

            if (v38 < v72)
            {
              v35 = v32 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v39)
            {
              goto LABEL_116;
            }

            v52 = &v8[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_119;
            }

            v58 = &v8[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_123;
            }

            if (v56 + v61 < v38)
            {
              goto LABEL_68;
            }

            if (v38 < v61)
            {
              v35 = v32 - 2;
            }
          }
        }

        else
        {
          if (v32 == 3)
          {
            v36 = *(v8 + 4);
            v37 = *(v8 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
            goto LABEL_54;
          }

          v62 = &v8[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_68:
          if (v57)
          {
            goto LABEL_118;
          }

          v65 = &v8[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_121;
          }

          if (v68 < v56)
          {
            break;
          }
        }

        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v74 = *&v8[16 * v73 + 32];
        v75 = *&v8[16 * v35 + 40];
        sub_228834BC4((*a3 + 40 * v74), (*a3 + 40 * *&v8[16 * v35 + 32]), *a3 + 40 * v75, v34);
        if (v5)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228863AEC(v8);
        }

        if (v73 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v76 = &v8[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v116 = v8;
        result = sub_228863A60(v35);
        v8 = v116;
        v32 = *(v116 + 2);
        if (v32 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_98;
    }
  }

  v85 = sub_22887FBF0();

  __swift_destroy_boxed_opaque_existential_1(v110);
  result = __swift_destroy_boxed_opaque_existential_1(&v113);
  if ((v85 & 1) == 0)
  {
    goto LABEL_86;
  }

  if (v105)
  {
    sub_2287EC014(v77, &v113);
    v86 = *(v77 - 24);
    *v77 = *(v77 - 40);
    *(v77 + 16) = v86;
    *(v77 + 32) = *(v77 - 8);
    sub_2287EC014(&v113, v77 - 40);
    v77 -= 40;
    if (__CFADD__(v78++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_228833D5C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 48;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 48;
  if (v8 < v10)
  {
    v11 = __dst;
    if (__dst != __src || &__src[48 * v8] <= __dst)
    {
      memmove(__dst, __src, 48 * v8);
    }

    v12 = __src;
    v13 = &v11[48 * v8];
    if (v7 < 48)
    {
      v32 = v12;
      goto LABEL_42;
    }

    v14 = v80;
    if (v5 >= v4)
    {
LABEL_16:
      v32 = v12;
      goto LABEL_42;
    }

    while (1)
    {
      v66 = v12;
      v15 = v4;
      v16 = *(v5 + 1);
      v17 = *(v5 + 2);
      v18 = *(v5 + 3);
      v19 = *(v5 + 4);
      v20 = *(v5 + 5);
      v74 = *v5;
      v75 = v16;
      v76 = v17;
      v77 = v18;
      v78 = v19;
      v79 = v20;
      v21 = *(v11 + 1);
      v22 = *(v11 + 2);
      v23 = *(v11 + 3);
      v25 = *(v11 + 4);
      v24 = *(v11 + 5);
      v68 = *v11;
      v69 = v21;
      v70 = v22;
      v71 = v23;
      v72 = v25;
      v73 = v24;

      v26 = sub_22882E3D0(&v74, &v68);
      if (v14)
      {

        v58 = (v13 - v11) / 48;
        v32 = v66;
        if (v66 < v11)
        {
          goto LABEL_45;
        }

LABEL_43:
        if (v32 >= &v11[48 * v58] || v32 != v11)
        {
LABEL_45:
          v61 = 48 * v58;
          v59 = v11;
LABEL_46:
          memmove(v32, v59, v61);
        }

        return 1;
      }

      v27 = v26;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v5;
      v29 = v66 == v5;
      v5 += 48;
      v4 = v15;
      if (!v29)
      {
        goto LABEL_13;
      }

LABEL_14:
      v12 = v66 + 48;
      if (v11 >= v13 || v5 >= v4)
      {
        goto LABEL_16;
      }
    }

    v28 = v11;
    v29 = v66 == v11;
    v11 += 48;
    v4 = v15;
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    v30 = *v28;
    v31 = *(v28 + 2);
    *(v66 + 1) = *(v28 + 1);
    *(v66 + 2) = v31;
    *v66 = v30;
    goto LABEL_14;
  }

  if (__dst != a2 || &a2[48 * v10] <= __dst)
  {
    v33 = __dst;
    memmove(__dst, a2, 48 * v10);
    __dst = v33;
  }

  __srca = __dst;
  v13 = &__dst[48 * v10];
  if (v9 < 48 || v5 <= __src)
  {
    v32 = v5;
    v11 = __dst;
    goto LABEL_42;
  }

LABEL_22:
  v34 = 0;
  v35 = v13;
  v63 = v5 - 48;
  v64 = v4;
  while (1)
  {
    v36 = v35;
    v37 = &v35[v34];
    v38 = &v35[v34 - 48];
    v40 = *&v35[v34 - 40];
    v39 = *&v35[v34 - 32];
    v42 = *(v37 - 3);
    v41 = *(v37 - 2);
    v43 = *(v37 - 1);
    v74 = *v38;
    v75 = v40;
    v76 = v39;
    v77 = v42;
    v78 = v41;
    v79 = v43;
    v44 = *(v5 - 5);
    v45 = *(v5 - 4);
    v46 = *(v5 - 3);
    v48 = *(v5 - 2);
    v47 = *(v5 - 1);
    v68 = *(v5 - 6);
    v69 = v44;
    v70 = v45;
    v71 = v46;
    v72 = v48;
    v73 = v47;

    v49 = v80;
    v50 = sub_22882E3D0(&v74, &v68);
    v80 = v49;
    if (v49)
    {
      break;
    }

    v51 = v50;

    if (v51)
    {
      v32 = v5 - 48;
      v4 = &v64[v34 - 48];
      v55 = v36;
      if (&v64[v34] != v5)
      {
        v56 = *v63;
        v57 = *(v5 - 1);
        *&v64[v34 - 32] = *(v5 - 2);
        *&v64[v34 - 16] = v57;
        *v4 = v56;
      }

      v13 = &v36[v34];
      v11 = __srca;
      if (&v55[v34] <= __srca || (v5 -= 48, v63 <= __src))
      {
        v13 = &v55[v34];
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    v35 = v36;
    if (&v64[v34] != v37)
    {
      v52 = &v64[v34 - 48];
      v53 = *v38;
      v54 = *(v38 + 32);
      *(v52 + 1) = *(v38 + 16);
      *(v52 + 2) = v54;
      *v52 = v53;
    }

    v34 -= 48;
    v13 = &v36[v34];
    v11 = __srca;
    if (&v35[v34] <= __srca)
    {
      v32 = v5;
LABEL_42:
      v58 = (v13 - v11) / 48;
      if (v32 < v11)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  v59 = __srca;
  v60 = (v36 - __srca + v34) / 48;
  if (v5 < __srca || v5 >= &__srca[48 * v60])
  {
    memmove(v5, __srca, 48 * v60);
  }

  else if (v5 != __srca)
  {
    v61 = 48 * v60;
    v32 = v5;
    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_2288342A0(char *__src, char *__dst, _OWORD *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_53:
      v25 = v6;
    }

    else
    {
      v55 = v4;
      do
      {
        v53 = v5;
        v26 = 0;
        v27 = v12;
        v46 = v6 - 48;
        v49 = v6;
        v51 = v12;
        while (1)
        {
          v28 = &v27[v26];
          v29 = &v27[v26 - 48];
          v30 = *&v27[v26 - 32];
          v31 = *&v27[v26 - 24];
          v32 = *(v6 - 6);
          v33 = *(v6 - 5);
          v34 = *(v6 - 4);
          v35 = *(v6 - 3);
          if (*v29 == v32 && *&v27[v26 - 40] == v33)
          {
            goto LABEL_45;
          }

          v47 = v34;
          v48 = *&v27[v26 - 24];
          if (sub_22887FBF0())
          {
            break;
          }

          v37 = sub_22887FBF0();
          v34 = v47;
          v31 = v48;
          if ((v37 & 1) == 0)
          {
LABEL_45:
            v38 = v30 == v34 && v31 == v35;
            if (!v38 && (sub_22887FBF0() & 1) != 0)
            {
              break;
            }
          }

          if (&v53[v26 / 0x10] != v28)
          {
            v39 = &v53[v26 / 0x10 - 3];
            v40 = *v29;
            v41 = *(v29 + 32);
            v39[1] = *(v29 + 16);
            v39[2] = v41;
            *v39 = v40;
          }

          v26 -= 48;
          v6 = v49;
          v27 = v51;
          v12 = &v51[v26];
          v4 = v55;
          if (&v51[v26] <= v55)
          {
            goto LABEL_53;
          }
        }

        v5 = &v53[v26 / 0x10 - 3];
        v25 = v46;
        if (&v53[v26 / 0x10] != v49)
        {
          v42 = *v46;
          v43 = *(v46 + 2);
          v53[v26 / 0x10 - 2] = *(v46 + 1);
          v53[v26 / 0x10 - 1] = v43;
          *v5 = v42;
        }

        v12 = &v51[v26];
        v4 = v55;
        if (&v51[v26] <= v55)
        {
          break;
        }

        v6 = v46;
      }

      while (v46 > v7);
      v12 = &v51[v26];
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      v50 = &v4[48 * v9];
      do
      {
        v52 = v7;
        v13 = *(v6 + 2);
        v14 = *(v6 + 3);
        v15 = *v4;
        v16 = *(v4 + 1);
        v54 = v4;
        v17 = *(v4 + 2);
        v18 = *(v4 + 3);
        v19 = *v6 == v15 && *(v6 + 1) == v16;
        if (!v19)
        {
          if (sub_22887FBF0())
          {
            goto LABEL_19;
          }

          if (sub_22887FBF0())
          {
            goto LABEL_22;
          }
        }

        v20 = v13 == v17 && v14 == v18;
        if (v20 || (sub_22887FBF0() & 1) == 0)
        {
LABEL_22:
          v21 = v54;
          v4 = v54 + 48;
          v22 = v52;
          if (v52 == v54)
          {
            goto LABEL_24;
          }

LABEL_23:
          v23 = *v21;
          v24 = v21[2];
          *(v22 + 1) = v21[1];
          *(v22 + 2) = v24;
          *v22 = v23;
          goto LABEL_24;
        }

LABEL_19:
        v21 = v6;
        v22 = v52;
        v19 = v52 == v6;
        v6 += 48;
        v4 = v54;
        if (!v19)
        {
          goto LABEL_23;
        }

LABEL_24:
        v7 = v22 + 48;
        v12 = v50;
      }

      while (v4 < v50 && v6 < v5);
    }

    v25 = v7;
  }

  v44 = (v12 - v4) / 48;
  if (v25 != v4 || v25 >= &v4[48 * v44])
  {
    memmove(v25, v4, 48 * v44);
  }

  return 1;
}

uint64_t sub_228834638(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_22887FBF0() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_228834860(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v22 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v4[8 * v12];
    if (v10 >= 8 && v22 > v6)
    {
      v36 = v4;
LABEL_32:
      v35 = v22;
      v23 = v22 - 8;
      v5 -= 8;
      v24 = v37;
      do
      {
        v24 -= 8;
        v25 = v23;

        v26 = sub_22882E140();
        v28 = v27;
        if (v26 == sub_22882E140() && v28 == v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = sub_22887FBF0();
        }

        v32 = v5 + 8;
        if (v31)
        {
          v33 = v25;
          if (v32 != v35)
          {
            *v5 = *v25;
          }

          v4 = v36;
          if (v37 <= v36 || (v22 = v33, v33 <= v6))
          {
            v22 = v33;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v32 != v37)
        {
          *v5 = *v24;
        }

        v5 -= 8;
        v37 = v24;
        v23 = v25;
      }

      while (v24 > v36);
      v37 = v24;
      v22 = v35;
      v4 = v36;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v37 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {

        v15 = sub_22882E140();
        v17 = v16;
        v19 = v15 == sub_22882E140() && v17 == v18;
        if (v19)
        {
          break;
        }

        v20 = sub_22887FBF0();

        if ((v20 & 1) == 0)
        {
          goto LABEL_21;
        }

        v21 = v14;
        v19 = v6 == v14;
        v14 += 8;
        if (!v19)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
        if (v4 >= v37 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v21 = v4;
      v19 = v6 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v21;
      goto LABEL_23;
    }

LABEL_25:
    v22 = v6;
  }

LABEL_49:
  if (v22 != v4 || v22 >= &v4[(v37 - v4 + (v37 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v22, v4, 8 * ((v37 - v4) / 8));
  }

  return 1;
}

uint64_t sub_228834BC4(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v45 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v25 = v7;
      v43 = v4;
      do
      {
        v56 = v25;
        v26 = (v25 - 40);
        v27 = (v45 - 40);
        v5 -= 40;
        v44 = (v25 - 40);
        while (1)
        {
          sub_2287E766C(v27, v53);
          sub_2287E766C(v26, v50);
          v30 = v54;
          v31 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          (*(v31 + 40))(&v48, v30, v31);
          v33 = v48;
          v32 = v49;
          v35 = v51;
          v34 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          (*(v34 + 40))(&v46, v35, v34);
          if (v33 == v46 && v32 == v47)
          {
            v36 = 0;
          }

          else
          {
            v36 = sub_22887FBF0();
          }

          __swift_destroy_boxed_opaque_existential_1(v50);
          __swift_destroy_boxed_opaque_existential_1(v53);
          if (v36)
          {
            break;
          }

          v4 = v43;
          v26 = v44;
          if (v5 + 40 != v27 + 40)
          {
            v37 = *v27;
            v38 = *(v27 + 16);
            *(v5 + 32) = *(v27 + 32);
            *v5 = v37;
            *(v5 + 16) = v38;
          }

          v28 = v27 - 40;
          v5 -= 40;
          v29 = v27 > v43;
          v27 -= 40;
          if (!v29)
          {
            v45 = (v28 + 40);
            v7 = v56;
            goto LABEL_39;
          }
        }

        v4 = v43;
        v7 = v44;
        if ((v5 + 40) != v56)
        {
          v39 = *v44;
          v40 = *(v44 + 16);
          *(v5 + 32) = *(v44 + 32);
          *v5 = v39;
          *(v5 + 16) = v40;
        }

        v45 = (v27 + 40);
        if (v27 + 40 <= v43)
        {
          break;
        }

        v25 = v44;
      }

      while (v44 > __src);
      v45 = (v27 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v45 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v56 = v7;
        sub_2287E766C(v7, v53);
        v13 = v4;
        sub_2287E766C(v4, v50);
        v14 = v54;
        v15 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v15 + 40))(&v48, v14, v15);
        v17 = v48;
        v16 = v49;
        v18 = v51;
        v19 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v19 + 40))(&v46, v18, v19);
        if (v17 == v46 && v16 == v47)
        {
          break;
        }

        v20 = sub_22887FBF0();

        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        if ((v20 & 1) == 0)
        {
          goto LABEL_13;
        }

        v21 = v56;
        v7 = v56 + 40;
        if (__src != v56)
        {
          goto LABEL_14;
        }

LABEL_15:
        __src += 40;
        if (v4 >= v45 || v7 >= v5)
        {
          goto LABEL_17;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v50);
      __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_13:
      v21 = v4;
      v4 += 40;
      v7 = v56;
      if (__src == v13)
      {
        goto LABEL_15;
      }

LABEL_14:
      v22 = *v21;
      v23 = *(v21 + 1);
      *(__src + 4) = *(v21 + 4);
      *__src = v22;
      *(__src + 1) = v23;
      goto LABEL_15;
    }

LABEL_17:
    v7 = __src;
  }

LABEL_39:
  v41 = (v45 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v41])
  {
    memmove(v7, v4, 40 * v41);
  }

  return 1;
}

void (*sub_228835068(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_228835374(v5);
  v5[9] = sub_22883516C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_22883510C;
}

void sub_22883510C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22883516C(uint64_t *a1, uint64_t *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 56) = a2;
  *(v8 + 64) = v3;
  v10 = *v3;
  v11 = sub_228819DA4(a2);
  *(v9 + 80) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_228853458();
      v11 = v19;
      goto LABEL_11;
    }

    sub_228850B88(v16, a3 & 1);
    v11 = sub_228819DA4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22887FC20();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 72) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 48) = v21;
  return sub_2288352B4;
}

void sub_2288352B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 80);
  if (v2)
  {
    v4 = *(v1 + 72);
    v5 = **(v1 + 64);
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = *(v1 + 56);
      sub_22885B960(v4, v8, v2, v5);
      sub_2287F56D8(v8, v1);
    }
  }

  else if (*(*a1 + 80))
  {
    v6 = *(v1 + 72);
    v7 = **(v1 + 64);
    sub_228820738(*(v7 + 48) + 48 * v6);
    sub_228849074(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_228835374(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22883539C;
}

void *sub_2288353A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_228836DF8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_228835444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_228837394();
  result = sub_22887F870();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    v31 = v16[2];
    sub_22887FC90();

    sub_22887F3E0();
    result = sub_22887FCD0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 32 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v31;
    v28[3] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_228835678(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v14 = a2;
    result = sub_22887FA20();
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22887FA20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2287E70A8(0, &qword_27D852340, v8, type metadata accessor for Orchestrator, MEMORY[0x277D83940]);
          sub_228836450(&qword_27D852348, &qword_27D852340, v9, type metadata accessor for Orchestrator);
          for (i = 0; i != v6; ++i)
          {
            v11 = sub_22880ED6C(v15, i, a3);
            v13 = *v12;

            (v11)(v15, 0);
            *(v4 + 8 * i) = v13;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Orchestrator();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_228835828(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22887FA20();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22887FA20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2287E70A8(0, &qword_27D851A70, 255, type metadata accessor for DebugSnapshot, MEMORY[0x277D83940]);
          sub_228836450(&qword_27D852338, &qword_27D851A70, 255, type metadata accessor for DebugSnapshot);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_22880EDF4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugSnapshot();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2288359E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22887FA20();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22887FA20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2287E70A8(0, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord, MEMORY[0x277D83940]);
          sub_228836450(&qword_27D852328, &qword_2813CF620, 255, type metadata accessor for WorkCriteriaRecord);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_22880EDF4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorkCriteriaRecord();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_228835BA0(uint64_t a1)
{
  sub_228835C1C(0, &qword_27D8522E8, &qword_2813CF810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228835C1C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2287E670C(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_228835C90()
{
  if (!qword_2813CF490)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF490);
    }
  }
}

unint64_t sub_228835D78()
{
  result = qword_27D8522F0;
  if (!qword_27D8522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8522F0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_228835E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_228835E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_228835EFC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2287E670C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228835F68()
{
  if (!qword_2813CF268)
  {
    sub_2287E670C(255, &qword_2813CFC00);
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF268);
    }
  }
}

unint64_t sub_228835FD4()
{
  result = qword_2813CF828;
  if (!qword_2813CF828)
  {
    sub_228836024();
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813CF828);
  }

  return result;
}

void sub_228836024()
{
  if (!qword_2813CF830)
  {
    sub_2287E670C(255, qword_2813CF838);
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF830);
    }
  }
}

void sub_228836090(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_228837518(255, a3);
    v4 = sub_22887FBB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2288360EC()
{
  if (!qword_2813CF530)
  {
    v0 = sub_22887F670();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF530);
    }
  }
}

uint64_t sub_228836150(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_228819DA4(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_22885088C(v17, a3 & 1);
      v12 = sub_228819DA4(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22887FC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_2288532B4();
      v12 = v20;
    }
  }

  v22 = *a4;
  if ((v18 & 1) == 0)
  {
    v22[(v12 >> 6) + 8] |= 1 << v12;
    v25 = (v22[6] + 48 * v12);
    v26 = *a2;
    v27 = *(a2 + 32);
    v25[1] = *(a2 + 16);
    v25[2] = v27;
    *v25 = v26;
    v28 = (v22[7] + 16 * v12);
    *v28 = a1;
    v28[1] = a6;
    v29 = v22[2];
    v16 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v16)
    {
      v22[2] = v30;
      return sub_2287F56D8(a2, &v31);
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * v12);
  *v23 = a1;
  v23[1] = a6;

  return swift_unknownObjectRelease();
}

uint64_t sub_2288362F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 2:

      break;
    case 1:
      break;
    case 0:

    default:
      return result;
  }
}

uint64_t sub_228836398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 2:

      break;
    case 1:
      break;
    case 0:

    default:
      return result;
  }
}

uint64_t sub_228836450(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287E70A8(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288364D0(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_30:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_22887FA20();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v18 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAC07F0](v5, a1);
    }

    else
    {
      if (v5 >= *(v17 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7[6];
    v9 = v7[7];
    v10 = a2[6];
    v11 = a2[7];
    v12 = v7[4] == a2[4] && v7[5] == a2[5];
    if (v12 || (sub_22887FBF0() & 1) != 0)
    {
      v13 = v8 == v10 && v9 == v11;
      if (v13 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }
    }

LABEL_5:
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_29;
    }
  }

  if (v7[10] != *(a3 + 16) || v7[11] != *(a3 + 24))
  {
    v14 = sub_22887FBF0();

    if (v14)
    {
      return v5;
    }

    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_228836668(unint64_t *a1, void *a2, uint64_t a3)
{
  v7 = *a1;
  v8 = sub_2288364D0(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22887FA20();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = a1;
  v26 = a3;
  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22887FA20())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAC07F0](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    v15 = v13[6];
    v14 = v13[7];
    v17 = a2[6];
    v16 = a2[7];
    if (v13[4] == a2[4] && v13[5] == a2[5] || (sub_22887FBF0()) && (v15 == v17 && v14 == v16 || (sub_22887FBF0()))
    {
      if (v13[10] == *(v26 + 16) && v13[11] == *(v26 + 24))
      {

        goto LABEL_9;
      }

      v18 = sub_22887FBF0();

      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (v10 != v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AAC07F0](v10, v7);
        v20 = MEMORY[0x22AAC07F0](v11, v7);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v21)
        {
          goto LABEL_56;
        }

        if (v11 >= v21)
        {
          goto LABEL_57;
        }

        v19 = *(v7 + 32 + 8 * v10);
        v20 = *(v7 + 32 + 8 * v11);
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_228872CE0(v7);
        v22 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v22) = 0;
      }

      v23 = v7 & 0xFFFFFFFFFFFFFF8;
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v20;

      if ((v7 & 0x8000000000000000) != 0 || v22)
      {
        v7 = sub_228872CE0(v7);
        v23 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_48:
          __break(1u);
          return v10;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v11 >= *(v23 + 16))
      {
        goto LABEL_54;
      }

      *(v23 + 8 * v11 + 32) = v19;

      *v25 = v7;
    }

LABEL_8:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_53;
    }

LABEL_9:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_52;
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
  __break(1u);
  return sub_22887FA20();
}

unint64_t sub_228836960(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
LABEL_30:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_22887FA20();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v19 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAC07F0](v6, a1);
    }

    else
    {
      if (v6 >= *(v18 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v10 = v8[6];
    v9 = v8[7];
    v11 = a2[6];
    v12 = a2[7];
    v13 = v8[4] == a2[4] && v8[5] == a2[5];
    if (v13 || (sub_22887FBF0() & 1) != 0)
    {
      v14 = v10 == v11 && v9 == v12;
      if (v14 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }
    }

LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_29;
    }
  }

  if (v8[10] != a3 || v8[11] != a4)
  {
    v15 = sub_22887FBF0();

    if (v15)
    {
      return v6;
    }

    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_228836B00(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = sub_228836960(*a1, a2, a3, a4);
  v12 = v10;
  if (v4)
  {
    return v12;
  }

  v28 = a3;
  v29 = a4;
  if (v11)
  {
    if (v9 >> 62)
    {
      return sub_22887FA20();
    }

    return *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a1;
  v13 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v9 >> 62)
    {
      if (v13 == sub_22887FA20())
      {
        return v12;
      }
    }

    else if (v13 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AAC07F0](v13, v9);
      goto LABEL_16;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v15 = *(v9 + 8 * v13 + 32);

LABEL_16:
    v16 = v15[6];
    v17 = v15[7];
    v18 = a2[6];
    v19 = a2[7];
    if (v15[4] == a2[4] && v15[5] == a2[5] || (sub_22887FBF0()) && (v16 == v18 && v17 == v19 || (sub_22887FBF0()))
    {
      if (v15[10] == v28 && v15[11] == v29)
      {

        goto LABEL_9;
      }

      v20 = sub_22887FBF0();

      if (v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (v12 != v13)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x22AAC07F0](v12, v9);
        v22 = MEMORY[0x22AAC07F0](v13, v9);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v23)
        {
          goto LABEL_56;
        }

        if (v13 >= v23)
        {
          goto LABEL_57;
        }

        v21 = *(v9 + 32 + 8 * v12);
        v22 = *(v9 + 32 + 8 * v13);
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
      {
        v9 = sub_228872CE0(v9);
        v24 = (v9 >> 62) & 1;
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v9 & 0xFFFFFFFFFFFFFF8;
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v22;

      if ((v9 & 0x8000000000000000) != 0 || v24)
      {
        v9 = sub_228872CE0(v9);
        v25 = v9 & 0xFFFFFFFFFFFFFF8;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_48:
          __break(1u);
          return v12;
        }
      }

      else if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v13 >= *(v25 + 16))
      {
        goto LABEL_54;
      }

      *(v25 + 8 * v13 + 32) = v21;

      *v27 = v9;
    }

LABEL_8:
    v14 = __OFADD__(v12++, 1);
    if (v14)
    {
      goto LABEL_53;
    }

LABEL_9:
    v14 = __OFADD__(v13++, 1);
    if (v14)
    {
      goto LABEL_52;
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
  __break(1u);
  return sub_22887FA20();
}

uint64_t sub_228836DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v25 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 32 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = *(a4 + 16);
    v20 = *(v19 + 16);

    if (v20 && (v21 = sub_2287E6768(v15, v16, v17, v18), (v22 & 1) != 0))
    {
      sub_2287E766C(*(v19 + 56) + 40 * v21, v29);
      sub_2287F0AC8(v29);

      v8 = v31;
    }

    else
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      sub_2287F0AC8(v29);

      *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v23 = __OFADD__(v26++, 1);
      v8 = v31;
      if (v23)
      {
        __break(1u);
LABEL_17:

        return sub_228835444(v25, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228836FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v37 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x28223BE20](v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v35 = 0;
    v36 = v4;
    v10 = 0;
    v11 = v4 + 56;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 56);
    v7 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_12:
      v3 = v15 | (v10 << 6);
      v18 = (*(v4 + 48) + 32 * v3);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v8 = *(v37 + 16);
      v23 = *(v8 + 16);

      if (v23 && (v24 = sub_2287E6768(v19, v20, v21, v22), (v25 & 1) != 0))
      {
        sub_2287E766C(*(v8 + 56) + 40 * v24, v39);
        sub_2287F0AC8(v39);

        v4 = v36;
        v14 = v38;
      }

      else
      {
        v40 = 0;
        memset(v39, 0, sizeof(v39));
        sub_2287F0AC8(v39);

        *&v34[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        v4 = v36;
        v26 = __OFADD__(v35++, 1);
        v14 = v38;
        if (v26)
        {
          __break(1u);
LABEL_18:
          v27 = sub_228835444(v34, v32, v35, v4);

          return v27;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_18;
      }

      v17 = *(v11 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;

  v27 = sub_2288353A8(v29, v7, v4, v30);

  MEMORY[0x22AAC1440](v29, -1, -1);

  return v27;
}

void sub_228837394()
{
  if (!qword_2813CF4B0)
  {
    sub_2287F74F8();
    v0 = sub_22887F880();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF4B0);
    }
  }
}

void sub_2288374A0()
{
  if (!qword_2813CF218)
  {
    sub_228835C1C(255, &qword_2813CF650, &unk_2813CF800);
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF218);
    }
  }
}

void sub_228837518(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_228837590()
{
  result = qword_27D852350;
  if (!qword_27D852350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852350);
  }

  return result;
}

uint64_t sub_2288375E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_228837680@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = sub_22882A9E8(a1);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_2287FEDA4;
  a2[1] = result;
  return result;
}

unint64_t sub_2288376E8()
{
  result = qword_27D852358;
  if (!qword_27D852358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852358);
  }

  return result;
}

unint64_t sub_228837760()
{
  result = qword_27D852360;
  if (!qword_27D852360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852360);
  }

  return result;
}

unint64_t sub_2288377B8()
{
  result = qword_27D852368[0];
  if (!qword_27D852368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D852368);
  }

  return result;
}

void AtomicBox.wrappedValue.getter()
{
  v1 = v0[2];
  v2[2] = *(*v0 + 80);
  sub_228822674(sub_228837958, v2, v1);
}

uint64_t AtomicBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  j___s19HealthOrchestration9AtomicBoxC3setyyxF();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void AtomicBox.set(_:)(uint64_t a1)
{
  v2 = v1[2];
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  sub_228822674(sub_228837F78, v3, v2);
}

void (*AtomicBox.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  AtomicBox.wrappedValue.getter();
  return sub_228837B30;
}

void sub_228837B30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    AtomicBox.set(_:)(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    AtomicBox.set(_:)(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void AtomicBox.map(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4[2] = *(*v2 + 80);
  v4[3] = a1;
  v4[4] = a2;
  sub_228822674(sub_228838028, v4, v3);
}

uint64_t sub_228837C74@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1, v11);
  a2(v10);
  (*(v8 + 8))(v10, a3);
  return (*(v8 + 16))(a4, a1, a3);
}

uint64_t AtomicBox.set(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v6[2] = *(*v3 + 80);
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  sub_228822674(sub_228838048, v6, v4);
  return v7;
}

void *AtomicBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  v3[2] = sub_228870A40(a1, *(*v3 + 80));
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

void *AtomicBox.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_228838124(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t AtomicBox.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228837F78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_228838048@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 40);
  result = (*(v2 + 24))();
  if (result)
  {
    v8 = *(v5 - 8);
    (*(v8 + 8))(a1, v5);
    result = (*(v8 + 16))(a1, v6, v5);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_2288382A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v16 = *(v7 + OBJC_IVAR____TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate_engine);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = 0;
  v18[5] = 0;

  sub_2288562B8(a1, v18, v16, sub_22883885C, v15);
}

uint64_t sub_2288383B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

id sub_228838518()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RemoteExecutionService.__allocating_init(contextProvider:executorProviders:listener:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_2288386B0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t RemoteExecutionService.init(contextProvider:executorProviders:listener:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_2288386B0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t RemoteExecutionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2288386B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = [objc_opt_self() serviceListener];
  }

  *(v4 + 16) = v9;
  type metadata accessor for RemoteExecutionEngine();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v11 = type metadata accessor for RemoteExecutionService.ServiceDelegate();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtCC19HealthOrchestration22RemoteExecutionService15ServiceDelegate_engine] = v10;
  v16.receiver = v12;
  v16.super_class = v11;
  v13 = a4;
  swift_unknownObjectRetain();

  v14 = objc_msgSendSuper2(&v16, sel_init);
  *(v4 + 24) = v14;
  [*(v4 + 16) setDelegate_];

  return v4;
}

uint64_t sub_228838938()
{
  sub_22887FC90();
  sub_228805DB4(v2, *v0);
  return sub_22887FCD0();
}

uint64_t sub_228838998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228805CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2288389CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_228838A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ValueAnchor.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v16[1] = a2;
  v17 = v6;
  v18 = v5;
  v20 = v5;
  v21 = v6;
  type metadata accessor for ValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_22887FB70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22887FCF0();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  *&v20 = *v3;
  *(&v20 + 1) = v11;
  *&v21 = v12;
  *(&v21 + 1) = v13;
  v22 = 0;
  sub_228806798();

  v14 = v19;
  sub_22887FB50();

  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_22887FB50();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ValueAnchor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v34 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v12;
  v44 = v13;
  *&v45 = v14;
  *(&v45 + 1) = v15;
  type metadata accessor for ValueAnchor.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_22887FAF0();
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v31 - v16;
  v38 = a2;
  v39 = a3;
  v43 = a2;
  v44 = a3;
  *&v45 = a4;
  *(&v45 + 1) = a5;
  v18 = type metadata accessor for ValueAnchor();
  v33 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v17;
  v21 = v42;
  sub_22887FCE0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v18;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v42 = a1;
  v46 = 0;
  sub_22880640C();
  v25 = v40;
  sub_22887FAE0();
  v26 = v44;
  *v20 = v43;
  *(v20 + 1) = v26;
  *(v20 + 1) = v45;
  LOBYTE(v43) = 1;
  v27 = v24;
  sub_22887FAE0();
  (*(v22 + 8))(v25, v41);
  v28 = v32;
  (*(v34 + 32))(&v20[*(v32 + 52)], v23, v27);
  v29 = v33;
  (*(v33 + 16))(v35, v20, v28);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v29 + 8))(v20, v28);
}

uint64_t ValueAnchor.description.getter()
{
  MEMORY[0x22AAC0340](0x636E4165756C6156, 0xEC00000028726F68);
  sub_22887FBD0();
  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_228839124(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

HealthOrchestration::SerialDispatcher::Errors_optional __swiftcall SerialDispatcher.Errors.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SerialDispatcher.__allocating_init(providers:queue:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t SerialDispatcher.init(providers:queue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_2288392A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_22887F240();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22887F270();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287F5EE4(a1, v23);
  sub_2287E766C(a2, v22);
  v13 = swift_allocObject();
  v14 = v23[4];
  *(v13 + 104) = v23[5];
  v15 = v23[7];
  *(v13 + 120) = v23[6];
  *(v13 + 136) = v15;
  v16 = v23[0];
  *(v13 + 40) = v23[1];
  v17 = v23[3];
  *(v13 + 56) = v23[2];
  *(v13 + 72) = v17;
  *(v13 + 88) = v14;
  *(v13 + 16) = v2;
  *(v13 + 152) = v24;
  *(v13 + 24) = v16;
  sub_2287EC014(v22, v13 + 160);
  aBlock[4] = sub_22883A3DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_7;
  v18 = _Block_copy(aBlock);

  sub_22887F260();
  v20 = MEMORY[0x277D84F90];
  sub_22883A444(qword_2813CF680, MEMORY[0x277D85198]);
  sub_22883A3EC();
  sub_22883A444(qword_2813CF5B0, sub_22883A3EC);
  sub_22887F820();
  MEMORY[0x22AAC0630](0, v12, v8, v18);
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_2288395F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v23[0] = a2[2];
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v23[4] = v9;
  v23[5] = v10;
  v11 = *a2;
  v12 = a2[1];
  sub_2287F5EE4(a2, v21);
  sub_2287E766C(a3, v20);
  v13 = swift_allocObject();
  v14 = v21[7];
  *(v13 + 112) = v21[6];
  *(v13 + 128) = v14;
  v15 = v22;
  v16 = v21[3];
  *(v13 + 48) = v21[2];
  *(v13 + 64) = v16;
  v17 = v21[5];
  *(v13 + 80) = v21[4];
  *(v13 + 96) = v17;
  v18 = v21[1];
  *(v13 + 16) = v21[0];
  *(v13 + 32) = v18;
  *(v13 + 144) = v15;
  *(v13 + 152) = a1;
  sub_2287EC014(v20, v13 + 160);

  sub_2288397E8((a2 + 8), v23, v11, v12, sub_22883A48C, v13);
}

uint64_t sub_228839740(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a2 + 120);
  if (a1)
  {
    v13[0] = a1;
    v14 = 1;
    v8 = a1;
  }

  else
  {
    sub_2287E766C(a2 + 64, v13);
    v14 = 0;
  }

  v7(a2, v13);
  sub_2287FE448(v13);
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_project_boxed_opaque_existential_1(a4, v9);
  return sub_228839F98(v11, a3, v9, v10);
}

void sub_2288397E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v8 = *(v6 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *a2;
    v12 = a2[1];
    v13 = v8 + 32;
    v42 = a2[3];
    v43 = a2[2];
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      sub_2287E766C(v13, &v44);
      v14 = v45;
      v15 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      if ((*(v15 + 8))(v14, v15) == v11 && v16 == v12)
      {
        break;
      }

      v18 = sub_22887FBF0();

      if (v18)
      {
        goto LABEL_12;
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1(&v44);
      v13 += 40;
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v37 = a5;
    sub_2287EC014(&v44, &v47);
    sub_2287EC014(&v47, v48);
    v22 = v49;
    v23 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v24 = (*(v23 + 16))(a3, a4, v22, v23);
    v25 = v24;
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = (v24 + 40);
      while (v27 < *(v25 + 16))
      {
        v29 = *v28;
        ObjectType = swift_getObjectType();
        v31 = *(v29 + 24);
        swift_unknownObjectRetain();
        v31(&v47, ObjectType, v29);
        if (v47 == v43 && *(&v47 + 1) == v42)
        {

LABEL_23:

          sub_228839C10(a1, v37, a6, ObjectType, v29);
          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        v33 = sub_22887FBF0();

        if (v33)
        {
          goto LABEL_23;
        }

        ++v27;
        swift_unknownObjectRelease();
        v28 += 2;
        if (v26 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_27;
    }

LABEL_21:

    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22887F370();
    v36 = [v34 initWithDomain:v35 code:1 userInfo:0];

    v37(v36);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
LABEL_10:
    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_22887F370();
    v21 = [v19 initWithDomain:v20 code:0 userInfo:0];

    a5(v21);
  }
}

uint64_t sub_228839B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228824980(a1, v6);
    if (*&v6[0])
    {
      v8[6] = v6[6];
      v8[7] = v6[7];
      v9 = v7;
      v8[2] = v6[2];
      v8[3] = v6[3];
      v8[4] = v6[4];
      v8[5] = v6[5];
      v8[0] = v6[0];
      v8[1] = v6[1];
      sub_2288392A4(v8, a3);

      return sub_2287F6C04(v8);
    }

    else
    {

      return sub_22883A37C(v6, sub_228822C70);
    }
  }

  return result;
}

void sub_228839C10(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22887F7D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v22 - v15;
  sub_2287E766C(a1, v25);
  sub_2287EC070(0, &qword_2813CF7F8);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    (*(a5 + 40))(v16, v23, v24, a4, a5);
    (*(v14 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v13, v9);
    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_22887F370();
    v21 = [v19 initWithDomain:v20 code:2 userInfo:0];

    v23(v21);
  }
}

uint64_t SerialDispatcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228839F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v7 = v25;
  v8 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_2287E766C(v24, v20);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_2287EC014(v20, v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_22887F7D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;

  WorkSource.fetchNextWorkPlan(completion:)(sub_22883A308, v10, v7, v8);

  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v21 = 0u;
    v22 = 0u;
    AssociatedConformanceWitness = 0;
  }

  else
  {
    *(&v22 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(v16 + 32))(v17, v15, AssociatedTypeWitness);
  }

  sub_22883A37C(&v21, sub_22883A314);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_22883A254()
{
  result = qword_27D852460;
  if (!qword_27D852460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852460);
  }

  return result;
}

void sub_22883A314()
{
  if (!qword_2813D1198)
  {
    sub_2287EC070(255, &qword_2813D11A0);
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D1198);
    }
  }
}

uint64_t sub_22883A37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22883A3EC()
{
  if (!qword_2813CF5C8)
  {
    sub_22887F240();
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF5C8);
    }
  }
}

uint64_t sub_22883A444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SimpleWorkPlan.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 SimpleWorkPlan.identifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t SimpleWorkPlan.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t SimpleWorkPlan.priority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

void __swiftcall SimpleWorkPlan.init(identifier:priority:)(HealthOrchestration::SimpleWorkPlan *__return_ptr retstr, HealthOrchestration::WorkPlanIdentifier identifier, HealthOrchestration::PriorityRuleSet priority)
{
  v3 = *(identifier.domain._countAndFlagsBits + 16);
  v4 = *identifier.domain._object;
  v5 = *(identifier.domain._object + 8);
  retstr->identifier.domain = *identifier.domain._countAndFlagsBits;
  retstr->identifier.code = v3;
  retstr->priority.orderedRules._rawValue = v4;
  retstr->priority.basePriority = v5;
}

void __swiftcall SimpleWorkPlan.init(domain:code:priority:)(HealthOrchestration::SimpleWorkPlan *__return_ptr retstr, Swift::String domain, Swift::Int code, HealthOrchestration::PriorityRuleSet priority)
{
  v4 = *priority.orderedRules._rawValue;
  v5 = *(priority.orderedRules._rawValue + 8);
  retstr->identifier.domain = domain;
  retstr->identifier.code = code;
  retstr->priority.orderedRules._rawValue = v4;
  retstr->priority.basePriority = v5;
}

void __swiftcall SimpleWorkPlan.merged(with:)(HealthOrchestration::SimpleWorkPlan *__return_ptr retstr, HealthOrchestration::SimpleWorkPlan *with)
{
  object = with->identifier.domain._object;
  code = with->identifier.code;
  rawValue = with->priority.orderedRules._rawValue;
  basePriority = with->priority.basePriority;
  retstr->identifier.domain._countAndFlagsBits = with->identifier.domain._countAndFlagsBits;
  retstr->identifier.domain._object = object;
  retstr->identifier.code = code;
  retstr->priority.orderedRules._rawValue = rawValue;
  retstr->priority.basePriority = basePriority;
}

uint64_t sub_22883A610()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_22883A650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_22887FBF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22887FBF0();

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

uint64_t sub_22883A734(uint64_t a1)
{
  v2 = sub_22883AED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22883A770(uint64_t a1)
{
  v2 = sub_22883AED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SimpleWorkPlan.encode(to:)(void *a1)
{
  sub_22883AF28(0, &qword_27D852468, MEMORY[0x277D84538]);
  v4 = v3;
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v13 = v1[3];
  v19 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22883AED4();

  sub_22887FCF0();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v20 = 0;
  sub_228803064();
  v10 = v15;
  sub_22887FB50();
  if (v10)
  {

    return (*(v14 + 8))(v6, v4);
  }

  else
  {
    v12 = v14;

    v16 = v13;
    LOBYTE(v17) = v19;
    v20 = 1;
    sub_2288030B8();

    sub_22887FB50();

    return (*(v12 + 8))(v6, v4);
  }
}

uint64_t SimpleWorkPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22883AF28(0, &qword_27D852478, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22883AED4();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_228803528();
  sub_22887FAE0();
  v11 = v17;
  v10 = v18;
  v16 = v19;
  v20 = 1;
  sub_22880357C();
  sub_22887FAE0();
  (*(v7 + 8))(v9, v6);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22883AC08@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_22883AC1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t sub_22883AC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
}

uint64_t SimpleWorkPlan.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22887F8A0();

  MEMORY[0x22AAC0340](40, 0xE100000000000000);
  v3 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v3);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  MEMORY[0x22AAC0340](v2, v1);

  MEMORY[0x22AAC0340](10272, 0xE200000000000000);
  v4 = PriorityRuleSet.description.getter();
  MEMORY[0x22AAC0340](v4);

  MEMORY[0x22AAC0340](15913, 0xE200000000000000);
  return 0x616C506B726F573CLL;
}

uint64_t _s19HealthOrchestration14SimpleWorkPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

LABEL_9:

    if (sub_228803A60(v3, v5))
    {
      v11 = sub_2287ECD4C(v4, v7);

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  v9 = sub_22887FBF0();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_22883AED4()
{
  result = qword_27D852470;
  if (!qword_27D852470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852470);
  }

  return result;
}

void sub_22883AF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22883AED4();
    v7 = a3(a1, &type metadata for SimpleWorkPlan.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22883AF8C(uint64_t a1)
{
  *(a1 + 8) = sub_22883AFBC();
  result = sub_22883B010();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22883AFBC()
{
  result = qword_2813D11A8;
  if (!qword_2813D11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D11A8);
  }

  return result;
}

unint64_t sub_22883B010()
{
  result = qword_2813D11B0[0];
  if (!qword_2813D11B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D11B0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22883B078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22883B0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22883B128()
{
  result = qword_27D852480;
  if (!qword_27D852480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852480);
  }

  return result;
}

unint64_t sub_22883B180()
{
  result = qword_27D852488;
  if (!qword_27D852488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852488);
  }

  return result;
}

unint64_t sub_22883B1D8()
{
  result = qword_27D852490;
  if (!qword_27D852490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D852490);
  }

  return result;
}

uint64_t RequestedWorkExecutor.RequestedWork.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RequestedWorkExecutor.RequestedWork.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t RequestedWorkExecutor.RequestedWork.work.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RequestedWorkExecutor.RequestedWork.init(identifier:priority:work:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

uint64_t RequestedWorkExecutor.__allocating_init(inputSignal:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for RequestedWorkExecutor.Planner();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v5 = sub_228809D24(MEMORY[0x277D84F90]);
  sub_22883BBF8();
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v3 + 16) = v6;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t RequestedWorkExecutor.init(inputSignal:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for RequestedWorkExecutor.Planner();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_228809D24(MEMORY[0x277D84F90]);
  sub_22883BBF8();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v2 + 16) = v5;
  *(v1 + 24) = v2;
  return v1;
}

void RequestedWorkExecutor.enqueue(_:)()
{
  v1 = *(*(v0 + 24) + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_22883BC58((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  RequestedWorkInputSignal.didEnqueueWork()();
}

void RequestedWorkExecutor.identifier.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "RequestedWork");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t RequestedWorkExecutor.run(_:completion:)(__int128 *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  v16 = *(a1 + 32);
  v7 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v7 + 8);
  sub_22883BC74(&v7[4], &v11);
  os_unfair_lock_unlock(v7 + 8);
  v8 = v12;
  if (!v12)
  {
    return a2(0);
  }

  v9 = v11;
  v13(a2, a3);
  return sub_22883BC90(v9, v8);
}

uint64_t RequestedWorkExecutor.deinit()
{

  return v0;
}

uint64_t RequestedWorkExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22883B5E4(char **a1, __int128 *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_228830338(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_228830338((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[48 * v6];
  v8 = *a2;
  v9 = a2[2];
  *(v7 + 3) = a2[1];
  *(v7 + 4) = v9;
  *(v7 + 2) = v8;
  *a1 = v4;
  return sub_22883C000(a2, &v11);
}

uint64_t sub_22883B6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 8);
  if (*(v6 + 16) && (v7 = sub_2287E5E2C(*a2, a2[1]), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56) + 48 * v7;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v15 = *(v9 + 24);
    v16 = *v9;
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  sub_228848A80(v4, v5, v17);
  result = sub_22883BC90(v17[0], v17[1]);
  *a3 = v16;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v15;
  a3[4] = v12;
  a3[5] = v13;
  return result;
}

uint64_t RequestedWorkExecutor.Planner.workPlans(for:anchor:previous:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_22883B7FC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));
  return v3;
}

uint64_t sub_22883B7FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (!v5)
  {
    v47 = v4;
LABEL_25:

    *a2 = v47;
    return result;
  }

  v40 = a2;
  v48 = v4;
  sub_22881DA3C(0, v5, 0);
  v6 = v48;
  v42 = v3;
  v7 = (v3 + 56);
  do
  {
    v9 = *(v7 - 3);
    v8 = *(v7 - 2);
    v10 = *(v7 - 1);
    v11 = *v7;
    v13 = *(v48 + 16);
    v12 = *(v48 + 24);

    if (v13 >= v12 >> 1)
    {
      sub_22881DA3C((v12 > 1), v13 + 1, 1);
    }

    v7 += 48;
    *(v48 + 16) = v13 + 1;
    v14 = v48 + 40 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v8;
    *(v14 + 48) = 0;
    *(v14 + 56) = v10;
    *(v14 + 64) = v11;
    --v5;
  }

  while (v5);
  v15 = v42;
  v41 = *(v42 + 16);
  if (!v41)
  {
    v47 = v48;
LABEL_24:
    a2 = v40;
    goto LABEL_25;
  }

  v16 = 0;
  v17 = (v42 + 72);
  while (v16 < *(v15 + 16))
  {
    v43 = v16;
    v47 = v6;
    v20 = *(v17 - 5);
    v19 = *(v17 - 4);
    v21 = *(v17 - 3);
    v44 = *(v17 - 16);
    v22 = *v17;
    v45 = *(v17 - 1);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a1[1];
    v26 = sub_2287E5E2C(v20, v19);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_27;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v24;
        if (v25)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_2288535E8();
        v33 = v24;
        if (v30)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_228850E80(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2287E5E2C(v20, v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
      v33 = v24;
      if (v30)
      {
LABEL_8:
        v18 = v33[7] + 48 * v26;
        *v18 = v20;
        *(v18 + 8) = v19;
        *(v18 + 16) = v21;
        *(v18 + 24) = v44;
        *(v18 + 32) = v45;
        *(v18 + 40) = v22;

        goto LABEL_9;
      }
    }

    v33[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v33[6] + 16 * v26);
    *v34 = v20;
    v34[1] = v19;
    v35 = v33[7] + 48 * v26;
    *v35 = v20;
    *(v35 + 8) = v19;
    *(v35 + 16) = v21;
    *(v35 + 24) = v44;
    *(v35 + 32) = v45;
    *(v35 + 40) = v22;

    v36 = v33[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_28;
    }

    v33[2] = v38;
LABEL_9:
    v15 = v42;
    v16 = v43 + 1;
    v6 = v47;
    a1[1] = v33;
    v17 += 6;
    if (v41 == v43 + 1)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_22887FC20();
  __break(1u);
  return result;
}