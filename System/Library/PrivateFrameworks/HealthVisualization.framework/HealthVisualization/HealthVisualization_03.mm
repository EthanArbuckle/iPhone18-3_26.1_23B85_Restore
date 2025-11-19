uint64_t sub_1D147E444@<X0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>)
{
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 65);
  v11 = *(a1 + 73);
  v12 = a1[79];
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = *a4;
  v17 = a4[1];
  v18 = a4[2];
  v86 = a5[1];
  v88 = *a5;
  v87 = *(a5 + 32);
  v89 = *(a5 + 5);
  v19 = dbl_1D15ACF10[*a1];
  v20 = dbl_1D15ACF58[v12];
  v91 = dbl_1D15ACF78[v12];
  v21 = dbl_1D15ACF40[a1[1]];
  v118 = *(a2 + 28);
  v22 = a2[13];
  v116 = a2[12];
  v117 = v22;
  v23 = a2[11];
  v114 = a2[10];
  v115 = v23;
  v24 = a2[9];
  v112 = a2[8];
  v113 = v24;
  v25 = a2[7];
  v110 = a2[6];
  v111 = v25;
  v26 = a2[5];
  v108 = a2[4];
  v109 = v26;
  v27 = a2[1];
  v107[0] = *a2;
  v107[1] = v27;
  v28 = a2[3];
  v107[2] = a2[2];
  v107[3] = v28;
  v29 = sub_1D147EC8C(v107);
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  if (v29 != 1)
  {
    v31 = v21 + *(&v108 + 1) + *(&v110 + 1) + 2.0;
    v32 = (v113 & 1) != 0 ? 0.0 : v21 + *(&v108 + 1) + *(&v110 + 1) + 2.0;
    if (BYTE8(v114))
    {
      v31 = 0.0;
    }
  }

  v90 = v31;
  v33 = 0.0;
  v34 = 0.0;
  if (v13)
  {
    if (*(v13 + 16))
    {
      v81 = v18;
      v35 = v10;
      v36 = v9;
      v37 = v11;
      v83 = v8;

      v38 = sub_1D15A3EF8();

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v39 = sub_1D15A3E48();
      [v38 sizeWithAttributes_];
      v34 = v40;

      v11 = v37;
      v9 = v36;
      v10 = v35;
      v18 = v81;

      v8 = v83;
    }

    v34 = v21 + v34;
    *&v92 = v13;
    *(&v92 + 1) = v14;
    *&v93 = v15;
    DiagramPointAnnotations.horizontalInsets()();
    v33 = v41;
  }

  v84 = v30;
  if (v16)
  {
    v42 = v17;
    v43 = v32;
    v44 = v33;
    v45 = v20;
    v46 = v42;
    if (*(v16 + 16))
    {
      v47 = v11;

      v48 = sub_1D15A3EF8();

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v49 = sub_1D15A3E48();
      [v48 sizeWithAttributes_];
      v51 = v50;

      v11 = v47;
    }

    else
    {
      v51 = 0.0;
    }

    v53 = v21 + v51;
    *&v92 = v16;
    *(&v92 + 1) = v46;
    *&v93 = v18;
    DiagramPointAnnotations.horizontalInsets()();
    v52 = v54;
    v82 = v55;
    v20 = v45;
    v33 = v44;
    v32 = v43;
  }

  else
  {
    v82 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
  }

  v56 = v19 + v20;
  v85 = v19;
  if ((v10 & 0xFE00000000 | 0x100000000) == 0x300000000)
  {
    v57 = v56 + v32 + v53;
    v58 = 0.0;
  }

  else
  {
    v59 = 0.0;
    if ((v10 & 0xFF0000000000) == 0)
    {
      v59 = 3.5;
    }

    v58 = v59 + v19 + v32 + v53 + 2.0;
    v57 = v56;
  }

  v60 = a2[13];
  v104 = a2[12];
  v105 = v60;
  v106 = *(a2 + 28);
  v61 = a2[9];
  v100 = a2[8];
  v101 = v61;
  v62 = a2[11];
  v102 = a2[10];
  v103 = v62;
  v63 = a2[5];
  v96 = a2[4];
  v97 = v63;
  v64 = a2[7];
  v98 = a2[6];
  v99 = v64;
  v65 = a2[1];
  v92 = *a2;
  v93 = v65;
  v66 = a2[3];
  v94 = a2[2];
  v95 = v66;
  v67 = 0.0;
  if (sub_1D147EC8C(&v92) != 1)
  {
    v68 = *&v96;
    if (*&v96 <= *&v97)
    {
      v68 = *&v97;
    }

    if (v68 <= *&v98)
    {
      v68 = *&v98;
    }

    if (v68 <= *&v99)
    {
      v68 = *&v99;
    }

    v67 = v68 * 0.5 + 2.0;
  }

  sub_1D1459D3C();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D15ACDD0;
  *(v69 + 48) = v86;
  *(v69 + 32) = v88;
  *(v69 + 64) = v87;
  *(v69 + 72) = v89;
  *(v69 + 80) = v8;

  *&v70 = COERCE_DOUBLE(sub_1D1523900(v69, v9));
  v72 = v71;
  swift_setDeallocating();
  sub_1D145A100(v69 + 32);
  result = swift_deallocClassInstance();
  if ((v10 & 0xFF00000000) == 0x300000000 || (v11 & 0xFF000000) == 0x2000000)
  {
    v77 = *&v70;
    if (v72 & 1 | (v9 != 0))
    {
      v77 = -0.0;
    }

    v74 = v91;
    v78 = v91 + v77;
    if (v52 > v33)
    {
      v79 = v52;
    }

    else
    {
      v79 = v33;
    }

    v76 = v79 + v67 + v78;
    v80 = v84;
    if (v82 > v84)
    {
      v80 = v82;
    }

    v67 = v80 + v67;
    v75 = 0.0;
    goto LABEL_42;
  }

  v74 = v91;
  if (v72 & 1 | (v9 != 0))
  {
    v75 = v85 + v67 + 15.0;
    v76 = v91;
LABEL_42:
    *a6 = v56 + v90 + v34;
    a6[1] = v76;
    a6[2] = v57;
    a6[3] = v74 + v67;
    a6[4] = v75;
    a6[5] = v58;
    return result;
  }

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t sub_1D147E9E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D147EA24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D147EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1D147EBBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1D147EC04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D147EC8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1D147ECA4(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D147ECCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D147EEB8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D147ED3C()
{
  result = qword_1EE059790;
  if (!qword_1EE059790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059790);
  }

  return result;
}

void sub_1D147EEB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Localization.localize(_:substitutions:mySelf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D15A3268();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_initStaticObject();
  v12 = sub_1D144E91C(a1, a2, a4, 0, 0);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    a1 = sub_1D144F0D0(v12, v13, a3);
  }

  else
  {

    sub_1D15A3238();

    v15 = sub_1D15A3248();
    v16 = sub_1D15A42F8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1D1479780(a1, a2, &v21);
      _os_log_impl(&dword_1D1446000, v15, v16, "Localization: no localization found for '%{public}s'", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D388BF00](v18, -1, -1);
      MEMORY[0x1D388BF00](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  return a1;
}

uint64_t sub_1D147F134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D15A3268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00]();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D144E91C(a1, a2, a4, a5, a6);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    a1 = sub_1D144F0D0(v16, v17, a3);
  }

  else
  {

    sub_1D15A3238();

    v19 = sub_1D15A3248();
    v20 = sub_1D15A42F8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1D1479780(a1, a2, &v25);
      _os_log_impl(&dword_1D1446000, v19, v20, "Localization: no localization found for '%{public}s'", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D388BF00](v22, -1, -1);
      MEMORY[0x1D388BF00](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
  }

  return a1;
}

uint64_t static Localization.localize(stringsDictKey:stringsDictFormatArguments:substitutions:mySelf:tableName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v12 = sub_1D15A3268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_initStaticObject();
  v16 = sub_1D144E91C(a1, a2, a5, a6, a7);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = sub_1D15A3F48();
    v21 = v20;

    a1 = sub_1D144F0D0(v19, v21, v27);
  }

  else
  {

    sub_1D15A3218();

    v22 = sub_1D15A3248();
    v23 = sub_1D15A4318();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1D1479780(a1, a2, &v28);
      _os_log_impl(&dword_1D1446000, v22, v23, "Localization: no localization found for '%{public}s'", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D388BF00](v25, -1, -1);
      MEMORY[0x1D388BF00](v24, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
  }

  return a1;
}

id static Localization.defaultLocalizationBundle.getter()
{
  if (qword_1EE05B370 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE05B378;

  return v1;
}

unint64_t sub_1D147F608(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D15A4028();
  }

  __break(1u);
  return result;
}

uint64_t Localization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Localization.localize(_:replacements:mySelf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  sub_1D1482C08(0, &qword_1EC6301D0, &qword_1EC6301D8, 0x1E696AFD0, MEMORY[0x1E6968070]);
  v107 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v94 - v9;
  v103 = sub_1D15A3268();
  v10 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v109 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  if (!a3)
  {
    v22 = MEMORY[0x1E69E7CC8];
LABEL_36:
    swift_initStaticObject();
    v86 = sub_1D144E91C(a1, a2, v110, 0, 0);
    v88 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v88 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (v88)
    {
      a1 = sub_1D144F0D0(v86, v87, v22);
    }

    else
    {

      sub_1D15A3238();

      v89 = sub_1D15A3248();
      v90 = sub_1D15A42F8();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v114[0] = v92;
        *v91 = 136446210;
        *(v91 + 4) = sub_1D1479780(a1, a2, v114);
        _os_log_impl(&dword_1D1446000, v89, v90, "Localization: no localization found for '%{public}s'", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1D388BF00](v92, -1, -1);
        MEMORY[0x1D388BF00](v91, -1, -1);
      }

      (*(v10 + 8))(v12, v103);
    }

    return a1;
  }

  v100 = v15;
  v96 = v12;
  v98 = a1;
  v99 = a2;
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  v101 = (v8 + 8);
  v97 = v10;
  v95 = (v10 + 8);

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC8];
  *&v23 = 136446210;
  v94 = v23;
  v24 = a3;
  v105 = a3 + 64;
  v111 = v20;
  v102 = a3;
  while (v19)
  {
    v27 = v21;
LABEL_12:
    v28 = __clz(__rbit64(v19)) | (v27 << 6);
    v29 = *(v24 + 56);
    v30 = (*(v24 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v112 = v32;
    v113 = v31;
    v33 = v29 + 32 * v28;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    if (v37)
    {
      if (v37 == 1)
      {

        v38 = v36;
        v39 = v34;
        sub_1D14827E4(v34, v35, v38, 1u);
        goto LABEL_21;
      }

      v104 = v34;
      v49 = objc_allocWithZone(MEMORY[0x1E696AFD0]);

      sub_1D14827E4(v34, v35, v36, 2u);
      v50 = sub_1D15A3EF8();
      v108 = v35;
      v51 = v50;
      v52 = [v49 initWithSymbol_];

      sub_1D1453BA0(0, &qword_1EC6301D8);
      v53 = v52;
      v54 = v106;
      sub_1D15A2208();
      v55 = v107;
      v56 = sub_1D15A21F8();
      v57 = v36;
      v58 = [v109 stringFromMeasurement_];

      v44 = sub_1D15A3F38();
      v35 = v59;

      v24 = v102;
      v60 = v54;
      v16 = v105;
      v61 = v55;
      v32 = v112;
      (*v101)(v60, v61);
      v45 = v104;
      v46 = v108;
      v47 = v57;
      v48 = 2;
      goto LABEL_20;
    }

    swift_initStaticObject();

    sub_1D14827E4(v34, v35, v36, 0);
    v40 = sub_1D144E91C(v34, v35, v110, 0, 0);
    v41 = v35;
    v35 = v42;
    v43 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v43 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44 = v40;
      v45 = v34;
      v46 = v41;
      v47 = v36;
      v48 = 0;
LABEL_20:
      sub_1D1482804(v45, v46, v47, v48);
      v39 = v44;
      goto LABEL_21;
    }

    v76 = v41;

    sub_1D15A3238();

    v77 = sub_1D15A3248();
    v78 = sub_1D15A42F8();
    v108 = v76;
    sub_1D1482804(v34, v76, v36, 0);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v114[0] = v80;
      *v79 = v94;
      v39 = v34;
      v81 = v34;
      v82 = v108;
      *(v79 + 4) = sub_1D1479780(v81, v108, v114);
      _os_log_impl(&dword_1D1446000, v77, v78, "Localization: no localization found for '%{public}s'", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v83 = v80;
      v24 = v102;
      MEMORY[0x1D388BF00](v83, -1, -1);
      v84 = v79;
      v32 = v112;
      MEMORY[0x1D388BF00](v84, -1, -1);

      (*v95)(v100, v103);
      v35 = v82;
    }

    else
    {
      v39 = v34;

      (*v95)(v100, v103);
      v35 = v108;
    }

    v16 = v105;
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114[0] = v22;
    v63 = sub_1D14800A4(v113, v32);
    v65 = v22[2];
    v66 = (v64 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
      goto LABEL_45;
    }

    v69 = v64;
    if (v22[3] >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = v63;
        sub_1D1481CB0();
        v63 = v85;
      }
    }

    else
    {
      sub_1D1480984(v68, isUniquelyReferenced_nonNull_native);
      v63 = sub_1D14800A4(v113, v112);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_47;
      }
    }

    v19 &= v19 - 1;
    if (v69)
    {
      v25 = v63;

      v22 = v114[0];
      v26 = (*(v114[0] + 56) + 16 * v25);
      *v26 = v39;
      v26[1] = v35;
    }

    else
    {
      v22 = v114[0];
      *(v114[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v71 = (v22[6] + 16 * v63);
      v72 = v112;
      *v71 = v113;
      v71[1] = v72;
      v73 = (v22[7] + 16 * v63);
      *v73 = v39;
      v73[1] = v35;
      v74 = v22[2];
      v67 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v67)
      {
        goto LABEL_46;
      }

      v22[2] = v75;
    }

    v21 = v27;
    v20 = v111;
  }

  while (1)
  {
    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v27 >= v20)
    {

      a1 = v98;
      a2 = v99;
      v10 = v97;
      v12 = v96;
      goto LABEL_36;
    }

    v19 = *(v16 + 8 * v27);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1D15A4BF8();
  __break(1u);
  return result;
}

