void sub_21A049450(uint64_t a1)
{
  v2 = type metadata accessor for InternalMessagePlaceholderView();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v16 - v5);
  if (qword_27CCD90D0 != -1)
  {
    swift_once();
  }

  v7 = sub_21A0E516C();
  __swift_project_value_buffer(v7, qword_27CCD97D8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_21A0E514C();
  v9 = sub_21A0E669C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = *v6;
    v13 = v6[1];
    v14 = *(v3 + 8);

    v14(v6, v2);
    v15 = sub_219F50144(v12, v13, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_219F39000, v8, v9, "InternalMessagePlaceholderView: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21A04968C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0496FC()
{
  result = qword_27CCDC2E8;
  if (!qword_27CCDC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2E0);
    sub_21A049780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC2E8);
  }

  return result;
}

unint64_t sub_21A049780()
{
  result = qword_27CCDC2F0;
  if (!qword_27CCDC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2F8);
    sub_21A04980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC2F0);
  }

  return result;
}

unint64_t sub_21A04980C()
{
  result = qword_27CCDC300;
  if (!qword_27CCDC300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC300);
  }

  return result;
}

uint64_t sub_21A049890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A0498F8()
{
  v1 = *(type metadata accessor for InternalMessagePlaceholderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_21A049450(v2);
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityFooterThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_21A0499A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0499F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A049AE0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v130, a1 + 7, sizeof(v130));
  memcpy(v132, a1 + 7, sizeof(v132));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v132) == 1)
  {
    sub_219F639B0(&v133);
  }

  else
  {
    v131[10] = v132[10];
    v131[11] = v132[11];
    *&v131[12] = *&v132[12];
    v131[6] = v132[6];
    v131[7] = v132[7];
    v131[8] = v132[8];
    v131[9] = v132[9];
    v131[2] = v132[2];
    v131[3] = v132[3];
    v131[4] = v132[4];
    v131[5] = v132[5];
    v131[0] = v132[0];
    v131[1] = v132[1];
    sub_219F45500(v131, &v133, &qword_27CCD95B8);
    v143 = v131[10];
    v144 = v131[11];
    v145 = *&v131[12];
    v139 = v131[6];
    v140 = v131[7];
    v141 = v131[8];
    v142 = v131[9];
    v135 = v131[2];
    v136 = v131[3];
    v137 = v131[4];
    v138 = v131[5];
    v133 = v131[0];
    v134 = v131[1];
  }

  v122 = v142;
  v123 = v143;
  v124 = v144;
  v118 = v138;
  v119 = v139;
  v120 = v140;
  v121 = v141;
  v114 = v134;
  v115 = v135;
  v116 = v136;
  v117 = v137;
  v125 = v145;
  v113 = v133;
  if (qword_27CCD91C0 != -1)
  {
    swift_once();
  }

  v126[2] = xmmword_27CCDC330;
  v126[3] = unk_27CCDC340;
  v126[4] = xmmword_27CCDC350;
  v127 = dword_27CCDC360;
  v126[0] = xmmword_27CCDC310;
  v126[1] = unk_27CCDC320;
  v109 = xmmword_27CCDC330;
  v110 = unk_27CCDC340;
  v111 = xmmword_27CCDC350;
  v112 = dword_27CCDC360;
  v107 = xmmword_27CCDC310;
  v108 = unk_27CCDC320;
  v106 = 9;
  v8 = *a1;
  v9 = a1[1];
  *(v129 + 9) = *(a1 + 25);
  v128 = v8;
  v129[0] = v9;
  v44 = BYTE8(v129[1]);
  v42 = *(&v8 + 1);
  v43 = v3;
  v49 = v8;
  v40 = *(&v9 + 1);
  v41 = v9;
  v39 = *&v129[1];
  if (BYTE8(v129[1]) == 1)
  {
    v103 = v8;
    v104 = v9;
    v105 = *&v129[1];
    sub_219F639D4(v126, v131);
    sub_219F45500(&v128, v131, &qword_27CCD9580);
  }

  else
  {
    sub_219F639D4(v126, v131);
    sub_219F45500(&v128, v131, &qword_27CCD9580);
    sub_21A0E66AC();
    v10 = v7;
    v11 = sub_21A0E575C();
    sub_21A0E512C();

    v7 = v10;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v128, &qword_27CCD9580);
    (*(v4 + 8))(v10, v3);
  }

  v12 = *(a1 + 6);
  v13 = *(a1 + 7);
  v14 = *(a1 + 64);
  v131[0] = v103;
  v131[1] = v104;
  *&v131[2] = v105;
  v15 = Text.activityTextModifier(_:fallback:font:environment:)(&v113, &v107, &v106, v131, v12, v13, v14);
  v45 = v16;
  v46 = v15;
  LODWORD(v18) = v17;
  v47 = v19;
  v97[0] = v131[0];
  v97[1] = v131[1];
  v98 = *&v131[2];
  sub_219F5ED9C(v97);
  v99[2] = v109;
  v99[3] = v110;
  v99[4] = v111;
  v100 = v112;
  v99[0] = v107;
  v99[1] = v108;
  sub_219F6409C(v99, &qword_27CCD95B0);
  v101[9] = v122;
  v101[10] = v123;
  v101[11] = v124;
  v102 = v125;
  v101[5] = v118;
  v101[6] = v119;
  v101[7] = v120;
  v101[8] = v121;
  v101[1] = v114;
  v101[2] = v115;
  v101[3] = v116;
  v101[4] = v117;
  v101[0] = v113;
  sub_219F6409C(v101, &qword_27CCD95B8);
  v20 = *(a1 + 10);
  v21 = *(a1 + 11);
  v22 = *(a1 + 12);
  if (*(a1 + 13))
  {
    v38 = v18;
    memcpy(v131, v130, sizeof(v131));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v131) == 1)
    {
      sub_219F639B0(&v84);
    }

    else
    {
      v81 = *(&v131[24] + 1);
      v71 = *(&v131[14] + 8);
      v72 = *(&v131[15] + 8);
      v69 = *(&v131[12] + 8);
      v70 = *(&v131[13] + 8);
      v79 = *(&v131[22] + 8);
      v80 = *(&v131[23] + 8);
      v75 = *(&v131[18] + 8);
      v76 = *(&v131[19] + 8);
      v77 = *(&v131[20] + 8);
      v78 = *(&v131[21] + 8);
      v73 = *(&v131[16] + 8);
      v74 = *(&v131[17] + 8);
      sub_219F45500(&v69, &v84, &qword_27CCD95B8);
      v94 = v79;
      v95 = v80;
      v96 = v81;
      v90 = v75;
      v91 = v76;
      v92 = v77;
      v93 = v78;
      v86 = v71;
      v87 = v72;
      v88 = v73;
      v89 = v74;
      v84 = v69;
      v85 = v70;
    }

    v79 = v94;
    v80 = v95;
    v81 = v96;
    v75 = v90;
    v76 = v91;
    v77 = v92;
    v78 = v93;
    v71 = v86;
    v72 = v87;
    v73 = v88;
    v74 = v89;
    v69 = v84;
    v70 = v85;
    sub_219F63A40(v20, v21, v22 & 1);
    v24 = qword_27CCD91C8;

    if (v24 != -1)
    {
      swift_once();
    }

    v82[2] = xmmword_27CCDC388;
    v82[3] = unk_27CCDC398;
    v82[4] = xmmword_27CCDC3A8;
    v83 = dword_27CCDC3B8;
    v82[0] = xmmword_27CCDC368;
    v82[1] = unk_27CCDC378;
    v65 = xmmword_27CCDC388;
    v66 = unk_27CCDC398;
    v67 = xmmword_27CCDC3A8;
    v68 = dword_27CCDC3B8;
    v63 = xmmword_27CCDC368;
    v64 = unk_27CCDC378;
    v62 = 9;
    if (v44)
    {
      *&v59 = v49;
      *(&v59 + 1) = v42;
      *&v60 = v41;
      *(&v60 + 1) = v40;
      v61 = v39;
      sub_219F45500(&v128, v57, &qword_27CCD9580);
      sub_219F639D4(v82, v57);
    }

    else
    {
      sub_219F45500(&v128, v57, &qword_27CCD9580);
      sub_219F639D4(v82, v57);
      sub_21A0E66AC();
      v25 = sub_21A0E575C();
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v128, &qword_27CCD9580);
      (*(v4 + 8))(v7, v43);
    }

    v50 = v59;
    v51 = v60;
    v52 = v61;
    v18 = Text.activityTextModifier(_:fallback:font:environment:)(&v69, &v63, &v62, &v50, v20, v21, v22 & 1);
    v27 = v26;
    v29 = v28;
    v23 = v30;
    sub_219F63A30(v20, v21, v22 & 1);

    v53[0] = v50;
    v53[1] = v51;
    v54 = v52;
    sub_219F5ED9C(v53);
    v55[2] = v65;
    v55[3] = v66;
    v55[4] = v67;
    v56 = v68;
    v55[0] = v63;
    v55[1] = v64;
    sub_219F6409C(v55, &qword_27CCD95B0);
    v57[10] = v79;
    v57[11] = v80;
    v58 = v81;
    v57[6] = v75;
    v57[7] = v76;
    v57[8] = v77;
    v57[9] = v78;
    v57[2] = v71;
    v57[3] = v72;
    v57[4] = v73;
    v57[5] = v74;
    v57[0] = v69;
    v57[1] = v70;
    sub_219F6409C(v57, &qword_27CCD95B8);
    v22 = v29 & 1;
    sub_219F63A40(v18, v27, v29 & 1);

    v20 = v18;
    v21 = v27;
    LOBYTE(v18) = v38;
  }

  else
  {
    v23 = 0;
  }

  v31 = v18 & 1;
  v33 = v45;
  v32 = v46;
  sub_219F63A40(v46, v45, v31);
  v34 = v47;

  sub_21A006EE4(v20, v21, v22, v23);
  sub_21A006F28(v20, v21, v22, v23);
  LOBYTE(v84) = v31;
  v35 = v48;
  *v48 = v32;
  v35[1] = v33;
  *(v35 + 16) = v31;
  v35[3] = v34;
  v35[4] = v20;
  v35[5] = v21;
  v35[6] = v22;
  v35[7] = v23;
  sub_21A006F28(v20, v21, v22, v23);
  sub_219F63A30(v32, v33, v31);
}

__n128 sub_21A04A414@<Q0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21A0E55BC();
  sub_21A049AE0(__dst, v7);
  *&v5[55] = v7[3];
  *&v5[39] = v7[2];
  *&v5[23] = v7[1];
  *&v5[7] = v7[0];
  *(a1 + 33) = *&v5[16];
  result = *&v5[32];
  *(a1 + 49) = *&v5[32];
  *(a1 + 65) = *&v5[48];
  *a1 = v3;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v5[63];
  *(a1 + 17) = *v5;
  return result;
}

double sub_21A04A4B4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC310 = v0;
  BYTE4(xmmword_27CCDC350) = 32;
  LODWORD(xmmword_27CCDC350) = 0;
  *(&xmmword_27CCDC350 + 1) = 0;
  dword_27CCDC360 = 50464513;
  return result;
}

double sub_21A04A534()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC368 = v0;
  BYTE4(xmmword_27CCDC3A8) = 32;
  LODWORD(xmmword_27CCDC3A8) = 0;
  *(&xmmword_27CCDC3A8 + 1) = 0;
  dword_27CCDC3B8 = 50726657;
  return result;
}

unint64_t sub_21A04A5B4()
{
  result = qword_27CCDC3C0;
  if (!qword_27CCDC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3C0);
  }

  return result;
}

uint64_t ElectionEntityBadge.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ElectionEntityBadge.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ElectionEntityBadge.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  return sub_219F79C1C();
}

uint64_t ElectionEntityBadge.symbol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  result = sub_219F79CD8();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t sub_21A04A730()
{
  if (*v0)
  {
    return 0x6C6F626D7973;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_21A04A764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A04A838(uint64_t a1)
{
  v2 = sub_21A04B0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A04A874(uint64_t a1)
{
  v2 = sub_21A04B0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectionEntityBadge.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC3D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v8;
  v22 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 33);
  v12 = *(v1 + 34);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04B0A4();
  sub_21A0E6EAC();
  LOBYTE(v17) = 0;
  v9 = v16;
  sub_21A0E6B7C();
  if (!v9)
  {
    v17 = v15;
    v18 = v14;
    v19 = v22;
    v20 = v13;
    v21 = v12;
    v23 = 1;
    sub_219F79C1C();
    sub_219F913D8();
    sub_21A0E6BBC();
    sub_219F79CD8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ElectionEntityBadge.hash(into:)(uint64_t a1)
{
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[34];
  sub_21A0E626C();
  MEMORY[0x21CED2490](v3);
  sub_21A0E626C();
  if (v4 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v4);
    if (v5 != 3)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  if (v5 == 3)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t ElectionEntityBadge.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  v8 = v3;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v5);
  return sub_21A0E6DFC();
}

uint64_t ElectionEntityBadge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC3E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04B0A4();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v13 = v10;
  v24 = 1;
  sub_219F90414();
  sub_21A0E6ADC();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 33) = v17;

  sub_219F79C1C();
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_219F79CD8();
}

uint64_t sub_21A04AE54()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  v8 = v3;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A04AEBC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  v8 = v3;
  sub_21A0E6DAC();
  ElectionEntityBadge.hash(into:)(v5);
  return sub_21A0E6DFC();
}

void sub_21A04AF50()
{
  qword_27CCFE700 = 0x72656E6E6957;
  *algn_27CCFE708 = 0xE600000000000000;
  qword_27CCFE710 = 0xD000000000000015;
  unk_27CCFE718 = 0x800000021A10AA10;
  byte_27CCFE720 = 0;
  *&byte_27CCFE721 = 777;
}

BOOL _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = *(a1 + 33), v13 = sub_21A0E6C5C(), v5 = v12, v14 = 0, (v13 & 1) != 0))
  {
    v20[0] = v2;
    v20[1] = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v16[0] = v7;
    v16[1] = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_219F79C1C();
    sub_219F79C1C();
    v14 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v20, v16);
    sub_219F79CD8();
    sub_219F79CD8();
  }

  return v14;
}

unint64_t sub_21A04B0A4()
{
  result = qword_27CCDC3D8;
  if (!qword_27CCDC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3D8);
  }

  return result;
}

unint64_t sub_21A04B0FC()
{
  result = qword_27CCDC3E8;
  if (!qword_27CCDC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3E8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A04B164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_21A04B1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A04B218()
{
  result = qword_27CCDC3F0;
  if (!qword_27CCDC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3F0);
  }

  return result;
}

unint64_t sub_21A04B270()
{
  result = qword_27CCDC3F8;
  if (!qword_27CCDC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC3F8);
  }

  return result;
}

unint64_t sub_21A04B2C8()
{
  result = qword_27CCDC400;
  if (!qword_27CCDC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC400);
  }

  return result;
}

uint64_t static NationalElectionStaticAttributes.bidenVSTrump.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v128 = &v118 - v3;
  v4 = type metadata accessor for ActivityAsset();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v118 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v118 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v118 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v119 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v136 = &v118 - v20;
  v121 = type metadata accessor for NationalElectionTheme();
  MEMORY[0x28223BE20](v121, v21);
  v122 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC408);
  v135 = type metadata accessor for ElectionEntityTheme();
  v24 = *(*(v135 - 8) + 72);
  v25 = *(*(v135 - 8) + 80);
  v26 = (v25 + 32) & ~v25;
  v133 = v23;
  v134 = v24;
  v130 = v26 + 2 * v24;
  v131 = v25;
  v27 = swift_allocObject();
  v129 = xmmword_21A0FBC80;
  *(v27 + 16) = xmmword_21A0FBC80;
  v120 = v27;
  v132 = v26;
  *&v127 = v27 + v26;
  v125 = v14;
  *v14 = xmmword_21A0FBC90;
  v14[16] = 0;
  *(v14 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC410);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  *&v124 = 4 * v29;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21A0FBCA0;
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x800000021A10AA30;
  v126 = v31;
  v32 = v31 + v30;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v33 = sub_219FE95B4(&unk_282B1C7D0);
  sub_21A04D070(v11, v32, type metadata accessor for ActivityAsset);
  *(v32 + *(v28 + 28)) = v33;
  v34 = MEMORY[0x277D84F90];
  *(v32 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v35 = v34;
  v36 = v32 + v29;
  *v11 = xmmword_21A0FBCB0;
  v11[16] = 0;
  *(v11 + 17) = 770;
  swift_storeEnumTagMultiPayload();
  v37 = sub_219FE95B4(&unk_282B1C800);
  sub_21A04D070(v11, v32 + v29, type metadata accessor for ActivityAsset);
  *(v36 + *(v28 + 28)) = v37;
  *(v36 + *(v28 + 32)) = v35;
  v38 = v32 + 2 * v29;
  *v11 = xmmword_21A0FBCC0;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v39 = sub_219FE95B4(&unk_282B1C830);
  sub_21A04D070(v11, v38, type metadata accessor for ActivityAsset);
  *(v38 + *(v28 + 28)) = v39;
  *(v38 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v40 = 3 * v29;
  v41 = v125;
  v42 = v32 + v40;
  *v11 = xmmword_21A0FBCD0;
  v11[16] = 0;
  *(v11 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  v43 = sub_219FE95B4(&unk_282B1C860);
  sub_21A04D070(v11, v42, type metadata accessor for ActivityAsset);
  *(v42 + *(v28 + 28)) = v43;
  v44 = MEMORY[0x277D84F90];
  *(v42 + *(v28 + 32)) = MEMORY[0x277D84F90];
  v45 = v32 + v124;
  *v11 = 0xD000000000000010;
  *(v11 + 1) = 0x800000021A10AA50;
  v11[16] = 0;
  *(v11 + 17) = 777;
  *&v124 = v4;
  swift_storeEnumTagMultiPayload();
  v46 = sub_219FE95B4(&unk_282B1C890);
  sub_21A04D070(v11, v45, type metadata accessor for ActivityAsset);
  *(v45 + *(v28 + 28)) = v46;
  *(v45 + *(v28 + 32)) = v44;
  sub_21A04D2A8(v41, v136, type metadata accessor for ActivityAsset);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v47 = qword_27CCDBDB0;

  sub_21A04D310(v41, type metadata accessor for ActivityAsset);
  v48 = v136;
  *&v136[*(v28 + 28)] = v47;
  *(v48 + *(v28 + 32)) = v126;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v50 = *(*(v49 - 8) + 56);
  v50(v48, 0, 1, v49);
  if (qword_27CCD9170 != -1)
  {
    swift_once();
  }

  v170 = xmmword_27CCFE6A0;
  v171 = unk_27CCFE6B0;
  v172 = xmmword_27CCFE6C0;
  v173 = qword_27CCFE6D0;
  v168 = xmmword_27CCFE680;
  v169 = *algn_27CCFE690;
  v51 = v135;
  v52 = *(v135 + 28);
  v53 = v127;
  v50((v127 + v52), 1, 1, v49);
  *v53 = 49;
  v53[1] = 0xE100000000000000;
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = 0x6E65646942;
  v53[5] = 0xE500000000000000;
  sub_219FB63A4(&v168, &v162);
  sub_219FC63EC(v136, v53 + v52);
  v54 = v53 + *(v51 + 32);
  v55 = v171;
  *(v54 + 2) = v170;
  *(v54 + 3) = v55;
  *(v54 + 4) = v172;
  *(v54 + 10) = v173;
  v56 = v169;
  *v54 = v168;
  *(v54 + 1) = v56;
  v57 = v128;
  sub_21A0E47CC();
  v58 = sub_21A0E481C();
  v59 = *(v58 - 8);
  result = (*(v59 + 48))(v57, 1, v58);
  v125 = v50;
  v126 = v49;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v61 = v53 + v134;
    v62 = v118;
    (*(v59 + 32))(v118, v57, v58);
    type metadata accessor for URLAssetConfiguration.Format(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v63 = v119;
    sub_21A04D2A8(v62, v119, type metadata accessor for ActivityAsset);
    v64 = qword_27CCDBDB0;

    sub_21A04D310(v62, type metadata accessor for ActivityAsset);
    *(v63 + *(v28 + 28)) = v64;
    *(v63 + *(v28 + 32)) = MEMORY[0x277D84F90];
    v65 = v125;
    v66 = v126;
    v125(v63, 0, 1, v126);
    v67 = v65;
    v68 = v66;
    if (qword_27CCD9168 != -1)
    {
      swift_once();
    }

    v141 = unk_27CCFE650;
    v142 = xmmword_27CCFE660;
    v143 = qword_27CCFE670;
    v139 = *algn_27CCFE630;
    v140 = xmmword_27CCFE640;
    v138 = xmmword_27CCFE620;
    v69 = *(v135 + 28);
    v70 = v135;
    v67(&v61[v69], 1, 1, v66);
    *v61 = 50;
    *(v61 + 1) = 0xE100000000000000;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    *(v61 + 4) = 0x706D757254;
    *(v61 + 5) = 0xE500000000000000;
    sub_219FB63A4(&v138, &v162);
    sub_219FC63EC(v63, &v61[v69]);
    v71 = &v61[*(v70 + 32)];
    v72 = v141;
    v73 = v142;
    *(v71 + 2) = v140;
    *(v71 + 3) = v72;
    *(v71 + 4) = v73;
    *(v71 + 10) = v143;
    v74 = v139;
    *v71 = v138;
    *(v71 + 1) = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = v129;
    v128 = v75;
    v76 = v75 + v132;
    v77 = v136;
    v67(v136, 1, 1, v66);
    v146 = xmmword_27CCFE6A0;
    v147 = unk_27CCFE6B0;
    v148 = xmmword_27CCFE6C0;
    v149 = qword_27CCFE6D0;
    v144 = xmmword_27CCFE680;
    v145 = *algn_27CCFE690;
    v78 = v135;
    v79 = *(v135 + 28);
    v67((v76 + v79), 1, 1, v68);
    *v76 = 0x642D6574616E6573;
    *(v76 + 8) = 0xEA00000000006D65;
    v127 = xmmword_21A0FBCE0;
    *(v76 + 16) = xmmword_21A0FBCE0;
    *(v76 + 32) = 0x746172636F6D6544;
    *(v76 + 40) = 0xE800000000000000;
    sub_219FB63A4(&v144, &v162);
    sub_219FC63EC(v77, v76 + v79);
    v80 = v78;
    v81 = v76 + *(v78 + 32);
    v82 = v147;
    *(v81 + 32) = v146;
    *(v81 + 48) = v82;
    *(v81 + 64) = v148;
    *(v81 + 80) = v149;
    v83 = v145;
    v84 = v76 + v134;
    *v81 = v144;
    *(v81 + 16) = v83;
    v85 = v77;
    v67(v77, 1, 1, v68);
    v152 = xmmword_27CCFE640;
    v153 = unk_27CCFE650;
    v154 = xmmword_27CCFE660;
    v155 = qword_27CCFE670;
    v150 = xmmword_27CCFE620;
    v151 = *algn_27CCFE630;
    v86 = v80;
    v87 = *(v80 + 28);
    v67((v84 + v87), 1, 1, v68);
    *v84 = 0x672D6574616E6573;
    *(v84 + 8) = 0xEA0000000000706FLL;
    v124 = xmmword_21A0FBCF0;
    *(v84 + 16) = xmmword_21A0FBCF0;
    *(v84 + 32) = 0x63696C6275706552;
    *(v84 + 40) = 0xEA00000000006E61;
    sub_219FB63A4(&v150, &v162);
    v88 = v84 + v87;
    v89 = v85;
    sub_219FC63EC(v85, v88);
    v90 = v84 + *(v86 + 32);
    v91 = v153;
    *(v90 + 32) = v152;
    *(v90 + 48) = v91;
    *(v90 + 64) = v154;
    *(v90 + 80) = v155;
    v92 = v151;
    *v90 = v150;
    *(v90 + 16) = v92;
    v93 = swift_allocObject();
    *(v93 + 16) = v129;
    v133 = v93;
    v94 = v93 + v132;
    v95 = v89;
    v67(v89, 1, 1, v68);
    v158 = xmmword_27CCFE6A0;
    v159 = unk_27CCFE6B0;
    v160 = xmmword_27CCFE6C0;
    v161 = qword_27CCFE6D0;
    v156 = xmmword_27CCFE680;
    v157 = *algn_27CCFE690;
    v96 = *(v86 + 28);
    v67((v94 + v96), 1, 1, v68);
    *v94 = 0x65642D6573756F68;
    *(v94 + 8) = 0xE90000000000006DLL;
    *(v94 + 16) = v127;
    *(v94 + 32) = 0x746172636F6D6544;
    *(v94 + 40) = 0xE800000000000000;
    sub_219FB63A4(&v156, &v162);
    sub_219FC63EC(v95, v94 + v96);
    v97 = v94 + *(v86 + 32);
    v98 = v159;
    *(v97 + 32) = v158;
    *(v97 + 48) = v98;
    *(v97 + 64) = v160;
    *(v97 + 80) = v161;
    v99 = v157;
    v100 = v94 + v134;
    *v97 = v156;
    *(v97 + 16) = v99;
    v67(v95, 1, 1, v68);
    v164 = xmmword_27CCFE640;
    v165 = unk_27CCFE650;
    v166 = xmmword_27CCFE660;
    v167 = qword_27CCFE670;
    v162 = xmmword_27CCFE620;
    v163 = *algn_27CCFE630;
    v101 = *(v86 + 28);
    v67((v100 + v101), 1, 1, v68);
    *v100 = 0x6F672D6573756F68;
    *(v100 + 8) = 0xE900000000000070;
    *(v100 + 16) = v124;
    *(v100 + 32) = 0x63696C6275706552;
    *(v100 + 40) = 0xEA00000000006E61;
    sub_219FB63A4(&v162, &v137);
    sub_219FC63EC(v95, v100 + v101);
    v102 = v100 + *(v86 + 32);
    v103 = v165;
    *(v102 + 32) = v164;
    *(v102 + 48) = v103;
    *(v102 + 64) = v166;
    *(v102 + 80) = v167;
    v104 = v163;
    *v102 = v162;
    *(v102 + 16) = v104;
    if (qword_27CCD91D0 != -1)
    {
      swift_once();
    }

    v105 = qword_27CCFE700;
    v106 = *algn_27CCFE708;
    v107 = qword_27CCFE710;
    v108 = unk_27CCFE718;
    v109 = byte_27CCFE720;
    v110 = *&byte_27CCFE721;
    v111 = v121;
    v112 = *(v121 + 32);
    v113 = type metadata accessor for ActivityMinimalAppearanceTheme();
    v114 = v122;
    (*(*(v113 - 8) + 56))(&v122[v112], 1, 1, v113);
    *v114 = v120;
    *(v114 + 8) = 0x4E45444953455250;
    *(v114 + 16) = 0xE900000000000054;
    *(v114 + 24) = 538;
    *(v114 + 32) = v128;
    *(v114 + 40) = 0x4554414E4553;
    *(v114 + 48) = 0xE600000000000000;
    *(v114 + 56) = 100;
    *(v114 + 64) = v133;
    *(v114 + 72) = 0x4553554F48;
    *(v114 + 80) = 0xE500000000000000;
    *(v114 + 88) = 435;
    *(v114 + 96) = v105;
    *(v114 + 104) = v106;
    *(v114 + 112) = v107;
    *(v114 + 120) = v108;
    *(v114 + 128) = v109;
    *(v114 + 129) = v110;
    v115 = v114 + v111[9];
    *v115 = 0u;
    *(v115 + 16) = 0u;
    *(v115 + 32) = 0u;
    *(v115 + 48) = xmmword_21A0EB370;
    *(v115 + 68) = 2;
    *(v115 + 64) = 0;
    v116 = v114 + v111[10];
    *v116 = 0u;
    *(v116 + 16) = 0u;
    *(v116 + 32) = 0u;
    *(v116 + 48) = xmmword_21A0EB370;
    *(v116 + 64) = 0x200000000;
    *(v116 + 72) = 0;
    *(v116 + 80) = 0;
    v117 = v114 + v111[11];
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = xmmword_21A0EB370;
    *(v117 + 72) = 0;
    *(v117 + 80) = 0;
    *(v117 + 64) = 0x200000000;
    sub_21A04D070(v114, v123, type metadata accessor for NationalElectionTheme);

    return sub_219F79C1C();
  }

  return result;
}

uint64_t sub_21A04C300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A04C384(uint64_t a1)
{
  v2 = sub_21A04D01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A04C3C0(uint64_t a1)
{
  v2 = sub_21A04D01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionStaticAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6EAC();
  type metadata accessor for NationalElectionTheme();
  sub_21A04D120(&qword_27CCDC428, type metadata accessor for NationalElectionTheme);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t NationalElectionStaticAttributes.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionStaticAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for NationalElectionTheme();
  MEMORY[0x28223BE20](v4, v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC430);
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6E7C();
  if (!v2)
  {
    v15 = v18;
    sub_21A04D120(&qword_27CCDC438, type metadata accessor for NationalElectionTheme);
    v16 = v20;
    sub_21A0E6ADC();
    (*(v19 + 8))(v10, v7);
    sub_21A04D070(v16, v14, type metadata accessor for NationalElectionTheme);
    sub_21A04D070(v14, v15, type metadata accessor for NationalElectionStaticAttributes);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A04C844(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04D01C();
  sub_21A0E6EAC();
  type metadata accessor for NationalElectionTheme();
  sub_21A04D120(&qword_27CCDC428, type metadata accessor for NationalElectionTheme);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21A04C9BC()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A04CA00()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

void *sub_21A04CA40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v49 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v53 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v45 = &v45 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v46 = &v45 - v20;
  v21 = type metadata accessor for ElectionEntityTheme();
  v23 = MEMORY[0x28223BE20](v21, v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v48 = v0;
  v28 = *v0;
  v29 = *(*v0 + 16);
  v51 = v9;
  if (v29)
  {
    v52 = *(v23 + 28);
    v30 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v31 = *(v24 + 72);
    v50 = v8;
    do
    {
      sub_21A04D2A8(v30, v26, type metadata accessor for ElectionEntityTheme);
      sub_219F45500(&v26[v52], v4, &qword_27CCD98D8);
      sub_21A04D310(v26, type metadata accessor for ElectionEntityTheme);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        sub_219F6409C(v4, &qword_27CCD98D8);
      }

      else
      {
        sub_219F73094(v4, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_219FA17F8(0, v27[2] + 1, 1, v27);
        }

        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          v27 = sub_219FA17F8(v32 > 1, v33 + 1, 1, v27);
        }

        v27[2] = v33 + 1;
        sub_219F73094(v53, v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v33);
        v8 = v50;
      }

      v30 += v31;
      --v29;
    }

    while (v29);
  }

  sub_21A03F738(v27);
  v34 = type metadata accessor for NationalElectionTheme();
  v35 = v49;
  sub_219F45500(v48 + *(v34 + 32), v49, &qword_27CCD9628);
  v36 = type metadata accessor for ActivityMinimalAppearanceTheme();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
  {
    sub_219F6409C(v35, &qword_27CCD9628);
    return v54;
  }

  else
  {
    v38 = v45;
    sub_219F45500(v35, v45, &qword_27CCD98D0);
    sub_21A04D310(v35, type metadata accessor for ActivityMinimalAppearanceTheme);
    v39 = v46;
    sub_219F73094(v38, v46);
    v40 = v47;
    sub_219F45500(v39, v47, &qword_27CCD98D0);
    v37 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_219FA17F8(0, v37[2] + 1, 1, v37);
    }

    v41 = v51;
    v43 = v37[2];
    v42 = v37[3];
    if (v43 >= v42 >> 1)
    {
      v37 = sub_219FA17F8(v42 > 1, v43 + 1, 1, v37);
    }

    sub_219F6409C(v39, &qword_27CCD98D0);
    v37[2] = v43 + 1;
    sub_219F73094(v40, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43);
  }

  return v37;
}

uint64_t sub_21A04CFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A04D01C()
{
  result = qword_27CCDC420;
  if (!qword_27CCDC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC420);
  }

  return result;
}

uint64_t sub_21A04D070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A04D120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A04D1A4()
{
  result = qword_27CCDC448;
  if (!qword_27CCDC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC448);
  }

  return result;
}

unint64_t sub_21A04D1FC()
{
  result = qword_27CCDC450;
  if (!qword_27CCDC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC450);
  }

  return result;
}

