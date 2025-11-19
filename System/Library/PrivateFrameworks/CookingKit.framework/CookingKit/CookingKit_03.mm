uint64_t sub_21A17C71C()
{
  if (qword_27CCFE898 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_21A17C7EC;
  v2 = *(v0 + 32);

  return sub_21A2C39EC(v0 + 16, v2);
}

uint64_t sub_21A17C7EC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_21A17CA4C;
  }

  else
  {
    v5 = sub_21A17C928;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21A17C928()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_21A2F7C64();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_21A2F7C24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  sub_21A199D08(0, 0, v1, &unk_21A2FAA88, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21A17CA4C()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];

  v4 = sub_21A2F7C64();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = sub_21A2F7C24();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_21A199D08(0, 0, v2, &unk_21A2FAA78, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21A17CB70()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A17CBD0()
{
  MEMORY[0x21CED6EE0](0);

  return sub_21A2F79A4();
}

uint64_t sub_21A17CC24()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A17CC80@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21A2F5434();
}

uint64_t sub_21A17CC8C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394();
  }
}

uint64_t sub_21A17CCBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A17D638(&qword_27CCFEC58, type metadata accessor for RecipeCardHostViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 32);
  *(a2 + 16) = v6;
  return sub_21A157F64(v4, v5, v6);
}

uint64_t sub_21A17CD70()
{
  swift_getKeyPath();
  sub_21A17D638(&qword_27CCFEC58, type metadata accessor for RecipeCardHostViewModel);
  sub_21A2F5084();
}

uint64_t sub_21A17CE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_21A2F7C34();
  v6[6] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A17CEEC, v8, v7);
}

uint64_t sub_21A17CEEC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = 0;
  v0[2] = v3;
  sub_21A17D638(&qword_27CCFEC58, type metadata accessor for RecipeCardHostViewModel);
  sub_21A2F5084();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A17D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_21A2F7C34();
  *(v4 + 32) = sub_21A2F7C24();
  v6 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A17D0B0, v6, v5);
}

uint64_t sub_21A17D0B0()
{
  v1 = v0[3];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = xmmword_21A2FA730;
  *(v2 + 40) = 1;
  v0[2] = v1;
  sub_21A17D638(&qword_27CCFEC58, type metadata accessor for RecipeCardHostViewModel);
  sub_21A2F5084();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21A17D1E4()
{
  sub_21A157FBC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC10CookingKit23RecipeCardHostViewModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A17D2AC(uint64_t a1)
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

__n128 sub_21A17D2C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A17D2DC(uint64_t a1, unsigned int a2)
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

uint64_t sub_21A17D324(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21A17D368(uint64_t result, unsigned int a2)
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

void sub_21A17D3D8()
{
  type metadata accessor for RecipeToken();
  if (v0 <= 0x3F)
  {
    sub_21A17D474();
    if (v1 <= 0x3F)
    {
      sub_21A17D508();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A17D474()
{
  if (!qword_27CCFEC38)
  {
    type metadata accessor for RecipeCardHostViewModel(255);
    sub_21A17D638(&qword_27CCFEC40, type metadata accessor for RecipeCardHostViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFEC38);
    }
  }
}

void sub_21A17D508()
{
  if (!qword_27CCFEC48)
  {
    sub_21A2F57F4();
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFEC48);
    }
  }
}

unint64_t sub_21A17D580()
{
  result = qword_27CCFEC50;
  if (!qword_27CCFEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEC50);
  }

  return result;
}

uint64_t sub_21A17D638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A17D680()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A17D6D4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v3 = *a2;
    v2 = *(a2 + 8);
    v4 = *a1;
    v5 = *(*a1 + 40);
    v6 = *(*a1 + 48);
    sub_21A157F64(*a2, v2, 0);
    sub_21A2F5434();
    LOBYTE(v5) = sub_21A17DB10(v5, v6, v3, v2);

    if (v5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v8);
      sub_21A17D638(&qword_27CCFEC58, type metadata accessor for RecipeCardHostViewModel);
      sub_21A2F5084();
      sub_21A157FBC(v3, v2, 0);
    }

    else
    {
      *(v4 + 40) = v3;
      *(v4 + 48) = v2;
    }
  }

  type metadata accessor for RecipeCardHostContentViewModelSource(0);
  sub_21A17D638(&qword_27CCFEB00, type metadata accessor for RecipeCardHostContentViewModelSource);
  return sub_21A2F75C4();
}

uint64_t sub_21A17D8C0()
{
  sub_21A17E1F0();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A17D8FC@<X0>(uint64_t *a1@<X8>)
{
  sub_21A17D638(&qword_27CCFEC40, type metadata accessor for RecipeCardHostViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A17D974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFEDA8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeCardHostContentViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A17E518(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A17D638(&qword_27CCFEDB0, type metadata accessor for RecipeCardHostContentViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A17E580(v5, v8, type metadata accessor for RecipeCardHostContentViewModelSource);
  }

  return result;
}

uint64_t sub_21A17DAC0@<X0>(void *a1@<X8>)
{
  sub_21A17DF70();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A17DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    if (!a4)
    {

      v4 = 0;
      return v4 & 1;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    v4 = 1;
    return v4 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {
    sub_21A2F5434();
    v4 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();
    sub_21A2F5434();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21A17DBB4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
  sub_21A2F5434();
}

unint64_t sub_21A17DBF4()
{
  result = qword_27CCFEC98;
  if (!qword_27CCFEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEC98);
  }

  return result;
}

uint64_t sub_21A17DC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardHostContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A17DCAC()
{
  v2 = *(type metadata accessor for RecipeCardHostContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21A146070;

  return sub_21A17C344(v0 + v3);
}

uint64_t sub_21A17DD78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A17D018(a1, v4, v5, v6);
}

uint64_t sub_21A17DE2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A146070;

  return sub_21A17CE50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21A17DF0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v7 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_21A157F64(v1, v3, v6);
  return sub_21A157FBC(v4, v5, v7);
}

unint64_t sub_21A17DF70()
{
  result = qword_27CCFECE0;
  if (!qword_27CCFECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFECE0);
  }

  return result;
}

unint64_t sub_21A17DFC4()
{
  result = qword_27CCFED18;
  if (!qword_27CCFED18)
  {
    sub_21A176D98(&qword_27CCFED00);
    sub_21A1772F8(&qword_27CCFED20, &qword_27CCFED08);
    sub_21A1772F8(&qword_27CCFED28, &qword_27CCFECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFED18);
  }

  return result;
}

uint64_t sub_21A17E0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A17E120()
{
  v1 = *(type metadata accessor for RecipeCardHostContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21A17BB68(v2);
}

uint64_t sub_21A17E180(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFECA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A17E1F0()
{
  result = qword_27CCFED88;
  if (!qword_27CCFED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFED88);
  }

  return result;
}

unint64_t sub_21A17E27C()
{
  result = qword_27CCFED90;
  if (!qword_27CCFED90)
  {
    sub_21A176D98(&qword_27CCFECB0);
    sub_21A176D98(&qword_27CCFEC70);
    sub_21A176D98(&qword_27CCFECC0);
    sub_21A176D98(&qword_27CCFEC68);
    sub_21A176D98(&qword_27CCFEC88);
    sub_21A1772F8(&qword_27CCFEC90, &qword_27CCFEC68);
    sub_21A17DBF4();
    sub_21A1772F8(&qword_27CCFECA0, &qword_27CCFEC88);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A17D638(&qword_27CCFED98, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFED90);
  }

  return result;
}

unint64_t sub_21A17E47C()
{
  result = qword_27CCFEDA0;
  if (!qword_27CCFEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEDA0);
  }

  return result;
}

uint64_t sub_21A17E518(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A17E580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A17E61C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21A17E668@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  return sub_21A17FE58(v1 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset, a1);
}

uint64_t sub_21A17E71C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  return sub_21A17FE58(v3 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset, a2);
}

uint64_t sub_21A17E7D0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A17FE58(a1, &v7 - v4);
  return sub_21A17E864(v5);
}

