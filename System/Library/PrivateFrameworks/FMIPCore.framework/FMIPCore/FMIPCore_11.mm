unint64_t sub_24A770D64()
{
  result = qword_27EF5E2F0;
  if (!qword_27EF5E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E2F0);
  }

  return result;
}

unint64_t sub_24A770DDC()
{
  result = qword_27EF5E310;
  if (!qword_27EF5E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E310);
  }

  return result;
}

unint64_t sub_24A770E34()
{
  result = qword_27EF5E318;
  if (!qword_27EF5E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E318);
  }

  return result;
}

unint64_t sub_24A770E8C()
{
  result = qword_27EF5E320;
  if (!qword_27EF5E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E320);
  }

  return result;
}

unint64_t sub_24A770EE4()
{
  result = qword_27EF5E328;
  if (!qword_27EF5E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E328);
  }

  return result;
}

uint64_t sub_24A770FE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMIPInitClientResponse();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = sub_24A7710A0(v3);
LABEL_5:

    return MEMORY[0x2821FE918](v4, a2, 0, 0, 0);
  }

  type metadata accessor for FMIPRefreshClientResponse();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = sub_24A771088(v5);
    goto LABEL_5;
  }
}

uint64_t sub_24A7710B8(uint64_t *a1, void (*a2)(void))
{
  v4 = v2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v30[0] = v10;
    *v9 = 136315138;
    v11 = *a1;
    v12 = sub_24A82DDB4();
    v14 = sub_24A68761C(v12, v13, v30);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPDemoDataInjector: Injecting demo content into %s", v9, 0xCu);
    sub_24A6876E8(v10);
    MEMORY[0x24C21E1D0](v10, -1, -1);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  if (a1[7])
  {
    v15 = a1[7];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_24A771344(v15);

  v17 = a1[2];
  v18 = a1[3];
  if (v18)
  {
    v19 = *(v18 + 64);
    v30[2] = *(v18 + 48);
    v20 = *(v18 + 80);
    v30[3] = v19;
    v30[4] = v20;
    v31 = *(v18 + 96);
    v21 = *(v18 + 32);
    v30[0] = *(v18 + 16);
    v30[1] = v21;
    v22 = *(*(v4 + 16) + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v23 = swift_allocObject();
    memmove((v23 + 16), (v18 + 16), 0x58uLL);
    *(v23 + 104) = v22;
    sub_24A6EF948(v30, v29);
  }

  else
  {
    v23 = 0;
  }

  v24 = a1[4];
  v25 = *(a1 + 40);
  v26 = a1[6];
  a2(0);
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = v26;
  *(v27 + 56) = v16;

  return v27;
}

uint64_t sub_24A771344(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for FMIPDevice();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v41);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_24A82CA34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 16);
  sub_24A82CA24();
  v42 = v22;
  sub_24A7D0980(v21);
  (*(v18 + 8))(v21, v17);
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    while (1)
    {
      sub_24A6FE328(v24, v9);
      if ((v9[217] & 4) != 0)
      {
        break;
      }

      sub_24A6FE094(v9);
      v24 += v25;
      if (!--v23)
      {
        goto LABEL_5;
      }
    }

    sub_24A6CAF68(v9, v16);
    v26 = 0;
  }

  else
  {
LABEL_5:
    v26 = 1;
  }

  v27 = v41;
  (*(v4 + 56))(v16, v26, 1, v41);
  v28 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  swift_beginAccess();
  sub_24A74E590(v16, v2 + v28);
  swift_endAccess();
  sub_24A7718EC(v16, v14);
  if ((*(v4 + 48))(v14, 1, v27) == 1)
  {
    sub_24A77195C(v14);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v29 = sub_24A82CDC4();
    sub_24A6797D0(v29, qword_281518F88);
    v30 = sub_24A82CD94();
    v31 = sub_24A82D4E4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      MEMORY[0x24C21E1D0](v32, -1, -1);
    }

    sub_24A77195C(v16);
    v33 = *(v42 + 104);
  }

  else
  {
    v35 = v40;
    sub_24A6CAF68(v14, v40);
    v36 = *(v42 + 104);
    sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
    v37 = *(v4 + 72);
    v38 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_24A8327A0;
    sub_24A6FE328(v35, v39 + v38);
    v43 = v36;

    sub_24A77EB44(v39);
    sub_24A6FE094(v35);
    sub_24A77195C(v16);
    return v43;
  }
}

uint64_t sub_24A77178C()
{
  v1 = v0[2];

  sub_24A77195C(v0 + OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPDemoDataInjector()
{
  result = qword_27EF5E330;
  if (!qword_27EF5E330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A77184C()
{
  sub_24A6A73F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24A7718EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A77195C(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7719C4(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_24A7719E8(uint64_t a1)
{
  v1 = *(a1 + 24);
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

__n128 sub_24A771A0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_24A771A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_24A771A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A771B1C()
{
  v1 = *v0;
  v2 = 0x6F43656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6C43656369766564;
  if (v1 != 3)
  {
    v4 = 0x6F4D656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6369766544776172;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A771BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7723F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A771C08(uint64_t a1)
{
  v2 = sub_24A7739F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A771C44(uint64_t a1)
{
  v2 = sub_24A7739F8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A771C80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A7725BC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24A771CCC()
{
  v1 = *(v0 + 16);
  v2 = 0x6172676563617073;
  v3 = 0x7265766C6973;
  if (v1 != 4)
  {
    v3 = 48;
  }

  if (v1 == 3)
  {
    v3 = 0x302D312D31;
  }

  v4 = 0x302D322D31;
  if (v1 != 1)
  {
    v4 = 0x302D312D31;
  }

  if (*(v0 + 16))
  {
    v2 = v4;
  }

  if (*(v0 + 16) <= 2u)
  {
    result = v2;
  }

  else
  {
    result = v3;
  }

  *(v0 + 16);
  if (*(v0 + 144) != 1 && *(v0 + 128) != 1)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);

    return v6;
  }

  return result;
}

uint64_t sub_24A771DC8()
{
  v1 = *(v0 + 16);
  v2 = 0x506B6F6F4263614DLL;
  v3 = 0x312C336863746157;
  v4 = 0x316F725063614D69;
  if (v1 != 4)
  {
    v4 = 0x5F73646F50726941;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x3231656E6F685069;
  if (v1 != 1)
  {
    v5 = 0x312C3864615069;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  *(v0 + 16);
  if (*(v0 + 144) >= 2uLL)
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
  }

  return v6;
}

uint64_t sub_24A771EE8()
{
  v1 = *(v0 + 16);
  v2 = 0x206B6F6F4263614DLL;
  v3 = 0x615720656C707041;
  v4 = 1667321193;
  if (v1 != 4)
  {
    v4 = 0x726F737365636341;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656E6F685069;
  if (v1 != 1)
  {
    v5 = 1684099177;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  *(v0 + 16);
  if (*(v0 + 144) != 1 && *(v0 + 160) != 0)
  {
    v6 = *(v0 + 152);
    v8 = *(v0 + 160);
  }

  return v6;
}

uint64_t sub_24A771FF8()
{
  v1 = *(v0 + 16);
  v2 = 0x506B6F6F4263614DLL;
  v3 = 0x6863746157;
  v4 = 1667321193;
  if (v1 != 4)
  {
    v4 = 0x726F737365636341;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656E6F685069;
  if (v1 != 1)
  {
    v5 = 1684099177;
  }

  if (*(v0 + 16))
  {
    v2 = v5;
  }

  if (*(v0 + 16) <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  *(v0 + 16);
  if (*(v0 + 144) != 1 && *(v0 + 176) != 0)
  {
    v6 = *(v0 + 168);
    v8 = *(v0 + 176);
  }

  return v6;
}

unint64_t sub_24A7720F8()
{
  v1 = *(v0 + 16);
  v2 = 0x2D315F3864615069;
  v3 = 0x315F336863746157;
  v4 = 0x5F73646F50726941;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*(v0 + 16))
  {
    v2 = 0xD000000000000018;
  }

  if (*(v0 + 16) <= 2u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (*(v0 + 144) != 1 && *(v0 + 192) != 0)
  {
    v5 = *(v0 + 184);
    v7 = *(v0 + 192);
  }

  return v5;
}

uint64_t sub_24A772230()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x72656E776FLL;
  v4 = 0x656469727265766FLL;
  if (v1 != 4)
  {
    v4 = 0x656E696C6E4F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
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

uint64_t sub_24A7722E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A772A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A77230C(uint64_t a1)
{
  v2 = sub_24A773140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A772348(uint64_t a1)
{
  v2 = sub_24A773140();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A772384@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A772C18(a1, v10);
  if (!v2)
  {
    v5 = v11[0];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 185) = *(v11 + 9);
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_24A7723F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369766544776172 && a2 == 0xEE006C65646F4D65 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A8441F0 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24A7725BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5E408, &unk_24A837D70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7739F8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  LOBYTE(v35) = 0;
  sub_24A773A4C();
  sub_24A82DA84();
  v34 = v40;
  v33 = v41;
  LOBYTE(v35) = 1;
  sub_24A82DA84();
  v32 = v40;
  v30 = v41;
  LOBYTE(v35) = 2;
  sub_24A82DA84();
  v29 = v40;
  v28 = v41;
  LOBYTE(v35) = 3;
  sub_24A82DA84();
  v26 = v40;
  v25 = v41;
  v50 = 4;
  sub_24A82DA84();
  v31 = a2;
  v27 = a1;
  (*(v6 + 8))(v9, v5);
  v24 = v49;
  v12 = v34;
  *&v35 = v34;
  v13 = v33;
  v14 = v32;
  *(&v35 + 1) = v33;
  *&v36 = v32;
  v15 = v30;
  v16 = v29;
  *(&v36 + 1) = v30;
  *&v37 = v29;
  v17 = v28;
  v18 = v26;
  *(&v37 + 1) = v28;
  *&v38 = v26;
  v19 = v25;
  *(&v38 + 1) = v25;
  v39 = v49;
  sub_24A773AC8(&v35, &v40);
  sub_24A6876E8(v27);
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v47 = v19;
  v48 = v24;
  result = sub_24A773B00(&v40);
  v20 = v38;
  v21 = v31;
  v31[2] = v37;
  v21[3] = v20;
  v21[4] = v39;
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  return result;
}

uint64_t sub_24A772A10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A847570 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_24A82DC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E696C6E4F7369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A772C18@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5E340, &qword_24A837B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v74 = a1;
  sub_24A67DF6C(a1, v10);
  sub_24A773140();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(v74);
  }

  v12 = v6;
  LOBYTE(v40[0]) = 0;
  v13 = v5;
  v14 = sub_24A82DA44();
  v16 = v15;
  v36 = v14;
  LOBYTE(v37) = 1;
  sub_24A773250();
  sub_24A82DA84();
  v17 = LOBYTE(v40[0]);
  v62 = 2;
  sub_24A7732A4();
  sub_24A82DA84();
  v34 = v17;
  *(&v73[1] + 7) = v64;
  *(&v73[2] + 7) = v65;
  *(&v73[3] + 7) = v66;
  *(&v73[4] + 7) = v67;
  *(v73 + 7) = v63;
  LOBYTE(v40[0]) = 3;
  v18 = sub_24A82DA04();
  v35 = v19;
  v33 = v18;
  v56 = 4;
  sub_24A7732F8();
  sub_24A82DA34();
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v68 = v57;
  v69 = v58;
  v55 = 5;
  v20 = sub_24A82DA54();
  (*(v12 + 8))(v9, v13);
  *(&v38[2] + 1) = v73[2];
  *(&v38[3] + 1) = v73[3];
  *(&v38[4] + 1) = v73[4];
  *(v38 + 1) = v73[0];
  *(&v38[1] + 1) = v73[1];
  *(v39 + 8) = v68;
  *(&v39[4] + 8) = v72;
  *(&v39[3] + 8) = v71;
  *(&v39[2] + 8) = v70;
  v32 = v20 & 1;
  v21 = v35;
  v22 = v36;
  *&v37 = v36;
  *(&v37 + 1) = v16;
  LOBYTE(v17) = v34;
  LOBYTE(v38[0]) = v34;
  v23 = v33;
  *&v38[5] = *(&v73[4] + 15);
  *(&v38[5] + 1) = v33;
  *&v39[0] = v35;
  *(&v39[1] + 8) = v69;
  BYTE8(v39[5]) = v32;
  sub_24A71FF60(&v37, v40);
  sub_24A6876E8(v74);
  v44 = v73[2];
  v45 = v73[3];
  *v46 = v73[4];
  v42 = v73[0];
  v43 = v73[1];
  v49 = v68;
  v53 = v72;
  v52 = v71;
  v51 = v70;
  v40[0] = v22;
  v40[1] = v16;
  v41 = v17;
  *&v46[15] = *(&v73[4] + 15);
  v47 = v23;
  v48 = v21;
  v50 = v69;
  v54 = v32;
  result = sub_24A71FFBC(v40);
  v25 = v39[4];
  a2[10] = v39[3];
  a2[11] = v25;
  *(a2 + 185) = *(&v39[4] + 9);
  v26 = v39[0];
  a2[6] = v38[5];
  a2[7] = v26;
  v27 = v39[2];
  a2[8] = v39[1];
  a2[9] = v27;
  v28 = v38[2];
  a2[2] = v38[1];
  a2[3] = v28;
  v29 = v38[4];
  a2[4] = v38[3];
  a2[5] = v29;
  v30 = v38[0];
  *a2 = v37;
  a2[1] = v30;
  return result;
}

unint64_t sub_24A773140()
{
  result = qword_27EF5E348;
  if (!qword_27EF5E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E348);
  }

  return result;
}

uint64_t sub_24A773194(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E350, &qword_24A837B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A773250()
{
  result = qword_27EF5E358;
  if (!qword_27EF5E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E358);
  }

  return result;
}

unint64_t sub_24A7732A4()
{
  result = qword_27EF5E360;
  if (!qword_27EF5E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E360);
  }

  return result;
}

unint64_t sub_24A7732F8()
{
  result = qword_27EF5E368[0];
  if (!qword_27EF5E368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5E368);
  }

  return result;
}

uint64_t sub_24A773354(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_24A7733B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_24A773530(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

__n128 sub_24A773800(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A77381C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24A773878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_24A7738F4()
{
  result = qword_27EF5E3F0;
  if (!qword_27EF5E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E3F0);
  }

  return result;
}

unint64_t sub_24A77394C()
{
  result = qword_27EF5E3F8;
  if (!qword_27EF5E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E3F8);
  }

  return result;
}

unint64_t sub_24A7739A4()
{
  result = qword_27EF5E400;
  if (!qword_27EF5E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E400);
  }

  return result;
}

unint64_t sub_24A7739F8()
{
  result = qword_27EF5E410;
  if (!qword_27EF5E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E410);
  }

  return result;
}

unint64_t sub_24A773A4C()
{
  result = qword_27EF5E418;
  if (!qword_27EF5E418)
  {
    sub_24A6CCDC0(&qword_27EF5D248, &unk_24A834970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E418);
  }

  return result;
}

unint64_t sub_24A773B44()
{
  result = qword_27EF5E420;
  if (!qword_27EF5E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E420);
  }

  return result;
}

unint64_t sub_24A773B9C()
{
  result = qword_27EF5E428;
  if (!qword_27EF5E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E428);
  }

  return result;
}

unint64_t sub_24A773BF4()
{
  result = qword_27EF5E430;
  if (!qword_27EF5E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E430);
  }

  return result;
}

void *FMIPSnapshotHandlers.__allocating_init(devicesResponseFilter:devicesResponseHandler:itemsResponseFilter:itemsResponseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *FMIPSnapshotHandlers.init(devicesResponseFilter:devicesResponseHandler:itemsResponseFilter:itemsResponseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t *FMIPSnapshotHandlers.deinit()
{
  v1 = v0[3];
  sub_24A6AFFE8(v0[2]);
  v2 = v0[5];
  sub_24A6AFFE8(v0[4]);
  v3 = v0[7];
  sub_24A6AFFE8(v0[6]);
  v4 = v0[9];
  sub_24A6AFFE8(v0[8]);
  return v0;
}

uint64_t FMIPSnapshotHandlers.__deallocating_deinit()
{
  v1 = v0[3];
  sub_24A6AFFE8(v0[2]);
  v2 = v0[5];
  sub_24A6AFFE8(v0[4]);
  v3 = v0[7];
  sub_24A6AFFE8(v0[6]);
  v4 = v0[9];
  sub_24A6AFFE8(v0[8]);

  return swift_deallocClassInstance();
}

uint64_t FMIPManagerConfiguration.cacheDirectory.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);

  return v1;
}

uint64_t sub_24A773DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D608, &qword_24A837E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPManagerConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v2 = sub_24A82CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);

  sub_24A773F14(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);

  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);

  return v0;
}

uint64_t sub_24A773F14(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D608, &qword_24A837E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPManagerConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_preferredLocale;
  v2 = sub_24A82CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_cacheDirectory + 8);

  sub_24A773F14(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_authenticationUIProvider);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_interactionControllerProvider + 8);

  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A774064()
{
  result = qword_27EF5E438;
  if (!qword_27EF5E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E438);
  }

  return result;
}

unint64_t sub_24A7740BC()
{
  result = qword_27EF5E440;
  if (!qword_27EF5E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E440);
  }

  return result;
}

unint64_t sub_24A774114()
{
  result = qword_27EF5E448;
  if (!qword_27EF5E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E448);
  }

  return result;
}

unint64_t sub_24A77416C()
{
  result = qword_27EF5E450;
  if (!qword_27EF5E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E450);
  }

  return result;
}