unint64_t sub_21A04D254()
{
  result = qword_27CCDC458[0];
  if (!qword_27CCDC458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDC458);
  }

  return result;
}

uint64_t sub_21A04D2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A04D310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A04D370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, v2, v4);
  sub_21A0E4CDC();
  v9 = type metadata accessor for NewsLiveActivityContent(0);
  v10 = v9[5];
  v11 = sub_21A0E495C();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  sub_21A0E4CEC();
  sub_21A0E4CBC();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = (v12)(a1 + v9[9], 1, 1, v11);
  *(a1 + v9[7]) = v14;
  *(a1 + v9[8]) = 2;
  return result;
}

uint64_t sub_21A04D528()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A04D578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v40 = &v36 - v14;
  v39 = *(a2 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  _s12CodingBufferV10CodingKeysOMa();
  swift_getWitnessTable();
  v46 = sub_21A0E6B1C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v17);
  v19 = &v36 - v18;
  v45 = a2;
  v48 = a2;
  v49 = a3;
  v42 = a3;
  v50 = a4;
  v51 = a5;
  v20 = _s12CodingBufferVMa();
  v37 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v19;
  v24 = v47;
  sub_21A0E6E7C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v39;
  v26 = v40;
  v47 = a1;
  LOBYTE(v48) = 0;
  v27 = v41;
  v28 = v45;
  v29 = v43;
  sub_21A0E6ADC();
  (*(v25 + 32))(v23, v27, v28);
  sub_21A0E495C();
  LOBYTE(v48) = 1;
  sub_21A04DD9C();
  sub_21A0E6A8C();
  v30 = v26;
  v31 = v20;
  sub_219FC26CC(v30, &v23[*(v20 + 52)]);
  LOBYTE(v48) = 2;
  sub_21A0E6ABC();
  v33 = v32;
  (*(v44 + 8))(v29, v46);
  *&v23[*(v20 + 56)] = v33;
  v34 = v37;
  (*(v37 + 16))(v38, v23, v31);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v34 + 8))(v23, v31);
}

uint64_t sub_21A04D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A04DA6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21A04DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A04DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A04DBB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A04D528();
  *a1 = result;
  return result;
}

uint64_t sub_21A04DBF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219F5A710(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A04DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_21A04D574(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a4 = result;
  return result;
}

uint64_t sub_21A04DC6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A04E474();
  *a1 = result;
  return result;
}

uint64_t sub_21A04DCA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21A04DCF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_21A04DD9C()
{
  result = qword_27CCD9838;
  if (!qword_27CCD9838)
  {
    sub_21A0E495C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9838);
  }

  return result;
}

uint64_t sub_21A04DDF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A04DE6C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_219F40500();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A04DEFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(v8 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v12 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    v20 = v18 >= 2 ? v19 : 0;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v16);
      if (v21)
      {
LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v12 + (v23 | v22) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v24 = (*(v9 + 48))((a1 + v15) & ~v13);
    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_21A04E124(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_21A0E495C() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v14 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      bzero(a1, ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v18) = v21;
      }

      else
      {
        *(a1 + v18) = v21;
      }
    }

    else if (v10)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v18) = 0;
  }

  else if (v10)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 >= v13)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v23 = ((a1 + v16) & ~v15);
    if (v13 >= a2)
    {
      v28 = *(v11 + 56);

      v28(v23, (a2 + 1));
    }

    else
    {
      if (v17 <= 3)
      {
        v24 = ~(-1 << (8 * v17));
      }

      else
      {
        v24 = -1;
      }

      if (v17)
      {
        v25 = v24 & (~v13 + a2);
        if (v17 <= 3)
        {
          v26 = v17;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v17);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

uint64_t sub_21A04E49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a4;
  v116 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC560);
  v113 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v94 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC568);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v16 = &v94 - v15;
  if (!a3 || !*(a3 + 16))
  {
    off_2816FCD98(v124);
    return v124[0];
  }

  v98 = a3;
  v96 = v14;
  v112 = v4;
  v17 = v13;
  sub_21A0E50FC();
  v18 = v116;
  v117 = v116;
  v118 = a2;
  sub_219FACDEC();
  sub_219F3E490(&qword_27CCDC570, &qword_27CCDC568);
  v19 = sub_21A0E616C();
  v106 = *(v19 + 16);
  if (!v106)
  {

    off_2816FCD98(v124);
    (*(v96 + 8))(v16, v17);
    return v124[0];
  }

  v94 = v16;
  v95 = v17;
  v97 = off_2816FCD98;
  result = off_2816FCD98(&v120);
  v21 = 0;
  v110 = v19 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v111 = a2;
  v108 = v19;
  v109 = v113 + 16;
  v107 = (v113 + 8);
  v115 = 15;
  v104 = v10;
  v105 = v7;
  v22 = v18;
  while (v21 < *(v19 + 16))
  {
    (*(v113 + 16))(v10, v110 + *(v113 + 72) * v21, v7);
    swift_getKeyPath();
    sub_21A0E510C();

    v23 = v115;
    v24 = v115 >> 14;
    v129 = v21;
    if (v115 >> 14 < v117 >> 14)
    {
      swift_getKeyPath();
      v114 = v23 >> 14;
      sub_21A0E510C();

      if (v114 > v117 >> 14)
      {
        goto LABEL_32;
      }

      v25 = sub_21A0E62EC();
      v26 = MEMORY[0x21CED1930](v25);
      v28 = v27;

      (v97)(&v117, v26, v28, &type metadata for ActivityTextBuilder);

      v29 = v120;
      v30 = v121;
      LOBYTE(v28) = v122;
      v32 = v117;
      v31 = v118;
      v33 = v119;
      v34 = sub_21A0E598C();
      v101 = v35;
      v102 = v34;
      v100 = v36;
      v103 = v37;
      v38 = v32;
      v21 = v129;
      LOBYTE(v36) = v33;
      v22 = v116;
      sub_219F63A30(v38, v31, v36);
      v7 = v105;

      v39 = v30;
      v24 = v114;
      v40 = v28;
      v10 = v104;
      sub_219F63A30(v29, v39, v40);

      v120 = v102;
      v121 = v101;
      v122 = v100 & 1;
      v123 = v103;
    }

    swift_getKeyPath();
    sub_21A0E510C();

    if (v24 > v117 >> 14)
    {
      result = (*v107)(v10, v7);
      v19 = v108;
    }

    else
    {
      swift_getKeyPath();
      sub_21A0E510C();

      v41 = sub_21A0E629C();
      swift_getKeyPath();
      sub_21A0E510C();

      if (v41 >> 14 >= sub_21A0E629C() >> 14)
      {

        sub_21A05121C();
        swift_allocError();
        *v77 = 0;
        *(v77 + 8) = 0;
        v78 = 2;
LABEL_25:
        *(v77 + 16) = v78;
        swift_willThrow();
LABEL_30:
        (*v107)(v10, v7);
        (*(v96 + 8))(v94, v95);
        sub_219F63A30(v120, v121, v122);
      }

      v42 = sub_21A0E62EC();
      v43 = MEMORY[0x21CED1930](v42);
      v45 = v44;

      v46 = v98;
      if (!*(v98 + 16) || (v47 = sub_219F477B4(v43, v45), (v48 & 1) == 0))
      {

        sub_21A05121C();
        swift_allocError();
        *v77 = v43;
        *(v77 + 8) = v45;
        v78 = 1;
        goto LABEL_25;
      }

      v49 = v47;

      v50 = (*(v46 + 56) + 224 * v49);
      v51 = v50[1];
      v127[0] = *v50;
      v127[1] = v51;
      v52 = v50[5];
      v54 = v50[2];
      v53 = v50[3];
      v127[4] = v50[4];
      v127[5] = v52;
      v127[2] = v54;
      v127[3] = v53;
      v55 = v50[6];
      v56 = v50[7];
      v57 = v50[9];
      v127[8] = v50[8];
      v127[9] = v57;
      v127[6] = v55;
      v127[7] = v56;
      v58 = v50[10];
      v59 = v50[11];
      v60 = v50[12];
      *(v128 + 9) = *(v50 + 201);
      v127[11] = v59;
      v128[0] = v60;
      v127[10] = v58;
      sub_219F7DC04(v127, &v117);
      v61 = v112;
      v62 = sub_21A04FFE8(v127, v46, v99);
      if (v61)
      {

        sub_219F7DC60(v127);
        goto LABEL_30;
      }

      v66 = v64;
      v112 = 0;
      v67 = v120;
      v68 = v121;
      v69 = v122;
      v114 = v62;
      v115 = v65;
      v103 = v63;
      v70 = sub_21A0E598C();
      v72 = v71;
      v74 = v73;
      v102 = v75;
      v76 = v69;
      v22 = v116;
      sub_219F63A30(v67, v68, v76);
      v7 = v105;

      v120 = v70;
      v121 = v72;
      v10 = v104;
      v122 = v74 & 1;
      v123 = v102;
      swift_getKeyPath();
      sub_21A0E510C();

      sub_219F7DC60(v127);
      sub_219F63A30(v114, v103, v66 & 1);

      result = (*v107)(v10, v7);
      v115 = v117;
      v19 = v108;
      v21 = v129;
    }

    if (v106 == ++v21)
    {

      v79 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v79 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v115 >> 14 >= 4 * v79)
      {
        (*(v96 + 8))(v94, v95);
        v87 = v120;
        v89 = v121;
        v91 = v122;
        v93 = v123;
      }

      else
      {
        v80 = sub_21A0E62EC();
        v81 = MEMORY[0x21CED1930](v80);
        v83 = v82;

        (v97)(&v117, v81, v83, &type metadata for ActivityTextBuilder);

        v115 = v121;
        v116 = v120;
        LODWORD(v114) = v122;
        v129 = v123;
        v85 = v117;
        v84 = v118;
        v86 = v119;
        v87 = sub_21A0E598C();
        v89 = v88;
        v91 = v90;
        v93 = v92;
        (*(v96 + 8))(v94, v95);
        sub_219F63A30(v85, v84, v86);

        sub_219F63A30(v116, v115, v114);
      }

      v124[0] = v87;
      v124[1] = v89;
      v125 = v91 & 1;
      v126 = v93;
      return v124[0];
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t ActivityTextBuilderType.buildText(baseString:properties:environment:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v135 = a2;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC560);
  v131 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v13);
  v150 = &v111 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v119 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v120 = &v111 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v130 = &v111 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v132 = &v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC568);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v33 = &v111 - v32;
  v34 = *(a4 + 16);
  v147 = *a4;
  v148 = v34;
  v149 = *(a4 + 32);
  if (!a3 || !*(a3 + 16))
  {
    return (*(a6 + 24))(a1, v135, a5, a6);
  }

  v118 = a3;
  v136 = a5;
  v138 = a6;
  v114 = a7;
  v115 = v31;
  v35 = v30;
  v36 = v33;
  sub_21A0E50FC();
  v145[0] = __PAIR128__(v135, a1);
  v134 = a1;
  v37 = v135;
  sub_219FACDEC();
  sub_219F3E490(&qword_27CCDC570, &qword_27CCDC568);
  v38 = sub_21A0E616C();
  v124 = *(v38 + 16);
  if (v124)
  {
    v112 = v36;
    v113 = v35;
    v129 = AssociatedTypeWitness;
    v39 = v138;
    v116 = *(v138 + 24);
    v117 = v138 + 24;
    result = v116(0, 0xE000000000000000, v136, v138);
    v41 = 0;
    v127 = v38 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v128 = (v16 + 8);
    v122 = v39 + 40;
    v123 = (v16 + 32);
    v125 = (v131 + 8);
    v126 = v131 + 16;
    v42 = 15;
    v43 = v38;
    v121 = v38;
    while (v41 < *(v43 + 16))
    {
      v45 = v127 + *(v131 + 72) * v41;
      v46 = *(v131 + 16);
      v137 = v42;
      v46(v150, v45, v139);
      swift_getKeyPath();
      v42 = v137;
      sub_21A0E510C();

      v47 = v42 >> 14;
      if (v42 >> 14 < *&v145[0] >> 14)
      {
        swift_getKeyPath();
        sub_21A0E510C();

        if (v47 > *&v145[0] >> 14)
        {
          goto LABEL_31;
        }

        v48 = sub_21A0E62EC();
        v49 = MEMORY[0x21CED1930](v48);
        v50 = v41;
        v52 = v51;

        v53 = v130;
        v54 = v49;
        v55 = v136;
        v116(v54, v52, v136, v138);

        v56 = v120;
        v57 = v132;
        (*(v138 + 40))(v132, v53, v55, v138);
        v58 = v129;
        v59 = *v128;
        v60 = v53;
        v43 = v121;
        (*v128)(v60, v129);
        v59(v57, v58);
        v41 = v50;
        v42 = v137;
        v61 = v57;
        v39 = v138;
        (*v123)(v61, v56, v58);
      }

      swift_getKeyPath();
      sub_21A0E510C();

      if (v47 > *&v145[0] >> 14)
      {
        result = (*v125)(v150, v139);
        v44 = v136;
      }

      else
      {
        v137 = v41;
        swift_getKeyPath();
        sub_21A0E510C();

        v62 = sub_21A0E629C();
        swift_getKeyPath();
        sub_21A0E510C();

        v63 = sub_21A0E629C();
        v64 = v136;
        if (v62 >> 14 >= v63 >> 14)
        {

          sub_21A05121C();
          v95 = swift_allocError();
          *v96 = 0;
          *(v96 + 8) = 0;
          v97 = 2;
          goto LABEL_26;
        }

        v65 = sub_21A0E62EC();
        v66 = MEMORY[0x21CED1930](v65);
        v68 = v67;

        v69 = v118;
        if (!*(v118 + 16) || (v70 = sub_219F477B4(v66, v68), (v71 & 1) == 0))
        {

          sub_21A05121C();
          v95 = swift_allocError();
          *v96 = v66;
          *(v96 + 8) = v68;
          v97 = 1;
LABEL_26:
          *(v96 + 16) = v97;
          v133 = v95;
          swift_willThrow();
          (*v125)(v150, v139);
          (*v128)(v132, v129);
          return (*(v115 + 8))(v112, v113);
        }

        v72 = v70;

        v73 = (*(v69 + 56) + 224 * v72);
        v74 = v73[1];
        v145[0] = *v73;
        v145[1] = v74;
        v75 = v73[5];
        v77 = v73[2];
        v76 = v73[3];
        v145[4] = v73[4];
        v145[5] = v75;
        v145[2] = v77;
        v145[3] = v76;
        v78 = v73[6];
        v79 = v73[7];
        v80 = v73[9];
        v145[8] = v73[8];
        v145[9] = v80;
        v145[6] = v78;
        v145[7] = v79;
        v81 = v73[10];
        v82 = v73[11];
        v83 = v73[12];
        *(v146 + 9) = *(v73 + 201);
        v145[11] = v82;
        v146[0] = v83;
        v145[10] = v81;
        v143[10] = v73[10];
        v143[11] = v73[11];
        v144[0] = v73[12];
        *(v144 + 9) = *(v73 + 201);
        v143[6] = v73[6];
        v143[7] = v73[7];
        v143[8] = v73[8];
        v143[9] = v73[9];
        v143[2] = v73[2];
        v143[3] = v73[3];
        v143[4] = v73[4];
        v143[5] = v73[5];
        v143[0] = *v73;
        v143[1] = v73[1];
        v141[0] = v147;
        v141[1] = v148;
        v142 = v149;
        sub_219F7DC04(v145, &v140);
        v84 = v119;
        v85 = v138;
        v86 = v133;
        sub_21A050758(v143, v69, v141, v64, v138, v119);
        v133 = v86;
        if (v86)
        {

          (*v125)(v150, v139);
          (*v128)(v132, v129);
          (*(v115 + 8))(v112, v113);
          return sub_219F7DC60(v145);
        }

        v87 = v130;
        v88 = v132;
        (*(v85 + 40))(v132, v84, v64, v85);
        v89 = v129;
        v90 = *v128;
        (*v128)(v88, v129);
        (*v123)(v88, v87, v89);
        swift_getKeyPath();
        v91 = v139;
        v92 = v150;
        sub_21A0E510C();

        sub_219F7DC60(v145);
        v93 = v89;
        v44 = v136;
        v90(v84, v93);
        v39 = v138;
        v94 = v91;
        v43 = v121;
        result = (*v125)(v92, v94);
        v42 = *&v143[0];
        v41 = v137;
      }

      if (v124 == ++v41)
      {

        v98 = HIBYTE(v135) & 0xF;
        if ((v135 & 0x2000000000000000) == 0)
        {
          v98 = v134 & 0xFFFFFFFFFFFFLL;
        }

        if (v42 >> 14 >= 4 * v98)
        {
          (*(v115 + 8))(v112, v113);
          v110 = *v123;
          v108 = v129;
          v107 = v132;
        }

        else
        {
          v99 = sub_21A0E62EC();
          v100 = MEMORY[0x21CED1930](v99);
          v102 = v101;

          v103 = v130;
          v116(v100, v102, v44, v39);

          v104 = *(v39 + 40);
          v105 = v120;
          v106 = v39;
          v107 = v132;
          v104(v132, v103, v44, v106);
          v108 = v129;
          v109 = *v128;
          (*v128)(v103, v129);
          v109(v107, v108);
          (*(v115 + 8))(v112, v113);
          v110 = *v123;
          (*v123)(v107, v105, v108);
        }

        return (v110)(v114, v107, v108);
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    (*(v138 + 24))(v134, v37, v136);
    return (*(v115 + 8))(v36, v35);
  }

  return result;
}

uint64_t ActivityTextBuilder.buildText(_:)()
{
  sub_219F3F130();

  return sub_21A0E59EC();
}

uint64_t ActivityTextBuilder.buildText(_:)(uint64_t a1)
{
  v2 = sub_21A0E561C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  LOBYTE(a1) = *(a1 + 16);

  sub_21A0E560C();
  sub_21A0E55FC();
  if (a1)
  {
    sub_21A0E5CDC();
  }

  else
  {
    sub_21A0E5CBC();
  }

  sub_21A0E55DC();

  sub_21A0E55FC();
  sub_21A0E563C();
  return sub_21A0E59DC();
}

uint64_t ActivityTextBuilder.modifiedText(_:with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 48);
  v48 = *(a5 + 32);
  v49 = v8;
  v50 = *(a5 + 64);
  v9 = *(a5 + 16);
  v46 = *a5;
  v47 = v9;
  v10 = *(a5 + 88);
  v11 = *(a5 + 112);
  v12 = *(a5 + 136);
  v13 = *(a5 + 160);
  v51 = *(a5 + 80);
  v52 = v10;
  v29 = *(a5 + 96);
  v53 = v29;
  v30 = *(a5 + 120);
  v55 = v30;
  v54 = v11;
  v56 = v12;
  v31 = *(a5 + 144);
  v57 = v31;
  v58 = v13;
  v32 = *(a5 + 168);
  v59 = v32;
  if (sub_219F5EBE4(&v46) == 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 1;
    v17 = 9;
    LOBYTE(v13) = 3;
    v18 = 0uLL;
    v19 = 0x3E00000000;
    v20 = 9;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    v36 = v49;
    v37 = v50;
    v34 = v47;
    v35 = v48;
    v38 = v51;
    v33 = v46;
    if (*(&v50 + 1))
    {
      v27 = v34;
      v28 = v33;
      v25 = v36;
      v26 = v35;
      v19 = v37 | (BYTE4(v37) << 32);
      sub_219F72F28(&v33, &v39);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v19 = 0x3E00000000;
      v25 = 0u;
      v26 = 0u;
    }

    v16 = v29 == 0;
    if (v29)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v30)
    {
      v20 = v11;
    }

    else
    {
      v20 = 9;
    }

    if (v31)
    {
      v17 = v12;
    }

    else
    {
      v17 = 9;
    }

    if (!v32)
    {
      LOBYTE(v13) = 3;
    }

    v18 = v27;
    v15 = v28;
    v22 = v25;
    v21 = v26;
  }

  v45 = v16;
  v39 = v15;
  v40 = v18;
  v41 = v21;
  v42 = v22;
  BYTE4(v43) = BYTE4(v19);
  LODWORD(v43) = v19;
  *(&v43 + 1) = v14;
  LOBYTE(v44) = v16;
  BYTE1(v44) = v20;
  BYTE2(v44) = v17;
  HIBYTE(v44) = v13;
  v23 = sub_219F8CEDC(&v39, a1, a2, a3 & 1);
  v35 = v41;
  v36 = v42;
  v37 = v43;
  LODWORD(v38) = v44;
  v33 = v39;
  v34 = v40;
  sub_219F6409C(&v33, &qword_27CCD95B0);
  return v23;
}