uint64_t sub_21A17E864(uint64_t a1)
{
  v3 = type metadata accessor for ImageAsset(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFEE00);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - v11;
  v13 = sub_21A176C98(&qword_27CCFEDC0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  v21 = OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset;
  sub_21A17FE58(v1 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset, &v29 - v19);
  v22 = *(v9 + 56);
  sub_21A17FE58(v20, v12);
  v30 = a1;
  sub_21A17FE58(a1, &v12[v22]);
  v23 = *(v4 + 48);
  if (v23(v12, 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CCFEDC0);
    if (v23(&v12[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v12, &qword_27CCFEDC0);
      v24 = v30;
LABEL_9:
      sub_21A17FF00(v24, v1 + v21);
      return sub_21A1427A8(v24, &qword_27CCFEDC0);
    }

    goto LABEL_6;
  }

  sub_21A17FE58(v12, v17);
  if (v23(&v12[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CCFEDC0);
    sub_21A17FDA8(v17, type metadata accessor for ImageAsset);
LABEL_6:
    sub_21A1427A8(v12, &qword_27CCFEE00);
    v24 = v30;
    goto LABEL_7;
  }

  sub_21A17FCD8(&v12[v22], v7, type metadata accessor for ImageAsset);
  v27 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v17, v7);
  sub_21A17FDA8(v7, type metadata accessor for ImageAsset);
  sub_21A1427A8(v20, &qword_27CCFEDC0);
  sub_21A17FDA8(v17, type metadata accessor for ImageAsset);
  sub_21A1427A8(v12, &qword_27CCFEDC0);
  v24 = v30;
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = v24;
  v31 = v1;
  sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CCFEDC0);
}

unint64_t sub_21A17EC8C()
{
  swift_getKeyPath();
  sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  sub_21A17F220(v1);
  return v1;
}

void sub_21A17ED40(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  if (!(v2 >> 62))
  {
    if (!(a1 >> 62))
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
    sub_21A2F5084();
    sub_21A17F200(a1);

    return;
  }

  if (v2 >> 62 != 1)
  {
    if (a1 == 0x8000000000000000)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (a1 >> 62 != 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  *(v1 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase) = a1;

  sub_21A17F200(v2);
}

uint64_t sub_21A17EEB4()
{
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset, &qword_27CCFEDC0);
  sub_21A17F200(*(v0 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase));
  v1 = OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_21A17EFC8(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_21A17EFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A17F04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21A17F0AC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21A17F130()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__imageAsset;
  v2 = type metadata accessor for ImageAsset(0);
  v3 = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase) = 0x8000000000000000;
  *(v0 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__didAppear) = 0;
  MEMORY[0x21CED60A0](v3);
  sub_21A2F50C4();
  return v0;
}

void sub_21A17F200(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_21A17F220(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_21A17F240()
{
  sub_21A17F27C();
  sub_21A2F7644();
  return v1;
}

unint64_t sub_21A17F27C()
{
  result = qword_27CCFEDC8;
  if (!qword_27CCFEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEDC8);
  }

  return result;
}

uint64_t sub_21A17F308@<X0>(uint64_t *a1@<X8>)
{
  sub_21A17FC4C(&qword_27CCFEDF8, type metadata accessor for RecipeImageViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A17F380@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFEDE8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeImageViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFEDE8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A17FC4C(&qword_27CCFEDF0, type metadata accessor for RecipeImageViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A17FCD8(v5, v8, type metadata accessor for RecipeImageViewModelSource);
  }

  return result;
}

uint64_t sub_21A17F4DC()
{
  v1 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v65 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v63 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ImageAsset(0);
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v67 = &v62 - v16;
  v17 = sub_21A176C98(&qword_27CCFEDC0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v62 - v23;
  v25 = type metadata accessor for RecipeImageViewModelSource(0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v66 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v62 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v62 - v34;
  v69 = *v0;
  sub_21A17FD40(v0, &v62 - v34, type metadata accessor for RecipeImageViewModelSource);
  sub_21A176C98(&qword_27CCFEDD8);
  sub_21A2F7594();
  v36 = v35;
  v37 = v70;
  sub_21A17FDA8(v36, type metadata accessor for RecipeImageViewModelSource);
  v38 = v69;
  sub_21A17E864(v24);
  sub_21A17FD40(v0, v32, type metadata accessor for RecipeImageViewModelSource);
  sub_21A2F7594();
  sub_21A17FDA8(v32, type metadata accessor for RecipeImageViewModelSource);
  if ((*(v71 + 48))(v21, 1, v37) != 1)
  {
    v42 = v21;
    v43 = v67;
    sub_21A17FCD8(v42, v67, type metadata accessor for ImageAsset);
    v44 = v66;
    sub_21A17FD40(v0, v66, type metadata accessor for RecipeImageViewModelSource);
    sub_21A176C98(&qword_27CCFEDD0);
    sub_21A2F7594();
    sub_21A17FDA8(v44, type metadata accessor for RecipeImageViewModelSource);
    v45 = v72;
    v46 = v68;
    sub_21A17FD40(v43, v68, type metadata accessor for ImageAsset);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v48 = v64;
        sub_21A17FCD8(v46, v64, type metadata accessor for WebImageAsset);
        v49 = sub_21A2F46A4();
        v51 = v50;
        v52 = type metadata accessor for WebImageAsset;
      }

      else
      {
        v48 = v65;
        sub_21A17FCD8(v46, v65, type metadata accessor for LocalImageAsset);
        v49 = sub_21A2F46A4();
        v51 = v54;
        v52 = type metadata accessor for LocalImageAsset;
      }

      sub_21A17FDA8(v48, v52);
      if (*(v45 + 16))
      {
LABEL_12:
        v55 = sub_21A261F58(v49, v51);
        v57 = v56;

        if (v57)
        {
          v58 = *(v45 + 56) + 16 * v55;
          v59 = *v58;
          v60 = *(v58 + 8);
          sub_21A17FE08(*v58, *(v58 + 8));

          if (v60)
          {
            if (v60 == 1)
            {
              v61 = sub_21A2F6F84();
            }

            else
            {
              v61 = v59 | 0x4000000000000000;
            }

            goto LABEL_19;
          }

          sub_21A17FE30(v59, 0);
        }

        else
        {
        }

LABEL_18:
        v61 = 0x8000000000000000;
LABEL_19:
        sub_21A17ED40(v61);
        return sub_21A17FDA8(v43, type metadata accessor for ImageAsset);
      }
    }

    else
    {
      v53 = v63;
      sub_21A17FCD8(v46, v63, type metadata accessor for ExternalImageAsset);
      v49 = *v53;
      v51 = v53[1];
      sub_21A2F5434();
      sub_21A17FDA8(v53, type metadata accessor for ExternalImageAsset);
      if (*(v45 + 16))
      {
        goto LABEL_12;
      }
    }

    goto LABEL_18;
  }

  result = sub_21A1427A8(v21, &qword_27CCFEDC0);
  if ((*(v38 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase) & 0x8000000000000000) != 0)
  {
    *(v38 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase) = 0x8000000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v41);
    *(&v62 - 2) = v38;
    *(&v62 - 1) = 0x8000000000000000;
    v72 = v38;
    sub_21A17FC4C(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A17FC4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21A17FC94()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  *(v2 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase) = v1;
  sub_21A17F220(v1);
  sub_21A17F200(v3);
}

uint64_t sub_21A17FCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A17FD40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A17FDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21A17FE08(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_21A17FE30(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_21A17FE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A17FF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A17FF88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_21A2F7584();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A2F7574();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A18079C(&qword_27CCFEE08, MEMORY[0x277CC5598]);
  sub_21A2F7544();
  sub_21A1806F4(a1, a2);
  sub_21A180514(a1, a2);
  v14 = a1;
  v15 = v33;
  sub_21A180748(v14, a2);
  sub_21A2F7534();
  (*(v6 + 8))(v9, v5);
  v38 = v10;
  v39 = sub_21A18079C(&qword_27CCFEE10, MEMORY[0x277CC5578]);
  v16 = sub_21A156050(&v36);
  (*(v15 + 16))(v16, v13, v10);
  sub_21A142764(&v36, v38);
  sub_21A2F45F4();
  v17 = v34;
  v18 = v35;
  sub_21A142808(&v36);
  sub_21A1803CC(16, v17, v18, &v36);
  v20 = v36;
  v19 = v37;
  v21 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v36 + 16);
      v23 = sub_21A2F4574();
      if (!v23)
      {
LABEL_17:
        sub_21A2F4594();
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v24 = v23;
      v25 = sub_21A2F45A4();
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_15;
      }

      v26 = v22 - v25 + v24;
      sub_21A2F4594();
      if (!v26)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    sub_21A2F4A04();
    sub_21A180748(v20, v19);
    return (*(v15 + 8))(v13, v10);
  }

  if (!v21)
  {
    goto LABEL_13;
  }

  if (v36 > v36 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = sub_21A2F4574();
  if (!v27)
  {
LABEL_19:
    result = sub_21A2F4594();
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = sub_21A2F45A4();
  if (__OFSUB__(v20, v29))
  {
    goto LABEL_16;
  }

  v30 = v20 - v29 + v28;
  result = sub_21A2F4594();
  if (v30)
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21A1803CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_21A180928(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_21A1808C4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_21A2F47F4();
    v15 = v14;
    result = sub_21A180748(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21A180514(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_21A2F7584();
      sub_21A18079C(&qword_27CCFEE08, MEMORY[0x277CC5598]);
      return sub_21A2F7524();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_21A1807E4(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_21A1807E4(v4, v5);
  }

  sub_21A2F7584();
  sub_21A18079C(&qword_27CCFEE08, MEMORY[0x277CC5598]);
  return sub_21A2F7524();
}

uint64_t sub_21A1806F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21A180748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21A18079C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1807E4(uint64_t a1, uint64_t a2)
{
  result = sub_21A2F4574();
  if (!result || (result = sub_21A2F45A4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_21A2F4594();
      sub_21A2F7584();
      sub_21A18079C(&qword_27CCFEE08, MEMORY[0x277CC5598]);
      return sub_21A2F7524();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1808C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21A180928(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RecipeSourceView()
{
  result = qword_27CCFEE30;
  if (!qword_27CCFEE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A180A50()
{
  sub_21A180B24(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
  if (v0 <= 0x3F)
  {
    sub_21A180B24(319, &qword_27CCFEE48, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_21A180B78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A180B24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F5664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A180B78()
{
  if (!qword_27CCFEE50)
  {
    type metadata accessor for RecipeSourceViewModel(255);
    sub_21A18377C(&qword_27CCFEE58, type metadata accessor for RecipeSourceViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFEE50);
    }
  }
}

uint64_t sub_21A180C28@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v81 = sub_21A2F5B94();
  v77 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v2);
  v75 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecipeSourceView();
  v5 = v4 - 8;
  v65 = *(v4 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v71 = sub_21A176C98(&qword_27CCFEE60);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v8);
  v67 = v64 - v9;
  v74 = sub_21A176C98(&qword_27CCFEE68);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v10);
  v70 = v64 - v11;
  v12 = sub_21A176C98(&qword_27CCFEE70);
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v76 = v64 - v14;
  v73 = sub_21A176C98(&qword_27CCFEE78);
  MEMORY[0x28223BE20](v73, v15);
  v80 = v64 - v16;
  v84 = sub_21A176C98(&qword_27CCFEE80);
  MEMORY[0x28223BE20](v84, v17);
  v83 = v64 - v18;
  v86 = sub_21A176C98(&qword_27CCFEE88);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86 - 8, v19);
  v82 = v64 - v20;
  v21 = sub_21A176C98(&qword_27CCFEE90);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v64 - v23;
  v25 = v1;
  v26 = v1 + *(v5 + 32);
  v68 = sub_21A176C98(&qword_27CCFEE28);
  v27 = sub_21A2F7714();
  swift_getKeyPath();
  v88 = v27;
  v66 = sub_21A18377C(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel);
  sub_21A2F5094();

  sub_21A183960(v27 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__target[0], v24, &qword_27CCFEE90);

  v28 = type metadata accessor for RecipeSourceViewModel.Target(0);
  v29 = 1;
  LODWORD(v5) = (*(*(v28 - 8) + 48))(v24, 1, v28);
  sub_21A1427A8(v24, &qword_27CCFEE90);
  if (v5 != 1)
  {
    v64[1] = v26;
    v30 = v25;
    sub_21A18382C(v25, v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeSourceView);
    v31 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v32 = swift_allocObject();
    v33 = sub_21A1837C4(v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for RecipeSourceView);
    MEMORY[0x28223BE20](v33, v34);
    v64[-2] = v25;
    sub_21A176C98(&qword_27CCFEEB0);
    sub_21A182FDC();
    v35 = v67;
    sub_21A2F7094();
    v36 = v75;
    sub_21A2F5B84();
    v37 = sub_21A1772F8(&qword_27CCFEF20, &qword_27CCFEE60);
    v38 = sub_21A18377C(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
    v39 = v70;
    v40 = v71;
    v41 = v81;
    sub_21A2F6AC4();
    (*(v77 + 8))(v36, v41);
    v42 = (*(v69 + 8))(v35, v40);
    MEMORY[0x28223BE20](v42, v43);
    v64[-2] = v30;
    v88 = v40;
    v89 = v41;
    v90 = v37;
    v91 = v38;
    swift_getOpaqueTypeConformance2();
    v44 = v76;
    v45 = v74;
    sub_21A2F6DE4();
    (*(v72 + 8))(v39, v45);
    v46 = sub_21A2F7714();
    swift_getKeyPath();
    v88 = v46;
    sub_21A2F5094();

    v47 = *(v46 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__isAvailable);

    if (v47)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 0.4;
    }

    v49 = v80;
    (*(v78 + 32))(v80, v44, v79);
    *(v49 + *(v73 + 36)) = v48;
    v50 = v83;
    v51 = &v83[*(v84 + 36)];
    v52 = sub_21A176C98(&qword_27CCFEF30);
    sub_21A2F5C44();
    v53 = *(sub_21A2F5BC4() + 20);
    v54 = *MEMORY[0x277CE0118];
    v55 = sub_21A2F5F64();
    (*(*(v55 - 8) + 104))(&v51[v53], v54, v55);
    __asm { FMOV            V0.2D, #10.0 }

    *v51 = _Q0;
    v51[*(v52 + 36)] = 0;
    sub_21A149B18(v49, v50, &qword_27CCFEE78);
    v61 = sub_21A2F7714();
    swift_getKeyPath();
    v88 = v61;
    sub_21A2F5094();

    sub_21A183298();
    v62 = v82;
    sub_21A2F6EB4();
    sub_21A158C6C(v50);
    (*(v87 + 32))(v85, v62, v86);
    v29 = 0;
  }

  return (*(v87 + 56))(v85, v29, 1, v86);
}

uint64_t sub_21A181674()
{
  type metadata accessor for RecipeSourceView();
  sub_21A176C98(&qword_27CCFEE28);
  sub_21A2F7714();
  sub_21A1EC0F8();
}

uint64_t sub_21A1816D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CCFEEE8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v8 = v45 - v7;
  v9 = sub_21A176C98(&qword_27CCFEED8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v45 - v12;
  v14 = sub_21A176C98(&qword_27CCFEEC8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = v45 - v17;
  *v8 = sub_21A2F5F34();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v19 = sub_21A176C98(&qword_27CCFEF58);
  sub_21A181A78(a1, &v8[*(v19 + 44)]);
  LOBYTE(a1) = sub_21A2F6604();
  sub_21A2F55A4();
  v20 = &v8[*(v5 + 44)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_21A2F7344();
  sub_21A2F5C14();
  sub_21A149B18(v8, v13, &qword_27CCFEEE8);
  v25 = &v13[*(v10 + 44)];
  v26 = v45[5];
  *(v25 + 4) = v45[4];
  *(v25 + 5) = v26;
  *(v25 + 6) = v45[6];
  v27 = v45[1];
  *v25 = v45[0];
  *(v25 + 1) = v27;
  v28 = v45[3];
  *(v25 + 2) = v45[2];
  *(v25 + 3) = v28;
  v29 = sub_21A2F7344();
  v31 = v30;
  v32 = &v18[*(v15 + 44)];
  *v32 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v33 = *(type metadata accessor for RecipeCardButtonBackgroundView() + 20);
  *(v32 + v33) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v34 = (v32 + *(sub_21A176C98(&qword_27CCFEF08) + 36));
  *v34 = v29;
  v34[1] = v31;
  sub_21A149B18(v13, v18, &qword_27CCFEED8);
  v35 = (a2 + *(sub_21A176C98(&qword_27CCFEEB0) + 36));
  v36 = *(sub_21A2F5BC4() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_21A2F5F64();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v35 = _Q0;
  *&v35[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
  return sub_21A149B18(v18, a2, &qword_27CCFEEC8);
}

uint64_t sub_21A181A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v114 = sub_21A176C98(&qword_27CCFEF60);
  MEMORY[0x28223BE20](v114, v3);
  v126 = &v107 - v4;
  v124 = sub_21A176C98(&qword_27CCFEF68);
  MEMORY[0x28223BE20](v124, v5);
  v125 = (&v107 - v6);
  v7 = sub_21A176C98(&qword_27CCFEF70);
  v118 = *(v7 - 8);
  v119 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v117 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v115 = &v107 - v12;
  v13 = sub_21A176C98(&qword_27CCFEF78);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v116 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v127 = (&v107 - v18);
  v19 = sub_21A176C98(&qword_27CCFEF80);
  v123 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v109 = &v107 - v21;
  v22 = sub_21A176C98(&qword_27CCFEDC0);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v107 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v110 = &v107 - v27;
  v112 = type metadata accessor for ImageAsset(0);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v28);
  v108 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21A2F5A64();
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v107 - v37;
  v39 = sub_21A176C98(&qword_27CCFEF88);
  v41 = MEMORY[0x28223BE20](v39 - 8, v40);
  v113 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v107 - v44;
  type metadata accessor for RecipeSourceView();
  sub_21A1AC3FC(v38);
  v46 = *MEMORY[0x277CDF988];
  v121 = *(v31 + 104);
  v122 = v31 + 104;
  v121(v35, v46, v30);
  v47 = sub_21A2F5A54();
  v48 = *(v31 + 8);
  v48(v35, v30);
  v48(v38, v30);
  v49 = v19;
  v50 = v45;
  v51 = 1;
  if (v47)
  {
    sub_21A176C98(&qword_27CCFEE28);
    v52 = sub_21A2F7714();
    swift_getKeyPath();
    *&v128 = v52;
    sub_21A18377C(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel);
    sub_21A2F5094();

    v53 = v110;
    sub_21A183960(v52 + OBJC_IVAR____TtC10CookingKit21RecipeSourceViewModel__imageAsset[0], v110, &qword_27CCFEDC0);

    v54 = v111;
    v55 = v112;
    if ((*(v111 + 48))(v53, 1, v112) == 1)
    {
      sub_21A1427A8(v53, &qword_27CCFEDC0);
      v51 = 1;
    }

    else
    {
      v56 = v108;
      sub_21A1837C4(v53, v108, type metadata accessor for ImageAsset);
      v57 = v107;
      sub_21A18382C(v56, v107, type metadata accessor for ImageAsset);
      (*(v54 + 56))(v57, 0, 1, v55);
      v58 = v109;
      sub_21A183960(v57, v109, &qword_27CCFEDC0);
      v59 = v58 + *(sub_21A176C98(&qword_27CCFEFE0) + 52);
      sub_21A2F72B4();
      *(v59 + *(sub_21A176C98(&qword_27CCFEFE8) + 56)) = 256;
      sub_21A1427A8(v57, &qword_27CCFEDC0);
      sub_21A2F7344();
      sub_21A2F57C4();
      v60 = (v58 + *(sub_21A176C98(&qword_27CCFEFF0) + 36));
      v61 = v129;
      *v60 = v128;
      v60[1] = v61;
      v60[2] = v130;
      v62 = (v58 + *(sub_21A176C98(&qword_27CCFEFF8) + 36));
      v63 = v49;
      v64 = *(sub_21A2F5BC4() + 20);
      v65 = *MEMORY[0x277CE0118];
      v66 = sub_21A2F5F64();
      v67 = v62 + v64;
      v49 = v63;
      (*(*(v66 - 8) + 104))(v67, v65, v66);
      __asm { FMOV            V0.2D, #8.0 }

      *v62 = _Q0;
      *(v62 + *(sub_21A176C98(&qword_27CCFEF18) + 36)) = 256;
      LOBYTE(v65) = sub_21A2F6654();
      sub_21A2F55A4();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      sub_21A183894(v56);
      v81 = v58 + *(v63 + 36);
      *v81 = v65;
      *(v81 + 8) = v74;
      *(v81 + 16) = v76;
      *(v81 + 24) = v78;
      *(v81 + 32) = v80;
      *(v81 + 40) = 0;
      sub_21A1838F0(v58, v50);
      v51 = 0;
    }
  }

  (*(v123 + 56))(v50, v51, 1, v49);
  v82 = sub_21A2F6014();
  v83 = v127;
  *v127 = v82;
  v83[1] = 0x4000000000000000;
  *(v83 + 16) = 0;
  v84 = sub_21A176C98(&qword_27CCFEF90);
  sub_21A182718(a1, v83 + *(v84 + 44));
  v85 = sub_21A2F6F94();
  v86 = [objc_opt_self() tertiaryLabelColor];
  v87 = sub_21A2F6EF4();
  v88 = sub_21A176C98(&qword_27CCFEF98);
  v89 = v125;
  v90 = (v125 + *(v88 + 36));
  *v90 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v90 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
  *v89 = v85;
  v89[1] = v87;
  sub_21A2F6784();
  sub_21A2F6724();
  v91 = sub_21A2F6764();

  KeyPath = swift_getKeyPath();
  v93 = (v89 + *(v124 + 36));
  *v93 = KeyPath;
  v93[1] = v91;
  v94 = v126;
  v121(v126, *MEMORY[0x277CDFA10], v30);
  sub_21A18377C(&qword_27CCFEFA0, MEMORY[0x277CDFA28]);
  result = sub_21A2F7874();
  if (result)
  {
    sub_21A183550();
    sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
    v96 = v115;
    sub_21A2F6BC4();
    sub_21A1427A8(v94, &qword_27CCFEF60);
    sub_21A1427A8(v89, &qword_27CCFEF68);
    v97 = v113;
    sub_21A183960(v50, v113, &qword_27CCFEF88);
    v98 = v116;
    sub_21A183960(v83, v116, &qword_27CCFEF78);
    v126 = v50;
    v99 = v117;
    v100 = v118;
    v101 = *(v118 + 16);
    v102 = v119;
    v101(v117, v96, v119);
    v103 = v120;
    sub_21A183960(v97, v120, &qword_27CCFEF88);
    v104 = sub_21A176C98(&qword_27CCFEFD8);
    sub_21A183960(v98, v103 + v104[12], &qword_27CCFEF78);
    v105 = v103 + v104[16];
    *v105 = 0x4020000000000000;
    *(v105 + 8) = 0;
    v101((v103 + v104[20]), v99, v102);
    v106 = *(v100 + 8);
    v106(v96, v102);
    sub_21A1427A8(v127, &qword_27CCFEF78);
    sub_21A1427A8(v126, &qword_27CCFEF88);
    v106(v99, v102);
    sub_21A1427A8(v98, &qword_27CCFEF78);
    return sub_21A1427A8(v97, &qword_27CCFEF88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A182718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49[1] = a1;
  v54 = a2;
  v2 = sub_21A2F6774();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v50 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A176C98(&qword_27CCFF000);
  v6 = v5 - 8;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v53 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v49 - v11;
  sub_21A2F5F54();
  v13 = sub_21A2F69A4();
  v15 = v14;
  v17 = v16;
  sub_21A2F67A4();
  sub_21A2F6724();
  sub_21A2F6764();

  v18 = sub_21A2F68E4();
  v20 = v19;
  v22 = v21;
  v49[0] = v23;

  sub_21A1834EC(v13, v15, v17 & 1);

  v24 = &v12[*(sub_21A176C98(&qword_27CCFF008) + 36)];
  v25 = *(sub_21A176C98(&qword_27CCFF010) + 28);
  v26 = *MEMORY[0x277CE0B48];
  v27 = sub_21A2F68D4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v24 + v25, v26, v27);
  (*(v28 + 56))(v24 + v25, 0, 1, v27);
  *v24 = swift_getKeyPath();
  *v12 = v18;
  *(v12 + 1) = v20;
  v12[16] = v22 & 1;
  *(v12 + 3) = v49[0];
  KeyPath = swift_getKeyPath();
  v30 = &v12[*(sub_21A176C98(&qword_27CCFF018) + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = 1;
  v30[16] = 0;
  v31 = [objc_opt_self() secondaryLabelColor];
  v32 = sub_21A2F6EF4();
  *&v12[*(sub_21A176C98(&qword_27CCFF020) + 36)] = v32;
  v33 = &v12[*(v6 + 44)];
  *v33 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v33 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
  type metadata accessor for RecipeSourceView();
  sub_21A176C98(&qword_27CCFEE28);
  v34 = sub_21A2F7714();
  swift_getKeyPath();
  v55 = v34;
  sub_21A18377C(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel);
  sub_21A2F5094();

  sub_21A2F5434();

  sub_21A2F6784();
  sub_21A2F6724();
  sub_21A2F6764();

  v36 = v50;
  v35 = v51;
  v37 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CE0A10], v52);
  sub_21A2F6794();

  (*(v35 + 8))(v36, v37);
  v38 = sub_21A2F68E4();
  v40 = v39;
  LOBYTE(v35) = v41;
  v43 = v42;

  v44 = swift_getKeyPath();
  v45 = v53;
  sub_21A183960(v12, v53, &qword_27CCFF000);
  v46 = v54;
  sub_21A183960(v45, v54, &qword_27CCFF000);
  v47 = v46 + *(sub_21A176C98(&qword_27CCFF028) + 48);
  *v47 = v38;
  *(v47 + 8) = v40;
  *(v47 + 16) = v35 & 1;
  *(v47 + 24) = v43;
  *(v47 + 32) = v44;
  *(v47 + 40) = 2;
  *(v47 + 48) = 0;
  sub_21A176C88(v38, v40, v35 & 1);
  sub_21A2F5434();

  sub_21A1427A8(v12, &qword_27CCFF000);
  sub_21A1834EC(v38, v40, v35 & 1);

  return sub_21A1427A8(v45, &qword_27CCFF000);
}

uint64_t sub_21A182D24@<X0>(uint64_t a1@<X8>)
{
  sub_21A2F5F54();
  v1 = sub_21A2F69A4();
  v3 = v2;
  v5 = v4;
  v6 = sub_21A2F68C4();
  v8 = v7;
  v22 = v9;
  sub_21A1834EC(v1, v3, v5 & 1);

  type metadata accessor for RecipeSourceView();
  sub_21A176C98(&qword_27CCFEE28);
  sub_21A2F7714();
  swift_getKeyPath();
  sub_21A18377C(&qword_27CCFEE98, type metadata accessor for RecipeSourceViewModel);
  sub_21A2F5094();

  sub_21A2F5434();

  sub_21A1834FC();
  v10 = sub_21A2F69B4();
  v12 = v11;
  LOBYTE(v3) = v13;
  v14 = sub_21A2F68C4();
  v16 = v15;
  v18 = v17;
  v21 = v19;
  sub_21A1834EC(v10, v12, v3 & 1);

  sub_21A1834EC(v6, v8, v22 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_21A182F74()
{
  type metadata accessor for RecipeSourceView();

  return sub_21A181674();
}

unint64_t sub_21A182FDC()
{
  result = qword_27CCFEEB8;
  if (!qword_27CCFEEB8)
  {
    sub_21A176D98(&qword_27CCFEEB0);
    sub_21A183094();
    sub_21A1772F8(&qword_27CCFEF10, &qword_27CCFEF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEEB8);
  }

  return result;
}

unint64_t sub_21A183094()
{
  result = qword_27CCFEEC0;
  if (!qword_27CCFEEC0)
  {
    sub_21A176D98(&qword_27CCFEEC8);
    sub_21A18314C();
    sub_21A1772F8(&qword_27CCFEF00, &qword_27CCFEF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEEC0);
  }

  return result;
}

unint64_t sub_21A18314C()
{
  result = qword_27CCFEED0;
  if (!qword_27CCFEED0)
  {
    sub_21A176D98(&qword_27CCFEED8);
    sub_21A1831D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEED0);
  }

  return result;
}

unint64_t sub_21A1831D8()
{
  result = qword_27CCFEEE0;
  if (!qword_27CCFEEE0)
  {
    sub_21A176D98(&qword_27CCFEEE8);
    sub_21A1772F8(&qword_27CCFEEF0, &qword_27CCFEEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEEE0);
  }

  return result;
}

unint64_t sub_21A183298()
{
  result = qword_27CCFEF38;
  if (!qword_27CCFEF38)
  {
    sub_21A176D98(&qword_27CCFEE80);
    sub_21A183350();
    sub_21A1772F8(&qword_27CCFEF48, &qword_27CCFEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEF38);
  }

  return result;
}

unint64_t sub_21A183350()
{
  result = qword_27CCFEF40;
  if (!qword_27CCFEF40)
  {
    sub_21A176D98(&qword_27CCFEE78);
    sub_21A176D98(&qword_27CCFEE68);
    sub_21A176D98(&qword_27CCFEE60);
    sub_21A2F5B94();
    sub_21A1772F8(&qword_27CCFEF20, &qword_27CCFEE60);
    sub_21A18377C(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEF40);
  }

  return result;
}

uint64_t sub_21A1834EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21A1834FC()
{
  result = qword_27CCFEF50;
  if (!qword_27CCFEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEF50);
  }

  return result;
}

unint64_t sub_21A183550()
{
  result = qword_27CCFEFA8;
  if (!qword_27CCFEFA8)
  {
    sub_21A176D98(&qword_27CCFEF68);
    sub_21A183608();
    sub_21A1772F8(&qword_27CCFE948, &qword_27CCFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEFA8);
  }

  return result;
}

unint64_t sub_21A183608()
{
  result = qword_27CCFEFB0;
  if (!qword_27CCFEFB0)
  {
    sub_21A176D98(&qword_27CCFEF98);
    sub_21A1836C4();
    sub_21A18377C(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEFB0);
  }

  return result;
}

unint64_t sub_21A1836C4()
{
  result = qword_27CCFEFB8;
  if (!qword_27CCFEFB8)
  {
    sub_21A176D98(&qword_27CCFEFC0);
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEFB8);
  }

  return result;
}

uint64_t sub_21A18377C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1837C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A18382C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A183894(uint64_t a1)
{
  v2 = type metadata accessor for ImageAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1838F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A183960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_21A176C98(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1839C8()
{
  result = qword_27CCFF030;
  if (!qword_27CCFF030)
  {
    sub_21A176D98(&qword_27CCFF038);
    sub_21A176D98(&qword_27CCFEE80);
    sub_21A183298();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF030);
  }

  return result;
}

uint64_t sub_21A183A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21A2F4A64();
  v4[6] = swift_task_alloc();
  sub_21A2F7894();
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for RecipeSourceSafari(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for RecipeSourceType();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for RecipeSource(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A183C38, 0, 0);
}

uint64_t sub_21A183C38()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_21A142764(v1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_21A183D68;
  v5 = v0[15];
  v6 = v0[4];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_21A183D68()
{

  return MEMORY[0x2822009F8](sub_21A183E64, 0, 0);
}

uint64_t sub_21A183E64()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  sub_21A18422C(v0[15], v1, type metadata accessor for RecipeSource);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21A184364(v0[15], type metadata accessor for RecipeSource);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v4 = v0[10];
    v5 = v0[8];
    sub_21A1842FC(v0[14], v4, type metadata accessor for RecipeSourceSafari);
    v6 = (v4 + *(v5 + 20));
    if (v6[1])
    {
      v7 = *v6;
      v8 = v6[1];
    }

    else
    {
      v7 = sub_21A2F4744();
      if (!v8)
      {
        sub_21A2F7884();
        sub_21A2F4A54();
        v7 = sub_21A2F7934();
      }
    }

    v9 = v0[15];
    v10 = v0[13];
    v11 = v0[10];
    *v10 = v7;
    v10[1] = v8;
    v12 = *(type metadata accessor for WebRecipeSource() + 20);
    v13 = sub_21A2F4794();
    (*(*(v13 - 8) + 16))(v10 + v12, v11, v13);
    swift_storeEnumTagMultiPayload();
    sub_21A2F5434();
    sub_21A184364(v11, type metadata accessor for RecipeSourceSafari);
    sub_21A184364(v9, type metadata accessor for RecipeSource);
  }

  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  v17 = v0[2];
  sub_21A18422C(v0[3], v17, type metadata accessor for Recipe);
  v18 = *(type metadata accessor for Recipe() + 48);
  sub_21A184294(v17 + v18);
  sub_21A1842FC(v14, v17 + v18, type metadata accessor for RecipeSourceType);
  (*(v15 + 56))(v17 + v18, 0, 1, v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_21A184174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A145E2C;

  return sub_21A183A88(a1, a2, a3, a4);
}

uint64_t sub_21A18422C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A184294(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1842FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A184364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A1843C4(uint64_t *a1)
{
  v338 = a1;
  v329 = *v1;
  v337 = type metadata accessor for CookingSessionCommand(0);
  v3 = MEMORY[0x28223BE20](v337, v2);
  v336 = &v303 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v334 = &v303 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v328 = &v303 - v9;
  v10 = sub_21A176C98(&qword_27CCFF050);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v323 = &v303 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v314 = &v303 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v303 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v322 = &v303 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v315 = &v303 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v326 = &v303 - v28;
  v29 = sub_21A176C98(&qword_27CCFEB38);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v325 = &v303 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v324 = &v303 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v321 = &v303 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v320 = &v303 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v319 = &v303 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v318 = &v303 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v317 = &v303 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v54 = &v303 - v53;
  v56 = MEMORY[0x28223BE20](v52, v55);
  v327 = &v303 - v57;
  MEMORY[0x28223BE20](v56, v58);
  v316 = &v303 - v59;
  v330 = type metadata accessor for CookingSessionCommandAction(0);
  MEMORY[0x28223BE20](v330, v60);
  v331 = &v303 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v62 - 8, v63);
  v65 = &v303 - v64;
  v66 = sub_21A176C98(&qword_27CCFF060);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v68);
  v70 = &v303 - v69;
  v71 = type metadata accessor for Recipe();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v73);
  v332 = &v303 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for CookingSession();
  v77 = MEMORY[0x28223BE20](v75, v76);
  v79 = MEMORY[0x28223BE20](v77, v78);
  v81 = MEMORY[0x28223BE20](v79, &v303 - v80);
  v83 = MEMORY[0x28223BE20](v81, v82);
  v85 = MEMORY[0x28223BE20](v83, v84);
  v87 = &v303 - v86;
  v89 = MEMORY[0x28223BE20](v85, v88);
  v335 = &v303 - v95;
  v333 = v1;
  v96 = v1 + 2;
  v97 = v1[2];
  if (!*(v97 + 16))
  {
    goto LABEL_11;
  }

  v306 = v91;
  v308 = v90;
  v305 = v94;
  v304 = v93;
  v307 = v20;
  v310 = v89;
  v312 = v92;
  v309 = v54;
  v311 = v96;
  v99 = *v338;
  v98 = v338[1];
  swift_bridgeObjectRetain_n();
  v313 = v99;
  v100 = sub_21A261F58(v99, v98);
  if (v101)
  {
    v102 = *(v97 + 56);
    v103 = v312;
    v303 = *(v312 + 72);
    sub_21A18C008(v102 + v303 * v100, v87, type metadata accessor for CookingSession);
    sub_21A18BED0(v87, v335, type metadata accessor for CookingSession);
    (*(v67 + 16))(v70, v333 + OBJC_IVAR____TtC10CookingKit21CookingSessionsSource__importedRecipes, v66);
    sub_21A2F7594();
    (*(v67 + 8))(v70, v66);
    v104 = v339;
    if (v339[2])
    {
      v105 = v98;
      v106 = sub_21A261F58(v313, v98);
      v107 = v338;
      if (v108)
      {
        sub_21A18C008(*(v104 + 56) + *(v72 + 72) * v106, v65, type metadata accessor for Recipe);
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }
    }

    else
    {
      v109 = 1;
      v107 = v338;
      v105 = v98;
    }

    (*(v72 + 56))(v65, v109, 1, v71);

    if ((*(v72 + 48))(v65, 1, v71) == 1)
    {
      swift_bridgeObjectRelease_n();
      sub_21A18BFA8(v335, type metadata accessor for CookingSession);
      sub_21A1427A8(v65, &qword_27CCFF058);
      goto LABEL_11;
    }

    v122 = v332;
    sub_21A18BED0(v65, v332, type metadata accessor for Recipe);
    v123 = v331;
    sub_21A18C008(v107 + *(v337 + 20), v331, type metadata accessor for CookingSessionCommandAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v125 = v335;
          if (EnumCaseMultiPayload == 3)
          {
            v126 = *v123;
            v127 = *v311;
            if (*(*v311 + 16))
            {
              v128 = sub_21A261F58(v313, v105);
              v129 = v325;
              if (v130)
              {
                sub_21A18C008(*(v127 + 56) + v128 * v303, v325, type metadata accessor for CookingSession);
                v131 = 0;
              }

              else
              {
                v131 = 1;
              }
            }

            else
            {
              v131 = 1;
              v129 = v325;
            }

            v216 = v310;
            (*(v103 + 56))(v129, v131, 1, v310);
            if (!(*(v103 + 48))(v129, 1, v216))
            {
              v129[178] = v126;
              goto LABEL_176;
            }

LABEL_174:
            v266 = v327;
            sub_21A183960(v129, v327, &qword_27CCFEB38);
            v267 = v309;
            sub_21A183960(v266, v309, &qword_27CCFEB38);
            sub_21A2C4224(v267, v313, v105);
            sub_21A1427A8(v266, &qword_27CCFEB38);
LABEL_177:
            v237 = v129;
LABEL_178:
            v262 = &qword_27CCFEB38;
            goto LABEL_179;
          }

          sub_21A18BF38(v123, v326);
          v156 = v308;
          sub_21A18C008(v125, v308, type metadata accessor for CookingSession);
          if (*(v156 + 179))
          {
            v158 = *(v156 + 16);
            v157 = *(v156 + 24);
            v159 = *(v156 + 32);
            v160 = sub_21A271A00();
          }

          else
          {
            if (*(v156 + 144))
            {
              if (qword_27CCFE7F0 == -1)
              {
LABEL_72:
                v181 = *(&xmmword_27CCFFB50 + 1);
                v180 = xmmword_27CCFFB50;
                v182 = qword_27CCFFB60;
                goto LABEL_132;
              }

LABEL_223:
              swift_once();
              v156 = v308;
              goto LABEL_72;
            }

            v157 = *(v156 + 128);
            v159 = *(v156 + 136);
            v158 = *(v156 + 120);
            v160 = sub_21A27201C();
          }

          v217 = v160;
          v218 = sub_21A188160(v158, v157, v159, v160);
          if (v219)
          {
            goto LABEL_126;
          }

          v225 = v218 + 1;
          if (!__OFADD__(v218, 1))
          {
            if (v225 < 0 || v225 >= *(v217 + 16))
            {
LABEL_126:
              sub_21A18BFA8(v308, type metadata accessor for CookingSession);

              v141 = v326;
              v220 = v322;
              sub_21A183960(v326, v322, &qword_27CCFF050);
              v221 = sub_21A176C98(&qword_27CCFF070);
              if ((*(*(v221 - 8) + 48))(v220, 1, v221) != 1)
              {
                sub_21A18BE7C();
                v222 = swift_allocError();
                v223 = v222;
                *v224 = 1;
LABEL_169:
                v339 = v222;
                v264 = v222;
                sub_21A176C98(&qword_27CCFF078);
                sub_21A2F7BE4();
                sub_21A1427A8(v141, &qword_27CCFF050);

                v262 = &qword_27CCFF070;
                v237 = v220;
                goto LABEL_179;
              }

LABEL_166:
              sub_21A1427A8(v141, &qword_27CCFF050);
              v237 = v220;
LABEL_167:
              v262 = &qword_27CCFF050;
LABEL_179:
              sub_21A1427A8(v237, v262);
              goto LABEL_180;
            }

            v226 = (v217 + 24 * v225);
            v180 = v226[4];
            v181 = v226[5];
            v182 = v226[6];

            v156 = v308;
LABEL_132:
            sub_21A18BFA8(v156, type metadata accessor for CookingSession);
            v227 = *(v125 + 179) == 0;
            v228 = 152;
            if (*(v125 + 179))
            {
              v228 = 88;
            }

            v229 = 160;
            if (*(v125 + 179))
            {
              v229 = 96;
            }

            v230 = 168;
            if (*(v125 + 179))
            {
              v230 = 104;
            }

            *(v125 + v228) = v180;
            *(v125 + v229) = v181;
            v231 = 112;
            if (v227)
            {
              v231 = 176;
            }

            *(v125 + v230) = v182;
            *(v125 + v231) = 0;
            v232 = v327;
            sub_21A18C008(v125, v327, type metadata accessor for CookingSession);
            (*(v312 + 56))(v232, 0, 1, v310);
            v233 = v309;
            sub_21A183960(v232, v309, &qword_27CCFEB38);
            sub_21A2C4224(v233, v313, v105);
            sub_21A1427A8(v232, &qword_27CCFEB38);
            v234 = v326;
            v235 = v315;
            sub_21A183960(v326, v315, &qword_27CCFF050);
            v236 = sub_21A176C98(&qword_27CCFF070);
            if ((*(*(v236 - 8) + 48))(v235, 1, v236) != 1)
            {
              sub_21A176C98(&qword_27CCFF078);
              sub_21A2F7BF4();
              sub_21A1427A8(v234, &qword_27CCFF050);
              v262 = &qword_27CCFF070;
              v237 = v235;
              goto LABEL_179;
            }

            sub_21A1427A8(v234, &qword_27CCFF050);
            v237 = v235;
            goto LABEL_167;
          }

          __break(1u);
LABEL_222:
          __break(1u);
          goto LABEL_223;
        }

        v147 = *v123;
        v148 = *v311;
        v125 = v335;
        if (*(*v311 + 16))
        {
          v149 = sub_21A261F58(v313, v105);
          v129 = v324;
          if (v150)
          {
            sub_21A18C008(*(v148 + 56) + v149 * v303, v324, type metadata accessor for CookingSession);
            v151 = 0;
          }

          else
          {
            v151 = 1;
          }
        }

        else
        {
          v151 = 1;
          v129 = v324;
        }

        v215 = v310;
        (*(v103 + 56))(v129, v151, 1, v310);
        if ((*(v103 + 48))(v129, 1, v215))
        {
          goto LABEL_174;
        }

        v129[177] = v147;
        v129[178] = 4;
LABEL_176:
        v268 = v327;
        sub_21A183960(v129, v327, &qword_27CCFEB38);
        sub_21A2C4224(v268, v313, v105);
        goto LABEL_177;
      }

      if (EnumCaseMultiPayload)
      {
        v161 = v123;
        v162 = *v123;
        v163 = *(v123 + 8);
        v164 = *(v161 + 16);
        if (*(v161 + 24))
        {
          v165 = v103;
          v137 = v335;
          v166 = *(v335 + 179) == 0;
          v167 = 152;
          if (*(v335 + 179))
          {
            v167 = 88;
          }

          v168 = 160;
          if (*(v335 + 179))
          {
            v168 = 96;
          }

          v169 = 168;
          if (*(v335 + 179))
          {
            v169 = 104;
          }

          *(v335 + v167) = v162;
          *(v137 + v168) = v163;
          if (v166)
          {
            v170 = 176;
          }

          else
          {
            v170 = 112;
          }

          *(v137 + v169) = v164;
          *(v137 + v170) = 1;
          v171 = v327;
          sub_21A18C008(v137, v327, type metadata accessor for CookingSession);
          (*(v165 + 56))(v171, 0, 1, v310);
          goto LABEL_145;
        }

        if ((v162 & 0x8000000000000000) == 0)
        {
          v197 = *(v122 + *(v71 + 72));
          if (v162 < *(v197 + 16))
          {
            v198 = type metadata accessor for StepSection();
            v200 = *(v198 - 8);
            v199 = v198 - 8;
            v201 = *(v200 + 80);
            v202 = *(v200 + 72);
            v125 = v335;
            if (v163 < 0 || v163 >= *(*(v197 + ((v201 + 32) & ~v201) + v202 * v162 + *(v199 + 32)) + 16))
            {
              sub_21A18BFA8(v335, type metadata accessor for CookingSession);

              goto LABEL_188;
            }

            v203 = *(v335 + 179) == 0;
            v204 = 152;
            if (*(v335 + 179))
            {
              v204 = 88;
            }

            v205 = 160;
            if (*(v335 + 179))
            {
              v205 = 96;
            }

            v206 = 168;
            if (*(v335 + 179))
            {
              v206 = 104;
            }

            *(v335 + v204) = v162;
            *(v125 + v205) = v163;
            v207 = 112;
            if (v203)
            {
              v207 = 176;
            }

            *(v125 + v206) = v164;
            *(v125 + v207) = 0;
            goto LABEL_220;
          }
        }
      }

      else
      {
        if (*(v123 + 24))
        {
          v137 = v335;
          if (*(v335 + 179) == 1)
          {
            if (qword_27CCFE7F0 != -1)
            {
              swift_once();
            }

            v138 = qword_27CCFFB60;
            *(v137 + 16) = xmmword_27CCFFB50;
            *(v137 + 32) = v138;
            v139 = 112;
            v140 = 88;
          }

          else
          {
            *(v335 + 120) = 0;
            *(v137 + 128) = 0;
            *(v137 + 136) = 0;
            *(v137 + 144) = 1;
            v139 = 176;
            v140 = 152;
          }

          v238 = (v137 + v140);
          *v238 = 0;
          v238[1] = 0;
          v238[2] = 0;
          *(v137 + v139) = 1;
          v171 = v327;
          sub_21A18C008(v137, v327, type metadata accessor for CookingSession);
          (*(v312 + 56))(v171, 0, 1, v310);
LABEL_145:
          v239 = v309;
          sub_21A183960(v171, v309, &qword_27CCFEB38);
          sub_21A2C4224(v239, v313, v105);
          sub_21A1427A8(v171, &qword_27CCFEB38);
          v240 = v137;
LABEL_187:
          sub_21A18BFA8(v240, type metadata accessor for CookingSession);
LABEL_188:
          sub_21A18BFA8(v122, type metadata accessor for Recipe);
          return;
        }

        v187 = *v123;
        if ((*v123 & 0x8000000000000000) == 0)
        {
          v188 = *(v122 + *(v71 + 72));
          if (v187 < *(v188 + 16))
          {
            v189 = *(v123 + 8);
            v190 = *(v123 + 16);
            v191 = type metadata accessor for StepSection();
            v125 = v335;
            if ((v189 & 0x8000000000000000) == 0 && v189 < *(*(v188 + ((*(*(v191 - 8) + 80) + 32) & ~*(*(v191 - 8) + 80)) + *(*(v191 - 8) + 72) * v187 + *(v191 + 24)) + 16))
            {
              if (*(v335 + 179) != 1)
              {
                *(v335 + 120) = v187;
                *(v125 + 128) = v189;
                *(v125 + 136) = v190;
                *(v125 + 144) = 0;
                *(v125 + 160) = 0;
                *(v125 + 168) = 0;
                *(v125 + 152) = 0;
                *(v125 + 176) = 1;
LABEL_220:
                v301 = v327;
                sub_21A18C008(v125, v327, type metadata accessor for CookingSession);
                (*(v312 + 56))(v301, 0, 1, v310);
                v302 = v309;
                sub_21A183960(v301, v309, &qword_27CCFEB38);
                sub_21A2C4224(v302, v313, v105);
                v237 = v301;
                goto LABEL_178;
              }

              *(v335 + 16) = v187;
              *(v125 + 24) = v189;
              *(v125 + 32) = v190;
              *(v125 + 96) = 0;
              *(v125 + 104) = 0;
              *(v125 + 88) = 0;
              *(v125 + 112) = 1;
              v192 = v305;
              sub_21A18C008(v125, v305, type metadata accessor for CookingSession);
              if (*(v192 + 179))
              {
                v194 = *(v192 + 16);
                v193 = *(v192 + 24);
                v195 = *(v192 + 32);
                v196 = sub_21A271A00();
              }

              else
              {
                if (*(v192 + 144))
                {
                  sub_21A18BFA8(v192, type metadata accessor for CookingSession);
                  goto LABEL_201;
                }

                v193 = *(v192 + 128);
                v195 = *(v192 + 136);
                v194 = *(v192 + 120);
                v196 = sub_21A27201C();
              }

              v280 = v196;
              v281 = sub_21A188160(v194, v193, v195, v196);
              if ((v282 & 1) == 0)
              {
                v283 = v281 - 1;
                if (__OFSUB__(v281, 1))
                {
                  __break(1u);
                  goto LABEL_225;
                }

                if ((v283 & 0x8000000000000000) == 0 && v283 < *(v280 + 16))
                {
                  v284 = (v280 + 24 * v283);
                  v285 = v284[4];
                  v286 = v284[5];
                  v287 = v284[6];

                  sub_21A18BFA8(v305, type metadata accessor for CookingSession);
LABEL_204:
                  *(v125 + 64) = v285;
                  *(v125 + 72) = v286;
                  *(v125 + 80) = v287;
                  v288 = v304;
                  sub_21A18C008(v125, v304, type metadata accessor for CookingSession);
                  if (*(v288 + 179))
                  {
                    v290 = *(v288 + 16);
                    v289 = *(v288 + 24);
                    v291 = *(v288 + 32);
                    v292 = sub_21A271A00();
                  }

                  else
                  {
                    if (*(v288 + 144))
                    {
                      if (qword_27CCFE7F0 == -1)
                      {
LABEL_208:
                        v294 = *(&xmmword_27CCFFB50 + 1);
                        v293 = xmmword_27CCFFB50;
                        v295 = qword_27CCFFB60;
                        goto LABEL_218;
                      }

LABEL_226:
                      swift_once();
                      v288 = v304;
                      goto LABEL_208;
                    }

                    v289 = *(v288 + 128);
                    v291 = *(v288 + 136);
                    v290 = *(v288 + 120);
                    v292 = sub_21A27201C();
                  }

                  v296 = v292;
                  v297 = sub_21A188160(v290, v289, v291, v292);
                  if (v298)
                  {
LABEL_211:
                    sub_21A18BFA8(v304, type metadata accessor for CookingSession);

                    if (qword_27CCFE7F0 != -1)
                    {
                      swift_once();
                    }

                    v294 = *(&xmmword_27CCFFB50 + 1);
                    v293 = xmmword_27CCFFB50;
                    v295 = qword_27CCFFB60;
                    goto LABEL_219;
                  }

                  v299 = v297 + 1;
                  if (!__OFADD__(v297, 1))
                  {
                    if (v299 < 0 || v299 >= *(v296 + 16))
                    {
                      goto LABEL_211;
                    }

                    v300 = (v296 + 24 * v299);
                    v293 = v300[4];
                    v294 = v300[5];
                    v295 = v300[6];
                    v288 = v304;

LABEL_218:
                    sub_21A18BFA8(v288, type metadata accessor for CookingSession);
LABEL_219:
                    *(v125 + 40) = v293;
                    *(v125 + 48) = v294;
                    *(v125 + 56) = v295;
                    goto LABEL_220;
                  }

LABEL_225:
                  __break(1u);
                  goto LABEL_226;
                }
              }

              sub_21A18BFA8(v305, type metadata accessor for CookingSession);

LABEL_201:
              if (qword_27CCFE7F0 != -1)
              {
                swift_once();
              }

              v286 = *(&xmmword_27CCFFB50 + 1);
              v285 = xmmword_27CCFFB50;
              v287 = qword_27CCFFB60;
              goto LABEL_204;
            }

LABEL_51:

LABEL_186:
            v240 = v125;
            goto LABEL_187;
          }
        }
      }

      v125 = v335;
LABEL_180:
      if (qword_27CCFE770 != -1)
      {
        swift_once();
      }

      v269 = sub_21A2F53E4();
      sub_21A177CBC(v269, qword_27CCFF0B0);
      v270 = v107;
      v271 = v328;
      sub_21A18C008(v270, v328, type metadata accessor for CookingSessionCommand);
      v272 = sub_21A2F53C4();
      v273 = sub_21A2F7DF4();
      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        v339 = v275;
        *v274 = 136315138;
        sub_21A18C008(v271, v334, type metadata accessor for CookingSessionCommand);
        v276 = sub_21A2F7944();
        v278 = v277;
        sub_21A18BFA8(v271, type metadata accessor for CookingSessionCommand);
        v279 = sub_21A25B5DC(v276, v278, &v339);

        *(v274 + 4) = v279;
        _os_log_impl(&dword_21A137000, v272, v273, "CookingSessionsSource did handle command: %s", v274, 0xCu);
        sub_21A142808(v275);
        MEMORY[0x21CED7BA0](v275, -1, -1);
        MEMORY[0x21CED7BA0](v274, -1, -1);
      }

      else
      {

        sub_21A18BFA8(v271, type metadata accessor for CookingSessionCommand);
      }

      v339 = v333;
      sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
      sub_21A2F75C4();
      goto LABEL_186;
    }

    if (EnumCaseMultiPayload > 6)
    {
      v125 = v335;
      if (EnumCaseMultiPayload == 7)
      {
        if (*(v335 + 179) != 1)
        {
          goto LABEL_51;
        }

        v152 = *v311;
        if (!*(*v311 + 16) || (v153 = sub_21A261F58(v313, v105), (v154 & 1) == 0))
        {
          v155 = 1;
          v129 = v318;
          goto LABEL_107;
        }

        v136 = *(v152 + 56) + v153 * v303;
        v129 = v318;
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          if ((*(v335 + 179) & 1) == 0)
          {
            v183 = *v311;
            if (*(*v311 + 16) && (v184 = sub_21A261F58(v313, v105), (v185 & 1) != 0))
            {
              v129 = v321;
              sub_21A18C008(*(v183 + 56) + v184 * v303, v321, type metadata accessor for CookingSession);
              v186 = 0;
            }

            else
            {
              v186 = 1;
              v129 = v321;
            }

            v213 = v310;
            (*(v103 + 56))(v129, v186, 1, v310);
            if ((*(v103 + 48))(v129, 1, v213))
            {
              goto LABEL_174;
            }

            *(v129 + 177) = 1027;
            goto LABEL_176;
          }

          goto LABEL_51;
        }

        v132 = *v311;
        v133 = *(*v311 + 16);
        if (*(v335 + 179) != 1)
        {
          if (v133 && (v177 = sub_21A261F58(v313, v105), (v178 & 1) != 0))
          {
            v129 = v320;
            sub_21A18C008(*(v132 + 56) + v177 * v303, v320, type metadata accessor for CookingSession);
            v179 = 0;
          }

          else
          {
            v179 = 1;
            v129 = v320;
          }

          v212 = v310;
          (*(v103 + 56))(v129, v179, 1, v310);
          if ((*(v103 + 48))(v129, 1, v212))
          {
            goto LABEL_174;
          }

          *(v129 + 177) = 1026;
          goto LABEL_176;
        }

        if (!v133 || (v134 = sub_21A261F58(v313, v105), (v135 & 1) == 0))
        {
          v155 = 1;
          v129 = v319;
          goto LABEL_107;
        }

        v136 = *(v132 + 56) + v134 * v303;
        v129 = v319;
      }

      sub_21A18C008(v136, v129, type metadata accessor for CookingSession);
      v155 = 0;
LABEL_107:
      v211 = v310;
      (*(v103 + 56))(v129, v155, 1, v310);
      if ((*(v103 + 48))(v129, 1, v211))
      {
        goto LABEL_174;
      }

      v129[180] = 0;
      goto LABEL_176;
    }

    v125 = v335;
    if (EnumCaseMultiPayload != 5)
    {
      v172 = *v311;
      v173 = *(*v311 + 16);
      if (*(v335 + 179) == 1)
      {
        if (v173)
        {
          v174 = sub_21A261F58(v313, v105);
          v129 = v316;
          if (v175)
          {
            sub_21A18C008(*(v172 + 56) + v174 * v303, v316, type metadata accessor for CookingSession);
            v176 = 0;
          }

          else
          {
            v176 = 1;
          }
        }

        else
        {
          v176 = 1;
          v129 = v316;
        }

        v265 = v310;
        (*(v103 + 56))(v129, v176, 1, v310);
        if (!(*(v103 + 48))(v129, 1, v265))
        {
          v129[180] = 1;
          goto LABEL_176;
        }

        goto LABEL_174;
      }

      if (v173 && (v208 = sub_21A261F58(v313, v105), (v209 & 1) != 0))
      {
        v129 = v317;
        sub_21A18C008(*(v172 + 56) + v208 * v303, v317, type metadata accessor for CookingSession);
        v210 = 0;
      }

      else
      {
        v210 = 1;
        v129 = v317;
      }

      v214 = v310;
      (*(v103 + 56))(v129, v210, 1, v310);
      if ((*(v103 + 48))(v129, 1, v214))
      {
        goto LABEL_174;
      }

      *(v129 + 177) = 1025;
      goto LABEL_176;
    }

    v141 = v307;
    sub_21A18BF38(v123, v307);
    v142 = v306;
    sub_21A18C008(v125, v306, type metadata accessor for CookingSession);
    if (*(v142 + 179))
    {
      v144 = *(v142 + 16);
      v143 = *(v142 + 24);
      v145 = *(v142 + 32);
      v146 = sub_21A271A00();
    }

    else
    {
      if (*(v142 + 144))
      {
        sub_21A18BFA8(v142, type metadata accessor for CookingSession);
        goto LABEL_164;
      }

      v143 = *(v142 + 128);
      v145 = *(v142 + 136);
      v144 = *(v142 + 120);
      v146 = sub_21A27201C();
    }

    v241 = v146;
    v242 = sub_21A188160(v144, v143, v145, v146);
    if (v243)
    {
      sub_21A18BFA8(v306, type metadata accessor for CookingSession);

      v141 = v307;
      goto LABEL_165;
    }

    v244 = v242 - 1;
    v141 = v307;
    if (__OFSUB__(v242, 1))
    {
      goto LABEL_222;
    }

    if ((v244 & 0x8000000000000000) == 0 && v244 < *(v241 + 16))
    {
      v245 = (v241 + 24 * v244);
      v246 = v245[4];
      v247 = v245[5];
      v248 = v245[6];
      v249 = v306;

      sub_21A18BFA8(v249, type metadata accessor for CookingSession);
      v250 = *(v125 + 179) == 0;
      v251 = 152;
      if (*(v125 + 179))
      {
        v251 = 88;
      }

      v252 = 160;
      if (*(v125 + 179))
      {
        v252 = 96;
      }

      v253 = 168;
      if (*(v125 + 179))
      {
        v253 = 104;
      }

      *(v125 + v251) = v246;
      *(v125 + v252) = v247;
      v254 = 112;
      if (v250)
      {
        v254 = 176;
      }

      *(v125 + v253) = v248;
      *(v125 + v254) = 0;
      v255 = v327;
      sub_21A18C008(v125, v327, type metadata accessor for CookingSession);
      (*(v312 + 56))(v255, 0, 1, v310);
      v256 = v309;
      sub_21A183960(v255, v309, &qword_27CCFEB38);
      sub_21A2C4224(v256, v313, v105);
      v257 = v255;
      v258 = v307;
      sub_21A1427A8(v257, &qword_27CCFEB38);
      v259 = v314;
      sub_21A183960(v258, v314, &qword_27CCFF050);
      v260 = sub_21A176C98(&qword_27CCFF070);
      if ((*(*(v260 - 8) + 48))(v259, 1, v260) != 1)
      {
        sub_21A176C98(&qword_27CCFF078);
        sub_21A2F7BF4();
        sub_21A1427A8(v258, &qword_27CCFF050);
        v262 = &qword_27CCFF070;
        v237 = v259;
        goto LABEL_179;
      }

      sub_21A1427A8(v258, &qword_27CCFF050);
      v237 = v259;
      goto LABEL_167;
    }

    sub_21A18BFA8(v306, type metadata accessor for CookingSession);

LABEL_164:

LABEL_165:
    v220 = v323;
    sub_21A183960(v141, v323, &qword_27CCFF050);
    v261 = sub_21A176C98(&qword_27CCFF070);
    if ((*(*(v261 - 8) + 48))(v220, 1, v261) != 1)
    {
      sub_21A18BE7C();
      v222 = swift_allocError();
      v223 = v222;
      *v263 = 0;
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  swift_bridgeObjectRelease_n();
LABEL_11:
  if (qword_27CCFE778 != -1)
  {
    swift_once();
  }

  v110 = sub_21A2F53E4();
  sub_21A177CBC(v110, qword_27CCFF0C8);
  v111 = v336;
  sub_21A18C008(v338, v336, type metadata accessor for CookingSessionCommand);
  v112 = sub_21A2F53C4();
  v113 = sub_21A2F7DD4();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v339 = v115;
    *v114 = 136446210;
    sub_21A18C008(v111, v334, type metadata accessor for CookingSessionCommand);
    v116 = sub_21A2F7944();
    v118 = v117;
    sub_21A18BFA8(v111, type metadata accessor for CookingSessionCommand);
    v119 = sub_21A25B5DC(v116, v118, &v339);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_21A137000, v112, v113, "Unable to handle command, no matching cooking session. command=%{public}s", v114, 0xCu);
    sub_21A142808(v115);
    MEMORY[0x21CED7BA0](v115, -1, -1);
    MEMORY[0x21CED7BA0](v114, -1, -1);
  }

  else
  {

    sub_21A18BFA8(v111, type metadata accessor for CookingSessionCommand);
  }

  sub_21A18BE7C();
  v120 = swift_allocError();
  *v121 = 2;
  sub_21A187F64(v120);
}

uint64_t sub_21A1867C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A176C98(&qword_27CCFEB38);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v20 - v6;
  v8 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v20 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v14 = type metadata accessor for CookingSession();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_21A2F5434();
    sub_21A2C4224(v7, v13, v12);
    v20[1] = v2;
    sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
    return sub_21A2F75C4();
  }

  else
  {
    v16 = sub_21A2F7C64();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_21A2F7C34();
    sub_21A18BD3C();

    v17 = sub_21A2F7C24();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v2;
    v18[5] = v13;
    v18[6] = v12;
    sub_21A199D08(0, 0, v11, &unk_21A2FB5D8, v18);
  }
}

uint64_t sub_21A186A48(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21A176C98(&qword_27CCFEB38);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v71 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v71 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v76 = v71 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v71 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    v75 = v17;
    v37 = v2[2];
    if (*(v37 + 16))
    {
      sub_21A2F5434();
      v72 = v24;
      v74 = v25;
      v38 = sub_21A261F58(v24, v25);
      if (v39)
      {
        v40 = v38;
        v73 = v4;
        v41 = *(v37 + 56);
        v42 = type metadata accessor for CookingSession();
        v43 = *(v42 - 8);
        sub_21A18C008(v41 + *(v43 + 72) * v40, v23, type metadata accessor for CookingSession);
        (*(v43 + 56))(v23, 0, 1, v42);
      }

      else
      {
        v42 = type metadata accessor for CookingSession();
        (*(*(v42 - 8) + 56))(v23, 1, 1, v42);
      }

      v24 = v72;
      v25 = v74;
    }

    else
    {
      v42 = type metadata accessor for CookingSession();
      (*(*(v42 - 8) + 56))(v23, 1, 1, v42);
      sub_21A2F5434();
    }

    type metadata accessor for CookingSession();
    if ((*(*(v42 - 8) + 48))(v23, 1, v42))
    {
      v67 = v76;
      sub_21A183960(v23, v76, &qword_27CCFEB38);
      v68 = v75;
      sub_21A183960(v67, v75, &qword_27CCFEB38);
      sub_21A2C4224(v68, v24, v25);
      sub_21A1427A8(v67, &qword_27CCFEB38);
    }

    else
    {
      v23[179] = 1;
      v69 = v76;
      sub_21A183960(v23, v76, &qword_27CCFEB38);
      sub_21A2C4224(v69, v24, v25);
    }

    sub_21A1427A8(v23, &qword_27CCFEB38);
    goto LABEL_30;
  }

  if (*(a1 + 16) != 1)
  {

    v2[2] = MEMORY[0x277D84F98];
LABEL_30:
    v77 = v2;
    sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
    return sub_21A2F75C4();
  }

  v75 = v17;
  v27 = v2 + 2;
  v26 = v2[2];
  v28 = *(v26 + 16);
  v73 = v4;
  if (v28)
  {
    sub_21A2F5434();
    v29 = sub_21A261F58(v24, v25);
    if (v30)
    {
      v31 = v29;
      v32 = *(v26 + 56);
      v33 = type metadata accessor for CookingSession();
      v34 = *(v33 - 8);
      v72 = v24;
      v35 = v25;
      v36 = v34;
      sub_21A18C008(v32 + *(v34 + 72) * v31, v13, type metadata accessor for CookingSession);
      (*(v36 + 56))(v13, 0, 1, v33);
      v25 = v35;
      v24 = v72;
    }

    else
    {
      v33 = type metadata accessor for CookingSession();
      (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    }
  }

  else
  {
    v33 = type metadata accessor for CookingSession();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    sub_21A2F5434();
  }

  type metadata accessor for CookingSession();
  v72 = *(v33 - 8);
  v44 = *(v72 + 48);
  v45 = v72 + 48;
  v46 = v44(v13, 1, v33);
  v74 = v25;
  if (v46)
  {
    v47 = v24;
    v48 = v76;
    sub_21A183960(v13, v76, &qword_27CCFEB38);
    v71[1] = v45;
    v49 = v33;
    v50 = v2;
    v51 = v44;
    v52 = v27;
    v53 = v75;
    sub_21A183960(v48, v75, &qword_27CCFEB38);
    sub_21A2F5434();
    v54 = v53;
    v27 = v52;
    v44 = v51;
    v2 = v50;
    v33 = v49;
    v55 = v25;
    v56 = v47;
    sub_21A2C4224(v54, v47, v55);
    sub_21A1427A8(v48, &qword_27CCFEB38);
  }

  else
  {
    v13[179] = 0;
    v57 = v76;
    sub_21A183960(v13, v76, &qword_27CCFEB38);
    sub_21A2F5434();
    v58 = v25;
    v56 = v24;
    sub_21A2C4224(v57, v24, v58);
  }

  sub_21A1427A8(v13, &qword_27CCFEB38);
  v59 = *v27;
  v60 = v72;
  if (*(*v27 + 16) && (v61 = sub_21A261F58(v56, v74), (v62 & 1) != 0))
  {
    sub_21A18C008(*(v59 + 56) + *(v60 + 72) * v61, v9, type metadata accessor for CookingSession);
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  (*(v60 + 56))(v9, v63, 1, v33);
  if (v44(v9, 1, v33))
  {
    v64 = v76;
    sub_21A183960(v9, v76, &qword_27CCFEB38);
    v65 = v75;
    sub_21A183960(v64, v75, &qword_27CCFEB38);
    sub_21A2C4224(v65, v56, v74);
    sub_21A1427A8(v64, &qword_27CCFEB38);
  }

  else
  {
    *(v9 + 15) = 0;
    *(v9 + 16) = 0;
    *(v9 + 17) = 0;
    v9[144] = 1;
    *(v9 + 20) = 0;
    *(v9 + 21) = 0;
    *(v9 + 19) = 0;
    v9[176] = 1;
    *(v9 + 12) = 0;
    *(v9 + 13) = 0;
    *(v9 + 11) = 0;
    v9[112] = 1;
    *(v9 + 177) = 1028;
    v9[179] = 0;
    v66 = v76;
    sub_21A183960(v9, v76, &qword_27CCFEB38);
    sub_21A2C4224(v66, v56, v74);
  }

  sub_21A1427A8(v9, &qword_27CCFEB38);
  v77 = v2;
  sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
  return sub_21A2F75C4();
}

uint64_t sub_21A187334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_21A176C98(&qword_27CCFEB38);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFF048);
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for CookingSession();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v10 = swift_task_alloc();
  v6[13] = v10;
  v6[14] = sub_21A2F7C34();
  v6[15] = sub_21A2F7C24();
  v6[2] = a5;
  v6[3] = a6;
  v11 = swift_task_alloc();
  v6[16] = v11;
  *v11 = v6;
  v11[1] = sub_21A1874F4;

  return sub_21A187888(v10, v6 + 2);
}

uint64_t sub_21A1874F4()
{

  v1 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A187630, v1, v0);
}

uint64_t sub_21A187630()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v12 = v0[6];
  v8 = v0[5];

  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  *(v1 + 176) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = 1;
  *(v1 + 177) = 1028;
  *(v1 + 179) = 0;
  sub_21A2F4974();
  v9 = sub_21A2F49B4();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  sub_21A18BE0C(v4, v1 + *(v3 + 60));
  sub_21A18C008(v1, v5, type metadata accessor for CookingSession);
  (*(v2 + 56))(v5, 0, 1, v3);
  sub_21A183960(v5, v6, &qword_27CCFEB38);
  sub_21A2F5434();
  sub_21A2C4224(v6, v12, v7);
  sub_21A1427A8(v5, &qword_27CCFEB38);
  v0[4] = v8;
  type metadata accessor for CookingSessionsSource();
  sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
  sub_21A2F75C4();
  sub_21A18BFA8(v1, type metadata accessor for CookingSession);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21A187888(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  sub_21A176C98(&qword_27CCFEB38);
  v5 = swift_task_alloc();
  v6 = *a2;
  v7 = a2[1];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;
  sub_21A2F7C34();
  v3[9] = sub_21A2F7C24();
  v9 = sub_21A2F7BD4();
  v3[10] = v9;
  v3[11] = v8;

  return MEMORY[0x2822009F8](sub_21A187964, v9, v8);
}

uint64_t sub_21A187964()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = (v0[5] + OBJC_IVAR____TtC10CookingKit21CookingSessionsSource_cookingSessionsManager);
  v4 = v3[3];
  v5 = v3[4];
  sub_21A142764(v3, v4);
  v0[2] = v2;
  v0[3] = v1;
  v9 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_21A187AC0;
  v7 = v0[6];

  return v9(v7, v0 + 2, v4, v5);
}

uint64_t sub_21A187AC0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21A187BE0, v3, v2);
}

uint64_t sub_21A187BE0()
{
  v1 = v0[6];

  v2 = type metadata accessor for CookingSession();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21A1427A8(v0[6], &qword_27CCFEB38);
    v3 = qword_27CCFE7F0;
    sub_21A2F5434();
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[4];
    v7 = qword_27CCFFB60;
    v8 = *(v2 + 60);
    v14 = xmmword_27CCFFB50;
    v15 = *(&xmmword_27CCFFB50 + 8);
    v9 = sub_21A2F49B4();
    (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
    *v6 = v5;
    *(v6 + 8) = v4;
    *&v10 = v7;
    *&v11 = v14;
    *(&v10 + 1) = v14;
    *(v6 + 16) = v14;
    *(v6 + 32) = v10;
    *(&v11 + 1) = v15;
    *(v6 + 48) = v15;
    *(v6 + 64) = v11;
    *(v6 + 80) = v7;
    *(v6 + 88) = 0;
    *(v6 + 96) = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 1;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 120) = 0;
    *(v6 + 144) = 1;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0;
    *(v6 + 152) = 0;
    *(v6 + 176) = 1;
    *(v6 + 177) = 1028;
  }

  else
  {
    sub_21A18BED0(v0[6], v0[4], type metadata accessor for CookingSession);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21A187E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (a2 && *(a3 + 16) && (v10 = sub_21A261F58(a1, a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a3 + 56);
    v14 = a4(0);
    v21 = *(v14 - 8);
    sub_21A18C008(v13 + *(v21 + 72) * v12, a6, a5);
    v15 = *(v21 + 56);
    v16 = a6;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = a4(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a6;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_21A187F64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CookingSessionCommandAction(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFF050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v20 - v14;
  sub_21A18C008(v2, v7, type metadata accessor for CookingSessionCommandAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result & 0xFFFFFFFE) == 4)
  {
    sub_21A18BF38(v7, v15);
    sub_21A18BF38(v15, v12);
    v17 = sub_21A176C98(&qword_27CCFF070);
    if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
    {
      v18 = &qword_27CCFF050;
    }

    else
    {
      v20[1] = a1;
      v19 = a1;
      sub_21A176C98(&qword_27CCFF078);
      sub_21A2F7BE4();
      v18 = &qword_27CCFF070;
    }

    return sub_21A1427A8(v12, v18);
  }

  return result;
}

uint64_t sub_21A188160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  for (i = (a4 + 48); ; i += 3)
  {
    v8 = *(i - 2) == a1 && *(i - 1) == a2;
    if (v8 && *i == a3)
    {
      break;
    }

    if (v4 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A1881BC()
{

  v1 = OBJC_IVAR____TtC10CookingKit21CookingSessionsSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit21CookingSessionsSource__importedRecipes;
  v4 = sub_21A176C98(&qword_27CCFF060);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21A142808(v0 + OBJC_IVAR____TtC10CookingKit21CookingSessionsSource_cookingSessionsManager);

  return swift_deallocClassInstance();
}

uint64_t Catalog<>.mostRecentlyViewedSession()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = sub_21A188B14(v3, 0);
    v6 = *(type metadata accessor for CookingSession() - 8);
    v7 = sub_21A18B67C(&v9, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v2);
    sub_21A2F5434();
    result = sub_21A14B2F8();
    if (v7 != v3)
    {
      __break(1u);
      return result;
    }

    a1 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_21A1883D4(v5, a1);
}

uint64_t sub_21A1883D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if (v3 == 1)
  {
    v11 = type metadata accessor for CookingSession();
    v15 = *(v11 - 8);
    sub_21A18C008(a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a2, type metadata accessor for CookingSession);
    v6 = *(v15 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v11;
  }

  else
  {
    if (v3)
    {
      v16 = a1;
      sub_21A2F5434();
      sub_21A188DB4(&v16);
      v4 = v16;
      if (v16[2])
      {
        v5 = type metadata accessor for CookingSession();
        v14 = *(v5 - 8);
        sub_21A18C008(v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a2, type metadata accessor for CookingSession);

        v6 = *(v14 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_8;
      }
    }

    v12 = type metadata accessor for CookingSession();
    v6 = *(*(v12 - 8) + 56);
    v9 = v12;
    v7 = a2;
    v8 = 1;
  }

LABEL_8:

  return v6(v7, v8, 1, v9);
}

uint64_t RandomAccessCollection<>.mostRecentlyViewedSession()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 8) + 8);
  if (sub_21A2F7D34())
  {
    goto LABEL_2;
  }

  if (sub_21A2F7D24() != 1)
  {
    v11 = sub_21A2F7AC4();
    if (*(v11 + 16))
    {
      v12 = v11;
      v13 = type metadata accessor for CookingSession();
      v15 = *(v13 - 8);
      sub_21A18C008(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a3, type metadata accessor for CookingSession);

      v7 = *(v15 + 56);
      v9 = a3;
      v10 = 0;
      v8 = v13;
      goto LABEL_9;
    }

LABEL_2:
    v6 = type metadata accessor for CookingSession();
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a3;
    v10 = 1;
LABEL_9:

    return v7(v9, v10, 1, v8);
  }

  return MEMORY[0x2821FC7E0](a1, v5);
}

uint64_t sub_21A18873C(void *a1, void *a2)
{
  v40 = a2;
  v3 = sub_21A2F49B4();
  v38 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v39 = &v35 - v8;
  v9 = sub_21A176C98(&qword_27CCFF048);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v35 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v35 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v35 - v23;
  v25 = type metadata accessor for CookingSession();
  v26 = *(v25 + 60);
  v36 = a1;
  v27 = a1 + v26;
  v28 = v38;
  sub_21A183960(v27, v24, &qword_27CCFF048);
  sub_21A183960(v40 + *(v25 + 60), v21, &qword_27CCFF048);
  sub_21A183960(v24, v17, &qword_27CCFF048);
  v29 = v28[6];
  if (v29(v17, 1, v3) == 1)
  {
    v13 = v17;
  }

  else
  {
    v35 = v28[4];
    v35(v39, v17, v3);
    sub_21A183960(v21, v13, &qword_27CCFF048);
    if (v29(v13, 1, v3) != 1)
    {
      v31 = v37;
      v35(v37, v13, v3);
      v32 = v39;
      v30 = sub_21A2F4944();
      v33 = v28[1];
      v33(v31, v3);
      v33(v32, v3);
      goto LABEL_12;
    }

    (v28[1])(v39, v3);
  }

  sub_21A1427A8(v13, &qword_27CCFF048);
  v30 = 1;
  if (v29(v24, 1, v3) == 1)
  {
    if (v29(v21, 1, v3) != 1 || *v40 == *v36 && v40[1] == v36[1])
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_21A2F8394();
    }
  }

LABEL_12:
  sub_21A1427A8(v21, &qword_27CCFF048);
  sub_21A1427A8(v24, &qword_27CCFF048);
  return v30 & 1;
}

size_t sub_21A188B14(uint64_t a1, uint64_t a2)
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

  sub_21A176C98(&qword_27CCFF0A8);
  v4 = *(type metadata accessor for CookingSession() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A188C10(uint64_t a1, uint64_t a2)
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

  sub_21A176C98(&qword_27CCFF0A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21A188C94(uint64_t a1, uint64_t a2)
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

  sub_21A176C98(&qword_27CCFF088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_21A188D1C(uint64_t a1, uint64_t a2)
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

  sub_21A176C98(&qword_27CCFF080);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_21A188DB4(void **a1)
{
  v2 = *(type metadata accessor for CookingSession() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21A1C73B4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21A188E5C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21A188E5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21A2F8344();
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
        type metadata accessor for CookingSession();
        v6 = sub_21A2F7B74();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CookingSession() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21A189670(v8, v9, a1, v4);
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
    return sub_21A188F88(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21A188F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v83 = sub_21A2F49B4();
  v8 = *(v83 - 8);
  v10 = MEMORY[0x28223BE20](v83, v9);
  v73 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v12);
  v82 = &v66[-v13];
  v14 = sub_21A176C98(&qword_27CCFF048);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v81 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v84 = &v66[-v20];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v90 = &v66[-v23];
  MEMORY[0x28223BE20](v22, v24);
  v76 = &v66[-v25];
  v85 = type metadata accessor for CookingSession();
  v27 = MEMORY[0x28223BE20](v85, v26);
  v79 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v89 = &v66[-v31];
  result = MEMORY[0x28223BE20](v30, v32);
  v88 = &v66[-v35];
  v68 = a2;
  if (a3 != a2)
  {
    v36 = *a4;
    v37 = *(v34 + 72);
    v80 = (v8 + 48);
    v38 = (v8 + 32);
    v74 = (v8 + 8);
    v39 = v36 + v37 * (a3 - 1);
    v77 = -v37;
    v78 = v36;
    v40 = a1 - a3;
    v67 = v37;
    v41 = v36 + v37 * a3;
    v42 = &qword_27CCFF048;
    v75 = v38;
LABEL_6:
    v71 = v39;
    v72 = a3;
    v69 = v41;
    v70 = v40;
    v43 = v40;
    v44 = v76;
    v45 = &unk_21A2FB5E0;
    while (1)
    {
      v86 = v43;
      v87 = v41;
      v46 = v88;
      sub_21A18C008(v41, v88, type metadata accessor for CookingSession);
      v47 = v89;
      sub_21A18C008(v39, v89, type metadata accessor for CookingSession);
      v48 = v85;
      sub_21A183960(v46 + *(v85 + 60), v44, v42);
      sub_21A183960(v47 + *(v48 + 60), v90, v42);
      v49 = v45;
      v50 = v42;
      v51 = v84;
      sub_21A183960(v44, v84, v50);
      v52 = *v80;
      v53 = v44;
      v54 = v83;
      if ((*v80)(v51, 1, v83) != 1)
      {
        v55 = *v75;
        (*v75)(v82, v84, v54);
        v56 = v81;
        sub_21A183960(v90, v81, v50);
        v45 = v49;
        if (v52(v56, 1, v54) != 1)
        {
          v60 = v82;
          v61 = v73;
          v55(v73, v81, v54);
          v62 = sub_21A2F4944();
          v63 = *v74;
          (*v74)(v61, v54);
          v63(v60, v54);
          v57 = v62;
          v44 = v76;
          v42 = &qword_27CCFF048;
          goto LABEL_17;
        }

        (*v74)(v82, v54);
        v51 = v81;
        v53 = v76;
        v50 = &qword_27CCFF048;
      }

      sub_21A1427A8(v51, v50);
      v42 = v50;
      if (v52(v53, 1, v54) != 1)
      {
        sub_21A1427A8(v90, v50);
        sub_21A1427A8(v53, v50);
        sub_21A18BFA8(v89, type metadata accessor for CookingSession);
        result = sub_21A18BFA8(v88, type metadata accessor for CookingSession);
        v44 = v53;
        v45 = v49;
        v58 = v86;
        v59 = v87;
        goto LABEL_18;
      }

      if (v52(v90, 1, v54) != 1 || *v89 == *v88 && v89[1] == v88[1])
      {
        sub_21A1427A8(v90, v50);
        sub_21A1427A8(v76, v50);
        sub_21A18BFA8(v89, type metadata accessor for CookingSession);
        result = sub_21A18BFA8(v88, type metadata accessor for CookingSession);
LABEL_5:
        a3 = v72 + 1;
        v39 = v71 + v67;
        v40 = v70 - 1;
        v41 = v69 + v67;
        if (v72 + 1 == v68)
        {
          return result;
        }

        goto LABEL_6;
      }

      v57 = sub_21A2F8394();
      v44 = v76;
      v45 = &unk_21A2FB5E0;
LABEL_17:
      v58 = v86;
      v59 = v87;
      sub_21A1427A8(v90, v42);
      sub_21A1427A8(v44, v42);
      sub_21A18BFA8(v89, type metadata accessor for CookingSession);
      result = sub_21A18BFA8(v88, type metadata accessor for CookingSession);
      if ((v57 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_18:
      if (!v78)
      {
        __break(1u);
        return result;
      }

      v64 = v79;
      sub_21A18BED0(v59, v79, type metadata accessor for CookingSession);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21A18BED0(v64, v39, type metadata accessor for CookingSession);
      v39 += v77;
      v41 = v59 + v77;
      v65 = __CFADD__(v58, 1);
      v43 = v58 + 1;
      if (v65)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_21A189670(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v191 = a1;
  v227 = sub_21A2F49B4();
  v6 = *(v227 - 8);
  v8 = MEMORY[0x28223BE20](v227, v7);
  v206 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v218 = &v187 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v193 = &v187 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v187 - v17;
  v19 = sub_21A176C98(&qword_27CCFF048);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v219 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v222 = &v187 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v226 = &v187 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v223 = &v187 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v187 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v204 = &v187 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v211 = &v187 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v187 - v43;
  v45 = type metadata accessor for CookingSession();
  v203 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45, v46);
  v197 = &v187 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v216 = &v187 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v225 = (&v187 - v54);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v224 = (&v187 - v57);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v202 = &v187 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v208 = (&v187 - v63);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v189 = (&v187 - v66);
  result = MEMORY[0x28223BE20](v65, v67);
  v205 = a3;
  if (*(a3 + 8) < 1)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_120:
    v6 = *v191;
    if (!*v191)
    {
      goto LABEL_160;
    }

    a3 = v73;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_154;
    }

    result = a3;
LABEL_123:
    v228 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v205)
      {
        v182 = *(result + 16 * a3);
        v183 = result;
        v184 = *(result + 16 * (a3 - 1) + 40);
        v185 = v210;
        sub_21A18A95C(*v205 + *(v203 + 72) * v182, *v205 + *(v203 + 72) * *(result + 16 * (a3 - 1) + 32), *v205 + *(v203 + 72) * v184, v6);
        v210 = v185;
        if (v185)
        {
        }

        if (v184 < v182)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v183 = sub_21A1C7168(v183);
        }

        if (a3 - 2 >= *(v183 + 2))
        {
          goto LABEL_148;
        }

        v186 = &v183[16 * a3];
        *v186 = v182;
        *(v186 + 1) = v184;
        v228 = v183;
        sub_21A1C70DC(a3 - 1);
        result = v228;
        a3 = *(v228 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_158;
    }
  }

  v70 = *(a3 + 8);
  v188 = (&v187 - v69);
  v209 = v44;
  v187 = a4;
  v71 = 0;
  v72 = (v6 + 48);
  v212 = (v6 + 8);
  v213 = (v6 + 32);
  v73 = MEMORY[0x277D84F90];
  v196 = v18;
  v74 = v223;
  v195 = v35;
  v220 = result;
  v75 = v202;
  v221 = (v6 + 48);
  v76 = result;
  while (1)
  {
    v192 = v73;
    if (v71 + 1 >= v70)
    {
      v85 = v71 + 1;
      goto LABEL_35;
    }

    v207 = v70;
    v77 = *v205;
    v78 = *(v203 + 72);
    a3 = *v205 + v78 * (v71 + 1);
    v79 = v71;
    v80 = v188;
    sub_21A18C008(a3, v188, type metadata accessor for CookingSession);
    v81 = v189;
    sub_21A18C008(v77 + v78 * v79, v189, type metadata accessor for CookingSession);
    v82 = v210;
    LODWORD(v215) = sub_21A18873C(v80, v81);
    v210 = v82;
    if (v82)
    {
      sub_21A18BFA8(v81, type metadata accessor for CookingSession);
      sub_21A18BFA8(v80, type metadata accessor for CookingSession);
    }

    sub_21A18BFA8(v81, type metadata accessor for CookingSession);
    result = sub_21A18BFA8(v80, type metadata accessor for CookingSession);
    v190 = v79;
    v6 = v79 + 2;
    v83 = v77 + v78 * v6;
    v201 = v78;
    while (1)
    {
      v85 = v207;
      if (v207 == v6)
      {
        break;
      }

      v86 = v208;
      sub_21A18C008(v83, v208, type metadata accessor for CookingSession);
      v217 = a3;
      sub_21A18C008(a3, v75, type metadata accessor for CookingSession);
      v87 = v72;
      v88 = v209;
      sub_21A183960(v86 + *(v76 + 60), v209, &qword_27CCFF048);
      sub_21A183960(v75 + *(v76 + 60), v211, &qword_27CCFF048);
      v89 = v204;
      sub_21A183960(v88, v204, &qword_27CCFF048);
      v90 = *v87;
      if ((*v87)(v89, 1, v227) == 1)
      {
        goto LABEL_13;
      }

      v91 = v196;
      v92 = v227;
      v214 = *v213;
      v214(v196, v204, v227);
      v89 = v195;
      sub_21A183960(v211, v195, &qword_27CCFF048);
      if (v90(v89, 1, v92) == 1)
      {
        (*v212)(v91, v227);
        v88 = v209;
        v87 = v221;
        v78 = v201;
LABEL_13:
        sub_21A1427A8(v89, &qword_27CCFF048);
        v84 = 1;
        v93 = v90(v88, 1, v227);
        v76 = v220;
        v75 = v202;
        v72 = v87;
        if (v93 == 1)
        {
          if (v90(v211, 1, v227) != 1 || *v75 == *v208 && v75[1] == v208[1])
          {
            v84 = 0;
          }

          else
          {
            v84 = sub_21A2F8394();
          }
        }

        goto LABEL_8;
      }

      v94 = v91;
      v95 = v193;
      v96 = v89;
      v97 = v227;
      v214(v193, v96, v227);
      v84 = sub_21A2F4944();
      v98 = *v212;
      (*v212)(v95, v97);
      v98(v94, v97);
      v76 = v220;
      v72 = v221;
      v75 = v202;
      v78 = v201;
LABEL_8:
      sub_21A1427A8(v211, &qword_27CCFF048);
      sub_21A1427A8(v209, &qword_27CCFF048);
      sub_21A18BFA8(v75, type metadata accessor for CookingSession);
      result = sub_21A18BFA8(v208, type metadata accessor for CookingSession);
      ++v6;
      v83 += v78;
      a3 = v217 + v78;
      if ((v215 ^ v84))
      {
        v85 = v6 - 1;
        break;
      }
    }

    v74 = v223;
    v71 = v190;
    v73 = v192;
    if ((v215 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v85 < v190)
    {
      goto LABEL_153;
    }

    if (v190 < v85)
    {
      v6 = v78 * (v85 - 1);
      v99 = v85;
      v100 = v85 * v78;
      v207 = v85;
      v101 = v190;
      v102 = v190 * v78;
      do
      {
        if (v101 != --v99)
        {
          a3 = *v205;
          if (!*v205)
          {
            goto LABEL_157;
          }

          sub_21A18BED0(a3 + v102, v197, type metadata accessor for CookingSession);
          if (v102 < v6 || a3 + v102 >= a3 + v100)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v102 != v6)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21A18BED0(v197, a3 + v6, type metadata accessor for CookingSession);
        }

        ++v101;
        v6 -= v78;
        v100 -= v78;
        v102 += v78;
      }

      while (v101 < v99);
      v74 = v223;
      v73 = v192;
      v76 = v220;
      v72 = v221;
      v71 = v190;
      v85 = v207;
    }

LABEL_35:
    v103 = v205[1];
    if (v85 >= v103)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v85, v71))
    {
      goto LABEL_150;
    }

    if (v85 - v71 >= v187)
    {
LABEL_44:
      a3 = v85;
      if (v85 < v71)
      {
        goto LABEL_149;
      }

      goto LABEL_45;
    }

    if (__OFADD__(v71, v187))
    {
      goto LABEL_151;
    }

    if (v71 + v187 >= v103)
    {
      a3 = v205[1];
    }

    else
    {
      a3 = v71 + v187;
    }

    if (a3 < v71)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      result = sub_21A1C7168(a3);
      goto LABEL_123;
    }

    if (v85 == a3)
    {
      goto LABEL_44;
    }

    v153 = v76;
    v154 = *v205;
    v155 = *(v203 + 72);
    v156 = *v205 + v155 * (v85 - 1);
    v214 = -v155;
    v190 = v71;
    v157 = v71 - v85;
    v215 = v154;
    v194 = v155;
    v158 = v154 + v85 * v155;
    v198 = a3;
LABEL_99:
    v207 = v85;
    v199 = v158;
    v159 = v158;
    v200 = v157;
    v6 = v157;
    v201 = v156;
    v160 = v156;
LABEL_100:
    v161 = v224;
    sub_21A18C008(v159, v224, type metadata accessor for CookingSession);
    v162 = v225;
    sub_21A18C008(v160, v225, type metadata accessor for CookingSession);
    v163 = v161 + *(v153 + 60);
    v72 = v221;
    sub_21A183960(v163, v74, &qword_27CCFF048);
    sub_21A183960(v162 + *(v153 + 60), v226, &qword_27CCFF048);
    v164 = v74;
    v165 = v74;
    v166 = v222;
    sub_21A183960(v164, v222, &qword_27CCFF048);
    v167 = *v72;
    if ((*v72)(v166, 1, v227) != 1)
    {
      break;
    }

LABEL_103:
    sub_21A1427A8(v166, &qword_27CCFF048);
    v74 = v165;
    if (v167(v165, 1, v227) != 1)
    {
      sub_21A1427A8(v226, &qword_27CCFF048);
      sub_21A1427A8(v165, &qword_27CCFF048);
      sub_21A18BFA8(v225, type metadata accessor for CookingSession);
      result = sub_21A18BFA8(v224, type metadata accessor for CookingSession);
      goto LABEL_111;
    }

    if (v167(v226, 1, v227) == 1 && (*v225 != *v224 || v225[1] != v224[1]))
    {
      v173 = sub_21A2F8394();
      goto LABEL_110;
    }

    v6 = &unk_21A2FB5E0;
    sub_21A1427A8(v226, &qword_27CCFF048);
    sub_21A1427A8(v165, &qword_27CCFF048);
    sub_21A18BFA8(v225, type metadata accessor for CookingSession);
    sub_21A18BFA8(v224, type metadata accessor for CookingSession);
LABEL_97:
    v153 = v220;
LABEL_98:
    v85 = v207 + 1;
    v156 = v201 + v194;
    v157 = v200 - 1;
    v158 = v199 + v194;
    a3 = v198;
    if (v207 + 1 != v198)
    {
      goto LABEL_99;
    }

    v73 = v192;
    v75 = v202;
    v76 = v153;
    v71 = v190;
    if (v198 < v190)
    {
      goto LABEL_149;
    }

LABEL_45:
    v104 = v73;
    result = swift_isUniquelyReferenced_nonNull_native();
    v198 = a3;
    if (result)
    {
      v73 = v104;
    }

    else
    {
      result = sub_21A1B7214(0, *(v104 + 16) + 1, 1, v104);
      v73 = result;
    }

    v6 = *(v73 + 16);
    v105 = *(v73 + 24);
    a3 = v6 + 1;
    if (v6 >= v105 >> 1)
    {
      result = sub_21A1B7214((v105 > 1), v6 + 1, 1, v73);
      v73 = result;
    }

    *(v73 + 16) = a3;
    v106 = v73 + 16 * v6;
    v107 = v198;
    *(v106 + 32) = v71;
    *(v106 + 40) = v107;
    v217 = *v191;
    if (!v217)
    {
      goto LABEL_159;
    }

    if (v6)
    {
      while (1)
      {
        v108 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v109 = *(v73 + 32);
          v110 = *(v73 + 40);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_64:
          if (v112)
          {
            goto LABEL_138;
          }

          v125 = (v73 + 16 * a3);
          v127 = *v125;
          v126 = v125[1];
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_141;
          }

          v131 = (v73 + 32 + 16 * v108);
          v133 = *v131;
          v132 = v131[1];
          v119 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v119)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v129, v134))
          {
            goto LABEL_145;
          }

          if (v129 + v134 >= v111)
          {
            if (v111 < v134)
            {
              v108 = a3 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v135 = (v73 + 16 * a3);
        v137 = *v135;
        v136 = v135[1];
        v119 = __OFSUB__(v136, v137);
        v129 = v136 - v137;
        v130 = v119;
LABEL_78:
        if (v130)
        {
          goto LABEL_140;
        }

        v138 = v73 + 16 * v108;
        v140 = *(v138 + 32);
        v139 = *(v138 + 40);
        v119 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v119)
        {
          goto LABEL_143;
        }

        if (v141 < v129)
        {
          goto LABEL_3;
        }

LABEL_85:
        v6 = v108 - 1;
        if (v108 - 1 >= a3)
        {
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v205)
        {
          goto LABEL_156;
        }

        v146 = v75;
        v147 = v76;
        v148 = v73;
        a3 = *(v73 + 32 + 16 * v6);
        v149 = *(v73 + 32 + 16 * v108 + 8);
        v150 = v210;
        sub_21A18A95C(*v205 + *(v203 + 72) * a3, *v205 + *(v203 + 72) * *(v73 + 32 + 16 * v108), *v205 + *(v203 + 72) * v149, v217);
        v210 = v150;
        if (v150)
        {
        }

        if (v149 < a3)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v151 = v148;
        }

        else
        {
          v151 = sub_21A1C7168(v148);
        }

        if (v6 >= *(v151 + 2))
        {
          goto LABEL_135;
        }

        v76 = v147;
        v152 = &v151[16 * v6];
        *(v152 + 4) = a3;
        *(v152 + 5) = v149;
        v228 = v151;
        result = sub_21A1C70DC(v108);
        v73 = v228;
        a3 = *(v228 + 16);
        v75 = v146;
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v113 = v73 + 32 + 16 * a3;
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_136;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_137;
      }

      v120 = (v73 + 16 * a3);
      v122 = *v120;
      v121 = v120[1];
      v119 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v119)
      {
        goto LABEL_139;
      }

      v119 = __OFADD__(v111, v123);
      v124 = v111 + v123;
      if (v119)
      {
        goto LABEL_142;
      }

      if (v124 >= v116)
      {
        v142 = (v73 + 32 + 16 * v108);
        v144 = *v142;
        v143 = v142[1];
        v119 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v119)
        {
          goto LABEL_146;
        }

        if (v111 < v145)
        {
          v108 = a3 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v70 = v205[1];
    v71 = v198;
    if (v198 >= v70)
    {
      goto LABEL_120;
    }
  }

  v217 = v6;
  v168 = *v213;
  v169 = v72;
  v170 = v227;
  (*v213)(v218, v222, v227);
  v171 = v219;
  sub_21A183960(v226, v219, &qword_27CCFF048);
  v172 = v170;
  v72 = v169;
  if (v167(v171, 1, v172) == 1)
  {
    (*v212)(v218, v227);
    v166 = v219;
    v165 = v223;
    v6 = v217;
    goto LABEL_103;
  }

  v174 = v227;
  v175 = v218;
  v176 = v206;
  v168(v206, v219, v227);
  v173 = sub_21A2F4944();
  v177 = *v212;
  v178 = v221;
  (*v212)(v176, v174);
  v179 = v174;
  v72 = v178;
  v177(v175, v179);
  v6 = v217;
LABEL_110:
  sub_21A1427A8(v226, &qword_27CCFF048);
  sub_21A1427A8(v223, &qword_27CCFF048);
  sub_21A18BFA8(v225, type metadata accessor for CookingSession);
  result = sub_21A18BFA8(v224, type metadata accessor for CookingSession);
  if ((v173 & 1) == 0)
  {
    v74 = v223;
    goto LABEL_97;
  }

LABEL_111:
  if (v215)
  {
    v180 = v216;
    sub_21A18BED0(v159, v216, type metadata accessor for CookingSession);
    v153 = v220;
    swift_arrayInitWithTakeFrontToBack();
    sub_21A18BED0(v180, v160, type metadata accessor for CookingSession);
    v160 += v214;
    v159 += v214;
    v181 = __CFADD__(v6++, 1);
    v74 = v223;
    if (v181)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_21A18A95C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v122 = a3;
  v7 = sub_21A2F49B4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v117 = &v113 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v116 = &v113 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v121 = (&v113 - v19);
  v20 = sub_21A176C98(&qword_27CCFF048);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v120 = (&v113 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v129 = &v113 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v119 = &v113 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v123 = &v113 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v126 = (&v113 - v39);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v134 = &v113 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v127 = (&v113 - v44);
  v135 = type metadata accessor for CookingSession();
  v46 = MEMORY[0x28223BE20](v135, v45);
  v125 = (&v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x28223BE20](v46, v48);
  v118 = &v113 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v131 = (&v113 - v53);
  result = MEMORY[0x28223BE20](v52, v54);
  v130 = &v113 - v56;
  v124 = *(v57 + 72);
  if (!v124)
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (a2 - a1 == 0x8000000000000000 && v124 == -1)
  {
    goto LABEL_81;
  }

  v58 = v122 - a2;
  if (v122 - a2 != 0x8000000000000000 || v124 != -1)
  {
    v59 = (a2 - a1) / v124;
    v138 = a1;
    v137 = a4;
    v128 = v7;
    if (v59 < v58 / v124)
    {
      v60 = v59 * v124;
      if (a4 < a1 || a1 + v60 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v125 = (a4 + v60);
      v136 = a4 + v60;
      if (v60 >= 1 && a2 < v122)
      {
        v63 = (v8 + 48);
        v64 = (v8 + 32);
        v120 = (v8 + 8);
        while (1)
        {
          v129 = a1;
          v133 = a2;
          v65 = v64;
          v66 = v130;
          sub_21A18C008(a2, v130, type metadata accessor for CookingSession);
          v132 = a4;
          v67 = v131;
          sub_21A18C008(a4, v131, type metadata accessor for CookingSession);
          v68 = v135;
          v69 = &v66[*(v135 + 60)];
          v64 = v65;
          v70 = v127;
          sub_21A183960(v69, v127, &qword_27CCFF048);
          sub_21A183960(v67 + *(v68 + 60), v134, &qword_27CCFF048);
          v71 = v126;
          sub_21A183960(v70, v126, &qword_27CCFF048);
          v72 = *v63;
          v73 = v128;
          v74 = (*v63)(v71, 1, v128);
          v75 = v71;
          v76 = v123;
          if (v74 != 1)
          {
            v77 = *v65;
            (*v65)(v121, v126, v73);
            sub_21A183960(v134, v76, &qword_27CCFF048);
            if (v72(v76, 1, v73) != 1)
            {
              v81 = v121;
              v82 = v116;
              v77(v116, v123, v73);
              v83 = sub_21A2F4944();
              v84 = *v120;
              v85 = v82;
              v64 = v65;
              (*v120)(v85, v73);
              v84(v81, v73);
              v86 = v83;
              a4 = v132;
              v79 = v129;
              goto LABEL_32;
            }

            (*v120)(v121, v73);
            v75 = v76;
            v70 = v127;
          }

          sub_21A1427A8(v75, &qword_27CCFF048);
          if (v72(v70, 1, v73) != 1)
          {
            sub_21A1427A8(v134, &qword_27CCFF048);
            sub_21A1427A8(v70, &qword_27CCFF048);
            sub_21A18BFA8(v131, type metadata accessor for CookingSession);
            sub_21A18BFA8(v130, type metadata accessor for CookingSession);
            a4 = v132;
            v80 = v124;
            v79 = v129;
LABEL_33:
            a2 = v133 + v80;
            if (v79 < v133 || v79 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v133)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_44;
          }

          v78 = v72(v134, 1, v73);
          v79 = v129;
          if (v78 != 1 || *v131 == *v130 && v131[1] == *(v130 + 1))
          {
            sub_21A1427A8(v134, &qword_27CCFF048);
            sub_21A1427A8(v70, &qword_27CCFF048);
            sub_21A18BFA8(v131, type metadata accessor for CookingSession);
            sub_21A18BFA8(v130, type metadata accessor for CookingSession);
            a4 = v132;
            v80 = v124;
            goto LABEL_37;
          }

          v86 = sub_21A2F8394();
          a4 = v132;
LABEL_32:
          sub_21A1427A8(v134, &qword_27CCFF048);
          sub_21A1427A8(v127, &qword_27CCFF048);
          sub_21A18BFA8(v131, type metadata accessor for CookingSession);
          sub_21A18BFA8(v130, type metadata accessor for CookingSession);
          v80 = v124;
          if (v86)
          {
            goto LABEL_33;
          }

LABEL_37:
          if (v79 < a4 || v79 >= a4 + v80)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v79 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v137 = a4 + v80;
          a4 += v80;
          a2 = v133;
LABEL_44:
          a1 = v79 + v80;
          v138 = a1;
          if (a4 >= v125 || a2 >= v122)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_79;
    }

    v61 = v58 / v124 * v124;
    if (a4 < a2 || a2 + v61 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v87 = a4 + v61;
    if (v61 < 1)
    {
LABEL_78:
      v138 = a2;
      v136 = v87;
LABEL_79:
      sub_21A1C717C(&v138, &v137, &v136);
      return 1;
    }

    v121 = v24;
    v132 = a4;
    v88 = -v124;
    v127 = (v8 + 48);
    v116 = (v8 + 32);
    v115 = (v8 + 8);
    v89 = (a4 + v61);
    v90 = v122;
    v91 = v118;
    v134 = -v124;
LABEL_50:
    v126 = v87;
    v122 = v87;
    v92 = a2 + v88;
    v133 = a2 + v88;
    v124 = a2;
    while (1)
    {
      if (a2 <= a1)
      {
        v138 = a2;
        v136 = v122;
        goto LABEL_79;
      }

      v130 = &v89[v88];
      v131 = v90;
      sub_21A18C008(&v89[v88], v91, type metadata accessor for CookingSession);
      v94 = v92;
      v95 = v125;
      sub_21A18C008(v94, v125, type metadata accessor for CookingSession);
      v96 = v135;
      v97 = v91 + *(v135 + 60);
      v98 = v119;
      sub_21A183960(v97, v119, &qword_27CCFF048);
      sub_21A183960(v95 + *(v96 + 60), v129, &qword_27CCFF048);
      v99 = v120;
      sub_21A183960(v98, v120, &qword_27CCFF048);
      v100 = v128;
      v101 = *v127;
      if ((*v127)(v99, 1, v128) != 1)
      {
        v123 = v89;
        v102 = *v116;
        v103 = v117;
        (*v116)(v117, v120, v100);
        v99 = v121;
        sub_21A183960(v129, v121, &qword_27CCFF048);
        if (v101(v99, 1, v100) != 1)
        {
          v107 = v114;
          v102(v114, v99, v100);
          v104 = sub_21A2F4944();
          v108 = *v115;
          v109 = v117;
          (*v115)(v107, v100);
          v108(v109, v100);
          v91 = v118;
          v106 = v119;
          v89 = v123;
          goto LABEL_65;
        }

        (*v115)(v103, v100);
        v98 = v119;
        v89 = v123;
      }

      sub_21A1427A8(v99, &qword_27CCFF048);
      v104 = 1;
      v105 = v101(v98, 1, v100);
      v106 = v98;
      v91 = v118;
      if (v105 == 1)
      {
        if (v101(v129, 1, v128) != 1 || *v125 == *v91 && v125[1] == v91[1])
        {
          v104 = 0;
        }

        else
        {
          v104 = sub_21A2F8394();
        }
      }

LABEL_65:
      sub_21A1427A8(v129, &qword_27CCFF048);
      sub_21A1427A8(v106, &qword_27CCFF048);
      v110 = v131;
      v90 = v131 + v134;
      sub_21A18BFA8(v125, type metadata accessor for CookingSession);
      sub_21A18BFA8(v91, type metadata accessor for CookingSession);
      if (v104)
      {
        if (v110 < v124 || v90 >= v124)
        {
          a2 = v133;
          swift_arrayInitWithTakeFrontToBack();
          v87 = v126;
          v88 = v134;
        }

        else
        {
          a2 = v133;
          v88 = v134;
          v87 = v126;
          if (v110 != v124)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v133;
          }
        }

        if (v89 <= v132)
        {
          goto LABEL_78;
        }

        goto LABEL_50;
      }

      v111 = v130;
      v112 = v130;
      if (v110 < v89 || v90 >= v89)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v110 != v89)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v126 = v112;
      v89 = v112;
      v93 = v111 > v132;
      v92 = v133;
      v88 = v134;
      a2 = v124;
      if (!v93)
      {
        v87 = v126;
        goto LABEL_78;
      }
    }
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_21A18B67C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CookingSession();
  v35 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v33 = &v30 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v19 = 0;
    v30 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v34;
      a1 = *(v35 + 72);
      sub_21A18C008(*(a4 + 56) + a1 * (v24 | (v19 << 6)), v34, type metadata accessor for CookingSession);
      v26 = v25;
      v27 = v33;
      sub_21A18BED0(v26, v33, type metadata accessor for CookingSession);
      sub_21A18BED0(v27, a2, type metadata accessor for CookingSession);
      if (v21 == v32)
      {
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += a1;
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v20;
    }

    v19 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v16 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21A18B8F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21A2F7554();
  v10 = MEMORY[0x28223BE20](v8, v9);
  (*(v12 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8, v10);
  sub_21A1525E0(&qword_27CCFF090, MEMORY[0x277CC5290]);
  sub_21A2F7AA4();
  v13 = *(v3 + *(sub_21A176C98(&qword_27CCFF098) + 36));
  result = sub_21A1427A8(v4, &qword_27CCFF098);
  v15 = v23[0];
  v16 = v23[1];
  if (!a2)
  {
    v19 = v13;
    v13 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = v13;
    v13 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v13)
    {
      v17 = 0;
      v18 = v13 - a3;
      v19 = v13 - 1;
      while (1)
      {
        v20 = v17;
        v21 = v16 + v17;
        v22 = *(v15 + 16);
        if (v21 == v22)
        {
          v16 = v21;
          v13 = v20;
          goto LABEL_17;
        }

        if (v21 >= v22)
        {
          break;
        }

        *(a2 + v20) = *(v16 + v15 + 32 + v20);
        if (a3 - 1 == v20)
        {
          v13 = a3;
          goto LABEL_16;
        }

        v17 = v20 + 1;
        --v19;
        if (v13 == v20 + 1)
        {
          v18 = 0;
LABEL_16:
          v16 += v20 + 1;
          v19 = v18;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v19 = 0;
LABEL_17:
    *a1 = v15;
    a1[1] = v16;
    a1[2] = v19;
    return v13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_21A18BB0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = *(a4 + 48) + 56 * (__clz(__rbit64(v9)) | (v12 << 6));
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      v21 = *(v17 + 32);
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v19;
      *(v11 + 24) = v20;
      *(v11 + 32) = v21;
      *(v11 + 40) = v22;
      *(v11 + 48) = v23;
      if (v14 == v10)
      {
        sub_21A18BD3C();
        goto LABEL_24;
      }

      v11 += 56;
      sub_21A18BD3C();
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
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21A18BCAC(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v4 = *a2;
  v5 = v2;
  return sub_21A1867C4(&v4);
}

uint64_t sub_21A18BCF4(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v4 = *a2;
  v5 = v2;
  return sub_21A186A48(&v4);
}

uint64_t sub_21A18BD44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A187334(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21A18BE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A18BE7C()
{
  result = qword_27CCFF068;
  if (!qword_27CCFF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF068);
  }

  return result;
}

uint64_t sub_21A18BED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A18BF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A18BFA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A18C008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A18C108@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21A2F53E4();
  v6 = sub_21A177CBC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_21A18C1A0()
{
  v0 = sub_21A2F53E4();
  sub_21A177DCC(v0, qword_27CD23BC0);
  sub_21A177CBC(v0, qword_27CD23BC0);
  return sub_21A2F53D4();
}

uint64_t sub_21A18C27C()
{
  v0 = sub_21A2F53E4();
  sub_21A177DCC(v0, qword_27CD23C20);
  sub_21A177CBC(v0, qword_27CD23C20);
  return sub_21A2F53D4();
}

uint64_t sub_21A18C390()
{
  v0 = sub_21A2F53E4();
  sub_21A177DCC(v0, qword_27CD23C98);
  sub_21A177CBC(v0, qword_27CD23C98);
  return sub_21A2F53D4();
}

uint64_t sub_21A18C40C()
{
  v0 = sub_21A2F53E4();
  sub_21A177DCC(v0, qword_27CD23CB0);
  sub_21A177CBC(v0, qword_27CD23CB0);
  return sub_21A2F53D4();
}

uint64_t sub_21A18C4B8()
{
  v0 = sub_21A2F53E4();
  sub_21A177DCC(v0, qword_27CD23CE0);
  sub_21A177CBC(v0, qword_27CD23CE0);
  return sub_21A2F53D4();
}

uint64_t sub_21A18C554(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21A2F53E4();
  sub_21A177DCC(v3, a2);
  sub_21A177CBC(v3, a2);
  return sub_21A2F53D4();
}

uint64_t _s10CookingKit27RecipeFeaturesConfigurationV06SavingE0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t sub_21A18C614()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t sub_21A18C658@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A18C704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A18C7B0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A18C7EC(v4);
}

uint64_t sub_21A18C7EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }
}

uint64_t sub_21A18C950()
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A18CA00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A18CAAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21A18CC1C()
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  return *(v0 + 48);
}

uint64_t sub_21A18CCBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_21A18CD8C(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A18CE9C()
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  return *(v0 + 49);
}

uint64_t sub_21A18CF3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 49);
  return result;
}

unsigned __int8 *sub_21A18CFE4(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == *(*a2 + 49))
  {
    *(*a2 + 49) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A18D0F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  return sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe, a1, &qword_27CCFEBC0);
}

uint64_t sub_21A18D1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe, a2, &qword_27CCFEBC0);
}

uint64_t sub_21A18D280(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEBC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CCFEBC0);
  return sub_21A18D32C(v5);
}

uint64_t sub_21A18D32C(uint64_t a1)
{
  v3 = type metadata accessor for ShareableRecipe(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v32 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21A176C98(&qword_27CCFF138);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = sub_21A176C98(&qword_27CCFEBC0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  v33 = v1;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe;
  v21 = OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe;
  sub_21A183960(v20, &v31 - v18, &qword_27CCFEBC0);
  v22 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFEBC0);
  v34 = a1;
  sub_21A183960(a1, &v11[v22], &qword_27CCFEBC0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEBC0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFEBC0);
      v24 = v34;
LABEL_9:
      sub_21A18F8B0(v24, v33 + v21);
      return sub_21A1427A8(v24, &qword_27CCFEBC0);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v16, &qword_27CCFEBC0);
  if (v23(&v11[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEBC0);
    sub_21A18F920(v16, type metadata accessor for ShareableRecipe);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CCFF138);
    v24 = v34;
    goto LABEL_7;
  }

  v28 = v32;
  sub_21A18FCB8(&v11[v22], v32, type metadata accessor for ShareableRecipe);
  v29 = _s10CookingKit15ShareableRecipeV2eeoiySbAC_ACtFZ_0(v16, v28);
  sub_21A18F920(v28, type metadata accessor for ShareableRecipe);
  sub_21A1427A8(v19, &qword_27CCFEBC0);
  sub_21A18F920(v16, type metadata accessor for ShareableRecipe);
  sub_21A1427A8(v11, &qword_27CCFEBC0);
  v24 = v34;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  v27 = v33;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v24;
  v35 = v27;
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CCFEBC0);
}

uint64_t sub_21A18D7EC()
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction);
  sub_21A15955C(v1);
  return v1;
}

uint64_t sub_21A18D8AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21A18F84C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21A15955C(v4);
}

uint64_t sub_21A18D9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21A18FDD0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v6);
  sub_21A15955C(v1);
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();
  sub_21A18EAA0(v4);
}