id sub_24A774234(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = [v10 code];
  return v11;
}

uint64_t sub_24A774394(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = [v10 domain];
  v12 = sub_24A82CFC4();

  return v12;
}

BOOL sub_24A774514(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_24A82DBE4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_24A82C7E4();

  v11 = sub_24A774668();
  return v11;
}

BOOL sub_24A774668()
{
  v1 = [v0 domain];
  v2 = sub_24A82CFC4();
  v4 = v3;

  v5 = *MEMORY[0x277CCA738];
  if (v2 == sub_24A82CFC4() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24A82DC04();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 code] < 500)
  {
    return 0;
  }

  return [v0 code] < 600;
}

uint64_t type metadata accessor for FMIPVerifyTrustedStateRequest()
{
  result = qword_27EF5E460;
  if (!qword_27EF5E460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A77479C()
{
  result = type metadata accessor for FMIPDevice();
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

uint64_t sub_24A774834()
{
  v1 = v0;
  v3 = *(v0 + qword_27EF78DA8);
  v2 = *(v0 + qword_27EF78DA8 + 8);
  v12 = MEMORY[0x277D837D0];
  *&v11 = v3;
  *(&v11 + 1) = v2;
  v4 = qword_27EF5D920;
  v5 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  sub_24A6A50DC(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v10, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v4);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A77495C()
{
  v0 = sub_24A6F8F90();
  sub_24A6FE094(v0 + qword_27EF78DA8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FMIPLockAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);

  return v1;
}

uint64_t FMIPLockAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);

  return v1;
}

uint64_t sub_24A774A68()
{
  if ((*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 216) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 240);
  if (v2)
  {
    return 1;
  }

  else
  {
    return (v2 >> 13) & 1;
  }
}

uint64_t FMIPLockAction.__allocating_init(device:message:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  FMIPLockAction.init(device:message:passcode:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t FMIPLockAction.init(device:message:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isSoundEnabled) = 0;
  v6 = (v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
  *v6 = a2;
  v6[1] = a3;
  v7 = (v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
  *v7 = a4;
  v7[1] = a5;
  *(v5 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled) = a3 != 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v8 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v12 = 0;
  v12[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v5;
}

uint64_t sub_24A774C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
}

uint64_t FMIPLockAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);

  return v0;
}

uint64_t FMIPLockAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore14FMIPLockActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_message);
      v7 = a2;
      v8 = sub_24A82DC04();
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

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  v11 = *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode + 8);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode) || v10 != v11)
  {
    v13 = a1;
    v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_passcode);
    v15 = a2;
    v16 = sub_24A82DC04();
    a2 = v15;
    v17 = v16;
    a1 = v13;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore14FMIPLockAction_isUserTextEnabled))
  {
    return 0;
  }

  v19 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v20 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v19, v20);
}

uint64_t type metadata accessor for FMIPLockAction()
{
  result = qword_27EF5E470;
  if (!qword_27EF5E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *FMImageCache.init(converter:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A67ABB0(a1, a2);

  return v2;
}

uint64_t FMImageCache.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t sub_24A77500C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_24A775054(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_24A77509C()
{
  v1 = v0[3];
  v2 = *(*v0 + 96);
  sub_24A82D634();
  return sub_24A82D574();
}

uint64_t sub_24A775120()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMImageCache: Purging cache...", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A77A5F8;
  *(v7 + 24) = v1;
  v10[4] = sub_24A6806A0;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A6805E4;
  v10[3] = &unk_285DC7DA8;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A77530C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = *v3;
  v6 = v28;
  v33 = sub_24A82CDF4();
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A82CE54();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = &v27 - v17;
  v31 = v4[3];
  (*(v15 + 16))(&v27 - v17, a1, v14);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = *(v28 + 88);
  *(v20 + 40) = *(v6 + 104);
  *(v20 + 48) = v4;
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  aBlock[4] = sub_24A77A9CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC8080;
  v24 = _Block_copy(aBlock);

  sub_24A6A7314(v23);
  sub_24A82CE24();
  v36 = MEMORY[0x277D84F90];
  sub_24A6794FC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v25 = v33;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v24);
  _Block_release(v24);
  (*(v35 + 8))(v9, v25);
  (*(v32 + 8))(v13, v34);
}

void sub_24A77571C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  isEscapingClosureAtFileLocation = v3;
  v88 = a3;
  v95 = a2;
  v6 = *v3;
  v7 = v6[10];
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v94 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = (v85 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = v85 - v14;
  v93 = v15;
  MEMORY[0x28223BE20](v13);
  v86 = v85 - v16;
  v17 = v6[12];
  v18 = sub_24A82D634();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v85 - v21;
  swift_beginAccess();
  v23 = *(isEscapingClosureAtFileLocation + 48);
  v24 = v6[13];
  v90 = v6[11];
  v91 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 16);

  v98 = a1;
  sub_24A82CF34();

  v26 = *(*(v17 - 8) + 48);
  v92 = v17;
  LODWORD(v6) = v26(v22, 1, v17);
  (*(v19 + 8))(v22, v18);
  if (v6 != 1 || (swift_beginAccess(), v27 = *(isEscapingClosureAtFileLocation + 32), , v28 = sub_24A82D424(), , (v28 & 1) != 0))
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v29 = sub_24A82CDC4();
    sub_24A6797D0(v29, qword_281518F88);
    v30 = v97;
    v31 = v98;
    v32 = v94;
    v87 = *(v97 + 16);
    v87(v94, v98, v7);
    v33 = sub_24A82CD94();
    v34 = sub_24A82D504();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v96;
    if (v35)
    {
      v37 = v32;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = *(AssociatedConformanceWitness + 8);
      v41 = sub_24A82DC14();
      AssociatedConformanceWitness = isEscapingClosureAtFileLocation;
      v42 = v36;
      v44 = v43;
      (*(v97 + 8))(v37, v7);
      v45 = sub_24A68761C(v41, v44, aBlock);
      v36 = v42;
      v31 = v98;
      isEscapingClosureAtFileLocation = AssociatedConformanceWitness;

      *(v38 + 4) = v45;
      _os_log_impl(&dword_24A675000, v33, v34, "FMImageCache: Loading declined, we are already processing similar location: %s", v38, 0xCu);
      sub_24A6876E8(v39);
      v46 = v39;
      v30 = v97;
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);

      v47 = v95;
      if (!v95)
      {
        return;
      }
    }

    else
    {

      (*(v30 + 8))(v32, v7);
      v47 = v95;
      if (!v95)
      {
        return;
      }
    }

    v48 = *(isEscapingClosureAtFileLocation + 24);
    v87(v36, v31, v7);
    v49 = (*(v30 + 80) + 56) & ~*(v30 + 80);
    v50 = (v93 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *&v52 = v7;
    *(&v52 + 1) = v90;
    *&v53 = v92;
    *(&v53 + 1) = v91;
    *(v51 + 16) = v52;
    *(v51 + 32) = v53;
    *(v51 + 48) = isEscapingClosureAtFileLocation;
    (*(v30 + 32))(v51 + v49, v36, v7);
    v54 = (v51 + v50);
    v25 = v88;
    *v54 = v47;
    v54[1] = v25;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A77A834;
    *(v7 + 24) = v51;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DC7FB8;
    v55 = _Block_copy(aBlock);
    sub_24A6A7314(v47);
    sub_24A6A7314(v47);

    dispatch_sync(v48, v55);
    sub_24A6AFFE8(v47);
    _Block_release(v55);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v94 = v25;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v56 = sub_24A82CDC4();
  sub_24A6797D0(v56, qword_281518F88);
  v57 = v97;
  v58 = v97 + 16;
  v59 = v86;
  v95 = *(v97 + 16);
  v95(v86, v98, v7);
  v60 = sub_24A82CD94();
  v61 = sub_24A82D504();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = *(AssociatedConformanceWitness + 8);
    v65 = sub_24A82DC14();
    v67 = v66;
    v68 = *(v97 + 8);
    v88 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v68;
    v68(v59, v7);
    v69 = sub_24A68761C(v65, v67, aBlock);
    v57 = v97;

    *(v62 + 4) = v69;
    _os_log_impl(&dword_24A675000, v60, v61, "FMImageCache: Attempting to load request: %s", v62, 0xCu);
    sub_24A6876E8(v63);
    MEMORY[0x24C21E1D0](v63, -1, -1);
    MEMORY[0x24C21E1D0](v62, -1, -1);
  }

  else
  {

    v70 = *(v57 + 8);
    v88 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v70;
    v70(v59, v7);
  }

  v71 = v95;
  v72 = v98;
  v95(v96, v98, v7);
  v73 = v71;
  v74 = swift_allocObject();
  v85[1] = v58;
  v75 = v74;
  swift_weakInit();
  v76 = v87;
  v73(v87, v72, v7);
  v77 = (*(v57 + 80) + 56) & ~*(v57 + 80);
  v78 = swift_allocObject();
  *&v79 = v7;
  v80 = v90;
  v81 = v91;
  *(&v79 + 1) = v90;
  *&v82 = v92;
  *(&v82 + 1) = v91;
  *(v78 + 16) = v79;
  *(v78 + 32) = v82;
  *(v78 + 48) = v75;
  (*(v57 + 32))(v78 + v77, v76, v7);
  v83 = v96;
  v84 = (*(v81 + 24))(v96, sub_24A77A7CC, v78, v80, v81);
  [*(isEscapingClosureAtFileLocation + 16) addOperation_];
  v95(v76, v72, v7);
  swift_beginAccess();
  sub_24A82D434();
  sub_24A82D3F4();
  (AssociatedConformanceWitness)(v83, v7);
  swift_endAccess();
}