uint64_t sub_21A04FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v7;
  v13 = *(a4 + 32);
  result = sub_21A04E49C(a1, a2, a3, v12);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v9;
    *(a5 + 16) = v10 & 1;
    *(a5 + 24) = v11;
  }

  return result;
}

uint64_t sub_21A04FE9C@<X0>(uint64_t a1@<X8>)
{
  sub_219F3F130();

  result = sub_21A0E59EC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A04FF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ActivityTextBuilder.buildText(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21A04FF3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A0E598C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A04FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = ActivityTextBuilder.modifiedText(_:with:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21A04FFE8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v5 = sub_21A0E468C();
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v86 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v85 - v17;
  v19 = a1[11];
  v109[10] = a1[10];
  v109[11] = v19;
  v110[0] = a1[12];
  *(v110 + 9) = *(a1 + 201);
  v20 = a1[7];
  v109[6] = a1[6];
  v109[7] = v20;
  v21 = a1[9];
  v109[8] = a1[8];
  v109[9] = v21;
  v22 = a1[3];
  v109[2] = a1[2];
  v109[3] = v22;
  v23 = a1[5];
  v109[4] = a1[4];
  v109[5] = v23;
  v24 = a1[1];
  v109[0] = *a1;
  v109[1] = v24;
  v25 = sub_219F9137C(v109);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v51 = nullsub_1(v109, v26);
      v52 = *v51;
      v53 = *(v51 + 152);
      v105[8] = *(v51 + 136);
      v105[9] = v53;
      v105[10] = *(v51 + 168);
      v106 = *(v51 + 184);
      v54 = *(v51 + 88);
      v105[4] = *(v51 + 72);
      v105[5] = v54;
      v55 = *(v51 + 120);
      v105[6] = *(v51 + 104);
      v105[7] = v55;
      v56 = *(v51 + 24);
      v105[0] = *(v51 + 8);
      v105[1] = v56;
      v57 = *(v51 + 56);
      v105[2] = *(v51 + 40);
      v105[3] = v57;
      *&v92 = v52;
      sub_21A0E499C();
      sub_21A021038();
      sub_21A0E465C();
      sub_21A0E467C();
      MEMORY[0x21CECFD40](v8, v11);
      (*(v87 + 8))(v8, v5);
      v58 = *(v86 + 8);
      v58(v15, v11);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
      sub_21A0E60EC();
      v58(v18, v11);
      off_2816FCD98(v104);

      v59 = *v104;
      v60 = *&v104[8];
      v61 = v104[16];
      v62 = *&v104[24];
      v63 = v105;
    }

    else
    {
      v77 = nullsub_1(v109, v26);
      v78 = *v77;
      v79 = *(v77 + 152);
      v107[8] = *(v77 + 136);
      v107[9] = v79;
      v107[10] = *(v77 + 168);
      v108 = *(v77 + 184);
      v80 = *(v77 + 88);
      v107[4] = *(v77 + 72);
      v107[5] = v80;
      v81 = *(v77 + 120);
      v107[6] = *(v77 + 104);
      v107[7] = v81;
      v82 = *(v77 + 24);
      v107[0] = *(v77 + 8);
      v107[1] = v82;
      v83 = *(v77 + 56);
      v107[2] = *(v77 + 40);
      v107[3] = v83;
      *v104 = v78;
      sub_21A0E6BFC();
      off_2816FCD98(v104);

      v59 = *v104;
      v60 = *&v104[8];
      v61 = v104[16];
      v62 = *&v104[24];
      v63 = v107;
    }

    v50 = ActivityTextBuilder.modifiedText(_:with:)(v59, v60, v61, v62, v63);
    sub_219F63A30(v59, v60, v61);
    goto LABEL_14;
  }

  if (v25)
  {
    v64 = nullsub_1(v109, v26);
    v65 = *(v64 + 16);
    v66 = *(v64 + 17);
    v67 = *(v64 + 163);
    *&v104[128] = *(v64 + 147);
    *&v104[144] = v67;
    *&v104[160] = *(v64 + 179);
    *&v104[173] = *(v64 + 192);
    v68 = *(v64 + 99);
    *&v104[64] = *(v64 + 83);
    *&v104[80] = v68;
    v69 = *(v64 + 131);
    *&v104[96] = *(v64 + 115);
    *&v104[112] = v69;
    v70 = *(v64 + 35);
    *v104 = *(v64 + 19);
    *&v104[16] = v70;
    v71 = *(v64 + 67);
    *&v104[32] = *(v64 + 51);
    *&v104[48] = v71;
    v92 = *v64;
    LOBYTE(v93) = v65 & 1;
    *(&v93 + 1) = v66;
    v72 = ActivityTextBuilder.buildText(_:)(&v92);
    v43 = v72;
    v45 = v73;
    v47 = v75;
    v100 = *&v104[133];
    v101 = *&v104[149];
    v102 = *&v104[165];
    v103 = *&v104[181];
    v96 = *&v104[69];
    v97 = *&v104[85];
    v98 = *&v104[101];
    v99 = *&v104[117];
    v92 = *&v104[5];
    v93 = *&v104[21];
    v94 = *&v104[37];
    v95 = *&v104[53];
    v76 = v75 & 1;
LABEL_13:
    v50 = ActivityTextBuilder.modifiedText(_:with:)(v72, v73, v76, v74, &v92);
    sub_219F63A30(v43, v45, v47 & 1);
LABEL_14:

    return v50;
  }

  v27 = nullsub_1(v109, v26);
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  v32 = *(v27 + 176);
  *&v104[128] = *(v27 + 160);
  *&v104[144] = v32;
  *&v104[160] = *(v27 + 192);
  *&v104[176] = *(v27 + 208);
  v33 = *(v27 + 112);
  *&v104[64] = *(v27 + 96);
  *&v104[80] = v33;
  v34 = *(v27 + 144);
  *&v104[96] = *(v27 + 128);
  *&v104[112] = v34;
  v35 = *(v27 + 48);
  *v104 = *(v27 + 32);
  *&v104[16] = v35;
  v36 = *(v27 + 80);
  *&v104[32] = *(v27 + 64);
  *&v104[48] = v36;
  v37 = *(a3 + 16);
  v92 = *a3;
  v93 = v37;
  v38 = *(a3 + 32);
  *&v96 = MEMORY[0x277D84F90];
  *&v94 = v38;
  sub_219F63900(a3, &v89);
  v39 = qword_27CCD9198;

  if (v39 != -1)
  {
    swift_once();
  }

  *(&v94 + 1) = v29;
  *&v95 = v28;
  *(&v95 + 1) = qword_27CCDBDB0;

  sub_219F8A9B0(&v92, v29, v28, v30, v31);
  v40 = *(&v94 + 1);
  v41 = v95;
  v90[2] = v94;
  v90[3] = v95;
  v91 = v96;
  v90[0] = v92;
  v90[1] = v93;

  sub_219F6409C(v90, &qword_27CCDC580);
  v42 = v111;
  v43 = sub_21A04E49C(v40, v41, v88, a3);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v42;

  if (!v42)
  {
    v111 = 0;
    v100 = *&v104[128];
    v101 = *&v104[144];
    v102 = *&v104[160];
    v103 = *&v104[176];
    v96 = *&v104[64];
    v97 = *&v104[80];
    v98 = *&v104[96];
    v99 = *&v104[112];
    v92 = *v104;
    v93 = *&v104[16];
    v94 = *&v104[32];
    v95 = *&v104[48];
    v76 = v47 & 1;
    v72 = v43;
    v73 = v45;
    v74 = v49;
    goto LABEL_13;
  }

  return v50;
}

uint64_t sub_21A050758@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a6;
  v84 = a2;
  v82 = sub_21A0E468C();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v10);
  v78 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v79 = *(v81 - 8);
  v15 = MEMORY[0x28223BE20](v81, v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v77 = &v77 - v19;
  v88 = a5;
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness, v22);
  v85 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v83 = &v77 - v26;
  v27 = a1[11];
  v107[10] = a1[10];
  v107[11] = v27;
  v108[0] = a1[12];
  *(v108 + 9) = *(a1 + 201);
  v28 = a1[7];
  v107[6] = a1[6];
  v107[7] = v28;
  v29 = a1[9];
  v107[8] = a1[8];
  v107[9] = v29;
  v30 = a1[3];
  v107[2] = a1[2];
  v107[3] = v30;
  v31 = a1[5];
  v107[4] = a1[4];
  v107[5] = v31;
  v32 = a1[1];
  v107[0] = *a1;
  v107[1] = v32;
  v33 = a3[1];
  v104 = *a3;
  v105 = v33;
  v106 = *(a3 + 4);
  v34 = sub_219F9137C(v107);
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v55 = nullsub_1(v107, v35);
      *&v90[0] = *v55;
      sub_21A0E499C();
      v83 = sub_21A021038();
      sub_21A0E465C();
      v56 = v78;
      sub_21A0E467C();
      v84 = v20;
      v57 = v77;
      v58 = v81;
      MEMORY[0x21CECFD40](v56, v81);
      (*(v80 + 8))(v56, v82);
      v82 = AssociatedTypeWitness;
      v59 = *(v79 + 8);
      v59(v17, v58);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
      sub_21A0E60EC();
      v59(v57, v58);
      v60 = v88;
      v61 = v84;
      v62 = v85;
      (*(v88 + 24))(v92, *(&v92 + 1), v84, v88);

      v100 = *(v55 + 136);
      v101 = *(v55 + 152);
      v102 = *(v55 + 168);
      v103 = *(v55 + 184);
      v96 = *(v55 + 72);
      v97 = *(v55 + 88);
      v98 = *(v55 + 104);
      v99 = *(v55 + 120);
      v92 = *(v55 + 8);
      v93 = *(v55 + 24);
      v94 = *(v55 + 40);
      v95 = *(v55 + 56);
      (*(v60 + 48))(v62, &v92, v61, v60);
      return (*(v86 + 8))(v62, v82);
    }

    else
    {
      v72 = nullsub_1(v107, v35);
      *&v92 = *v72;
      v73 = sub_21A0E6BFC();
      v74 = AssociatedTypeWitness;
      v75 = v88;
      v76 = v85;
      (*(v88 + 24))(v73);

      v100 = *(v72 + 136);
      v101 = *(v72 + 152);
      v102 = *(v72 + 168);
      v103 = *(v72 + 184);
      v96 = *(v72 + 72);
      v97 = *(v72 + 88);
      v98 = *(v72 + 104);
      v99 = *(v72 + 120);
      v92 = *(v72 + 8);
      v93 = *(v72 + 24);
      v94 = *(v72 + 40);
      v95 = *(v72 + 56);
      (*(v75 + 48))(v76, &v92, v20, v75);
      return (*(v86 + 8))(v76, v74);
    }
  }

  else if (v34)
  {
    v63 = nullsub_1(v107, v35);
    v64 = *(v63 + 16);
    v65 = *(v63 + 17);
    v92 = *v63;
    LOBYTE(v93) = v64;
    *(&v93 + 1) = v65;
    v66 = v88;
    v67 = v85;
    (*(v88 + 32))(&v92, v20, v88);
    v68 = *(v63 + 168);
    v100 = *(v63 + 152);
    v101 = v68;
    v102 = *(v63 + 184);
    v103 = *(v63 + 200);
    v69 = *(v63 + 104);
    v96 = *(v63 + 88);
    v97 = v69;
    v70 = *(v63 + 136);
    v98 = *(v63 + 120);
    v99 = v70;
    v92 = *(v63 + 24);
    v71 = *(v63 + 56);
    v93 = *(v63 + 40);
    v94 = v71;
    v95 = *(v63 + 72);
    (*(v66 + 48))(v67, &v92, v20, v66);
    return (*(v86 + 8))(v67, AssociatedTypeWitness);
  }

  else
  {
    v82 = AssociatedTypeWitness;
    v36 = v20;
    v37 = nullsub_1(v107, v35);
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v92 = v104;
    v93 = v105;
    *&v96 = MEMORY[0x277D84F90];
    *&v94 = v106;
    sub_219F63900(&v104, &v89);
    v42 = qword_27CCD9198;

    if (v42 != -1)
    {
      swift_once();
    }

    *(&v94 + 1) = v38;
    *&v95 = v39;
    *(&v95 + 1) = qword_27CCDBDB0;

    sub_219F8A9B0(&v92, v38, v39, v40, v41);
    v44 = *(&v94 + 1);
    v43 = v95;
    v90[2] = v94;
    v90[3] = v95;
    v91 = v96;
    v90[0] = v92;
    v90[1] = v93;

    sub_219F6409C(v90, &qword_27CCDC580);
    v92 = v104;
    v93 = v105;
    *&v94 = v106;
    v45 = v88;
    v46 = v83;
    v47 = v109;
    (*(v88 + 16))(v44, v43, v84, &v92, v36, v88);

    if (!v47)
    {
      v49 = *(v37 + 176);
      v100 = *(v37 + 160);
      v101 = v49;
      v102 = *(v37 + 192);
      v103 = *(v37 + 208);
      v50 = *(v37 + 112);
      v96 = *(v37 + 96);
      v97 = v50;
      v51 = *(v37 + 144);
      v98 = *(v37 + 128);
      v99 = v51;
      v52 = *(v37 + 48);
      v92 = *(v37 + 32);
      v53 = *(v37 + 64);
      v54 = *(v37 + 80);
      v93 = v52;
      v94 = v53;
      v95 = v54;
      (*(v45 + 48))(v46, &v92, v36, v45);
      return (*(v86 + 8))(v46, v82);
    }
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore24ActivityTextBuilderErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21A0E6C5C();
        sub_21A0513C8(v6, v5, 0);
        sub_21A0513C8(v3, v2, 0);
        sub_21A0513E0(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_21A0513C8(v14, v2, 0);
      sub_21A0513C8(v3, v2, 0);
      sub_21A0513E0(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_21A0E6C5C();
        sub_21A0513C8(v6, v5, 1u);
        sub_21A0513C8(v3, v2, 1u);
        sub_21A0513E0(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_21A0513E0(v11, v12, v13);
        return v10 & 1;
      }

      sub_21A0513C8(v8, v2, 1u);
      sub_21A0513C8(v3, v2, 1u);
      sub_21A0513E0(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_21A0513C8(*a2, *(a2 + 8), v7);
    sub_21A0513C8(v3, v2, v4);
    sub_21A0513E0(v3, v2, v4);
    sub_21A0513E0(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_21A0513E0(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_21A0513E0(v18, v19, v20);
  return 1;
}

unint64_t sub_21A05121C()
{
  result = qword_27CCDC578;
  if (!qword_27CCDC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC578);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore24ActivityTextBuilderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21A05128C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A0512D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A051318(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_21A0513C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21A0513E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ActivityFooterData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFooterData.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityFooterData.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActivityFooterData.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

NewsLiveActivitiesCore::ActivityFooterData __swiftcall ActivityFooterData.init(title:subtitle:)(Swift::String title, Swift::String_optional subtitle)
{
  v2->value = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t static ActivityFooterData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A0E6C5C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21A0E6C5C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_21A0515B4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_21A0515EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A0516C4(uint64_t a1)
{
  v2 = sub_21A0518D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A051700(uint64_t a1)
{
  v2 = sub_21A0518D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFooterData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0518D0();
  sub_21A0E6EAC();
  v13 = 0;
  v9 = v11[3];
  sub_21A0E6B7C();
  if (!v9)
  {
    v12 = 1;
    sub_21A0E6B3C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21A0518D0()
{
  result = qword_27CCDC590;
  if (!qword_27CCDC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC590);
  }

  return result;
}

uint64_t ActivityFooterData.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_21A0E626C();
  if (!v1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();

  return sub_21A0E626C();
}

uint64_t ActivityFooterData.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v1)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

uint64_t ActivityFooterData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0518D0();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_21A0E6A9C();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_21A0E6A5C();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A051C5C()
{
  v1 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v1)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

uint64_t sub_21A051CE8()
{
  v1 = *(v0 + 24);
  sub_21A0E626C();
  if (!v1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();

  return sub_21A0E626C();
}

uint64_t sub_21A051D64()
{
  v1 = *(v0 + 24);
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v1)
  {
    sub_21A0E626C();
  }

  return sub_21A0E6DFC();
}

unint64_t sub_21A051DF0()
{
  result = qword_27CCDC5A0;
  if (!qword_27CCDC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5A0);
  }

  return result;
}

uint64_t sub_21A051E44(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A0E6C5C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_21A0E6C5C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21A051F08()
{
  result = qword_27CCDC5A8;
  if (!qword_27CCDC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5A8);
  }

  return result;
}

unint64_t sub_21A051F60()
{
  result = qword_27CCDC5B0;
  if (!qword_27CCDC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5B0);
  }

  return result;
}

unint64_t sub_21A051FB8()
{
  result = qword_27CCDC5B8;
  if (!qword_27CCDC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC5B8);
  }

  return result;
}

uint64_t sub_21A05200C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v9 = sub_21A0E495C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  v18 = *a1;
  v19 = a1[1];
  v40 = v18;
  v20 = [*(v5 + 16) appConfiguration];
  v21 = *(v10 + 16);
  v21(v17, a2, v9);
  v44 = v14;
  v39 = v21;
  v21(v14, a2, v9);
  LOBYTE(v21) = [v20 respondsToSelector_];
  v41 = v19;

  v22 = 10.0;
  if (v21)
  {
    [v20 liveActivityScheduleDelay];
    v22 = v23;
  }

  v24 = 30.0;
  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRandomInitialDelay];
    v24 = v25;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleTimeWindow];
    v27 = v26;
  }

  else
  {
    v27 = 0x4072C00000000000;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRetryInterval];
    v29 = v28;
  }

  else
  {
    v29 = 0x4072C00000000000;
  }

  if ([v20 respondsToSelector_])
  {
    [v20 liveActivityScheduleRetryTimeWindow];
    v31 = v30;
  }

  else
  {
    v31 = 0x40AC200000000000;
  }

  if ([v20 respondsToSelector_])
  {
    v32 = [v20 liveActivityScheduleRetryCountMax];
  }

  else
  {
    v32 = 5;
  }

  v33 = type metadata accessor for ScheduledLiveActivity();
  v39(&a5[v33[5]], v17, v9);
  v45 = 0xD000000000000013;
  v46 = 0x800000021A10AB90;
  MEMORY[0x21CED1980](v42, v43);
  swift_unknownObjectRelease();
  v34 = v45;
  v35 = v46;
  (*(v10 + 8))(v17, v9);
  v36 = v41;
  *a5 = v40;
  *(a5 + 1) = v36;
  v37 = &a5[v33[6]];
  *v37 = v34;
  v37[1] = v35;
  result = (*(v10 + 32))(&a5[v33[7]], v44, v9);
  *&a5[v33[8]] = 0;
  *&a5[v33[9]] = v22;
  *&a5[v33[10]] = v24;
  *&a5[v33[11]] = v27;
  *&a5[v33[12]] = v29;
  *&a5[v33[13]] = v31;
  *&a5[v33[14]] = v32;
  *&a5[v33[15]] = 100000;
  return result;
}

uint64_t sub_21A0523B0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21A05240C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = *(v9 + 16);
  v15(v12, a2, v8);
  v16 = type metadata accessor for ScheduledLiveActivity();
  v15(&a5[v16[7]], a2, v8);
  v15(&a5[v16[5]], v12, v8);
  v23 = 0xD000000000000013;
  v24 = 0x800000021A10AB90;

  MEMORY[0x21CED1980](v21, v22);
  v17 = v23;
  v18 = v24;
  result = (*(v9 + 8))(v12, v8);
  *a5 = v14;
  *(a5 + 1) = v13;
  v20 = &a5[v16[6]];
  *v20 = v17;
  v20[1] = v18;
  *&a5[v16[8]] = 0;
  *&a5[v16[9]] = 0x4024000000000000;
  *&a5[v16[10]] = 0x403E000000000000;
  *&a5[v16[11]] = 0x4072C00000000000;
  *&a5[v16[12]] = 0x4072C00000000000;
  *&a5[v16[13]] = 0x40AC200000000000;
  *&a5[v16[14]] = 5;
  *&a5[v16[15]] = 100000;
  return result;
}