uint64_t sub_21A18DB14(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  return *(v2 + *a2);
}

uint64_t sub_21A18DBC8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  *a3 = *(v5 + *a2);
  return result;
}

unsigned __int8 *sub_21A18DCA4(unsigned __int8 *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *result;
  if (v5 == *(*a2 + *a5))
  {
    *(*a2 + *a5) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A18DDAC()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFEBC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v26 - v4;
  v6 = v0;
  v7 = *(v0 + 16);
  v8 = *(v6 + 24);
  v9 = (v6 + 16);
  sub_21A2F5434();
  LOBYTE(v7) = sub_21A18F608(v7, v8, 0, 0);

  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    *(&v26 - 3) = 0;
    *(&v26 - 2) = 0;
    *(&v26 - 4) = v1;
    v27 = v1;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();

    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;

    if (*(v1 + 40))
    {
LABEL_3:
      v12 = swift_getKeyPath();
      MEMORY[0x28223BE20](v12, v13);
      *(&v26 - 3) = 0;
      *(&v26 - 2) = 0;
      *(&v26 - 4) = v1;
      v27 = v1;
      sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
      sub_21A2F5084();

      if (*(v1 + 48))
      {
        goto LABEL_4;
      }

LABEL_8:
      *(v1 + 48) = 0;
      if ((*(v1 + 49) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  if ((*(v1 + 48) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = swift_getKeyPath();
  MEMORY[0x28223BE20](v14, v15);
  *(&v26 - 2) = v1;
  *(&v26 - 8) = 0;
  v27 = v1;
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();

  if ((*(v1 + 49) & 1) == 0)
  {
LABEL_5:
    *(v1 + 49) = 0;
    goto LABEL_10;
  }

LABEL_9:
  v16 = swift_getKeyPath();
  MEMORY[0x28223BE20](v16, v17);
  *(&v26 - 2) = v1;
  *(&v26 - 8) = 0;
  v27 = v1;
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();

LABEL_10:
  v18 = type metadata accessor for ShareableRecipe(0);
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_21A18D32C(v5);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled))
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19, v20);
    *(&v26 - 2) = v1;
    *(&v26 - 8) = 0;
    v27 = v1;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled) = 0;
  }

  v21 = swift_getKeyPath();
  MEMORY[0x28223BE20](v21, v22);
  *(&v26 - 3) = 0;
  *(&v26 - 2) = 0;
  *(&v26 - 4) = v1;
  v27 = v1;
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();

  if (*(v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable))
  {
    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24, v25);
    *(&v26 - 2) = v1;
    *(&v26 - 8) = 0;
    v27 = v1;
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable) = 0;
  }

  return result;
}