void sub_24A776138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x24C21D990]();
  sub_24A7797CC(v3, a3, a1, a2);

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_24A7761AC@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = sub_24A82D634();
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v54 - v7;
  v8 = sub_24A82C8B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  v19 = *(v2 + 160);
  v2 += 160;
  v19(v16);
  v20 = *(v2 - 56);
  v23 = v2 - 80;
  v22 = *(v2 - 80);
  v21 = *(v23 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v22, AssociatedConformanceWitness);
  sub_24A82C864();

  v25 = *(v9 + 8);
  v60 = v8;
  v26 = v8;
  v27 = v25;
  v25(v15, v26);
  v28 = sub_24A82C8C4();
  v30 = v29;
  v31 = v1[7];
  v32 = v1[8];
  v33 = v56;
  v34 = v57;
  v31();
  sub_24A67E0F0(v28, v30);
  v35 = *(v3 - 8);
  if ((*(v35 + 48))(v34, 1, v3) == 1)
  {
    v58 = v3;
    (*(v33 + 8))(v34, v55);
    v37 = v59;
    v36 = v60;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v38 = sub_24A82CDC4();
    sub_24A6797D0(v38, qword_281518F88);
    (*(v9 + 16))(v37, v18, v36);
    v39 = sub_24A82CD94();
    v40 = v18;
    v41 = sub_24A82D504();
    if (os_log_type_enabled(v39, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      sub_24A6794FC(&qword_27EF5E508, MEMORY[0x277CC9260]);
      v44 = sub_24A82DB84();
      v45 = v37;
      v46 = v27;
      v47 = v36;
      v48 = v44;
      v50 = v49;
      v46(v45, v47);
      v51 = sub_24A68761C(v48, v50, &v62);

      *(v42 + 4) = v51;
      _os_log_impl(&dword_24A675000, v39, v41, "FMImageCache: Failed to load cached image from disk: %s", v42, 0xCu);
      sub_24A6876E8(v43);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);

      v46(v40, v47);
    }

    else
    {

      v27(v37, v36);
      v27(v40, v36);
    }

    return (*(*(v58 - 8) + 56))(v61, 1, 1);
  }

  else
  {
    v27(v18, v60);
    v53 = v61;
    (*(v35 + 32))(v61, v34, v3);
    return (*(v35 + 56))(v53, 0, 1, v3);
  }
}

uint64_t FMImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

void *FMImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t sub_24A77682C@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v141 = a5;
  v135 = a4;
  v138 = a3;
  v7 = *a1;
  v8 = *(*a1 + 96);
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v9 = sub_24A82DD44();
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v128 = &v120 - v12;
  v13 = v7[10];
  v137 = *(v13 - 8);
  v14 = *(v137 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v123 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v126 = &v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v124 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v133 = &v120 - v21;
  v22 = sub_24A82D634();
  v131 = *(v22 - 8);
  v132 = v22;
  v23 = *(v131 + 8);
  v24 = MEMORY[0x28223BE20](v22);
  v125 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v120 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v120 - v29;
  v31 = *(v8 - 8);
  v32 = *(v31 + 8);
  v33 = MEMORY[0x28223BE20](v28);
  v136 = (&v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v36 = &v120 - v35;
  swift_beginAccess();
  v37 = *(a1 + 6);
  v38 = v7[13];
  v39 = v7[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = *(AssociatedConformanceWitness + 16);

  v140 = v13;
  v134 = v40;
  sub_24A82CF34();

  v41 = *(v31 + 6);
  if (v41(v30, 1, v8) != 1)
  {
    v67 = *(v31 + 4);
    v139 = v31 + 32;
    v136 = v67;
    v67(v36, v30, v8);
    v68 = v36;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v69 = sub_24A82CDC4();
    sub_24A6797D0(v69, qword_281518F88);
    v70 = v137;
    v71 = v133;
    v72 = a2;
    v73 = v140;
    (*(v137 + 16))(v133, v72, v140);
    v74 = sub_24A82CD94();
    v75 = sub_24A82D4C4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v134 = v68;
      v77 = v76;
      v78 = swift_slowAlloc();
      v132 = v8;
      v79 = v78;
      v142[0] = v78;
      *v77 = 136315138;
      v80 = *(AssociatedConformanceWitness + 8);
      v81 = sub_24A82DC14();
      v82 = v71;
      v84 = v83;
      (*(v70 + 8))(v82, v73);
      v85 = sub_24A68761C(v81, v84, v142);

      *(v77 + 4) = v85;
      _os_log_impl(&dword_24A675000, v74, v75, "FMImageCache: Found cached data for request: %s in memory cache.", v77, 0xCu);
      sub_24A6876E8(v79);
      v86 = v79;
      v8 = v132;
      MEMORY[0x24C21E1D0](v86, -1, -1);
      v87 = v77;
      v68 = v134;
      MEMORY[0x24C21E1D0](v87, -1, -1);

      v88 = v138;
      if (!v138)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v70 + 8))(v71, v73);
      v88 = v138;
      if (!v138)
      {
LABEL_19:
        v110 = v141;
        v136(v141, v68, v8);
        return (*(v31 + 7))(v110, 0, 1, v8);
      }
    }

    v108 = v128;
    (*(v31 + 2))(v128, v68, v8);
    v109 = v130;
    swift_storeEnumTagMultiPayload();
    v88(v108);
    (*(v129 + 8))(v108, v109);
    goto LABEL_19;
  }

  v133 = v31;
  v42 = v132;
  v131 = *(v131 + 1);
  v131(v30, v132);
  v43 = v139;
  sub_24A7761AC(v139);
  v44 = a2;
  if (v41(v43, 1, v8) == 1)
  {
    v131(v139, v42);
    swift_beginAccess();
    v45 = a2;
    v46 = a1;
    v47 = *(a1 + 4);

    v139 = v45;
    v48 = v140;
    v49 = sub_24A82D424();

    v50 = v133;
    if ((v49 & 1) == 0)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v51 = sub_24A82CDC4();
      sub_24A6797D0(v51, qword_281518F88);
      v52 = v137;
      v53 = v123;
      (*(v137 + 16))(v123, v139, v48);
      v54 = sub_24A82CD94();
      v55 = sub_24A82D504();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v131 = v46;
        v57 = v56;
        v58 = swift_slowAlloc();
        v132 = v8;
        v59 = v58;
        v143 = v58;
        *v57 = 136315138;
        v60 = *(AssociatedConformanceWitness + 8);
        v61 = sub_24A82DC14();
        v62 = v53;
        v64 = v63;
        (*(v52 + 8))(v62, v48);
        v65 = sub_24A68761C(v61, v64, &v143);

        *(v57 + 4) = v65;
        _os_log_impl(&dword_24A675000, v54, v55, "FMImageCache: Cached data for request: %s not found, regenerating.", v57, 0xCu);
        sub_24A6876E8(v59);
        v66 = v59;
        v8 = v132;
        MEMORY[0x24C21E1D0](v66, -1, -1);
        MEMORY[0x24C21E1D0](v57, -1, -1);
      }

      else
      {

        (*(v52 + 8))(v53, v48);
      }

      sub_24A77530C(v139, v138, v135);
    }

    return (*(v50 + 7))(v141, 1, 1, v8);
  }

  else
  {
    v89 = *(v133 + 4);
    v123 = v133 + 32;
    v122 = v89;
    v89(v136, v139, v8);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v131 = a1;
    v90 = sub_24A82CDC4();
    sub_24A6797D0(v90, qword_281518F88);
    v91 = v137;
    v92 = v124;
    v93 = v140;
    v121 = *(v137 + 16);
    v121(v124, a2, v140);
    v94 = sub_24A82CD94();
    v95 = sub_24A82D4C4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v139 = v44;
      v97 = v96;
      v98 = swift_slowAlloc();
      v132 = v8;
      v99 = v98;
      v142[0] = v98;
      *v97 = 136315138;
      v100 = *(AssociatedConformanceWitness + 8);
      v101 = sub_24A82DC14();
      v102 = v92;
      v104 = v103;
      (*(v91 + 8))(v102, v93);
      v105 = sub_24A68761C(v101, v104, v142);

      *(v97 + 4) = v105;
      _os_log_impl(&dword_24A675000, v94, v95, "FMImageCache: Found cached data for request: %s in disk cache.", v97, 0xCu);
      sub_24A6876E8(v99);
      v106 = v99;
      v8 = v132;
      MEMORY[0x24C21E1D0](v106, -1, -1);
      v107 = v97;
      v44 = v139;
      MEMORY[0x24C21E1D0](v107, -1, -1);
    }

    else
    {

      (*(v91 + 8))(v92, v93);
    }

    v121(v126, v44, v93);
    v112 = v133;
    v113 = *(v133 + 2);
    v114 = v125;
    v115 = v136;
    v113(v125, v136, v8);
    v139 = *(v112 + 7);
    (v139)(v114, 0, 1, v8);
    swift_beginAccess();
    sub_24A82CF24();
    sub_24A82CF44();
    swift_endAccess();
    v116 = v138;
    if (v138)
    {
      v117 = v128;
      v113(v128, v136, v8);
      v118 = v130;
      swift_storeEnumTagMultiPayload();
      v116(v117);
      v115 = v136;
      (*(v129 + 8))(v117, v118);
    }

    v119 = v141;
    v122(v141, v115, v8);
    return (v139)(v119, 0, 1, v8);
  }
}