id sub_21A05266C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21A0526D4()
{
  v0[2] = v0[3];
  v1 = swift_task_alloc();
  v0[4] = v1;
  v1[2] = v0 + 2;
  v1[3] = &unk_21A0FC690;
  v1[4] = 0;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_21A0527D4;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v2, v3);
}

uint64_t sub_21A0527D4()
{

  return MEMORY[0x2822009F8](sub_21A052B08, 0, 0);
}

uint64_t sub_21A05290C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_21A052B04;

  return v6(v2, v3);
}

uint64_t sub_21A052A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_219F49B18;

  return sub_21A0526B4(a1, v4, v5, v6);
}

void sub_21A052B54()
{
  sub_219F888D8();
  if (v0 <= 0x3F)
  {
    sub_219F41930(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A052C44()
{
  sub_219F41930(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_219F888D8();
    if (v1 <= 0x3F)
    {
      sub_219F41930(319, &qword_27CCD9B20, &type metadata for ActivityHeaderTheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A052D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = type metadata accessor for ActivitySymbolView();
  v4 = MEMORY[0x28223BE20](v53, v3);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v51 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC838);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - v18;
  *v19 = sub_21A0E567C();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC840);
  sub_21A053324(a1, &v19[*(v20 + 44)]);
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v21 = xmmword_27CCDD760;
  v22 = byte_27CCDD770;
  v49 = byte_27CCDD772;
  v50 = byte_27CCDD771;
  v23 = (a1 + *(type metadata accessor for ActivityHeaderView(0) + 28));
  v24 = v23[7];
  v25 = v23[9];
  v84 = v23[8];
  v85 = v25;
  v26 = v23[9];
  v86 = v23[10];
  v27 = v23[3];
  v28 = v23[5];
  v80 = v23[4];
  v81 = v28;
  v29 = v23[5];
  v30 = v23[7];
  v82 = v23[6];
  v83 = v30;
  v31 = v23[1];
  v32 = v23[3];
  v78 = v23[2];
  v79 = v32;
  v33 = v23[1];
  v76 = *v23;
  v77 = v33;
  v87[8] = v84;
  v87[9] = v26;
  v87[10] = v23[10];
  v87[4] = v80;
  v87[5] = v29;
  v87[7] = v24;
  v87[6] = v82;
  v87[0] = v76;
  v87[1] = v31;
  v87[2] = v78;
  v87[3] = v27;
  if (sub_219F5EBE4(v87) == 1)
  {
    sub_219F79C1C();
    if (qword_27CCD9200 != -1)
    {
      swift_once();
    }

    v63[3] = xmmword_27CCDCFF8;
    v63[4] = xmmword_27CCDD008;
    v63[5] = xmmword_27CCDD018;
    v62 = xmmword_27CCDCFB8;
    v63[0] = xmmword_27CCDCFC8;
    v63[1] = xmmword_27CCDCFD8;
    v63[2] = xmmword_27CCDCFE8;
    v58 = xmmword_27CCDCF78;
    v59 = unk_27CCDCF88;
    v60 = xmmword_27CCDCF98;
    v61 = xmmword_27CCDCFA8;
    sub_219F7F6D0(&v58, v56);
    v69 = *&v63[0];
    v66 = v60;
    v67 = v61;
    v68 = v62;
    v64 = v58;
    v65 = v59;
    v70 = *(v63 + 8);
    v71 = *(&v63[1] + 8);
    v75 = *(&v63[5] + 1);
    v73 = *(&v63[3] + 8);
    v74 = *(&v63[4] + 8);
    v72 = *(&v63[2] + 8);
  }

  else
  {
    v63[3] = v84;
    v63[4] = v85;
    v63[5] = v86;
    v62 = v80;
    v63[0] = v81;
    v63[1] = v82;
    v63[2] = v83;
    v58 = v76;
    v59 = v77;
    v60 = v78;
    v61 = v79;
    sub_219F79C1C();
    v69 = *&v63[0];
    v66 = v60;
    v67 = v61;
    v68 = v62;
    v64 = v58;
    v65 = v59;
    v72 = *(&v63[2] + 8);
    v73 = *(&v63[3] + 8);
    v74 = *(&v63[4] + 8);
    v75 = *(&v63[5] + 1);
    v70 = *(v63 + 8);
    v71 = *(&v63[1] + 8);
  }

  v56[2] = v66;
  v56[3] = v67;
  v56[4] = v68;
  v56[0] = v64;
  v56[1] = v65;
  *(&v57[3] + 8) = v73;
  *(&v57[2] + 8) = v72;
  *(&v57[4] + 8) = v74;
  *&v57[0] = v69;
  *(&v57[5] + 1) = v75;
  *(v57 + 8) = v70;
  *(&v57[1] + 8) = v71;
  v58 = v64;
  v59 = v65;
  v62 = v68;
  v63[0] = v57[0];
  v60 = v66;
  v61 = v67;
  v63[4] = v57[4];
  v63[5] = v57[5];
  v63[2] = v57[2];
  v63[3] = v57[3];
  v63[1] = v57[1];
  nullsub_1(&v58, v34);
  v35 = v63[1];
  *(v9 + 136) = v63[2];
  v36 = v63[4];
  *(v9 + 152) = v63[3];
  *(v9 + 168) = v36;
  *(v9 + 184) = v63[5];
  v37 = v60;
  *(v9 + 72) = v61;
  v38 = v63[0];
  *(v9 + 88) = v62;
  *(v9 + 104) = v38;
  *(v9 + 120) = v35;
  v39 = v59;
  *(v9 + 24) = v58;
  *(v9 + 40) = v39;
  *v9 = v21;
  v9[16] = v22;
  v40 = v49;
  v9[17] = v50;
  v9[18] = v40;
  *(v9 + 56) = v37;
  v41 = *(v53 + 24);
  *&v9[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
  swift_storeEnumTagMultiPayload();
  v42 = v51;
  sub_21A056ECC(v9, v51, type metadata accessor for ActivitySymbolView);
  sub_219F45500(v19, v16, &qword_27CCDC838);
  v43 = v52;
  sub_21A056E68(v42, v52);
  v44 = v54;
  sub_219F45500(v16, v54, &qword_27CCDC838);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC848);
  v46 = v44 + *(v45 + 48);
  *v46 = 0x4024000000000000;
  *(v46 + 8) = 0;
  sub_21A056E68(v43, v44 + *(v45 + 64));
  sub_219F45500(&v76, &v55, &qword_27CCD9B40);
  sub_21A056A78(v42, type metadata accessor for ActivitySymbolView);
  sub_219F6409C(v19, &qword_27CCDC838);
  sub_21A056A78(v43, type metadata accessor for ActivitySymbolView);
  return sub_219F6409C(v16, &qword_27CCDC838);
}

uint64_t sub_21A053324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC850);
  v81 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v75 = (&v74 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v74 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC858);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v88 = &v74 - v14;
  v15 = sub_21A0E554C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActivityHeaderView(0);
  v87 = (a1 + *(v20 + 20));
  v21 = v87[1];
  if (v21)
  {
    v22 = v20;
    *&v136[0] = *v87;
    *(&v136[0] + 1) = v21;
    sub_219F3F130();

    v23 = sub_21A0E59EC();
    v83 = v24;
    KeyPath = v23;
    LODWORD(v79) = v25;
    v80 = v26;
    memcpy(v136, a1 + *(v22 + 24), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v136) == 1)
    {
      sub_219F639B0(&v123);
    }

    else
    {
      sub_219F45500(v136, &v123, &qword_27CCD95B8);
      v133 = v136[10];
      v134 = v136[11];
      v135 = *&v136[12];
      v129 = v136[6];
      v130 = v136[7];
      v131 = v136[8];
      v132 = v136[9];
      v125 = v136[2];
      v126 = v136[3];
      v127 = v136[4];
      v128 = v136[5];
      v123 = v136[0];
      v124 = v136[1];
    }

    v86 = v3;
    v118 = v133;
    v119 = v134;
    v120 = v135;
    v114 = v129;
    v115 = v130;
    v116 = v131;
    v117 = v132;
    v110 = v125;
    v111 = v126;
    v112 = v127;
    v113 = v128;
    v108 = v123;
    v109 = v124;
    if (qword_27CCD91D8 != -1)
    {
      swift_once();
    }

    v121[2] = xmmword_27CCDC650;
    v121[3] = unk_27CCDC660;
    v121[4] = xmmword_27CCDC670;
    v122 = dword_27CCDC680;
    v121[0] = xmmword_27CCDC630;
    v121[1] = unk_27CCDC640;
    v104 = xmmword_27CCDC650;
    v105 = unk_27CCDC660;
    v106 = xmmword_27CCDC670;
    v107 = dword_27CCDC680;
    v102 = xmmword_27CCDC630;
    v103 = unk_27CCDC640;
    v101 = 9;
    v29 = a1;
    v31 = *a1;
    v30 = a1[1];
    v33 = v29[2];
    v32 = v29[3];
    v34 = v29[4];
    v85 = v29;
    if (*(v29 + 40) == 1)
    {
      *&v98 = v31;
      *(&v98 + 1) = v30;
      *&v99 = v33;
      *(&v99 + 1) = v32;
      v100 = v34;
      sub_219F639D4(v121, v96);
      sub_219F7F800(v31, v30, v33, v32, v34, 1);
    }

    else
    {
      sub_219F639D4(v121, v96);
      sub_219F7F800(v31, v30, v33, v32, v34, 0);
      sub_21A0E66AC();
      v76 = v34;
      v35 = sub_21A0E575C();
      v77 = v15;
      v36 = v35;
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v31, v30, v33, v32, v76, 0);
      (*(v16 + 8))(v19, v77);
    }

    v89 = v98;
    v90 = v99;
    v91 = v100;
    v37 = v79;
    v38 = v83;
    v39 = KeyPath;
    v40 = Text.activityTextModifier(_:fallback:font:environment:)(&v108, &v102, &v101, &v89, KeyPath, v83, v79 & 1);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_219F63A30(v39, v38, v37 & 1);

    v92[0] = v89;
    v92[1] = v90;
    v93 = v91;
    sub_219F5ED9C(v92);
    v94[2] = v104;
    v94[3] = v105;
    v94[4] = v106;
    v95 = v107;
    v94[0] = v102;
    v94[1] = v103;
    sub_219F6409C(v94, &qword_27CCD95B0);
    v96[10] = v118;
    v96[11] = v119;
    v97 = v120;
    v96[6] = v114;
    v96[7] = v115;
    v96[8] = v116;
    v96[9] = v117;
    v96[2] = v110;
    v96[3] = v111;
    v96[4] = v112;
    v96[5] = v113;
    v96[0] = v108;
    v96[1] = v109;
    sub_219F6409C(v96, &qword_27CCD95B8);
    v47 = v44 & 1;
    v80 = v40;
    v27 = v42;
    v28 = v44 & 1;
    sub_219F63A40(v40, v42, v47);
    v79 = v46;

    a1 = v85;
    v3 = v86;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v27 = 0;
    v28 = 0;
  }

  v48 = sub_21A053C58();
  v85 = v49;
  v86 = v48;
  v77 = v50;
  v52 = v51;
  KeyPath = swift_getKeyPath();
  v76 = swift_getKeyPath();
  LODWORD(v83) = v52 & 1;
  LOBYTE(v136[0]) = v52 & 1;
  LOBYTE(v123) = 0;
  if (v87[11] || (v53 = type metadata accessor for ActivityHeaderViewModel(), v54 = v74, sub_219F45500(v87 + *(v53 + 40), v74, &qword_27CCD98D8), v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0), v56 = 1, v57 = a1, v58 = (*(*(v55 - 8) + 48))(v54, 1, v55), sub_219F6409C(v54, &qword_27CCD98D8), v59 = v58 == 1, a1 = v57, !v59))
  {
    v60 = sub_21A0E55BC();
    v61 = v75;
    *v75 = v60;
    *(v61 + 8) = 0;
    *(v61 + 16) = 1;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC868);
    sub_21A0545DC(a1, (v61 + *(v62 + 44)));
    sub_219F4D494(v61, v88, &qword_27CCDC850);
    v56 = 0;
  }

  v63 = v88;
  (*(v81 + 56))(v88, v56, 1, v3);
  v64 = v82;
  sub_219F45500(v63, v82, &qword_27CCDC858);
  v66 = v79;
  v65 = v80;
  v68 = v77;
  v67 = v78;
  *v78 = v80;
  v67[1] = v27;
  v67[2] = v28;
  v67[3] = v66;
  *&v123 = v86;
  *(&v123 + 1) = v68;
  LOBYTE(v124) = v83;
  *(&v124 + 1) = v85;
  *&v125 = KeyPath;
  *(&v125 + 1) = 0x3FE87AE147AE147BLL;
  v69 = v76;
  *&v126 = v76;
  *(&v126 + 1) = 1;
  LOBYTE(v127) = 0;
  *(v67 + 96) = 0;
  v70 = v126;
  *(v67 + 4) = v125;
  *(v67 + 5) = v70;
  v71 = v124;
  *(v67 + 2) = v123;
  *(v67 + 3) = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC860);
  sub_219F45500(v64, v67 + *(v72 + 64), &qword_27CCDC858);
  sub_21A006EE4(v65, v27, v28, v66);
  sub_219F45500(&v123, v136, &qword_27CCDC7F0);
  sub_21A006F28(v65, v27, v28, v66);
  sub_219F6409C(v88, &qword_27CCDC858);
  sub_219F6409C(v64, &qword_27CCDC858);
  *&v136[0] = v86;
  *(&v136[0] + 1) = v68;
  LOBYTE(v136[1]) = v83;
  *(&v136[1] + 1) = v85;
  *&v136[2] = KeyPath;
  *(&v136[2] + 1) = 0x3FE87AE147AE147BLL;
  *&v136[3] = v69;
  *(&v136[3] + 1) = 1;
  LOBYTE(v136[4]) = 0;
  sub_219F6409C(v136, &qword_27CCDC7F0);
  return sub_21A006F28(v65, v27, v28, v66);
}

uint64_t sub_21A053C58()
{
  v72 = sub_21A0E554C();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v1);
  v73 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ActivityHeaderView(0);
  v4 = v0 + *(v3 + 20);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v79 = v4;
  v147[0] = v5;
  v147[1] = v6;
  v7 = sub_219F3F130();

  v71 = v7;
  v8 = sub_21A0E59EC();
  v76 = v9;
  v77 = v8;
  LODWORD(v75) = v10;
  v78 = v11;
  v12 = *(v3 + 24);
  v80 = v0;
  v70 = v12;
  memcpy(v147, (v0 + v12), 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v147) == 1)
  {
    sub_219F639B0(&v134);
  }

  else
  {
    sub_219F45500(&v147[25], v115, &qword_27CCD95B8);
    v143 = *&v147[43];
    v144 = *&v147[45];
    v145 = *&v147[47];
    v139 = *&v147[35];
    v140 = *&v147[37];
    v141 = *&v147[39];
    v142 = *&v147[41];
    v135 = *&v147[27];
    v136 = *&v147[29];
    v137 = *&v147[31];
    v146 = v147[49];
    v138 = *&v147[33];
    v134 = *&v147[25];
  }

  if (qword_27CCD91E0 != -1)
  {
    swift_once();
  }

  v132[2] = xmmword_27CCDC6A8;
  v132[3] = unk_27CCDC6B8;
  v132[4] = xmmword_27CCDC6C8;
  v133 = dword_27CCDC6D8;
  v132[0] = xmmword_27CCDC688;
  v132[1] = unk_27CCDC698;
  v128 = xmmword_27CCDC6A8;
  v129 = unk_27CCDC6B8;
  v130 = xmmword_27CCDC6C8;
  v131 = dword_27CCDC6D8;
  v126 = xmmword_27CCDC688;
  v127 = unk_27CCDC698;
  v125 = 9;
  v14 = *v80;
  v13 = *(v80 + 8);
  v16 = *(v80 + 16);
  v15 = *(v80 + 24);
  v17 = *(v80 + 32);
  if (*(v80 + 40) == 1)
  {
    *&v122 = *v80;
    *(&v122 + 1) = v13;
    *&v123 = v16;
    *(&v123 + 1) = v15;
    v124 = v17;
    sub_219F639D4(v132, v115);
    sub_219F7F800(v14, v13, v16, v15, v17, 1);
  }

  else
  {
    sub_219F639D4(v132, v115);
    sub_219F7F800(v14, v13, v16, v15, v17, 0);
    sub_21A0E66AC();
    v18 = sub_21A0E575C();
    v19 = v72;
    sub_21A0E512C();

    v20 = v73;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v14, v13, v16, v15, v17, 0);
    (*(v74 + 8))(v20, v19);
  }

  v115[0] = v122;
  v115[1] = v123;
  *&v115[2] = v124;
  v21 = v75;
  v23 = v76;
  v22 = v77;
  v24 = Text.activityTextModifier(_:fallback:font:environment:)(&v134, &v126, &v125, v115, v77, v76, v75 & 1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_219F63A30(v22, v23, v21 & 1);

  v116[0] = v115[0];
  v116[1] = v115[1];
  v117 = *&v115[2];
  sub_219F5ED9C(v116);
  v118[2] = v128;
  v118[3] = v129;
  v118[4] = v130;
  v119 = v131;
  v118[0] = v126;
  v118[1] = v127;
  sub_219F6409C(v118, &qword_27CCD95B0);
  v120[9] = v143;
  v120[10] = v144;
  v120[11] = v145;
  v121 = v146;
  v120[5] = v139;
  v120[6] = v140;
  v120[7] = v141;
  v120[8] = v142;
  v120[1] = v135;
  v120[2] = v136;
  v120[3] = v137;
  v120[4] = v138;
  v120[0] = v134;
  sub_219F6409C(v120, &qword_27CCD95B8);
  v31 = *(v79 + 40);
  if (v31)
  {
    *&v115[0] = *(v79 + 32);
    *(&v115[0] + 1) = v31;

    v32 = sub_21A0E59EC();
    v76 = v33;
    LODWORD(v75) = v34;
    v36 = v35;
    memcpy(v115, (v80 + v70), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v115) == 1)
    {
      sub_219F639B0(&v102);
    }

    else
    {
      sub_219F45500(&v115[25], v88, &qword_27CCD95B8);
      v112 = v115[35];
      v113 = v115[36];
      v114 = *&v115[37];
      v108 = v115[31];
      v109 = v115[32];
      v110 = v115[33];
      v111 = v115[34];
      v104 = v115[27];
      v105 = v115[28];
      v106 = v115[29];
      v107 = v115[30];
      v102 = v115[25];
      v103 = v115[26];
    }

    LODWORD(v77) = v28;
    v78 = v24;
    v79 = v30;
    if (qword_27CCD91E8 != -1)
    {
      swift_once();
    }

    v100[2] = xmmword_27CCDC700;
    v100[3] = unk_27CCDC710;
    v100[4] = xmmword_27CCDC720;
    v101 = dword_27CCDC730;
    v100[0] = xmmword_27CCDC6E0;
    v100[1] = *algn_27CCDC6F0;
    v96 = xmmword_27CCDC700;
    v97 = unk_27CCDC710;
    v98 = xmmword_27CCDC720;
    v99 = dword_27CCDC730;
    v94 = xmmword_27CCDC6E0;
    v95 = *algn_27CCDC6F0;
    v93 = 9;
    v38 = *v80;
    v37 = *(v80 + 8);
    v39 = *(v80 + 16);
    v40 = *(v80 + 24);
    v41 = *(v80 + 32);
    v42 = *(v80 + 40);
    v69 = v26;
    if (v42 == 1)
    {
      *&v90 = v38;
      *(&v90 + 1) = v37;
      *&v91 = v39;
      *(&v91 + 1) = v40;
      v92 = v41;
      sub_219F639D4(v100, v88);
      sub_219F7F800(v38, v37, v39, v40, v41, 1);
    }

    else
    {
      sub_219F639D4(v100, v88);
      sub_219F7F800(v38, v37, v39, v40, v41, 0);
      sub_21A0E66AC();
      v43 = v74;
      v80 = v36;
      v44 = sub_21A0E575C();
      v71 = v32;
      v45 = v44;
      sub_21A0E512C();

      v32 = v71;
      v46 = v73;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v38, v37, v39, v40, v41, 0);
      (*(v43 + 8))(v46, v72);
    }

    v81 = v90;
    v82 = v91;
    v83 = v92;
    v47 = v75;
    v48 = v76;
    v80 = Text.activityTextModifier(_:fallback:font:environment:)(&v102, &v94, &v93, &v81, v32, v76, v75 & 1);
    v73 = v50;
    v74 = v49;
    LODWORD(v72) = v51;
    sub_219F63A30(v32, v48, v47 & 1);

    v84[0] = v81;
    v84[1] = v82;
    v85 = v83;
    sub_219F5ED9C(v84);
    v86[2] = v96;
    v86[3] = v97;
    v86[4] = v98;
    v87 = v99;
    v86[0] = v94;
    v86[1] = v95;
    sub_219F6409C(v86, &qword_27CCD95B0);
    v88[10] = v112;
    v88[11] = v113;
    v89 = v114;
    v88[6] = v108;
    v88[7] = v109;
    v88[8] = v110;
    v88[9] = v111;
    v88[2] = v104;
    v88[3] = v105;
    v88[4] = v106;
    v88[5] = v107;
    v88[0] = v102;
    v88[1] = v103;
    sub_219F6409C(v88, &qword_27CCD95B8);
    sub_21A0E562C();
    v52 = sub_21A0E59DC();
    v54 = v53;
    v56 = v55;
    v57 = sub_21A0E598C();
    v59 = v58;
    LOBYTE(v48) = v60;
    sub_219F63A30(v52, v54, v56 & 1);

    v61 = v72;
    v62 = v80;
    v63 = v74;
    v64 = sub_21A0E598C();
    v75 = v65;
    v76 = v64;
    v71 = v66;
    sub_219F63A30(v57, v59, v48 & 1);

    sub_219F63A30(v62, v63, v61 & 1);

    sub_219F63A30(v78, v69, v77 & 1);

    return v76;
  }

  return v24;
}