uint64_t sub_21A18E400()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
    swift_getKeyPath();
    sub_21A2F5434();
    sub_21A2F5094();

    v5 = *(v0 + 49);
    swift_getKeyPath();
    sub_21A2F5094();

    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (v5 == 1)
    {
      v8 = xmmword_21A2FB640;
    }

    else
    {
      v8 = 0uLL;
    }

    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    return sub_21A18FAD4(v4, v3, v6, v7, v8, *(&v8 + 1), 0x20u);
  }

  return result;
}

uint64_t sub_21A18E5C8()
{

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe, &qword_27CCFEBC0);
  sub_21A18EAA0(*(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction));
  v1 = OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A18E74C()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe;
  v2 = type metadata accessor for ShareableRecipe(0);
  v3 = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled) = 0;
  v4 = (v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable) = 0;
  MEMORY[0x21CED60A0](v3);
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A18E808()
{
  v0 = swift_allocObject();
  sub_21A18E74C();
  return v0;
}

uint64_t sub_21A18E840()
{
  sub_21A18FA70();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A18E87C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A18F55C(&qword_27CCFF158, type metadata accessor for RecipeCardQuickLinksViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A18E8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFF148);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeCardQuickLinksViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFF148);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A18F55C(&qword_27CCFF150, type metadata accessor for RecipeCardQuickLinksViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A18FCB8(v5, v8, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  }

  return result;
}