unint64_t sub_1D147FF58(unsigned __int8 a1)
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  v2 = sub_1D15A4CB8();

  return sub_1D14802F0(a1, v2);
}

unint64_t sub_1D14800A4(uint64_t a1, uint64_t a2)
{
  sub_1D15A4C88();
  sub_1D15A3F88();
  v4 = sub_1D15A4CB8();

  return sub_1D1480578(a1, a2, v4);
}

unint64_t sub_1D148011C(uint64_t a1)
{
  v2 = sub_1D15A4C78();

  return sub_1D1480630(a1, v2);
}

unint64_t sub_1D1480160(uint64_t a1)
{
  sub_1D15A2A48();
  sub_1D1482994(&qword_1EE059470);
  v2 = sub_1D15A3E88();

  return sub_1D148069C(a1, v2);
}

unint64_t sub_1D1480284(unsigned __int8 a1)
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](a1);
  v2 = sub_1D15A4CB8();

  return sub_1D1480914(a1, v2);
}

unint64_t sub_1D14802F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x57676E696C6C6F72;
          v10 = 7038309;
          goto LABEL_20;
        }

        if (v7 == 4)
        {
          v8 = 0x4D676E696C6C6F72;
        }

        else
        {
          v8 = 0x48676E696C6C6F72;
        }

        if (v7 == 4)
        {
          v9 = 0xEC00000068746E6FLL;
        }

        else
        {
          v9 = 0xEF72616559666C61;
        }
      }

      else
      {
        if (!*(*(v2 + 48) + v4))
        {
          v8 = 0x6669636570736E75;
          v10 = 6579561;
LABEL_20:
          v9 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          goto LABEL_21;
        }

        if (v7 == 1)
        {
          v8 = 0x656D69546C6C61;
        }

        else
        {
          v8 = 0x7961646F74;
        }

        if (v7 == 1)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

LABEL_21:
      v11 = 0x4D676E696C6C6F72;
      if (v6 != 4)
      {
        v11 = 0x48676E696C6C6F72;
      }

      v12 = 0xEF72616559666C61;
      if (v6 == 4)
      {
        v12 = 0xEC00000068746E6FLL;
      }

      if (v6 == 3)
      {
        v11 = 0x57676E696C6C6F72;
        v12 = 0xEB000000006B6565;
      }

      v13 = 0x656D69546C6C61;
      if (v6 == 1)
      {
        v14 = 0xE700000000000000;
      }

      else
      {
        v13 = 0x7961646F74;
        v14 = 0xE500000000000000;
      }

      if (!v6)
      {
        v13 = 0x6669636570736E75;
        v14 = 0xEB00000000646569;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v6 <= 2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v8 == v15 && v9 == v16)
      {

        return v4;
      }

      v17 = sub_1D15A4BA8();

      if ((v17 & 1) == 0)
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

unint64_t sub_1D1480578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D15A4BA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D1480630(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D148069C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1D15A2A48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1D1482994(&qword_1EE059468);
      v16 = sub_1D15A3EE8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D1480848(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1D1453BA0(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1D15A4598();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D1480914(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1D1480984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1482B2C(0, &qword_1EE05ACB8);
  v37 = a2;
  result = sub_1D15A4948();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D15A4C88();
      sub_1D15A3F88();
      result = sub_1D15A4CB8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1480C54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1482A70(0, &qword_1EC6301E8, sub_1D1482AD8);
  result = sub_1D15A4948();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 216 * v20;
      v42 = *(v22 + 160);
      v43 = *(v22 + 176);
      v44 = *(v22 + 192);
      v45 = *(v22 + 208);
      v38 = *(v22 + 96);
      v39 = *(v22 + 112);
      v40 = *(v22 + 128);
      v41 = *(v22 + 144);
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v37 = *(v22 + 80);
      v32 = *v22;
      v33 = *(v22 + 16);
      sub_1D15A4C88();
      sub_1D15A3F88();

      result = sub_1D15A4CB8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 216 * v15;
      *(v16 + 160) = v42;
      *(v16 + 176) = v43;
      *(v16 + 192) = v44;
      *(v16 + 208) = v45;
      *(v16 + 96) = v38;
      *(v16 + 112) = v39;
      *(v16 + 128) = v40;
      *(v16 + 144) = v41;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *(v16 + 80) = v37;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1481054(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1482B2C(0, &qword_1EC6301E0);
  v36 = a2;
  result = sub_1D15A4948();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v38 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v37 = *(v22 + 25);
      v25 = *(v22 + 32);
      if ((v36 & 1) == 0)
      {
      }

      result = sub_1D15A4C78();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v38;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 25) = v37;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1481328(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1D15A2B48();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A2A48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D14829D8();
  v47 = a2;
  result = sub_1D15A4948();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1D1482994(&qword_1EE059470);
      result = sub_1D15A3E88();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D14817B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1482890();
  result = sub_1D15A4948();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1D15A4588();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D1481A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1482A70(0, &qword_1EE0596E8, sub_1D148283C);
  result = sub_1D15A4948();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D15A4C88();
      MEMORY[0x1D388B000](v20);
      result = sub_1D15A4CB8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void *sub_1D1481CB0()
{
  v1 = v0;
  sub_1D1482B2C(0, &qword_1EE05ACB8);
  v2 = *v0;
  v3 = sub_1D15A4938();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D1481E38()
{
  v1 = v0;
  sub_1D1482A70(0, &qword_1EC6301E8, sub_1D1482AD8);
  v2 = *v0;
  v3 = sub_1D15A4938();
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
    for (i = (v9 + 63) >> 6; v11; *(v18 + 16) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 216 * v14;
      v29 = *(v17 + 160);
      v30 = *(v17 + 176);
      v31 = *(v17 + 192);
      v32 = *(v17 + 208);
      v25 = *(v17 + 96);
      v26 = *(v17 + 112);
      v27 = *(v17 + 128);
      v28 = *(v17 + 144);
      v21 = *(v17 + 32);
      v22 = *(v17 + 48);
      v23 = *(v17 + 64);
      v24 = *(v17 + 80);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v18 = *(v4 + 56) + 216 * v14;
      *(v18 + 160) = v29;
      *(v18 + 176) = v30;
      *(v18 + 192) = v31;
      *(v18 + 208) = v32;
      *(v18 + 96) = v25;
      *(v18 + 112) = v26;
      *(v18 + 128) = v27;
      *(v18 + 144) = v28;
      *(v18 + 32) = v21;
      *(v18 + 48) = v22;
      *(v18 + 64) = v23;
      *(v18 + 80) = v24;
      *v18 = v19;
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

void *sub_1D148203C()
{
  v1 = v0;
  sub_1D1482B2C(0, &qword_1EC6301E0);
  v2 = *v0;
  v3 = sub_1D15A4938();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 25);
        v22 = *(v18 + 32);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v20;
        *(v24 + 25) = v21;
        *(v24 + 32) = v22;
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

char *sub_1D14821DC()
{
  v1 = v0;
  v41 = sub_1D15A2B48();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D15A2A48();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14829D8();
  v4 = *v0;
  v5 = sub_1D15A4938();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1D1482524()
{
  v1 = v0;
  sub_1D1482890();
  v2 = *v0;
  v3 = sub_1D15A4938();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1D1482678()
{
  v1 = v0;
  sub_1D1482A70(0, &qword_1EE0596E8, sub_1D148283C);
  v2 = *v0;
  v3 = sub_1D15A4938();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

uint64_t sub_1D14827E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D1482804(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1D148283C()
{
  result = qword_1EE05A288;
  if (!qword_1EE05A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A288);
  }

  return result;
}

void sub_1D1482890()
{
  if (!qword_1EE056490)
  {
    sub_1D1453BA0(255, &qword_1EE05B458);
    sub_1D1453BA0(255, &qword_1EE05AD08);
    sub_1D148292C();
    v0 = sub_1D15A4978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056490);
    }
  }
}

unint64_t sub_1D148292C()
{
  result = qword_1EE056750;
  if (!qword_1EE056750)
  {
    sub_1D1453BA0(255, &qword_1EE05B458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056750);
  }

  return result;
}

uint64_t sub_1D1482994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D15A2A48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D14829D8()
{
  if (!qword_1EE0564A0)
  {
    sub_1D15A2A48();
    sub_1D15A2B48();
    sub_1D1482994(&qword_1EE059470);
    v0 = sub_1D15A4978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0564A0);
    }
  }
}

void sub_1D1482A70(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D15A4978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D1482AD8()
{
  result = qword_1EE056CF8;
  if (!qword_1EE056CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056CF8);
  }

  return result;
}

void sub_1D1482B2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D15A4978();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D1482B80(uint64_t a1)
{
  sub_1D1482C08(0, &qword_1EE0564C0, &qword_1EE05ACD0, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1482C08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1453BA0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1482D40(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1486774(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t ActivitySummarySnidgetViewModelExtractor.Metadata.init(hasData:relevantDateInterval:selectionDateInterval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v50 = a3;
  v7 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69A3D00];
  sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v43 - v11;
  v12 = sub_1D15A2CA8();
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6968130];
  sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_1D15A22A8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  *a4 = a1;
  v25 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
  v26 = a4;
  v27 = &a4[*(v25 + 20)];
  v28 = a2;
  v29 = a2;
  v30 = v50;
  sub_1D1482D40(v29, v27, &qword_1EE05B3E8, v9);
  sub_1D1482D40(v30, v18, &qword_1EE05B520, v15);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v43 = v19;
    sub_1D1483338(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v31 = v28;
    v32 = v47;
    sub_1D1482D40(v28, v47, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v33 = v48;
    if ((*(v49 + 48))(v32, 1, v48) == 1)
    {
      sub_1D1483338(v30, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v34 = MEMORY[0x1E69A3D00];
      sub_1D1483338(v28, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      sub_1D1483338(v32, &qword_1EE05B3E8, v34);
      return (*(v20 + 56))(&v26[*(v25 + 24)], 1, 1, v43);
    }

    else
    {
      v38 = v49;
      v39 = v45;
      (*(v49 + 32))(v45, v32, v33);
      v40 = *(v25 + 24);
      v41 = v44;
      sub_1D15A2C98();
      sub_1D15A2258();
      v42 = v43;
      (*(v20 + 8))(v41, v43);
      sub_1D15A2278();
      sub_1D1483338(v50, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D1483338(v31, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      (*(v38 + 8))(v39, v33);
      return (*(v20 + 56))(&v26[v40], 0, 1, v42);
    }
  }

  else
  {
    sub_1D1483338(v30, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1483338(v28, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v36 = *(v20 + 32);
    v36(v24, v18, v19);
    v37 = *(v25 + 24);
    v36(&v26[v37], v24, v19);
    return (*(v20 + 56))(&v26[v37], 0, 1, v19);
  }
}

uint64_t sub_1D1483338(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1486774(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1483394@<X0>(_BYTE *a1@<X8>)
{
  v55 = a1;
  v1 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D15A2CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - v10;
  v11 = MEMORY[0x1E6968130];
  sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = MEMORY[0x1E69A3D00];
  sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v50 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v52 = v3;
  v53 = v4;
  (*(v4 + 56))(&v46 - v23, 1, 1, v3, v22);
  v54 = *(v7 + 56);
  v54(v17, 1, 1, v6);
  v25 = v55;
  *v55 = 0;
  v26 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
  v27 = v18;
  v28 = v6;
  sub_1D1482D40(v24, &v25[*(v26 + 20)], &qword_1EE05B3E8, v27);
  sub_1D1482D40(v17, v14, &qword_1EE05B520, v11);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    v51 = (v7 + 56);
    v46 = v6;
    sub_1D1483338(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v29 = v50;
    sub_1D1482D40(v24, v50, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v30 = v52;
    if ((*(v53 + 48))(v29, 1, v52) == 1)
    {
      sub_1D1483338(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v31 = MEMORY[0x1E69A3D00];
      sub_1D1483338(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      sub_1D1483338(v29, &qword_1EE05B3E8, v31);
      v32 = &v55[*(v26 + 24)];
      v33 = 1;
      v34 = v46;
    }

    else
    {
      v39 = v7;
      v40 = v53;
      v41 = v48;
      (*(v53 + 32))(v48, v29, v30);
      v42 = *(v26 + 24);
      v43 = v47;
      sub_1D15A2C98();
      sub_1D15A2258();
      v44 = v46;
      (*(v39 + 8))(v43, v46);
      v45 = v55;
      sub_1D15A2278();
      (*(v40 + 8))(v41, v30);
      sub_1D1483338(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D1483338(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      v32 = &v45[v42];
      v33 = 0;
      v34 = v44;
    }

    return (v54)(v32, v33, 1, v34);
  }

  else
  {
    sub_1D1483338(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1483338(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v35 = *(v7 + 32);
    v36 = v51;
    v35(v51, v14, v6);
    v37 = *(v26 + 24);
    v35(&v25[v37], v36, v28);
    return (v54)(&v25[v37], 0, 1, v28);
  }
}

uint64_t ActivitySummarySnidgetViewModelExtractor.ViewModelComponents.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivitySummarySnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D1483A5C(v3, a1);
}

uint64_t sub_1D1483A24(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1483A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivitySummarySnidgetViewModelExtractor.makeViewModelComponents(currentValue:isPrimaryAudience:useFitnessUIRings:)@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v236) = a3;
  LODWORD(v233) = a2;
  v239 = sub_1D15A2CA8();
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v227 = &inited - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1D15A22A8();
  v240 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v226 = &inited - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v231 = &inited - v10;
  sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v237 = &inited - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v242 = &inited - v14;
  sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v230 = &inited - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v250 = &inited - v18;
  v243 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
  MEMORY[0x1EEE9AC00](v243);
  v244 = &inited - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v241 = &inited - v21;
  sub_1D1486328();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &inited - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1486774(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &inited - v26;
  v229 = sub_1D15A26A8();
  v228 = *(v229 - 1);
  MEMORY[0x1EEE9AC00](v229);
  v246 = &inited - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1486774(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v235 = &inited - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v234 = &inited - v32;
  MEMORY[0x1EEE9AC00](v33);
  v248 = (&inited - v34);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &inited - v36;
  MEMORY[0x1EEE9AC00](v37);
  v249 = &inited - v38;
  MEMORY[0x1EEE9AC00](v39);
  v253 = &inited - v40;
  MEMORY[0x1EEE9AC00](v41);
  v255 = &inited - v42;
  MEMORY[0x1EEE9AC00](v43);
  v256 = &inited - v44;
  v259 = sub_1D15A23F8();
  v257 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v251 = &inited - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v252 = &inited - v47;
  MEMORY[0x1EEE9AC00](v48);
  v258 = &inited - v49;
  MEMORY[0x1EEE9AC00](v50);
  v254 = &inited - v51;
  v52 = sub_1D15A3268();
  v232 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &inited - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &inited - v56;
  v58 = *v4;
  v59 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v59)
  {
    v60 = v59;
    sub_1D1485B68(a1, 0x1E69A4258, &qword_1EE056560);
    if (v61)
    {
      v71 = v61;
      v72 = HKCodableSummaryActivityRingsValue.activitySummary.getter();
      if (v72)
      {
        v218 = v60;
        v221 = v71;
        v220 = v72;
        v213 = [v72 _isStandalonePhoneSummary];
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v262 = v58;
        v73 = sub_1D1453BA0(0, &qword_1EE05ACF0);
        v74 = *MEMORY[0x1E69DDD28];
        v75 = *MEMORY[0x1E69DB958];
        v225 = v58;
        v219 = v74;
        v222 = v75;
        v223 = v73;
        v76 = sub_1D15A4538();
        sub_1D1479D10(&v262, v261);
        type metadata accessor for Localization();
        inited = swift_initStaticObject();
        v77 = sub_1D144E91C(0xD00000000000001CLL, 0x80000001D15BDEB0, v261, 0, 0);
        v79 = v78;
        v80 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v80 = v77 & 0xFFFFFFFFFFFFLL;
        }

        v215 = a4;
        if (v80)
        {
          v81 = v77;
        }

        else
        {
          v224 = 0x80000001D15BDEB0;

          sub_1D15A3238();
          v82 = sub_1D15A3248();
          v83 = sub_1D15A42F8();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v217 = v82;
            v85 = v84;
            v86 = swift_slowAlloc();
            v260 = v86;
            *v85 = 136446210;
            *(v85 + 4) = sub_1D1479780(0xD00000000000001CLL, v224, &v260);
            v87 = v83;
            v88 = v217;
            _os_log_impl(&dword_1D1446000, v217, v87, "Localization: no localization found for '%{public}s'", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v86);
            MEMORY[0x1D388BF00](v86, -1, -1);
            MEMORY[0x1D388BF00](v85, -1, -1);
          }

          else
          {
          }

          (v232)[1](v57, v52);
          v81 = 0xD00000000000001CLL;
          v79 = v224;
        }

        sub_1D144ED4C(v261);
        v211 = objc_opt_self();
        v89 = [v211 hk_activityMoveGoalLineColor];
        v90 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v81, v79, v76, v89);

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v212 = v90;
        sub_1D15A2428();
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v91 = v225;
        v262 = v225;
        v92 = objc_opt_self();
        v93 = v91;
        v217 = v92;
        [v92 screenHeightSizeClassForCurrentDevice];
        v94 = 1;
        v95 = sub_1D15A4538();
        v216 = *MEMORY[0x1E69DDD80];
        v96 = sub_1D15A4538();
        v97 = [v93 viewControllerFactory];
        HKActivitySummary.createCaloriesText(_:valueFont:unitFont:hbxViewControllerFactory:)(&v262, v95, v96, v97);
        v99 = v98;

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v214 = v99;
        if (v99)
        {
          v100 = v99;
          v101 = v256;
          sub_1D15A2428();
          v94 = 0;
          v102 = v259;
        }

        else
        {
          v102 = v259;
          v101 = v256;
        }

        v103 = v257[7];
        v225 = v257 + 7;
        v224 = v103;
        v103(v101, v94, 1, v102);
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v262 = v93;
        v210 = v93;
        v104 = sub_1D15A4538();
        sub_1D1479D10(&v262, v261);
        v105 = sub_1D144E91C(0xD000000000000020, 0x80000001D15BDED0, v261, 0, 0);
        v107 = v106;
        v108 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v108 = v105 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {
          v109 = v105;
        }

        else
        {

          sub_1D15A3238();
          v110 = sub_1D15A3248();
          v111 = sub_1D15A42F8();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v260 = v113;
            *v112 = 136446210;
            inited = v110;
            v109 = 0xD000000000000020;
            *(v112 + 4) = sub_1D1479780(0xD000000000000020, 0x80000001D15BDED0, &v260);
            v114 = v111;
            v115 = inited;
            _os_log_impl(&dword_1D1446000, inited, v114, "Localization: no localization found for '%{public}s'", v112, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v113);
            MEMORY[0x1D388BF00](v113, -1, -1);
            MEMORY[0x1D388BF00](v112, -1, -1);

            (v232)[1](v54, v52);
          }

          else
          {

            (v232)[1](v54, v52);
            v109 = 0xD000000000000020;
          }

          v107 = 0x80000001D15BDED0;
        }

        v116 = v220;
        sub_1D144ED4C(v261);
        v117 = [v211 hk_activityExerciseGoalLineColor];
        v118 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v109, v107, v104, v117);

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v211 = v118;
        sub_1D15A2428();
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v262 = v210;
        v119 = v210;
        [v217 screenHeightSizeClassForCurrentDevice];
        v120 = 1;
        v121 = sub_1D15A4538();
        v122 = sub_1D15A4538();
        v123 = HKActivitySummary.createExerciseText(_:valueFont:unitFont:)(&v262, v121, v122);

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v232 = v123;
        if (v123)
        {
          v124 = v123;
          v125 = v255;
          sub_1D15A2428();
          v120 = 0;
          v126 = v259;
        }

        else
        {
          v126 = v259;
          v125 = v255;
        }

        v224(v125, v120, 1, v126);
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v262 = v119;
        v127 = v119;
        v128 = sub_1D15A4538();
        v129 = _sSo17HKActivitySummaryC19HealthVisualizationE24createStandHourTitleText_9titleFont14wheelchairUserSo18NSAttributedStringCyp_So6UIFontCSbtF_0(&v262, v128, [v218 _isWheelchairUser]);

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v219 = v129;
        sub_1D15A2428();
        v263 = &type metadata for ActivitySummarySnidgetViewModelExtractor;
        v262 = v127;
        v130 = v127;
        [v217 screenHeightSizeClassForCurrentDevice];
        v131 = sub_1D15A4538();
        v132 = sub_1D15A4538();
        HKActivitySummary.createStandHoursText(_:valueFont:unitFont:)(&v262, v131, v132);
        v134 = v133;

        __swift_destroy_boxed_opaque_existential_1(&v262);
        v223 = v134;
        if (v134)
        {
          v135 = v134;
          v136 = v253;
          sub_1D15A2428();
          v137 = 0;
        }

        else
        {
          v136 = v253;
          v137 = 1;
        }

        v224(v136, v137, 1, v259);
        v138 = v221;
        if ([v221 hasHasEverHadAWatch])
        {
          LODWORD(v222) = [v138 hasEverHadAWatch];
        }

        else
        {
          LODWORD(v222) = 2;
        }

        v139 = v249;
        v140 = [v130 profileIdentifier];
        v141 = [v140 type];

        v233 = sub_1D14E2A68(v116, v141, v233 & 1);
        sub_1D15A2428();
        v142 = [v138 hasActivityResumeDate];
        v143 = 1;
        if (v142)
        {
          [v138 activityResumeDate];
          v144 = HKDecodeDateForValue();
          v145 = v246;
          sub_1D15A2668();

          sub_1D14E3204(v145);
          sub_1D15A2428();
          v228[1](v145, v229);
          v143 = 0;
        }

        v146 = v259;
        v224(v139, v143, 1, v259);
        sub_1D15A2F28();
        sub_1D14863E4();
        v148 = *(v147 + 48);
        v149 = v218;
        [v138 dateData];
        v150 = HKDecodeDateForValue();
        sub_1D15A2668();

        v27[v148] = 0;
        v151 = *MEMORY[0x1E69A3668];
        v152 = sub_1D15A2EA8();
        v153 = *(v152 - 8);
        (*(v153 + 104))(v27, v151, v152);
        (*(v153 + 56))(v27, 0, 1, v152);
        v229 = v149;
        v218 = sub_1D15A2F18();
        v154 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
        v155 = v139;
        v156 = v257[2];
        v156(&v24[v154[6]], v254, v146);
        v157 = MEMORY[0x1E6968848];
        sub_1D1482D40(v256, v247, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
        v156(&v24[v154[8]], v258, v146);
        sub_1D1482D40(v255, v248, &qword_1EE05AAE0, v157);
        v156(&v24[v154[10]], v252, v146);
        v158 = v234;
        sub_1D1482D40(v253, v234, &qword_1EE05AAE0, v157);
        v156(&v24[v154[13]], v251, v146);
        v159 = v155;
        v160 = v235;
        sub_1D1482D40(v159, v235, &qword_1EE05AAE0, v157);
        v161 = v154[7];
        v162 = v224;
        v224(&v24[v161], 1, 1, v146);
        v163 = v154[9];
        v162(&v24[v163], 1, 1, v146);
        v164 = v154[11];
        v162(&v24[v164], 1, 1, v146);
        v165 = v162;
        v166 = v154[12];
        v167 = v154[14];
        v165(&v24[v167], 1, 1, v146);
        *v24 = v213;
        v168 = v220;
        *(v24 + 1) = v220;
        v228 = v168;
        sub_1D148644C(v247, &v24[v161]);
        sub_1D148644C(v248, &v24[v163]);
        sub_1D148644C(v158, &v24[v164]);
        v24[v166] = v222;
        sub_1D148644C(v160, &v24[v167]);
        v24[v154[15]] = v236 & 1;
        (*(*(v154 - 1) + 56))(v24, 0, 1, v154);
        type metadata accessor for ActivitySummarySnidgetView.ViewModel(0);
        v169 = swift_allocObject();
        sub_1D15A28E8();
        *(v169 + 16) = v218;
        sub_1D14864CC(v24, v169 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
        [v221 dateData];
        v170 = HKDecodeDateForValue();
        sub_1D15A2668();

        v171 = v250;
        sub_1D15A2C88();
        v172 = v238;
        v173 = v239;
        (*(v238 + 56))(v171, 0, 1, v239);
        v174 = v240;
        v175 = v240 + 56;
        v176 = v242;
        v177 = v245;
        v248 = *(v240 + 56);
        (v248)(v242, 1, 1, v245);
        v178 = v244;
        *v244 = 1;
        v179 = v243;
        sub_1D1482D40(v171, v178 + *(v243 + 20), &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
        v180 = v237;
        sub_1D1482D40(v176, v237, &qword_1EE05B520, MEMORY[0x1E6968130]);
        if ((*(v174 + 48))(v180, 1, v177) == 1)
        {
          v236 = v175;
          v247 = v169;
          sub_1D1483338(v180, &qword_1EE05B520, MEMORY[0x1E6968130]);
          v181 = v250;
          v182 = v230;
          sub_1D1482D40(v250, v230, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
          if ((*(v172 + 48))(v182, 1, v173) == 1)
          {

            sub_1D1483338(v176, &qword_1EE05B520, MEMORY[0x1E6968130]);
            v183 = MEMORY[0x1E69A3D00];
            sub_1D1483338(v181, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
            v184 = MEMORY[0x1E6968848];
            sub_1D1483338(v249, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
            v185 = v257[1];
            v186 = v259;
            v185(v251, v259);
            sub_1D1483338(v253, &qword_1EE05AAE0, v184);
            v185(v252, v186);
            sub_1D1483338(v255, &qword_1EE05AAE0, v184);
            v185(v258, v186);
            v187 = v184;
            v178 = v244;
            sub_1D1483338(v256, &qword_1EE05AAE0, v187);
            v185(v254, v186);
            sub_1D1483338(v182, &qword_1EE05B3E8, v183);
            v188 = (v178 + *(v179 + 24));
            v189 = 1;
            v190 = v245;
          }

          else
          {
            v198 = v227;
            (*(v172 + 32))(v227, v182, v173);
            v199 = *(v179 + 24);
            v200 = v226;
            sub_1D15A2C98();
            sub_1D15A2258();
            v201 = v200;
            v202 = v245;
            (*(v174 + 8))(v201, v245);
            sub_1D15A2278();

            (*(v172 + 8))(v198, v173);
            sub_1D1483338(v242, &qword_1EE05B520, MEMORY[0x1E6968130]);
            sub_1D1483338(v181, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
            v203 = MEMORY[0x1E6968848];
            sub_1D1483338(v249, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
            v204 = v257[1];
            v205 = v259;
            v204(v251, v259);
            sub_1D1483338(v253, &qword_1EE05AAE0, v203);
            v204(v252, v205);
            sub_1D1483338(v255, &qword_1EE05AAE0, v203);
            v204(v258, v205);
            sub_1D1483338(v256, &qword_1EE05AAE0, v203);
            v204(v254, v205);
            v178 = v244;
            v188 = &v244[v199];
            v189 = 0;
            v190 = v202;
          }

          (v248)(v188, v189, 1, v190);
          v169 = v247;
        }

        else
        {

          sub_1D1483338(v176, &qword_1EE05B520, MEMORY[0x1E6968130]);
          sub_1D1483338(v250, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
          v191 = v174;
          v192 = MEMORY[0x1E6968848];
          sub_1D1483338(v249, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
          v193 = v257[1];
          v194 = v259;
          v193(v251, v259);
          sub_1D1483338(v253, &qword_1EE05AAE0, v192);
          v193(v252, v194);
          sub_1D1483338(v255, &qword_1EE05AAE0, v192);
          v193(v258, v194);
          sub_1D1483338(v256, &qword_1EE05AAE0, v192);
          v193(v254, v194);
          v195 = *(v191 + 32);
          v196 = v231;
          v195(v231, v180, v177);
          v197 = *(v243 + 24);
          v195((v178 + v197), v196, v177);
          (v248)(v178 + v197, 0, 1, v177);
        }

        v206 = v241;
        sub_1D14864CC(v178, v241, type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata);
        v207 = v215;
        *v215 = v169;
        v208 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.ViewModelComponents(0);
        sub_1D14864CC(v206, v207 + *(v208 + 20), type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata);
        return (*(*(v208 - 8) + 56))(v207, 0, 1, v208);
      }
    }

    sub_1D15A2F28();
    v62 = sub_1D15A2EA8();
    (*(*(v62 - 8) + 56))(v27, 1, 1, v62);
    v63 = v60;
    v64 = sub_1D15A2F18();
    v65 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
    (*(*(v65 - 8) + 56))(v24, 1, 1, v65);
    type metadata accessor for ActivitySummarySnidgetView.ViewModel(0);
    v66 = swift_allocObject();
    sub_1D15A28E8();
    *(v66 + 16) = v64;
    sub_1D14864CC(v24, v66 + OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView9ViewModel__currentValueViewModel, sub_1D1486328);
    v67 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.ViewModelComponents(0);
    sub_1D1483394(a4 + *(v67 + 20));

    *a4 = v66;
    return (*(*(v67 - 8) + 56))(a4, 0, 1, v67);
  }

  v69 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.ViewModelComponents(0);
  v70 = *(*(v69 - 8) + 56);

  return v70(a4, 1, 1, v69);
}

void sub_1D1485B68(void *a1, uint64_t a2, unint64_t *a3)
{
  v60 = a3;
  v61 = a2;
  sub_1D1486774(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v55 - v15;
  if ([a1 hasValueData])
  {
    v56 = v12;
    v57 = v5;
    v58 = v7;
    v59 = v6;
    v17 = [a1 kindRawValue];
    if (!v17 || (v18 = v17, sub_1D15A3F38(), v18, HKCodableSummaryCurrentValue.Kind.init(rawValue:)(&v63), v19 = v63, v63 == 23))
    {
      if ([a1 hasKindRawValue])
      {
        v20 = [a1 kindRawValue];
        if (!v20)
        {
          __break(1u);
          return;
        }

        v21 = v20;
        v22 = sub_1D15A3F38();
        v24 = v23;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
        v22 = 0x646E696B206F6E3CLL;
      }

      sub_1D15A31E8();

      v25 = a1;
      v26 = sub_1D15A3248();
      v27 = sub_1D15A4318();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v63 = v61;
        *v28 = 136446722;
        *(v28 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v63);
        *(v28 + 12) = 2080;
        v29 = sub_1D1479780(v22, v24, &v63);

        *(v28 + 14) = v29;
        *(v28 + 22) = 2080;
        sub_1D1453BA0(0, &qword_1EE056670);
        sub_1D148681C();
        sub_1D15A2F88();
        v30 = sub_1D15A3F68();
        v32 = sub_1D1479780(v30, v31, &v63);

        *(v28 + 24) = v32;
        _os_log_impl(&dword_1D1446000, v26, v27, "[%{public}s] Unknown kind received: %s, this model should have bumped its version: %s", v28, 0x20u);
        v33 = v61;
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v33, -1, -1);
        MEMORY[0x1D388BF00](v28, -1, -1);
      }

      else
      {
      }

      (*(v58 + 8))(v9, v59);
      goto LABEL_12;
    }

    v34 = HKCodableSummaryCurrentValue.unwrappedValue()();
    if (!v34)
    {
      sub_1D15A31E8();
      v48 = sub_1D15A3248();
      v49 = sub_1D15A4318();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v63 = v51;
        *v50 = 136446466;
        *(v50 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v63);
        *(v50 + 12) = 2080;
        v62 = v19;
        v52 = HKCodableSummaryCurrentValue.Kind.rawValue.getter();
        v54 = sub_1D1479780(v52, v53, &v63);

        *(v50 + 14) = v54;
        _os_log_impl(&dword_1D1446000, v48, v49, "[%{public}s] Unable to unwrap value for kind %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v51, -1, -1);
        MEMORY[0x1D388BF00](v50, -1, -1);
      }

      (*(v58 + 8))(v16, v59);
LABEL_12:
      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v35 = v34;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v36 = v56;
      sub_1D15A31E8();
      v37 = v35;
      v38 = sub_1D15A3248();
      v39 = sub_1D15A4318();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136446722;
        *(v40 + 4) = sub_1D1479780(0xD000000000000013, 0x80000001D15BDF00, &v63);
        *(v40 + 12) = 2080;
        swift_getObjectType();
        v42 = sub_1D15A4D18();
        v44 = sub_1D1479780(v42, v43, &v63);

        *(v40 + 14) = v44;
        *(v40 + 22) = 2080;
        sub_1D1453BA0(0, v60);
        v45 = sub_1D15A4D18();
        v47 = sub_1D1479780(v45, v46, &v63);

        *(v40 + 24) = v47;
        _os_log_impl(&dword_1D1446000, v38, v39, "[%{public}s] Current value payload is of unknown type %s instead of %s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v41, -1, -1);
        MEMORY[0x1D388BF00](v40, -1, -1);

        (*(v58 + 8))(v56, v59);
      }

      else
      {

        (*(v58 + 8))(v36, v59);
      }

      sub_1D14867C8();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_1D1486328()
{
  if (!qword_1EE05AAC0)
  {
    type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(255);
    sub_1D148638C();
    v0 = sub_1D15A2EE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05AAC0);
    }
  }
}

unint64_t sub_1D148638C()
{
  result = qword_1EE05A9C0[0];
  if (!qword_1EE05A9C0[0])
  {
    type metadata accessor for ActivitySnidgetCurrentValueVisualizationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE05A9C0);
  }

  return result;
}

void sub_1D14863E4()
{
  if (!qword_1EE0594A0)
  {
    sub_1D15A26A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0594A0);
    }
  }
}

uint64_t sub_1D148644C(uint64_t a1, uint64_t a2)
{
  sub_1D1486774(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14864CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1486540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D1486588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D14865FC()
{
  sub_1D1486774(319, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  if (v0 <= 0x3F)
  {
    sub_1D1486774(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D14866F0()
{
  result = type metadata accessor for ActivitySummarySnidgetView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1486774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D14867C8()
{
  result = qword_1EC6301F0;
  if (!qword_1EC6301F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6301F0);
  }

  return result;
}

unint64_t sub_1D148681C()
{
  result = qword_1EE056678;
  if (!qword_1EE056678)
  {
    sub_1D1453BA0(255, &qword_1EE056670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056678);
  }

  return result;
}

void sub_1D1486884(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1D1487E54(*a1, v2);
  sub_1D1487B70();

  sub_1D1487E60(v1, v2);
}

uint64_t sub_1D14868E4()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D1486934()
{
  v1 = qword_1EE05A3C8;
  v2 = *(v0 + qword_1EE05A3C8);
  if (v2)
  {
    v3 = *(v0 + qword_1EE05A3C8);
  }

  else
  {
    v4 = sub_1D1486998(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1486998(void *a1)
{
  v32 = *MEMORY[0x1E69E7D40] & *a1;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE05B398;
  v10 = a1;
  sub_1D15A31C8();
  v11 = *(v10 + qword_1EE05A3F8);
  v12 = *(v10 + qword_1EE05A3B8);
  v29 = *(v10 + qword_1EE05A3C0);
  v30 = v12;
  v13 = *(v10 + qword_1EE05A3E0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(v3 + 16);
  v31 = v8;
  v15(v5, v8, v2);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v32 + class metadata base offset for SampleQueryOperation;
  *(v18 + 16) = *(v32 + class metadata base offset for SampleQueryOperation);
  *(v18 + 24) = *(v19 + 8);
  v20 = *(v3 + 32);
  v32 = v2;
  v20(v18 + v16, v5, v2);
  *(v18 + v17) = v14;
  if (v13)
  {
    sub_1D1453BA0(0, &qword_1EE05AD48);
    v21 = v11;

    v13 = sub_1D15A40A8();
  }

  else
  {
    v22 = v11;
  }

  v23 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  aBlock[4] = sub_1D1487E6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D14961D8;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);
  v25 = [v23 initWithSampleType:v11 predicate:v30 limit:v29 sortDescriptors:v13 resultsHandler:v24];

  _Block_release(v24);

  v26 = v25;
  v27 = [v10 name];
  [v26 setDebugIdentifier_];

  [v26 setQualityOfService_];
  (*(v3 + 8))(v31, v32);
  return v26;
}

void sub_1D1486D78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D15A31B8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([v6 isCancelled])
    {

      v7._countAndFlagsBits = 0xD00000000000002DLL;
      v7._object = 0x80000001D15BDC90;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
LABEL_7:

      return;
    }

    v9 = [v6 isFinished];

    if (v9)
    {
      goto LABEL_7;
    }

    if (a2 && (sub_1D1453BA0(0, &qword_1EE05B568), (v10 = sub_1D15A49A8()) != 0))
    {
      v11 = v10;

      v12 = 0;
    }

    else
    {
      if (a3)
      {
        v13 = 0xD00000000000001BLL;
      }

      else
      {
        v13 = 0;
      }

      if (a3)
      {
        v14 = 0x80000001D15BE030;
      }

      else
      {
        v14 = 0;
      }

      if (a3)
      {
        v15 = a3 | 0x8000000000000000;
      }

      else
      {
        v15 = 0xC000000000000000;
      }

      sub_1D1487F34();
      v16 = swift_allocError();
      *v17 = v13;
      v17[1] = v14;
      v17[2] = v15;
      swift_getErrorValue();
      v18 = a3;
      sub_1D1487F88(v13, v14, v15);
      v19._countAndFlagsBits = sub_1D15A4C08();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v19, v20);

      v11 = swift_allocError();
      *v21 = v13;
      v21[1] = v14;
      v21[2] = v15;
      v22 = v11;
      v12 = 1;
    }

    v23 = *&v6[qword_1EE05A3E8];

    v23(v11, v12);

    MEMORY[0x1EEE9AC00](v24);
    sub_1D15A2DA8();
    sub_1D1487E60(v11, v12);
    sub_1D1487E60(v11, v12);
  }
}

uint64_t sub_1D148708C(uint64_t a1, void *a2, char a3)
{
  sub_1D1487E54(a2, a3 & 1);
  sub_1D1487B70();
  sub_1D1487E60(a2, a3 & 1);
  v6 = [*(a1 + qword_1EE05A3F8) identifier];
  v7 = sub_1D15A3F38();
  v9 = v8;

  v10._countAndFlagsBits = 0x64656873696E6966;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v10, v11);
}

id SampleQueryOperation.init(sampleType:predicate:limit:sortDescriptors:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = qword_1EE05A3D8;
  sub_1D15A4118();
  sub_1D1453368(255, &qword_1EE05ABB8);
  sub_1D15A4CC8();
  sub_1D15A2D48();
  sub_1D1487B04();
  v16 = swift_allocError();
  *v17 = 0;
  v30 = v16;
  v31 = 1;
  *&v10[v15] = sub_1D15A2D58();
  *&v10[qword_1EE05A3C8] = 0;
  *&v10[qword_1EE05A3F8] = a1;
  *&v10[qword_1EE05A3B8] = a2;
  *&v10[qword_1EE05A3C0] = a3;
  *&v10[qword_1EE05A3E0] = a4;
  *&v10[qword_1EE05A3D0] = a7;
  *&v10[qword_1EE05A3F0] = a8;
  v18 = &v10[qword_1EE05A3E8];
  *v18 = a9;
  *(v18 + 1) = a10;
  v29.receiver = v10;
  v29.super_class = type metadata accessor for SampleQueryOperation();
  v19 = a1;
  v20 = a8;

  v21 = a2;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = v22;
  if (a6)
  {
    v24 = sub_1D15A3EF8();
  }

  else
  {
    v24 = 0;
  }

  [v22 setName_];

  return v22;
}

uint64_t sub_1D1487454()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1487B04();
  v5 = swift_allocError();
  *v6 = 2;
  sub_1D1487B70();

  v7 = *&v0[qword_1EE05A3F8];
  v8 = [v7 identifier];
  v9 = sub_1D15A3F38();
  v11 = v10;

  v12._countAndFlagsBits = 0x676E696E6E7572;
  v12._object = 0xE700000000000000;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v12, v13);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE05B398;
  v15 = v0;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D15ACDD0;
  v17 = [v7 identifier];
  v18 = sub_1D15A3F38();
  v20 = v19;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D1487C8C();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_1D15A31A8();

  v21 = *&v15[qword_1EE05A3F0];
  v22 = sub_1D1486934();
  [v21 executeQuery_];

  return (*(v2 + 8))(v4, v1);
}

void sub_1D1487700(void *a1)
{
  v1 = a1;
  sub_1D1487454();
}

void sub_1D1487748()
{
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v1 = swift_allocError();
    *v2 = 3;
    sub_1D1487B70();

    v3 = [*&v0[qword_1EE05A3F8] identifier];
    v4 = sub_1D15A3F38();
    v6 = v5;

    v7._countAndFlagsBits = 0x656C6C65636E6163;
    v7._object = 0xE900000000000064;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }

  v9 = *&v0[qword_1EE05A3F0];
  v10 = sub_1D1486934();
  [v9 stopQuery_];
}

id SampleQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D1487920()
{

  v1 = *(v0 + qword_1EE05A3C8);
}

id SampleQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1487A30(uint64_t a1)
{

  v2 = *(a1 + qword_1EE05A3C8);
}

uint64_t sub_1D1487AD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D14868E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1D1487B04()
{
  result = qword_1EE05B078;
  if (!qword_1EE05B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B078);
  }

  return result;
}

uint64_t sub_1D1487B70()
{

  sub_1D15A2D38();
}

void sub_1D1487C24()
{
  if (!qword_1EE05B538)
  {
    sub_1D1453368(255, &qword_1EE05B530);
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B538);
    }
  }
}

unint64_t sub_1D1487C8C()
{
  result = qword_1EE05B5E0[0];
  if (!qword_1EE05B5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE05B5E0);
  }

  return result;
}

id sub_1D1487E54(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1D1487E60(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1D1487E6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D15A31D8();

  sub_1D1486D78(a1, a2, a3);
}

unint64_t sub_1D1487F34()
{
  result = qword_1EE05B1C8;
  if (!qword_1EE05B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1C8);
  }

  return result;
}

void sub_1D1487F88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4 > 2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v4 == 3)
  {
LABEL_7:

    return;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = (a3 & 0x1FFFFFFFFFFFFFFFLL);
}

id sub_1D1488024(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D1487E60(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D1487E54(v3, v4);
}

uint64_t sub_1D14880CC()
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](0);
  return sub_1D15A4CB8();
}

uint64_t sub_1D1488110()
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](0);
  return sub_1D15A4CB8();
}

uint64_t sub_1D1488174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79726F6765746163 && a2 == 0xEE007365756C6156)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1488204(uint64_t a1)
{
  v2 = sub_1D148D310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1488240(uint64_t a1)
{
  v2 = sub_1D148D310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrendPredicate.encode(to:)(void *a1)
{
  sub_1D148E0C4(0, &qword_1EC6301F8, sub_1D148D310, &type metadata for TrendPredicate.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148D310();

  sub_1D15A4CE8();
  v10[3] = v8;
  sub_1D1452138(0, &qword_1EE056808, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  sub_1D148D364(&qword_1EC630200);
  sub_1D15A4AE8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t TrendPredicate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_1D148E0C4(0, &qword_1EE056470, sub_1D148D310, &type metadata for TrendPredicate.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148D310();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v12;
    sub_1D1452138(0, &qword_1EE056808, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1D148D364(&qword_1EE056800);
    sub_1D15A4A28();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D148869C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_1D14895A8(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t TrendConfiguration.queryConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D148D3E8(v2, v3, v4, v5, v6);
}

uint64_t TrendConfiguration.predicate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1D148D47C(v2);
}

__n128 TrendConfiguration.init(queryConfiguration:predicate:dateRanges:endingDate:analysisKinds:absoluteChangeThreshold:parameterOverrides:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *a2;
  v11 = *a4;
  result = *a1;
  v13 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 32) = v9;
  *(a9 + 40) = v10;
  *(a9 + 48) = a3;
  *(a9 + 56) = v11;
  *(a9 + 72) = a8;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7 & 1;
  *(a9 + 64) = a5;
  return result;
}

uint64_t sub_1D148876C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2) != *(v3 - 2);
    if (*(v4 - 1) != *(v3 - 1))
    {
      v5 = 1;
    }

    v6 = v5 | *v4 ^ *v3;
    if (v6)
    {
      break;
    }

    v3 += 3;
    v4 += 3;
    --v2;
  }

  while (v2);
  return (v6 ^ 1) & 1;
}

uint64_t sub_1D14887FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30[0] = v5[4];
    v9 = v30[0];
    *(v30 + 9) = *(v5 + 73);
    v10 = v5[1];
    v27[0] = *v5;
    v27[1] = v10;
    *(v26 + 9) = *(v30 + 9);
    v24 = v28;
    v25 = v8;
    v26[0] = v9;
    v22 = v27[0];
    v23 = v10;
    v11 = v6[3];
    v32 = v6[2];
    v33 = v11;
    v34[0] = v6[4];
    v12 = v34[0];
    *(v34 + 9) = *(v6 + 73);
    v13 = v6[1];
    v31[0] = *v6;
    v31[1] = v13;
    *(v21 + 9) = *(v34 + 9);
    v19 = v32;
    v20 = v11;
    v21[0] = v12;
    v17 = v31[0];
    v18 = v13;
    sub_1D148DE58(v27, v16);
    sub_1D148DE58(v31, v16);
    v14 = _s19HealthVisualization18TrendConfigurationV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v35[2] = v19;
    v35[3] = v20;
    v36[0] = v21[0];
    *(v36 + 9) = *(v21 + 9);
    v35[0] = v17;
    v35[1] = v18;
    sub_1D148DE90(v35);
    v37[2] = v24;
    v37[3] = v25;
    v38[0] = v26[0];
    *(v38 + 9) = *(v26 + 9);
    v37[0] = v22;
    v37[1] = v23;
    sub_1D148DE90(v37);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

uint64_t sub_1D148897C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 40 * v3;
    v7 = v5 + 40 * v3;
    if (*v6 != *v7 || *(v6 + 8) != *(v7 + 8))
    {
      return 0;
    }

    v9 = *(v6 + 32);
    v10 = *(v7 + 32);
    result = 0;
    if (*(v6 + 24))
    {
      if (!*(v7 + 24))
      {
        return result;
      }
    }

    else if ((*(v7 + 24) & 1) != 0 || *(v6 + 16) != *(v7 + 16))
    {
      return result;
    }

    if ((*(v6 + 25) ^ *(v7 + 25)))
    {
      return result;
    }

    v11 = *(v9 + 16);
    if (v11 != *(v10 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v9 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = (v9 + 40);
      v14 = (v10 + 40);
      while (v11)
      {
        result = *(v13 - 1);
        if (result != *(v14 - 1) || *v13 != *v14)
        {
          result = sub_1D15A4BA8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v13 += 2;
        v14 += 2;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1488AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D15A4BA8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D1488B58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v13 = v2;
  v14 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  do
  {
    v8 = v7;
    v12[0] = *v5;
    *(v12 + 11) = *(v5 + 11);
    v11[0] = *v6;
    *(v11 + 11) = *(v6 + 11);
    v9 = _s19HealthVisualization20DiagramConfigurationO14LinePropertiesV2eeoiySbAE_AEtFZ_0(v12, v11);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v7 = v8 - 1;
    v5 += 2;
    v6 += 2;
  }

  while (v8);
  return v9 & 1;
}

uint64_t sub_1D1488C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      v7 = *i;
      if (v6 == 4)
      {
        v8 = 0x4D676E696C6C6F72;
      }

      else
      {
        v8 = 0x48676E696C6C6F72;
      }

      v9 = 0xEF72616559666C61;
      if (v6 == 4)
      {
        v9 = 0xEC00000068746E6FLL;
      }

      if (v6 == 3)
      {
        v8 = 0x57676E696C6C6F72;
        v9 = 0xEB000000006B6565;
      }

      if (v6 == 1)
      {
        v10 = 0x656D69546C6C61;
      }

      else
      {
        v10 = 0x7961646F74;
      }

      v11 = 0xE700000000000000;
      if (v6 != 1)
      {
        v11 = 0xE500000000000000;
      }

      if (!*v3)
      {
        v10 = 0x6669636570736E75;
        v11 = 0xEB00000000646569;
      }

      v12 = *v3 <= 2u ? v10 : v8;
      v13 = *v3 <= 2u ? v11 : v9;
      if (*i > 2u)
      {
        break;
      }

      if (!*i)
      {
        v15 = 0x6669636570736E75;
        v16 = 6579561;
LABEL_38:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v15)
        {
          goto LABEL_5;
        }

        goto LABEL_43;
      }

      if (v7 == 1)
      {
        v14 = 0xE700000000000000;
        if (v12 != 0x656D69546C6C61)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v12 != 0x7961646F74)
        {
          goto LABEL_5;
        }
      }

LABEL_43:
      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1D15A4BA8();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v14 = 0xEC00000068746E6FLL;
        if (v12 != 0x4D676E696C6C6F72)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xEF72616559666C61;
        if (v12 != 0x48676E696C6C6F72)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_43;
    }

    v15 = 0x57676E696C6C6F72;
    v16 = 7038309;
    goto LABEL_38;
  }

  return 1;
}

uint64_t sub_1D1488E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x636E657571657266;
      }

      else
      {
        v5 = 0x666968536E61656DLL;
      }

      if (*v3)
      {
        v6 = 0xEF65676E61684379;
      }

      else
      {
        v6 = 0xEF65676E61684374;
      }

      if (*v4)
      {
        v7 = 0x636E657571657266;
      }

      else
      {
        v7 = 0x666968536E61656DLL;
      }

      if (*v4)
      {
        v8 = 0xEF65676E61684379;
      }

      else
      {
        v8 = 0xEF65676E61684374;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1D15A4BA8();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D1488F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        if (*v3 <= 6u)
        {
          if (v6 == 5)
          {
            v8 = 0xE800000000000000;
            v7 = 0x6E6F697461727564;
          }

          else
          {
            v7 = 0x4465676172657661;
            v8 = 0xEF6E6F6974617275;
          }
        }

        else if (v6 == 7)
        {
          v8 = 0xE800000000000000;
          v7 = 0x65636E6573657270;
        }

        else if (v6 == 8)
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x80000001D15BCEC0;
        }

        else
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001D15BCEE0;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v8 = 0xEF6D756D696E694DLL;
        }

        else
        {
          v8 = 0xEF65676172657641;
        }

        v7 = 0x6574657263736964;
      }

      else if (v6 == 2)
      {
        v7 = 0x6574657263736964;
        v8 = 0xEF6D756D6978614DLL;
      }

      else if (v6 == 3)
      {
        v7 = 0x6974616C756D7563;
        v8 = 0xED00006D75536576;
      }

      else
      {
        v7 = 0x6563655274736F6DLL;
        v8 = 0xEA0000000000746ELL;
      }

      v9 = *v4;
      if (v9 > 4)
      {
        if (*v4 > 6u)
        {
          if (v9 == 7)
          {
            v10 = 0xE800000000000000;
            if (v7 != 0x65636E6573657270)
            {
              goto LABEL_5;
            }

            goto LABEL_52;
          }

          if (v9 == 8)
          {
            v10 = 0x80000001D15BCEC0;
            if (v7 != 0xD00000000000001ALL)
            {
              goto LABEL_5;
            }

            goto LABEL_52;
          }

          v11 = 0xD000000000000019;
          v10 = 0x80000001D15BCEE0;
          goto LABEL_51;
        }

        if (v9 == 5)
        {
          v10 = 0xE800000000000000;
          if (v7 != 0x6E6F697461727564)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v10 = 0xEF6E6F6974617275;
          if (v7 != 0x4465676172657661)
          {
LABEL_5:
            v5 = sub_1D15A4BA8();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        if (*v4 <= 1u)
        {
          v11 = 0x6574657263736964;
          v10 = 0xEF65676172657641;
          if (*v4)
          {
            v12 = 1768843597;
            goto LABEL_44;
          }

LABEL_51:
          if (v7 != v11)
          {
            goto LABEL_5;
          }

          goto LABEL_52;
        }

        if (v9 == 2)
        {
          v12 = 1769496909;
LABEL_44:
          v10 = v12 | 0xEF6D756D00000000;
          if (v7 != 0x6574657263736964)
          {
            goto LABEL_5;
          }

          goto LABEL_52;
        }

        if (v9 == 3)
        {
          v10 = 0xED00006D75536576;
          if (v7 != 0x6974616C756D7563)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v10 = 0xEA0000000000746ELL;
          if (v7 != 0x6563655274736F6DLL)
          {
            goto LABEL_5;
          }
        }
      }

LABEL_52:
      if (v8 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D1489344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange.Period(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D148F254(v13, v10);
      sub_1D148F254(v14, v6);
      if ((sub_1D15A2238() & 1) == 0 || *&v10[v4[5]] != *&v6[v4[5]] || *&v10[v4[6]] != *&v6[v4[6]])
      {
        break;
      }

      v16 = v4[7];
      v17 = v10[v16];
      v18 = v6[v16];
      if (v17 == 2)
      {
        sub_1D148F2B8(v6);
        sub_1D148F2B8(v10);
        if (v18 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == 2)
        {
          break;
        }

        if (v17)
        {
          v19 = 0x6973616572636564;
        }

        else
        {
          v19 = 0x6973616572636E69;
        }

        if (v18)
        {
          v20 = 0x6973616572636564;
        }

        else
        {
          v20 = 0x6973616572636E69;
        }

        if (v19 == v20)
        {
          swift_bridgeObjectRelease_n();
          sub_1D148F2B8(v6);
          sub_1D148F2B8(v10);
        }

        else
        {
          v21 = sub_1D15A4BA8();
          swift_bridgeObjectRelease_n();
          sub_1D148F2B8(v6);
          sub_1D148F2B8(v10);
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1D148F2B8(v6);
    sub_1D148F2B8(v10);
  }

  return 0;
}

uint64_t sub_1D14895A8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1489604()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7461636964657270;
    if (v1 != 1)
    {
      v5 = 0x676E615265746164;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x6144676E69646E65;
    if (v1 != 3)
    {
      v3 = 0x736973796C616E61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1489708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D148EA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1489730(uint64_t a1)
{
  v2 = sub_1D148D700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D148976C(uint64_t a1)
{
  v2 = sub_1D148D700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrendConfiguration.encode(to:)(void *a1)
{
  sub_1D148E0C4(0, &qword_1EC630208, sub_1D148D700, &type metadata for TrendConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v30 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v27 = *(v1 + 48);
  v28 = v10;
  v38 = *(v1 + 56);
  v11 = *(v1 + 64);
  v25 = *(v1 + 72);
  v26 = v11;
  v24 = *(v1 + 80);
  v23[3] = *(v1 + 88);
  v12 = a1[3];
  v29 = a1[4];
  v13 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D148D3E8(v6, v7, v8, v9, v13);
  sub_1D148D700();
  sub_1D15A4CE8();
  v33 = v6;
  v34 = v7;
  v14 = v30;
  v15 = v5;
  v35 = v8;
  v36 = v9;
  v37 = v13;
  v39 = 0;
  sub_1D148D754();
  v16 = v31;
  sub_1D15A4B38();
  if (v16)
  {
    sub_1D148D7A8(v33, v34, v35, v36, v37);
    return (*(v32 + 8))(v5, v14);
  }

  else
  {
    v19 = v26;
    v18 = v27;
    v20 = v38;
    v21 = v25;
    v22 = v32;
    sub_1D148D7A8(v33, v34, v35, v36, v37);
    v33 = v28;
    v39 = 1;
    sub_1D148D47C(v28);
    sub_1D148D83C();
    sub_1D15A4AE8();
    sub_1D148D890(v33);
    v33 = v18;
    v39 = 2;
    sub_1D1452138(0, &qword_1EE056838, &type metadata for DateRange, MEMORY[0x1E69E62F8]);
    sub_1D148D8A0();
    sub_1D15A4B38();
    LOBYTE(v33) = v20;
    v39 = 3;
    sub_1D148D93C();
    sub_1D15A4B38();
    v33 = v19;
    v39 = 4;
    sub_1D1452138(0, &qword_1EE056860, &type metadata for TrendAnalysisKind, MEMORY[0x1E69E62F8]);
    sub_1D148D990();
    sub_1D15A4B38();
    v33 = v21;
    v39 = 5;
    sub_1D148DEC0(0, &qword_1EE0568C8, &type metadata for ParameterOverrides, MEMORY[0x1E69E5E28]);
    sub_1D148DD5C(&qword_1EC630230, sub_1D147903C, sub_1D148DA80);
    sub_1D15A4AE8();
    LOBYTE(v33) = 6;
    sub_1D15A4AC8();
    return (*(v22 + 8))(v15, v14);
  }
}

uint64_t TrendConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D148E0C4(0, &qword_1EE056448, sub_1D148D700, &type metadata for TrendConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D148D700();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v11 = v7;
  LOBYTE(v35[0]) = 0;
  sub_1D148DAD4();
  v12 = v6;
  sub_1D15A4A78();
  v13 = v39;
  v34 = v40;
  v32 = v41;
  v33 = v42;
  LOBYTE(v35[0]) = 1;
  sub_1D148DB28();
  sub_1D15A4A28();
  v31 = v39;
  sub_1D1452138(0, &qword_1EE056838, &type metadata for DateRange, MEMORY[0x1E69E62F8]);
  LOBYTE(v35[0]) = 2;
  sub_1D148DB7C();
  sub_1D15A4A78();
  v14 = v39;
  LOBYTE(v35[0]) = 3;
  sub_1D148DC18();
  sub_1D15A4A78();
  v15 = v39;
  sub_1D1452138(0, &qword_1EE056860, &type metadata for TrendAnalysisKind, MEMORY[0x1E69E62F8]);
  LOBYTE(v35[0]) = 4;
  sub_1D148DC6C();
  sub_1D15A4A78();
  v30 = v39;
  sub_1D148DEC0(0, &qword_1EE0568C8, &type metadata for ParameterOverrides, MEMORY[0x1E69E5E28]);
  LOBYTE(v35[0]) = 5;
  sub_1D148DD5C(&qword_1EE0568C0, sub_1D14790F4, sub_1D148DE04);
  sub_1D15A4A28();
  v29 = v39;
  v52 = 6;
  v28 = sub_1D15A4A08();
  v17 = v16;
  (*(v11 + 8))(v9, v12);
  v53 = v17 & 1;
  v18 = v13;
  *&v35[0] = v13;
  *(&v35[0] + 1) = v34;
  v19 = v32;
  v35[1] = v32;
  v20 = *(&v32 + 1);
  LOBYTE(v13) = v33;
  LOBYTE(v36) = v33;
  *(&v36 + 1) = *v55;
  DWORD1(v36) = *&v55[3];
  *(&v36 + 1) = v31;
  *&v37 = v14;
  BYTE8(v37) = v15;
  *(&v37 + 9) = *v54;
  HIDWORD(v37) = *&v54[3];
  *v38 = v30;
  *&v38[8] = v29;
  v21 = v28;
  *&v38[16] = v28;
  HIDWORD(v27) = v53;
  v38[24] = v53;
  v22 = v32;
  *a2 = v35[0];
  a2[1] = v22;
  v23 = v36;
  v24 = v37;
  v25 = *v38;
  *(a2 + 73) = *&v38[9];
  a2[3] = v24;
  a2[4] = v25;
  a2[2] = v23;
  sub_1D148DE58(v35, &v39);
  __swift_destroy_boxed_opaque_existential_1(v56);
  v39 = v18;
  v40 = v34;
  *&v41 = v19;
  *(&v41 + 1) = v20;
  v42 = v13;
  *v43 = *v55;
  *&v43[3] = *&v55[3];
  v44 = v31;
  v45 = v14;
  v46 = v15;
  *v47 = *v54;
  *&v47[3] = *&v54[3];
  v48 = v30;
  v49 = v29;
  v50 = v21;
  v51 = BYTE4(v27);
  return sub_1D148DE90(&v39);
}

uint64_t TrendConfiguration.dateRangeToEngineParameters.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = (v1 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = 0uLL;
      if (v3)
      {
        v10 = *(v3 + 16);
        if (v10)
        {
          v11 = sub_1D147FF58(v7);
          if (v12)
          {
            v13 = 0;
            v14 = *(v3 + 56) + 32 * v11;
            v10 = *v14;
            v15 = *(v14 + 8);
            v9 = *(v14 + 16);
          }

          else
          {
            v10 = 0;
            v15 = 0;
            v13 = 1;
            v9 = 0uLL;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = 0;
      v13 = 1;
LABEL_10:
      *v33 = v10;
      *&v33[8] = v15;
      *&v33[16] = v9;
      v33[32] = v13;
      static SignificantChangeEngine.Parameters.makeParameters(dateRange:trendAnalysisKinds:parameterOverrides:absoluteChangeThreshold:)(v7, v4, v33, v32, v31, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D148BD70(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_1D148BD70((v16 > 1), v17 + 1, 1, v6);
      }

      *&v33[7] = v34[0];
      *&v33[23] = v34[1];
      *&v33[71] = v34[4];
      *&v33[87] = v34[5];
      *&v33[39] = v34[2];
      *&v33[55] = v34[3];
      *&v33[135] = v34[8];
      *&v33[151] = v34[9];
      *&v33[103] = v34[6];
      *&v33[119] = v34[7];
      v33[215] = v35;
      *&v33[183] = v34[11];
      *&v33[199] = v34[12];
      *&v33[167] = v34[10];
      *(v6 + 2) = v17 + 1;
      v18 = &v6[224 * v17];
      v18[32] = v7;
      v19 = *v33;
      *(v18 + 49) = *&v33[16];
      *(v18 + 33) = v19;
      v20 = *&v33[32];
      v21 = *&v33[48];
      v22 = *&v33[64];
      *(v18 + 113) = *&v33[80];
      *(v18 + 97) = v22;
      *(v18 + 81) = v21;
      *(v18 + 65) = v20;
      v23 = *&v33[96];
      v24 = *&v33[112];
      v25 = *&v33[128];
      *(v18 + 177) = *&v33[144];
      *(v18 + 161) = v25;
      *(v18 + 145) = v24;
      *(v18 + 129) = v23;
      v26 = *&v33[160];
      v27 = *&v33[176];
      v28 = *&v33[192];
      *(v18 + 241) = *&v33[208];
      *(v18 + 225) = v28;
      *(v18 + 209) = v27;
      *(v18 + 193) = v26;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
  if (*(v6 + 2))
  {
    sub_1D148DEC0(0, &qword_1EC6301E8, &type metadata for SignificantChangeEngine.Parameters, MEMORY[0x1E69E6EC8]);
    v29 = sub_1D15A4968();
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC8];
  }

  *v33 = v29;
  sub_1D148CE08(v6, 1, v33);
  return *v33;
}

HealthVisualization::TrendAnalysisKind_optional __swiftcall TrendAnalysisKind.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D15A49B8();

  if (v1 == 1)
  {
    v2.value = HealthVisualization_TrendAnalysisKind_frequencyChange;
  }

  else
  {
    v2.value = HealthVisualization_TrendAnalysisKind_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t TrendAnalysisKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636E657571657266;
  }

  else
  {
    return 0x666968536E61656DLL;
  }
}

uint64_t sub_1D148A6D4()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D148A764()
{
  sub_1D15A3F88();
}

uint64_t sub_1D148A7E0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D148A86C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

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

void sub_1D148A8CC(uint64_t *a1@<X8>)
{
  v2 = 0x666968536E61656DLL;
  if (*v1)
  {
    v2 = 0x636E657571657266;
  }

  v3 = 0xEF65676E61684374;
  if (*v1)
  {
    v3 = 0xEF65676E61684379;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D148A918(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636E657571657266;
  }

  else
  {
    v3 = 0x666968536E61656DLL;
  }

  if (v2)
  {
    v4 = 0xEF65676E61684374;
  }

  else
  {
    v4 = 0xEF65676E61684379;
  }

  if (*a2)
  {
    v5 = 0x636E657571657266;
  }

  else
  {
    v5 = 0x666968536E61656DLL;
  }

  if (*a2)
  {
    v6 = 0xEF65676E61684379;
  }

  else
  {
    v6 = 0xEF65676E61684374;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();
  }

  return v8 & 1;
}

HealthVisualization::ParameterOverrides __swiftcall ParameterOverrides.init(minimumEffectSize:minimumSegmentLength:minimumDataCount:)(Swift::Double_optional minimumEffectSize, Swift::Int minimumSegmentLength, Swift::Int minimumDataCount)
{
  *v4 = *&minimumEffectSize.is_nil;
  *(v4 + 8) = minimumSegmentLength & 1;
  *(v4 + 16) = minimumDataCount;
  *(v4 + 24) = v3;
  result.minimumEffectSize.value = minimumEffectSize.value;
  result.minimumEffectSize.is_nil = minimumEffectSize.is_nil;
  result.minimumDataCount = minimumDataCount;
  result.minimumSegmentLength = minimumSegmentLength;
  return result;
}

unint64_t sub_1D148AAC0()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D148AB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D148ED00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D148AB40(uint64_t a1)
{
  v2 = sub_1D148DF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D148AB7C(uint64_t a1)
{
  v2 = sub_1D148DF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParameterOverrides.encode(to:)(void *a1)
{
  sub_1D148E0C4(0, &qword_1EC630240, sub_1D148DF2C, &type metadata for ParameterOverrides.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148DF2C();
  sub_1D15A4CE8();
  v14 = 0;
  v9 = v11[3];
  sub_1D15A4AC8();
  if (!v9)
  {
    v13 = 1;
    sub_1D15A4B28();
    v12 = 2;
    sub_1D15A4B28();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ParameterOverrides.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1D148E0C4(0, &qword_1EE056450, sub_1D148DF2C, &type metadata for ParameterOverrides.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148DF2C();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v22 = 0;
    v11 = sub_1D15A4A08();
    v19 = v12 & 1;
    v21 = 1;
    v13 = sub_1D15A4A68();
    v20 = 2;
    v15 = sub_1D15A4A68();
    (*(v9 + 8))(v8, v5);
    v16 = v19;
    *v10 = v11;
    *(v10 + 8) = v16;
    *(v10 + 16) = v13;
    *(v10 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CorrelatedTrendConfiguration.objectTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

HealthVisualization::CorrelatedTrendConfiguration __swiftcall CorrelatedTrendConfiguration.init(objectTypeIdentifier:trendConfigurations:)(Swift::String objectTypeIdentifier, Swift::OpaquePointer trendConfigurations)
{
  *v2 = objectTypeIdentifier;
  *(v2 + 16) = trendConfigurations;
  result.objectTypeIdentifier = objectTypeIdentifier;
  result.trendConfigurations = trendConfigurations;
  return result;
}

uint64_t static CorrelatedTrendConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D15A4BA8() & 1) == 0)
  {
    return 0;
  }

  return sub_1D14887FC(v2, v3);
}

unint64_t sub_1D148B07C()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D148B0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x80000001D15BE130 == a2;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15BE150 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D148B194(uint64_t a1)
{
  v2 = sub_1D148DF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D148B1D0(uint64_t a1)
{
  v2 = sub_1D148DF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CorrelatedTrendConfiguration.encode(to:)(void *a1)
{
  sub_1D148E0C4(0, &qword_1EC630248, sub_1D148DF80, &type metadata for CorrelatedTrendConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148DF80();
  sub_1D15A4CE8();
  v15 = 0;
  v8 = v12;
  sub_1D15A4AF8();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    sub_1D1452138(0, &qword_1EE056850, &type metadata for TrendConfiguration, MEMORY[0x1E69E62F8]);
    sub_1D148DFD4();
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CorrelatedTrendConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  sub_1D148E0C4(0, &qword_1EE056400, sub_1D148DF80, &type metadata for CorrelatedTrendConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148DF80();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v17[0];
  v19 = 0;
  v11 = sub_1D15A4A38();
  v13 = v12;
  v14 = v11;
  sub_1D1452138(0, &qword_1EE056850, &type metadata for TrendConfiguration, MEMORY[0x1E69E62F8]);
  v18 = 1;
  sub_1D148E12C();
  sub_1D15A4A78();
  (*(v9 + 8))(v8, v5);
  v15 = v17[1];
  *v10 = v14;
  v10[1] = v13;
  v10[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D148B698(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D15A4BA8() & 1) == 0)
  {
    return 0;
  }

  return sub_1D14887FC(v2, v3);
}

uint64_t sub_1D148B70C()
{
  v1 = *v0;

  return v1;
}

void *sub_1D148B73C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D145BD08(0, &qword_1EC630300, sub_1D148F4FC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D148F4FC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D148B89C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D145BD08(0, &qword_1EC630290, sub_1D148EE24, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D148B9C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D145BD08(0, &qword_1EE05B438, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D148BAEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452138(0, &qword_1EE0562A8, &type metadata for DiagramDataGroup, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D148BC24(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D145BD08(0, &qword_1EC6302C0, sub_1D148F1E8, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D148F1E8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D148BD70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D145BD08(0, &qword_1EC6302F0, sub_1D148F49C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 224 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D148BEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452138(0, &qword_1EE05ABF8, &type metadata for StatisticsOption, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D148C05C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452138(0, &qword_1EE059698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D148C180(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452138(0, &qword_1EC6302A0, &type metadata for DiagramPointAnnotations, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D148C2B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D145BD08(0, &qword_1EE05ABE8, sub_1D144D748, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D144D748();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D148C404(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D145BD08(0, &qword_1EC6302A8, sub_1D148F108, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D148F198();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D148C58C(size_t result, int64_t a2, char a3, void *a4)
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
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v10 = MEMORY[0x1E69A3C98];
  sub_1D148EFF4(0, &qword_1EE05ABC8, &qword_1EE05ABB0, MEMORY[0x1E69A3C98], MEMORY[0x1E69E6F90]);
  sub_1D148F098(0, &qword_1EE05ABB0, v10);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1D148F098(0, &qword_1EE05ABB0, MEMORY[0x1E69A3C98]);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D148C7BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D148EFF4(0, &qword_1EE05ABC0, &qword_1EE05AB98, sub_1D148F05C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D148F098(0, &qword_1EE05AB98, sub_1D148F05C);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D148C960(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D145BD08(0, a5, a6, MEMORY[0x1E69E6F90]);
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

size_t sub_1D148CC00(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D148EED0(0, a5, a6, a7, a8);
  sub_1D148F314(0, a6, a7, a8);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  sub_1D148F314(0, a6, a7, a8);
  v23 = *(v22 - 8);
  if (v12)
  {
    if (v20 < a4 || (v24 = (*(v23 + 80) + 32) & ~*(v23 + 80), v20 + v24 >= a4 + v24 + *(v23 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

void sub_1D148CE08(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v60 = a1;
  v31 = a1 + 32;
  if (v6)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_1D148F460(&v46);
  *&v59[160] = v56;
  *&v59[176] = v57;
  *&v59[192] = v58[0];
  *&v59[201] = *(v58 + 9);
  *&v59[96] = v52;
  *&v59[112] = v53;
  *&v59[128] = v54;
  *&v59[144] = v55;
  *&v59[32] = v48;
  *&v59[48] = v49;
  *&v59[64] = v50;
  *&v59[80] = v51;
  v5 = v6;
  *v59 = v46;
  *&v59[16] = v47;
  while (1)
  {
    v56 = *&v59[160];
    v57 = *&v59[176];
    v58[0] = *&v59[192];
    *(v58 + 9) = *&v59[201];
    v52 = *&v59[96];
    v53 = *&v59[112];
    v54 = *&v59[128];
    v55 = *&v59[144];
    v48 = *&v59[32];
    v49 = *&v59[48];
    v50 = *&v59[64];
    v51 = *&v59[80];
    v46 = *v59;
    v47 = *&v59[16];
    if (sub_1D148F3DC(&v46) == 1)
    {

      return;
    }

    v14 = v59[0];
    v42 = *&v59[168];
    v43 = *&v59[184];
    v44 = *&v59[200];
    v45 = v59[216];
    v38 = *&v59[104];
    v39 = *&v59[120];
    v40 = *&v59[136];
    v41 = *&v59[152];
    v34 = *&v59[40];
    v35 = *&v59[56];
    v36 = *&v59[72];
    v37 = *&v59[88];
    v32 = *&v59[8];
    v33 = *&v59[24];
    v15 = *a3;
    v16 = sub_1D147FF58(v59[0]);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1D15A4BF8();
      __break(1u);
      goto LABEL_25;
    }

    v22 = v17;
    if (v15[3] >= v21)
    {
      break;
    }

    sub_1D1480C54(v21, a2 & 1);
    v16 = sub_1D147FF58(v14);
    if ((v22 & 1) != (v23 & 1))
    {
      goto LABEL_24;
    }

LABEL_12:
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_13:
    v24 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    *(v24[6] + v16) = v14;
    v25 = v24[7] + 216 * v16;
    *(v25 + 64) = v36;
    *(v25 + 80) = v37;
    *(v25 + 32) = v34;
    *(v25 + 48) = v35;
    *(v25 + 128) = v40;
    *(v25 + 144) = v41;
    *(v25 + 96) = v38;
    *(v25 + 112) = v39;
    *(v25 + 208) = v45;
    *(v25 + 176) = v43;
    *(v25 + 192) = v44;
    *(v25 + 160) = v42;
    *v25 = v32;
    *(v25 + 16) = v33;
    v26 = v24[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v24[2] = v27;
    a2 = 1;
    if (v5 == v6)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (v5 >= *(v60 + 16))
    {
      goto LABEL_23;
    }

    v7 = (v31 + 224 * v5);
    v8 = v7[11];
    *&v59[160] = v7[10];
    *&v59[176] = v8;
    *&v59[192] = v7[12];
    *&v59[201] = *(v7 + 201);
    v9 = v7[7];
    *&v59[96] = v7[6];
    *&v59[112] = v9;
    v10 = v7[9];
    *&v59[128] = v7[8];
    *&v59[144] = v10;
    v11 = v7[3];
    *&v59[32] = v7[2];
    *&v59[48] = v11;
    v12 = v7[5];
    *&v59[64] = v7[4];
    *&v59[80] = v12;
    v13 = v7[1];
    ++v5;
    *v59 = *v7;
    *&v59[16] = v13;
    nullsub_1(v59);
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v28 = v16;
  sub_1D1481E38();
  v16 = v28;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v29 = swift_allocError();
  swift_willThrow();

  v30 = v29;
  sub_1D148F3FC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  sub_1D15A47D8();
  MEMORY[0x1D388A330](0xD00000000000001BLL, 0x80000001D15BE1A0);
  sub_1D15A48B8();
  MEMORY[0x1D388A330](39, 0xE100000000000000);
  sub_1D15A4908();
  __break(1u);
}

BOOL _s19HealthVisualization18ParameterOverridesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL _s19HealthVisualization14TrendPredicateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4 && v2 != v3)
  {
    v5 = (v2 + 32);
    v6 = (v3 + 32);
    result = 1;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      if (!--v4)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1D148D310()
{
  result = qword_1EE059150;
  if (!qword_1EE059150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059150);
  }

  return result;
}

uint64_t sub_1D148D364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D1452138(255, &qword_1EE056808, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D148D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 3;
  if (v5 > 6)
  {
    if (v5 != 7)
    {
      if (v5 != 8)
      {
        if (v5 != 16)
        {
          return result;
        }

        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (a5 >> 3)
  {
    if (v5 != 1)
    {
      result = a4;
      if (v5 != 4)
      {
        return result;
      }
    }

LABEL_10:
  }

LABEL_11:
}

uint64_t sub_1D148D47C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

BOOL _s19HealthVisualization18TrendConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v28 = *(a1 + 56);
  v25 = *(a1 + 72);
  v7 = *(a1 + 80);
  v23 = *(a1 + 88);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 56);
  v26 = *(a2 + 64);
  v27 = *(a1 + 64);
  v24 = *(a2 + 72);
  v15 = *(a2 + 80);
  v22 = *(a2 + 88);
  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  v34 = *a1;
  v35 = v2;
  v36 = v3;
  v37 = v4;
  v38 = v16;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v17;
  sub_1D148D3E8(v34, v2, v3, v4, v16);
  sub_1D148D3E8(v8, v9, v10, v11, v17);
  LOBYTE(v8) = _s19HealthVisualization18QueryConfigurationO2eeoiySbAC_ACtFZ_0(&v34, &v29);
  sub_1D148D7A8(v29, v30, v31, v32, v33);
  sub_1D148D7A8(v34, v35, v36, v37, v38);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v5 != 1)
  {
    v34 = v5;
    if (v13 != 1)
    {
      v29 = v13;
      v18 = _s19HealthVisualization14TrendPredicateV2eeoiySbAC_ACtFZ_0(&v34, &v29);
      sub_1D148D47C(v5);
      sub_1D148D47C(v13);
      sub_1D148D47C(v5);

      sub_1D148D890(v5);
      if (!v18)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1D148D47C(v5);
    sub_1D148D47C(1);
    sub_1D148D47C(v5);

LABEL_8:
    sub_1D148D890(v5);
    sub_1D148D890(v13);
    return 0;
  }

  sub_1D148D47C(1);
  if (v13 != 1)
  {
    sub_1D148D47C(v13);
    goto LABEL_8;
  }

  sub_1D148D47C(1);
  sub_1D148D890(1);
LABEL_10:
  if ((sub_1D1488C0C(v6, v12) & 1) == 0 || (sub_1D1477670(v28, v14) & 1) == 0 || (sub_1D1488E7C(v27, v26) & 1) == 0)
  {
    return 0;
  }

  if (v25)
  {
    if (!v24)
    {
      return 0;
    }

    v19 = sub_1D14C4D38(v25, v24);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if ((v23 & 1) == 0)
  {
    v21 = v22;
    if (v7 != v15)
    {
      v21 = 1;
    }

    return (v21 & 1) == 0;
  }

  return (v22 & 1) != 0;
}

unint64_t sub_1D148D700()
{
  result = qword_1EE058E40;
  if (!qword_1EE058E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E40);
  }

  return result;
}

unint64_t sub_1D148D754()
{
  result = qword_1EE058E58;
  if (!qword_1EE058E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E58);
  }

  return result;
}

uint64_t sub_1D148D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 3;
  if (v5 > 6)
  {
    if (v5 != 7)
    {
      if (v5 != 8)
      {
        if (v5 != 16)
        {
          return result;
        }

        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (a5 >> 3)
  {
    if (v5 != 1)
    {
      result = a2;
      if (v5 != 4)
      {
        return result;
      }
    }

LABEL_10:
  }

LABEL_11:
}

unint64_t sub_1D148D83C()
{
  result = qword_1EC630210;
  if (!qword_1EC630210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630210);
  }

  return result;
}

uint64_t sub_1D148D890(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1D148D8A0()
{
  result = qword_1EC630218;
  if (!qword_1EC630218)
  {
    sub_1D1452138(255, &qword_1EE056838, &type metadata for DateRange, MEMORY[0x1E69E62F8]);
    sub_1D147903C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630218);
  }

  return result;
}

unint64_t sub_1D148D93C()
{
  result = qword_1EE059258[0];
  if (!qword_1EE059258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE059258);
  }

  return result;
}

unint64_t sub_1D148D990()
{
  result = qword_1EC630220;
  if (!qword_1EC630220)
  {
    sub_1D1452138(255, &qword_1EE056860, &type metadata for TrendAnalysisKind, MEMORY[0x1E69E62F8]);
    sub_1D148DA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630220);
  }

  return result;
}

unint64_t sub_1D148DA2C()
{
  result = qword_1EC630228;
  if (!qword_1EC630228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630228);
  }

  return result;
}

unint64_t sub_1D148DA80()
{
  result = qword_1EC630238;
  if (!qword_1EC630238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630238);
  }

  return result;
}

unint64_t sub_1D148DAD4()
{
  result = qword_1EE05B1D8;
  if (!qword_1EE05B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1D8);
  }

  return result;
}

unint64_t sub_1D148DB28()
{
  result = qword_1EE059138;
  if (!qword_1EE059138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059138);
  }

  return result;
}

unint64_t sub_1D148DB7C()
{
  result = qword_1EE056830;
  if (!qword_1EE056830)
  {
    sub_1D1452138(255, &qword_1EE056838, &type metadata for DateRange, MEMORY[0x1E69E62F8]);
    sub_1D14790F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056830);
  }

  return result;
}

unint64_t sub_1D148DC18()
{
  result = qword_1EE05B380;
  if (!qword_1EE05B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B380);
  }

  return result;
}

unint64_t sub_1D148DC6C()
{
  result = qword_1EE056858;
  if (!qword_1EE056858)
  {
    sub_1D1452138(255, &qword_1EE056860, &type metadata for TrendAnalysisKind, MEMORY[0x1E69E62F8]);
    sub_1D148DD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056858);
  }

  return result;
}

unint64_t sub_1D148DD08()
{
  result = qword_1EE058E80;
  if (!qword_1EE058E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E80);
  }

  return result;
}

uint64_t sub_1D148DD5C(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D148DEC0(255, &qword_1EE0568C8, &type metadata for ParameterOverrides, MEMORY[0x1E69E5E28]);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D148DE04()
{
  result = qword_1EE058E60;
  if (!qword_1EE058E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E60);
  }

  return result;
}

void sub_1D148DEC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1482AD8();
    v9 = a4(a1, &type metadata for DateRange, a3, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D148DF2C()
{
  result = qword_1EE058E78;
  if (!qword_1EE058E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E78);
  }

  return result;
}

unint64_t sub_1D148DF80()
{
  result = qword_1EE058268[0];
  if (!qword_1EE058268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058268);
  }

  return result;
}

unint64_t sub_1D148DFD4()
{
  result = qword_1EC630250;
  if (!qword_1EC630250)
  {
    sub_1D1452138(255, &qword_1EE056850, &type metadata for TrendConfiguration, MEMORY[0x1E69E62F8]);
    sub_1D148E070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630250);
  }

  return result;
}

unint64_t sub_1D148E070()
{
  result = qword_1EC630258;
  if (!qword_1EC630258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630258);
  }

  return result;
}

void sub_1D148E0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D148E12C()
{
  result = qword_1EE056848;
  if (!qword_1EE056848)
  {
    sub_1D1452138(255, &qword_1EE056850, &type metadata for TrendConfiguration, MEMORY[0x1E69E62F8]);
    sub_1D148E1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056848);
  }

  return result;
}

unint64_t sub_1D148E1C8()
{
  result = qword_1EE058E28;
  if (!qword_1EE058E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E28);
  }

  return result;
}

unint64_t sub_1D148E220()
{
  result = qword_1EC630260;
  if (!qword_1EC630260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630260);
  }

  return result;
}

unint64_t sub_1D148E278()
{
  result = qword_1EC630268;
  if (!qword_1EC630268)
  {
    sub_1D1452138(255, &qword_1EE056860, &type metadata for TrendAnalysisKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630268);
  }

  return result;
}

uint64_t sub_1D148E2F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1D148E350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthVisualization14TrendPredicateVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D148E3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D148E428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D148E4C4(uint64_t a1, int a2)
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

uint64_t sub_1D148E50C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MostRecentTimePeriodQueryConfiguration(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MostRecentTimePeriodQueryConfiguration(_WORD *result, int a2, int a3)
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

unint64_t sub_1D148E678()
{
  result = qword_1EC630270;
  if (!qword_1EC630270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630270);
  }

  return result;
}

unint64_t sub_1D148E6D0()
{
  result = qword_1EC630278;
  if (!qword_1EC630278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630278);
  }

  return result;
}

unint64_t sub_1D148E728()
{
  result = qword_1EC630280;
  if (!qword_1EC630280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630280);
  }

  return result;
}

unint64_t sub_1D148E780()
{
  result = qword_1EC630288;
  if (!qword_1EC630288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630288);
  }

  return result;
}

unint64_t sub_1D148E7D8()
{
  result = qword_1EE058258;
  if (!qword_1EE058258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058258);
  }

  return result;
}

unint64_t sub_1D148E830()
{
  result = qword_1EE058260;
  if (!qword_1EE058260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058260);
  }

  return result;
}

unint64_t sub_1D148E888()
{
  result = qword_1EE058E68;
  if (!qword_1EE058E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E68);
  }

  return result;
}

unint64_t sub_1D148E8E0()
{
  result = qword_1EE058E70;
  if (!qword_1EE058E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E70);
  }

  return result;
}

unint64_t sub_1D148E938()
{
  result = qword_1EE058E30;
  if (!qword_1EE058E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E30);
  }

  return result;
}

unint64_t sub_1D148E990()
{
  result = qword_1EE058E38;
  if (!qword_1EE058E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058E38);
  }

  return result;
}

unint64_t sub_1D148E9E8()
{
  result = qword_1EE059140;
  if (!qword_1EE059140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059140);
  }

  return result;
}

unint64_t sub_1D148EA40()
{
  result = qword_1EE059148;
  if (!qword_1EE059148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059148);
  }

  return result;
}

uint64_t sub_1D148EA94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15BE070 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xEA00000000007365 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144676E69646E65 && a2 == 0xEA00000000006574 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736973796C616E61 && a2 == 0xED000073646E694BLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15BE090 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15BE0B0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D148ED00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D15BE0D0 == a2;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15BE0F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE110 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1D148EE24()
{
  if (!qword_1EC630298)
  {
    v0 = sub_1D15A4258();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630298);
    }
  }
}

unint64_t sub_1D148EE7C()
{
  result = qword_1EE058E88[0];
  if (!qword_1EE058E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058E88);
  }

  return result;
}

void sub_1D148EED0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D148F314(255, a3, a4, a5);
    v6 = sub_1D15A4B78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D148EF60()
{
  if (!qword_1EE059570)
  {
    sub_1D15A22A8();
    sub_1D1452138(255, &qword_1EE059750, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE059570);
    }
  }
}

void sub_1D148EFF4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D148F098(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D148F098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D1487F34();
    v4 = sub_1D15A4CC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D148F108()
{
  result = qword_1EC6302B0;
  if (!qword_1EC6302B0)
  {
    sub_1D145BD08(255, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EC6302B0);
  }

  return result;
}

unint64_t sub_1D148F198()
{
  result = qword_1EC6302B8;
  if (!qword_1EC6302B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC6302B8);
  }

  return result;
}

void sub_1D148F1E8()
{
  if (!qword_1EC6302C8)
  {
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6302C8);
    }
  }
}

uint64_t sub_1D148F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange.Period(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D148F2B8(uint64_t a1)
{
  v2 = type metadata accessor for SignificantChange.Period(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D148F314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

unint64_t sub_1D148F390()
{
  result = qword_1EE056700;
  if (!qword_1EE056700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE056700);
  }

  return result;
}

uint64_t sub_1D148F3DC(uint64_t a1)
{
  v1 = *(a1 + 113);
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(a1 + 113);
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D148F3FC()
{
  result = qword_1EE05ABB8;
  if (!qword_1EE05ABB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE05ABB8);
  }

  return result;
}

double sub_1D148F460(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 1280;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return result;
}

void sub_1D148F49C()
{
  if (!qword_1EC6302F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6302F8);
    }
  }
}

void sub_1D148F4FC()
{
  if (!qword_1EC630308)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630308);
    }
  }
}

uint64_t AudiogramQueryConfiguration.mostRecentSample.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t static AudiogramQueryConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[3];
  v6 = *(a2 + 32);
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = v2;
  v16 = v3;
  v9 = v4;
  v10 = *(a2 + 1);
  v11 = v5;
  v12 = v6;
  ConfigurationV2eeoiySbAC_ACtFZ_0 = _s19HealthVisualization34MostRecentSampleQueryConfigurationV2eeoiySbAC_ACtFZ_0(&v13, &v9);

  return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_1D148F6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D15BE1D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D148F76C(uint64_t a1)
{
  v2 = sub_1D148FC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D148F7A8(uint64_t a1)
{
  v2 = sub_1D148FC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudiogramQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D148FCF4(0, &qword_1EC630310, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v12 = v1[2];
  HIDWORD(v11) = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148FC4C();

  sub_1D15A4CE8();
  v13 = v7;
  v14 = v8;
  v15 = v12;
  v16 = v9;
  v17 = BYTE4(v11);
  sub_1D148FCA0();
  sub_1D15A4B38();

  return (*(v18 + 8))(v6, v4);
}

uint64_t AudiogramQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D148FCF4(0, &qword_1EE05AC68, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D148FC4C();
  sub_1D15A4CD8();
  if (!v2)
  {
    sub_1D148FD58();
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v10 = v14;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D148FB64(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = a2[3];
  v6 = *(a2 + 32);
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = v2;
  v16 = v3;
  v9 = v4;
  v10 = *(a2 + 1);
  v11 = v5;
  v12 = v6;
  ConfigurationV2eeoiySbAC_ACtFZ_0 = _s19HealthVisualization34MostRecentSampleQueryConfigurationV2eeoiySbAC_ACtFZ_0(&v13, &v9);

  return ConfigurationV2eeoiySbAC_ACtFZ_0 & 1;
}

unint64_t sub_1D148FC4C()
{
  result = qword_1EE05AFE8;
  if (!qword_1EE05AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFE8);
  }

  return result;
}

unint64_t sub_1D148FCA0()
{
  result = qword_1EE057D00;
  if (!qword_1EE057D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D00);
  }

  return result;
}

void sub_1D148FCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D148FC4C();
    v7 = a3(a1, &type metadata for AudiogramQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D148FD58()
{
  result = qword_1EE05AF60;
  if (!qword_1EE05AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF60);
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

uint64_t sub_1D148FDC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1D148FE1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D148FE98()
{
  result = qword_1EC630318;
  if (!qword_1EC630318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630318);
  }

  return result;
}

unint64_t sub_1D148FEF0()
{
  result = qword_1EE05AFD8;
  if (!qword_1EE05AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFD8);
  }

  return result;
}

unint64_t sub_1D148FF48()
{
  result = qword_1EE05AFE0;
  if (!qword_1EE05AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFE0);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySummarySnidgetValueView()
{
  result = qword_1EE057FD8;
  if (!qword_1EE057FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1490010()
{
  sub_1D1491458(319, &qword_1EE0597A0, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D15A23F8();
    if (v1 <= 0x3F)
    {
      sub_1D1491814(319, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D1491458(319, &qword_1EE059750, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D1490158@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D15A23F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  sub_1D1491780(v2, v16 - v11);
  v13 = 1;
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v9, v12, v6);
  a1(v9);
  if (!v3)
  {
    (*(v7 + 8))(v9, v6);
    v13 = 0;
LABEL_4:
    sub_1D1491530(0, &qword_1EE056B90, sub_1D14915A4, MEMORY[0x1E697CBE8]);
    return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
  }

  result = (*(v7 + 8))(v9, v6);
  __break(1u);
  return result;
}

uint64_t sub_1D14903B4()
{
  v1 = sub_1D15A3878();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_1D15A4328();
    v7 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();
    sub_1D14919A0(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1D1490518(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6573696372657845;
  if (v2 != 1)
  {
    v4 = 0x646E617453;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1702260557;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6573696372657845;
  if (*a2 != 1)
  {
    v8 = 0x646E617453;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702260557;
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
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D149060C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14906A4()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1490728()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14907BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D14919B0();
  *a1 = result;
  return result;
}

void sub_1D14907EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6573696372657845;
  if (v2 != 1)
  {
    v5 = 0x646E617453;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702260557;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D1490844()
{
  result = qword_1EC630320;
  if (!qword_1EC630320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630320);
  }

  return result;
}

uint64_t sub_1D14908B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1D14914A8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - v6;
  v7 = sub_1D15A23F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491348(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  sub_1D15A4148();
  v38 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = type metadata accessor for ActivitySummarySnidgetValueView();
  (*(v8 + 16))(v10, a1 + *(v37 + 24), v7);
  v16 = sub_1D15A3B18();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v45 = v16;
  v46 = v18;
  v47 = v20 & 1;
  v36 = v22;
  v48 = v22;
  v49 = KeyPath;
  v50 = 1;
  v51 = 0;
  v43 = sub_1D14903B4();
  v44 = v24;
  MEMORY[0x1D388A330](46, 0xE100000000000000);
  v25 = 0xE800000000000000;
  v26 = 0x6573696372657845;
  if (*(a1 + 17) != 1)
  {
    v26 = 0x646E617453;
    v25 = 0xE500000000000000;
  }

  if (*(a1 + 17))
  {
    v27 = v26;
  }

  else
  {
    v27 = 1702260557;
  }

  if (*(a1 + 17))
  {
    v28 = v25;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x1D388A330](v27, v28);

  MEMORY[0x1D388A330](0x656C746954, 0xE500000000000000);
  sub_1D149137C();
  sub_1D14915D8();
  sub_1D15A3BD8();

  sub_1D1491688(v16, v18, v20 & 1);

  MEMORY[0x1EEE9AC00](v29);
  *(&v36 - 2) = a1;
  v30 = v40;
  sub_1D1490158(sub_1D1491698, v40);
  v31 = v39;
  sub_1D14916B8(v15, v39, sub_1D1491348);
  v32 = v42;
  sub_1D14916B8(v30, v42, sub_1D14914A8);
  v33 = v41;
  sub_1D14916B8(v31, v41, sub_1D1491348);
  sub_1D14912D8();
  sub_1D14916B8(v32, v33 + *(v34 + 48), sub_1D14914A8);
  sub_1D1491720(v30, sub_1D14914A8);
  sub_1D1491720(v15, sub_1D1491348);
  sub_1D1491720(v32, sub_1D14914A8);
  sub_1D1491720(v31, sub_1D1491348);
}