uint64_t sub_21A0545DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v112 = a2;
  v103 = type metadata accessor for ActivityAssetView(0);
  v111 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v97 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v10 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v11);
  v102 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC870);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v110 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v113 = &v97 - v18;
  v19 = sub_21A0E554C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v108 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ActivityHeaderView(0);
  v24 = a1 + *(v23 + 20);
  v25 = *(v24 + 88);
  v107 = v24;
  if (v25)
  {
    v26 = v23;
    v100 = v9;
    *&v172[0] = *(v24 + 80);
    *(&v172[0] + 1) = v25;
    sub_219F3F130();

    v27 = sub_21A0E59EC();
    v104 = v28;
    v105 = v27;
    v98 = v29;
    v106 = v30;
    memcpy(v172, (a1 + *(v26 + 24)), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v172) == 1)
    {
      sub_219F639B0(&v159);
    }

    else
    {
      sub_219F45500(&v172[37] + 8, &v159, &qword_27CCD95B8);
      v169 = *(&v172[47] + 8);
      v170 = *(&v172[48] + 8);
      v171 = *(&v172[49] + 1);
      v165 = *(&v172[43] + 8);
      v166 = *(&v172[44] + 8);
      v167 = *(&v172[45] + 8);
      v168 = *(&v172[46] + 8);
      v161 = *(&v172[39] + 8);
      v162 = *(&v172[40] + 8);
      v163 = *(&v172[41] + 8);
      v164 = *(&v172[42] + 8);
      v159 = *(&v172[37] + 8);
      v160 = *(&v172[38] + 8);
    }

    v99 = v10;
    v101 = v5;
    v154 = v169;
    v155 = v170;
    v156 = v171;
    v150 = v165;
    v151 = v166;
    v152 = v167;
    v153 = v168;
    v146 = v161;
    v147 = v162;
    v148 = v163;
    v149 = v164;
    v144 = v159;
    v145 = v160;
    if (qword_27CCD91F0 != -1)
    {
      swift_once();
    }

    v157[2] = xmmword_27CCDC758;
    v157[3] = unk_27CCDC768;
    v157[4] = xmmword_27CCDC778;
    v158 = dword_27CCDC788;
    v157[0] = xmmword_27CCDC738;
    v157[1] = unk_27CCDC748;
    v140 = xmmword_27CCDC758;
    v141 = unk_27CCDC768;
    v142 = xmmword_27CCDC778;
    v143 = dword_27CCDC788;
    v138 = xmmword_27CCDC738;
    v139 = unk_27CCDC748;
    v137 = 9;
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v35 = *(a1 + 24);
    v36 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      *&v134 = *a1;
      *(&v134 + 1) = v33;
      *&v135 = v34;
      *(&v135 + 1) = v35;
      v136 = v36;
      sub_219F639D4(v157, &v121);
      sub_219F7F800(v32, v33, v34, v35, v36, 1);
    }

    else
    {
      sub_219F639D4(v157, &v121);
      sub_219F7F800(v32, v33, v34, v35, v36, 0);
      sub_21A0E66AC();
      v37 = sub_21A0E575C();
      v97 = v19;
      v38 = v20;
      v39 = v37;
      sub_21A0E512C();

      v40 = v108;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v32, v33, v34, v35, v36, 0);
      (*(v38 + 8))(v40, v97);
    }

    v114 = v134;
    v115 = v135;
    v116 = v136;
    v41 = v98;
    v43 = v104;
    v42 = v105;
    v44 = Text.activityTextModifier(_:fallback:font:environment:)(&v144, &v138, &v137, &v114, v105, v104, v98 & 1);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_219F63A30(v42, v43, v41 & 1);

    v117[0] = v114;
    v117[1] = v115;
    v118 = v116;
    sub_219F5ED9C(v117);
    v119[2] = v140;
    v119[3] = v141;
    v119[4] = v142;
    v120 = v143;
    v119[0] = v138;
    v119[1] = v139;
    sub_219F6409C(v119, &qword_27CCD95B0);
    v131 = v154;
    v132 = v155;
    v133 = v156;
    v127 = v150;
    v128 = v151;
    v129 = v152;
    v130 = v153;
    v123 = v146;
    v124 = v147;
    v125 = v148;
    v126 = v149;
    v121 = v144;
    v122 = v145;
    sub_219F6409C(&v121, &qword_27CCD95B8);
    KeyPath = swift_getKeyPath();
    v52 = v48 & 1;
    v108 = v44;
    v25 = v46;
    v105 = v52;
    sub_219F63A40(v44, v46, v52);
    v31 = v50;

    v106 = KeyPath;

    v104 = 1;
    v9 = v100;
    v5 = v101;
    v10 = v99;
  }

  else
  {
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v31 = 0;
    v104 = 0;
  }

  v53 = type metadata accessor for ActivityHeaderViewModel();
  sub_219F45500(v107 + *(v53 + 40), v9, &qword_27CCD98D8);
  if ((*(v10 + 48))(v9, 1, v109) == 1)
  {
    sub_219F6409C(v9, &qword_27CCD98D8);
    v54 = v113;
    (*(v111 + 56))(v113, 1, 1, v103);
  }

  else
  {
    v55 = v102;
    v56 = v103;
    sub_219F4D494(v9, v102, &qword_27CCD98D0);
    sub_219F4D494(v55, &v5[v56[5]], &qword_27CCD98D0);
    *v5 = swift_getKeyPath();
    *(v5 + 24) = 0u;
    v5[40] = 0;
    *(v5 + 8) = 0u;
    v57 = &v5[v56[6]];
    sub_219F5EC1C(&v121);
    v58 = v130;
    v57[8] = v129;
    v57[9] = v58;
    v57[10] = v131;
    v59 = v126;
    v57[4] = v125;
    v57[5] = v59;
    v60 = v128;
    v57[6] = v127;
    v57[7] = v60;
    v61 = v122;
    *v57 = v121;
    v57[1] = v61;
    v62 = v124;
    v57[2] = v123;
    v57[3] = v62;
    v63 = &v5[v56[7]];
    sub_219F5EC1C(&v144);
    v64 = v149;
    *(v63 + 4) = v148;
    *(v63 + 5) = v64;
    v65 = v154;
    *(v63 + 9) = v153;
    *(v63 + 10) = v65;
    v66 = v152;
    *(v63 + 7) = v151;
    *(v63 + 8) = v66;
    *(v63 + 6) = v150;
    v67 = v145;
    *v63 = v144;
    *(v63 + 1) = v67;
    v68 = v147;
    *(v63 + 2) = v146;
    *(v63 + 3) = v68;
    v5[v56[8]] = 0;
    v69 = v57[9];
    v167 = v57[8];
    v168 = v69;
    v169 = v57[10];
    v70 = v57[5];
    v163 = v57[4];
    v164 = v70;
    v71 = v57[7];
    v165 = v57[6];
    v166 = v71;
    v72 = v57[1];
    v159 = *v57;
    v160 = v72;
    v73 = v57[3];
    v161 = v57[2];
    v162 = v73;
    sub_219F6409C(&v159, &qword_27CCDA4A8);
    v74 = v126;
    v57[4] = v125;
    v57[5] = v74;
    v75 = v131;
    v57[9] = v130;
    v57[10] = v75;
    v76 = v129;
    v57[7] = v128;
    v57[8] = v76;
    v57[6] = v127;
    v77 = v122;
    *v57 = v121;
    v57[1] = v77;
    v78 = v124;
    v57[2] = v123;
    v57[3] = v78;
    v79 = *(v63 + 6);
    v172[7] = *(v63 + 7);
    v80 = *(v63 + 9);
    v172[8] = *(v63 + 8);
    v172[9] = v80;
    v172[10] = *(v63 + 10);
    v81 = *(v63 + 4);
    v172[5] = *(v63 + 5);
    v172[6] = v79;
    v82 = *(v63 + 1);
    v172[0] = *v63;
    v172[1] = v82;
    v83 = *(v63 + 2);
    v172[3] = *(v63 + 3);
    v172[4] = v81;
    v172[2] = v83;
    sub_219F6409C(v172, &qword_27CCD9B40);
    v84 = v153;
    *(v63 + 8) = v152;
    *(v63 + 9) = v84;
    *(v63 + 10) = v154;
    v85 = v149;
    *(v63 + 4) = v148;
    *(v63 + 5) = v85;
    v86 = v151;
    *(v63 + 6) = v150;
    *(v63 + 7) = v86;
    v87 = v145;
    *v63 = v144;
    *(v63 + 1) = v87;
    v88 = v147;
    *(v63 + 2) = v146;
    *(v63 + 3) = v88;
    v54 = v113;
    sub_21A056ECC(v5, v113, type metadata accessor for ActivityAssetView);
    (*(v111 + 56))(v54, 0, 1, v56);
  }

  v89 = v110;
  sub_219F45500(v54, v110, &qword_27CCDC870);
  v90 = v112;
  v91 = v108;
  *v112 = v108;
  v90[1] = v25;
  v93 = v105;
  v92 = v106;
  v90[2] = v105;
  v90[3] = v31;
  v94 = v104;
  v90[4] = v92;
  v90[5] = v94;
  *(v90 + 48) = 0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC878);
  sub_219F45500(v89, v90 + *(v95 + 48), &qword_27CCDC870);
  sub_219F640FC(v91, v25, v93, v31);
  sub_219F6414C(v91, v25, v93, v31);
  sub_219F6409C(v113, &qword_27CCDC870);
  sub_219F6409C(v89, &qword_27CCDC870);
  return sub_219F6414C(v91, v25, v93, v31);
}

uint64_t sub_21A05503C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E55AC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC830);
  return sub_21A052D44(v1, a1 + *(v3 + 44));
}

uint64_t sub_21A05508C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_21A0E573C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7D0);
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v33 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ActivityHeaderViewModel();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActivityHeaderExpandedLeadingView(0);
  sub_219F45500(v1 + *(v18 + 20), v12, &qword_27CCD9610);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219F6409C(v12, &qword_27CCD9610);
    return (*(v6 + 56))(v35, 1, 1, v34);
  }

  else
  {
    sub_21A056ECC(v12, v17, type metadata accessor for ActivityHeaderViewModel);
    v20 = sub_21A0E567C();
    v39 = 1;
    sub_21A0555AC(v17, v1, &v50);
    v46 = v56;
    v47[0] = v57[0];
    *(v47 + 9) = *(v57 + 9);
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v40 = v50;
    v41 = v51;
    v48[6] = v56;
    v49[0] = v57[0];
    *(v49 + 9) = *(v57 + 9);
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    sub_219F45500(&v40, &v36, &qword_27CCDC7D8);
    sub_219F6409C(v48, &qword_27CCDC7D8);
    *(&v38[6] + 7) = v46;
    *(&v38[5] + 7) = v45;
    *(&v38[2] + 7) = v42;
    *(&v38[1] + 7) = v41;
    *(&v38[7] + 7) = v47[0];
    v38[8] = *(v47 + 9);
    *(&v38[3] + 7) = v43;
    *(&v38[4] + 7) = v44;
    *(v38 + 7) = v40;
    *&v37[81] = v38[5];
    *&v37[97] = v38[6];
    *&v37[113] = v38[7];
    *&v37[129] = *(v47 + 9);
    *&v37[17] = v38[1];
    *&v37[33] = v38[2];
    *&v37[49] = v38[3];
    *&v37[65] = v38[4];
    v36 = v20;
    v37[0] = v39;
    *&v37[1] = v38[0];
    sub_21A0E572C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7E0);
    sub_219F3E490(&qword_27CCDC7E8, &qword_27CCDC7E0);
    v21 = v33;
    sub_21A0E5AFC();
    (*(v31 + 8))(v5, v32);
    v57[1] = *&v37[112];
    v57[2] = *&v37[128];
    v58 = v37[144];
    v54 = *&v37[48];
    v55 = *&v37[64];
    v56 = *&v37[80];
    v57[0] = *&v37[96];
    v50 = v36;
    v51 = *v37;
    v52 = *&v37[16];
    v53 = *&v37[32];
    sub_219F6409C(&v50, &qword_27CCDC7E0);
    v22 = sub_21A0E579C();
    sub_21A0E51EC();
    v23 = v34;
    v24 = v21 + *(v34 + 36);
    *v24 = v22;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 24) = v27;
    *(v24 + 32) = v28;
    *(v24 + 40) = 0;
    v29 = v35;
    sub_219F5ABC4(v21, v35);
    (*(v6 + 56))(v29, 0, 1, v23);
    return sub_21A056A78(v17, type metadata accessor for ActivityHeaderViewModel);
  }
}

uint64_t sub_21A0555AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v82 = a3;
  v5 = sub_21A0E554C();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v194[0] = v8;
  v194[1] = v9;
  v10 = sub_219F3F130();

  v72 = v10;
  v11 = sub_21A0E59EC();
  v78 = v12;
  KeyPath = v11;
  LODWORD(v76) = v13;
  v83 = v14;
  v15 = *(type metadata accessor for ActivityHeaderExpandedLeadingView(0) + 24);
  v85 = a2;
  v71 = v15;
  memcpy(v194, (a2 + v15), 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v194) == 1)
  {
    sub_219F639B0(&v181);
  }

  else
  {
    sub_219F45500(&v194[25], v145, &qword_27CCD95B8);
    v190 = *&v194[43];
    v191 = *&v194[45];
    v192 = *&v194[47];
    v186 = *&v194[35];
    v187 = *&v194[37];
    v188 = *&v194[39];
    v189 = *&v194[41];
    v182 = *&v194[27];
    v183 = *&v194[29];
    v184 = *&v194[31];
    v193 = v194[49];
    v185 = *&v194[33];
    v181 = *&v194[25];
  }

  v173 = v191;
  v174 = v192;
  v175 = v193;
  v169 = v187;
  v170 = v188;
  v171 = v189;
  v172 = v190;
  v165 = v183;
  v166 = v184;
  v167 = v185;
  v168 = v186;
  v163 = v181;
  v164 = v182;
  if (qword_27CCD91E0 != -1)
  {
    swift_once();
  }

  v176[2] = xmmword_27CCDC6A8;
  v176[3] = unk_27CCDC6B8;
  v176[4] = xmmword_27CCDC6C8;
  v177 = dword_27CCDC6D8;
  v176[0] = xmmword_27CCDC688;
  v176[1] = unk_27CCDC698;
  v159 = xmmword_27CCDC6A8;
  v160 = unk_27CCDC6B8;
  v161 = xmmword_27CCDC6C8;
  v162 = dword_27CCDC6D8;
  v157 = xmmword_27CCDC688;
  v158 = unk_27CCDC698;
  v156 = 2;
  v17 = *v85;
  v16 = *(v85 + 8);
  v19 = *(v85 + 16);
  v18 = *(v85 + 24);
  v20 = *(v85 + 32);
  if (*(v85 + 40) == 1)
  {
    *&v153 = *v85;
    *(&v153 + 1) = v16;
    *&v154 = v19;
    *(&v154 + 1) = v18;
    v155 = v20;
    sub_219F639D4(v176, v145);
    sub_219F7F800(v17, v16, v19, v18, v20, 1);
  }

  else
  {
    sub_219F639D4(v176, v145);
    sub_219F7F800(v17, v16, v19, v18, v20, 0);
    sub_21A0E66AC();
    v73 = v5;
    v21 = sub_21A0E575C();
    v5 = v73;
    sub_21A0E512C();

    v22 = v74;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v17, v16, v19, v18, v20, 0);
    (*(v75 + 8))(v22, v5);
  }

  v145[0] = v153;
  v145[1] = v154;
  *&v145[2] = v155;
  v23 = v76;
  v25 = v78;
  v24 = KeyPath;
  v26 = Text.activityTextModifier(_:fallback:font:environment:)(&v163, &v157, &v156, v145, KeyPath, v78, v76 & 1);
  v80 = v27;
  v81 = v26;
  v29 = v28;
  v84 = v30;
  sub_219F63A30(v24, v25, v23 & 1);

  v147[0] = v145[0];
  v147[1] = v145[1];
  v148 = *&v145[2];
  sub_219F5ED9C(v147);
  v149[2] = v159;
  v149[3] = v160;
  v149[4] = v161;
  v150 = v162;
  v149[0] = v157;
  v149[1] = v158;
  sub_219F6409C(v149, &qword_27CCD95B0);
  v151[10] = v173;
  v151[11] = v174;
  v152 = v175;
  v151[6] = v169;
  v151[7] = v170;
  v151[8] = v171;
  v151[9] = v172;
  v151[2] = v165;
  v151[3] = v166;
  v151[4] = v167;
  v151[5] = v168;
  v151[0] = v163;
  v151[1] = v164;
  sub_219F6409C(v151, &qword_27CCD95B8);
  KeyPath = swift_getKeyPath();
  v78 = swift_getKeyPath();
  LODWORD(v83) = v29 & 1;
  v180 = v29 & 1;
  v178 = 0;
  v31 = *(v77 + 40);
  if (v31)
  {
    *&v145[0] = *(v77 + 32);
    *(&v145[0] + 1) = v31;

    v76 = sub_21A0E59EC();
    v77 = v32;
    v72 = v33;
    v70 = v34;
    memcpy(v145, (v85 + v71), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v145) == 1)
    {
      sub_219F639B0(&v132);
    }

    else
    {
      sub_219F45500(&v145[25], &v132, &qword_27CCD95B8);
      v142 = v145[35];
      v143 = v145[36];
      v144 = *&v145[37];
      v138 = v145[31];
      v139 = v145[32];
      v140 = v145[33];
      v141 = v145[34];
      v134 = v145[27];
      v135 = v145[28];
      v136 = v145[29];
      v137 = v145[30];
      v132 = v145[25];
      v133 = v145[26];
    }

    v126 = v142;
    v127 = v143;
    v128 = v144;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v118 = v134;
    v119 = v135;
    v120 = v136;
    v121 = v137;
    v116 = v132;
    v117 = v133;
    if (qword_27CCD91E8 != -1)
    {
      swift_once();
    }

    v129[2] = xmmword_27CCDC700;
    v129[3] = unk_27CCDC710;
    v129[4] = xmmword_27CCDC720;
    v130 = dword_27CCDC730;
    v129[0] = xmmword_27CCDC6E0;
    v129[1] = *algn_27CCDC6F0;
    v112 = xmmword_27CCDC700;
    v113 = unk_27CCDC710;
    v114 = xmmword_27CCDC720;
    v115 = dword_27CCDC730;
    v110 = xmmword_27CCDC6E0;
    v111 = *algn_27CCDC6F0;
    v109 = 6;
    v43 = *v85;
    v42 = *(v85 + 8);
    v45 = *(v85 + 16);
    v44 = *(v85 + 24);
    v46 = *(v85 + 32);
    if (*(v85 + 40) == 1)
    {
      *&v106 = *v85;
      *(&v106 + 1) = v42;
      *&v107 = v45;
      *(&v107 + 1) = v44;
      v108 = v46;
      sub_219F639D4(v129, &v93);
      sub_219F7F800(v43, v42, v45, v44, v46, 1);
    }

    else
    {
      sub_219F639D4(v129, &v93);
      sub_219F7F800(v43, v42, v45, v44, v46, 0);
      sub_21A0E66AC();
      v73 = v5;
      v47 = sub_21A0E575C();
      sub_21A0E512C();

      v48 = v74;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v43, v42, v45, v44, v46, 0);
      (*(v75 + 8))(v48, v73);
    }

    v86 = v106;
    v87 = v107;
    v88 = v108;
    v49 = v70;
    v50 = v76;
    v51 = v72;
    v52 = Text.activityTextModifier(_:fallback:font:environment:)(&v116, &v110, &v109, &v86, v76, v72, v70 & 1);
    v54 = v53;
    LODWORD(v85) = v55;
    v37 = v56;
    sub_219F63A30(v50, v51, v49 & 1);

    v89[0] = v86;
    v89[1] = v87;
    v90 = v88;
    sub_219F5ED9C(v89);
    v91[2] = v112;
    v91[3] = v113;
    v91[4] = v114;
    v92 = v115;
    v91[0] = v110;
    v91[1] = v111;
    sub_219F6409C(v91, &qword_27CCD95B0);
    v103 = v126;
    v104 = v127;
    v105 = v128;
    v99 = v122;
    v100 = v123;
    v101 = v124;
    v102 = v125;
    v95 = v118;
    v96 = v119;
    v97 = v120;
    v98 = v121;
    v93 = v116;
    v94 = v117;
    sub_219F6409C(&v93, &qword_27CCD95B8);
    v38 = swift_getKeyPath();
    v31 = swift_getKeyPath();
    v36 = v54;
    v35 = v52;
    LOBYTE(v86) = v85 & 1;
    v131 = 0;
    v41 = v85 & 1;
    v39 = 0x3FE999999999999ALL;
    v40 = 1;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v57 = v80;
  v58 = v81;
  *&v93 = v81;
  *(&v93 + 1) = v80;
  LOBYTE(v94) = v83;
  *(&v94 + 1) = *v179;
  DWORD1(v94) = *&v179[3];
  v59 = v78;
  v60 = KeyPath;
  *(&v94 + 1) = v84;
  *&v95 = KeyPath;
  *(&v95 + 1) = 0x3FE77CED916872B0;
  *&v96 = v78;
  *(&v96 + 1) = 1;
  LOBYTE(v97) = 0;
  v61 = v96;
  LOBYTE(v146[0]) = 0;
  v145[52] = v95;
  v145[53] = v96;
  v145[50] = v93;
  v145[51] = v94;
  *&v116 = v35;
  *(&v116 + 1) = v36;
  *&v117 = v41;
  *(&v117 + 1) = v37;
  *&v118 = v38;
  *(&v118 + 1) = v39;
  *&v119 = v31;
  *(&v119 + 1) = v40;
  LOBYTE(v120) = 0;
  *(v146 + 8) = v116;
  BYTE8(v146[4]) = 0;
  *(&v146[3] + 8) = v119;
  *(&v146[2] + 8) = v118;
  *(&v146[1] + 8) = v117;
  v62 = v93;
  v63 = v94;
  v64 = v82;
  v82[2] = v95;
  v64[3] = v61;
  *v64 = v62;
  v64[1] = v63;
  v65 = v146[0];
  v66 = v146[1];
  *(v64 + 121) = *(&v146[3] + 9);
  v67 = v146[3];
  v64[6] = v146[2];
  v64[7] = v67;
  v64[4] = v65;
  v64[5] = v66;
  *&v132 = v35;
  *(&v132 + 1) = v36;
  *&v133 = v41;
  *(&v133 + 1) = v37;
  *&v134 = v38;
  *(&v134 + 1) = v39;
  *&v135 = v31;
  *(&v135 + 1) = v40;
  LOBYTE(v136) = 0;
  sub_219F45500(&v93, v145, &qword_27CCDC7F0);
  sub_219F45500(&v116, v145, &qword_27CCDBEB0);
  sub_219F6409C(&v132, &qword_27CCDBEB0);
  *&v145[0] = v58;
  *(&v145[0] + 1) = v57;
  LOBYTE(v145[1]) = v83;
  *(&v145[1] + 1) = *v179;
  DWORD1(v145[1]) = *&v179[3];
  *(&v145[1] + 1) = v84;
  *&v145[2] = v60;
  *(&v145[2] + 1) = 0x3FE77CED916872B0;
  *&v145[3] = v59;
  *(&v145[3] + 1) = 1;
  LOBYTE(v145[4]) = 0;
  return sub_219F6409C(v145, &qword_27CCDC7F0);
}