uint64_t sub_21A18EA50()
{
  sub_21A17A368();
  sub_21A17A3BC();
  sub_21A2F7624();
  return v1;
}

uint64_t sub_21A18EAA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21A18EAF4()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFEBC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v59 - v4;
  v6 = type metadata accessor for RecipeCardQuickLinksViewModelSource(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v59 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v59 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = v59 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = v59 - v24;
  sub_21A18F5A4(v0, v59 - v24);
  sub_21A176C98(&qword_27CCFF0E8);
  sub_21A2F7594();
  sub_21A18F920(v25, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  v26 = *(&v66 + 1);
  if (!*(&v66 + 1))
  {
    return sub_21A18DDAC();
  }

  v63 = v0;
  v64 = v6;
  v61 = v14;
  v62 = v10;
  v27 = v66;
  v28 = *v0;
  v29 = *(*v0 + 16);
  v30 = *(*v1 + 24);
  sub_21A2F5434();
  sub_21A2F5434();
  LOBYTE(v29) = sub_21A18F608(v29, v30, v27, v26);

  v60 = v5;
  if (v29)
  {
    KeyPath = swift_getKeyPath();
    v59[1] = v59;
    MEMORY[0x28223BE20](KeyPath, v32);
    v59[-4] = v28;
    v59[-3] = v27;
    v59[-2] = v26;
    *&v66 = v28;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;
  }

  v34 = v63;
  sub_21A18F5A4(v63, v22);
  sub_21A176C98(&qword_27CCFF0F0);
  sub_21A2F7594();
  sub_21A18F920(v22, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  sub_21A18CAAC(v66, *(&v66 + 1));
  sub_21A18F5A4(v34, v18);
  sub_21A176C98(&qword_27CCFF0F8);
  sub_21A2F7594();
  sub_21A18F920(v18, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  v35 = v66;
  if (v66 == *(v28 + 48))
  {
    *(v28 + 48) = v66;
  }

  else
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36, v37);
    v59[-2] = v28;
    LOBYTE(v59[-1]) = v35;
    *&v66 = v28;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  sub_21A18F5A4(v34, v22);
  sub_21A176C98(&qword_27CCFF100);
  sub_21A2F7594();
  v38 = sub_21A18F920(v22, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  v39 = *&v65[0];
  *&v66 = v27;
  *(&v66 + 1) = v26;
  MEMORY[0x28223BE20](v38, v40);
  v59[-2] = &v66;
  v41 = sub_21A1A2D18(sub_21A18F6D0, &v59[-4], v39) & 1;

  if (v41 == *(v28 + 49))
  {
    *(v28 + 49) = v41;
  }

  else
  {
    v42 = swift_getKeyPath();
    MEMORY[0x28223BE20](v42, v43);
    v59[-2] = v28;
    LOBYTE(v59[-1]) = v41;
    *&v66 = v28;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  v44 = v60;
  sub_21A18F5A4(v34, v22);
  v45 = v64;
  sub_21A176C98(&qword_27CCFF108);
  sub_21A2F7594();
  sub_21A18F920(v22, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  sub_21A18D32C(v44);
  v46 = v61;
  sub_21A18F5A4(v34, v61);
  sub_21A176C98(&qword_27CCFF110);
  sub_21A2F7594();
  sub_21A18F920(v46, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  v47 = v66;
  sub_21A18F700(*(&v66 + 1), v67);
  if (v47 == *(v28 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled))
  {
    *(v28 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled) = v47;
  }

  else
  {
    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48, v49);
    v59[-2] = v28;
    LOBYTE(v59[-1]) = v47;
    *&v65[0] = v28;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  v50 = v62;
  sub_21A18F5A4(v34, v62);
  sub_21A176C98(&qword_27CCFF118);
  sub_21A2F7594();
  sub_21A18F920(v50, type metadata accessor for RecipeCardQuickLinksViewModelSource);
  v51 = v66;
  if (v66 == *(v28 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable))
  {
    *(v28 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable) = v66;
  }

  else
  {
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52, v53);
    v59[-2] = v28;
    LOBYTE(v59[-1]) = v51;
    *&v66 = v28;
    sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
    sub_21A2F5084();
  }

  sub_21A183960(v34 + *(v45 + 52), &v66, &qword_27CCFF130);
  if (v68)
  {
    sub_21A14274C(&v66, v65);
    v54 = swift_allocObject();
    sub_21A14274C(v65, v54 + 16);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_21A18F790;
    *(v55 + 24) = v54;
    v56 = sub_21A18F7FC;
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v57 = swift_getKeyPath();
  MEMORY[0x28223BE20](v57, v58);
  v59[-4] = v28;
  v59[-3] = v56;
  v59[-2] = v55;
  *&v66 = v28;
  sub_21A18F55C(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5084();
  sub_21A18EAA0(v56);
}

uint64_t sub_21A18F55C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A18F5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardQuickLinksViewModelSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A18F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    if (!a4)
    {

      return v4 & 1;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    sub_21A2F5434();

    v4 = 1;
    return v4 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {
    sub_21A2F5434();
    v4 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();
    sub_21A2F5434();
    v4 = v5 ^ 1;
  }

  sub_21A2F5434();
  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21A18F700(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21A18F790(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  sub_21A142764(v2 + 2, v5);
  return (*(v6 + 8))(a1, v4, v5, v6);
}

uint64_t sub_21A18F7FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_21A18F8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEBC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A18F920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A18F998()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_21A15955C(v1);
  return sub_21A18EAA0(v4);
}

uint64_t sub_21A18F9F0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  sub_21A2F5434();
}

uint64_t sub_21A18FA30()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  sub_21A2F5434();
}

unint64_t sub_21A18FA70()
{
  result = qword_27CCFF140;
  if (!qword_27CCFF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF140);
  }

  return result;
}

uint64_t sub_21A18FAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3u:
        return sub_21A18FC50(result, a2, a3, a4, a5, a6);
      case 4u:
        return sub_21A16E294();
      case 5u:
        return sub_21A18FCA0(result, a2, a3);
    }
  }

  else if (a7 >> 5)
  {
    if (v7 == 1)
    {
      return sub_21A18FBA0(result, a2, a3, a4, a5);
    }

    else if (v7 == 2)
    {
      return sub_21A18FC00(result, a2, a3, a4, a5, a6 & 1);
    }
  }

  else
  {
    return sub_21A18FB30(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_21A18FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
  }

  if (a7 > 4u)
  {
    if (a7 == 5 || a7 == 6)
    {
    }
  }

  else if (a7 == 3 || a7 == 4)
  {
  }

  return result;
}

uint64_t sub_21A18FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_21A18FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21A18FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 3u)
  {
    if (a6 >= 4u)
    {
      return result;
    }
  }

  if (a6 - 5 < 3 || a6 == 4)
  {
  }

  return result;
}

uint64_t sub_21A18FCA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_21A18FCB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 CookingSession.cookingModeCurrentStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 CookingSession.cookingModeNextStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 CookingSession.cookingModePreviousStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u64[0];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 CookingSession.cookingModeScrollToStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  result = *(v1 + 88);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CookingSession.recipeCardCurrentStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  result = *(v1 + 120);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CookingSession.recipeCardScrollToStep.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  result = *(v1 + 152);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t CookingSession.lastExpandedUserPresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CookingSession() + 60);

  return sub_21A18FED0(v3, a1);
}