void sub_24A7774A4(void *a1)
{
  v49[7] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = sub_24A82C8B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - v9;
  v11 = v2[10];
  v12 = v2[13];
  v13 = v2[11];
  v14 = *(swift_getAssociatedConformanceWitness() + 16);
  v15 = sub_24A82CEC4();
  swift_beginAccess();
  v16 = a1[4];
  a1[4] = v15;

  v17 = v2[12];
  swift_getTupleTypeMetadata2();
  v18 = sub_24A82D294();
  v19 = sub_24A77A2EC(v18, v11, v17, v14);

  swift_beginAccess();
  v20 = a1[6];
  a1[6] = v19;

  v48 = objc_opt_self();
  v21 = [v48 defaultManager];
  (*(*a1 + 160))();
  v22 = sub_24A82C844();
  v47[0] = *(v4 + 8);
  v47[1] = v4 + 8;
  (v47[0])(v10, v3);
  v49[0] = 0;
  v23 = [v21 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:5 error:v49];

  v24 = v49[0];
  if (v23)
  {
    v25 = sub_24A82D244();
    v26 = v24;

    v27 = *(v25 + 16);
    if (!v27)
    {
LABEL_7:

      goto LABEL_14;
    }

    v28 = v3;
    v29 = 0;
    v30 = (v4 + 16);
    while (v29 < *(v25 + 16))
    {
      (*(v4 + 16))(v8, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v28);
      v31 = [v48 defaultManager];
      v32 = sub_24A82C844();
      v33 = v28;
      (v47[0])(v8, v28);
      v49[0] = 0;
      v34 = [v31 removeItemAtURL:v32 error:v49];

      if (!v34)
      {
        v36 = v49[0];

        goto LABEL_10;
      }

      ++v29;
      v35 = v49[0];
      v28 = v33;
      if (v27 == v29)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = v49[0];
LABEL_10:
    v30 = sub_24A82C7F4();

    swift_willThrow();
    if (qword_281515DC8 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v37 = sub_24A82CDC4();
  sub_24A6797D0(v37, qword_281518F88);
  v38 = v30;
  v39 = sub_24A82CD94();
  v40 = sub_24A82D504();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_24A82DC74();
    v45 = sub_24A68761C(v43, v44, v49);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_24A675000, v39, v40, "FMImageCache: Error deleting file : %s", v41, 0xCu);
    sub_24A6876E8(v42);
    MEMORY[0x24C21E1D0](v42, -1, -1);
    MEMORY[0x24C21E1D0](v41, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A7779EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = *a1;
  v7 = *(*a1 + 80);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](a1);
  v26 = &v21 - v9;
  swift_beginAccess();
  v10 = a1[5];
  v11 = v6[12];

  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  sub_24A82DD44();
  swift_getFunctionTypeMetadata1();
  sub_24A82D314();
  v12 = v6[13];
  v13 = v6[11];
  v14 = *(swift_getAssociatedConformanceWitness() + 16);
  v25 = a2;
  sub_24A82CF34();

  v15 = v27;
  if (!v27)
  {
    v15 = sub_24A82D294();
  }

  v30 = v15;
  v16 = swift_allocObject();
  *&v17 = v7;
  *(&v17 + 1) = v13;
  *&v18 = v11;
  *(&v18 + 1) = v12;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  v19 = v23;
  *(v16 + 48) = v22;
  *(v16 + 56) = v19;
  v27 = sub_24A77A8A4;
  v28 = v16;

  sub_24A82D2E4();
  (*(v24 + 16))(v26, v25, v7);
  v29 = v30;
  swift_beginAccess();
  sub_24A82CF24();
  sub_24A82CF44();
  return swift_endAccess();
}

uint64_t sub_24A777CA0(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v46 = a5;
  v49 = a3;
  v50 = a1;
  v51 = a2;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = a9;
    v24 = *(result + 24);
    v44 = v14;
    v45 = v24;

    v25 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v20 + 16))(&v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a6);
    v26 = (*(v20 + 80) + 48) & ~*(v20 + 80);
    v43 = v16;
    v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = v15;
    v28 = v11;
    v29 = v10;
    v30 = swift_allocObject();
    v31 = v47;
    v32 = v48;
    *(v30 + 2) = a6;
    *(v30 + 3) = v31;
    v33 = v42;
    *(v30 + 4) = v32;
    *(v30 + 5) = v33;
    (*(v20 + 32))(&v30[v26], v22, a6);
    *&v30[v27] = v25;
    v34 = &v30[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
    v36 = v50;
    v35 = v51;
    *v34 = v50;
    *(v34 + 1) = v35;
    LOBYTE(v27) = v49 & 1;
    v34[16] = v49 & 1;
    aBlock[4] = sub_24A77A8D8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8030;
    v37 = _Block_copy(aBlock);

    sub_24A77A978(v36, v35, v27);
    v38 = v52;
    sub_24A82CE24();
    v53 = MEMORY[0x277D84F90];
    sub_24A6794FC(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v39 = v44;
    sub_24A82D6B4();
    v40 = v45;
    MEMORY[0x24C21CE90](0, v38, v39, v37);
    _Block_release(v37);

    (*(v28 + 8))(v39, v29);
    (*(v43 + 8))(v38, v46);
  }

  return result;
}

void *sub_24A778144(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v141 = a7;
  LODWORD(v122) = a5;
  v124 = a4;
  v123 = a3;
  v142 = a1;
  v132 = sub_24A82D634();
  v131 = *(v132 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = v116 - v13;
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v135 = sub_24A82DD44();
  v129 = *(v135 - 8);
  v14 = *(v129 + 64);
  MEMORY[0x28223BE20](v135);
  v128 = (v116 - v15);
  v16 = sub_24A82D634();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = v116 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  v20 = *(v126 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v125 = v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (v116 - v23);
  v127 = v25;
  v26 = sub_24A82DD44();
  v139 = *(v26 - 8);
  v140 = v26;
  v27 = *(v139 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v134 = (v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x28223BE20](v28);
  v138 = (v116 - v31);
  v143 = a6;
  v32 = *(a6 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x28223BE20](v30);
  v36 = v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v133 = v116 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v116 - v39;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v41 = sub_24A82CDC4();
  v42 = sub_24A6797D0(v41, qword_281518F88);
  v43 = v32[2];
  v137 = v32 + 2;
  v136 = v43;
  v43(v40, v142, v143);
  v116[2] = v42;
  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();
  v46 = os_log_type_enabled(v44, v45);
  v121 = a8;
  v120 = v24;
  v118 = v32;
  v117 = v36;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v116[1] = a2;
    v48 = v47;
    v49 = swift_slowAlloc();
    v146 = v49;
    *v48 = 136315138;
    v50 = v143;
    v51 = *(swift_getAssociatedConformanceWitness() + 8);
    v52 = sub_24A82DC14();
    v53 = v50;
    v55 = v54;
    v56 = v32[1];
    v56(v40, v53);
    v57 = sub_24A68761C(v52, v55, &v146);

    *(v48 + 4) = v57;
    _os_log_impl(&dword_24A675000, v44, v45, "FMImageCache: Finished loading request: %s", v48, 0xCu);
    sub_24A6876E8(v49);
    MEMORY[0x24C21E1D0](v49, -1, -1);
    MEMORY[0x24C21E1D0](v48, -1, -1);
  }

  else
  {

    v56 = v32[1];
    v56(v40, v143);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v59 = v134;
  if (result)
  {
    v60 = result;
    v61 = v138;
    sub_24A7790F8(v123, v124, v122 & 1, result, v138);
    (*(v139 + 16))(v59, v61, v140);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v59;
      v63 = v117;
      v136(v117, v142, v143);
      v64 = v62;
      v65 = sub_24A82CD94();
      v66 = sub_24A82D504();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v146 = v134;
        *v67 = 136315394;
        v68 = v56;
        v69 = v143;
        v70 = *(swift_getAssociatedConformanceWitness() + 8);
        LODWORD(v127) = v66;
        v71 = sub_24A82DC14();
        v73 = v72;
        v74 = v63;
        v75 = a9;
        v68(v74, v69);
        v76 = sub_24A68761C(v71, v73, &v146);

        *(v67 + 4) = v76;
        *(v67 + 12) = 2080;
        swift_getErrorValue();
        v77 = sub_24A82DC74();
        v79 = sub_24A68761C(v77, v78, &v146);

        *(v67 + 14) = v79;
        _os_log_impl(&dword_24A675000, v65, v127, "FMImageCache: Failed to fetch image for request: %s due to: %s", v67, 0x16u);
        v80 = v134;
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v80, -1, -1);
        MEMORY[0x24C21E1D0](v67, -1, -1);
      }

      else
      {

        v56(v63, v143);
        v75 = a9;
      }

      swift_beginAccess();
      v104 = v60[5];
      v105 = v135;
      swift_getFunctionTypeMetadata1();
      sub_24A82D314();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v106 = *(AssociatedConformanceWitness + 16);

      sub_24A82CF34();

      if (v144)
      {
        v145 = v144;
        MEMORY[0x28223BE20](v107);
        v116[-6] = v143;
        v116[-5] = v108;
        v116[-4] = v121;
        v116[-3] = v75;
        v116[-2] = v62;
        swift_getWitnessTable();
        v105 = v135;
        sub_24A82D1B4();
      }

      v109 = v128;
      *v128 = v62;
      swift_storeEnumTagMultiPayload();
      v110 = *(*v60 + 288);
      v111 = v62;
      v110(v142, v109);

      (*(v129 + 8))(v109, v105);
    }

    else
    {
      v116[0] = a9;
      v81 = v126;
      v82 = v142;
      v83 = v120;
      v84 = v127;
      (*(v126 + 32))(v120, v59, v127);
      v136(v133, v82, v143);
      v85 = v81 + 16;
      v86 = *(v81 + 16);
      v87 = v125;
      v124 = v85;
      v123 = v86;
      (v86)(v125, v83, v84);
      sub_24A67E0F0(*v87, *(v87 + 1));
      v88 = *(v84 + 48);
      v89 = v121;
      v90 = *(v121 - 8);
      v91 = *(v90 + 32);
      v92 = &v87[v88];
      v93 = v119;
      v122 = v90 + 32;
      v118 = v91;
      v91(v119, v92, v121);
      (*(v90 + 56))(v93, 0, 1, v89);
      swift_beginAccess();
      v94 = v141;
      v134 = swift_getAssociatedConformanceWitness();
      v95 = v134[2];
      sub_24A82CF24();
      sub_24A82CF44();
      swift_endAccess();
      sub_24A776138(*v83, v83[1], v82);
      swift_beginAccess();
      v96 = v60[5];
      swift_getFunctionTypeMetadata1();
      sub_24A82D314();

      sub_24A82CF34();

      if (v144)
      {
        v145 = v144;
        MEMORY[0x28223BE20](v97);
        v116[-6] = v143;
        v116[-5] = v94;
        v98 = v116[0];
        v116[-4] = v89;
        v116[-3] = v98;
        v116[-2] = v83;
        swift_getWitnessTable();
        sub_24A82D1B4();
      }

      v99 = v125;
      v100 = v127;
      (v123)(v125, v83, v127);
      sub_24A67E0F0(*v99, *(v99 + 1));
      v101 = v128;
      v118(v128, &v99[*(v100 + 48)], v89);
      v102 = v135;
      swift_storeEnumTagMultiPayload();
      (*(*v60 + 288))(v142, v101);
      (*(v129 + 8))(v101, v102);
      (*(v126 + 8))(v83, v100);
      AssociatedConformanceWitness = v134;
    }

    swift_beginAccess();
    v112 = *(AssociatedConformanceWitness + 16);
    v113 = v143;
    sub_24A82D434();
    v114 = v130;
    v115 = v142;
    sub_24A82D404();
    (*(v131 + 8))(v114, v132);
    swift_endAccess();
    v136(v133, v115, v113);
    v145 = 0;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_24A82D314();
    sub_24A82CF24();
    sub_24A82CF44();
    swift_endAccess();

    return (*(v139 + 8))(v138, v140);
  }

  return result;
}

id sub_24A7790F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a2;
  v9 = *(*a4 + 96);
  v10 = sub_24A82D634();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v29 - v18;
  if (a3)
  {
    *a5 = a1;
    swift_getTupleTypeMetadata2();
    sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82DD44();
    swift_storeEnumTagMultiPayload();

    return a1;
  }

  else
  {
    v30 = v17;
    v22 = a4[7];
    v21 = a4[8];
    v23 = v32;
    sub_24A681458(a1, v32);
    v31 = a1;
    v22(a1, v23);
    if ((*(v15 + 48))(v14, 1, v9) == 1)
    {
      (*(v30 + 8))(v14, v10);
      sub_24A6D3FAC();
      v24 = swift_allocError();
      *v25 = 1;
      sub_24A77A8CC(v31, v32, 0);
      *a5 = v24;
      swift_getTupleTypeMetadata2();
    }

    else
    {
      v26 = *(v15 + 32);
      v26(v19, v14, v9);
      v27 = *(swift_getTupleTypeMetadata2() + 48);
      v28 = v32;
      *a5 = v31;
      a5[1] = v28;
      v26(a5 + v27, v19, v9);
    }

    sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82DD44();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24A77948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - v10;
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v12 = sub_24A82DD44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = *(a1 + 8);
  v19 = *a1;
  (*(v8 + 16))(v11, v20, TupleTypeMetadata2);
  sub_24A67E0F0(*v11, *(v11 + 1));
  (*(*(a5 - 8) + 32))(v16, &v11[*(TupleTypeMetadata2 + 48)], a5);
  swift_storeEnumTagMultiPayload();
  v19(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24A7796A4(uint64_t a1, void *a2)
{
  sub_24A6CCDC0(&qword_27EF5CF40, &unk_24A836A70);
  v4 = sub_24A82DD44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v10 = *a1;
  v9 = *(a1 + 8);
  *(&v13 - v7) = a2;
  swift_storeEnumTagMultiPayload();
  v11 = a2;
  v10(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24A7797CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v90[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v88 = sub_24A82C8B4();
  v6 = *(v88 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v85 = &v76 - v14;
  v15 = v5[20];
  (v15)(v13);
  v16 = v5[13];
  v18 = v5[10];
  v17 = v5[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v18, AssociatedConformanceWitness);
  sub_24A82C864();

  v77 = v6;
  v20 = v6 + 8;
  v21 = *(v6 + 8);
  v22 = v88;
  v21(v12, v88);
  v89 = 0;
  v84 = objc_opt_self();
  v23 = [v84 defaultManager];
  v80 = a1;
  v24 = v85;
  v79 = v15;
  v15();
  sub_24A82C894();
  v86 = v21;
  v87 = v20;
  v21(v12, v22);
  v25 = sub_24A82CF94();

  v26 = [v23 fileExistsAtPath:v25 isDirectory:&v89];

  if ((v26 & 1) == 0)
  {
    v27 = [v84 defaultManager];
    v79();
    v28 = sub_24A82C844();
    v29 = v88;
    v86(v12, v88);
    v90[0] = 0;
    v30 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v90];

    if (!v30)
    {
      v46 = v90[0];
      v47 = sub_24A82C7F4();

      swift_willThrow();
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v48 = sub_24A82CDC4();
      sub_24A6797D0(v48, qword_281518F88);
      v49 = v78;
      (*(v77 + 16))(v78, v24, v29);
      v50 = sub_24A82CD94();
      v51 = sub_24A82D504();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v84 = v47;
        v53 = v52;
        v54 = swift_slowAlloc();
        v90[0] = v54;
        *v53 = 136315138;
        sub_24A6794FC(&qword_27EF5E508, MEMORY[0x277CC9260]);
        v55 = sub_24A82DB84();
        v57 = v56;
        v58 = v49;
        v59 = v86;
        v86(v58, v29);
        v60 = sub_24A68761C(v55, v57, v90);

        *(v53 + 4) = v60;
        _os_log_impl(&dword_24A675000, v50, v51, "FMImageCache: Could not create directory for content: %s", v53, 0xCu);
        sub_24A6876E8(v54);
        MEMORY[0x24C21E1D0](v54, -1, -1);
        MEMORY[0x24C21E1D0](v53, -1, -1);

        result = v59(v85, v29);
      }

      else
      {

        v74 = v49;
        v75 = v86;
        v86(v74, v29);
        result = v75(v24, v29);
      }

      goto LABEL_18;
    }

    v31 = v90[0];
  }

  v32 = v83;
  sub_24A82C914();
  v33 = v32;
  v34 = v24;
  if (!v32)
  {
    v35 = [v84 defaultManager];
    sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8327A0;
    v37 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v38 = *MEMORY[0x277CCA1A0];
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v39;
    *(inited + 40) = v38;
    v40 = v37;
    v41 = v38;
    v34 = v24;
    sub_24A78AD70(inited);
    swift_setDeallocating();
    sub_24A77A764(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_24A6794FC(&qword_281512B90, type metadata accessor for FileAttributeKey);
    v42 = sub_24A82CED4();

    sub_24A82C894();
    v43 = sub_24A82CF94();

    v90[0] = 0;
    LODWORD(v37) = [v35 setAttributes:v42 ofItemAtPath:v43 error:v90];

    if (v37)
    {
      v44 = v90[0];
      result = (v86)(v24, v88);
      goto LABEL_18;
    }

    v61 = v90[0];
    v33 = sub_24A82C7F4();

    swift_willThrow();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v62 = sub_24A82CDC4();
  sub_24A6797D0(v62, qword_281518F88);
  v63 = v33;
  v64 = sub_24A82CD94();
  v65 = sub_24A82D4E4();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v88;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v90[0] = v69;
    *v68 = 136315138;
    swift_getErrorValue();
    v70 = sub_24A82DC74();
    v72 = sub_24A68761C(v70, v71, v90);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_24A675000, v64, v65, "FMImageCache: Could not save objects to disk %s", v68, 0xCu);
    sub_24A6876E8(v69);
    MEMORY[0x24C21E1D0](v69, -1, -1);
    MEMORY[0x24C21E1D0](v68, -1, -1);
  }

  else
  {
  }

  result = (v86)(v34, v67);
LABEL_18:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FMImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A77A0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24A82CF54();

  return sub_24A77A114(a1, v9, a2, a3);
}

unint64_t sub_24A77A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24A82CF84();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void *sub_24A77A29C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_24A77A2BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24A77A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24A82D2D4())
  {
    sub_24A82D984();
    v13 = sub_24A82D974();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24A82D2D4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24A82D2B4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24A82D864();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24A77A0B8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_24A77A604()
{
  result = qword_27EF5E480[0];
  if (!qword_27EF5E480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5E480);
  }

  return result;
}

uint64_t sub_24A77A764(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E190, &unk_24A838C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A77A834()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24A7779EC(*(v0 + 48), v0 + v1, *v2, v2[1]);
}

uint64_t sub_24A77A8A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

void sub_24A77A8CC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_24A67E0F0(a1, a2);
  }
}

void *sub_24A77A8D8()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24A778144(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v0[2], v0[3], v0[4], v0[5]);
}