uint64_t sub_21A056088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7B0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v59 - v5;
  v7 = sub_21A0E573C();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v61 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ActivitySymbolView();
  MEMORY[0x28223BE20](v62, v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7B8);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC7C0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v67 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v68 = v59 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v59 - v25;
  sub_219F45500(v2, v59 - v25, &qword_27CCD9610);
  v27 = type metadata accessor for ActivityHeaderViewModel();
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_219F6409C(v26, &qword_27CCD9610);
    swift_storeEnumTagMultiPayload();
    sub_21A056714();
    return sub_21A0E56BC();
  }

  else
  {
    v59[1] = v17;
    v59[2] = v3;
    v60 = v6;
    sub_219F6409C(v26, &qword_27CCD9610);
    if (qword_27CCD9208 != -1)
    {
      swift_once();
    }

    v29 = xmmword_27CCDD760;
    v30 = byte_27CCDD770;
    v31 = *&byte_27CCDD771;
    v32 = (v2 + *(type metadata accessor for ActivityHeaderExpandedTrailingView(0) + 20));
    v33 = v32[7];
    v34 = v32[9];
    v78 = v32[8];
    v35 = v78;
    v79 = v34;
    v36 = v32[9];
    v80 = v32[10];
    v37 = v32[3];
    v38 = v32[5];
    v74 = v32[4];
    v39 = v74;
    v75 = v38;
    v40 = v32[5];
    v41 = v32[7];
    v76 = v32[6];
    v42 = v76;
    v77 = v41;
    v43 = v32[1];
    v44 = v32[3];
    v72 = v32[2];
    v45 = v72;
    v73 = v44;
    v46 = v32[1];
    v71[0] = *v32;
    v47 = v71[0];
    v71[1] = v46;
    *(v12 + 136) = v33;
    *(v12 + 152) = v35;
    *(v12 + 168) = v36;
    *(v12 + 184) = v32[10];
    *(v12 + 72) = v37;
    *(v12 + 88) = v39;
    *(v12 + 104) = v40;
    *(v12 + 120) = v42;
    *(v12 + 24) = v47;
    *(v12 + 40) = v43;
    *v12 = v29;
    v12[16] = v30;
    *(v12 + 17) = v31;
    *(v12 + 56) = v45;
    v48 = v62;
    v49 = *(v62 + 24);
    *&v12[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
    swift_storeEnumTagMultiPayload();
    sub_219F79C1C();
    sub_219F45500(v71, v70, &qword_27CCD9B40);
    v50 = v61;
    sub_21A0E571C();
    v51 = sub_21A056830(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView);
    sub_21A0E5AFC();
    (*(v65 + 8))(v50, v66);
    sub_21A056A78(v12, type metadata accessor for ActivitySymbolView);
    v70[0] = v48;
    v70[1] = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v67;
    v53 = v64;
    sub_21A0E5AEC();
    (*(v63 + 8))(v16, v53);
    sub_21A0E562C();
    v54 = sub_21A0E59DC();
    v56 = v55;
    LOBYTE(v50) = v57;
    v58 = v68;
    sub_21A0E538C();
    sub_219F63A30(v54, v56, v50 & 1);

    sub_219F5AAEC(v52);
    sub_219F5AB54(v58, v60);
    swift_storeEnumTagMultiPayload();
    sub_21A056714();
    sub_21A0E56BC();
    return sub_219F5AAEC(v58);
  }
}

unint64_t sub_21A056714()
{
  result = qword_27CCDC7C8;
  if (!qword_27CCDC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7C0);
    type metadata accessor for ActivitySymbolView();
    sub_21A056830(&qword_27CCDB4F0, type metadata accessor for ActivitySymbolView);
    swift_getOpaqueTypeConformance2();
    sub_21A056830(&qword_27CCD9668, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC7C8);
  }

  return result;
}

uint64_t sub_21A056830(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_21A056878()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC630 = v0;
  BYTE4(xmmword_27CCDC670) = 32;
  LODWORD(xmmword_27CCDC670) = 0;
  *(&xmmword_27CCDC670 + 1) = 0;
  dword_27CCDC680 = 50726401;
  return result;
}

double sub_21A0568F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC688 = v0;
  BYTE4(xmmword_27CCDC6C8) = 32;
  LODWORD(xmmword_27CCDC6C8) = 0;
  *(&xmmword_27CCDC6C8 + 1) = 0;
  dword_27CCDC6D8 = 50463489;
  return result;
}

double sub_21A056978()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC6E0 = v0;
  BYTE4(xmmword_27CCDC720) = 32;
  LODWORD(xmmword_27CCDC720) = 0;
  *(&xmmword_27CCDC720 + 1) = 0;
  dword_27CCDC730 = 50660097;
  return result;
}

double sub_21A0569F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC738 = v0;
  BYTE4(xmmword_27CCDC778) = 32;
  LODWORD(xmmword_27CCDC778) = 0;
  *(&xmmword_27CCDC778 + 1) = 0;
  dword_27CCDC788 = 50661121;
  return result;
}

uint64_t sub_21A056A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A056B20()
{
  sub_219F41930(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityHeaderViewModel();
    if (v1 <= 0x3F)
    {
      sub_219F41930(319, &qword_27CCD9B20, &type metadata for ActivityHeaderTheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_219F41930(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21A056C40()
{
  result = qword_27CCDC808;
  if (!qword_27CCDC808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC810);
    sub_21A056714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC808);
  }

  return result;
}

unint64_t sub_21A056CCC()
{
  result = qword_27CCDC818;
  if (!qword_27CCDC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC820);
    sub_21A056D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC818);
  }

  return result;
}

unint64_t sub_21A056D50()
{
  result = qword_27CCDC828;
  if (!qword_27CCDC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC7E0);
    sub_219F3E490(&qword_27CCDC7E8, &qword_27CCDC7E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC828);
  }

  return result;
}

uint64_t sub_21A056E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySymbolView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A056ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for BalanceOfPowerView()
{
  result = qword_27CCDC890;
  if (!qword_27CCDC890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A056FA8()
{
  result = type metadata accessor for BalanceOfPowerData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21A057050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_21A057098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A057120()
{
  sub_21A0E591C();
  sub_21A0E584C();
  v0 = sub_21A0E58CC();

  return v0;
}

uint64_t sub_21A057160(unsigned __int8 a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  if (a1 > 1u)
  {
    a3();
  }

  else if (a1)
  {
    a2();
  }

  else
  {
    sub_21A0E592C();
  }

  a4();
  v5 = sub_21A0E58CC();

  return v5;
}

uint64_t sub_21A0571D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8B0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v49 - v8;
  *v9 = sub_21A0E559C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8B8);
  sub_21A05773C(a1, &v9[*(v10 + 44)]);
  v11 = type metadata accessor for BalanceOfPowerData(0);
  v12 = (a1 + v11[5]);
  v13 = *v12;
  v14 = type metadata accessor for BalanceOfPowerData.Entity(0);
  v15 = *(v14 + 28);
  v16 = type metadata accessor for ElectionEntityTheme();
  v17 = v12 + v15 + *(v16 + 32);
  *(v72 + 13) = *(v17 + 61);
  v18 = *(v17 + 1);
  v19 = *(v17 + 3);
  v71 = *(v17 + 2);
  v72[0] = v19;
  v20 = *(v17 + 1);
  v70[0] = *v17;
  v70[1] = v20;
  v21 = (a1 + v11[6]);
  v22 = v21 + *(v14 + 28) + *(v16 + 32);
  *(v75 + 13) = *(v22 + 61);
  v23 = *(v22 + 1);
  v24 = *(v22 + 3);
  v74 = *(v22 + 2);
  v75[0] = v24;
  v25 = *(v22 + 1);
  v73[0] = *v22;
  v73[1] = v25;
  v26 = v11[7];
  v27 = *(v17 + 3);
  *(v79 + 13) = *(v17 + 61);
  v78 = v71;
  v79[0] = v27;
  v28 = *v21;
  v76 = v70[0];
  v77 = v18;
  v29 = *(a1 + v26);
  *&v68[3] = v73[0];
  v30 = *(v22 + 3);
  *&v68[64] = *(v22 + 61);
  *&v68[51] = v30;
  *&v68[35] = v74;
  *&v68[19] = v23;
  type metadata accessor for BalanceOfPowerView();
  v31 = v29;
  v32 = v28;
  v33 = v13;
  sub_219F72F28(v70, v58);
  sub_219F72F28(v73, v58);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  *(v69 + 3) = *&v69[7];
  *(&v69[2] + 3) = *&v69[9];
  *(&v69[4] + 3) = *&v69[11];
  v49 = sub_21A0E55BC();
  LOBYTE(v59[0]) = 1;
  sub_21A058284(a1, v58);
  memcpy(v53, v58, sizeof(v53));
  memcpy(v54, v58, sizeof(v54));
  sub_219F45500(v53, v57, &qword_27CCDC8C0);
  sub_219F6409C(v54, &qword_27CCDC8C0);
  memcpy(&v52[7], v53, 0x180uLL);
  LOBYTE(v11) = v59[0];
  v34 = v51;
  sub_219F45500(v9, v51, &qword_27CCDC8B0);
  v35 = v34;
  v36 = v50;
  sub_219F45500(v35, v50, &qword_27CCDC8B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8C8);
  v38 = *(v37 + 48);
  *&v56[24] = v77;
  *&v56[40] = v78;
  *&v56[56] = v79[0];
  *&v56[8] = v76;
  *&v56[93] = *&v68[16];
  *&v56[109] = *&v68[32];
  v39 = v36 + v38;
  *&v55 = v33;
  *(&v55 + 1) = v32;
  *v56 = v31;
  *&v56[69] = *(v79 + 13);
  *&v56[125] = *&v68[48];
  *&v56[141] = *&v68[64];
  *&v56[77] = *v68;
  *&v56[196] = *(&v69[5] + 7);
  *&v56[181] = *&v69[4];
  *&v56[165] = *&v69[2];
  *&v56[149] = *v69;
  v40 = *&v56[64];
  *(v39 + 64) = *&v56[48];
  *(v39 + 80) = v40;
  v41 = *&v56[32];
  *(v39 + 32) = *&v56[16];
  *(v39 + 48) = v41;
  v42 = *&v56[128];
  *(v39 + 128) = *&v56[112];
  *(v39 + 144) = v42;
  v43 = *&v56[96];
  *(v39 + 96) = *&v56[80];
  *(v39 + 112) = v43;
  *(v39 + 208) = *&v56[192];
  v44 = *&v56[176];
  *(v39 + 176) = *&v56[160];
  *(v39 + 192) = v44;
  *(v39 + 160) = *&v56[144];
  v45 = *v56;
  *v39 = v55;
  *(v39 + 16) = v45;
  v46 = *(v37 + 64);
  v47 = v49;
  v57[0] = v49;
  v57[1] = 0;
  LOBYTE(v57[2]) = v11;
  memcpy(&v57[2] + 1, v52, 0x187uLL);
  memcpy((v36 + v46), v57, 0x198uLL);
  sub_219F45500(&v55, v58, &qword_27CCDB2D8);
  sub_219F45500(v57, v58, &qword_27CCDC8D0);
  sub_219F6409C(v9, &qword_27CCDC8B0);
  v58[0] = v47;
  v58[1] = 0;
  LOBYTE(v58[2]) = v11;
  memcpy(&v58[2] + 1, v52, 0x187uLL);
  sub_219F6409C(v58, &qword_27CCDC8D0);
  *v59 = v33;
  *&v59[1] = v32;
  *&v59[2] = v31;
  v61 = v77;
  v62 = v78;
  *v63 = v79[0];
  *&v63[13] = *(v79 + 13);
  v60 = v76;
  v64 = *&v68[64];
  *&v63[69] = *&v68[48];
  *&v63[53] = *&v68[32];
  *&v63[37] = *&v68[16];
  *&v63[21] = *v68;
  v65 = *v69;
  v66 = *&v69[2];
  *v67 = *&v69[4];
  *&v67[15] = *(&v69[5] + 7);
  sub_219F6409C(v59, &qword_27CCDB2D8);
  return sub_219F6409C(v51, &qword_27CCDC8B0);
}

uint64_t sub_21A05773C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8E0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v48 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8E8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v50 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v44[-v15];
  *v16 = sub_21A0E559C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8F0);
  sub_21A057AF4(a1, &v16[*(v17 + 44)]);
  v47 = a1;
  v18 = *a1;
  v19 = a1[1];
  v51 = v18;
  v52 = v19;
  sub_219F3F130();

  v20 = sub_21A0E59EC();
  v22 = v21;
  v24 = v23;
  LODWORD(v51) = sub_21A0E56DC();
  v25 = sub_21A0E597C();
  v27 = v26;
  v29 = v28;
  sub_219F63A30(v20, v22, v24 & 1);

  type metadata accessor for BalanceOfPowerView();
  sub_21A057120();
  v30 = sub_21A0E599C();
  v32 = v31;
  v45 = v33;
  v46 = v34;

  sub_219F63A30(v25, v27, v29 & 1);

  *v9 = sub_21A0E559C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8F8);
  sub_21A057EBC(v47, &v9[*(v35 + 44)]);
  v36 = v50;
  sub_219F45500(v16, v50, &qword_27CCDC8E8);
  v37 = v48;
  sub_219F45500(v9, v48, &qword_27CCDC8E0);
  v38 = v36;
  v39 = v49;
  sub_219F45500(v38, v49, &qword_27CCDC8E8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC900);
  v41 = v39 + *(v40 + 48);
  v42 = v39;
  *v41 = v30;
  *(v41 + 8) = v32;
  LOBYTE(v39) = v45 & 1;
  *(v41 + 16) = v45 & 1;
  *(v41 + 24) = v46;
  sub_219F45500(v37, v42 + *(v40 + 64), &qword_27CCDC8E0);
  sub_219F63A40(v30, v32, v39);

  sub_219F6409C(v9, &qword_27CCDC8E0);
  sub_219F6409C(v16, &qword_27CCDC8E8);
  sub_219F6409C(v37, &qword_27CCDC8E0);
  sub_219F63A30(v30, v32, v39);

  return sub_219F6409C(v50, &qword_27CCDC8E8);
}

uint64_t sub_21A057AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  MEMORY[0x28223BE20](v5, v6);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498) - 8;
  v8 = MEMORY[0x28223BE20](v37, v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - v11;
  v36 = *(a1 + *(type metadata accessor for BalanceOfPowerData(0) + 20));
  v41 = v36;
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  v13 = sub_21A0E59CC();
  v15 = v14;
  v17 = v16;
  v40 = sub_21A0E56DC();
  v18 = sub_21A0E597C();
  v20 = v19;
  v22 = v21;
  sub_219F63A30(v13, v15, v17 & 1);

  v23 = type metadata accessor for BalanceOfPowerView();
  sub_21A057160(*(a1 + *(v23 + 20)), MEMORY[0x277CE0938], MEMORY[0x277CE0938], MEMORY[0x277CE09B8]);
  v24 = sub_21A0E599C();
  v26 = v25;
  LOBYTE(v13) = v27;
  v29 = v28;

  sub_219F63A30(v18, v20, v22 & 1);

  v30 = &v12[*(v37 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53DC();
  *v30 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v26;
  v12[16] = v13 & 1;
  *(v12 + 3) = v29;
  v31 = v38;
  sub_219F45500(v12, v38, &qword_27CCDA498);
  v32 = v39;
  sub_219F45500(v31, v39, &qword_27CCDA498);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC910) + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_219F6409C(v12, &qword_27CCDA498);
  return sub_219F6409C(v31, &qword_27CCDA498);
}

uint64_t sub_21A057EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  MEMORY[0x28223BE20](v5, v6);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498) - 8;
  v8 = MEMORY[0x28223BE20](v38, v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - v11;
  v37 = *(a1 + *(type metadata accessor for BalanceOfPowerData(0) + 24));
  v42 = v37;
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  v13 = sub_21A0E59CC();
  v15 = v14;
  v17 = v16;
  v41 = sub_21A0E56DC();
  v18 = sub_21A0E597C();
  v20 = v19;
  v22 = v21;
  sub_219F63A30(v13, v15, v17 & 1);

  v23 = type metadata accessor for BalanceOfPowerView();
  sub_21A057160(*(a1 + *(v23 + 20)), MEMORY[0x277CE0938], MEMORY[0x277CE0938], MEMORY[0x277CE09B8]);
  v24 = sub_21A0E599C();
  v26 = v25;
  LOBYTE(v13) = v27;
  v29 = v28;

  sub_219F63A30(v18, v20, v22 & 1);

  v30 = &v12[*(v38 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53DC();
  *v30 = swift_getKeyPath();
  *v12 = v24;
  *(v12 + 1) = v26;
  v12[16] = v13 & 1;
  *(v12 + 3) = v29;
  v31 = v39;
  sub_219F45500(v12, v39, &qword_27CCDA498);
  v32 = v40;
  *v40 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC908);
  sub_219F45500(v31, v33 + *(v34 + 48), &qword_27CCDA498);
  sub_219F6409C(v12, &qword_27CCDA498);
  return sub_219F6409C(v31, &qword_27CCDA498);
}

uint64_t sub_21A058284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalanceOfPowerData(0);
  v5 = a1 + *(v4 + 20);
  v6 = type metadata accessor for BalanceOfPowerData.Entity(0);
  v7 = (v5 + *(v6 + 28));
  if (v7[3])
  {
    v61 = v7[3];
    v62 = v7[2];
  }

  else
  {
    v61 = v7[5];
    v62 = v7[4];
  }

  v59 = *(v5 + 16);
  v60 = *(v5 + 8);
  v57 = *(v5 + 32);
  v58 = *(v5 + 24);
  v46 = *(v5 + 40) | (*(v5 + 42) << 16);
  sub_219F79BC0(v60, v59);

  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v5 + 43) > 1u)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 92) = 62;
    v45 = 0x2000000000;
    v56 = v11;
    *(v11 + 88) = 0;
  }

  else
  {
    v8 = v7 + *(type metadata accessor for ElectionEntityTheme() + 32);
    v9 = *(v8 + 3);
    *v102 = *(v8 + 2);
    *&v102[16] = v9;
    *&v102[29] = *(v8 + 61);
    v10 = *(v8 + 1);
    v100 = *v8;
    v101 = v10;
    sub_219F72F28(&v100, v85);
    v56 = v100;
    v52 = v101;
    v53 = *(&v100 + 1);
    v50 = *v102;
    v51 = *(&v101 + 1);
    v48 = *&v102[16];
    v49 = *&v102[8];
    v47 = *&v102[24];
    v45 = *&v102[32] | (v102[36] << 32);
  }

  v12 = *(a1 + *(type metadata accessor for BalanceOfPowerView() + 20));
  v55 = sub_21A057160(v12, MEMORY[0x277CE0A48], MEMORY[0x277CE0A40], MEMORY[0x277CE09D0]);
  KeyPath = swift_getKeyPath();
  v13 = a1 + *(v4 + 24);
  v14 = (v13 + *(v6 + 28));
  if (v14[3])
  {
    v43 = v14[3];
    v44 = v14[2];
  }

  else
  {
    v43 = v14[5];
    v44 = v14[4];
  }

  v15 = *(v13 + 40) | (*(v13 + 42) << 16);
  v41 = *(v13 + 16);
  v42 = *(v13 + 8);
  v39 = *(v13 + 32);
  v40 = *(v13 + 24);
  sub_219F79BC0(v42, v41);

  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v13 + 43) > 1u)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 92) = 62;
    v20 = 0x2000000000;
    *(v19 + 88) = 0;
  }

  else
  {
    v16 = v14 + *(type metadata accessor for ElectionEntityTheme() + 32);
    v17 = *(v16 + 3);
    *v102 = *(v16 + 2);
    *&v102[16] = v17;
    *&v102[29] = *(v16 + 61);
    v18 = *(v16 + 1);
    v100 = *v16;
    v101 = v18;
    sub_219F72F28(&v100, v85);
    v35 = *(&v100 + 1);
    v19 = v100;
    v36 = v101;
    v37 = *v102;
    v4 = *&v102[24];
    v38 = *&v102[16];
    v20 = *&v102[32] | (v102[36] << 32);
  }

  v21 = sub_21A057160(v12, MEMORY[0x277CE0A48], MEMORY[0x277CE0A40], MEMORY[0x277CE09D0]);
  v22 = swift_getKeyPath();
  *&v64 = v62;
  *(&v64 + 1) = v61;
  v65 = 0u;
  memset(v66, 0, 19);
  *&v66[24] = v60;
  *&v67 = v59;
  *(&v67 + 1) = v58;
  *&v68 = v57;
  BYTE10(v68) = BYTE2(v46);
  WORD4(v68) = v46;
  *&v69 = v56;
  *(&v69 + 1) = v53;
  *&v70 = v52;
  *(&v70 + 1) = v51;
  *&v71 = v50;
  *(&v71 + 1) = v49;
  *&v72 = v48;
  *(&v72 + 1) = v47;
  BYTE4(v73) = BYTE4(v45);
  LODWORD(v73) = v45;
  *(&v73 + 1) = KeyPath;
  v74 = v55;
  v78[2] = BYTE2(v15);
  *v78 = v15;
  memset(&v78[8], 0, 35);
  *&v79 = v19;
  *(&v79 + 1) = v35;
  v80 = v36;
  v81 = v37;
  *&v82 = v38;
  *(&v82 + 1) = v4;
  *(a2 + 176) = v55;
  BYTE4(v83) = BYTE4(v20);
  LODWORD(v83) = v20;
  *(&v83 + 1) = v22;
  *&v63[183] = v21;
  *&v63[167] = v83;
  *&v63[151] = v82;
  *&v63[135] = v81;
  *&v63[55] = *v78;
  *&v63[119] = v80;
  *&v63[103] = v79;
  *&v63[87] = *&v78[32];
  *&v63[71] = *&v78[16];
  v23 = v71;
  v24 = v72;
  v25 = v73;
  v26 = v67;
  v27 = v68;
  v28 = v69;
  v29 = v70;
  v30 = v64;
  v31 = v65;
  v32 = *v66;
  v33 = *&v66[16];
  *(a2 + 192) = 1;
  *(a2 + 321) = *&v63[128];
  *(a2 + 337) = *&v63[144];
  *(a2 + 353) = *&v63[160];
  *(a2 + 257) = *&v63[64];
  *(a2 + 273) = *&v63[80];
  *(a2 + 289) = *&v63[96];
  *(a2 + 305) = *&v63[112];
  *&v77 = v40;
  *(&v77 + 1) = v39;
  *&v75 = v44;
  *(&v75 + 1) = v43;
  *&v76 = v42;
  *(&v76 + 1) = v41;
  *&v63[39] = v77;
  *&v63[23] = v76;
  *&v63[7] = v75;
  *(a2 + 128) = v23;
  *(a2 + 144) = v24;
  *(a2 + 160) = v25;
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = v28;
  *(a2 + 112) = v29;
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 184) = 0;
  *(a2 + 368) = *&v63[175];
  *(a2 + 193) = *v63;
  *(a2 + 209) = *&v63[16];
  *(a2 + 225) = *&v63[32];
  *(a2 + 241) = *&v63[48];
  v85[0] = v44;
  v85[1] = v43;
  v85[2] = v42;
  v85[3] = v41;
  v85[4] = v40;
  v85[5] = v39;
  v87 = BYTE2(v15);
  v86 = v15;
  v88 = 0u;
  v90 = v19;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  v94 = v38;
  v95 = v4;
  v97 = BYTE4(v20);
  v96 = v20;
  v98 = v22;
  v84 = v21;
  v99 = v21;
  memset(v89, 0, sizeof(v89));
  sub_219F45500(&v64, &v100, &qword_27CCDC8D8);
  sub_219F45500(&v75, &v100, &qword_27CCDC8D8);
  sub_219F6409C(v85, &qword_27CCDC8D8);
  *&v100 = v62;
  *(&v100 + 1) = v61;
  v101 = 0u;
  memset(v102, 0, 19);
  *&v102[24] = v60;
  *&v102[32] = v59;
  v103 = v58;
  v104 = v57;
  v106 = BYTE2(v46);
  v105 = v46;
  v107 = v56;
  v108 = v53;
  v109 = v52;
  v110 = v51;
  v111 = v50;
  v112 = v49;
  v113 = v48;
  v114 = v47;
  v116 = BYTE4(v45);
  v115 = v45;
  v117 = KeyPath;
  v118 = v55;
  return sub_219F6409C(&v100, &qword_27CCDC8D8);
}

uint64_t sub_21A0589BC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E566C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC8A8);
  return sub_21A0571D4(v1, a1 + *(v3 + 44));
}