uint64_t sub_21A18FED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A18FF44(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000014;
      }

      if (a1 == 9)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000018;
      if (a1 == 7)
      {
        v6 = 0xD000000000000010;
      }

      if (a1 == 6)
      {
        return 0xD000000000000016;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x4449657069636572;
    v2 = 0xD000000000000017;
    v3 = 0xD000000000000015;
    if (a1 == 4)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000016;
    if (a1 != 1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A1900D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A192688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A190118(uint64_t a1)
{
  v2 = sub_21A192160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A190154(uint64_t a1)
{
  v2 = sub_21A192160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CookingSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CCFF160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A192160();
  sub_21A2F84B4();
  v10 = *(v3 + 8);
  *&v21 = *v3;
  *(&v21 + 1) = v10;
  v24 = 0;
  sub_21A1921B4();
  sub_21A2F5434();
  sub_21A2F8324();
  if (v2)
  {
  }

  else
  {

    v11 = *(v3 + 32);
    v21 = *(v3 + 16);
    v22 = v11;
    v24 = 1;
    sub_21A192208();
    sub_21A2F8324();
    v12 = *(v3 + 56);
    v21 = *(v3 + 40);
    v22 = v12;
    v24 = 2;
    sub_21A2F8324();
    v13 = *(v3 + 80);
    v21 = *(v3 + 64);
    v22 = v13;
    v24 = 3;
    sub_21A2F8324();
    v14 = *(v3 + 104);
    v15 = *(v3 + 112);
    v21 = *(v3 + 88);
    v22 = v14;
    v23 = v15;
    v24 = 4;
    sub_21A2F82D4();
    v16 = *(v3 + 136);
    v17 = *(v3 + 144);
    v21 = *(v3 + 120);
    v22 = v16;
    v23 = v17;
    v24 = 5;
    sub_21A2F82D4();
    v18 = *(v3 + 168);
    v19 = *(v3 + 176);
    v21 = *(v3 + 152);
    v22 = v18;
    v23 = v19;
    v24 = 6;
    sub_21A2F82D4();
    LOBYTE(v21) = *(v3 + 177);
    v24 = 7;
    sub_21A19225C();
    sub_21A2F82D4();
    LOBYTE(v21) = *(v3 + 178);
    v24 = 8;
    sub_21A2F82D4();
    LOBYTE(v21) = 9;
    sub_21A2F82F4();
    LOBYTE(v21) = 10;
    sub_21A2F82F4();
    type metadata accessor for CookingSession();
    LOBYTE(v21) = 11;
    sub_21A2F49B4();
    sub_21A192C18(&qword_27CCFF188);
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CookingSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_21A176C98(&qword_27CCFF048);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v35 = &v34 - v6;
  v7 = sub_21A176C98(&qword_27CCFF190);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for CookingSession();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE7F0 != -1)
  {
    v32 = v13;
    swift_once();
    v13 = v32;
  }

  *&v16 = xmmword_27CCFFB50;
  v17 = qword_27CCFFB60;
  *&v18 = qword_27CCFFB60;
  *(&v18 + 1) = xmmword_27CCFFB50;
  *(v15 + 1) = xmmword_27CCFFB50;
  *(v15 + 2) = v18;
  *(&v16 + 1) = *(&xmmword_27CCFFB50 + 1);
  *(v15 + 3) = *(&xmmword_27CCFFB50 + 8);
  *(v15 + 4) = v16;
  *(v15 + 10) = v17;
  *(v15 + 11) = 0;
  *(v15 + 12) = 0;
  *(v15 + 13) = 0;
  v15[112] = 1;
  *(v15 + 16) = 0;
  *(v15 + 17) = 0;
  *(v15 + 15) = 0;
  v15[144] = 1;
  *(v15 + 20) = 0;
  *(v15 + 21) = 0;
  *(v15 + 19) = 0;
  v15[176] = 1;
  *(v15 + 177) = 1028;
  v19 = *(v13 + 60);
  v20 = sub_21A2F49B4();
  v21 = *(*(v20 - 8) + 56);
  v37 = v19;
  v21(&v15[v19], 1, 1, v20);
  sub_21A142764(a1, a1[3]);
  sub_21A192160();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    return sub_21A1427A8(&v15[v37], &qword_27CCFF048);
  }

  else
  {
    v41 = 0;
    sub_21A1922B0();
    sub_21A2F8284();
    v22 = *(&v38 + 1);
    *v15 = v38;
    *(v15 + 1) = v22;
    v41 = 1;
    sub_21A192304();
    sub_21A2F8284();
    v23 = v39;
    *(v15 + 1) = v38;
    *(v15 + 4) = v23;
    v41 = 2;
    sub_21A2F8284();
    v24 = v39;
    *(v15 + 40) = v38;
    *(v15 + 7) = v24;
    v41 = 3;
    sub_21A2F8284();
    v25 = v39;
    *(v15 + 4) = v38;
    *(v15 + 10) = v25;
    v41 = 4;
    sub_21A2F8234();
    v26 = v39;
    v27 = v40;
    *(v15 + 88) = v38;
    *(v15 + 13) = v26;
    v15[112] = v27;
    v41 = 5;
    sub_21A2F8234();
    v28 = v39;
    v29 = v40;
    *(v15 + 120) = v38;
    *(v15 + 17) = v28;
    v15[144] = v29;
    v41 = 6;
    sub_21A2F8234();
    v30 = v39;
    v31 = v40;
    *(v15 + 152) = v38;
    *(v15 + 21) = v30;
    v15[176] = v31;
    v41 = 7;
    sub_21A192358();
    sub_21A2F8234();
    v15[177] = v38;
    v41 = 8;
    sub_21A2F8234();
    v15[178] = v38;
    LOBYTE(v38) = 9;
    v15[179] = sub_21A2F8254() & 1;
    LOBYTE(v38) = 10;
    v15[180] = sub_21A2F8254() & 1;
    LOBYTE(v38) = 11;
    sub_21A192C18(&qword_27CCFF1B0);
    sub_21A2F8234();
    (*(v36 + 8))(v10, v7);
    sub_21A18BE0C(v35, &v15[v37]);
    sub_21A192A48(v15, v34, type metadata accessor for CookingSession);
    sub_21A142808(a1);
    return sub_21A192B04(v15, type metadata accessor for CookingSession);
  }
}

uint64_t CookingSession.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21A2F5434();
}

uint64_t CookingSession.description.getter()
{
  sub_21A2F7FF4();

  MEMORY[0x21CED6480](*v0, v0[1]);
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return 0x53676E696B6F6F43;
}

uint64_t sub_21A190D68()
{
  sub_21A2F7FF4();

  MEMORY[0x21CED6480](*v0, v0[1]);
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return 0x53676E696B6F6F43;
}

uint64_t sub_21A190E08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v24 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v3 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);
    v17 = v14 == 0;
    sub_21A2F5434();
    sub_21A2F5434();
    if (!v14)
    {
      return v17;
    }

    v18 = v9;
    v19 = v2;
    sub_21A261F58(v15, v14);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = sub_21A2F5434();
    v23 = sub_21A20106C(v22, v16);

    v2 = v19;
    v7 = v18;
    if ((v23 & 1) == 0)
    {
      return v17;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v24)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A190FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSession();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v53 - v11;
  v13 = sub_21A176C98(&qword_27CCFF1E8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = a2;
  v56 = (&v53 - v19);
  v20 = 0;
  v54 = a1;
  v21 = *(a1 + 64);
  v53 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  while (v24)
  {
    v58 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v20 << 6);
    v27 = v57;
LABEL_16:
    v32 = (*(v54 + 48) + 16 * v26);
    v33 = *v32;
    v34 = v32[1];
    sub_21A192A48(*(v54 + 56) + *(v5 + 72) * v26, v12, type metadata accessor for CookingSession);
    v35 = sub_21A176C98(&qword_27CCFF1F0);
    v36 = *(v35 + 48);
    *v27 = v33;
    v27[1] = v34;
    sub_21A192BB0(v12, v27 + v36, type metadata accessor for CookingSession);
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
    sub_21A2F5434();
LABEL_17:
    v37 = v56;
    sub_21A149B18(v27, v56, &qword_27CCFF1E8);
    v38 = sub_21A176C98(&qword_27CCFF1F0);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = v12;
    v42 = v5;
    v43 = *(v38 + 48);
    v45 = *v37;
    v44 = v37[1];
    sub_21A192BB0(v37 + v43, v9, type metadata accessor for CookingSession);
    v46 = v55;
    v47 = sub_21A261F58(v45, v44);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      sub_21A192B04(v9, type metadata accessor for CookingSession);
      return 0;
    }

    v50 = *(v46 + 56);
    v5 = v42;
    v12 = v41;
    sub_21A192A48(v50 + *(v42 + 72) * v47, v41, type metadata accessor for CookingSession);
    v51 = _s10CookingKit0A7SessionV2eeoiySbAC_ACtFZ_0(v41, v9);
    sub_21A192B04(v41, type metadata accessor for CookingSession);
    result = sub_21A192B04(v9, type metadata accessor for CookingSession);
    v24 = v58;
    if (!v51)
    {
      return v40;
    }
  }

  if (v25 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v27 = v57;
  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v25)
    {
      v52 = sub_21A176C98(&qword_27CCFF1F0);
      (*(*(v52 - 8) + 56))(v27, 1, 1, v52);
      v58 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v31 = *(v53 + 8 * v30);
    ++v20;
    if (v31)
    {
      v58 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v20 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A191438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTimer();
  v75 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v71 = &v64 - v14;
  v15 = sub_21A176C98(&qword_27CCFF208);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17, v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = &v64 - v22;
  v23 = 0;
  v66 = a1;
  v24 = *(a1 + 64);
  v65 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v68 = v8;
  v69 = v12;
  v67 = v28;
  while (v27)
  {
    v32 = a2;
    v74 = (v27 - 1) & v27;
    v33 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_18:
    v39 = *(v66 + 48) + 48 * v33;
    v41 = *v39;
    v40 = *(v39 + 8);
    v42 = *(v66 + 56) + *(v75 + 72) * v33;
    v43 = *(v39 + 16);
    v72 = *(v39 + 32);
    v73 = v43;
    v44 = v71;
    sub_21A192A48(v42, v71, type metadata accessor for RecipeTimer);
    v45 = sub_21A176C98(&qword_27CCFF210);
    v46 = *(v45 + 48);
    *v19 = v41;
    *(v19 + 1) = v40;
    v47 = v72;
    *(v19 + 1) = v73;
    *(v19 + 2) = v47;
    sub_21A192BB0(v44, &v19[v46], type metadata accessor for RecipeTimer);
    (*(*(v45 - 8) + 56))(v19, 0, 1, v45);
    sub_21A2F5434();
    a2 = v32;
    v36 = v70;
LABEL_19:
    sub_21A149B18(v19, v36, &qword_27CCFF208);
    v48 = sub_21A176C98(&qword_27CCFF210);
    v49 = (*(*(v48 - 8) + 48))(v36, 1, v48) == 1;
    result = v49;
    if (v49)
    {
      return result;
    }

    LODWORD(v73) = v49;
    v50 = *(v48 + 48);
    v51 = v36[1];
    v76[0] = *v36;
    v76[1] = v51;
    v76[2] = v36[2];
    v52 = v36 + v50;
    v53 = v69;
    sub_21A192BB0(v52, v69, type metadata accessor for RecipeTimer);
    v54 = sub_21A25A410(v76);
    v56 = v55;
    sub_21A192C5C(v76);
    if ((v56 & 1) == 0)
    {
      goto LABEL_33;
    }

    v57 = v68;
    sub_21A192A48(*(a2 + 56) + *(v75 + 72) * v54, v68, type metadata accessor for RecipeTimer);
    sub_21A192B64();
    if ((sub_21A2F7E74() & 1) == 0 || (_s10CookingKit12ContinuationV2eeoiySbACyxG_AEtFZ_0() & 1) == 0 || *(v57 + v4[6]) != *(v53 + v4[6]))
    {
      goto LABEL_32;
    }

    v58 = v4[7];
    v59 = (v57 + v58);
    v60 = *(v57 + v58 + 8);
    v61 = (v53 + v58);
    v62 = v61[1];
    if (v60)
    {
      if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_21A2F8394() & 1) == 0)
      {
LABEL_32:
        sub_21A192B04(v57, type metadata accessor for RecipeTimer);
LABEL_33:
        sub_21A192B04(v53, type metadata accessor for RecipeTimer);
        return 0;
      }
    }

    else if (v62)
    {
      goto LABEL_32;
    }

    v29 = v4[8];
    v30 = *(v57 + v29);
    v31 = *(v53 + v29);
    sub_21A192B04(v57, type metadata accessor for RecipeTimer);
    sub_21A192B04(v53, type metadata accessor for RecipeTimer);
    v28 = v67;
    v27 = v74;
    result = v73;
    if (v30 != v31)
    {
      return result;
    }
  }

  if (v28 <= v23 + 1)
  {
    v34 = v23 + 1;
  }

  else
  {
    v34 = v28;
  }

  v35 = v34 - 1;
  v36 = v70;
  while (1)
  {
    v37 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v37 >= v28)
    {
      v63 = sub_21A176C98(&qword_27CCFF210);
      (*(*(v63 - 8) + 56))(v19, 1, 1, v63);
      v74 = 0;
      v23 = v35;
      goto LABEL_19;
    }

    v38 = *(v65 + 8 * v37);
    ++v23;
    if (v38)
    {
      v32 = a2;
      v74 = (v38 - 1) & v38;
      v33 = __clz(__rbit64(v38)) | (v37 << 6);
      v23 = v37;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A191A04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 4;
    if (v13 != 4)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = sub_21A25A398();
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A191B2C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 32 * v12;
    v14 = *(v13 + 24);
    v15 = v14 == 255;
    if (v14 != 255)
    {
      v16 = *(*(v3 + 56) + 8 * v12);
      result = sub_21A25A7EC(*v13, *(v13 + 8), *(v13 + 16), v14);
      if ((v17 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v16)
      {
        continue;
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL _s10CookingKit0A7SessionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F49B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF048);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_21A176C98(&qword_27CCFF1F8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return result;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return result;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return result;
  }

  result = 0;
  if (*(a1 + 40) != *(a2 + 40))
  {
    return result;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return result;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return result;
  }

  result = 0;
  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80))
  {
    return result;
  }

  if (*(a1 + 112))
  {
    if ((*(a2 + 112) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 112))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
    {
      return result;
    }
  }

  if (*(a1 + 144))
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 144))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136))
    {
      return result;
    }
  }

  if (*(a1 + 176))
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      return 0;
    }