id sub_24A77A978(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_24A681458(a1, a2);
  }
}

uint64_t sub_24A77A984(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_24A7796A4(a1, *(v1 + 48));
}

void sub_24A77A9CC()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = v0 + v1;
  v4 = *(v0 + 48);
  sub_24A77571C(v3, *v2, *(v2 + 8));
}

uint64_t type metadata accessor for FMIPRepairRequest()
{
  result = qword_27EF5E510;
  if (!qword_27EF5E510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A77AB10()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78DE0) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v13 = MEMORY[0x277D837D0];
  *&v12 = v4;
  *(&v12 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  sub_24A6A50DC(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v11, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + v5);

  os_unfair_lock_lock((v9 + 24));
  sub_24A6A3D28((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_24A77AC48()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78DE0);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char sub_24A77ACC4@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 56);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for FMIPDevice();
    sub_24A77B054(v8 + *(v10 + 124) + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v7);
    v11 = type metadata accessor for FMIPEraseMetadata();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      result = sub_24A77B0C4(v7);
LABEL_5:
      LOBYTE(v9) = 0;
      goto LABEL_8;
    }

    v12 = *v7;
    sub_24A77B12C(v7);
    result = FMIPActionStatus.init(rawValue:)(qword_24A8383F8[v12]).value;
    LOBYTE(v9) = v14;
    if (v14 == 18)
    {
      LOBYTE(v9) = 0;
    }
  }

LABEL_8:
  *a1 = v9;
  return result;
}

uint64_t sub_24A77AE6C(uint64_t *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPEraseResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A77B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A77B0C4(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A77B12C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPEraseMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItem.init(unknownItem:locations:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FMIPUnknownItem();
  *(a3 + v6[15]) = *(a1 + v6[15]);
  *(a3 + v6[13]) = *(a1 + v6[13]);
  v7 = v6[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a3 + v7);
  *v10 = v8;
  v10[1] = v9;
  v11 = sub_24A82CAA4();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  *(a3 + v6[16]) = *(a1 + v6[16]);
  *(a3 + v6[7]) = *(a1 + v6[7]);
  v21 = a2;

  sub_24A7883D8(&v21);

  *(a3 + v6[8]) = v21;
  sub_24A78B768(a1 + v6[9], a3 + v6[9], type metadata accessor for FMIPProductType);
  *(a3 + v6[10]) = *(a1 + v6[10]);
  *(a3 + v6[14]) = *(a1 + v6[14]);
  v12 = v6[12];
  v13 = *(a1 + v12);
  *(a3 + v12) = v13;
  sub_24A67E964(a1 + v6[11], a3 + v6[11], &qword_27EF5E520, &qword_24A8384B0);
  v14 = v6[5];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a3 + v14);
  *v17 = v15;
  v17[1] = v16;
  *(a3 + v6[17]) = *(a1 + v6[17]);
  *(a3 + v6[18]) = *(a1 + v6[18]);
  v18 = *(a1 + v6[19]);
  v19 = v13;

  result = sub_24A78B838(a1, type metadata accessor for FMIPUnknownItem);
  *(a3 + v6[19]) = v18;
  return result;
}

uint64_t sub_24A77B3B0()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77B3F8()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

FMIPCore::FMIPUnknownItemAlertState_optional __swiftcall FMIPUnknownItemAlertState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

FMIPCore::FMIPUnknownItemObservationType_optional __swiftcall FMIPUnknownItemObservationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPUnknownItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A82CAA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FMIPUnknownItem.name.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPUnknownItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPUnknownItem.handle.getter()
{
  v1 = (v0 + *(type metadata accessor for FMIPUnknownItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMIPUnknownItem.locations.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPUnknownItem() + 32));
}

uint64_t FMIPUnknownItem.observationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem();
  *a1 = *(v1 + *(result + 40));
  return result;
}

void *FMIPUnknownItem.unknownBeacon.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPUnknownItem() + 48));
  v2 = v1;
  return v1;
}

uint64_t FMIPUnknownItem.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t FMIPUnknownItem.state.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t FMIPUnknownItem.alertState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPUnknownItem();
  *a1 = *(v1 + *(result + 60));
  return result;
}

void *FMIPUnknownItem.isRequestable.getter()
{
  result = *(v0 + *(type metadata accessor for FMIPUnknownItem() + 48));
  if (result)
  {
    return (([result capabilities] >> 13) & 1);
  }

  return result;
}