uint64_t sub_21A058A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC920);
  MEMORY[0x28223BE20](v89, v4);
  v90 = (&v83 - v5);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC928);
  MEMORY[0x28223BE20](v87, v6);
  v8 = &v83 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC930);
  MEMORY[0x28223BE20](v88, v9);
  v11 = &v83 - v10;
  v12 = sub_21A0E561C();
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  MEMORY[0x28223BE20](v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC938);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v83 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v83 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v83 - v31;
  if (*(a1 + 64))
  {
    v83 = v30;
    sub_21A0E560C();
    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    *v92 = *(a1 + 72);
    *&v92[15] = *(a1 + 87);
    v85 = v11;
    v86 = a2;
    v84 = v8;
    if (v92[16])
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CDC();
    }

    else
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CBC();
    }

    sub_21A0E55DC();

    sub_21A0E55FC();
    sub_21A0E563C();
    v33 = sub_21A0E59DC();
    v35 = v34;
    v37 = v36;
    sub_21A0E586C();
    v38 = sub_21A0E596C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_219F63A30(v33, v35, v37 & 1);

    v45 = &v28[*(v83 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
    v47 = *MEMORY[0x277CE1050];
    v48 = sub_21A0E5CEC();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = swift_getKeyPath();
    *v28 = v38;
    *(v28 + 1) = v40;
    v28[16] = v42 & 1;
    *(v28 + 3) = v44;
    sub_21A0594C4(v28, v32);
    sub_219F45500(v32, v84, &qword_27CCDC938);
    swift_storeEnumTagMultiPayload();
    sub_21A05940C();
    v49 = v85;
    sub_21A0E56BC();
    sub_219F45500(v49, v90, &qword_27CCDC930);
    swift_storeEnumTagMultiPayload();
    sub_21A059388();
    sub_21A0E56BC();
    sub_219F6409C(v49, &qword_27CCDC930);
    v50 = v32;
  }

  else
  {
    if (!*(a1 + 24))
    {
      v51 = *(a1 + 8);
      *v92 = *a1;
      *&v92[8] = v51;
      sub_219F3F130();

      v52 = sub_21A0E59EC();
      v54 = v53;
      v56 = v55;
      sub_21A0E586C();
      v57 = sub_21A0E596C();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      sub_219F63A30(v52, v54, v56 & 1);

      v64 = v90;
      *v90 = v57;
      v64[1] = v59;
      *(v64 + 16) = v61 & 1;
      v64[3] = v63;
      swift_storeEnumTagMultiPayload();
      sub_21A059388();
      return sub_21A0E56BC();
    }

    v83 = v30;
    sub_21A0E560C();
    sub_21A0E55FC();
    *v92 = *(a1 + 32);
    *&v92[15] = *(a1 + 47);
    v85 = v11;
    v86 = a2;
    v84 = v8;
    if (v92[16])
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CDC();
    }

    else
    {
      sub_21A03DD38(v92, v91);
      sub_21A0E5CBC();
    }

    sub_21A0E55DC();

    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_21A0E563C();
    v66 = sub_21A0E59DC();
    v68 = v67;
    v70 = v69;
    sub_21A0E586C();
    v71 = sub_21A0E596C();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_219F63A30(v66, v68, v70 & 1);

    v78 = &v20[*(v83 + 36)];
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
    v80 = *MEMORY[0x277CE1050];
    v81 = sub_21A0E5CEC();
    (*(*(v81 - 8) + 104))(v78 + v79, v80, v81);
    *v78 = swift_getKeyPath();
    *v20 = v71;
    *(v20 + 1) = v73;
    v20[16] = v75 & 1;
    *(v20 + 3) = v77;
    sub_21A0594C4(v20, v24);
    sub_219F45500(v24, v84, &qword_27CCDC938);
    swift_storeEnumTagMultiPayload();
    sub_21A05940C();
    v82 = v85;
    sub_21A0E56BC();
    sub_219F45500(v82, v90, &qword_27CCDC930);
    swift_storeEnumTagMultiPayload();
    sub_21A059388();
    sub_21A0E56BC();
    sub_219F6409C(v82, &qword_27CCDC930);
    v50 = v24;
  }

  return sub_219F6409C(v50, &qword_27CCDC938);
}

uint64_t sub_21A059298@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v8[0] = v1[4];
  *(v8 + 11) = *(v1 + 75);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_21A0E55BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC918);
  return sub_21A058A0C(v7, a1 + *(v5 + 44));
}

unint64_t sub_21A059318()
{
  result = qword_27CCDC8A0;
  if (!qword_27CCDC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC8A0);
  }

  return result;
}

unint64_t sub_21A059388()
{
  result = qword_27CCDC940;
  if (!qword_27CCDC940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC930);
    sub_21A05940C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC940);
  }

  return result;
}

unint64_t sub_21A05940C()
{
  result = qword_27CCDC948;
  if (!qword_27CCDC948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC938);
    sub_219F3E490(&qword_27CCDA9F0, &qword_27CCD95C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC948);
  }

  return result;
}

uint64_t sub_21A0594C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21A059534(uint64_t a1)
{
  v84 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v84, v2);
  v83 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_21A0E481C();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v5);
  v81 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v86, v7);
  v85 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v89 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for ActivityAsset();
  v95 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v12);
  v87 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = &unk_21A0FCE08;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC988);
  v16 = MEMORY[0x28223BE20](v96, v15);
  v90 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v72[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v94 = &v72[-v23];
  v91 = MEMORY[0x277D84F98];
  v99 = MEMORY[0x277D84F98];
  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;
  v80 = (v4 + 32);
  v79 = (v4 + 8);
  v97 = a1;

  v29 = 0;
  v92 = a1 + 64;
  for (i = v28; ; v28 = i)
  {
    v30 = v29;
    if (!v27)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v31 = v21;
      v32 = v14;
      v29 = v30;
LABEL_11:
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v97;
      v36 = v94;
      v37 = *(v95 + 72);
      sub_21A063430(*(v97 + 48) + v37 * v34, v94, type metadata accessor for ActivityAsset);
      v38 = *(v35 + 56) + 16 * v34;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = v96;
      v42 = &v36[*(v96 + 48)];
      *v42 = v39;
      v42[8] = v40;
      v43 = v36;
      v14 = v32;
      v21 = v31;
      sub_219F4D494(v43, v31, &qword_27CCDC988);
      v44 = v31 + *(v41 + 48);
      if (*(v44 + 8) == 1)
      {
        break;
      }

      sub_21A062D08(v39, v40);
      sub_219F6409C(v31, &qword_27CCDC988);
      v30 = v29;
      v24 = v92;
      v28 = i;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v29 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v29 >= v28)
          {

            return;
          }

          v27 = *(v24 + 8 * v29);
          ++v30;
          if (v27)
          {
            v31 = v21;
            v32 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

    v45 = v37;
    v46 = *v44;
    sub_219F4D494(v31, v90, &qword_27CCDC988);
    v47 = *(v91 + 16);
    if (*(v91 + 24) <= v47)
    {
      sub_21A062D08(v39, v40);
      sub_21A062D08(v46, 1);
      sub_21A0D05B0(v47 + 1, 1);
    }

    else
    {
      sub_21A062D08(v39, v40);
      sub_21A062D08(v46, 1);
    }

    v91 = v99;
    sub_21A0E6DAC();
    v48 = v87;
    sub_21A063430(v90, v87, type metadata accessor for ActivityAsset);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v89;
      sub_21A063498(v48, v89, type metadata accessor for URLAssetConfiguration);
      MEMORY[0x21CED2490](1);
      v50 = v85;
      sub_21A063430(v49, v85, type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v83;
        sub_21A063498(v50, v83, type metadata accessor for URLAssetConfiguration.Recipe);
        MEMORY[0x21CED2490](1);
        sub_219FAB2D0(v98);
        sub_219F7CB6C(v98, *&v51[*(v84 + 20)]);
        sub_21A063014(v51, type metadata accessor for URLAssetConfiguration.Recipe);
      }

      else
      {
        v57 = v81;
        v58 = v82;
        (*v80)(v81, v50, v82);
        MEMORY[0x21CED2490](0);
        sub_21A062D20(&qword_27CCD99F8, MEMORY[0x277CC9260]);
        sub_21A0E615C();
        (*v79)(v57, v58);
      }

      sub_21A063014(v89, type metadata accessor for URLAssetConfiguration);
    }

    else
    {
      v77 = v45;
      v74 = v46;
      v53 = *v48;
      v52 = *(v48 + 1);
      v54 = v48[16];
      v55 = v48[17];
      v73 = v48[18];
      MEMORY[0x21CED2490](0);
      v75 = v54;
      MEMORY[0x21CED2490](v54);
      v76 = v53;
      v78 = v52;
      sub_21A0E626C();
      sub_21A0E6DCC();
      v46 = v74;
      if (v55 == 9)
      {
        v45 = v77;
        v56 = v73;
      }

      else
      {
        v56 = v73;
        sub_21A0E626C();

        v45 = v77;
      }

      sub_21A0E6DCC();
      if (v56 == 3)
      {
        sub_219F79CD8();
      }

      else
      {
        sub_21A0E626C();
        sub_219F79CD8();
      }
    }

    v59 = sub_21A0E6DFC();
    v60 = v91 + 64;
    v61 = -1 << *(v91 + 32);
    v62 = v59 & ~v61;
    v63 = v62 >> 6;
    if (((-1 << v62) & ~*(v91 + 64 + 8 * (v62 >> 6))) == 0)
    {
      break;
    }

    v64 = __clz(__rbit64((-1 << v62) & ~*(v60 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    v69 = v90;
    v70 = &v90[*(v96 + 48)];
    *(v60 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v71 = v91;
    sub_21A063498(v69, *(v91 + 48) + v64 * v45, type metadata accessor for ActivityAsset);
    *(*(v71 + 56) + 8 * v64) = v46;
    ++*(v71 + 16);
    sub_21A062D14(*v70, *(v70 + 8));
    v24 = v92;
  }

  v65 = 0;
  v66 = (63 - v61) >> 6;
  while (++v63 != v66 || (v65 & 1) == 0)
  {
    v67 = v63 == v66;
    if (v63 == v66)
    {
      v63 = 0;
    }

    v65 |= v67;
    v68 = *(v60 + 8 * v63);
    if (v68 != -1)
    {
      v64 = __clz(__rbit64(~v68)) + (v63 << 6);
      goto LABEL_38;
    }
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_21A059F78(uint64_t a1)
{
  v71 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  v3 = MEMORY[0x28223BE20](v71, v2);
  v70 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v69 = v63 - v6;
  v68 = sub_21A0E481C();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v67 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v73, v10);
  v72 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v76 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ActivityAsset();
  v15 = *(v77 - 8);
  v17 = MEMORY[0x28223BE20](v77, v16);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v63 - v21;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_21A0E686C();

  v85 = 0x6673736563637553;
  v86 = 0xEB000000003D6C75;
  v23 = sub_21A061EDC(a1);
  v24 = v23;
  v25 = v23[2];
  if (v25)
  {
    v26 = sub_21A061BC0(v23[2], 0, &qword_27CCDA5F8, &unk_21A0FCE10, type metadata accessor for ActivityAsset);
    v27 = sub_21A062AA4(&v81, v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v25, v24);
    sub_219F5EC40();
    if (v27 == v25)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_5:
  v63[1] = 0;
  v64 = a1;
  v28 = *(v26 + 16);
  if (v28)
  {
    v80 = MEMORY[0x277D84F90];
    sub_219FBE5A4(0, v28, 0);
    v29 = v15;
    v30 = v80;
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v63[0] = v26;
    v32 = v26 + v31;
    v66 = (v7 + 32);
    v65 = (v7 + 8);
    v74 = *(v29 + 72);
    v75 = v22;
    do
    {
      sub_21A063430(v32, v22, type metadata accessor for ActivityAsset);
      sub_21A063430(v22, v19, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v76;
        sub_21A063498(v19, v76, type metadata accessor for URLAssetConfiguration);
        v81 = 0x28204C5255;
        v82 = 0xE500000000000000;
        v34 = v33;
        v35 = v72;
        sub_21A063430(v34, v72, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v69;
          sub_21A063498(v35, v69, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_21A063430(v36, v70, type metadata accessor for URLAssetConfiguration.Recipe);
          v37 = sub_21A0E622C();
          v39 = v38;
          sub_21A063014(v36, type metadata accessor for URLAssetConfiguration.Recipe);
        }

        else
        {
          v49 = v67;
          v50 = v35;
          v51 = v68;
          (*v66)(v67, v50, v68);
          v37 = sub_21A0E46BC();
          v39 = v52;
          (*v65)(v49, v51);
        }

        MEMORY[0x21CED1980](v37, v39);

        MEMORY[0x21CED1980](41, 0xE100000000000000);
        v47 = v81;
        v48 = v82;
        sub_21A063014(v76, type metadata accessor for URLAssetConfiguration);
      }

      else
      {
        v40 = *v19;
        v41 = *(v19 + 1);
        v42 = v19[16];
        v43 = *(v19 + 17);
        v78 = 0x6F626D7953204653;
        v79 = 0xEB0000000028206CLL;
        v81 = v40;
        v82 = v41;
        v83 = v42;
        v84 = v43;
        v44 = SFSymbolConfiguration.description.getter();
        v46 = v45;
        sub_219F79CD8();
        MEMORY[0x21CED1980](v44, v46);

        MEMORY[0x21CED1980](41, 0xE100000000000000);
        v47 = v78;
        v48 = v79;
      }

      v22 = v75;
      sub_21A063014(v75, type metadata accessor for ActivityAsset);
      v80 = v30;
      v54 = *(v30 + 16);
      v53 = *(v30 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_219FBE5A4((v53 > 1), v54 + 1, 1);
        v30 = v80;
      }

      *(v30 + 16) = v54 + 1;
      v55 = v30 + 16 * v54;
      *(v55 + 32) = v47;
      *(v55 + 40) = v48;
      v32 += v74;
      --v28;
    }

    while (v28);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v56 = MEMORY[0x21CED1A80](v30, MEMORY[0x277D837D0]);
  v58 = v57;

  MEMORY[0x21CED1980](v56, v58);

  MEMORY[0x21CED1980](0x636375736E55202ELL, 0xEF3D6C7566737365);
  sub_21A059534(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  sub_21A062D20(qword_280C88B70, type metadata accessor for ActivityAsset);
  v59 = sub_21A0E60FC();
  v61 = v60;

  MEMORY[0x21CED1980](v59, v61);

  return v85;
}

uint64_t sub_21A05A730(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970);
  v3[11] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityAttributes(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v3[12] = v5;
  v3[13] = v6;
  v3[14] = v7;

  return MEMORY[0x2822009F8](sub_21A05A804, 0, 0);
}

uint64_t sub_21A05A804()
{
  v17 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[15] = __swift_project_value_buffer(v1, qword_280C88498);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, &v16);
    _os_log_impl(&dword_219F39000, v2, v3, "Will fetch activity content. Activity ID=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v0[7] = v9;
  v0[8] = v8;
  v15 = (*(v12 + 8) + **(v12 + 8));
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_21A05AA6C;

  return v15(v0 + 2, v0 + 7, v11, v12);
}

uint64_t sub_21A05AA6C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21A05B6F8;
  }

  else
  {
    v2 = sub_21A05AB80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05AB80()
{
  v21 = v0;
  v1 = v0[17];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v3 = v1;
    v4 = sub_21A0E514C();
    v5 = sub_21A0E669C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_219F50144(v7, v6, &v20);
      *(v8 + 12) = 2114;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v8, 0x16u);
      sub_219F6409C(v9, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CED2D30](v10, -1, -1);
      MEMORY[0x21CED2D30](v8, -1, -1);
    }

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v19 = (*(v16 + 8) + **(v16 + 8));
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21A05AE70;
    v18 = v0[12];

    return v19(v18, v15, v16);
  }
}

uint64_t sub_21A05AE70()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21A05B8C8;
  }

  else
  {
    v2 = sub_21A05AF84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05AF84()
{
  v22 = v0;
  v1 = v0[19];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    sub_21A063014(v0[12], type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v3 = v1;
    v4 = sub_21A0E514C();
    v5 = sub_21A0E669C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_219F50144(v7, v6, &v21);
      *(v8 + 12) = 2114;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v8, 0x16u);
      sub_219F6409C(v9, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CED2D30](v10, -1, -1);
      MEMORY[0x21CED2D30](v8, -1, -1);
    }

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v20 = (*(v16 + 16) + **(v16 + 16));
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_21A05B290;
    v18 = v0[11];
    v19 = v0[12];

    return v20(v18, v19, v15, v16);
  }
}

uint64_t sub_21A05B290()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_21A05BAA0;
  }

  else
  {
    v2 = sub_21A05B3A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05B3A4()
{
  v24 = v0;
  v1 = v0[21];
  sub_21A0E65AC();
  if (v1)
  {
    v2 = v1;
    v3 = v0[12];
    sub_219F6409C(v0[11], &qword_27CCDC970);
    sub_21A063014(v3, type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v4 = v1;
    v5 = sub_21A0E514C();
    v6 = sub_21A0E669C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[13];
      v7 = v0[14];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_219F50144(v8, v7, v23);
      *(v9 + 12) = 2114;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_219F39000, v5, v6, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v9, 0x16u);
      sub_219F6409C(v10, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CED2D30](v11, -1, -1);
      MEMORY[0x21CED2D30](v9, -1, -1);
    }

    swift_willThrow();

    v14 = v0[1];
  }

  else
  {

    v15 = sub_21A0E514C();
    v16 = sub_21A0E66BC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[12];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_219F50144(v18, v17, v23);
      _os_log_impl(&dword_219F39000, v15, v16, "Did fetch activity content. Activity ID=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CED2D30](v21, -1, -1);
      MEMORY[0x21CED2D30](v20, -1, -1);
    }

    else
    {
      v19 = v0[12];
    }

    sub_21A063014(v19, type metadata accessor for NewsLiveActivityAttributes);
    sub_219F4D494(v0[11], v0[9], &qword_27CCDC970);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_21A05B6F8()
{
  v15 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05B8C8()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[19];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05BAA0()
{
  v15 = v0;
  sub_21A063014(v0[12], type metadata accessor for NewsLiveActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[21];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_219F50144(v6, v5, &v14);
    *(v7 + 12) = 2114;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity content. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A05BC94(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  type metadata accessor for NewsLiveActivityAttributes(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A05BD34, 0, 0);
}

uint64_t sub_21A05BD34()
{
  v23 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = sub_21A0E516C();
  v0[14] = __swift_project_value_buffer(v3, qword_280C88498);
  sub_21A063430(v2, v1, type metadata accessor for NewsLiveActivityAttributes);
  v4 = sub_21A0E514C();
  v5 = sub_21A0E66BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = *v7;
    v11 = v7[1];

    sub_21A063014(v7, type metadata accessor for NewsLiveActivityAttributes);
    v12 = sub_219F50144(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v4, v5, "Fetching activity assets independently of attributes. Activity ID=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {

    sub_21A063014(v7, type metadata accessor for NewsLiveActivityAttributes);
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v13[3];
  v16 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v15);
  v17 = v14[1];
  v0[7] = *v14;
  v0[8] = v17;
  v18 = *(v16 + 8);

  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_21A05C014;

  return (v21)(v0 + 2, v0 + 7, v15, v16);
}

uint64_t sub_21A05C014()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21A05C588;
  }

  else
  {
    v2 = sub_21A05C138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05C138()
{
  v22 = v0;
  v1 = v0[16];
  sub_21A0E65AC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    sub_21A063430(v0[10], v0[12], type metadata accessor for NewsLiveActivityAttributes);
    v2 = v1;
    v3 = sub_21A0E514C();
    v4 = sub_21A0E669C();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v7 = 136446466;
      v10 = *v6;
      v11 = v6[1];

      sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
      v12 = sub_219F50144(v10, v11, &v21);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch assets for activity. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
      sub_219F6409C(v8, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CED2D30](v9, -1, -1);
      MEMORY[0x21CED2D30](v7, -1, -1);
    }

    else
    {

      sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
    }

    v19 = sub_21A07B5DC(MEMORY[0x277D84F90]);

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_21A05C410;
    v16 = v0[10];
    v17 = v0[9];

    return sub_21A05C7CC(v17, v16, (v0 + 2));
  }
}

uint64_t sub_21A05C410(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_21A05C510, 0, 0);
}

uint64_t sub_21A05C510()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21A05C588()
{
  v19 = v0;
  v1 = v0[16];
  sub_21A063430(v0[10], v0[12], type metadata accessor for NewsLiveActivityAttributes);
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    v10 = *v6;
    v11 = v6[1];

    sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
    v12 = sub_219F50144(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch assets for activity. Activity ID=%{public}s, Error=%{public}@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    sub_21A063014(v6, type metadata accessor for NewsLiveActivityAttributes);
  }

  v15 = sub_21A07B5DC(MEMORY[0x277D84F90]);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_21A05C7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_21A05C7F0, 0, 0);
}

uint64_t sub_21A05C7F0()
{
  v21 = v0;
  v1 = *(v0 + 32);
  v2 = *v1;
  *(v0 + 56) = *v1;
  v3 = v1[1];
  *(v0 + 64) = v3;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  *(v0 + 72) = __swift_project_value_buffer(v4, qword_280C88498);

  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 24);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134349570;
    *(v9 + 4) = *(v8 + 16);

    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_219F50144(v2, v3, &v20);
    *(v9 + 22) = 2082;
    type metadata accessor for ActivityAsset();
    sub_21A062D20(qword_280C88B70, type metadata accessor for ActivityAsset);
    v11 = sub_21A0E65EC();
    v13 = sub_219F50144(v11, v12, &v20);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_219F39000, v5, v6, "Requested to download %{public}ld asset(s). Activity ID=%{public}s, Assets=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  v17 = *(v0 + 40);
  *(v16 + 16) = v14;
  *(v16 + 24) = v2;
  *(v16 + 32) = v3;
  *(v16 + 40) = v17;
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_21A05CAF8;
  v23 = &type metadata for ActivityAssetDownloadResult;

  return MEMORY[0x282200600](v0 + 16, v15);
}

uint64_t sub_21A05CAF8()
{

  return MEMORY[0x2822009F8](sub_21A05CC10, 0, 0);
}

uint64_t sub_21A05CC10()
{
  v19 = v0;
  v1 = v0[2];

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 134349570;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2082;
    v10 = sub_219F50144(v6, v5, &v18);

    *(v8 + 14) = v10;
    *(v8 + 22) = 2082;

    v12 = sub_21A059F78(v11);
    v14 = v13;

    v15 = sub_219F50144(v12, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_219F39000, v2, v3, "Finished downloading %{public}ld asset(s). Activity ID=%{public}s, Result=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(v1);
}

uint64_t sub_21A05CDFC(uint64_t a1, uint64_t *a2)
{
  v3[9] = a1;
  v3[10] = v2;
  v3[11] = type metadata accessor for NewsLiveActivityContent(0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_21A0E495C();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for NewsLiveActivityAttributes(0);
  v3[22] = swift_task_alloc();
  v6 = sub_21A0E498C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[30] = v7;
  v3[31] = v8;
  v3[32] = v9;

  return MEMORY[0x2822009F8](sub_21A05D054, 0, 0);
}

uint64_t sub_21A05D054()
{
  v33 = v0;
  sub_21A0E497C();
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[23];
  v4 = v0[24];
  v5 = sub_21A0E516C();
  v0[33] = __swift_project_value_buffer(v5, qword_280C88498);
  v6 = *(v4 + 16);
  v0[34] = v6;
  v0[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);

  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[31];
    v29 = v0[32];
    v9 = v0[29];
    v11 = v0[23];
    v10 = v0[24];
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v12 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v13 = sub_21A0E6BFC();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_219F50144(v13, v15, &v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_219F50144(v28, v29, &v32);
    _os_log_impl(&dword_219F39000, v7, v8, "Fetching activity definition. ID=%{public}s, Activity ID=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v30, -1, -1);
    MEMORY[0x21CED2D30](v12, -1, -1);
  }

  else
  {
    v18 = v0[29];
    v19 = v0[23];
    v20 = v0[24];

    v16 = *(v20 + 8);
    v16(v18, v19);
  }

  v0[36] = v16;
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[10];
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v0[7] = v22;
  v0[8] = v21;
  v31 = (*(v25 + 8) + **(v25 + 8));
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_21A05D3CC;

  return v31(v0 + 2, v0 + 7, v24, v25);
}

uint64_t sub_21A05D3CC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_21A05EC70;
  }

  else
  {
    v2 = sub_21A05D4E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05D4E0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_21A05D60C;
  v4 = v0[22];

  return v6(v4, v1, v2);
}

uint64_t sub_21A05D60C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_21A05EFAC;
  }

  else
  {
    v2 = sub_21A05D720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05D720()
{
  v48 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(*(v0 + 168) + 32);
  sub_219F45500(v1 + v5, v4, &qword_27CCD97F0);
  v6 = *(v3 + 48);
  if (v6(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 120);
LABEL_5:
    sub_219F6409C(v7, &qword_27CCD97F0);
LABEL_6:
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    v45 = (*(v13 + 16) + **(v13 + 16));
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_21A05DCF0;
    v15 = *(v0 + 176);
    v16 = *(v0 + 104);

    return v45(v16, v15, v12, v13);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  v10 = *(*(v0 + 136) + 32);
  v10(*(v0 + 160), *(v0 + 120), v8);
  sub_219F45500(v1 + v5, v9, &qword_27CCD97F0);
  if (v6(v9, 1, v8) == 1)
  {
    v11 = *(v0 + 112);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v7 = v11;
    goto LABEL_5;
  }

  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  v20 = *(v0 + 128);
  v21 = *(v0 + 136);
  v10(v19, *(v0 + 112), v20);
  sub_21A0E493C();
  v22 = sub_21A0E48FC();
  v23 = *(v21 + 8);
  v23(v18, v20);
  v23(v19, v20);
  if ((v22 & 1) == 0)
  {
    v23(*(v0 + 160), *(v0 + 128));
    goto LABEL_6;
  }

  (*(v0 + 272))(*(v0 + 224), *(v0 + 240), *(v0 + 184));
  v24 = sub_21A0E514C();
  v25 = sub_21A0E66BC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 288);
  v28 = *(v0 + 240);
  v29 = *(v0 + 224);
  v30 = *(v0 + 184);
  if (v26)
  {
    v46 = *(v0 + 288);
    v31 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v31 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v43 = v28;
    v32 = sub_21A0E6BFC();
    v42 = v25;
    v34 = v33;
    v46(v29, v30);
    v35 = sub_219F50144(v32, v34, &v47);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_219F39000, v24, v42, "Activity definition represents scheduled live activity. Skipping download of content and assets. ID=%{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x21CED2D30](v44, -1, -1);
    MEMORY[0x21CED2D30](v31, -1, -1);

    v46(v43, v30);
  }

  else
  {

    v27(v29, v30);
    v27(v28, v30);
  }

  v36 = *(v0 + 176);
  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  v39 = *(v0 + 72);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30) + 48);
  sub_21A063498(v36, v39, type metadata accessor for NewsLiveActivityAttributes);
  v10(v39 + v40, v37, v38);
  type metadata accessor for ActivityDownloadResult();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_21A05DCF0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_21A05F2F0;
  }

  else
  {
    v2 = sub_21A05DE04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A05DE04()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  sub_21A063430(*(v0 + 104), v1, type metadata accessor for NewsLiveActivityContent);
  v3 = *(v1 + *(v2 + 32));
  if (v3 == 2)
  {
    goto LABEL_2;
  }

  if (v3)
  {
    swift_bridgeObjectRelease_n();
LABEL_8:
    v21 = *(v0 + 176);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_21A062D20(&qword_27CCD9E38, type metadata accessor for LiveActivitySubscriptionError);
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_21A063014(v23, type metadata accessor for NewsLiveActivityContent);
    sub_219F6409C(v22, &qword_27CCDC970);
    sub_21A063014(v21, type metadata accessor for NewsLiveActivityAttributes);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
    v25 = v24;
    v26 = sub_21A0E514C();
    v27 = sub_21A0E669C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 288);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    if (v28)
    {
      v65 = v27;
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72[0] = v68;
      *v32 = 136446466;
      sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
      v33 = sub_21A0E6BFC();
      v35 = v34;
      v29(v30, v31);
      v36 = sub_219F50144(v33, v35, v72);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2114;
      v37 = v24;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v38;
      *v64 = v38;
      _os_log_impl(&dword_219F39000, v26, v65, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v32, 0x16u);
      sub_219F6409C(v64, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x21CED2D30](v68, -1, -1);
      MEMORY[0x21CED2D30](v32, -1, -1);
    }

    else
    {

      v29(v30, v31);
    }

    v56 = *(v0 + 288);
    v57 = *(v0 + 240);
    v58 = *(v0 + 184);
    swift_willThrow();
    v56(v57, v58);

    v59 = *(v0 + 8);
    goto LABEL_20;
  }

  v20 = sub_21A0E6C5C();

  if (v20)
  {
    goto LABEL_8;
  }

LABEL_2:
  v4 = *(v0 + 80);
  v5 = *(v4 + 80);
  v6 = *(v4 + 81);
  v7 = *(v4 + 88);
  LOBYTE(v72[0]) = v5;
  BYTE1(v72[0]) = v6;
  v72[1] = v7;
  v8 = sub_21A040858(v72);
  *(v0 + 344) = v8;
  if (*(v8 + 16))
  {
    (*(v0 + 272))(*(v0 + 216), *(v0 + 240), *(v0 + 184));
    v9 = sub_21A0E514C();
    v10 = sub_21A0E66BC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 184);
    if (v11)
    {
      v67 = *(v0 + 288);
      v15 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72[0] = v70;
      *v15 = 134349314;
      *(v15 + 4) = *(v8 + 16);
      *(v15 + 12) = 2082;
      sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
      v16 = sub_21A0E6BFC();
      v18 = v17;
      v67(v13, v14);
      v19 = sub_219F50144(v16, v18, v72);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_219F39000, v9, v10, "Activity definition contains %{public}ld asset(s) to fetch. Scheduling tasks. ID=%{public}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x21CED2D30](v70, -1, -1);
      MEMORY[0x21CED2D30](v15, -1, -1);
    }

    else
    {

      v12(v13, v14);
    }

    v53 = swift_task_alloc();
    *(v0 + 352) = v53;
    *v53 = v0;
    v53[1] = sub_21A05E7D8;
    v54 = *(v0 + 176);

    return sub_21A05C7CC(v8, v54, v0 + 16);
  }

  (*(v0 + 272))(*(v0 + 208), *(v0 + 240), *(v0 + 184));
  v39 = sub_21A0E514C();
  v40 = sub_21A0E66BC();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 288);
  v43 = *(v0 + 240);
  v44 = *(v0 + 208);
  v45 = *(v0 + 184);
  v46 = *(v0 + 104);
  if (v41)
  {
    v71 = *(v0 + 288);
    v47 = swift_slowAlloc();
    v69 = v43;
    v48 = swift_slowAlloc();
    v72[0] = v48;
    *v47 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v66 = v46;
    v49 = sub_21A0E6BFC();
    v51 = v50;
    v71(v44, v45);
    v52 = sub_219F50144(v49, v51, v72);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_219F39000, v39, v40, "Finished fetching activity definition. ID=%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x21CED2D30](v48, -1, -1);
    MEMORY[0x21CED2D30](v47, -1, -1);

    sub_219F6409C(v66, &qword_27CCDC970);
    v71(v69, v45);
  }

  else
  {

    v42(v44, v45);
    sub_219F6409C(v46, &qword_27CCDC970);
    v42(v43, v45);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 96);
  v62 = *(v0 + 72);
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
  sub_21A063498(v60, v62, type metadata accessor for NewsLiveActivityAttributes);
  sub_21A063498(v61, v62 + v63, type metadata accessor for NewsLiveActivityContent);
  type metadata accessor for ActivityDownloadResult();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v59 = *(v0 + 8);