LABEL_34:
    v18 = *(a1 + 177);
    v19 = *(a2 + 177);
    if (v18 == 4)
    {
      if (v19 != 4)
      {
        return 0;
      }
    }

    else if (v18 != v19)
    {
      return 0;
    }

    v20 = *(a1 + 178);
    v21 = *(a2 + 178);
    if (v20 == 4)
    {
      if (v21 != 4)
      {
        return 0;
      }
    }

    else if (v20 != v21)
    {
      return 0;
    }

    if (*(a1 + 179) != *(a2 + 179) || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }

    v22 = *(type metadata accessor for CookingSession() + 60);
    v23 = *(v13 + 48);
    sub_21A18FED0(a1 + v22, v16);
    sub_21A18FED0(a2 + v22, &v16[v23]);
    v24 = *(v5 + 48);
    if (v24(v16, 1, v4) == 1)
    {
      if (v24(&v16[v23], 1, v4) == 1)
      {
        sub_21A1427A8(v16, &qword_27CCFF048);
        return 1;
      }

      goto LABEL_49;
    }

    sub_21A18FED0(v16, v12);
    if (v24(&v16[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_49:
      sub_21A1427A8(v16, &qword_27CCFF1F8);
      return 0;
    }

    (*(v5 + 32))(v8, &v16[v23], v4);
    sub_21A192C18(&qword_27CCFF200);
    v25 = sub_21A2F7874();
    v26 = *(v5 + 8);
    v26(v8, v4);
    v26(v12, v4);
    sub_21A1427A8(v16, &qword_27CCFF048);
    return (v25 & 1) != 0;
  }

  if (*(a2 + 176))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168))
  {
    goto LABEL_34;
  }

  return result;
}