unint64_t sub_24A77B988(char a1)
{
  result = 0x6174537472656C61;
  switch(a1)
  {
    case 1:
      result = 0x696C696261706163;
      break;
    case 2:
      result = 0x656C646E6168;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x65726F6E67497369;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x54746375646F7270;
      break;
    case 9:
      result = 0x746176726573626FLL;
      break;
    case 10:
      result = 0x6574617473;
      break;
    case 11:
      result = 0x426E776F6E6B6E75;
      break;
    case 12:
      result = 0x61646174654D7475;
      break;
    case 13:
      result = 0x794D646E69467369;
      break;
    case 14:
      result = 0x68736F507369;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A77BB68(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A77B988(*a1);
  v5 = v4;
  if (v3 == sub_24A77B988(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A77BBF0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A77B988(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A77BC54()
{
  sub_24A77B988(*v0);
  sub_24A82D094();
}

uint64_t sub_24A77BCA8()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A77B988(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A77BD08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A78B604();
  *a2 = result;
  return result;
}

unint64_t sub_24A77BD38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A77B988(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A77BD80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A78B604();
  *a1 = result;
  return result;
}

uint64_t sub_24A77BDB4(uint64_t a1)
{
  v2 = sub_24A7882DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A77BDF0(uint64_t a1)
{
  v2 = sub_24A7882DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v56 = *(v58 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = type metadata accessor for FMIPProductType();
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A82CAA4();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24A6BBA94(&qword_27EF5E528, &qword_24A8384B8);
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43[-v13];
  v15 = type metadata accessor for FMIPUnknownItem();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1[3];
  v19 = a1[4];
  v65 = a1;
  sub_24A67DF6C(a1, v20);
  sub_24A7882DC();
  v21 = v64;
  sub_24A82DD64();
  if (!v21)
  {
    v54 = v18;
    v55 = v7;
    v64 = v10;
    v22 = v62;
    v67 = 0;
    sub_24A788330();
    sub_24A82DA84();
    v23 = v66;
    v67 = 1;
    sub_24A70B3A4();
    sub_24A82DA84();
    v53 = v23;
    v25 = v66;
    LOBYTE(v66) = 2;
    v26 = sub_24A82DA44();
    v50 = v25;
    v51 = v26;
    v52 = v27;
    LOBYTE(v66) = 3;
    sub_24A67F050(&qword_27EF5DBA0, MEMORY[0x277CC95F0]);
    sub_24A82DA84();
    LOBYTE(v66) = 4;
    v49 = sub_24A82DA54();
    LOBYTE(v66) = 5;
    v48 = sub_24A82DA54();
    sub_24A6BBA94(&qword_27EF5E540, &unk_24A8384C0);
    v67 = 6;
    sub_24A78A2F8(&qword_27EF5E548, sub_24A687EF0);
    sub_24A82DA84();
    v47 = v66;
    LOBYTE(v66) = 7;
    v45 = sub_24A82DA44();
    v46 = v28;
    LOBYTE(v66) = 8;
    sub_24A67F050(&qword_27EF5E550, type metadata accessor for FMIPProductType);
    sub_24A82DA84();
    v67 = 9;
    sub_24A788384();
    v63 = v11;
    v29 = v14;
    sub_24A82DA84();
    v30 = v66;
    LOBYTE(v66) = 12;
    sub_24A67F050(&qword_27EF5E560, type metadata accessor for FMIPUnknownItemUTMetadata);
    sub_24A82DA84();
    LOBYTE(v66) = 13;
    v31 = sub_24A82DA54();
    LOBYTE(v66) = 14;
    v44 = sub_24A82DA54();
    LOBYTE(v66) = 15;
    sub_24A82DA64();
    v33 = v32;
    v35 = v54;
    v34 = v55;
    v54[v15[15]] = v53;
    v36 = v51;
    *&v35[v15[13]] = v50;
    v37 = &v35[v15[6]];
    v38 = v52;
    *v37 = v36;
    v37[1] = v38;
    (*(v61 + 16))(v35, v64, v34);
    v35[v15[16]] = v49 & 1;
    v35[v15[7]] = v48 & 1;
    v66 = v47;

    sub_24A7883D8(&v66);

    (*(v61 + 8))(v64, v55);
    (*(v22 + 8))(v29, v63);
    v39 = v54;
    *&v54[v15[8]] = v66;
    v40 = (v39 + v15[5]);
    v41 = v46;
    *v40 = v45;
    v40[1] = v41;
    sub_24A78B7D0(v60, v39 + v15[9], type metadata accessor for FMIPProductType);
    *(v39 + v15[10]) = v30;
    *(v39 + v15[14]) = 0;
    *(v39 + v15[12]) = 0;
    v42 = v15[11];
    sub_24A78B7D0(v59, v39 + v42, type metadata accessor for FMIPUnknownItemUTMetadata);
    (*(v56 + 56))(v39 + v42, 0, 1, v58);
    *(v39 + v15[17]) = v31 & 1;
    *(v39 + v15[18]) = v44 & 1;
    *(v39 + v15[19]) = v33;
    sub_24A78B7D0(v39, v57, type metadata accessor for FMIPUnknownItem);
  }

  return sub_24A6876E8(v65);
}

void FMIPUnknownItem.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  sub_24A6BBA94(&qword_27EF5DD10, &unk_24A839DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A838490;
  v4 = *MEMORY[0x277D497D0];
  *(inited + 32) = *MEMORY[0x277D497D0];
  v5 = *MEMORY[0x277D49790];
  *(inited + 40) = 4;
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D497A0];
  *(inited + 56) = 256;
  *(inited + 64) = v6;
  *(inited + 72) = 64;
  v157 = v4;
  v7 = v5;
  v8 = v6;
  v9 = sub_24A78A1B8(inited);
  swift_setDeallocating();
  sub_24A6BBA94(&qword_27EF5DD18, &unk_24A8384D0);
  swift_arrayDestroy();
  v10 = *MEMORY[0x277D497C0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v167[0] = v9;
  sub_24A784AB0(0x2000, v10, isUniquelyReferenced_nonNull_native);
  v12 = v9 + 64;
  v13 = 1 << v9[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v167[0] + 8);
  v16 = (v13 + 63) >> 6;
  v159 = v167[0];

  v156 = MEMORY[0x277D84F90];
  for (i = 0; v15; *&v156[8 * v27 + 32] = v2)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (i << 9) | (8 * v20);
      v2 = *(*(v159 + 7) + v21);
      v22 = *(*(v159 + 6) + v21);
      v23 = [a1 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
      v24 = sub_24A82CEF4();

      if (*(v24 + 16))
      {
        sub_24A77EF00(v22);
        if (v25)
        {
          break;
        }
      }

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v156 = sub_24A7801A0(0, *(v156 + 2) + 1, 1, v156, &qword_27EF5E780, &qword_24A838D88);
    }

    v27 = *(v156 + 2);
    v26 = *(v156 + 3);
    if (v27 >= v26 >> 1)
    {
      v156 = sub_24A7801A0((v26 > 1), v27 + 1, 1, v156, &qword_27EF5E780, &qword_24A838D88);
    }

    *(v156 + 2) = v27 + 1;
  }

  while (1)
  {
LABEL_6:
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = v12[v19];
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_10;
    }
  }

  sub_24A6BBA94(&qword_27EF5DD00, &unk_24A839DD0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_24A8327A0;
  *(v28 + 32) = v157;
  v29 = v28 + 32;
  *(v28 + 40) = xmmword_24A835E90;
  v30 = sub_24A78A0C0(v28);
  swift_setDeallocating();
  sub_24A67F378(v29, &qword_27EF5DD08, &unk_24A8384E0);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v162 = MEMORY[0x277D84F90];
  while (v33)
  {
LABEL_27:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = v37 | (v35 << 6);
    v39 = *(*(v30 + 48) + 8 * v38);
    v40 = *(v30 + 56) + 16 * v38;
    v2 = *v40;
    v164 = *(v40 + 8);
    v41 = v39;
    v42 = [a1 taskInformation];
    type metadata accessor for SPBeaconTaskName(0);
    v12 = sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
    sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
    v43 = sub_24A82CEF4();

    if (*(v43 + 16) && (v44 = sub_24A77EF00(v41), (v45 & 1) != 0))
    {
      v46 = *(*(v43 + 56) + 8 * v44);

      v47 = [v46 state];

      if (v47 == v2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_24A7801A0(0, *(v162 + 2) + 1, 1, v162, &qword_27EF5E770, &qword_24A838D78);
        }

        v49 = *(v162 + 2);
        v48 = *(v162 + 3);
        if (v49 >= v48 >> 1)
        {
          v162 = sub_24A7801A0((v48 > 1), v49 + 1, 1, v162, &qword_27EF5E770, &qword_24A838D78);
        }

        *(v162 + 2) = v49 + 1;
        *&v162[8 * v49 + 32] = v164;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_63;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 64 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_27;
    }
  }

  v167[0] = byte_285DBD668;
  sub_24A77E918(v162);
  v2 = byte_285DBD668;
  v12 = a1;
  v50 = [a1 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
  sub_24A67F050(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
  v51 = sub_24A82CEF4();

  if (*(v51 + 16) && (v52 = sub_24A77EF00(v157), (v53 & 1) != 0))
  {
    v54 = *(*(v51 + 56) + 8 * v52);

    v55 = [v54 state];

    if (v55 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24A7801A0(0, *&byte_285DBD668[16] + 1, 1, byte_285DBD668, &qword_27EF5E770, &qword_24A838D78);
      }

      v57 = *(v2 + 2);
      v56 = *(v2 + 3);
      if (v57 >= v56 >> 1)
      {
        v2 = sub_24A7801A0((v56 > 1), v57 + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
      }

      *(v2 + 2) = v57 + 1;
      *&v2[8 * v57 + 32] = 2048;
    }
  }

  else
  {
  }

  if (![a1 connected])
  {
    goto LABEL_49;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v59 = *(v2 + 2);
    v58 = *(v2 + 3);
    if (v59 >= v58 >> 1)
    {
      v2 = sub_24A7801A0((v58 > 1), v59 + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
    }

    *(v2 + 2) = v59 + 1;
    *&v2[8 * v59 + 32] = 64;
LABEL_49:
    v60 = [v12 beaconLocations];
    sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
    v61 = sub_24A82D244();

    v17 = v61;
    if (v61 >> 62)
    {
LABEL_64:
      v76 = v17;
      v62 = sub_24A82D744();
      v17 = v76;
      v155 = v2;
      if (!v62)
      {
LABEL_65:
        v64 = MEMORY[0x277D84F90];
        goto LABEL_66;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v155 = v2;
      if (!v62)
      {
        goto LABEL_65;
      }
    }

    if (v62 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_117:
    v2 = sub_24A7801A0(0, *(v2 + 2) + 1, 1, v2, &qword_27EF5E770, &qword_24A838D78);
  }

  v63 = 0;
  v161 = v17 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  v163 = v62;
  v165 = v17;
  do
  {
    if (v161)
    {
      v65 = MEMORY[0x24C21D180](v63);
    }

    else
    {
      v65 = *(v17 + 8 * v63 + 32);
    }

    v66 = v65;
    FMIPLocation.init(beaconLocation:)(v66, v167);
    v67 = v167[0];
    v68 = BYTE1(v167[0]);
    v69 = BYTE2(v167[0]);
    v70 = BYTE3(v167[0]);
    v71 = v167[1];
    v72 = v167[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_24A77FE20(0, *(v64 + 2) + 1, 1, v64);
    }

    v74 = *(v64 + 2);
    v73 = *(v64 + 3);
    if (v74 >= v73 >> 1)
    {
      v64 = sub_24A77FE20((v73 > 1), v74 + 1, 1, v64);
    }

    ++v63;

    *(v64 + 2) = v74 + 1;
    v75 = &v64[24 * v74];
    v75[32] = v67;
    v75[33] = v68;
    v75[34] = v69;
    v75[35] = v70;
    *(v75 + 5) = v71;
    *(v75 + 6) = v72;
    v17 = v165;
  }

  while (v163 != v63);
LABEL_66:

  v77 = [a1 name];
  v78 = sub_24A82CFC4();
  v80 = v79;

  v81 = type metadata accessor for FMIPUnknownItem();
  v82 = (a2 + v81[5]);
  *v82 = v78;
  v82[1] = v80;
  v83 = a2;
  v84 = [a1 identifier];
  sub_24A82CA84();

  *(a2 + v81[16]) = [a1 isAppleAudioAccessory];
  v167[0] = v64;

  sub_24A7883D8(v167);

  *(a2 + v81[8]) = v167[0];
  v85 = [a1 handle];
  if (v85)
  {
    v86 = v85;
    v87 = [v85 destination];

    v88 = sub_24A82CFC4();
    v90 = v89;

    v83 = a2;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  v91 = (v83 + v81[6]);
  *v91 = v88;
  v91[1] = v90;
  *(v83 + v81[7]) = [a1 isIgnored];
  v92 = v81[9];
  v93 = a1;
  sub_24A6D0128(v93, v83 + v92);
  v94 = [v93 observationType];
  if (v94)
  {
    v96 = v156;
    if (v94 != 1)
    {
      sub_24A82D934();
      __break(1u);
      return;
    }

    v95 = 1;
  }

  else
  {
    v95 = 0;
    v96 = v156;
  }

  *(v83 + v81[10]) = v95;
  v97 = [v93 alertState];
  if (v97 >= 5)
  {
    v98 = 4;
  }

  else
  {
    v98 = v97;
  }

  *(v83 + v81[15]) = v98;
  *(v83 + v81[17]) = [v93 isFindMyNetwork];
  *(v83 + v81[18]) = [v93 isPosh];
  v99 = *(v96 + 2);
  if (v99)
  {
    v100 = 0;
    v101 = (v96 + 32);
    do
    {
      v103 = *v101++;
      v102 = v103;
      if ((v103 & ~v100) == 0)
      {
        v102 = 0;
      }

      v100 |= v102;
      --v99;
    }

    while (v99);
  }

  else
  {
    v100 = 0;
  }

  v104 = [v93 productInformation];
  v105 = v81[11];
  if (v104)
  {
    v106 = v104;
    FMIPUnknownItemUTMetadata.init(productInfo:)(v106, (v83 + v105));
    v107 = type metadata accessor for FMIPUnknownItemUTMetadata();
    (*(*(v107 - 8) + 56))(v83 + v105, 0, 1, v107);
    v108 = ([v106 capabilities] << 12) & 0x8000 | v100;
    v109 = [v106 capabilities];

    v110 = (v100 >> 16) & 1;
    if ((v109 & 4) == 0)
    {
      LODWORD(v110) = 1;
    }

    if (v110)
    {
      v100 = v108;
    }

    else
    {
      v100 = v108 | 0x10000;
    }

    v83 = a2;
  }

  else
  {
    v111 = type metadata accessor for FMIPUnknownItemUTMetadata();
    (*(*(v111 - 8) + 56))(v83 + v105, 1, 1, v111);
  }

  *(v83 + v81[13]) = v100;
  *(v83 + v81[12]) = v93;
  v112 = *(v155 + 2);
  if (v112)
  {
    v113 = 0;
    v114 = (v155 + 32);
    do
    {
      v116 = *v114++;
      v115 = v116;
      if ((v116 & ~v113) == 0)
      {
        v115 = 0;
      }

      v113 |= v115;
      --v112;
    }

    while (v112);
  }

  else
  {
    v113 = 0;
  }

  v117 = v93;

  *(v83 + v81[14]) = v113;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v118 = sub_24A82CDC4();
  sub_24A6797D0(v118, qword_281518F88);
  v119 = v117;
  v120 = sub_24A82CD94();
  v121 = sub_24A82D504();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v167[0] = v166;
    *v122 = 136316162;
    v123 = [v119 productInformation];
    if (v123)
    {
      v124 = v123;
      v125 = [v123 modelName];

      v126 = sub_24A82CFC4();
      v128 = v127;
    }

    else
    {
      v128 = 0xE300000000000000;
      v126 = 7104878;
    }

    v129 = sub_24A68761C(v126, v128, v167);

    *(v122 + 4) = v129;
    *(v122 + 12) = 1024;
    LODWORD(v129) = [v119 isFindMyNetwork];

    *(v122 + 14) = v129;
    *(v122 + 18) = 2080;
    v130 = [v119 taskInformation];
    v131 = sub_24A82CEF4();

    if (*(v131 + 16))
    {
      v132 = sub_24A77EF00(v157);
      if (v133)
      {
        v134 = *(*(v131 + 56) + 8 * v132);
      }
    }

    sub_24A6BBA94(&qword_27EF5DD38, &qword_24A839DE0);
    v135 = sub_24A82D024();
    v137 = sub_24A68761C(v135, v136, v167);

    *(v122 + 20) = v137;
    *(v122 + 28) = 2080;
    v138 = [v119 taskInformation];
    v139 = sub_24A82CEF4();

    if (*(v139 + 16))
    {
      v140 = sub_24A77EF00(*MEMORY[0x277D497F8]);
      if (v141)
      {
        v142 = *(*(v139 + 56) + 8 * v140);
      }
    }

    v143 = sub_24A82D024();
    v145 = sub_24A68761C(v143, v144, v167);

    *(v122 + 30) = v145;
    *(v122 + 38) = 2080;
    v146 = [v119 taskInformation];
    sub_24A82CEF4();

    v147 = sub_24A82CF04();
    v149 = v148;

    v150 = sub_24A68761C(v147, v149, v167);

    *(v122 + 40) = v150;
    _os_log_impl(&dword_24A675000, v120, v121, "FMIPUnknownItem: Initialized model: %s\nFMIPUnknownItem: isFindMyNetwork: %{BOOL}d\nFMIPUnknownItem: taskInfo -> play sound %s\nFMIPUnknownItem: taskInfo -> stop sound %s\nFMIPUnknownItem: allTaskInfo ->  %s", v122, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v166, -1, -1);
    MEMORY[0x24C21E1D0](v122, -1, -1);

    v83 = a2;
  }

  else
  {
  }

  v151 = [v119 productInformation];

  v152 = 20.0;
  if (v151)
  {
    [v151 rangeDistanceInMeters];
    v154 = v153;

    if (v154 != 0.0)
    {
      v152 = v154;
    }
  }

  *(v83 + v81[19]) = v152;
}

uint64_t FMIPUnknownItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5E570, &unk_24A8384F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7882DC();
  sub_24A82DD84();
  v11 = type metadata accessor for FMIPUnknownItem();
  LOBYTE(v24) = *(v3 + v11[15]);
  v25 = 0;
  sub_24A78A2A4();
  sub_24A82DB44();
  if (!v2)
  {
    *&v24 = *(v3 + v11[13]);
    v25 = 1;
    sub_24A714ADC();
    sub_24A82DB44();
    v24 = *(v3 + v11[6]);
    v25 = 2;
    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();
    LOBYTE(v24) = 3;
    sub_24A82CAA4();
    sub_24A67F050(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    sub_24A82DB44();
    v12 = *(v3 + v11[16]);
    LOBYTE(v24) = 4;
    sub_24A82DB14();
    v13 = *(v3 + v11[7]);
    LOBYTE(v24) = 5;
    sub_24A82DB14();
    *&v24 = *(v3 + v11[8]);
    v25 = 6;
    sub_24A6BBA94(&qword_27EF5E540, &unk_24A8384C0);
    sub_24A78A2F8(&qword_27EF5E580, sub_24A6CCE5C);
    sub_24A82DB44();
    v14 = v11[9];
    LOBYTE(v24) = 8;
    type metadata accessor for FMIPProductType();
    sub_24A67F050(&qword_27EF5E588, type metadata accessor for FMIPProductType);
    sub_24A82DB44();
    LOBYTE(v24) = *(v3 + v11[10]);
    v25 = 9;
    sub_24A78A370();
    sub_24A82DB44();
    v15 = *(v3 + v11[14]);
    LOBYTE(v24) = 10;
    sub_24A82DB34();
    v16 = v11[11];
    LOBYTE(v24) = 12;
    sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
    sub_24A78A3C4();
    sub_24A82DB44();
    v17 = (v3 + v11[5]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v24) = 7;
    sub_24A82DB04();
    v20 = *(v3 + v11[17]);
    LOBYTE(v24) = 13;
    sub_24A82DB14();
    v21 = *(v3 + v11[18]);
    LOBYTE(v24) = 14;
    sub_24A82DB14();
    v22 = *(v3 + v11[19]);
    LOBYTE(v24) = 15;
    sub_24A82DB24();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMIPUnknownItem.debugDescription.getter()
{
  v1 = v0;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x6E6B6E5550494D46, 0xEF6D6574496E776FLL);
  MEMORY[0x24C21C9E0](0x69746E656469203ALL, 0xEE00203A72656966);
  sub_24A82CAA4();
  sub_24A67F050(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0x6E6168202020200ALL, 0xEE0027203A656C64);
  v3 = type metadata accessor for FMIPUnknownItem();
  v4 = (v0 + v3[6]);
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xEA00000000002165;
    v5 = 0x6C646E6168206F6ELL;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8478E0);
  v7 = *(v0 + v3[8]);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 24 * v8;
    v25 = *(v9 + 8);
    v29 = *(v9 + 9);
    v30 = *(v9 + 10);
    v31 = *(v9 + 11);
    v32 = *(v9 + 16);
    v33 = *(v9 + 24);
    v10 = FMIPLocation.debugDescription.getter();
    v12 = v11;
  }

  else
  {
    v10 = 1701736270;
    v12 = 0xE400000000000000;
  }

  MEMORY[0x24C21C9E0](v10, v12);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A847900);
  if (*(v0 + v3[7]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + v3[7]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v13, v14);

  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A847920);
  if (*(v0 + v3[17]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + v3[17]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v15, v16);

  MEMORY[0x24C21C9E0](0x7974202020200A27, 0xED000027203A6570);
  v17 = v3[9];
  type metadata accessor for FMIPProductType();
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000018, 0x800000024A847940);
  v26 = *(v1 + v3[10]);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A847960);
  v18 = sub_24A82D224();
  v19 = [v18 description];
  v20 = sub_24A82CFC4();
  v22 = v21;

  MEMORY[0x24C21C9E0](v20, v22);

  MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A847980);
  v27 = *(v1 + v3[13]);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x7473202020200A27, 0xEE0027203A657461);
  v28 = *(v1 + v3[14]);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8479A0);
  LOBYTE(v28) = *(v1 + v3[15]);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0xD00000000000001ELL, 0x800000024A8479C0);
  v23 = *(v1 + v3[19]);
  sub_24A82D374();
  MEMORY[0x24C21C9E0](4065831, 0xE300000000000000);
  return 0;
}

uint64_t FMIPUnknownItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  sub_24A82CAA4();
  sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
  sub_24A82CF64();
  v13 = type metadata accessor for FMIPUnknownItem();
  v14 = (v1 + v13[5]);
  v15 = *v14;
  v16 = v14[1];
  sub_24A82D094();
  v17 = (v1 + v13[6]);
  if (v17[1])
  {
    v18 = *v17;
    sub_24A82DCE4();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v19 = *(v1 + v13[7]);
  sub_24A82DCE4();
  sub_24A789570(a1, *(v1 + v13[8]));
  v20 = v1 + v13[9];
  FMIPProductType.hash(into:)();
  MEMORY[0x24C21D5E0](*(v2 + v13[10]));
  sub_24A67E964(v2 + v13[11], v12, &qword_27EF5E520, &qword_24A8384B0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    sub_24A78B7D0(v12, v8, type metadata accessor for FMIPUnknownItemUTMetadata);
    sub_24A82DCE4();
    FMIPUnknownItemUTMetadata.hash(into:)();
    sub_24A78B838(v8, type metadata accessor for FMIPUnknownItemUTMetadata);
  }

  v21 = *(v2 + v13[12]);
  sub_24A82DCE4();
  if (v21)
  {
    v22 = v21;
    sub_24A82D5F4();
  }

  MEMORY[0x24C21D5E0](*(v2 + v13[13]));
  MEMORY[0x24C21D5E0](*(v2 + v13[14]));
  MEMORY[0x24C21D5E0](*(v2 + v13[15]));
  v23 = *(v2 + v13[16]);
  sub_24A82DCE4();
  v24 = *(v2 + v13[17]);
  sub_24A82DCE4();
  v25 = *(v2 + v13[18]);
  sub_24A82DCE4();
  v26 = *(v2 + v13[19]);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  return MEMORY[0x24C21D610](*&v26);
}

uint64_t FMIPUnknownItem.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77E79C()
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77E7E0()
{
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A77E820(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A77FE20(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A77E918(uint64_t result)
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

  result = sub_24A7801A0(result, v12, 1, v3, &qword_27EF5E770, &qword_24A838D78);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_24A77EA14(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A780414(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A77EB80(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_24A692304(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A77ECDC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A780958(result, v11, 1, v3, &qword_27EF5E658, &qword_24A838C60, type metadata accessor for SPBeaconType);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for SPBeaconType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_24A77EDF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24A82CAA4();
  sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
  v5 = sub_24A82CF54();

  return sub_24A77F1F4(a1, v5);
}

unint64_t sub_24A77EE94(void *a1)
{
  v3 = *(v1 + 40);
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)();
  v4 = sub_24A82DD24();

  return sub_24A77F3B4(a1, v4);
}

unint64_t sub_24A77EF00(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24A82CFC4();
  sub_24A82DCC4();
  sub_24A82D094();
  v4 = sub_24A82DD24();

  return sub_24A77F920(a1, v4);
}

unint64_t sub_24A77EF90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24A82D7B4();

  return sub_24A77FA24(a1, v5);
}

unint64_t sub_24A77EFD4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24A82DCC4();
  sub_24A82D094();

  v4 = sub_24A82DD24();

  return sub_24A77FAEC(a1, v4);
}

unint64_t sub_24A77F0D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24A82DCC4();
  type metadata accessor for CFString(0);
  sub_24A67F050(&qword_27EF5E748, type metadata accessor for CFString);
  sub_24A82CD74();
  v4 = sub_24A82DD24();

  return sub_24A77FCA4(a1, v4);
}

unint64_t sub_24A77F188(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](a1);
  v4 = sub_24A82DD24();

  return sub_24A77FDB0(a1, v4);
}

unint64_t sub_24A77F1F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24A67F050(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
      v16 = sub_24A82CF84();
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

unint64_t sub_24A77F3B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CAE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v50 = sub_24A6BBA94(&qword_27EF5D838, qword_24A834550);
  v14 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v16 = &v41 - v15;
  v51 = type metadata accessor for FMReverseGeocodingRequest();
  v17 = *(*(v51 - 1) + 64);
  MEMORY[0x28223BE20](v51);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v3 + 64;
  v22 = -1 << *(v3 + 32);
  v23 = a2 & ~v22;
  if ((*(v3 + 64 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v44 = v13;
    v52 = ~v22;
    v46 = (v7 + 48);
    v47 = v3 + 64;
    v25 = *a1;
    v24 = a1[1];
    v41 = (v7 + 32);
    v43 = (v7 + 8);
    v53 = *(v18 + 72);
    v54 = v24;
    v26 = &unk_24A8343F0;
    v48 = v3;
    v49 = a1;
    v45 = v25;
    do
    {
      sub_24A78B768(*(v3 + 48) + v53 * v23, v20, type metadata accessor for FMReverseGeocodingRequest);
      v27 = *v20 == v25 && v20[1] == v54;
      if (!v27 && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v28 = v26;
      v29 = v20[2];
      v30 = a1[2];
      if ((sub_24A82D5E4() & 1) == 0)
      {
        goto LABEL_5;
      }

      v31 = v51[6];
      v32 = v26;
      v33 = *(v50 + 48);
      sub_24A67E964(v20 + v31, v16, &qword_27EF5E930, v28);
      sub_24A67E964(a1 + v31, &v16[v33], &qword_27EF5E930, v28);
      v34 = *v46;
      if ((*v46)(v16, 1, v6) == 1)
      {
        v35 = v34(&v16[v33], 1, v6);
        v21 = v47;
        v3 = v48;
        if (v35 != 1)
        {
          goto LABEL_4;
        }

        v26 = v28;
        sub_24A67F378(v16, &qword_27EF5E930, v28);
        a1 = v49;
        v25 = v45;
      }

      else
      {
        v36 = v44;
        sub_24A67E964(v16, v44, &qword_27EF5E930, v28);
        if (v34(&v16[v33], 1, v6) == 1)
        {
          (*v43)(v36, v6);
          v21 = v47;
          v3 = v48;
LABEL_4:
          sub_24A67F378(v16, &qword_27EF5D838, qword_24A834550);
          a1 = v49;
          v26 = v28;
          v25 = v45;
          goto LABEL_5;
        }

        v37 = v42;
        (*v41)(v42, &v16[v33], v6);
        sub_24A67F050(&qword_27EF5D840, MEMORY[0x277CC9788]);
        v38 = sub_24A82CF84();
        v39 = *v43;
        (*v43)(v37, v6);
        v39(v36, v6);
        sub_24A67F378(v16, &qword_27EF5E930, v32);
        v3 = v48;
        a1 = v49;
        v21 = v47;
        v26 = v32;
        v25 = v45;
        if ((v38 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (*(v20 + v51[7]) == *(a1 + v51[7]) && *(v20 + v51[8]) == *(a1 + v51[8]))
      {
        sub_24A78B838(v20, type metadata accessor for FMReverseGeocodingRequest);
        return v23;
      }

LABEL_5:
      sub_24A78B838(v20, type metadata accessor for FMReverseGeocodingRequest);
      v23 = (v23 + 1) & v52;
    }

    while (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  return v23;
}

unint64_t sub_24A77F920(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24A82CFC4();
      v9 = v8;
      if (v7 == sub_24A82CFC4() && v9 == v10)
      {
        break;
      }

      v12 = sub_24A82DC04();

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

unint64_t sub_24A77FA24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A78B6B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C21D0D0](v9, a1);
      sub_24A78B714(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A77FAEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x626154736D657469 : 0xD000000000000010;
      v8 = v6 == 2 ? 0xEF64656C62616E45 : 0x800000024A843F00;
      v9 = 0xD000000000000019;
      v10 = *(*(v23 + 48) + v4) ? 0xD000000000000014 : 0xD000000000000019;
      v11 = *(*(v23 + 48) + v4) ? 0x800000024A843ED0 : 0x800000024A843EB0;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v7;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v8;
      v14 = v5 == 2 ? 0x626154736D657469 : 0xD000000000000010;
      v15 = v5 == 2 ? 0xEF64656C62616E45 : 0x800000024A843F00;
      if (v5)
      {
        v9 = 0xD000000000000014;
        v16 = 0x800000024A843ED0;
      }

      else
      {
        v16 = 0x800000024A843EB0;
      }

      v17 = v5 <= 1 ? v9 : v14;
      v18 = v5 <= 1 ? v16 : v15;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_24A82DC04();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24A77FCA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_24A67F050(&qword_27EF5E748, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24A82CD64();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A77FDB0(unsigned __int8 a1, uint64_t a2)
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

char *sub_24A77FE20(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_24A77FF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E7A8, &qword_24A838DB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A78006C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E7B0, qword_24A838DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A7801A0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A6BBA94(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_24A7802EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA48, &qword_24A8352D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 352);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[352 * v8])
    {
      memmove(v12, v13, 352 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A780414(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A78056C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E758, &qword_24A838D68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A7806BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E6C8, &unk_24A838CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_24A7807D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_24A6BBA94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24A780958(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
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
    sub_24A6BBA94(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24A780A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA88, &qword_24A838C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A780BB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5E730, &qword_24A838D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24A780CBC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E710, &qword_24A838D38);
  v43 = a2;
  result = sub_24A82D964();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        sub_24A6BB350(v45);
      }

      v29 = *(v14 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A781098(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5D038, &qword_24A830E48);
  v39 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A781354(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E788, &unk_24A838D90);
  v36 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_24A82CFC4();
      sub_24A82DCC4();
      sub_24A82D094();
      v25 = sub_24A82DD24();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A781610(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DF38, &qword_24A837158);
  v41 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v44 = *(v26 + 1);
      v45 = *v26;
      v42 = *(v26 + 3);
      v43 = *(v26 + 2);
      v27 = *(v26 + 8);
      v28 = *(v26 + 16);
      if ((v41 & 1) == 0)
      {

        v29 = v27;
      }

      v30 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v45;
      *(v18 + 1) = v44;
      *(v18 + 2) = v43;
      *(v18 + 3) = v42;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24A781904(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E6D8, &qword_24A838D00);
  v44 = a2;
  result = sub_24A82D964();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24A78B908(v31, v45);
      }

      else
      {
        sub_24A67E964(v31, v45, &unk_27EF5E150, &unk_24A83CCC0);
      }

      v32 = *(v12 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24A78B908(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24A781C58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A82CAE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v78 - v12;
  v84 = type metadata accessor for FMReverseGeocodingRequest();
  v88 = *(v84 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v84);
  v16 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E6D0, &qword_24A838CF8);
  v89 = a2;
  v19 = sub_24A82D964();
  v20 = v19;
  if (*(v17 + 16))
  {
    v21 = 0;
    v22 = *(v17 + 64);
    v79 = v3;
    v80 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v86 = (v7 + 48);
    v87 = v6;
    v81 = (v7 + 8);
    v82 = (v7 + 32);
    v27 = v19 + 64;
    v28 = v84;
    v85 = v26;
    while (v25)
    {
      v41 = __clz(__rbit64(v25));
      v42 = (v25 - 1) & v25;
LABEL_17:
      v46 = v41 | (v21 << 6);
      v111 = v42;
      v47 = *(v17 + 48);
      v110 = *(v88 + 72);
      if (v89)
      {
        sub_24A78B7D0(v47 + v110 * v46, v16, type metadata accessor for FMReverseGeocodingRequest);
        v48 = *(v17 + 56) + 288 * v46;
        v49 = *(v48 + 16);
        v90 = *v48;
        v91 = v49;
        v50 = *(v48 + 48);
        v92 = *(v48 + 32);
        v93 = v50;
        v51 = *(v48 + 80);
        v94 = *(v48 + 64);
        v95 = v51;
        v52 = *(v48 + 112);
        v96 = *(v48 + 96);
        v97 = v52;
        v53 = *(v48 + 144);
        v98 = *(v48 + 128);
        v99 = v53;
        v54 = *(v48 + 168);
        v100 = *(v48 + 160);
        v102 = v54;
        v55 = *(v48 + 192);
        v101 = *(v48 + 176);
        v56 = *(v48 + 208);
        v57 = *(v48 + 224);
        v103 = v55;
        v104 = v56;
        v58 = *(v48 + 240);
        v107 = *(v48 + 256);
        v105 = v57;
        v106 = v58;
        v59 = *(v48 + 272);
        v108 = *(v48 + 280);
        v109 = v59;
      }

      else
      {
        sub_24A78B768(v47 + v110 * v46, v16, type metadata accessor for FMReverseGeocodingRequest);
        memcpy(v113, (*(v17 + 56) + 288 * v46), sizeof(v113));
        v108 = *(&v113[17] + 1);
        v109 = *&v113[17];
        v106 = v113[15];
        v107 = v113[16];
        v104 = v113[13];
        v105 = v113[14];
        v103 = v113[12];
        v101 = v113[11];
        v102 = *(&v113[10] + 1);
        v100 = *&v113[10];
        v98 = v113[8];
        v99 = v113[9];
        v96 = v113[6];
        v97 = v113[7];
        v94 = v113[4];
        v95 = v113[5];
        v92 = v113[2];
        v93 = v113[3];
        v90 = v113[0];
        v91 = v113[1];
        sub_24A76ECE4(v113, &v112);
      }

      v60 = *(v20 + 40);
      sub_24A82DCC4();
      v61 = *v16;
      v62 = v16[1];
      sub_24A82D094();
      v63 = v16[2];
      sub_24A82D5F4();
      sub_24A67E964(v16 + v28[6], v13, &qword_27EF5E930, &unk_24A8343F0);
      v64 = v87;
      if ((*v86)(v13, 1, v87) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v65 = v17;
        v66 = v83;
        (*v82)(v83, v13, v64);
        sub_24A82DCE4();
        sub_24A67F050(&qword_27EF5D808, MEMORY[0x277CC9788]);
        sub_24A82CF64();
        v67 = v66;
        v17 = v65;
        v28 = v84;
        (*v81)(v67, v64);
      }

      v68 = *(v16 + v28[7]);
      sub_24A82DCE4();
      v69 = *(v16 + v28[8]);
      sub_24A82DCE4();
      result = sub_24A82DD24();
      v70 = -1 << *(v20 + 32);
      v71 = result & ~v70;
      v72 = v71 >> 6;
      if (((-1 << v71) & ~*(v27 + 8 * (v71 >> 6))) == 0)
      {
        v73 = 0;
        v74 = (63 - v70) >> 6;
        while (++v72 != v74 || (v73 & 1) == 0)
        {
          v75 = v72 == v74;
          if (v72 == v74)
          {
            v72 = 0;
          }

          v73 |= v75;
          v76 = *(v27 + 8 * v72);
          if (v76 != -1)
          {
            v29 = __clz(__rbit64(~v76)) + (v72 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v71) & ~*(v27 + 8 * (v71 >> 6)))) | v71 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      sub_24A78B7D0(v16, *(v20 + 48) + v110 * v29, type metadata accessor for FMReverseGeocodingRequest);
      v30 = *(v20 + 56) + 288 * v29;
      v31 = v91;
      *v30 = v90;
      *(v30 + 16) = v31;
      v32 = v93;
      *(v30 + 32) = v92;
      *(v30 + 48) = v32;
      v33 = v95;
      *(v30 + 64) = v94;
      *(v30 + 80) = v33;
      v34 = v97;
      *(v30 + 96) = v96;
      *(v30 + 112) = v34;
      v35 = v99;
      *(v30 + 128) = v98;
      *(v30 + 144) = v35;
      v36 = v102;
      *(v30 + 160) = v100;
      *(v30 + 168) = v36;
      v37 = v103;
      *(v30 + 176) = v101;
      *(v30 + 192) = v37;
      v38 = v105;
      *(v30 + 208) = v104;
      *(v30 + 224) = v38;
      v39 = v107;
      *(v30 + 240) = v106;
      *(v30 + 256) = v39;
      v40 = v108;
      *(v30 + 272) = v109;
      *(v30 + 280) = v40;
      ++*(v20 + 16);
      v26 = v85;
      v25 = v111;
    }

    v43 = v21;
    result = v80;
    while (1)
    {
      v21 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v21 >= v26)
      {
        break;
      }

      v45 = v80[v21];
      ++v43;
      if (v45)
      {
        v41 = __clz(__rbit64(v45));
        v42 = (v45 - 1) & v45;
        goto LABEL_17;
      }
    }

    if ((v89 & 1) == 0)
    {

      v3 = v79;
      goto LABEL_39;
    }

    v77 = 1 << *(v17 + 32);
    v3 = v79;
    if (v77 >= 64)
    {
      bzero(v80, ((v77 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v80 = -1 << v77;
    }

    *(v17 + 16) = 0;
  }

LABEL_39:
  *v3 = v20;
  return result;
}

uint64_t sub_24A78238C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E688, &unk_24A838C90);
  v43 = a2;
  result = sub_24A82D964();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A782768(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPItem();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E648, &qword_24A838C50);
  v44 = a2;
  result = sub_24A82D964();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24A78B7D0(v31, v45, type metadata accessor for FMIPItem);
      }

      else
      {
        sub_24A78B768(v31, v45, type metadata accessor for FMIPItem);
      }

      v32 = *(v12 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24A78B7D0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for FMIPItem);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24A782AE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPDeviceConnectedState(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E640, &unk_24A838C40);
  v48 = a2;
  result = sub_24A82D964();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24A78B7D0(v31 + v32 * v28, v52, type metadata accessor for FMIPDeviceConnectedState);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_24A78B768(v33 + v32 * v28, v52, type metadata accessor for FMIPDeviceConnectedState);
      }

      v34 = *(v16 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_24A78B7D0(v52, *(v16 + 56) + v32 * v24, type metadata accessor for FMIPDeviceConnectedState);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_24A782F80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E7A0, &qword_24A838DB0);
  v55 = a2;
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v53 = v3;
    v54 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = (v26 + 208 * v25);
      if (v55)
      {
        v58 = *v30;
        v56 = v30[1];
        v57 = *(v30 + 16);
        v63 = *(v30 + 5);
        v64 = *(v30 + 7);
        v65 = *(v30 + 9);
        v66 = *(v30 + 11);
        v62 = *(v30 + 3);
        v60 = v30[14];
        v61 = v30[13];
        v31 = *(v30 + 15);
        v32 = *(v30 + 23);
        v33 = *(v30 + 19);
        v72 = *(v30 + 21);
        v73 = v32;
        v34 = *(v30 + 17);
        v69 = v31;
        v70 = v34;
        v71 = v33;
        v59 = *(v30 + 200);
      }

      else
      {
        *v67 = *v30;
        v35 = *(v30 + 4);
        v37 = *(v30 + 1);
        v36 = *(v30 + 2);
        *&v67[48] = *(v30 + 3);
        *&v67[64] = v35;
        *&v67[16] = v37;
        *&v67[32] = v36;
        v38 = *(v30 + 8);
        v40 = *(v30 + 5);
        v39 = *(v30 + 6);
        *v68 = *(v30 + 7);
        *&v68[16] = v38;
        *&v67[80] = v40;
        *&v67[96] = v39;
        v42 = *(v30 + 10);
        v41 = *(v30 + 11);
        v43 = *(v30 + 9);
        *&v68[73] = *(v30 + 185);
        *&v68[48] = v42;
        *&v68[64] = v41;
        *&v68[32] = v43;
        v59 = v68[88];
        v60 = *v68;
        v61 = *&v67[104];
        v57 = v67[16];
        v56 = *&v67[8];
        v58 = *v67;

        sub_24A71FF60(v67, &v62);
        v64 = *&v67[56];
        v65 = *&v67[72];
        v66 = *&v67[88];
        v62 = *&v67[24];
        v63 = *&v67[40];
        v71 = *&v68[40];
        v72 = *&v68[56];
        v73 = *&v68[72];
        v69 = *&v68[8];
        v70 = *&v68[24];
      }

      v44 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v45 = -1 << *(v8 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v15 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v15 + 8 * v47);
          if (v51 != -1)
          {
            v16 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v46) & ~*(v15 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *&v67[39] = v64;
      *&v67[55] = v65;
      *&v67[71] = v66;
      *&v67[7] = v62;
      *&v67[23] = v63;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v28;
      v17[1] = v29;
      v18 = *(v8 + 56) + 208 * v16;
      *v18 = v58;
      *(v18 + 8) = v56;
      *(v18 + 16) = v57;
      *(v18 + 33) = *&v67[16];
      *(v18 + 17) = *v67;
      *(v18 + 96) = *&v67[79];
      *(v18 + 81) = *&v67[64];
      *(v18 + 65) = *&v67[48];
      *(v18 + 49) = *&v67[32];
      v19 = v70;
      *(v18 + 120) = v69;
      v20 = v72;
      *(v18 + 184) = v73;
      v21 = v71;
      *(v18 + 168) = v20;
      *(v18 + 152) = v21;
      *(v18 + 104) = v61;
      *(v18 + 112) = v60;
      *(v18 + 136) = v19;
      *(v18 + 200) = v59;
      ++*(v8 + 16);
      v5 = v54;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_36;
    }

    v52 = 1 << *(v5 + 32);
    v3 = v53;
    if (v52 >= 64)
    {
      bzero(v10, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v52;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24A7833F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPMonitoredDevice(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E620, &qword_24A838C08);
  v44 = a2;
  result = sub_24A82D964();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24A78B7D0(v31, v45, type metadata accessor for FMIPMonitoredDevice);
      }

      else
      {
        sub_24A78B768(v31, v45, type metadata accessor for FMIPMonitoredDevice);
      }

      v32 = *(v12 + 40);
      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24A78B7D0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for FMIPMonitoredDevice);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24A78376C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E6B0, &qword_24A838CD0);
  result = sub_24A82D964();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_24A6A50DC(v25, v33);
      }

      else
      {
        sub_24A67E168(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_24A6A50DC(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
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
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A783AA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E698, &qword_24A838CA8);
  v43 = a2;
  result = sub_24A82D964();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A783E7C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24A82CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_24A6BBA94(&qword_27EF5E670, &qword_24A838C78);
  v44 = a2;
  result = sub_24A82D964();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24A784250(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_24A6BBA94(a3, a4);
  v48 = a2;
  result = sub_24A82D964();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v44 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v11 + 16);
    v46 = v11;
    v49 = (v11 + 32);
    v25 = result + 64;
    v47 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v28 = (v23 - 1) & v23;
LABEL_17:
      v31 = v27 | (v19 << 6);
      v50 = v28;
      v32 = *(v11 + 72);
      v33 = *(v15 + 48) + v32 * v31;
      if (v48)
      {
        (*v49)(v51, v33, v10);
      }

      else
      {
        (*v45)(v51, v33, v10);
      }

      v34 = *(*(v15 + 56) + v31);
      v35 = *(v18 + 40);
      sub_24A67F050(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v49)(*(v18 + 48) + v32 * v26, v51, v10);
      *(*(v18 + 56) + v26) = v34;
      ++*(v18 + 16);
      v11 = v46;
      v15 = v47;
      v23 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v15 + 32);
    v7 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}