LABEL_20:

  return v59();
}

uint64_t sub_21A05E7D8()
{

  return MEMORY[0x2822009F8](sub_21A05E8FC, 0, 0);
}

uint64_t sub_21A05E8FC()
{
  v25 = v0;
  (*(v0 + 272))(*(v0 + 208), *(v0 + 240), *(v0 + 184));
  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 104);
  if (v3)
  {
    v23 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v22 = v5;
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v21 = v8;
    v11 = sub_21A0E6BFC();
    v13 = v12;
    v23(v6, v7);
    v14 = sub_219F50144(v11, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_219F39000, v1, v2, "Finished fetching activity definition. ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);

    sub_219F6409C(v21, &qword_27CCDC970);
    v23(v22, v7);
  }

  else
  {

    v4(v6, v7);
    sub_219F6409C(v8, &qword_27CCDC970);
    v4(v5, v7);
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 96);
  v17 = *(v0 + 72);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
  sub_21A063498(v15, v17, type metadata accessor for NewsLiveActivityAttributes);
  sub_21A063498(v16, v17 + v18, type metadata accessor for NewsLiveActivityContent);
  type metadata accessor for ActivityDownloadResult();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05EC70()
{
  v25 = v0;
  v1 = *(v0 + 304);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05EFAC()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 320);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05F2F0()
{
  v25 = v0;
  sub_21A063014(*(v0 + 176), type metadata accessor for NewsLiveActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 336);
  (*(v0 + 272))(*(v0 + 200), *(v0 + 240), *(v0 + 184));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  if (v5)
  {
    v22 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136446466;
    sub_21A062D20(&qword_27CCDC978, MEMORY[0x277CC95F0]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v6(v7, v8);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v21 = v15;
    _os_log_impl(&dword_219F39000, v3, v22, "Failed to fetch activity definition. ID=%{public}s, Error=%{public}@", v9, 0x16u);
    sub_219F6409C(v21, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CED2D30](v23, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 184);
  swift_willThrow();
  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A05F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980);
  v7[34] = v8;
  v7[35] = *(v8 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = type metadata accessor for URLAssetConfiguration.Format(0);
  v7[42] = swift_task_alloc();
  v9 = sub_21A0E481C();
  v7[43] = v9;
  v10 = *(v9 - 8);
  v7[44] = v10;
  v7[45] = *(v10 + 64);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC998);
  v7[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9A0);
  v7[49] = v11;
  v7[50] = *(v11 - 8);
  v7[51] = swift_task_alloc();
  type metadata accessor for URLAssetConfiguration(0);
  v7[52] = swift_task_alloc();
  v12 = type metadata accessor for ActivityAsset();
  v7[53] = v12;
  v13 = *(v12 - 8);
  v7[54] = v13;
  v7[55] = *(v13 + 64);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A05F984, 0, 0);
}

uint64_t sub_21A05F984()
{
  v92 = v0;
  v90 = *(v0 + 432);
  v1 = *(v0 + 232);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 232) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v72 = *(v0 + 440) + 7;
  v73 = *(v0 + 352);
  v71 = *(v0 + 360) + 7;
  v89 = *(v0 + 232);

  v13 = 0;
  v87 = v3;
  v88 = v8;
  if (v7)
  {
LABEL_11:
    while (1)
    {
      v17 = *(v0 + 472);
      v16 = *(v0 + 480);
      v18 = *(v0 + 464);
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_21A063430(*(v89 + 48) + *(v90 + 72) * (v19 | (v13 << 6)), v16, type metadata accessor for ActivityAsset);
      sub_21A063498(v16, v17, type metadata accessor for ActivityAsset);
      sub_21A063430(v17, v18, type metadata accessor for ActivityAsset);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v21 = *(v0 + 464);
      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v22 = *(v0 + 416);
      v23 = *(v0 + 336);
      sub_21A063498(v21, v22, type metadata accessor for URLAssetConfiguration);
      sub_21A063430(v22, v23, type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = *(v0 + 336);
        sub_21A063014(*(v0 + 416), type metadata accessor for URLAssetConfiguration);
        v25 = type metadata accessor for URLAssetConfiguration.Format;
        v21 = v24;
LABEL_15:
        sub_21A063014(v21, v25);
        if (qword_280C88490 != -1)
        {
          swift_once();
        }

        v26 = *(v0 + 472);
        v27 = *(v0 + 448);
        v28 = sub_21A0E516C();
        __swift_project_value_buffer(v28, qword_280C88498);
        sub_21A063430(v26, v27, type metadata accessor for ActivityAsset);

        v29 = sub_21A0E514C();
        v30 = sub_21A0E66BC();

        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 472);
        v33 = *(v0 + 448);
        if (v31)
        {
          v35 = *(v0 + 240);
          v34 = *(v0 + 248);
          v85 = *(v0 + 472);
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v91[0] = v37;
          *v36 = 136446466;
          *(v36 + 4) = sub_219F50144(v35, v34, v91);
          *(v36 + 12) = 2082;
          v38 = ActivityAsset.description.getter();
          v40 = v39;
          sub_21A063014(v33, type metadata accessor for ActivityAsset);
          v41 = sub_219F50144(v38, v40, v91);
          v3 = v87;

          *(v36 + 14) = v41;
          _os_log_impl(&dword_219F39000, v29, v30, "Skipping download of asset as it has no remote configuration. Activity ID=%{public}s, Asset=%{public}s", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CED2D30](v37, -1, -1);
          MEMORY[0x21CED2D30](v36, -1, -1);

          v14 = v85;
        }

        else
        {

          sub_21A063014(v33, type metadata accessor for ActivityAsset);
          v14 = v32;
        }

        v9 = sub_21A063014(v14, type metadata accessor for ActivityAsset);
        v8 = v88;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v42 = *(v0 + 456);
        v75 = *(v0 + 472);
        v43 = *(v0 + 368);
        v44 = *(v0 + 376);
        v77 = v43;
        v45 = *(v0 + 344);
        v46 = *(v0 + 320);
        v82 = v46;
        v83 = *(v0 + 264);
        v86 = *(v0 + 312);
        v74 = *(v0 + 256);
        v79 = *(v0 + 240);
        v80 = *(v0 + 248);
        v81 = *(v73 + 32);
        v76 = v45;
        v81(v44, *(v0 + 336), v45);
        v47 = sub_21A0E652C();
        v78 = *(v47 - 8);
        (*(v78 + 56))(v46, 1, 1, v47);
        sub_21A063430(v75, v42, type metadata accessor for ActivityAsset);
        sub_219F3FDF4(v74, v0 + 112);
        (*(v73 + 16))(v43, v44, v45);
        sub_21A062D68(v83, v0 + 16);
        v48 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v49 = (v72 + v48) & 0xFFFFFFFFFFFFFFF8;
        v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
        v51 = (*(v73 + 80) + v50 + 40) & ~*(v73 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        sub_21A063498(v42, v52 + v48, type metadata accessor for ActivityAsset);
        v53 = (v52 + v49);
        *v53 = v79;
        v53[1] = v80;
        sub_219F3EBE0((v0 + 112), v52 + v50);
        v81(v52 + v51, v77, v76);
        v54 = (v52 + ((v71 + v51) & 0xFFFFFFFFFFFFFFF8));
        v55 = *(v0 + 64);
        v54[2] = *(v0 + 48);
        v54[3] = v55;
        v56 = *(v0 + 96);
        v54[4] = *(v0 + 80);
        v54[5] = v56;
        v57 = *(v0 + 32);
        *v54 = *(v0 + 16);
        v54[1] = v57;
        sub_219F45500(v82, v86, &qword_27CCDA0D0);
        LODWORD(v49) = (*(v78 + 48))(v86, 1, v47);

        v58 = *(v0 + 312);
        if (v49 == 1)
        {
          sub_219F6409C(*(v0 + 312), &qword_27CCDA0D0);
        }

        else
        {
          sub_21A0E651C();
          (*(v78 + 8))(v58, v47);
        }

        if (*(v52 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v59 = sub_21A0E647C();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = **(v0 + 224);
        v63 = swift_allocObject();
        *(v63 + 16) = &unk_21A0FCE48;
        *(v63 + 24) = v52;

        if (v61 | v59)
        {
          v64 = v0 + 152;
          *(v0 + 152) = 0;
          *(v0 + 160) = 0;
          *(v0 + 168) = v59;
          *(v0 + 176) = v61;
        }

        else
        {
          v64 = 0;
        }

        v84 = *(v0 + 472);
        v65 = *(v0 + 416);
        v66 = *(v0 + 376);
        v67 = *(v0 + 344);
        v68 = *(v0 + 320);
        *(v0 + 184) = 1;
        *(v0 + 192) = v64;
        *(v0 + 200) = v62;
        swift_task_create();

        sub_219F6409C(v68, &qword_27CCDA0D0);
        (*(v73 + 8))(v66, v67);
        sub_21A063014(v65, type metadata accessor for URLAssetConfiguration);
        v9 = sub_21A063014(v84, type metadata accessor for ActivityAsset);
        v3 = v87;
        v8 = v88;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    v25 = type metadata accessor for ActivityAsset;
    goto LABEL_15;
  }

  while (1)
  {
LABEL_7:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  sub_21A0E64BC();
  *(v0 + 488) = MEMORY[0x277D84F98];
  v69 = swift_task_alloc();
  *(v0 + 496) = v69;
  *v69 = v0;
  v69[1] = sub_21A060270;
  v9 = *(v0 + 384);
  v12 = *(v0 + 392);
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822002E8](v9, v10, v11, v12);
}

uint64_t sub_21A060270()
{

  return MEMORY[0x2822009F8](sub_21A06036C, 0, 0);
}

uint64_t sub_21A06036C()
{
  v1 = v0[48];
  v2 = v0[34];
  v3 = (*(v0[35] + 48))(v1, 1, v2);
  v4 = v0[61];
  if (v3 == 1)
  {
    v5 = v0[27];
    (*(v0[50] + 8))(v0[51], v0[49]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  v11 = *(v2 + 48);
  v12 = *(v1 + v11);
  v13 = *(v1 + v11 + 8);
  v14 = v8 + v11;
  sub_21A063498(v1, v8, type metadata accessor for ActivityAsset);
  *v14 = v12;
  *(v14 + 8) = v13;
  v15 = &qword_27CCDC980;
  sub_219F45500(v8, v9, &qword_27CCDC980);
  sub_21A062D14(*(v9 + *(v2 + 48)), *(v9 + *(v2 + 48) + 8));
  sub_219F45500(v8, v10, &qword_27CCDC980);
  v16 = v10 + *(v2 + 48);
  v17 = *v16;
  v18 = *(v16 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[26] = v4;
  v20 = sub_219F9FF14(v9);
  v22 = *(v4 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v15) = v21;
  if (*(v0[61] + 24) >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v28 = v0[26];
      if (v15)
      {
LABEL_13:
        v29 = v0[38];
        v30 = v28[7] + 16 * v20;
        v31 = *v30;
        v32 = *(v30 + 8);
        *v30 = v17;
        *(v30 + 8) = v18;
        sub_21A062D14(v31, v32);
        sub_219F6409C(v29, &qword_27CCDC980);
        goto LABEL_18;
      }

LABEL_16:
      v34 = v0[54];
      v35 = v0[37];
      v36 = v0[38];
      v28[(v20 >> 6) + 8] |= 1 << v20;
      v37 = v20;
      sub_21A063430(v35, v28[6] + *(v34 + 72) * v20, type metadata accessor for ActivityAsset);
      v38 = v28[7] + 16 * v37;
      *v38 = v17;
      *(v38 + 8) = v18;
      v39 = sub_219F6409C(v36, &qword_27CCDC980);
      v43 = v28[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        __break(1u);
        return MEMORY[0x2822002E8](v39, v40, v41, v42);
      }

      v28[2] = v44;
LABEL_18:
      v45 = v0[36];
      sub_21A063014(v0[37], type metadata accessor for ActivityAsset);
      sub_21A063014(v45, type metadata accessor for ActivityAsset);
      v0[61] = v28;
      v46 = swift_task_alloc();
      v0[62] = v46;
      *v46 = v0;
      v46[1] = sub_21A060270;
      v39 = v0[48];
      v42 = v0[49];
      v40 = 0;
      v41 = 0;

      return MEMORY[0x2822002E8](v39, v40, v41, v42);
    }

LABEL_15:
    v33 = v20;
    sub_21A0D56C4();
    v20 = v33;
    v28 = v0[26];
    if (v15)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v26 = v0[37];
  sub_21A0D33E0(v25, isUniquelyReferenced_nonNull_native);
  v20 = sub_219F9FF14(v26);
  if ((v15 & 1) == (v27 & 1))
  {
    goto LABEL_12;
  }

  return sub_21A0E6D0C();
}

uint64_t sub_21A0607E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v11;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v8[9] = type metadata accessor for RemoteAssetKey();
  v8[10] = swift_task_alloc();
  type metadata accessor for ActivityAsset();
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0608E4, 0, 0);
}

uint64_t sub_21A0608E4()
{
  v24 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[3];
  v3 = sub_21A0E516C();
  v0[16] = __swift_project_value_buffer(v3, qword_280C88498);
  sub_21A063430(v2, v1, type metadata accessor for ActivityAsset);

  v4 = sub_21A0E514C();
  v5 = sub_21A0E66BC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    v12 = ActivityAsset.description.getter();
    v14 = v13;
    sub_21A063014(v7, type metadata accessor for ActivityAsset);
    v15 = sub_219F50144(v12, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_219F50144(v9, v8, &v23);
    _os_log_impl(&dword_219F39000, v4, v5, "About to load activity asset: %{public}s. Activity ID=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  else
  {

    sub_21A063014(v7, type metadata accessor for ActivityAsset);
  }

  v16 = v0[6];
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v22 = (*(v18 + 24) + **(v18 + 24));
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_21A060BF4;
  v20 = v0[7];

  return v22(v20, v17, v18);
}

uint64_t sub_21A060BF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {
    v5 = sub_21A061580;
  }

  else
  {
    v5 = sub_21A060D0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A060D0C()
{
  v42 = v0;
  sub_21A063430(v0[3], v0[14], type metadata accessor for ActivityAsset);

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136446466;
    v9 = ActivityAsset.description.getter();
    v11 = v10;
    sub_21A063014(v4, type metadata accessor for ActivityAsset);
    v12 = sub_219F50144(v9, v11, &v41);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_219F50144(v6, v5, &v41);
    _os_log_impl(&dword_219F39000, v1, v2, "Fetched activity asset: %{public}s. Activity ID=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    sub_21A063014(v4, type metadata accessor for ActivityAsset);
  }

  sub_21A063430(v0[3], v0[13], type metadata accessor for ActivityAsset);

  v13 = sub_21A0E514C();
  v14 = sub_21A0E66BC();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[13];
  if (v15)
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136446466;
    v21 = ActivityAsset.description.getter();
    v23 = v22;
    sub_21A063014(v16, type metadata accessor for ActivityAsset);
    v24 = sub_219F50144(v21, v23, &v41);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_219F50144(v18, v17, &v41);
    _os_log_impl(&dword_219F39000, v13, v14, "Requesting store persist asset: %{public}s. Activity ID=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v20, -1, -1);
    MEMORY[0x21CED2D30](v19, -1, -1);
  }

  else
  {

    sub_21A063014(v16, type metadata accessor for ActivityAsset);
  }

  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];
  v30 = *(v0[9] + 20);
  v31 = sub_21A0E481C();
  (*(*(v31 - 8) + 16))(v25 + v30, v26, v31);
  *v25 = v29;
  v25[1] = v28;
  v32 = v27[8];
  v33 = v27[9];
  __swift_project_boxed_opaque_existential_1(v27 + 5, v32);
  v34 = *(v33 + 24);

  v40 = (v34 + *v34);
  v35 = swift_task_alloc();
  v0[21] = v35;
  *v35 = v0;
  v35[1] = sub_21A0611A0;
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[10];

  return v40(v37, v36, v38, v32, v33);
}