unint64_t sub_21A192160()
{
  result = qword_27CCFF168;
  if (!qword_27CCFF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF168);
  }

  return result;
}

unint64_t sub_21A1921B4()
{
  result = qword_27CCFF170;
  if (!qword_27CCFF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF170);
  }

  return result;
}

unint64_t sub_21A192208()
{
  result = qword_27CCFF178;
  if (!qword_27CCFF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF178);
  }

  return result;
}

unint64_t sub_21A19225C()
{
  result = qword_27CCFF180;
  if (!qword_27CCFF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF180);
  }

  return result;
}

unint64_t sub_21A1922B0()
{
  result = qword_27CCFF198;
  if (!qword_27CCFF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF198);
  }

  return result;
}

unint64_t sub_21A192304()
{
  result = qword_27CCFF1A0;
  if (!qword_27CCFF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF1A0);
  }

  return result;
}

unint64_t sub_21A192358()
{
  result = qword_27CCFF1A8;
  if (!qword_27CCFF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF1A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecipeCardHostView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RecipeCardHostView(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CookingSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CookingSession.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A192584()
{
  result = qword_27CCFF1B8;
  if (!qword_27CCFF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF1B8);
  }

  return result;
}

unint64_t sub_21A1925DC()
{
  result = qword_27CCFF1C0;
  if (!qword_27CCFF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF1C0);
  }

  return result;
}

unint64_t sub_21A192634()
{
  result = qword_27CCFF1C8;
  if (!qword_27CCFF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF1C8);
  }

  return result;
}

uint64_t sub_21A192688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657069636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A318450 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A318470 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021A318490 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021A3184B0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021A3184D0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A3184F0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A318510 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021A318530 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A318550 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A318570 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021A318590 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_21A192A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A192B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A192B64()
{
  result = qword_27CCFF1E0;
  if (!qword_27CCFF1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CCFF1E0);
  }

  return result;
}

uint64_t sub_21A192BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A192C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21A2F49B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A192CB4(uint64_t a1)
{
  v3 = sub_21A176C98(&qword_27CCFF240);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v37 - v5;
  v7 = sub_21A176C98(&qword_27CCFF248);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for RecipeTheme();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  if (*(v1 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) != 1)
  {
    goto LABEL_4;
  }

  sub_21A1AC424(v18);
  sub_21A19422C(v18, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v20 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v15 + *(v20 + 48), &qword_27CCFEDC0);
LABEL_4:
    v21 = sub_21A176C98(&qword_27CCFF250);
    (*(*(v21 - 8) + 16))(v6, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_21A193CFC();
    sub_21A1772F8(&qword_27CCFF280, &qword_27CCFF250);
    return sub_21A2F6114();
  }

  v23 = sub_21A176C98(&qword_27CCFEEA8);
  sub_21A183894(v15 + *(v23 + 64));
  KeyPath = swift_getKeyPath();
  v25 = &v10[*(sub_21A176C98(&qword_27CCFF278) + 36)];
  v26 = *(sub_21A176C98(&qword_27CCFF290) + 28);
  sub_21A2F72B4();
  v27 = sub_21A2F72D4();
  (*(*(v27 - 8) + 56))(v25 + v26, 0, 1, v27);
  *v25 = KeyPath;
  v28 = sub_21A176C98(&qword_27CCFF250);
  (*(*(v28 - 8) + 16))(v10, a1, v28);
  v29 = swift_getKeyPath();
  v30 = &v10[*(sub_21A176C98(&qword_27CCFF268) + 36)];
  v31 = *(sub_21A176C98(&qword_27CCFF2A0) + 28);
  v32 = *MEMORY[0x277CDF3C0];
  v33 = sub_21A2F5654();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = v29;
  v34 = *(v7 + 36);
  v35 = *MEMORY[0x277CE13B8];
  v36 = sub_21A2F73B4();
  (*(*(v36 - 8) + 104))(&v10[v34], v35, v36);
  sub_21A183960(v10, v6, &qword_27CCFF248);
  swift_storeEnumTagMultiPayload();
  sub_21A193CFC();
  sub_21A1772F8(&qword_27CCFF280, &qword_27CCFF250);
  sub_21A2F6114();
  return sub_21A1427A8(v10, &qword_27CCFF248);
}

uint64_t sub_21A1931B8(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF2A8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A183960(a1, &v6 - v4, &qword_27CCFF2A8);
  return sub_21A2F5D74();
}

uint64_t sub_21A19326C(double a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_BOOL8), uint64_t a6, int a7, uint64_t a8, int a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18)
{
  v46 = a9;
  v45 = *&a8;
  v48 = a7;
  v47 = a3;
  v14 = sub_21A176C98(&qword_27CCFF218);
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v44 - v16;
  v18 = sub_21A2F6144();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_21A2F6314();
    sub_21A2F5824();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v19 + 8))(v22, v18);
    v31 = v24;
    v32 = v26;
    v33 = v28;
    v34 = v30;
    if (v48)
    {
      MaxY = CGRectGetMaxY(*&v31);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v31);
    }

    v38 = 0.0;
    if (MaxY < a1)
    {
      v39 = a1 - MaxY;
      if ((v46 & 1) == 0 && MaxY < v45)
      {
        v39 = v39 + MaxY - v45;
      }

      if ((a18 & 1) != 0 || (v38 = a17, v39 <= a17))
      {
        v38 = v39;
      }
    }

    v40 = MaxY < a1;
    v41 = sub_21A2F5C84();
    v42 = sub_21A1935CC();
    MEMORY[0x21CED4240](v41, v42, 0.0, v38);
    a5(v40);
    v50 = v41;
    v51 = v42;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v36 = sub_21A2F5C84();
    v37 = sub_21A1935CC();
    MEMORY[0x21CED4240](v36, v37, 0.0, 0.0);
    a5(0);
    v50 = v36;
    v51 = v37;
    swift_getOpaqueTypeConformance2();
  }

  sub_21A2F57B4();
  return (*(v49 + 8))(v17, v14);
}

unint64_t sub_21A1935CC()
{
  result = qword_27CCFF220;
  if (!qword_27CCFF220)
  {
    sub_21A2F5C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF220);
  }

  return result;
}

uint64_t type metadata accessor for RecipeLabelVibrancyViewModifier()
{
  result = qword_27CCFF228;
  if (!qword_27CCFF228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A193698()
{
  sub_21A19370C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A19370C()
{
  if (!qword_27CCFEE40)
  {
    type metadata accessor for RecipeTheme();
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFEE40);
    }
  }
}

uint64_t sub_21A193780(CGFloat a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v47[3] = a5;
  v7 = sub_21A176C98(&qword_27CCFF238);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v47 - v10;
  v12 = sub_21A2F6144();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_21A2F6314();
    sub_21A2F5824();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    (*(v13 + 8))(v16, v12);
    v50.origin.x = v18;
    v50.origin.y = v20;
    v50.size.width = v22;
    v50.size.height = v24;
    v25 = 0.0;
    if (CGRectGetMinY(v50) <= a1)
    {
      v26 = 1.0;
    }

    else
    {
      v51.origin.x = v18;
      v51.origin.y = v20;
      v51.size.width = v22;
      v51.size.height = v24;
      v26 = 1.0;
      if (CGRectGetHeight(v51) > 0.0)
      {
        v52.origin.x = v18;
        v52.origin.y = v20;
        v52.size.width = v22;
        v52.size.height = v24;
        v25 = CGRectGetMinY(v52) - a1;
        v53.origin.x = v18;
        v53.origin.y = v20;
        v53.size.width = v22;
        v53.size.height = v24;
        v26 = v25 / CGRectGetHeight(v53) + 1.0;
      }
    }

    v36 = sub_21A2F65C4();
    sub_21A2F65D4();
    if (sub_21A2F65D4() == v36)
    {
      v37 = v26;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = sub_21A2F65E4();
    sub_21A2F65D4();
    if (sub_21A2F65D4() == v38)
    {
      v39 = v26;
    }

    else
    {
      v39 = 1.0;
    }

    sub_21A2F7434();
    v41 = v40;
    v43 = v42;
    v44 = sub_21A2F5C84();
    v45 = sub_21A1935CC();
    MEMORY[0x21CED4230](v44, v45, v37, v39, v41, v43);
    v48 = v44;
    v49 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34.n128_u64[0] = 0;
    v35.n128_f64[0] = -v25;
  }

  else
  {
    sub_21A2F7454();
    v28 = v27;
    v30 = v29;
    v31 = sub_21A2F5C84();
    v32 = sub_21A1935CC();
    MEMORY[0x21CED4230](v31, v32, 1.0, 1.0, v28, v30);
    v48 = v31;
    v49 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34.n128_u64[0] = 0;
    v35.n128_u64[0] = 0;
  }

  MEMORY[0x21CED4240](v7, OpaqueTypeConformance2, v34, v35);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21A193B30(CGFloat a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_21A2F6144();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    sub_21A2F6314();
    sub_21A2F5824();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    (*(v11 + 8))(v14, v10);
    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    MinY = CGRectGetMinY(v33);
    v24 = 0.0;
    if (MinY < a1)
    {
      v34.origin.x = v16;
      v34.origin.y = v18;
      v34.size.width = v20;
      v34.size.height = v22;
      v25 = (CGRectGetMinY(v34) - a1) * a2;
      if (v25 > a3)
      {
        v24 = v25;
      }

      else
      {
        v24 = a3;
      }
    }

    v26 = -v24;
    v27 = sub_21A2F5C84();
    v28 = sub_21A1935CC();
    v29.n128_u64[0] = 0;
    v30.n128_f64[0] = v26;
  }

  else
  {
    v27 = sub_21A2F5C84();
    v28 = sub_21A1935CC();
    v29.n128_u64[0] = 0;
    v30.n128_u64[0] = 0;
  }

  return MEMORY[0x21CED4240](v27, v28, v29, v30);
}

unint64_t sub_21A193CFC()
{
  result = qword_27CCFF258;
  if (!qword_27CCFF258)
  {
    sub_21A176D98(&qword_27CCFF248);
    sub_21A193D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF258);
  }

  return result;
}

unint64_t sub_21A193D88()
{
  result = qword_27CCFF260;
  if (!qword_27CCFF260)
  {
    sub_21A176D98(&qword_27CCFF268);
    sub_21A193E40();
    sub_21A1772F8(&qword_27CCFF298, &qword_27CCFF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF260);
  }

  return result;
}