uint64_t sub_1C469ACDC(uint64_t a1, void *a2)
{
  v38 = sub_1C4EFB078();
  v3 = sub_1C43FCDF8(v38);
  v35 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v13;
  v14 = sub_1C4EFB0B8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v24 = *a2;
  v23 = a2[1];
  sub_1C4EFB058();
  v39 = a2;
  v37 = v24;
  v25 = v41;
  sub_1C4EFBFC8();
  if (v25)
  {
    return (*(v17 + 8))(v22, v14);
  }

  v41 = v11;
  v34 = v8;
  v27 = v35;
  (*(v17 + 8))(v22, v14);
  v28 = v36;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4411A24();
  sub_1C4420C3C(v40, &qword_1EC0C5040, &qword_1C4F0F950);
  v29 = *(v27 + 8);
  v30 = v38;
  v29(v28, v38);
  v31 = v41;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4411A24();
  sub_1C4420C3C(v40, &qword_1EC0C5040, &qword_1C4F0F950);
  v29(v31, v30);
  v32 = v34;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4EFBFB8();
  sub_1C4420C3C(v40, &qword_1EC0C5040, &qword_1C4F0F950);
  return (v29)(v32, v30);
}

void sub_1C469B084(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - v5;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v32 = type metadata accessor for ViewDatabaseArtifact.Property();
  v10 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v31 = *(v11 + 72);
    do
    {
      sub_1C443CCBC(v16, v13);
      v17 = *v13 == 0xD000000000000016 && 0x80000001C4F855C0 == *(v13 + 1);
      if (v17 || (v18 = *v13, v19 = *(v13 + 1), (sub_1C4F02938() & 1) != 0))
      {
        v20 = *(v32 + 20);
        v21 = sub_1C4EFBE38();
        (*(*(v21 - 8) + 16))(v9, &v13[v20], v21);
        sub_1C440BAA8(v9, 0, 1, v21);
        sub_1C4EFB498();

        v22 = v9;
        v23 = &qword_1EC0B9BB8;
        v24 = &unk_1C4F1DC60;
      }

      else
      {
        v25 = *(v32 + 20);
        v26 = sub_1C4EFBE38();
        (*(*(v26 - 8) + 16))(v9, &v13[v25], v26);
        sub_1C440BAA8(v9, 0, 1, v26);
        sub_1C4EFB498();
        sub_1C4420C3C(v9, &qword_1EC0B9BB8, &unk_1C4F1DC60);
        v27 = sub_1C4EFBF38();
        v28 = v30;
        sub_1C440BAA8(v30, 1, 1, v27);
        sub_1C4EFB538();

        v22 = v28;
        v23 = &unk_1EC0BCAB0;
        v24 = &unk_1C4F111A0;
      }

      sub_1C4420C3C(v22, v23, v24);
      sub_1C469C410(v13);
      v16 += v31;
      --v15;
    }

    while (v15);
  }
}

void sub_1C469B3E0()
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v38 = v7 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1C4EFDAB8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4409678((v0 + 40), *(v0 + 64));
  v22 = *(v0 + 16);
  sub_1C469B6F8(v22, v20);
  sub_1C440BAA8(v11, 1, 1, v2);
  v23 = *v21;
  sub_1C45E1070(&v36);
  sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v15 + 8))(v20, v12);
  if (!v1)
  {
    sub_1C4EF9CC8();
    v34 = 0;
    v35 = 256;
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v24 = (sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8);
    v25 = *(*v24 + 72);
    v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C4F0D130;
    v28 = v27 + v26;
    v29 = (v27 + v26 + v24[14]);
    sub_1C469B6F8(v22, v28);
    v30 = v37[0];
    *v29 = v36;
    v29[1] = v30;
    *(v29 + 25) = *(v37 + 9);
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C469C39C();
    sub_1C4F00F28();
    v31 = type metadata accessor for BehaviorContext();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_1C45D689C();
  }
}

uint64_t sub_1C469B6F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 104);
  v8 = **(&unk_1E81EF340 + a1);

  return v7(a2, v8, v5);
}

uint64_t sub_1C469B79C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C469B7E8(char a1)
{
  result = 0x7469736956494F4CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6E65764569466957;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6369666963657053;
      break;
    case 5:
      result = 0x6547657372616F43;
      break;
    case 6:
      result = 0x6F6547656772614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C469B8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C469B9BC(char a1)
{
  if (a1)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C469B9FC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = sub_1C456902C(&qword_1EC0BAE90, &qword_1C4F17A28);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C469C01C();
  sub_1C4F02BF8();
  v20 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v19 = v17;
    v18 = 1;
    sub_1C469C0C4();
    sub_1C4F027E8();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C469BB7C(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BAE88, &qword_1C4F17A20);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C469C01C();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C469C070();
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C469BD48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4685084();
}

uint64_t sub_1C469BD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C469B79C();
  *a2 = result;
  return result;
}

unint64_t sub_1C469BD9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C469B7E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C469BE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C469B8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C469BEA8(uint64_t a1)
{
  v2 = sub_1C469C01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C469BEE4(uint64_t a1)
{
  v2 = sub_1C469C01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C469BF20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C469BB7C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1C469BF74()
{
  result = qword_1EC0BAE80;
  if (!qword_1EC0BAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE80);
  }

  return result;
}

unint64_t sub_1C469BFC8()
{
  result = qword_1EDDFA800;
  if (!qword_1EDDFA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA800);
  }

  return result;
}

unint64_t sub_1C469C01C()
{
  result = qword_1EDDFA9D0[0];
  if (!qword_1EDDFA9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFA9D0);
  }

  return result;
}

unint64_t sub_1C469C070()
{
  result = qword_1EDDFA7F8;
  if (!qword_1EDDFA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7F8);
  }

  return result;
}

unint64_t sub_1C469C0C4()
{
  result = qword_1EDDDD0C8[0];
  if (!qword_1EDDDD0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDD0C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextualEventsDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C469C1F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C469C234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C469C298()
{
  result = qword_1EC0BAE98;
  if (!qword_1EC0BAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE98);
  }

  return result;
}

unint64_t sub_1C469C2F0()
{
  result = qword_1EDDFD480;
  if (!qword_1EDDFD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD480);
  }

  return result;
}

unint64_t sub_1C469C348()
{
  result = qword_1EDDFD488;
  if (!qword_1EDDFD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD488);
  }

  return result;
}

unint64_t sub_1C469C39C()
{
  result = qword_1EDDEFFD0;
  if (!qword_1EDDEFFD0)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFD0);
  }

  return result;
}

uint64_t sub_1C469C410(uint64_t a1)
{
  v2 = type metadata accessor for ViewDatabaseArtifact.Property();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C469C46C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2D598);
  v1 = sub_1C442B738(v0, qword_1EDE2D598);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C469C4E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v10))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v11, v12, "CoordinationXPC: starting...");
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0();
  }

  sub_1C43FCEE8(v2, qword_1EDE2D598);
  sub_1C448CA88(a1, v7, type metadata accessor for Configuration);
  v13 = type metadata accessor for Configuration();
  sub_1C440BAA8(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1C45A6EE0(v7, v9);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C44059E8();
  v14 = sub_1C49AA56C();
  v15 = qword_1EDE2D588;
  qword_1EDE2D588 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2D590 = [objc_allocWithZone(type metadata accessor for CoordinationXPC.Delegate()) init];
    v17 = qword_1EDE2D590;
    swift_unknownObjectRelease();
    [v16 setDelegate_];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C43FBD24(v19);
      sub_1C43FFFD8(&dword_1C43F8000, v20, v21, "Failed to create CoordinationXPC service");
      sub_1C43FBE2C();
    }
  }
}

uint64_t CoordinationXPC.Server.Error.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

void sub_1C469C804(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Source();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 == 0xE000000000000000;
  }

  LOBYTE(v20) = v19;
  v38 = v17;
  if (v19)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v21 = sub_1C4F02938();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((v21 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      Source.init(rawValue:)(v38, v18, v11);
      v22 = sub_1C44157D4(v11, 1, v12);
      sub_1C46A1238(v11);
      if (v22 == 1)
      {
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v23 = sub_1C4F00978();
        sub_1C442B738(v23, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v24 = sub_1C4F00968();
        v25 = sub_1C4F01CD8();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v39 = v27;
          *v26 = 136315138;
          v28 = a5;
          v29 = sub_1C441D828(v38, v18, &v39);

          *(v26 + 4) = v29;
          a5 = v28;
          _os_log_impl(&dword_1C43F8000, v24, v25, "Invalid graph update source: %s", v26, 0xCu);
          sub_1C440962C(v27);
          MEMORY[0x1C6942830](v27, -1, -1);
          MEMORY[0x1C6942830](v26, -1, -1);
        }

        else
        {
        }

        sub_1C46A12A0();
        v34 = swift_allocError();
        v35 = sub_1C4EF9798();
        (a5)[2](a5, 0, v35);

        goto LABEL_36;
      }
    }
  }

  if (qword_1EDDEC830 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    sub_1C43FBB68();
    if ((v20 & 1) == 0 && (sub_1C4F02938() & 1) == 0)
    {
      break;
    }

    if (qword_1EDDFA690 != -1)
    {
      swift_once();
    }

    v30 = off_1EDDFA698;
    v39 = off_1EDDFA698;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C4B325E4();
    v37 = a5;
    if (v31)
    {
      sub_1C49D3594(v31);
      v30 = v39;
    }

    v20 = 0;
    a5 = v30[2];
    while (1)
    {
      if (a5 == v20)
      {

        sub_1C4CE4940(1, 0, 0xE000000000000000);
        a5 = v37;
        goto LABEL_34;
      }

      if (v20 >= v30[2])
      {
        break;
      }

      sub_1C448CA88(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, v16, type metadata accessor for Source);
      v32 = *v16;
      v33 = v16[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453CE8(v16, type metadata accessor for Source);
      sub_1C4CE4940(1, v32, v33);

      ++v20;
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  sub_1C4CE4940(1, v38, v18);
  sub_1C4CE4940(1, 0, 0xE000000000000000);
LABEL_34:

  a5[2](a5, 1, 0);

LABEL_36:
  _Block_release(a5);
}

void sub_1C469CF1C()
{
  sub_1C43FBD3C();
  v43 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Source();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  if (v4)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 == 0xE000000000000000;
  }

  LOBYTE(v19) = v18;
  v42 = v16;
  if (v18)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v20 = sub_1C4F02938();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((v20 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C441C914();
      Source.init(rawValue:)(v21, v22, v23);
      v24 = sub_1C44157D4(v15, 1, v7);
      sub_1C46A1238(v15);
      if (v24 == 1)
      {
        v25 = v2;
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0();
        }

        v26 = sub_1C4F00978();
        sub_1C43FCEE8(v26, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = sub_1C4F00968();
        v28 = sub_1C4F01CD8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = sub_1C43FD084();
          v30 = swift_slowAlloc();
          v44 = v30;
          *v29 = 136315138;
          v31 = sub_1C441C914();
          v34 = sub_1C441D828(v31, v32, v33);

          *(v29 + 4) = v34;
          _os_log_impl(&dword_1C43F8000, v27, v28, "Invalid graph update source: %s", v29, 0xCu);
          sub_1C440962C(v30);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

        sub_1C46A12A0();
        v40 = swift_allocError();
        v25(0, v40);

        goto LABEL_24;
      }
    }
  }

  v41 = v2;
  if (qword_1EDDEC830 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_1C43FBB68();
    if ((v19 & 1) == 0)
    {
      sub_1C441C914();
      if ((sub_1C4F02938() & 1) == 0)
      {
        break;
      }
    }

    if (qword_1EDDFA690 != -1)
    {
      swift_once();
    }

    v35 = off_1EDDFA698;
    v44 = off_1EDDFA698;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36 = sub_1C4B325E4();
    if (v36)
    {
      sub_1C49D3594(v36);
      v35 = v44;
    }

    v37 = 0;
    v19 = v35[2];
    while (1)
    {
      if (v19 == v37)
      {

        goto LABEL_36;
      }

      if (v37 >= v35[2])
      {
        break;
      }

      sub_1C448CA88(v35 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v37, v11, type metadata accessor for Source);
      v39 = *v11;
      v38 = v11[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4453CE8(v11, type metadata accessor for Source);
      sub_1C4CE4940(1, v39, v38);

      ++v37;
    }

    __break(1u);
LABEL_41:
    sub_1C441F6E8();
  }

  sub_1C4CE4940(1, v42, v17);
LABEL_36:
  sub_1C4CE4940(1, 0, 0xE000000000000000);

  v41(1, 0);

LABEL_24:
  sub_1C43FE9F0();
}

void sub_1C469D578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4440C20();
  if (v12 == 8)
  {
    sub_1C450B034();
    v13 = swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0xD000000000000012;
    *(v14 + 24) = 0x80000001C4F8FC10;
    v15 = v28[1];
    *(v14 + 32) = v28[0];
    *(v14 + 48) = v15;
    *(v14 + 64) = 9;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DCD8);
    v17 = v13;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v28[0] = v21;
      *v20 = 136315138;
      v29 = v13;
      v22 = v13;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v23 = sub_1C4F01198();
      v25 = sub_1C441D828(v23, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C43F8000, v18, v19, "CoordinationXPC: sourceUpdated: %s", v20, 0xCu);
      sub_1C440962C(v21);
      MEMORY[0x1C6942830](v21, -1, -1);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    v26 = v13;
    v27 = sub_1C4EF9798();
    (a7)[2](a7, 0, v27);

    _Block_release(a7);
  }

  else
  {
    sub_1C4CE4940(v12, a3, a4);
    a7[2](a7, 1, 0);

    _Block_release(a7);
  }
}

void sub_1C469D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8();
  }

  sub_1C442DE48();
  v13 = sub_1C43FBB68();
  v14 = a5;
  if (a5)
  {
    goto LABEL_7;
  }

  v6 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4440C20();
  if (v15 == 8)
  {
    sub_1C450B034();
    v14 = swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = 0xD000000000000012;
    *(v16 + 24) = 0x80000001C4F8FC10;
    v17 = v27[1];
    *(v16 + 32) = v27[0];
    *(v16 + 48) = v17;
    *(v16 + 64) = 9;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

LABEL_7:
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v18 = sub_1C4F00978();
    sub_1C43FCEE8(v18, qword_1EDE2DCD8);
    v19 = v14;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      sub_1C43FD084();
      *&v27[0] = sub_1C4402BBC();
      *v6 = 136315138;
      v28 = v14;
      v22 = v14;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v23 = sub_1C4F01198();
      sub_1C441D828(v23, v24, v27);
      sub_1C441E2DC();
      *(v6 + 4) = a4;
      _os_log_impl(&dword_1C43F8000, v20, v21, "CoordinationXPC: sourceUpdated: %s", v6, 0xCu);
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v25 = v14;
    (a6)(0, v14);

    return;
  }

  sub_1C4CE4940(v15, a3, a4);
  v26 = sub_1C4411A44();
  a6(v26);
}

void sub_1C469DB3C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  ViewUpdate.SourceUpdater.streamUpdated(streamName:isDelete:)(v10, a3 & 1);
  if (v11)
  {

    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DCD8);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = v11;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v19 = sub_1C4F01198();
      v21 = sub_1C441D828(v19, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v14, v15, "CoordinationXPC: streamUpdated: %s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    v22 = v11;
    v23 = sub_1C4EF9798();
    (a6)[2](a6, 0, v23);

    _Block_release(a6);
  }

  else
  {
    a6[2](a6, 1, 0);

    _Block_release(a6);
  }
}

void sub_1C469DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8();
  }

  sub_1C442DE48();
  sub_1C43FBB68();
  if (v30)
  {
    goto LABEL_6;
  }

  v37._countAndFlagsBits = v36;
  v37._object = v34;
  ViewUpdate.SourceUpdater.streamUpdated(streamName:isDelete:)(v37, v32 & 1);
  if (v30)
  {

LABEL_6:
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v38 = sub_1C4F00978();
    sub_1C43FCEE8(v38, qword_1EDE2DCD8);
    v39 = v30;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();

    if (os_log_type_enabled(v40, v41))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v32 = 136315138;
      v42 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v43 = sub_1C4F01198();
      sub_1C441D828(v43, v44, &a11);
      sub_1C441E2DC();
      *(v32 + 4) = v24;
      sub_1C440E068(&dword_1C43F8000, v45, v46, "CoordinationXPC: streamUpdated: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v47 = v30;
    v48 = sub_1C43FEDC4();
    v28(v48);

    sub_1C43FBF50();
    return;
  }

  v49 = sub_1C4411A44();
  v28(v49);
  sub_1C43FBF50();
}

void sub_1C469DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  if (qword_1EDDEC830 != -1)
  {
    swift_once();
  }

  sub_1C43FBB68();
  sub_1C4CE4C0C(a1, a2);
  a5[2](a5, 1, 0);

  _Block_release(a5);
}

void sub_1C469E220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (qword_1EDDEC830 != -1)
  {
    sub_1C441F6E8();
  }

  sub_1C442DE48();
  sub_1C43FBB68();
  if (v30)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v35 = sub_1C4F00978();
    sub_1C43FCEE8(v35, qword_1EDE2DCD8);
    v36 = v30;
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CD8();

    if (os_log_type_enabled(v37, v38))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v34 = 136315138;
      v39 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v40 = sub_1C4F01198();
      sub_1C441D828(v40, v41, &a11);
      sub_1C441E2DC();
      *(v34 + 4) = v24;
      sub_1C440E068(&dword_1C43F8000, v42, v43, "CoordinationXPC: streamsUpdated: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v44 = v30;
    v45 = sub_1C43FEDC4();
    v28(v45);

    sub_1C43FBF50();
  }

  else
  {
    sub_1C4CE4C0C(v34, v32);
    v46 = sub_1C4411A44();
    v28(v46);
    sub_1C43FBF50();
  }
}

void sub_1C469E3EC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  sub_1C4415590();

  a3[2](a3, 1, 0);

  _Block_release(a3);
}

void sub_1C469E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C441EB54();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  if (qword_1EDDF9710 != -1)
  {
    swift_once();
  }

  sub_1C442DE48();
  sub_1C4415590();
  if (v31)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v32 = sub_1C4F00978();
    sub_1C43FCEE8(v32, qword_1EDE2DCD8);
    v33 = v31;
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CD8();

    if (os_log_type_enabled(v34, v35))
    {
      sub_1C43FD084();
      a11 = sub_1C4402BBC();
      *v24 = 136315138;
      v36 = v31;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v37 = sub_1C4F01198();
      sub_1C441D828(v37, v38, &a11);
      sub_1C441E2DC();
      *(v24 + 4) = v25;
      sub_1C440E068(&dword_1C43F8000, v39, v40, "CoordinationXPC: migrateViewDatabases: %s");
      sub_1C4406614();
      sub_1C43FBE2C();
    }

    v41 = v31;
    v42 = sub_1C43FEDC4();
    v29(v42);
  }

  else
  {

    v43 = sub_1C4411A44();
    v29(v43);
  }

  sub_1C43FBF50();
}

void sub_1C469E7DC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  _Block_copy(a4);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315138;
    v26 = a3;
    v27 = v16;
    if (a2)
    {
      v17 = a1;
    }

    else
    {
      v17 = 7104878;
    }

    v25 = a4;
    v18 = v8;
    v19 = a1;
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C441D828(v17, v20, &v27);
    a1 = v19;
    v8 = v18;
    a4 = v25;

    *(v15 + 4) = v21;
    a3 = v26;
    _os_log_impl(&dword_1C43F8000, v13, v14, "CoordinationXPC: graphUpdated for source: %s", v15, 0xCu);
    sub_1C440962C(v16);
    MEMORY[0x1C6942830](v16, -1, -1);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C442B738(v8, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v22, v11);
  v23 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v11, 1, v23) == 1)
  {
    _Block_release(a4);
    _Block_release(a4);
    __break(1u);
  }

  else
  {
    _Block_copy(a4);
    sub_1C469C804(a1, a2, v11, a3, a4);
    sub_1C4453CE8(v11, type metadata accessor for Configuration);
    _Block_release(a4);
    _Block_release(a4);
  }
}

void CoordinationXPC.Server.graphUpdated(withSource:completion:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v10 = sub_1C4F00978();
  sub_1C43FCEE8(v10, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_1C43FD084();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315138;
    v24 = v4;
    if (v1)
    {
      v16 = v3;
    }

    else
    {
      v16 = 7104878;
    }

    v25 = v3;
    v26 = v14;
    if (v1)
    {
      v17 = v1;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C441D828(v16, v17, &v26);

    *(v13 + 4) = v18;
    v4 = v24;
    _os_log_impl(&dword_1C43F8000, v11, v12, "CoordinationXPC: graphUpdated for source: %s", v13, 0xCu);
    sub_1C440962C(v15);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0();
  }

  sub_1C442B738(v4, qword_1EDE2D598);
  sub_1C440F4A0();
  sub_1C4466EEC(v4, v9);
  v19 = type metadata accessor for Configuration();
  sub_1C4402E68(v9, v20, v19);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_1C469CF1C();
    sub_1C43FFFC0();
    sub_1C4453CE8(v9, v22);
    sub_1C43FE9F0();
  }
}

void sub_1C469ED8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v22 = a1;
  v23 = a3;
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  _Block_copy(a6);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1C441D828(v22, a2, v24);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1C441D828(v23, a4, v24);
    _os_log_impl(&dword_1C43F8000, v15, v16, "CoordinationXPC: sourceUpdated [sourceType: %s, sourceIdentifier: %s]", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v18, -1, -1);
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v10, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v19, v13);
  v20 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v13, 1, v20) == 1)
  {
    _Block_release(a6);
    _Block_release(a6);
    __break(1u);
  }

  else
  {
    _Block_copy(a6);
    sub_1C469D578(v22, a2, v23, a4, v13, a5, a6);
    sub_1C4453CE8(v13, type metadata accessor for Configuration);
    _Block_release(a6);
    _Block_release(a6);
  }
}

void CoordinationXPC.Server.sourceUpdated(sourceType:sourceIdentifier:completion:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v24 = v6;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v15 = sub_1C4F00978();
  sub_1C43FCEE8(v15, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();

  if (os_log_type_enabled(v16, v17))
  {
    v0 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v0 = 136315394;
    *(v0 + 4) = sub_1C441D828(v23, v8, v25);
    *(v0 + 12) = 2080;
    *(v0 + 14) = sub_1C441D828(v24, v4, v25);
    _os_log_impl(&dword_1C43F8000, v16, v17, "CoordinationXPC: sourceUpdated [sourceType: %s, sourceIdentifier: %s]", v0, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0();
  }

  sub_1C442B738(v9, qword_1EDE2D598);
  sub_1C440F4A0();
  sub_1C4466EEC(v0, v14);
  v18 = type metadata accessor for Configuration();
  sub_1C4402E68(v14, v19, v18);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_1C469D898(v23, v8, v24, v4, v14, v2);
    sub_1C43FFFC0();
    sub_1C4453CE8(v14, v21);
    sub_1C43FE9F0();
  }
}

void sub_1C469F364(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v20) = a3;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  _Block_copy(a5);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1C441D828(a1, a2, &v21);
    *(v16 + 12) = 1024;
    *(v16 + 14) = BYTE4(v20) & 1;
    _os_log_impl(&dword_1C43F8000, v14, v15, "CoordinationXPC: streamUpdated [streamName: %s, isDelete: %{BOOL}d]", v16, 0x12u);
    sub_1C440962C(v17);
    MEMORY[0x1C6942830](v17, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v9, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v18, v12);
  v19 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v12, 1, v19) == 1)
  {
    _Block_release(a5);
    _Block_release(a5);
    __break(1u);
  }

  else
  {
    _Block_copy(a5);
    sub_1C469DB3C(a1, a2, BYTE4(v20) & 1, v12, a4, a5);
    sub_1C4453CE8(v12, type metadata accessor for Configuration);
    _Block_release(a5);
    _Block_release(a5);
  }
}

void sub_1C469F8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  _Block_copy(a4);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = *(a1 + 16);

    *(v15 + 12) = 2048;
    *(v15 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1C43F8000, v13, v14, "CoordinationXPC: streamsUpdated [updatedStreams: %ld, userDeleteStreams: %ld]", v15, 0x16u);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  else
  {
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C442B738(v8, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v16, v11);
  v17 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v11, 1, v17) == 1)
  {
    _Block_release(a4);
    _Block_release(a4);
    __break(1u);
  }

  else
  {
    _Block_copy(a4);
    sub_1C469DF9C(a1, a2, v11, a3, a4);
    sub_1C4453CE8(v11, type metadata accessor for Configuration);
    _Block_release(a4);
    _Block_release(a4);
  }
}

void sub_1C469FE24(uint64_t a1, void *a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  _Block_copy(a2);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "CoordinationXPC: migrateViewDatabases called", v11, 2u);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  if (qword_1EDDF67F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v4, qword_1EDE2D598);
  swift_beginAccess();
  sub_1C4466EEC(v12, v7);
  v13 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v7, 1, v13) == 1)
  {
    _Block_release(a2);
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    _Block_copy(a2);
    sub_1C469E3EC(v7, a1, a2);
    sub_1C4453CE8(v7, type metadata accessor for Configuration);
    _Block_release(a2);
    _Block_release(a2);
  }
}

uint64_t sub_1C46A0254()
{
  v1 = *(v0 + 16);
  type metadata accessor for InternalBiomeXPC.Server();
  v2 = [objc_allocWithZone(MEMORY[0x1E69A9F00]) initWithAll];
  static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(v2, 0, 5uLL);
  v4 = v3;
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t CoordinationXPC.Server.sysdiagnoseInfo()()
{
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46A03F4, 0, 0);
}

uint64_t sub_1C46A03F4()
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DF70);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "CoordinationXPC: sysdiagnoseInfo");
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    swift_once();
  }

  v7 = v0[7];
  v8 = sub_1C442B738(v0[6], qword_1EDDF0C10);
  sub_1C440D164();
  sub_1C4466EEC(v8, v7);
  v9 = type metadata accessor for Configuration();
  result = sub_1C4402E68(v7, v10, v9);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_1C46A0588;
    v14 = v0[7];

    return CoordinationXPC.Server.sysdiagnoseInfo(config:)(v14);
  }

  return result;
}

uint64_t sub_1C46A0588(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 64);
  v7 = *v3;
  sub_1C43FBDAC();
  *v8 = v7;
  v7[9] = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C46A06EC, 0, 0);
  }

  else
  {
    v9 = v7[7];
    sub_1C43FFFC0();
    sub_1C4453CE8(v9, v10);

    v11 = v7[1];

    return v11(a1, a2);
  }
}

uint64_t sub_1C46A06EC()
{
  v1 = *(v0 + 56);
  sub_1C43FFFC0();
  sub_1C4453CE8(v1, v2);

  sub_1C43FBDA0();
  v4 = *(v0 + 72);

  return v3();
}

uint64_t sub_1C46A07D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C46A0880;

  return CoordinationXPC.Server.sysdiagnoseInfo()();
}

uint64_t sub_1C46A0880()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_1C4EF9798();

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = sub_1C4F01108();

    v8 = 0;
    v10 = v9;
  }

  v11 = *(v3 + 24);
  v11[2](v11, v9, v8);

  _Block_release(v11);
  sub_1C43FBDA0();

  return v12();
}

id CoordinationXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C46A0A44(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  if (qword_1EDDF67F8 != -1)
  {
    sub_1C442C6C0();
  }

  v9 = sub_1C442B738(v3, qword_1EDE2D598);
  sub_1C440D164();
  sub_1C4466EEC(v9, v8);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C43FFFC0();
    sub_1C4453CE8(v8, v15);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v21 = sub_1C4F00978();
      sub_1C43FCEE8(v21, qword_1EDE2DCD8);
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1C43FCED0();
        sub_1C43FBD24(v24);
        _os_log_impl(&dword_1C43F8000, v22, v23, "CoordinationXPC: service is in no-op mode.", v13, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      sub_1C44059E8();
      if (sub_1C446874C())
      {
        v17 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v17, sel_setExportedInterface_);

        v18 = [objc_allocWithZone(type metadata accessor for CoordinationXPC.Server()) init];
        sub_1C44059FC(v18, sel_setExportedObject_);

        v30 = sub_1C46A0DA0;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43E6D90;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInterruptionHandler_);
        _Block_release(v19);
        v30 = sub_1C46A0DC0;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43E6DB8;
        v20 = _Block_copy(&aBlock);
        sub_1C44059FC(v20, sel_setInvalidationHandler_);
        _Block_release(v20);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C46A0DE0(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FBE2C();
  }
}

unint64_t sub_1C46A0F38()
{
  result = qword_1EC0BAEA8;
  if (!qword_1EC0BAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAEA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoordinationXPC.Server.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C46A10A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C46A1150;

  return sub_1C46A07D8(v2, v3);
}

uint64_t sub_1C46A1150()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C46A1238(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46A12A0()
{
  result = qword_1EC0BAF10;
  if (!qword_1EC0BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAF10);
  }

  return result;
}

uint64_t sub_1C46A1314(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46A5654(a1, sub_1C46A5908, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46A1398()
{
  sub_1C456902C(&qword_1EC0BAF38, &qword_1C4F17DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F830;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F916F0;
  sub_1C456902C(&qword_1EC0BAF40, &qword_1C4F17DA8);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1C4F0F830;
  *(v1 + 32) = 0x68746E6F6DLL;
  *(v1 + 40) = 0xE500000000000000;
  *(v1 + 48) = swift_getKeyPath();
  strcpy((v1 + 56), "day_of_month");
  *(v1 + 69) = 0;
  *(v1 + 70) = -5120;
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = 0x775F666F5F796164;
  *(v1 + 88) = 0xEB000000006B6565;
  *(v1 + 96) = swift_getKeyPath();
  *(v1 + 104) = 0x656B6565775F7369;
  *(v1 + 112) = 0xEA0000000000646ELL;
  *(v1 + 120) = swift_getKeyPath();
  *(v1 + 128) = 0x5F666F5F72756F68;
  *(v1 + 136) = 0xEB00000000796164;
  *(v1 + 144) = swift_getKeyPath();
  *(v1 + 152) = 0x5F666F5F74726170;
  *(v1 + 160) = 0xEB00000000796164;
  *(v1 + 168) = swift_getKeyPath();
  *(v1 + 176) = 0xD000000000000017;
  *(v1 + 184) = 0x80000001C4F91710;
  *(v1 + 192) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
  *(inited + 48) = sub_1C4F00F28();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001C4F91730;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1C4F0D130;
  strcpy((v2 + 32), "motion_state");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = swift_getKeyPath();
  *(inited + 72) = sub_1C4F00F28();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001C4F91750;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1C4F0CE60;
  *(v3 + 32) = 0x79745F6563616C70;
  *(v3 + 40) = 0xEA00000000006570;
  *(v3 + 48) = swift_getKeyPath();
  *(v3 + 56) = 0xD000000000000018;
  *(v3 + 64) = 0x80000001C4F91770;
  *(v3 + 72) = swift_getKeyPath();
  *(inited + 96) = sub_1C4F00F28();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000001C4F91630;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1C4F17CE0;
  *(v4 + 32) = 0xD00000000000001ALL;
  *(v4 + 40) = 0x80000001C4F86DD0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0xD000000000000017;
  *(v4 + 64) = 0x80000001C4F86DF0;
  *(v4 + 72) = swift_getKeyPath();
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x80000001C4F86E10;
  *(v4 + 96) = swift_getKeyPath();
  *(v4 + 104) = 0xD000000000000013;
  *(v4 + 112) = 0x80000001C4F86E30;
  *(v4 + 120) = swift_getKeyPath();
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x80000001C4F86E50;
  *(v4 + 144) = swift_getKeyPath();
  *(v4 + 152) = 0xD000000000000014;
  *(v4 + 160) = 0x80000001C4F86E70;
  *(v4 + 168) = swift_getKeyPath();
  *(v4 + 176) = 0xD000000000000014;
  *(v4 + 184) = 0x80000001C4F86E90;
  *(v4 + 192) = swift_getKeyPath();
  *(v4 + 200) = 0xD000000000000017;
  *(v4 + 208) = 0x80000001C4F86EB0;
  *(v4 + 216) = swift_getKeyPath();
  *(v4 + 224) = 0xD000000000000019;
  *(v4 + 232) = 0x80000001C4F86ED0;
  *(v4 + 240) = swift_getKeyPath();
  *(v4 + 248) = 0xD000000000000015;
  *(v4 + 256) = 0x80000001C4F86EF0;
  *(v4 + 264) = swift_getKeyPath();
  *(v4 + 272) = 0xD000000000000013;
  *(v4 + 280) = 0x80000001C4F86F10;
  *(v4 + 288) = swift_getKeyPath();
  *(v4 + 296) = 0xD000000000000015;
  *(v4 + 304) = 0x80000001C4F86F30;
  *(v4 + 312) = swift_getKeyPath();
  *(v4 + 320) = 0xD000000000000017;
  *(v4 + 328) = 0x80000001C4F86F50;
  *(v4 + 336) = swift_getKeyPath();
  *(v4 + 344) = 0xD000000000000012;
  *(v4 + 352) = 0x80000001C4F86F70;
  *(v4 + 360) = swift_getKeyPath();
  *(v4 + 368) = 0xD000000000000013;
  *(v4 + 376) = 0x80000001C4F86F90;
  *(v4 + 384) = swift_getKeyPath();
  *(v4 + 392) = 0xD000000000000017;
  *(v4 + 400) = 0x80000001C4F86FB0;
  *(v4 + 408) = swift_getKeyPath();
  *(v4 + 416) = 0xD000000000000016;
  *(v4 + 424) = 0x80000001C4F86FD0;
  *(v4 + 432) = swift_getKeyPath();
  *(v4 + 440) = 0x6E776F6E6B6E75;
  *(v4 + 448) = 0xE700000000000000;
  *(v4 + 456) = swift_getKeyPath();
  *(inited + 120) = sub_1C4F00F28();
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001C4F91790;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0C890;
  strcpy((v5 + 32), "semantic_type");
  *(v5 + 46) = -4864;
  *(v5 + 48) = swift_getKeyPath();
  strcpy((v5 + 56), "update_reason");
  *(v5 + 70) = -4864;
  *(v5 + 72) = swift_getKeyPath();
  strcpy((v5 + 80), "update_source");
  *(v5 + 94) = -4864;
  *(v5 + 96) = swift_getKeyPath();
  *(inited + 144) = sub_1C4F00F28();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000001C4F917B0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  strcpy((v6 + 32), "inferred_mode");
  *(v6 + 46) = -4864;
  *(v6 + 48) = swift_getKeyPath();
  *(inited + 168) = sub_1C4F00F28();
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000001C4F8FC70;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  strcpy((v7 + 32), "wifi_connected");
  *(v7 + 47) = -18;
  *(v7 + 48) = swift_getKeyPath();
  *(inited + 192) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BAF48, &qword_1C4F1C8D8);
  result = sub_1C4F00F28();
  qword_1EC151B80 = result;
  return result;
}

uint64_t sub_1C46A1CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  sub_1C46A594C(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t sub_1C46A1EDC()
{
  sub_1C456902C(&qword_1EC0BAF38, &qword_1C4F17DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F17CF0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4F8FC70;
  sub_1C456902C(&qword_1EC0BAF40, &qword_1C4F17DA8);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1C4F0CE60;
  strcpy((v1 + 32), "airplane_mode");
  *(v1 + 46) = -4864;
  *(v1 + 48) = swift_getKeyPath();
  *(v1 + 56) = 0xD000000000000012;
  *(v1 + 64) = 0x80000001C4F8FC90;
  *(v1 + 72) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
  *(inited + 48) = sub_1C4F00F28();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001C4F8FCB0;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1C4F13950;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001C4F8FCD0;
  *(v2 + 48) = swift_getKeyPath();
  strcpy((v2 + 56), "low_power_mode");
  *(v2 + 71) = -18;
  *(v2 + 72) = swift_getKeyPath();
  *(v2 + 80) = 0xD000000000000012;
  *(v2 + 88) = 0x80000001C4F8FCF0;
  *(v2 + 96) = swift_getKeyPath();
  *(v2 + 104) = 0xD000000000000015;
  *(v2 + 112) = 0x80000001C4F8FD10;
  *(v2 + 120) = swift_getKeyPath();
  *(v2 + 128) = 0xD000000000000023;
  *(v2 + 136) = 0x80000001C4F8FD30;
  *(v2 + 144) = swift_getKeyPath();
  *(inited + 72) = sub_1C4F00F28();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001C4F8FD60;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1C4F0CE60;
  *(v3 + 32) = 0xD000000000000028;
  *(v3 + 40) = 0x80000001C4F8FD80;
  *(v3 + 48) = swift_getKeyPath();
  *(v3 + 56) = 0xD000000000000036;
  *(v3 + 64) = 0x80000001C4F8FDB0;
  *(v3 + 72) = swift_getKeyPath();
  *(inited + 96) = sub_1C4F00F28();
  *(inited + 104) = 0x636E75614C707061;
  *(inited + 112) = 0xEF6C616E67695368;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000001C4F8A5B0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0xD000000000000017;
  *(v4 + 64) = 0x80000001C4F8A5F0;
  *(v4 + 72) = swift_getKeyPath();
  *(v4 + 80) = 0xD00000000000001FLL;
  *(v4 + 88) = 0x80000001C4F8A610;
  *(v4 + 96) = swift_getKeyPath();
  *(inited + 120) = sub_1C4F00F28();
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x80000001C4F8FDF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x80000001C4F8A360;
  *(v5 + 48) = swift_getKeyPath();
  *(inited + 144) = sub_1C4F00F28();
  *(inited + 152) = 0xD000000000000016;
  *(inited + 160) = 0x80000001C4F8FE10;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1C4F0CE60;
  *(v6 + 32) = 0xD000000000000022;
  *(v6 + 40) = 0x80000001C4F89D90;
  *(v6 + 48) = swift_getKeyPath();
  *(v6 + 56) = 0xD000000000000016;
  *(v6 + 64) = 0x80000001C4F89DC0;
  *(v6 + 72) = swift_getKeyPath();
  *(inited + 168) = sub_1C4F00F28();
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000001C4F8FE30;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F17D00;
  *(v7 + 32) = 0xD00000000000003CLL;
  *(v7 + 40) = 0x80000001C4F8FE50;
  *(v7 + 48) = swift_getKeyPath();
  *(v7 + 56) = 0xD00000000000003ALL;
  *(v7 + 64) = 0x80000001C4F8FE90;
  *(v7 + 72) = swift_getKeyPath();
  *(v7 + 80) = 0xD000000000000039;
  *(v7 + 88) = 0x80000001C4F8FED0;
  *(v7 + 96) = swift_getKeyPath();
  *(v7 + 104) = 0xD000000000000043;
  *(v7 + 112) = 0x80000001C4F8FF10;
  *(v7 + 120) = swift_getKeyPath();
  *(v7 + 128) = 0xD000000000000041;
  *(v7 + 136) = 0x80000001C4F8FF60;
  *(v7 + 144) = swift_getKeyPath();
  *(v7 + 152) = 0xD000000000000040;
  *(v7 + 160) = 0x80000001C4F8FFB0;
  *(v7 + 168) = swift_getKeyPath();
  *(v7 + 176) = 0xD00000000000003BLL;
  *(v7 + 184) = 0x80000001C4F90000;
  *(v7 + 192) = swift_getKeyPath();
  *(v7 + 200) = 0xD000000000000039;
  *(v7 + 208) = 0x80000001C4F90040;
  *(v7 + 216) = swift_getKeyPath();
  *(v7 + 224) = 0xD000000000000038;
  *(v7 + 232) = 0x80000001C4F90080;
  *(v7 + 240) = swift_getKeyPath();
  *(v7 + 248) = 0xD000000000000042;
  *(v7 + 256) = 0x80000001C4F900C0;
  *(v7 + 264) = swift_getKeyPath();
  *(v7 + 272) = 0xD000000000000040;
  *(v7 + 280) = 0x80000001C4F90110;
  *(v7 + 288) = swift_getKeyPath();
  *(v7 + 296) = 0xD00000000000003FLL;
  *(v7 + 304) = 0x80000001C4F90160;
  *(v7 + 312) = swift_getKeyPath();
  *(inited + 192) = sub_1C4F00F28();
  *(inited + 200) = 0xD00000000000001DLL;
  *(inited + 208) = 0x80000001C4F901A0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1C4F0C890;
  *(v8 + 32) = 0xD00000000000002ELL;
  *(v8 + 40) = 0x80000001C4F901C0;
  *(v8 + 48) = swift_getKeyPath();
  *(v8 + 56) = 0xD00000000000002CLL;
  *(v8 + 64) = 0x80000001C4F901F0;
  *(v8 + 72) = swift_getKeyPath();
  *(v8 + 80) = 0xD00000000000002BLL;
  *(v8 + 88) = 0x80000001C4F90220;
  *(v8 + 96) = swift_getKeyPath();
  *(inited + 216) = sub_1C4F00F28();
  *(inited + 224) = 0xD000000000000025;
  *(inited + 232) = 0x80000001C4F90250;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F17D10;
  *(v9 + 32) = 0xD000000000000023;
  *(v9 + 40) = 0x80000001C4F90280;
  *(v9 + 48) = swift_getKeyPath();
  *(v9 + 56) = 0xD000000000000023;
  *(v9 + 64) = 0x80000001C4F902B0;
  *(v9 + 72) = swift_getKeyPath();
  *(v9 + 80) = 0xD00000000000002DLL;
  *(v9 + 88) = 0x80000001C4F902E0;
  *(v9 + 96) = swift_getKeyPath();
  *(v9 + 104) = 0xD000000000000028;
  *(v9 + 112) = 0x80000001C4F90310;
  *(v9 + 120) = swift_getKeyPath();
  *(v9 + 128) = 0xD000000000000025;
  *(v9 + 136) = 0x80000001C4F90340;
  *(v9 + 144) = swift_getKeyPath();
  *(v9 + 152) = 0xD000000000000021;
  *(v9 + 160) = 0x80000001C4F90370;
  *(v9 + 168) = swift_getKeyPath();
  *(v9 + 176) = 0xD000000000000021;
  *(v9 + 184) = 0x80000001C4F903A0;
  *(v9 + 192) = swift_getKeyPath();
  *(v9 + 200) = 0xD000000000000022;
  *(v9 + 208) = 0x80000001C4F903D0;
  *(v9 + 216) = swift_getKeyPath();
  *(v9 + 224) = 0xD000000000000026;
  *(v9 + 232) = 0x80000001C4F90400;
  *(v9 + 240) = swift_getKeyPath();
  *(v9 + 248) = 0xD00000000000002CLL;
  *(v9 + 256) = 0x80000001C4F90430;
  *(v9 + 264) = swift_getKeyPath();
  *(v9 + 272) = 0xD00000000000002CLL;
  *(v9 + 280) = 0x80000001C4F90460;
  *(v9 + 288) = swift_getKeyPath();
  *(v9 + 296) = 0xD000000000000028;
  *(v9 + 304) = 0x80000001C4F90490;
  *(v9 + 312) = swift_getKeyPath();
  *(v9 + 320) = 0xD000000000000027;
  *(v9 + 328) = 0x80000001C4F904C0;
  *(v9 + 336) = swift_getKeyPath();
  *(v9 + 344) = 0xD000000000000023;
  *(v9 + 352) = 0x80000001C4F904F0;
  *(v9 + 360) = swift_getKeyPath();
  *(v9 + 368) = 0xD000000000000023;
  *(v9 + 376) = 0x80000001C4F90520;
  *(v9 + 384) = swift_getKeyPath();
  *(v9 + 392) = 0xD00000000000002DLL;
  *(v9 + 400) = 0x80000001C4F90550;
  *(v9 + 408) = swift_getKeyPath();
  *(v9 + 416) = 0xD000000000000028;
  *(v9 + 424) = 0x80000001C4F90580;
  *(v9 + 432) = swift_getKeyPath();
  *(v9 + 440) = 0xD000000000000025;
  *(v9 + 448) = 0x80000001C4F905B0;
  *(v9 + 456) = swift_getKeyPath();
  *(v9 + 464) = 0xD000000000000021;
  *(v9 + 472) = 0x80000001C4F905E0;
  *(v9 + 480) = swift_getKeyPath();
  *(v9 + 488) = 0xD000000000000021;
  *(v9 + 496) = 0x80000001C4F90610;
  *(v9 + 504) = swift_getKeyPath();
  *(v9 + 512) = 0xD000000000000022;
  *(v9 + 520) = 0x80000001C4F90640;
  *(v9 + 528) = swift_getKeyPath();
  *(v9 + 536) = 0xD000000000000026;
  *(v9 + 544) = 0x80000001C4F90670;
  *(v9 + 552) = swift_getKeyPath();
  *(v9 + 560) = 0xD00000000000002CLL;
  *(v9 + 568) = 0x80000001C4F906A0;
  *(v9 + 576) = swift_getKeyPath();
  *(v9 + 584) = 0xD00000000000002CLL;
  *(v9 + 592) = 0x80000001C4F906D0;
  *(v9 + 600) = swift_getKeyPath();
  *(v9 + 608) = 0xD000000000000028;
  *(v9 + 616) = 0x80000001C4F90700;
  *(v9 + 624) = swift_getKeyPath();
  *(v9 + 632) = 0xD000000000000027;
  *(v9 + 640) = 0x80000001C4F90730;
  *(v9 + 648) = swift_getKeyPath();
  *(v9 + 656) = 0xD00000000000001DLL;
  *(v9 + 664) = 0x80000001C4F90760;
  *(v9 + 672) = swift_getKeyPath();
  *(v9 + 680) = 0xD000000000000022;
  *(v9 + 688) = 0x80000001C4F90780;
  *(v9 + 696) = swift_getKeyPath();
  *(v9 + 704) = 0xD00000000000001FLL;
  *(v9 + 712) = 0x80000001C4F907B0;
  *(v9 + 720) = swift_getKeyPath();
  *(v9 + 728) = 0xD00000000000001CLL;
  *(v9 + 736) = 0x80000001C4F907D0;
  *(v9 + 744) = swift_getKeyPath();
  *(v9 + 752) = 0xD000000000000020;
  *(v9 + 760) = 0x80000001C4F907F0;
  *(v9 + 768) = swift_getKeyPath();
  *(v9 + 776) = 0xD000000000000026;
  *(v9 + 784) = 0x80000001C4F90820;
  *(v9 + 792) = swift_getKeyPath();
  *(v9 + 800) = 0xD000000000000026;
  *(v9 + 808) = 0x80000001C4F90850;
  *(v9 + 816) = swift_getKeyPath();
  *(v9 + 824) = 0xD000000000000022;
  *(v9 + 832) = 0x80000001C4F90880;
  *(v9 + 840) = swift_getKeyPath();
  *(v9 + 848) = 0xD000000000000024;
  *(v9 + 856) = 0x80000001C4F908B0;
  *(v9 + 864) = swift_getKeyPath();
  *(v9 + 872) = 0xD000000000000024;
  *(v9 + 880) = 0x80000001C4F908E0;
  *(v9 + 888) = swift_getKeyPath();
  *(v9 + 896) = 0xD00000000000002ELL;
  *(v9 + 904) = 0x80000001C4F90910;
  *(v9 + 912) = swift_getKeyPath();
  *(v9 + 920) = 0xD000000000000029;
  *(v9 + 928) = 0x80000001C4F90940;
  *(v9 + 936) = swift_getKeyPath();
  *(v9 + 944) = 0xD000000000000026;
  *(v9 + 952) = 0x80000001C4F90970;
  *(v9 + 960) = swift_getKeyPath();
  *(v9 + 968) = 0xD000000000000022;
  *(v9 + 976) = 0x80000001C4F909A0;
  *(v9 + 984) = swift_getKeyPath();
  *(v9 + 992) = 0xD000000000000022;
  *(v9 + 1000) = 0x80000001C4F909D0;
  *(v9 + 1008) = swift_getKeyPath();
  *(v9 + 1016) = 0xD000000000000023;
  *(v9 + 1024) = 0x80000001C4F90A00;
  *(v9 + 1032) = swift_getKeyPath();
  *(v9 + 1040) = 0xD000000000000027;
  *(v9 + 1048) = 0x80000001C4F90A30;
  *(v9 + 1056) = swift_getKeyPath();
  *(v9 + 1064) = 0xD00000000000002DLL;
  *(v9 + 1072) = 0x80000001C4F90A60;
  *(v9 + 1080) = swift_getKeyPath();
  *(v9 + 1088) = 0xD00000000000002DLL;
  *(v9 + 1096) = 0x80000001C4F90A90;
  *(v9 + 1104) = swift_getKeyPath();
  *(v9 + 1112) = 0xD000000000000029;
  *(v9 + 1120) = 0x80000001C4F90AC0;
  *(v9 + 1128) = swift_getKeyPath();
  *(v9 + 1136) = 0xD000000000000028;
  *(v9 + 1144) = 0x80000001C4F90AF0;
  *(v9 + 1152) = swift_getKeyPath();
  *(v9 + 1160) = 0xD000000000000024;
  *(v9 + 1168) = 0x80000001C4F90B20;
  *(v9 + 1176) = swift_getKeyPath();
  *(v9 + 1184) = 0xD000000000000024;
  *(v9 + 1192) = 0x80000001C4F90B50;
  *(v9 + 1200) = swift_getKeyPath();
  *(v9 + 1208) = 0xD00000000000002ELL;
  *(v9 + 1216) = 0x80000001C4F90B80;
  *(v9 + 1224) = swift_getKeyPath();
  *(v9 + 1232) = 0xD000000000000029;
  *(v9 + 1240) = 0x80000001C4F90BB0;
  *(v9 + 1248) = swift_getKeyPath();
  *(v9 + 1256) = 0xD000000000000026;
  *(v9 + 1264) = 0x80000001C4F90BE0;
  *(v9 + 1272) = swift_getKeyPath();
  *(v9 + 1280) = 0xD000000000000022;
  *(v9 + 1288) = 0x80000001C4F90C10;
  *(v9 + 1296) = swift_getKeyPath();
  *(v9 + 1304) = 0xD000000000000022;
  *(v9 + 1312) = 0x80000001C4F90C40;
  *(v9 + 1320) = swift_getKeyPath();
  *(v9 + 1328) = 0xD000000000000023;
  *(v9 + 1336) = 0x80000001C4F90C70;
  *(v9 + 1344) = swift_getKeyPath();
  *(v9 + 1352) = 0xD000000000000027;
  *(v9 + 1360) = 0x80000001C4F90CA0;
  *(v9 + 1368) = swift_getKeyPath();
  *(v9 + 1376) = 0xD00000000000002DLL;
  *(v9 + 1384) = 0x80000001C4F90CD0;
  *(v9 + 1392) = swift_getKeyPath();
  *(v9 + 1400) = 0xD00000000000002DLL;
  *(v9 + 1408) = 0x80000001C4F90D00;
  *(v9 + 1416) = swift_getKeyPath();
  *(v9 + 1424) = 0xD000000000000029;
  *(v9 + 1432) = 0x80000001C4F90D30;
  *(v9 + 1440) = swift_getKeyPath();
  *(v9 + 1448) = 0xD000000000000028;
  *(v9 + 1456) = 0x80000001C4F90D60;
  *(v9 + 1464) = swift_getKeyPath();
  *(v9 + 1472) = 0xD00000000000001ELL;
  *(v9 + 1480) = 0x80000001C4F90D90;
  *(v9 + 1488) = swift_getKeyPath();
  *(v9 + 1496) = 0xD000000000000023;
  *(v9 + 1504) = 0x80000001C4F90DB0;
  *(v9 + 1512) = swift_getKeyPath();
  *(v9 + 1520) = 0xD000000000000020;
  *(v9 + 1528) = 0x80000001C4F90DE0;
  *(v9 + 1536) = swift_getKeyPath();
  *(v9 + 1544) = 0xD00000000000001DLL;
  *(v9 + 1552) = 0x80000001C4F90E10;
  *(v9 + 1560) = swift_getKeyPath();
  *(v9 + 1568) = 0xD000000000000021;
  *(v9 + 1576) = 0x80000001C4F90E30;
  *(v9 + 1584) = swift_getKeyPath();
  *(v9 + 1592) = 0xD000000000000027;
  *(v9 + 1600) = 0x80000001C4F90E60;
  *(v9 + 1608) = swift_getKeyPath();
  *(v9 + 1616) = 0xD000000000000027;
  *(v9 + 1624) = 0x80000001C4F90E90;
  *(v9 + 1632) = swift_getKeyPath();
  *(v9 + 1640) = 0xD000000000000023;
  *(v9 + 1648) = 0x80000001C4F90EC0;
  *(v9 + 1656) = swift_getKeyPath();
  *(v9 + 1664) = 0xD000000000000029;
  *(v9 + 1672) = 0x80000001C4F90EF0;
  *(v9 + 1680) = swift_getKeyPath();
  *(v9 + 1688) = 0xD000000000000029;
  *(v9 + 1696) = 0x80000001C4F90F20;
  *(v9 + 1704) = swift_getKeyPath();
  *(v9 + 1712) = 0xD000000000000033;
  *(v9 + 1720) = 0x80000001C4F90F50;
  *(v9 + 1728) = swift_getKeyPath();
  *(v9 + 1736) = 0xD00000000000002ELL;
  *(v9 + 1744) = 0x80000001C4F90F90;
  *(v9 + 1752) = swift_getKeyPath();
  *(v9 + 1760) = 0xD00000000000002BLL;
  *(v9 + 1768) = 0x80000001C4F90FC0;
  *(v9 + 1776) = swift_getKeyPath();
  *(v9 + 1784) = 0xD000000000000027;
  *(v9 + 1792) = 0x80000001C4F90FF0;
  *(v9 + 1800) = swift_getKeyPath();
  *(v9 + 1808) = 0xD000000000000027;
  *(v9 + 1816) = 0x80000001C4F91020;
  *(v9 + 1824) = swift_getKeyPath();
  *(v9 + 1832) = 0xD000000000000028;
  *(v9 + 1840) = 0x80000001C4F91050;
  *(v9 + 1848) = swift_getKeyPath();
  *(v9 + 1856) = 0xD00000000000002CLL;
  *(v9 + 1864) = 0x80000001C4F91080;
  *(v9 + 1872) = swift_getKeyPath();
  *(v9 + 1880) = 0xD000000000000032;
  *(v9 + 1888) = 0x80000001C4F910B0;
  *(v9 + 1896) = swift_getKeyPath();
  *(v9 + 1904) = 0xD000000000000032;
  *(v9 + 1912) = 0x80000001C4F910F0;
  *(v9 + 1920) = swift_getKeyPath();
  *(v9 + 1928) = 0xD00000000000002ELL;
  *(v9 + 1936) = 0x80000001C4F91130;
  *(v9 + 1944) = swift_getKeyPath();
  *(v9 + 1952) = 0xD00000000000002DLL;
  *(v9 + 1960) = 0x80000001C4F91160;
  *(v9 + 1968) = swift_getKeyPath();
  *(v9 + 1976) = 0xD000000000000029;
  *(v9 + 1984) = 0x80000001C4F91190;
  *(v9 + 1992) = swift_getKeyPath();
  *(v9 + 2000) = 0xD000000000000029;
  *(v9 + 2008) = 0x80000001C4F911C0;
  *(v9 + 2016) = swift_getKeyPath();
  *(v9 + 2024) = 0xD000000000000033;
  *(v9 + 2032) = 0x80000001C4F911F0;
  *(v9 + 2040) = swift_getKeyPath();
  *(v9 + 2048) = 0xD00000000000002ELL;
  *(v9 + 2056) = 0x80000001C4F91230;
  *(v9 + 2064) = swift_getKeyPath();
  *(v9 + 2072) = 0xD00000000000002BLL;
  *(v9 + 2080) = 0x80000001C4F91260;
  *(v9 + 2088) = swift_getKeyPath();
  *(v9 + 2096) = 0xD000000000000027;
  *(v9 + 2104) = 0x80000001C4F91290;
  *(v9 + 2112) = swift_getKeyPath();
  *(v9 + 2120) = 0xD000000000000027;
  *(v9 + 2128) = 0x80000001C4F912C0;
  *(v9 + 2136) = swift_getKeyPath();
  *(v9 + 2144) = 0xD000000000000028;
  *(v9 + 2152) = 0x80000001C4F912F0;
  *(v9 + 2160) = swift_getKeyPath();
  *(v9 + 2168) = 0xD00000000000002CLL;
  *(v9 + 2176) = 0x80000001C4F91320;
  *(v9 + 2184) = swift_getKeyPath();
  *(v9 + 2192) = 0xD000000000000032;
  *(v9 + 2200) = 0x80000001C4F91350;
  *(v9 + 2208) = swift_getKeyPath();
  *(v9 + 2216) = 0xD000000000000032;
  *(v9 + 2224) = 0x80000001C4F91390;
  *(v9 + 2232) = swift_getKeyPath();
  *(v9 + 2240) = 0xD00000000000002ELL;
  *(v9 + 2248) = 0x80000001C4F913D0;
  *(v9 + 2256) = swift_getKeyPath();
  *(v9 + 2264) = 0xD00000000000002DLL;
  *(v9 + 2272) = 0x80000001C4F91400;
  *(v9 + 2280) = swift_getKeyPath();
  *(v9 + 2288) = 0xD000000000000023;
  *(v9 + 2296) = 0x80000001C4F91430;
  *(v9 + 2304) = swift_getKeyPath();
  *(v9 + 2312) = 0xD000000000000028;
  *(v9 + 2320) = 0x80000001C4F91460;
  *(v9 + 2328) = swift_getKeyPath();
  *(v9 + 2336) = 0xD000000000000025;
  *(v9 + 2344) = 0x80000001C4F91490;
  *(v9 + 2352) = swift_getKeyPath();
  *(v9 + 2360) = 0xD000000000000022;
  *(v9 + 2368) = 0x80000001C4F914C0;
  *(v9 + 2376) = swift_getKeyPath();
  *(v9 + 2384) = 0xD000000000000026;
  *(v9 + 2392) = 0x80000001C4F914F0;
  *(v9 + 2400) = swift_getKeyPath();
  *(v9 + 2408) = 0xD00000000000002CLL;
  *(v9 + 2416) = 0x80000001C4F91520;
  *(v9 + 2424) = swift_getKeyPath();
  *(v9 + 2432) = 0xD00000000000002CLL;
  *(v9 + 2440) = 0x80000001C4F91550;
  *(v9 + 2448) = swift_getKeyPath();
  *(v9 + 2456) = 0xD000000000000028;
  *(v9 + 2464) = 0x80000001C4F91580;
  *(v9 + 2472) = swift_getKeyPath();
  *(inited + 240) = sub_1C4F00F28();
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x80000001C4F915B0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0C890;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x80000001C4F915D0;
  *(v10 + 48) = swift_getKeyPath();
  *(v10 + 56) = 0xD00000000000001DLL;
  *(v10 + 64) = 0x80000001C4F915F0;
  *(v10 + 72) = swift_getKeyPath();
  *(v10 + 80) = 0xD00000000000001DLL;
  *(v10 + 88) = 0x80000001C4F91610;
  *(v10 + 96) = swift_getKeyPath();
  *(inited + 264) = sub_1C4F00F28();
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x80000001C4F91630;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F17D20;
  *(v11 + 32) = 0xD000000000000028;
  *(v11 + 40) = 0x80000001C4F86FF0;
  *(v11 + 48) = swift_getKeyPath();
  *(v11 + 56) = 0xD00000000000002FLL;
  *(v11 + 64) = 0x80000001C4F87020;
  *(v11 + 72) = swift_getKeyPath();
  *(v11 + 80) = 0xD000000000000029;
  *(v11 + 88) = 0x80000001C4F87050;
  *(v11 + 96) = swift_getKeyPath();
  *(v11 + 104) = 0xD000000000000024;
  *(v11 + 112) = 0x80000001C4F87080;
  *(v11 + 120) = swift_getKeyPath();
  *(v11 + 128) = 0xD000000000000027;
  *(v11 + 136) = 0x80000001C4F870B0;
  *(v11 + 144) = swift_getKeyPath();
  *(v11 + 152) = 0xD000000000000025;
  *(v11 + 160) = 0x80000001C4F870E0;
  *(v11 + 168) = swift_getKeyPath();
  *(v11 + 176) = 0xD000000000000026;
  *(v11 + 184) = 0x80000001C4F87110;
  *(v11 + 192) = swift_getKeyPath();
  *(v11 + 200) = 0xD000000000000028;
  *(v11 + 208) = 0x80000001C4F87140;
  *(v11 + 216) = swift_getKeyPath();
  *(v11 + 224) = 0xD000000000000025;
  *(v11 + 232) = 0x80000001C4F87170;
  *(v11 + 240) = swift_getKeyPath();
  *(v11 + 248) = 0xD00000000000002BLL;
  *(v11 + 256) = 0x80000001C4F871A0;
  *(v11 + 264) = swift_getKeyPath();
  *(v11 + 272) = 0xD00000000000002BLL;
  *(v11 + 280) = 0x80000001C4F871D0;
  *(v11 + 288) = swift_getKeyPath();
  *(v11 + 296) = 0xD00000000000002BLL;
  *(v11 + 304) = 0x80000001C4F87200;
  *(v11 + 312) = swift_getKeyPath();
  *(v11 + 320) = 0xD00000000000002DLL;
  *(v11 + 328) = 0x80000001C4F87230;
  *(v11 + 336) = swift_getKeyPath();
  *(v11 + 344) = 0xD00000000000002FLL;
  *(v11 + 352) = 0x80000001C4F87260;
  *(v11 + 360) = swift_getKeyPath();
  *(v11 + 368) = 0xD00000000000002CLL;
  *(v11 + 376) = 0x80000001C4F87290;
  *(v11 + 384) = swift_getKeyPath();
  *(v11 + 392) = 0xD00000000000002CLL;
  *(v11 + 400) = 0x80000001C4F872C0;
  *(v11 + 408) = swift_getKeyPath();
  *(v11 + 416) = 0xD000000000000029;
  *(v11 + 424) = 0x80000001C4F872F0;
  *(v11 + 432) = swift_getKeyPath();
  *(v11 + 440) = 0xD000000000000026;
  *(v11 + 448) = 0x80000001C4F87320;
  *(v11 + 456) = swift_getKeyPath();
  *(v11 + 464) = 0xD000000000000028;
  *(v11 + 472) = 0x80000001C4F87350;
  *(v11 + 480) = swift_getKeyPath();
  *(v11 + 488) = 0xD000000000000028;
  *(v11 + 496) = 0x80000001C4F87380;
  *(v11 + 504) = swift_getKeyPath();
  *(v11 + 512) = 0xD000000000000027;
  *(v11 + 520) = 0x80000001C4F873B0;
  *(v11 + 528) = swift_getKeyPath();
  *(v11 + 536) = 0xD00000000000002ELL;
  *(v11 + 544) = 0x80000001C4F873E0;
  *(v11 + 552) = swift_getKeyPath();
  *(v11 + 560) = 0xD000000000000027;
  *(v11 + 568) = 0x80000001C4F87410;
  *(v11 + 576) = swift_getKeyPath();
  *(v11 + 584) = 0xD00000000000002ELL;
  *(v11 + 592) = 0x80000001C4F87440;
  *(v11 + 600) = swift_getKeyPath();
  *(v11 + 608) = 0xD00000000000002BLL;
  *(v11 + 616) = 0x80000001C4F87470;
  *(v11 + 624) = swift_getKeyPath();
  *(v11 + 632) = 0xD000000000000025;
  *(v11 + 640) = 0x80000001C4F874A0;
  *(v11 + 648) = swift_getKeyPath();
  *(v11 + 656) = 0xD000000000000028;
  *(v11 + 664) = 0x80000001C4F874D0;
  *(v11 + 672) = swift_getKeyPath();
  *(v11 + 680) = 0xD000000000000029;
  *(v11 + 688) = 0x80000001C4F87500;
  *(v11 + 696) = swift_getKeyPath();
  *(v11 + 704) = 0xD00000000000002BLL;
  *(v11 + 712) = 0x80000001C4F87530;
  *(v11 + 720) = swift_getKeyPath();
  *(v11 + 728) = 0xD000000000000027;
  *(v11 + 736) = 0x80000001C4F87560;
  *(v11 + 744) = swift_getKeyPath();
  *(v11 + 752) = 0xD00000000000002CLL;
  *(v11 + 760) = 0x80000001C4F87590;
  *(v11 + 768) = swift_getKeyPath();
  *(v11 + 776) = 0xD000000000000031;
  *(v11 + 784) = 0x80000001C4F875C0;
  *(v11 + 792) = swift_getKeyPath();
  *(v11 + 800) = 0xD00000000000002FLL;
  *(v11 + 808) = 0x80000001C4F87600;
  *(v11 + 816) = swift_getKeyPath();
  *(v11 + 824) = 0xD00000000000002BLL;
  *(v11 + 832) = 0x80000001C4F87630;
  *(v11 + 840) = swift_getKeyPath();
  *(v11 + 848) = 0xD000000000000029;
  *(v11 + 856) = 0x80000001C4F87660;
  *(v11 + 864) = swift_getKeyPath();
  *(v11 + 872) = 0xD000000000000027;
  *(v11 + 880) = 0x80000001C4F87690;
  *(v11 + 888) = swift_getKeyPath();
  *(v11 + 896) = 0xD000000000000028;
  *(v11 + 904) = 0x80000001C4F876C0;
  *(v11 + 912) = swift_getKeyPath();
  *(v11 + 920) = 0xD000000000000026;
  *(v11 + 928) = 0x80000001C4F876F0;
  *(v11 + 936) = swift_getKeyPath();
  *(v11 + 944) = 0xD000000000000028;
  *(v11 + 952) = 0x80000001C4F87720;
  *(v11 + 960) = swift_getKeyPath();
  *(v11 + 968) = 0xD00000000000002BLL;
  *(v11 + 976) = 0x80000001C4F87750;
  *(v11 + 984) = swift_getKeyPath();
  *(v11 + 992) = 0xD000000000000027;
  *(v11 + 1000) = 0x80000001C4F87780;
  *(v11 + 1008) = swift_getKeyPath();
  *(v11 + 1016) = 0xD000000000000024;
  *(v11 + 1024) = 0x80000001C4F877B0;
  *(v11 + 1032) = swift_getKeyPath();
  *(v11 + 1040) = 0xD00000000000002DLL;
  *(v11 + 1048) = 0x80000001C4F877E0;
  *(v11 + 1056) = swift_getKeyPath();
  *(v11 + 1064) = 0xD000000000000031;
  *(v11 + 1072) = 0x80000001C4F87810;
  *(v11 + 1080) = swift_getKeyPath();
  *(inited + 288) = sub_1C4F00F28();
  *(inited + 296) = 0xD000000000000016;
  *(inited + 304) = 0x80000001C4F91650;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0C890;
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = 0x80000001C4F91670;
  *(v12 + 48) = swift_getKeyPath();
  *(v12 + 56) = 0xD000000000000014;
  *(v12 + 64) = 0x80000001C4F91690;
  *(v12 + 72) = swift_getKeyPath();
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = 0x80000001C4F916B0;
  *(v12 + 96) = swift_getKeyPath();
  *(inited + 312) = sub_1C4F00F28();
  *(inited + 320) = 0xD00000000000001ELL;
  *(inited + 328) = 0x80000001C4F916D0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0C890;
  *(v13 + 32) = 0xD00000000000002FLL;
  *(v13 + 40) = 0x80000001C4F8A210;
  *(v13 + 48) = swift_getKeyPath();
  *(v13 + 56) = 0xD00000000000002DLL;
  *(v13 + 64) = 0x80000001C4F8A240;
  *(v13 + 72) = swift_getKeyPath();
  *(v13 + 80) = 0xD00000000000002CLL;
  *(v13 + 88) = 0x80000001C4F8A270;
  *(v13 + 96) = swift_getKeyPath();
  *(inited + 336) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BAF48, &qword_1C4F1C8D8);
  result = sub_1C4F00F28();
  qword_1EC151B88 = result;
  return result;
}

uint64_t sub_1C46A4590(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_1C46A59F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config, type metadata accessor for Configuration);
  return v1;
}

uint64_t sub_1C46A45F4()
{
  v2 = v0;
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF9E58();
  v9 = sub_1C43FCDF8(v8);
  v103 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v105 = sub_1C4EF9F88();
  v16 = sub_1C43FCDF8(v105);
  v104 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = type metadata accessor for DateFetcher();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C46A51EC();
  if (!v1)
  {
    v102 = v28;
    sub_1C456902C(&qword_1EC0BAF50, &qword_1C4F1D648);
    v101 = v7;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F17D30;
    sub_1C43FBDF0();
    *(v30 + 32) = 0xD000000000000016;
    *(v30 + 40) = v31;
    type metadata accessor for ActivityIntervalSignal();
    v32 = sub_1C4572E34();
    v33 = sub_1C46A59A8(&qword_1EC0B8480, type metadata accessor for ActivityIntervalSignal);
    *(inited + 48) = v32;
    *(inited + 56) = v33;
    sub_1C43FBDF0();
    *(inited + 64) = 0xD00000000000001ELL;
    *(inited + 72) = v34;
    type metadata accessor for AmbientLightDistributionSignal();
    sub_1C457ECF0();
    v36 = v35;
    v37 = sub_1C46A59A8(&qword_1EC0B85C0, type metadata accessor for AmbientLightDistributionSignal);
    *(inited + 80) = v36;
    *(inited + 88) = v37;
    sub_1C43FBDF0();
    *(inited + 96) = 0xD000000000000012;
    *(inited + 104) = v38;
    type metadata accessor for AmbientLightSignal();
    sub_1C440C428();
    v39 = sub_1C4585984();
    v40 = sub_1C46A59A8(&qword_1EC0BAF58, type metadata accessor for AmbientLightSignal);
    *(inited + 112) = v39;
    *(inited + 120) = v40;
    sub_1C43FBDF0();
    *(inited + 128) = 0xD00000000000001DLL;
    *(inited + 136) = v41;
    type metadata accessor for AppCategoryDistributionSignal();
    sub_1C4590E94();
    v43 = v42;
    v44 = sub_1C46A59A8(&qword_1EC0B8D68, type metadata accessor for AppCategoryDistributionSignal);
    *(inited + 144) = v43;
    *(inited + 152) = v44;
    *(inited + 160) = 0x636E75614C707061;
    *(inited + 168) = 0xEF6C616E67695368;
    type metadata accessor for AppLaunchSignal();
    swift_allocObject();
    v45 = sub_1C4595FC0();
    v46 = sub_1C46A59A8(&qword_1EC0BAF60, type metadata accessor for AppLaunchSignal);
    *(inited + 176) = v45;
    *(inited + 184) = v46;
    strcpy((inited + 192), "carPlaySignal");
    *(inited + 206) = -4864;
    type metadata accessor for CarPlaySignal();
    swift_allocObject();
    v47 = sub_1C4677E18(0);
    v48 = sub_1C46A59A8(&qword_1EC0BAF68, type metadata accessor for CarPlaySignal);
    *(inited + 208) = v47;
    *(inited + 216) = v48;
    sub_1C43FBDF0();
    *(inited + 224) = 0xD000000000000013;
    *(inited + 232) = v49;
    type metadata accessor for DeviceDisplaySignal();
    sub_1C4411A54();
    v50 = sub_1C46C3CE0(0);
    v51 = sub_1C46A59A8(&qword_1EC0BAF70, type metadata accessor for DeviceDisplaySignal);
    *(inited + 240) = v50;
    *(inited + 248) = v51;
    sub_1C43FBDF0();
    *(inited + 256) = 0xD000000000000011;
    *(inited + 264) = v52;
    type metadata accessor for DevicePowerSignal();
    sub_1C4411A54();
    v53 = sub_1C46C47FC();
    v54 = sub_1C46A59A8(&qword_1EC0BAF78, type metadata accessor for DevicePowerSignal);
    *(inited + 272) = v53;
    *(inited + 280) = v54;
    sub_1C43FBDF0();
    *(inited + 288) = 0xD000000000000014;
    *(inited + 296) = v55;
    type metadata accessor for DeviceWirelessSignal();
    sub_1C4411A54();
    v56 = sub_1C46C776C();
    v57 = sub_1C46A59A8(&qword_1EC0BAF80, type metadata accessor for DeviceWirelessSignal);
    *(inited + 304) = v56;
    *(inited + 312) = v57;
    sub_1C43FBDF0();
    *(inited + 320) = 0xD000000000000012;
    *(inited + 328) = v58;
    type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v59 = sub_1C493B648(1, 0);
    v60 = sub_1C46A59A8(&qword_1EC0BAF88, type metadata accessor for InferredModeSignal);
    *(inited + 336) = v59;
    *(inited + 344) = v60;
    sub_1C43FBDF0();
    *(inited + 352) = 0xD000000000000016;
    *(inited + 360) = v61;
    type metadata accessor for LocationMetadataSignal();
    sub_1C440C428();
    v62 = sub_1C49FA08C();
    v63 = sub_1C46A59A8(&qword_1EC0BAF90, type metadata accessor for LocationMetadataSignal);
    *(inited + 368) = v62;
    *(inited + 376) = v63;
    sub_1C43FBDF0();
    *(inited + 384) = 0xD000000000000013;
    *(inited + 392) = v64;
    v65 = type metadata accessor for MicroLocationSignal();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = sub_1C4A394B0();
    v69 = sub_1C46A59A8(&qword_1EC0BAF98, type metadata accessor for MicroLocationSignal);
    *(inited + 400) = v68;
    *(inited + 408) = v69;
    sub_1C43FBDF0();
    *(inited + 416) = 0xD00000000000001DLL;
    *(inited + 424) = v70;
    type metadata accessor for MotionStateDistributionSignal();
    sub_1C4A4134C();
    v72 = v71;
    v73 = sub_1C46A59A8(&qword_1EC0BAFA0, type metadata accessor for MotionStateDistributionSignal);
    *(inited + 432) = v72;
    *(inited + 440) = v73;
    sub_1C43FBDF0();
    *(inited + 448) = 0xD000000000000011;
    *(inited + 456) = v74;
    type metadata accessor for MotionStateSignal();
    sub_1C4411A54();
    v75 = sub_1C4A450C4(1, 600.0);
    v76 = sub_1C46A59A8(&qword_1EC0BAFA8, type metadata accessor for MotionStateSignal);
    *(inited + 464) = v75;
    *(inited + 472) = v76;
    sub_1C43FBDF0();
    *(inited + 480) = 0xD000000000000010;
    *(inited + 488) = v77;
    type metadata accessor for NowPlayingSignal();
    sub_1C440C428();
    v78 = sub_1C4A4B19C();
    v79 = sub_1C46A59A8(&qword_1EC0BAFB0, type metadata accessor for NowPlayingSignal);
    *(inited + 496) = v78;
    *(inited + 504) = v79;
    sub_1C43FBDF0();
    *(inited + 512) = 0xD000000000000011;
    *(inited + 520) = v80;
    type metadata accessor for PoiCategorySignal();
    v81 = sub_1C440C428();
    *(v81 + 16) = [objc_allocWithZone(MEMORY[0x1E698F2C0]) init];
    v82 = sub_1C46A59A8(&qword_1EC0BAFB8, type metadata accessor for PoiCategorySignal);
    *(inited + 528) = v81;
    *(inited + 536) = v82;
    sub_1C43FBDF0();
    *(inited + 544) = 0xD000000000000016;
    *(inited + 552) = v83;
    type metadata accessor for SemanticLocationSignal();
    swift_allocObject();
    v84 = sub_1C4AFAB8C(0);
    v85 = sub_1C46A59A8(&qword_1EC0BAFC0, type metadata accessor for SemanticLocationSignal);
    *(inited + 560) = v84;
    *(inited + 568) = v85;
    sub_1C43FBDF0();
    *(inited + 576) = 0xD000000000000011;
    *(inited + 584) = v86;
    sub_1C4EF9C88();
    (*(v103 + 104))(v15, *MEMORY[0x1E6969868], v8);
    sub_1C4EF9E68();
    (*(v103 + 8))(v15, v8);
    v87 = type metadata accessor for TimeAndDateSignal();
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    v90 = swift_allocObject();
    sub_1C46A59F0(v27, v90 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher, type metadata accessor for DateFetcher);
    (*(v104 + 32))(v90 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar, v22, v105);
    v91 = sub_1C46A59A8(&qword_1EC0BAFC8, type metadata accessor for TimeAndDateSignal);
    *(inited + 592) = v90;
    *(inited + 600) = v91;
    sub_1C43FBDF0();
    *(inited + 608) = 0xD00000000000001BLL;
    *(inited + 616) = v92;
    type metadata accessor for UserFocusComputedModeSignal();
    swift_allocObject();
    v93 = sub_1C4B9269C(0);
    v94 = sub_1C46A59A8(&qword_1EC0BAFD0, type metadata accessor for UserFocusComputedModeSignal);
    *(inited + 624) = v93;
    *(inited + 632) = v94;
    sub_1C43FBDF0();
    *(inited + 640) = 0xD000000000000025;
    *(inited + 648) = v95;
    type metadata accessor for VirtualInteractionsDistributionSignal();
    sub_1C46A594C(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config, v101, type metadata accessor for Configuration);
    v96 = sub_1C4D2F82C(v101);
    v97 = sub_1C46A59A8(&qword_1EC0BAFD8, type metadata accessor for VirtualInteractionsDistributionSignal);
    *(inited + 656) = v96;
    *(inited + 664) = v97;
    strcpy((inited + 672), "workoutSignal");
    *(inited + 686) = -4864;
    type metadata accessor for WorkoutSignal();
    sub_1C440C428();
    v98 = sub_1C4D61394();
    v99 = sub_1C46A59A8(&qword_1EC0BAFE0, type metadata accessor for WorkoutSignal);
    *(inited + 688) = v98;
    *(inited + 696) = v99;
    sub_1C456902C(&qword_1EC0BAFE8, &unk_1C4F1D650);
    v0 = sub_1C4F00F28();
  }

  return v0;
}

uint64_t sub_1C46A51EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    return Strong;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (v2)
  {
    v1 = v2;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    sub_1C450B034();
    v3 = swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0xE000000000000000;
    *(v4 + 32) = 0xD000000000000018;
    *(v4 + 40) = 0x80000001C4F917F0;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0xE000000000000000;
    *(v4 + 64) = 2;
    v1 = v3;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1C46A52B8(uint64_t a1)
{
  v3 = sub_1C46A45F4();
  if (!v1)
  {
    v4 = MEMORY[0x1EEE9AC00](v3);
    a1 = sub_1C46C97DC(v4, sub_1C46A564C);
  }

  return a1;
}

uint64_t sub_1C46A535C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (qword_1EC0B68E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4663244(a1, a2, qword_1EC151B80);
  if (!v12)
  {
    sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
    v12 = sub_1C4F00F28();
  }

  v13 = v12;
  if (a5)
  {
    if (qword_1EC0B68E8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4663244(a1, a2, qword_1EC151B88);
    if (!v14)
    {
      sub_1C456902C(&qword_1EC0BAF28, &qword_1C4F17D90);
      v14 = sub_1C4F00F28();
    }

    v13 = sub_1C46A1314(v14, v13);
  }

  ObjectType = swift_getObjectType();
  v16 = *(a4 + 16);
  *(a6 + 24) = ObjectType;
  *(a6 + 32) = v16;
  *a6 = a3;
  *(a6 + 40) = v13;
  *(a6 + 56) = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C46A54F0()
{
  MEMORY[0x1C6942920](v0 + 16);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17CUFeatureProvider_config);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CUFeatureProvider()
{
  result = qword_1EC0BAF18;
  if (!qword_1EC0BAF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46A55B0()
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

uint64_t sub_1C46A5654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  sub_1C46C3CC4(v46);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v40 = v46[5];
  v41 = v46[0];
  v9 = (v46[2] + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v38 = v9;
  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v41 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v40(&v42, v45);

      v17 = v42;
      v16 = v43;
      v18 = v44;
      v19 = *v47;
      v21 = sub_1C445FAA8(v42, v43);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((a4 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BAF30, &qword_1C4F17D98);
          sub_1C4F02468();
        }
      }

      else
      {
        v25 = v47;
        sub_1C467ADC8();
        v26 = *v25;
        v27 = sub_1C445FAA8(v17, v16);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_23;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v47;
      if (v24)
      {
        v30 = *(v29[7] + 8 * v21);

        v31 = v29[7];
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v30;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v29[6] + 16 * v21);
        *v33 = v17;
        v33[1] = v16;
        *(v29[7] + 8 * v21) = v18;
        v34 = v29[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_22;
        }

        v29[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v9 = v38;
      v6 = v39;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C449BB0C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46A5908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C38F4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C46A594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46A59A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46A59F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void *sub_1C46A5A4C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1;
  v10 = _s10ViewConfigVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 > 0x3F)
  {
    goto LABEL_10;
  }

  if (((1 << a1) & 0xE400000000000000) != 0)
  {
    sub_1C442E860(a3, v41);
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      a4[3] = &unk_1F43E6C38;
      a4[4] = &off_1F43E6CE0;
      v14 = swift_allocObject();
      *a4 = v14;
      return memcpy((v14 + 16), __dst, 0x50uLL);
    }

    memset(__src, 0, sizeof(__src));
    sub_1C46A5E4C(__src);
    v22 = sub_1C4CB06C4(a1);
    v24 = v23;
    sub_1C450B034();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0xD000000000000037;
    *(v25 + 24) = 0x80000001C4F91840;
    v26 = v38;
    v27 = v39;
    goto LABEL_12;
  }

  if (((1 << a1) & 0x1800000000000000) == 0)
  {
LABEL_10:
    v28 = sub_1C4CB06C4(a1);
    v30 = v29;
    sub_1C46A5DF8();
    swift_allocError();
    *v31 = v28;
    v31[1] = v30;
    return swift_willThrow();
  }

  sub_1C442E860(a3, __dst);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  if (!swift_dynamicCast())
  {
    v32 = sub_1C4CB06C4(a1);
    v34 = v33;
    sub_1C450B034();
    swift_allocError();
    *v25 = v32;
    *(v25 + 8) = v34;
    *(v25 + 16) = 0xD000000000000024;
    *(v25 + 24) = 0x80000001C4F91810;
    v26 = v41[0];
    v27 = v41[1];
LABEL_12:
    *(v25 + 32) = v26;
    *(v25 + 48) = v27;
    *(v25 + 64) = 7;
    return swift_willThrow();
  }

  v16 = *(&__src[0] + 1);
  v37 = *&__src[0];
  v17 = __src[1];
  v18 = *&__src[2];
  v43 = type metadata accessor for CurrentTimeContextView(0);
  *&__dst[0] = v37;
  *(&__dst[0] + 1) = v16;
  __dst[1] = v17;
  *&__dst[2] = v18;
  sub_1C463F29C(a2, v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v19 = a1;
  v20 = v43;
  v21 = sub_1C46A5F00(__dst, v19, v13);
  if (v4)
  {
  }

  else
  {
    v35 = v21;
    a4[3] = v20;
    a4[4] = &off_1F43E6EC0;

    *a4 = v35;
  }

  return result;
}

unint64_t sub_1C46A5DF8()
{
  result = qword_1EC0BAFF0;
  if (!qword_1EC0BAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAFF0);
  }

  return result;
}

uint64_t sub_1C46A5E4C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BAFF8, qword_1C4F1D680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46A5EB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C46A5F00(uint64_t *a1, char a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a3 + 112);
  if ((v8 - 254) < 2)
  {
    v9 = a1[4];

    v10 = sub_1C4CB06C4(a2);
    v12 = v11;
    sub_1C450B034();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    strcpy((v13 + 16), "signalConfig");
    *(v13 + 29) = 0;
    *(v13 + 30) = -5120;
LABEL_6:
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = v25;
    *(v13 + 64) = 1;
    swift_willThrow();
    sub_1C445F57C(v3);
    return v3;
  }

  if (v8 != 3)
  {
    v20 = a1[4];

    v21 = sub_1C4CB06C4(a2);
    v23 = v22;
    sub_1C450B034();
    swift_allocError();
    *v13 = v21;
    *(v13 + 8) = v23;
    *(v13 + 16) = 0xD000000000000018;
    *(v13 + 24) = 0x80000001C4F91960;
    goto LABEL_6;
  }

  v14 = *(a3 + 88);
  v29 = *(a3 + 80);
  v15 = a1[2];
  v16 = *a1;
  sub_1C445F57C(a3);
  *&v25 = v16;
  *(&v25 + 1) = v5;
  v26 = v15;
  v27 = v6;
  v28 = v7;
  v17 = type metadata accessor for CurrentTimeContextView(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v3 = swift_allocObject();
  sub_1C46A6F68(&v25, a2, v29, v14 & 1, SBYTE1(v14));
  return v3;
}

uint64_t sub_1C46A60E8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v16 = *a1;
  v9 = *(a1 + 2);
  v10 = (v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
  *v10 = 0x7865646E69;
  v10[1] = 0xE500000000000000;
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___calendar;
  v12 = sub_1C4EF9F88();
  v15 = *(a1 + 24);
  sub_1C440BAA8(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v16;
  *(v4 + 32) = v9;
  *(v4 + 40) = v15;
  sub_1C463F300(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config);
  v13 = v4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  return v4;
}

uint64_t sub_1C46A61D8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames);
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName + 8);
    *(inited + 32) = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
    *(inited + 40) = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448DE08(inited);
    v2 = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C46A628C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1C4EF9F88();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v14);
  v94 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  if ((sub_1C4D0E2C0() & 1) == 0)
  {
    v90 = v14;
    v91 = v8;
    v92 = v5;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v93 = v2;
    v27 = sub_1C4F00978();
    v28 = sub_1C442B738(v27, qword_1EDE2DDE0);

    v86 = v28;
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CC8();

    v31 = &dword_1EDE2D000;
    v87 = a1;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config + 8), &v100);
      *(v32 + 12) = 2080;
      v33 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect + 8);
      v95 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect);
      LOBYTE(v96) = v33;
      v34 = sub_1C4F01198();
      v36 = sub_1C441D828(v34, v35, &v100);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_1C43F8000, v29, v30, "SignalView %s: Updating %s time index feature", v32, 0x16u);
      swift_arrayDestroy();
      v31 = &dword_1EDE2D000;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v37 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect);
    v38 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_aspect + 8);
    sub_1C4EF9CC8();
    sub_1C46A60DC(v13);
    v85 = v37;
    v84 = v38;
    v39 = sub_1C45FEF50(v21, v13, v37, v38);
    (*(v91 + 8))(v13, v92);
    v94[1](v21, v90);
    v94 = [objc_opt_self() featureValueWithInt64_];
    v40 = v3[4];
    v91 = v3[5];
    v92 = v40;
    v41 = v3[6];
    v42 = (v3 + *(v31 + 128));
    v43 = *v42;
    v44 = v42[1];
    v46 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName);
    v45 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName + 8);
    v47 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v83 = v43;
    v82 = v44;
    v88 = v46;
    v89 = v45;
    v48 = sub_1C4673B1C(v43, v44, v46, v45, 0, 0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v49 = [v48 viewName];
    v50 = sub_1C4F01138();
    v52 = v51;

    v53 = [v48 featureName];
    v54 = sub_1C4F01138();
    v56 = v55;

    v57 = sub_1C47DC860(v48);
    v59 = v58;
    v90 = &v82;
    v60 = *(v41 + 16);
    *(&v82 - 10) = MEMORY[0x1EEE9AC00](v57);
    *(&v82 - 9) = v59;
    *(&v82 - 8) = v50;
    *(&v82 - 7) = v52;
    *(&v82 - 6) = v54;
    *(&v82 - 5) = v56;
    v61 = v91;
    *(&v82 - 4) = v92;
    *(&v82 - 3) = v61;
    *(&v82 - 2) = v41;
    v62 = sub_1C49A52E4(sub_1C46A7820, (&v82 - 12));

    if (*(v62 + 16))
    {
      v63 = *(v62 + 40);

      sub_1C4577DBC();
      v64 = v63;
      v65 = v94;
      v66 = v94;
      v67 = sub_1C4F01EE8();

      v68 = v93;
      if (v67)
      {

        v69 = sub_1C4F00968();
        v70 = sub_1C4F01CC8();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          *v71 = 136315394;
          *(v71 + 4) = sub_1C441D828(v83, v82, &v100);
          *(v71 + 12) = 2080;
          v95 = v85;
          LOBYTE(v96) = v84;
          v72 = sub_1C4F01198();
          v74 = sub_1C441D828(v72, v73, &v100);

          *(v71 + 14) = v74;
          _os_log_impl(&dword_1C43F8000, v69, v70, "SignalView %s: Skipping update for %s time index feature since the value hasn't changed", v71, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C4D0E51C();
LABEL_20:

        return;
      }
    }

    else
    {

      v64 = 0;
      v68 = v93;
      v65 = v94;
    }

    v75 = v3[2];
    v76 = v3[3];
    v77 = v3[4];
    v78 = v3[5];
    v79 = v3[6];
    v95 = v75;
    v96 = v76;
    v97 = v77;
    v98 = v78;
    v99 = v79;
    sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = v88;
    *(inited + 40) = v89;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = v65;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v81 = v65;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C47D32C8();
    if (v68)
    {

      swift_setDeallocating();
      sub_1C49E1668();

      return;
    }

    swift_setDeallocating();
    sub_1C49E1668();
    sub_1C4D0E5C0();

    goto LABEL_20;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2DDE0);

  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v95 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config + 8), &v95);
    _os_log_impl(&dword_1C43F8000, v23, v24, "SignalView %s: performUpdate: clearing", v25, 0xCu);
    sub_1C440962C(v26);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  sub_1C463E224();
  sub_1C4D0E478();
}

void *sub_1C46A6B04()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView_featureName + 8);

  sub_1C4607CD4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CurrentTimeSignalView____lazy_storage___featureNames);

  return v0;
}

void sub_1C46A6BDC()
{
  v0 = _s10ViewConfigVMa(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C4630784();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C46A6CCC(uint64_t a1)
{
  sub_1C46A628C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C46A6D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1C4607C70(v2 + v12, v11, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v13 = sub_1C4EF9F88();
  if (sub_1C44157D4(v11, 1, v13) == 1)
  {
    sub_1C4607CD4(v11, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v14 = objc_autoreleasePoolPush();
    sub_1C4EF9F58();
    objc_autoreleasePoolPop(v14);
    sub_1C440A6B8(v13);
    (*(v15 + 16))(v9, a2, v13);
    sub_1C440BAA8(v9, 0, 1, v13);
    swift_beginAccess();
    sub_1C4630E08(v9, v2 + v12);
    return swift_endAccess();
  }

  else
  {
    sub_1C440A6B8(v13);
    return (*(v17 + 32))(a2, v11, v13);
  }
}

uint64_t sub_1C46A6F68(__int128 *a1, char a2, uint64_t a3, char a4, char a5)
{
  v16 = *a1;
  v11 = *(a1 + 2);
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore22CurrentTimeContextView____lazy_storage___calendar;
  v13 = sub_1C4EF9F88();
  v15 = *(a1 + 24);
  sub_1C440BAA8(v5 + v12, 1, 1, v13);
  *(v5 + 16) = v16;
  *(v5 + 32) = v11;
  *(v5 + 40) = v15;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4 & 1;
  *(v5 + 120) = a5;
  return v5;
}

id *sub_1C46A7024()
{
  v1 = *(v0 + 40);
  v32 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = sub_1C4CB06C4(*(v0 + 56));
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  v7 = sub_1C4673B1C(v3, v5, 0x7865646E69, 0xE500000000000000, 0, 0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v8 = [v7 viewName];
  v9 = sub_1C4F01138();
  v11 = v10;

  v12 = [v7 featureName];
  v13 = sub_1C4F01138();
  v15 = v14;

  v16 = sub_1C47DC860(v7);
  v17 = *(v2 + 16);
  v23 = v16;
  v24 = v18;
  v25 = v9;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  v29 = v32;
  v30 = v1;
  v31 = v2;
  v19 = sub_1C49A52E4(sub_1C46A7678, v22);

  if (v19[2])
  {
    v20 = v19[5];

    v19 = [v20 int64Value];
  }

  else
  {

    sub_1C46A7690();
    swift_allocError();
    swift_willThrow();
  }

  return v19;
}

void sub_1C46A7214()
{
  v2 = sub_1C4EF9F88();
  v3 = sub_1C43FCDF8(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v31 = *(v0 + 64);
  v30 = *(v0 + 72);
  v21 = sub_1C46A7024();
  if (!v1)
  {
    v22 = v21;
    v28 = v13;
    v29 = v10;
    sub_1C4EF9CC8();
    sub_1C46A6D80(v9);
    sub_1C45FF178(v22, v18, v31, v30, v20);
    v23 = sub_1C43FFFF8();
    v24(v23);
    (*(v28 + 8))(v18, v29);
    v32 = 0;
    v33 = 256;
    v25 = type metadata accessor for BehaviorContext();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1C45D689C();
  }
}

void *sub_1C46A7438()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C4607CD4((v0 + 10), &qword_1EC0BAE68, &qword_1C4F17748);
  sub_1C4607CD4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22CurrentTimeContextView____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  return v0;
}

uint64_t sub_1C46A74CC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1C46A7550()
{
  sub_1C4630784();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C46A7690()
{
  result = qword_1EC0BB000;
  if (!qword_1EC0BB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentTimeContextView.CurrentTimeContextViewError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C46A77CC()
{
  result = qword_1EC0BB008;
  if (!qword_1EC0BB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB008);
  }

  return result;
}

uint64_t sub_1C46A7838(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46A7878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46A78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  v60 = a3;
  v67 = a2;
  v73 = a1;
  v63 = sub_1C4EFBCC8();
  v13 = sub_1C43FCDF8(v63);
  v62 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v61 = v17;
  v72 = sub_1C4EFB078();
  v18 = sub_1C43FCDF8(v72);
  v64 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v71 = v22;
  v23 = sub_1C4EFB768();
  v68 = sub_1C43FCDF8(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v80 = v8;
  if (a5)
  {
    *&v77 = a4;
    *(&v77 + 1) = a5;
    v75 = 0x454C42415424;
    v76 = 0xE600000000000000;
    v74 = *(v8 + 8);
    sub_1C4415EA8();
    sub_1C43FD438();
    a5 = v31;
    if (!a7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a7)
  {
LABEL_3:
    *&v77 = a6;
    *(&v77 + 1) = a7;
    v75 = 0x454C42415424;
    v76 = 0xE600000000000000;
    v74 = *(v80 + 8);
    sub_1C4415EA8();
    sub_1C43FD438();
    a7 = v32;
  }

LABEL_4:
  if (a5)
  {
    sub_1C4EFB758();
    v33 = v70;
    sub_1C4EFBFF8();
    if (v33)
    {
      (*(v69 + 8))(v30, v68);
    }

    (*(v69 + 8))(v30, v68);
  }

  else
  {
    if (!v67)
    {

      v39 = *(v80 + 8);
      v38 = *(v80 + 16);
      sub_1C450B034();
      swift_allocError();
      *v40 = v39;
      *(v40 + 8) = v38;
      *(v40 + 16) = 0xD000000000000039;
      *(v40 + 24) = 0x80000001C4F91980;
      v41 = v78;
      *(v40 + 32) = v77;
      *(v40 + 48) = v41;
      *(v40 + 64) = 3;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v34 = *(v80 + 16);
    MEMORY[0x1EEE9AC00](*(v80 + 8));
    v66 = v35;
    v67 = v36;
    v37 = v70;
    result = sub_1C4EFBFD8();
    if (v37)
    {
    }
  }

  if (a7)
  {
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v43 = sub_1C43FEDD4();
    v44(v43);
  }

  v45 = *(v65 + 16);
  v70 = v64 + 8;
  for (i = (v65 + 48); v45; --v45)
  {
    v47 = *(i - 1);
    v48 = *i;
    v49 = *(i - 2);
    v51 = *(v80 + 8);
    v50 = *(v80 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB058();
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_1C4EFBFB8();

    sub_1C4423A0C(&v77, &qword_1EC0C5040, &qword_1C4F0F950);
    v52 = sub_1C440F4C0();
    result = v53(v52);
    i += 3;
  }

  v54 = v80;
  if (*(*(v80 + 48) + 16))
  {
    v55 = *(v80 + 56);
    v56 = *(v80 + 64);
    v57 = v61;
    sub_1C4EFBCB8();
    v58 = swift_allocObject();
    memcpy((v58 + 16), v54, 0x48uLL);
    *(v58 + 88) = v60;
    sub_1C46A9810(v54, &v77);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v59 = v63;
    sub_1C4EFBF98();
    (*(v62 + 8))(v57, v59);
  }

  return result;
}

void sub_1C46A7EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v4 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v27 - v6;
  v7 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ViewDatabaseArtifact.Property();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 24);
  v18 = *(v17 + 16);
  if (v18)
  {
    v30 = *(v13 + 20);
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    do
    {
      sub_1C443CCBC(v19, v16);
      v21 = *v16;
      v22 = *(v16 + 1);
      v23 = sub_1C4EFBE38();
      (*(*(v23 - 8) + 16))(v10, &v16[v30], v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v16);
      sub_1C440BAA8(v10, 0, 1, v23);
      sub_1C4EFB498();

      sub_1C4423A0C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  if (*(v29 + 16))
  {
    v24 = *MEMORY[0x1E69A00D0];
    v25 = sub_1C4EFBF38();
    v26 = v28;
    (*(*(v25 - 8) + 104))(v28, v24, v25);
    sub_1C440BAA8(v26, 0, 1, v25);
    sub_1C4EFB478();
    sub_1C4423A0C(v26, &unk_1EC0BCAB0, &unk_1C4F111A0);
  }
}

uint64_t sub_1C46A81D4(uint64_t *a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_1C456902C(&qword_1EC0BB048, &unk_1C4F1DC50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = *a1;
  v10 = a2[1];
  v11 = a2[2];
  sub_1C4EFB7C8();
  sub_1C4EFF9A8();
  sub_1C46A9848(&qword_1EDDFF9C0);
  sub_1C4EFB7B8();
  v12 = sub_1C4EFB928();
  sub_1C440BAA8(v8, 0, 1, v12);
  v27[3] = v9;
  sub_1C4EFB7F8();
  v13 = a2[3];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = a2[6];
    v16 = type metadata accessor for ViewDatabaseArtifact.Property();
    v18 = *(v16 - 8);
    v17 = v16 - 8;
    v19 = *(v18 + 72);
    v20 = (((*(v18 + 80) + 32) & ~*(v18 + 80)) + v13 + 8);
    do
    {
      v21 = *v20;
      v27[0] = *(v20 - 1);
      v27[1] = v21;
      MEMORY[0x1EEE9AC00](v17);
      *(&v25 - 2) = v27;
      v22 = sub_1C44CE068(sub_1C44CE790, (&v25 - 4), v15);
      sub_1C4EFB7D8();
      if (!v22)
      {
        sub_1C4EFB848();
      }

      v20 = (v20 + v19);
      --v14;
    }

    while (v14);
  }

  result = v26;
  if (v26)
  {
    if (*(v26 + 16))
    {
      v24 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459760C(v24);
      return sub_1C4EFB7E8();
    }
  }

  return result;
}

uint64_t sub_1C46A842C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46A8464()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46A8494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4F919E0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756C6F43737466 && a2 == 0xEA0000000000736ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E49786966657270 && a2 == 0xED00007365786564;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72436D6F74737563 && a2 == 0xEF4C515365746165;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E496D6F74737563 && a2 == 0xEE004C5153786564;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x73657865646E69 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C4F02938();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C46A878C(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6D756C6F43737466;
      break;
    case 5:
      v3 = 0x786966657270;
      goto LABEL_8;
    case 6:
      result = 0x72436D6F74737563;
      break;
    case 7:
      v3 = 0x6D6F74737563;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
      break;
    case 8:
      result = 0x73657865646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C46A88BC(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB028, &qword_1C4F1DB28);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46A9404();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v26) = 0;
  sub_1C4402E84();
  sub_1C4F02798();
  if (!v2)
  {
    v26 = v3[2];
    HIBYTE(v25) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443C998(&unk_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    v16 = v3[3];
    v17 = v3[4];
    LOBYTE(v26) = 2;
    sub_1C4402E84();
    sub_1C4F02798();
    v26 = v3[5];
    HIBYTE(v25) = 3;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443CF84(v18);
    sub_1C4416F90();
    sub_1C4F027E8();
    v26 = v3[6];
    HIBYTE(v25) = 4;
    sub_1C4416F90();
    sub_1C4F02778();
    v26 = v3[7];
    HIBYTE(v25) = 5;
    sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    sub_1C4402E98();
    sub_1C448E890(v19);
    sub_1C44069F0();
    sub_1C4F02778();
    v20 = v3[8];
    v21 = v3[9];
    LOBYTE(v26) = 6;
    sub_1C4402E84();
    sub_1C4F02738();
    v22 = v3[10];
    v23 = v3[11];
    LOBYTE(v26) = 7;
    sub_1C4402E84();
    sub_1C4F02738();
    v26 = v3[12];
    HIBYTE(v25) = 8;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D174(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C46A8BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB010, &unk_1C4F1DB10);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46A9404();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v33[0]) = 0;
  sub_1C440000C();
  v10 = sub_1C4F02678();
  v12 = v11;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C4410AE0(1);
  sub_1C443C998(&unk_1EDDFEA60);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F026C8();
  v31 = v33[0];
  LOBYTE(v33[0]) = 2;
  sub_1C440000C();
  v24 = sub_1C4F02678();
  v30 = v13;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4410AE0(3);
  sub_1C4416F78();
  sub_1C443CF84(v14);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F026C8();
  v29 = v33[0];
  sub_1C4410AE0(4);
  sub_1C4402EB0();
  sub_1C4F02658();
  v28 = v33[0];
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  sub_1C4410AE0(5);
  sub_1C4416F78();
  sub_1C448E890(v15);
  sub_1C4411A6C();
  sub_1C4402EB0();
  sub_1C4F02658();
  v27 = v33[0];
  sub_1C440000C();
  v23 = sub_1C4F02618();
  v26 = v16;
  LOBYTE(v33[0]) = 7;
  sub_1C440000C();
  v22 = sub_1C4F02618();
  v25 = v17;
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  v34 = 8;
  sub_1C443D174(&unk_1EDDFEA70);
  sub_1C4402EB0();
  sub_1C4F02658();
  v18 = sub_1C441936C();
  v19(v18);
  v21 = v35;
  __src[0] = v10;
  __src[1] = v12;
  __src[2] = v31;
  __src[3] = v24;
  __src[4] = v30;
  __src[5] = v29;
  __src[6] = v28;
  __src[7] = v27;
  __src[8] = v23;
  __src[9] = v26;
  __src[10] = v22;
  __src[11] = v25;
  __src[12] = v35;
  sub_1C46A94AC(__src, v33);
  sub_1C440962C(a1);
  v33[0] = v10;
  v33[1] = v12;
  v33[2] = v31;
  v33[3] = v24;
  v33[4] = v30;
  v33[5] = v29;
  v33[6] = v28;
  v33[7] = v27;
  v33[8] = v23;
  v33[9] = v26;
  v33[10] = v22;
  v33[11] = v25;
  v33[12] = v21;
  sub_1C46A94E4(v33);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_1C46A92D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46A8494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46A9300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46178F4();
  *a1 = result;
  return result;
}

uint64_t sub_1C46A9328(uint64_t a1)
{
  v2 = sub_1C46A9404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46A9364(uint64_t a1)
{
  v2 = sub_1C46A9404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C46A93A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C46A8BD8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

unint64_t sub_1C46A9404()
{
  result = qword_1EDDFAFD8;
  if (!qword_1EDDFAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFD8);
  }

  return result;
}

unint64_t sub_1C46A9458()
{
  result = qword_1EDDFF098[0];
  if (!qword_1EDDFF098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFF098);
  }

  return result;
}

unint64_t sub_1C46A9514()
{
  result = qword_1EC0BB038;
  if (!qword_1EC0BB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.SubgraphTripleColumn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomRowDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46A96D0()
{
  result = qword_1EC0BB040;
  if (!qword_1EC0BB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB040);
  }

  return result;
}

unint64_t sub_1C46A9728()
{
  result = qword_1EDDFD4F8;
  if (!qword_1EDDFD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4F8);
  }

  return result;
}

unint64_t sub_1C46A9780()
{
  result = qword_1EDDFD500;
  if (!qword_1EDDFD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD500);
  }

  return result;
}

unint64_t sub_1C46A9848(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1C46A98A0()
{
  v1 = sub_1C4EFB768();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v0)
  {
    (*(v4 + 8))(v8, v1);
    sub_1C46AA374(&v34);
  }

  else
  {
    v10 = v9;
    (*(v4 + 8))(v8, v1);
    sub_1C46AA374(&v34);
    v11 = sub_1C4428DA0(v10);
    if (v11)
    {
      v12 = v11;
      *&v34 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = 0;
        v14 = v34;
        v32 = v12;
        v33 = v10 & 0xC000000000000001;
        v31 = v10 & 0xFFFFFFFFFFFFFF8;
        while (!__OFADD__(v13, 1))
        {
          v39 = v13 + 1;
          if (v33)
          {
            MEMORY[0x1C6940F90](v13, v10);
          }

          else
          {
            if (v13 >= *(v31 + 16))
            {
              goto LABEL_18;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v10;
          sub_1C493DD18();
          v18 = v17;
          v20 = v19;

          *&v34 = v14;
          v21 = *(v14 + 16);
          if (v21 >= *(v14 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v14 = v34;
          }

          *(v14 + 16) = v21 + 1;
          v22 = v14 + 16 * v21;
          *(v22 + 32) = v18;
          *(v22 + 40) = v20;
          ++v13;
          v10 = v16;
          if (v39 == v32)
          {

            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
      }

      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
      sub_1C4499940(v14, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41);
    }
  }
}

uint64_t sub_1C46A9B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  sub_1C4EFBC58();
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1C4EFB758();
  v13 = v38;
  v14 = sub_1C4EFBBB8();
  if (v13)
  {
    (*(v6 + 8))(v12, v5);
    sub_1C46AA374(v36);
  }

  else
  {
    v16 = v14;
    v34 = v5;
    v35 = a3;
    v33 = *(v6 + 8);
    v33(v12, v5);
    sub_1C46AA374(v36);
    v17 = a2;
    v18 = a2 + 56;
    v32 = v10;
    v38 = v16;
    while (sub_1C4458EE8())
    {
      sub_1C493DD18();
      v20 = v19;
      v22 = v21;
      if (*(v17 + 16))
      {
        v23 = *(v17 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();
        v24 = sub_1C4F02B68();
        v25 = v17;
        v26 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v27 = v24 & v26;
          if (((*(v18 + (((v24 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v26)) & 1) == 0)
          {
            break;
          }

          v28 = (*(v25 + 48) + 16 * v27);
          if (*v28 != v20 || v28[1] != v22)
          {
            v30 = sub_1C4F02938();
            v24 = v27 + 1;
            v25 = v17;
            if ((v30 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_15;
        }
      }

      strcpy(v36, "DELETE FROM ");
      BYTE13(v36[0]) = 0;
      HIWORD(v36[0]) = -5120;
      MEMORY[0x1C6940010](v20, v22);
      v31 = v32;
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v33(v31, v34);

LABEL_15:
    }
  }
}

void sub_1C46A9F14(uint64_t a1)
{
  sub_1C46A98A0();
  if (!v2)
  {
    v5 = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44999E0(v5, a1);
    v7 = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C46A9B6C(v8, v7, v1);
  }
}

void sub_1C46AA300(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C493DD18();
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v6;
    sub_1C493DD18();
    a2[2] = v7;
    a2[3] = v8;
  }
}

uint64_t sub_1C46AA374(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BC770, &qword_1C4F10DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46AA3DC()
{
  result = qword_1EDDFCCE8;
  if (!qword_1EDDFCCE8)
  {
    sub_1C4572308(&qword_1EC0BB050, &qword_1C4F1DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCCE8);
  }

  return result;
}

void sub_1C46AA440()
{
  sub_1C43FE96C();
  v1 = v0;
  v34 = sub_1C4EFDAF8();
  v2 = sub_1C43FCDF8(v34);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = *(v1 + 16);
  if (v8)
  {
    v33 = v7;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C459DEB0();
    v11 = sub_1C486C288(v1);
    v12 = 0;
    v36 = v1 + 56;
    v30 = v1 + 64;
    v31 = v8;
    v13 = v1;
    v32 = v1;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v13 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v36 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v13 + 36) != v9)
        {
          goto LABEL_25;
        }

        v15 = v10;
        v35 = v9;
        v16 = (*(v13 + 48) + 16 * v11);
        v17 = *v16;
        v18 = v16[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFDAC8();
        v19 = *(v37 + 16);
        if (v19 >= *(v37 + 24) >> 1)
        {
          sub_1C459DEB0();
        }

        *(v37 + 16) = v19 + 1;
        sub_1C43FBF6C();
        (*(v21 + 32))(v37 + v20 + *(v21 + 72) * v19, v33);
        if (v15)
        {
          goto LABEL_29;
        }

        v13 = v32;
        v22 = 1 << *(v32 + 32);
        if (v11 >= v22)
        {
          goto LABEL_26;
        }

        v23 = *(v36 + 8 * v14);
        if ((v23 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v32 + 36) != v35)
        {
          goto LABEL_28;
        }

        v24 = v23 & (-2 << (v11 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v14 << 6;
          v26 = v14 + 1;
          v27 = (v30 + 8 * v14);
          while (v26 < (v22 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_1C45E8E98(v11);
              v22 = __clz(__rbit64(v28)) + v25;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v11);
        }

LABEL_19:
        if (++v12 == v31)
        {
          goto LABEL_22;
        }

        v10 = 0;
        v9 = *(v32 + 36);
        v11 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_1C43FBC80();
  }
}

void sub_1C46AA75C()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C4EFDAF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v62 = (v8 - v9);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v66 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v56 - v13;
  v14 = 0;
  v69 = MEMORY[0x1E69E7CC8];
  v70 = MEMORY[0x1E69E7CC8];
  v65 = v1;
  v16 = *(v1 + 56);
  v15 = v1 + 56;
  v17 = *(v15 - 24);
  sub_1C43FD030();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v63 = v5 + 16;
  v68 = v5 + 32;
  v59 = xmmword_1C4F0D130;
  v60 = v22;
  v61 = v15;
  v58 = v5;
  if ((v19 & v18) != 0)
  {
LABEL_6:
    while (1)
    {
      v24 = v64;
      v25 = *(v5 + 72);
      (*(v5 + 16))(v64, *(v65 + 48) + v25 * (__clz(__rbit64(v20)) | (v14 << 6)), v2);
      v67 = *(v5 + 32);
      v67(v66, v24, v2);
      v26 = sub_1C4EFDAD8();
      v28 = v27;
      v29 = v69;
      v30 = sub_1C445FAA8(v26, v27);
      v32 = v29;
      v33 = v30;
      v34 = v32[2];
      v35 = (v31 & 1) == 0;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v36 = v31;
      if (v32[3] < v34 + v35)
      {
        sub_1C4679AF4();
        v69 = v70;
        v37 = sub_1C445FAA8(v26, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_24;
        }

        v33 = v37;
      }

      v20 &= v20 - 1;
      if (v36)
      {

        v39 = v69[7];
        v67(v62, v66, v2);
        v40 = *(v39 + 8 * v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v39 + 8 * v33) = v40;
        v57 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C458B03C(0, *(v40 + 16) + 1, 1, v40);
          v40 = v54;
          *(v39 + 8 * v33) = v54;
        }

        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1C458B03C(v42 > 1, v43 + 1, 1, v40);
          v40 = v55;
          *(v57 + 8 * v33) = v55;
        }

        *(v40 + 16) = v43 + 1;
        v67(v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v43 * v25, v62, v2);
      }

      else
      {
        v44 = v5;
        v45 = v2;
        sub_1C456902C(&qword_1EC0B9108, &qword_1C4F1E1B0);
        v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = v59;
        v48 = v47 + v46;
        v2 = v45;
        v67(v48, v66, v45);
        v49 = v69;
        v69[(v33 >> 6) + 8] |= 1 << v33;
        v50 = (v49[6] + 16 * v33);
        *v50 = v26;
        v50[1] = v28;
        *(v49[7] + 8 * v33) = v47;
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_23;
        }

        v49[2] = v53;
        v5 = v58;
      }

      v22 = v60;
      v15 = v61;
      if (!v20)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        sub_1C43FBC80();
        return;
      }

      v20 = *(v15 + 8 * v23);
      ++v14;
      if (v20)
      {
        v14 = v23;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C46AAB48(uint64_t a1, double a2)
{
  v6 = sub_1C456902C(&qword_1EC0BB1D8, &qword_1C4F1E1A8);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v82 - v10;
  v99 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v12 = sub_1C43FBCE0(v99);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v98 = v15 - v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v82 - v18;
  v103 = sub_1C4EF9CD8();
  v19 = sub_1C43FCDF8(v103);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v28 = sub_1C43FCDF8(v27);
  v95 = v29;
  v96 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  v34 = v32 - v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = *(a1 + 16);
  if (!v37 || a2 <= 0.0)
  {
    sub_1C46B6904();
    sub_1C441C114();
    swift_allocError();
    swift_willThrow();
    return v3;
  }

  v87 = &v82 - v36;
  v88 = v11;
  v89 = v2;
  v38 = v37 - 1;
  if (v37 == 1)
  {
    v65 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v102 = MEMORY[0x1E69E7CC0];
    v47 = v103;
LABEL_12:
    sub_1C4EF9BE8();
    sub_1C441E2F4();
    sub_1C46B6958(v66, v67);
    result = sub_1C4F01088();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

    v68 = *(v21 + 32);
    v69 = v97;
    v68(v97, v26, v47);
    v103 = v68;
    v70 = v99;
    (*(v21 + 16))(v69 + *(v99 + 48), a1 + v65, v47);
    v71 = v98;
    sub_1C445FFA8(v69, v98, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v72 = *(v70 + 48);
    v73 = v87;
    v68(v87, v71, v47);
    v74 = *(v21 + 8);
    (v74)(v71 + v72, v47);
    sub_1C46B69A0(v69, v71, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v103(v73 + *(v96 + 36), v71 + *(v70 + 48), v47);
    v75 = sub_1C43FD388();
    v74(v75);
    v76 = v88;
    sub_1C46B69A0(v73, v88, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v3 = v102;
    v77 = *(v102 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v3;
    if (!isUniquelyReferenced_nonNull_native || v77 >= *(v3 + 24) >> 1)
    {
      sub_1C458B000();
      v3 = v79;
      v104 = v79;
    }

    v80 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
    sub_1C4C07838(v80, v81, 1, v76);
    return v3;
  }

  v84 = v26;
  v104 = MEMORY[0x1E69E7CC0];
  sub_1C459D2E8();
  v39 = v104;
  v40 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v86 = a1;
  v83 = v40;
  v41 = a1 + v40;
  v42 = *(v21 + 72);
  sub_1C441E2F4();
  v45 = sub_1C46B6958(v43, v44);
  v93 = (v21 + 16);
  v94 = v45;
  v85 = v21;
  v91 = (v21 + 8);
  v92 = (v21 + 32);
  v46 = v39;
  v47 = v103;
  v101 = v34;
  v90 = v42;
  v48 = v92;
  while (1)
  {
    result = sub_1C4F01088();
    if ((result & 1) == 0)
    {
      break;
    }

    v100 = v38;
    v50 = *v93;
    v102 = v46;
    v51 = v97;
    v52 = sub_1C43FE5F8();
    v50(v52);
    v53 = v99;
    (v50)(v51 + *(v99 + 48), v41 + v42, v47);
    v54 = v98;
    sub_1C445FFA8(v51, v98, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v55 = *(v53 + 48);
    v56 = *v48;
    (*v48)(v101, v54, v103);
    v57 = *v91;
    (*v91)(v54 + v55, v103);
    v58 = v51;
    v59 = v101;
    v46 = v102;
    sub_1C46B69A0(v58, v54, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v56(v59 + *(v96 + 36), v54 + *(v53 + 48), v103);
    v60 = v54;
    v47 = v103;
    v57(v60, v103);
    v104 = v46;
    v62 = *(v46 + 16);
    v61 = *(v46 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_1C43FCFE8(v61);
      sub_1C459D2E8();
      v46 = v104;
    }

    *(v46 + 16) = v62 + 1;
    sub_1C43FBF6C();
    sub_1C46B69A0(v59, v46 + v63 + *(v64 + 72) * v62, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v42 = v90;
    v41 += v90;
    v38 = v100 - 1;
    if (v100 == 1)
    {
      v102 = v46;
      v21 = v85;
      a1 = v86;
      v26 = v84;
      v65 = v83;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB1C8(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C46B69E8(*(v1 + 56) + 56 * v11, &__src[2]);
    __src[0] = v14;
    __src[1] = v13;
    memcpy(__dst, __src, 0x41uLL);
    sub_1C46B69E8(&__dst[16], v34);
    if (v35)
    {
      if (v35 == 1)
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46B6A20(v34);
      }

      else
      {
        sub_1C460986C(v34, v36);
        v15 = *&v36[24];
        v16 = v1;
        v17 = *&v36[40];
        v33 = sub_1C4409678(v36, *&v36[24]);
        *(&v38 + 1) = v15;
        v39 = v17;
        v1 = v16;
        v18 = sub_1C4422F90(&v37);
        (*(*(v15 - 8) + 16))(v18, v33, v15);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v36);
      }
    }

    else
    {
      sub_1C441D670(v34, &v37);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v6 &= v6 - 1;
    if (*(&v38 + 1))
    {
      sub_1C441D670(&v37, v40);
      memcpy(v36, __dst, sizeof(v36));
      sub_1C441D670(v40, &v37);
      v19 = *(v2 + 16);
      if (*(v2 + 24) <= v19)
      {
        sub_1C4679D0C(v19 + 1, 1);
        v2 = v43;
      }

      v21 = *v36;
      v20 = *&v36[8];
      v22 = *(v2 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v23 = v2 + 64;
      v24 = -1 << *(v2 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v2 + 64 + 8 * (v25 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        while (++v26 != v29 || (v28 & 1) == 0)
        {
          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *(v23 + 8 * v26);
          if (v31 != -1)
          {
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v2 + 64 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (*(v2 + 48) + 16 * v27);
      *v32 = v21;
      v32[1] = v20;
      sub_1C441D670(&v37, *(v2 + 56) + 40 * v27);
      ++*(v2 + 16);
      result = sub_1C46B6A20(&v36[16]);
    }

    else
    {
      sub_1C4420C3C(__dst, &qword_1EC0BB1E8, &qword_1C4F1E1B8);
      result = sub_1C4420C3C(&v37, &qword_1EC0BB1F8, &qword_1C4F1E1C8);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB538(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C46B69E8(*(a1 + 56) + 56 * v11, &__src[2]);
    __src[0] = v14;
    __src[1] = v13;
    memcpy(__dst, __src, 0x41uLL);
    sub_1C46B69E8(&__dst[16], v33);
    if (v34)
    {
      if (v34 == 1)
      {
        sub_1C441D670(v33, v36);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        sub_1C460986C(v33, v35);
        v32 = *&v35[24];
        v15 = *&v35[24];
        v16 = sub_1C4409678(v35, *&v35[24]);
        *(&v36[1] + 8) = v32;
        v17 = sub_1C4422F90(v36);
        (*(*(v15 - 8) + 16))(v17, v16, v15);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440962C(v35);
      }
    }

    else
    {
      memset(v36, 0, 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46B6A20(v33);
    }

    v6 &= v6 - 1;
    if (*(&v36[1] + 1))
    {
      sub_1C441D670(v36, v37);
      memcpy(v35, __dst, sizeof(v35));
      sub_1C441D670(v37, v36);
      v18 = *(v2 + 16);
      if (*(v2 + 24) <= v18)
      {
        sub_1C4679B08(v18 + 1, 1);
        v2 = v40;
      }

      v20 = *v35;
      v19 = *&v35[8];
      v21 = *(v2 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v22 = v2 + 64;
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v2 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (*(v2 + 48) + 16 * v26);
      *v31 = v20;
      v31[1] = v19;
      sub_1C441D670(v36, *(v2 + 56) + 40 * v26);
      ++*(v2 + 16);
      result = sub_1C46B6A20(&v35[16]);
    }

    else
    {
      sub_1C4420C3C(__dst, &qword_1EC0BB1E8, &qword_1C4F1E1B8);
      result = sub_1C4420C3C(v36, &qword_1EC0BB1F0, &qword_1C4F1E1C0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C46AB8A4()
{
  v1 = v0;
  v100 = type metadata accessor for FeatureFetcher(0);
  v2 = sub_1C43FBCE0(v100);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v97 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v99 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  if (qword_1EDDFF2A0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v106 = v1;
    v13 = sub_1C44E7FAC();

    ViewGeneration.ViewClients.anyFeatureViewClient()(&v109);
    v93 = v13;

    if (!v110)
    {
      v77 = v106;
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v78 = sub_1C4F00978();
      sub_1C442B738(v78, qword_1EDDFECB8);
      sub_1C440A8C4();
      v79 = sub_1C4404C28();
      sub_1C46B6B80(v79, v80, v81);
      v82 = sub_1C4F00968();
      v83 = sub_1C4F01CD8();
      if (os_log_type_enabled(v82, v83))
      {
        sub_1C43FD084();
        v109 = sub_1C44117BC();
        *v77 = 136315138;
        v84 = (v7 + *(v100 + 24));
        v85 = *v84;
        v86 = v84[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442C6E8();
        sub_1C46B5C54(v7, v87);
        v88 = sub_1C441D828(v85, v86, &v109);

        *(v77 + 4) = v88;
        _os_log_impl(&dword_1C43F8000, v82, v83, "%s:there was no Feature View to get the artifact path", v77, 0xCu);
        sub_1C44340A8();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        sub_1C442B9BC();
      }

      else
      {

        sub_1C442B9BC();

        sub_1C442C6E8();
        sub_1C46B5C54(v7, v76);
      }

      return 0;
    }

    v92 = v110;
    v91 = v109;
    v14 = v112;
    v105 = v111;
    v15 = v113;
    v16 = *(v106 + *(v100 + 20));
    v102 = sub_1C4428DA0();
    if (!v102)
    {
      break;
    }

    v101 = v16 & 0xC000000000000001;
    v95 = v16 & 0xFFFFFFFFFFFFFF8;
    v98 = v16;
    v94 = v16 + 32;
    v104 = v15;

    v103 = v14;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    *&v17 = 136315394;
    v96 = v17;
    while (1)
    {
      if (v101)
      {
        v18 = MEMORY[0x1C6940F90](v7, v98);
      }

      else
      {
        if (v7 >= *(v95 + 16))
        {
          goto LABEL_39;
        }

        v18 = *(v94 + 8 * v7);
      }

      v19 = v18;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v107 = v7;
      v21 = [v18 viewName];
      v22 = sub_1C4F01138();
      v24 = v23;

      v25 = [v19 featureName];
      v26 = sub_1C4F01138();
      v28 = v27;

      v29 = sub_1C47DC860(v19);
      v31 = v30;
      v32 = *(v104 + 16);
      *(&v90 - 10) = MEMORY[0x1EEE9AC00](v29);
      *(&v90 - 9) = v31;
      *(&v90 - 8) = v22;
      *(&v90 - 7) = v24;
      *(&v90 - 6) = v26;
      *(&v90 - 5) = v28;
      v33 = v103;
      *(&v90 - 4) = v105;
      *(&v90 - 3) = v33;
      *(&v90 - 2) = v34;
      v35 = sub_1C49A52E4(sub_1C46A76E4, (&v90 - 12));

      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = 32;
        do
        {
          v108 = *(v35 + v37);
          v38 = v108;
          v39 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = *(v1 + 16);
            sub_1C458B740();
            v1 = v43;
          }

          v41 = *(v1 + 16);
          v40 = *(v1 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1C43FCFE8(v40);
            sub_1C458B740();
            v1 = v44;
          }

          *(v1 + 16) = v41 + 1;
          *(v1 + 16 * v41 + 32) = v108;
          v37 += 32;
          --v36;
        }

        while (v36);

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v45 = sub_1C4F00978();
        sub_1C442B738(v45, qword_1EDDFECB8);
        sub_1C440A8C4();
        v46 = v99;
        sub_1C46B6B80(v106, v99, v47);
        v48 = v19;
        v49 = sub_1C4F00968();
        v50 = sub_1C4F01CB8();

        if (!os_log_type_enabled(v49, v50))
        {
          goto LABEL_26;
        }

        sub_1C441024C();
        v51 = swift_slowAlloc();
        v52 = sub_1C43FC11C();
        sub_1C440CB70(v52);
        sub_1C442C6E8();
        sub_1C46B5C54(v46, v53);
        v54 = sub_1C441D828(0, v41, &v109);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2080;
        v55 = [v48 string];
        sub_1C4F01138();

        v56 = sub_1C4404044();
        v59 = sub_1C441D828(v56, v57, v58);

        *(v51 + 14) = v59;
        v60 = v50;
        v61 = v49;
        v62 = "%s: collected feature %s";
      }

      else
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v63 = sub_1C4F00978();
        sub_1C442B738(v63, qword_1EDDFECB8);
        sub_1C440A8C4();
        v46 = v97;
        sub_1C46B6B80(v106, v97, v64);
        v48 = v19;
        v49 = sub_1C4F00968();
        v65 = sub_1C4F01CD8();

        if (!os_log_type_enabled(v49, v65))
        {
LABEL_26:

          sub_1C442C6E8();
          sub_1C46B5C54(v46, v75);
          goto LABEL_27;
        }

        sub_1C441024C();
        v51 = swift_slowAlloc();
        v66 = sub_1C43FC11C();
        sub_1C440CB70(v66);
        sub_1C442C6E8();
        sub_1C46B5C54(v46, v67);
        v68 = sub_1C441D828(0, v31, &v109);

        *(v51 + 4) = v68;
        *(v51 + 12) = 2080;
        v69 = [v48 featureName];
        sub_1C4F01138();

        v70 = sub_1C4404044();
        v73 = sub_1C441D828(v70, v71, v72);

        *(v51 + 14) = v73;
        v60 = v65;
        v61 = v49;
        v62 = "%s: cannot find feature %s";
      }

      _os_log_impl(&dword_1C43F8000, v61, v60, v62, v51, 0x16u);
      swift_arrayDestroy();
      v74 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v74);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

LABEL_27:
      v7 = v107;
      if (v107 == v102)
      {

        sub_1C442B9BC();

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  sub_1C442B9BC();

  v1 = MEMORY[0x1E69E7CC0];
LABEL_35:
  sub_1C46B6BD8(v91, v92);
  return v1;
}

uint64_t sub_1C46AC254()
{
  sub_1C46B5C54(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_config, type metadata accessor for Configuration);
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_name);
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_features);

  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_taskName);
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_subtaskName);
  sub_1C440DE48(OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_sessionID);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_valueProcessingConfig);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_valueProcessingConfig + 8);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore19SinglePETSampleTask_valueProcessingConfig + 16);

  sub_1C46B6850(v3, v4);
  return v0;
}

uint64_t sub_1C46AC344()
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

void sub_1C46AC414(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v65 = a3;
  v66 = a2;
  v62 = a4;
  v80 = sub_1C4EFDAF8();
  v8 = sub_1C43FCDF8(v80);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v79 = v14 - v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v64 = a1;
  sub_1C46AA75C();
  v16 = v15;
  v63 = v5;
  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  v17 = sub_1C4F02538();
  v18 = 0;
  v19 = *(v16 + 64);
  v67 = v16 + 64;
  v20 = *(v16 + 32);
  sub_1C43FD030();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v70 = v10;
  v71 = v26;
  v78 = (v10 + 8);
  v72 = v26 + 64;
  v68 = v25;
  v69 = v16;
  if ((v22 & v21) != 0)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_8:
      v10 = v27 | (v18 << 6);
      v30 = (*(v16 + 48) + 16 * v10);
      v31 = v30[1];
      v77 = *v30;
      v32 = *(*(v16 + 56) + 8 * v10);
      v33 = *(v32 + 16);
      if (v33)
      {
        v75 = v10;
        v76 = v23;
        v82 = MEMORY[0x1E69E7CC0];
        v74 = v30[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44CD9C0();
        v34 = v82;
        sub_1C43FBF6C();
        v73 = v32;
        v36 = v32 + v35;
        v81 = *(v37 + 72);
        v38 = *(v37 + 16);
        do
        {
          v38(v79, v36, v80);
          v39 = sub_1C4EFDAE8();
          v41 = v40;
          (*v78)(v79, v80);
          v50 = *(v82 + 16);
          v49 = *(v82 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1C43FCFE8(v49);
            sub_1C44CD9C0();
          }

          *(v82 + 16) = v50 + 1;
          v51 = v82 + 16 * v50;
          *(v51 + 32) = v39;
          *(v51 + 40) = v41;
          v36 += v81;
          --v33;
        }

        while (v33);
        v17 = v71;
        v25 = v68;
        v16 = v69;
        v23 = v76;
        v52 = v74;
        v10 = v75;
      }

      else
      {
        v52 = v30[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v34 = MEMORY[0x1E69E7CC0];
      }

      sub_1C4499940(v34, v42, v43, v44, v45, v46, v47, v48, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
      v54 = v53;

      *(v72 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v55 = (*(v17 + 48) + 16 * v10);
      *v55 = v77;
      v55[1] = v52;
      *(*(v17 + 56) + 8 * v10) = v54;
      v56 = *(v17 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        break;
      }

      *(v17 + 16) = v58;
      if (!v23)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_3:
    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v18 >= v25)
      {
        break;
      }

      v29 = *(v67 + 8 * v18);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_8;
      }
    }

    v59 = sub_1C46AB1C8(v65);
    sub_1C46AB538(v65);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C46B5D48(v17, v59);
    sub_1C4416A80();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v60 = sub_1C46B5D48(v17, v18);

    sub_1C46B4598(v64, v65);
    v61 = sub_1C46AAB48(v66, a5);
    if (v63)
    {
    }

    else
    {
      *v62 = v59;
      v62[1] = v18;
      v62[2] = v10;
      v62[3] = v60;
      v62[4] = v61;
    }
  }
}

__n128 sub_1C46AC81C@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[2].n128_u64[0];
  v10 = *v1;
  v11 = v1[1];
  sub_1C46C9AB4(v1->n128_u64[0], sub_1C46B5C4C);
  v5 = v4;
  v6 = v1->n128_u64[1];
  v14 = v1[1].n128_u64[0];
  v15 = v6;
  v7 = v1[1].n128_u64[1];
  v8 = v1[2].n128_u64[0];
  v13 = v7;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C445FFA8(&v15, v12, &qword_1EC0BB180, &unk_1C4F1E130);
  sub_1C445FFA8(&v14, v12, &qword_1EC0BB188, &unk_1C4F32380);
  sub_1C445FFA8(&v13, v12, &qword_1EC0BB188, &unk_1C4F32380);
  result = v11;
  *a1 = v10;
  a1[1] = v11;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v5;
  a1[3].n128_u64[0] = v8;
  a1[3].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1C46AC918()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);
  v7 = *(v0 + 104);

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);

  sub_1C46B6850(v9, v10);
  v11 = *(v0 + 136);

  return v0;
}

uint64_t sub_1C46AC99C()
{
  sub_1C46AC918();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46AC9F4()
{
  result = type metadata accessor for BehaviorDigestTaskIdentifier(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1C46ACB44()
{
  v1 = type metadata accessor for BehaviorDigestTaskIdentifier(0);
  v2 = sub_1C43FBCE0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C46B6B80(v0 + qword_1EC151B98, v6 - v5, type metadata accessor for BehaviorDigestTaskIdentifier);
  sub_1C4404C28();
  return sub_1C4F01198();
}

uint64_t sub_1C46ACC0C(uint64_t a1)
{
  sub_1C43FCE50(a1);
  (*(v1 + 16))(v8);
  v2 = 40;
  if (v9 == 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 48;
    v3 = 1;
  }

  if (v9)
  {
    v4 = v2;
  }

  else
  {
    v4 = 40;
  }

  if (v9)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v8 + v4);

  sub_1C440962C(v8);
  return v5;
}

uint64_t sub_1C46ACCA0(uint64_t a1)
{
  sub_1C43FBCE0(a1);
  (*(v2 + 16))(v6);
  v3 = *(a1 + 16);
  if (v7)
  {
    if (v7 != 1)
    {
      type metadata accessor for FeatureValue(255);
      sub_1C4F02418();
      sub_1C4572308(&qword_1EC0BB200, &qword_1C4F1E1D0);
      sub_1C4F02418();
      swift_getTupleTypeMetadata2();
      goto LABEL_7;
    }

    sub_1C4572308(&qword_1EC0BB200, &qword_1C4F1E1D0);
  }

  else
  {
    type metadata accessor for FeatureValue(255);
  }

  sub_1C4F02418();
LABEL_7:
  sub_1C448DFC8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C448DFC8();
  sub_1C4F00F58();
  swift_getWitnessTable();
  sub_1C448DFC8();
  v4 = sub_1C4F01B48();
  sub_1C440962C(v6);
  return v4;
}

uint64_t sub_1C46ACE64(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    sub_1C46ACEC8(v1);
    v4 = v5;
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v4;
}

void sub_1C46ACEC8(void *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  type metadata accessor for HistoricalSampleTask.SignalSpec();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00F78();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4F00F98();
  sub_1C4416A80();

  v5 = v2 + 64;
  v4 = *(v2 + 64);
  v6 = *(v2 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_21;
          }

          v9 = *(v5 + 8 * v14);
          ++v12;
          if (v9)
          {
            v12 = v14;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1C445C148();
      v16 = *v15;
      v17 = v15[1];
      v20 = *(v19 + 8 * v18);
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46AA440();
      v22 = v21;

      v23 = *(v22 + 16);
      v24 = *(v13 + 16);
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v25 > *(v13 + 24) >> 1)
      {
        if (v24 <= v25)
        {
          v27 = v24 + v23;
        }

        else
        {
          v27 = v24;
        }

        sub_1C458B03C(isUniquelyReferenced_nonNull_native, v27, 1, v13);
        v13 = v28;
      }

      v9 &= v9 - 1;
      if (!*(v22 + 16))
      {
        break;
      }

      v29 = (*(v13 + 24) >> 1) - *(v13 + 16);
      v30 = *(sub_1C4EFDAF8() - 8);
      if (v29 < v23)
      {
        goto LABEL_24;
      }

      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v33 = *(v13 + 16);
        v34 = __OFADD__(v33, v23);
        v35 = v33 + v23;
        if (v34)
        {
          goto LABEL_25;
        }

        *(v13 + 16) = v35;
      }
    }
  }

  while (!v23);
  __break(1u);
LABEL_21:

  sub_1C4597694();
}

uint64_t sub_1C46AD198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = type metadata accessor for HistoricalSampleTask.SignalSpec();
  sub_1C43FCF8C(v8);
  v10 = v9;
  (*(v9 + 16))(&v18, a2, v8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1C43FCF8C(TupleTypeMetadata2);
  v13 = v12;
  (*(v12 + 16))(&v15, v17, TupleTypeMetadata2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  LOBYTE(a2) = a5(v8);
  (*(v13 + 8))(v17, TupleTypeMetadata2);
  (*(v10 + 8))(&v16, v8);
  return a2 & 1;
}

BOOL sub_1C46AD318(uint64_t a1)
{
  sub_1C43FCE50(a1);
  (*(v1 + 16))(v7);
  v2 = 40;
  if (v8 != 1)
  {
    v2 = 48;
  }

  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = 40;
  }

  v4 = v8 != 0;
  v5 = *(v7 + v3);

  sub_1C440962C(v7);
  return v4;
}

uint64_t sub_1C46AD3AC()
{
  sub_1C43FBCD4();
  v1[46] = v2;
  v1[47] = v0;
  v3 = *v0;
  v1[48] = *v0;
  v4 = sub_1C4EF9BD8();
  v1[49] = v4;
  sub_1C43FCF7C(v4);
  v1[50] = v5;
  v7 = *(v6 + 64);
  v1[51] = sub_1C43FBE7C();
  v8 = *(v3 + 80);
  v1[52] = v8;
  v9 = *(v8 - 8);
  v1[53] = v9;
  v10 = *(v9 + 64);
  v1[54] = sub_1C43FBE7C();
  v11 = sub_1C456902C(&qword_1EC0BB1B8, &qword_1C4F1E180);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  v1[55] = sub_1C43FBE7C();
  v14 = sub_1C456902C(&qword_1EC0BB1C0, &qword_1C4F1E188);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v1[56] = sub_1C43FBE7C();
  v17 = sub_1C456902C(&qword_1EC0BB1C8, &qword_1C4F1E190);
  v1[57] = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  v1[58] = sub_1C43FBE7C();
  v20 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  v1[59] = v20;
  sub_1C43FCF7C(v20);
  v1[60] = v21;
  v23 = *(v22 + 64);
  v1[61] = sub_1C43FE604();
  v1[62] = swift_task_alloc();
  v24 = sub_1C4EF9CD8();
  v1[63] = v24;
  sub_1C43FCF7C(v24);
  v1[64] = v25;
  v27 = *(v26 + 64);
  v1[65] = sub_1C43FE604();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v28 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

void sub_1C46AD62C()
{
  v1 = (*(v0 + 376) + qword_1EC0BB058);
  swift_beginAccess();
  if (!*v1)
  {
    v78 = v1;
    v9 = *(v0 + 416);
    v10 = *(v0 + 384);
    v11 = *(*(v0 + 376) + 16);
    v12 = swift_task_alloc();
    *(v12 + 16) = v9;
    *(v12 + 24) = *(v10 + 88);
    type metadata accessor for HistoricalSampleTask.SignalSpec();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v13 = 0;
    v14 = sub_1C4F00F98();

    v16 = v14 + 64;
    v15 = *(v14 + 64);
    v17 = *(v14 + 32);
    sub_1C4401700();
    v20 = v19 & v18;
    sub_1C442A8F4();
    v22 = v21 >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        if (!v20)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v22)
            {
              goto LABEL_27;
            }

            v20 = *(v16 + 8 * v25);
            ++v23;
            if (v20)
            {
              v83 = v24;
              v23 = v25;
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v83 = v24;
LABEL_13:
        sub_1C445C148();
        v27 = *v26;
        v28 = v26[1];
        v31 = *(v30 + 8 * v29);
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46AA440();
        v33 = v32;
        v79 = v13;

        v34 = *(v33 + 16);
        v24 = v83;
        v35 = *(v83 + 16);
        v36 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          goto LABEL_36;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v36 > *(v83 + 24) >> 1)
        {
          if (v35 <= v36)
          {
            v38 = v35 + v34;
          }

          else
          {
            v38 = v35;
          }

          sub_1C458B03C(isUniquelyReferenced_nonNull_native, v38, 1, v83);
          v24 = v39;
        }

        v20 &= v20 - 1;
        if (!*(v33 + 16))
        {
          break;
        }

        v40 = (*(v24 + 24) >> 1) - *(v24 + 16);
        v41 = *(sub_1C4EFDAF8() - 8);
        if (v40 < v34)
        {
          goto LABEL_37;
        }

        v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v43 = *(v41 + 72);
        swift_arrayInitWithCopy();

        v13 = v79;
        if (v34)
        {
          v44 = *(v24 + 16);
          v45 = __OFADD__(v44, v34);
          v46 = v44 + v34;
          if (v45)
          {
            goto LABEL_38;
          }

          *(v24 + 16) = v46;
        }
      }

      v13 = v79;
    }

    while (!v34);
    __break(1u);
LABEL_27:
    v47 = *(v0 + 376);

    sub_1C4597694();
    v48 = *(v47 + 24);
    v49 = *(v47 + 32);
    v50 = *(v49 + 16);
    if (v50)
    {
      v77 = *(v47 + 24);
      v51 = *(v0 + 512);
      v52 = *(v0 + 480);
      v81 = *(v0 + 472);
      v86 = MEMORY[0x1E69E7CC0];
      sub_1C459D270();
      v53 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v80 = *(v52 + 72);
      v54 = (v51 + 32);
      do
      {
        v84 = v50;
        v55 = *(v0 + 536);
        v56 = *(v0 + 496);
        v57 = *(v0 + 504);
        v58 = *(v0 + 488);
        sub_1C445FFA8(v53, v56, &qword_1EC0B89E8, &unk_1C4F3E630);
        sub_1C46B69A0(v56, v58, &qword_1EC0B89E8, &unk_1C4F3E630);
        v59 = *v54;
        (*v54)(v55, v58 + *(v81 + 48), v57);
        v61 = *(v86 + 16);
        v60 = *(v86 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1C43FCFE8(v60);
          sub_1C459D270();
        }

        v62 = *(v0 + 536);
        v63 = *(v0 + 504);
        *(v86 + 16) = v61 + 1;
        sub_1C43FBF6C();
        v59(v86 + v64 + *(v65 + 72) * v61);
        v53 += v80;
        v50 = v84 - 1;
      }

      while (v84 != 1);
    }

    v66 = sub_1C4404044();
    sub_1C46AC414(v66, v67, v68, v69, v70);
    v71 = *(v0 + 240);
    v82 = *(v0 + 224);
    v85 = *(v0 + 208);

    v72 = *(v0 + 208);
    *(swift_task_alloc() + 16) = v0 + 208;
    sub_1C46C9AB4(v72, sub_1C46B6F4C);
    sub_1C4406834();

    v73 = *(v0 + 240);
    v74 = *(v78 + 2);
    v75 = *(v78 + 3);
    v76 = *(v78 + 1);
    *(v0 + 16) = *v78;
    *(v0 + 32) = v76;
    *(v0 + 48) = v74;
    *(v0 + 64) = v75;
    *v78 = v85;
    *(v78 + 1) = v82;
    v78[4] = v71;
    v78[5] = v72;
    v78[6] = v73;
    v78[7] = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v0 + 16, &qword_1EC0BB1D0, &unk_1C4F1E198);
  }

  v2 = *(v0 + 376);
  v3 = sub_1C46ACAE4();
  *(v0 + 544) = v3;
  if (*v4)
  {
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 552) = v5;
    *v5 = v6;
    v5[1] = sub_1C46ADCC0;
    v7 = *(v0 + 448);
    sub_1C4424C8C();

    sub_1C46AEBAC();
  }

  else
  {
    (v3)(v0 + 288, 0);
    sub_1C4F024A8();
    sub_1C4424C8C();
  }
}

uint64_t sub_1C46ADCC0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 552);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 560) = v0;

  if (v0)
  {
    v9 = sub_1C46AEAB4;
  }

  else
  {
    (*(v3 + 544))();
    v9 = sub_1C46ADDD8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C46ADDD8()
{
  v1 = v0[56];
  v2 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
  v3 = sub_1C440EF74();
  if (sub_1C44157D4(v3, v4, v2) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0BB1C0, &qword_1C4F1E188);
    sub_1C44607F0();
LABEL_7:
    sub_1C4F024A8();
    sub_1C4401D60();
    return;
  }

  v111 = v0[66];
  v5 = v0[63];
  v7 = v0[57];
  v6 = v0[58];
  v113 = v0[46];
  v8 = *(v1 + *(v2 + 48));
  v9 = *(v1 + *(v2 + 64));
  v10 = *(v7 + 48);
  v11 = *(v7 + 64);
  v110 = v0;
  v12 = *(v0[64] + 32);
  v12(v6, v1, v5);
  *(v6 + v10) = v8;
  *(v6 + v11) = v9;
  v13 = *(v6 + *(v7 + 48));
  v14 = *(v6 + *(v7 + 64));
  v12(v111, v6, v5);
  v15 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    sub_1C44607F0();
    goto LABEL_7;
  }

  v114 = v14;
  v16 = v0[70];
  v17 = v0[66];
  v18 = v110[59];
  v19 = v110[55];
  v20 = *(v110[47] + 32);
  *(swift_task_alloc() + 16) = v17;
  sub_1C4BABB14();

  if (sub_1C44157D4(v19, 1, v18) == 1)
  {
    sub_1C4420C3C(v110[55], &qword_1EC0BB1B8, &qword_1C4F1E180);
    goto LABEL_7;
  }

  v21 = v110[63];
  v22 = v110[64];
  v23 = v110[55];
  v24 = v110[47];
  v25 = *v23;
  v26 = *(v110[59] + 48);
  v27 = *(v22 + 8);
  v110[71] = v27;
  v110[72] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23 + v26, v21);
  v28 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = sub_1C45A3228(v28);
  v30 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C45A3228(v30);
  v32 = sub_1C46ACBD8();
  v33 = sub_1C4C34878(v32, v29);

  if ((v33 & 1) == 0 || (v34 = v110[47], v35 = sub_1C46ACE30(), v36 = sub_1C4C34878(v35, v31), , (v36 & 1) == 0))
  {
    v72 = v110[47];
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000041, 0x80000001C4F92020);
    v73 = *(v72 + qword_1EC0BB060);
    v74 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A7C68C(v74, v29);

    sub_1C4EFDAF8();
    sub_1C443FB94();
    sub_1C46B6958(v75, v76);
    sub_1C4404C28();
    v77 = sub_1C4F01AC8();
    v79 = v78;

    MEMORY[0x1C6940010](v77, v79);

    MEMORY[0x1C6940010](0x20202D2D20, 0xE500000000000000);
    v80 = sub_1C46ACE30();
    sub_1C4A7C68C(v80, v31);
    sub_1C4416A80();

    v81 = sub_1C4F01AC8();
    v83 = v82;

    MEMORY[0x1C6940010](v81, v83);

    goto LABEL_7;
  }

  v106 = v13;
  v37 = v110[66];
  v38 = v110[47];

  v39 = swift_task_alloc();
  *(v39 + 16) = v37;
  v40 = qword_1EC151BA0;
  v110[73] = qword_1EC151BA0;
  swift_beginAccess();
  v41 = sub_1C46B6064(sub_1C46B6F30, v39);
  v110[74] = v16;
  if (*(*(v38 + v40) + 16) >= v41)
  {
    v42 = v110[54];
    v107 = v110[48];
    v43 = v110[47];
    sub_1C4C073D0();
    swift_endAccess();

    v44 = *(v43 + 56);
    (*(v43 + 48))(v25);
    v45 = *(v43 + 16);
    v46 = *(v45 + 64);
    v105 = v45 + 64;
    v47 = *(v45 + 32);
    sub_1C4401700();
    v50 = v49 & v48;
    sub_1C442A8F4();
    v104 = v51 >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = 0;
    if (!v50)
    {
      goto LABEL_13;
    }

    do
    {
      v53 = v52;
LABEL_16:
      v54 = v110[52];
      sub_1C445C148();
      v56 = *v55;
      v57 = v55[1];
      v60 = v59 + (v58 << 6);
      v61 = *(v107 + 88);
      v62 = type metadata accessor for HistoricalSampleTask.SignalSpec();
      sub_1C43FCE50(v62);
      (*(v63 + 16))(v110 + 10, v60);
      v112 = *(v110 + 6);
      v109 = *(v110 + 5);
      v65 = v110[14];
      v64 = v110[15];
      v66 = v110[16];
      v67 = *(v110 + 136);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!v57)
      {
LABEL_20:
        v85 = v110[53];
        v84 = v110[54];
        v86 = v110[52];
        v87 = v110[47];

        v88 = sub_1C4409678((v87 + 88), *(v87 + 112));
        v110[34] = v86;
        v89 = *(v107 + 88);
        v110[35] = v89[1];
        v90 = sub_1C4422F90(v110 + 31);
        (*(v85 + 16))(v90, v84, v86);
        v91 = v89[2];
        v92 = sub_1C4422A18();
        v93(v92);
        v110[75] = v94;
        v95 = v89[3];
        v96 = sub_1C4422A18();
        v97(v96);
        v110[76] = v98;
        v99 = *v88;
        v100 = *(MEMORY[0x1E69C5B28] + 4);
        v115 = *MEMORY[0x1E69C5B28] + MEMORY[0x1E69C5B28];
        v101 = swift_task_alloc();
        v110[77] = v101;
        *v101 = v110;
        v101[1] = sub_1C46AE5E0;
        sub_1C4401D60();

        __asm { BR              X5 }
      }

      v68 = v110[54];
      v108 = v110[52];
      v69 = v110[47];
      v50 &= v50 - 1;
      *(v110 + 9) = v109;
      *(v110 + 10) = v112;
      v110[22] = v65;
      v110[23] = v64;
      v110[24] = v66;
      *(v110 + 200) = v67;
      sub_1C46B3050(v68, v56, v57, (v110 + 18), v106, v114);

      v70 = type metadata accessor for HistoricalSampleTask.SignalSpec();
      sub_1C43FBCE0(v70);
      (*(v71 + 8))(v110 + 18);
      v52 = v53;
    }

    while (v50);
LABEL_13:
    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v104)
      {
        goto LABEL_20;
      }

      v50 = *(v105 + 8 * v53);
      ++v52;
      if (v50)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C46AE5E0()
{
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = v4[77];
  v6 = v4[76];
  v7 = v4[75];
  v8 = *v0;
  sub_1C43FBDAC();
  *v9 = v8;

  sub_1C440962C((v2 + 248));
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C46AE70C()
{
  v56 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[47];
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDDFECB8);
  v8 = *(v5 + 16);
  v9 = sub_1C43FBC98();
  v10(v9);

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[71];
  v15 = v0[65];
  v16 = v0[63];
  if (v13)
  {
    v17 = v0[50];
    v18 = v0[51];
    v49 = v0[49];
    v51 = v0[72];
    v19 = v0[47];
    sub_1C441024C();
    v47 = v14;
    v20 = swift_slowAlloc();
    v55[0] = sub_1C43FC11C();
    *v20 = 136315394;
    v21 = sub_1C46ACB44();
    sub_1C441D828(v21, v22, v55);
    sub_1C4460618();
    *(v20 + 4) = v1;
    *(v20 + 12) = 2080;
    sub_1C4D3FCA0(v18);
    v23 = sub_1C4EF9B48();
    v25 = v24;
    (*(v17 + 8))(v18, v49);
    v26 = sub_1C4404044();
    v47(v26);
    v27 = sub_1C441D828(v23, v25, v55);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1C43F8000, v11, v12, "%s: logged data for %s to PET2", v20, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v28 = sub_1C4404044();
    v14(v28);
  }

  if (*(*(v0[47] + v0[73]) + 16) && (v29 = v0[74], sub_1C4F01968(), v29))
  {
    v30 = v0[72];
    v31 = v0[71];
    v32 = v0[66];
    v33 = v0[63];
    (*(v0[53] + 8))(v0[54], v0[52]);
    v31(v32, v33);
    v34 = v0[67];
    v35 = v0[66];
    v36 = v0[65];
    sub_1C4433C2C();
    v53 = v0[51];

    sub_1C43FBDA0();
  }

  else
  {
    v38 = v0[72];
    v39 = v0[71];
    v40 = v0[67];
    v41 = v0[66];
    v42 = v0[65];
    v44 = v0[62];
    v43 = v0[63];
    v45 = v0[61];
    v48 = v0[58];
    v50 = v0[56];
    v52 = v0[55];
    v54 = v0[51];
    (*(v0[53] + 8))(v0[54], v0[52]);
    v39(v41, v43);

    sub_1C43FC1B0();
  }

  return v37();
}

uint64_t sub_1C46AEAB4()
{
  (*(v0 + 544))();
  v7 = *(v0 + 560);
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1C4433C2C();
  v4 = *(v0 + 408);

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C46AEBAC()
{
  sub_1C43FBCD4();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_1C456902C(&qword_1EC0BA138, &qword_1C4F1E150);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v1[24] = sub_1C43FBE7C();
  v6 = sub_1C4EFDAF8();
  v1[25] = v6;
  sub_1C43FCF7C(v6);
  v1[26] = v7;
  v9 = *(v8 + 64);
  v1[27] = sub_1C43FE604();
  v1[28] = swift_task_alloc();
  v10 = sub_1C4F01828();
  v1[29] = v10;
  sub_1C43FCF7C(v10);
  v1[30] = v11;
  v13 = *(v12 + 64);
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v14 = sub_1C456902C(&qword_1EC0BB198, &qword_1C4F1E158);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v1[37] = sub_1C43FBE7C();
  v17 = type metadata accessor for FeatureProviderSnapshot(0);
  v1[38] = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  v1[39] = sub_1C43FE604();
  v1[40] = swift_task_alloc();
  v20 = sub_1C4EF9CD8();
  v1[41] = v20;
  sub_1C43FCF7C(v20);
  v1[42] = v21;
  v23 = *(v22 + 64);
  v1[43] = sub_1C43FBE7C();
  v24 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[44] = v24;
  sub_1C43FCF7C(v24);
  v1[45] = v25;
  v27 = *(v26 + 64);
  v1[46] = sub_1C43FBE7C();
  v28 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1C46AEE10()
{
  v3 = *(v1 + 184);
  v4 = v3[6];
  v5 = v3[7];
  v6 = *(v4 + 16);
  if (v5 == v6)
  {
    v7 = *(v1 + 176);
    sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
    v8 = sub_1C440EF74();
    sub_1C440BAA8(v8, v9, 1, v10);
LABEL_3:
    sub_1C4412F00();
    v96 = *(v1 + 248);
    v97 = *(v1 + 224);
    v100 = *(v1 + 216);
    v102 = *(v1 + 192);

    sub_1C43FC1B0();
    goto LABEL_4;
  }

  if (v5 >= v6)
  {
LABEL_42:
    __break(1u);
    sub_1C44064A8();
    swift_once();
    v77 = sub_1C4F00978();
    sub_1C43FCEE8(v77, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v78 = sub_1C4F00968();
    v79 = sub_1C4F01CD8();

    if (sub_1C44020E0())
    {
      sub_1C43FD084();
      sub_1C44117BC();
      *isa = v99;
      v80 = sub_1C43FD388();
      v83 = sub_1C441D828(v80, v81, v82);

      *(isa + 4) = v83;
      sub_1C43FBD74(&dword_1C43F8000, v84, v85, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.");
      sub_1C44340A8();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    sub_1C4434F44();
    sub_1C4406A10();
    sub_1C46B6958(v86, v87);
    v104 = sub_1C4410258();
    v89 = sub_1C440D280(v104, v88);
    v90(v89);
    swift_willThrow();

    v91 = sub_1C447EFDC();
    v92(v91);
    v93 = sub_1C443F160();
    v94(v93);
    sub_1C4420C3C(v79, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    sub_1C440962C((v1 + 16));
    v95 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
    sub_1C44239FC(v95);
    sub_1C443211C();
    sub_1C444146C();
    v101 = *(v1 + 192);

    sub_1C43FBDA0();
LABEL_4:

    return v11();
  }

  v13 = *(v1 + 368);
  v14 = *(v1 + 344);
  v15 = *(v1 + 352);
  v16 = *(v1 + 328);
  v17 = *(v1 + 336);
  v18 = *(v1 + 200);
  v19 = v4 + ((*(*(v1 + 360) + 80) + 32) & ~*(*(v1 + 360) + 80)) + *(*(v1 + 360) + 72) * v5;
  v3[7] = v5 + 1;
  sub_1C445FFA8(v19, v13, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v21 = *(v17 + 16);
  v20 = v17 + 16;
  v21(v14, v13 + *(v15 + 36), v16);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C443FB94();
  sub_1C46B6958(v22, v23);
  v24 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0BB1A0, &unk_1C4F1E160);
  *(v1 + 376) = sub_1C4F00F28();
  v25 = v3[5];
  *(v1 + 384) = v25;
  v26 = *(v25 + 32);
  *(v1 + 592) = v26;
  v27 = -1;
  isa = -1 << v26;
  if (-(-1 << v26) < 64)
  {
    v27 = ~(-1 << -isa);
  }

  v28 = v27 & *(v25 + 64);
  *(v1 + 392) = v24;
  *(v1 + 400) = v24;
  v29 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (!v28)
  {
    v31 = 0;
    while (((63 - isa) >> 6) - 1 != v31)
    {
      v30 = v31 + 1;
      v28 = *(v29 + 8 * v31++ + 72);
      if (v28)
      {
        goto LABEL_15;
      }
    }

    v37 = *(v1 + 184);

    v38 = sub_1C444B0C8();
    sub_1C441EB70(v38);
    v41 = (v39 & v40);
    v98 = *(v1 + 376);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v42 = 0;
    v99 = 136315138;
    while (v41)
    {
      v37 = *(v1 + 472);
LABEL_28:
      sub_1C4436500();
      v2 = *v48;
      *(v1 + 496) = *v48;
      v20 = v48[1];
      *(v1 + 504) = v20;
      sub_1C44951C0(v49);
      isa = v37[2].isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (isa)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v50 = sub_1C43FD388();
        v52 = sub_1C445FAA8(v50, v51);
        if (v53)
        {
          v54 = *(v1 + 368);
          v55 = sub_1C442DE54(v52);
          sub_1C442E860(v55, v1 + 56);
          sub_1C441D670((v1 + 56), v1 + 16);
          v56 = *(v1 + 40);
          v57 = *(v1 + 48);
          sub_1C440171C((v1 + 16));
          sub_1C46B51A0();
          sub_1C4418A14();
          v69();
          v70 = sub_1C4461F74().n128_u64[0];
          *(v1 + 560) = v98;
          *(v1 + 552) = 0;
          v71 = sub_1C440002C(v98, v70);
          v103 = v72;
          v73 = v71[1];
          v74 = swift_task_alloc();
          v75 = sub_1C4405A14(v74);
          *v75 = v76;
          v36 = sub_1C441F71C(v75);
          goto LABEL_16;
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v58 = sub_1C4F00978();
      sub_1C43FCEE8(v58, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C4F00968();
      v59 = sub_1C4F01CE8();

      if (os_log_type_enabled(v37, v59))
      {
        v60 = sub_1C43FD084();
        v3 = sub_1C43FFD34();
        *v60 = 136315138;
        v61 = sub_1C43FD388();
        v2 = sub_1C441D828(v61, v62, v63);

        *(v60 + 4) = v2;
        _os_log_impl(&dword_1C43F8000, v37, v59, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v60, 0xCu);
        sub_1C440962C(v3);
        v64 = sub_1C43FEDE8();
        MEMORY[0x1C6942830](v64);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    v43 = 1;
    while (!__OFADD__(v42, 1))
    {
      v44 = v43 << *(v1 + 593);
      sub_1C4404220();
      if (v46 == v47)
      {
        v65 = sub_1C442A3C0();
        sub_1C4420C3C(v65, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        v66 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC(v66);
        v67 = sub_1C4422A18();
        v68(v67);
        *(v3 + v20) = v41;
        *(v3 + v2) = v98;
        sub_1C44183AC(v3);
        goto LABEL_3;
      }

      v41 = v37[v45 + 8].isa;
      ++v42;
      if (v41)
      {
        v42 = v45;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v30 = 0;
LABEL_15:
  *(v1 + 408) = v28;
  *(v1 + 416) = v30;
  sub_1C4408810(v29);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v103 = v32;
  v33 = *(v24 + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 456) = v34;
  *v34 = v35;
  v36 = sub_1C4402EBC(v34);
LABEL_16:

  return v103(v36);
}

uint64_t sub_1C46AF850()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 464) = v0;

  if (v0)
  {
    v9 = *(v3 + 440);

    v10 = sub_1C46B08A8;
  }

  else
  {
    v10 = sub_1C46AF958;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C46AF958()
{
  v233 = v0;
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = sub_1C440EF74();
  v7 = &unk_1C4F0C000;
  if (sub_1C44157D4(v4, v5, v6) == 1)
  {
    v8 = *(v0 + 440);

    sub_1C4420C3C(v3, &qword_1EC0BB198, &qword_1C4F1E158);
  }

  else
  {
    v9 = *(v0 + 344);
    sub_1C4586A54(v3, *(v0 + 312));
    sub_1C4404C28();
    v10 = sub_1C4EF9C68();
    v11 = *(v0 + 440);
    if (v10)
    {
      v12 = *(v0 + 320);
      v13 = *(v0 + 304);
      sub_1C4586A54(*(v0 + 312), v12);
      v14 = *(v12 + *(v13 + 20));
      v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46B5104(v15, v11);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        sub_1C4460A30();
        if (!v105)
        {
LABEL_108:
          sub_1C44064A8();
          swift_once();
        }

        v18 = *(v0 + 432);
        v19 = sub_1C4F00978();
        sub_1C43FCEE8(v19, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v20 = sub_1C4F00968();
        v21 = sub_1C4F01CD8();

        if (sub_1C44020E0())
        {
          v23 = *(v0 + 424);
          v22 = *(v0 + 432);
          v24 = sub_1C43FD084();
          v1 = sub_1C43FFD34();
          v232 = v1;
          *v24 = v7[458];
          v25 = sub_1C43FE5F8();
          *(v24 + 4) = sub_1C441D828(v25, v26, v27);
          sub_1C4417FB0(&dword_1C43F8000, v28, v21, "HistoricalFeatureCollector: Signal %s did not return all requested features for this timepoint. Some features will be missing on this timepoint. Check its implementation to ensure it always emits all promised features on every snapshot.");
          sub_1C440962C(v1);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }
      }

      v29 = MEMORY[0x1E69E7CC8];
      *(v0 + 136) = MEMORY[0x1E69E7CC8];
      v30 = -1 << *(v14 + 32);
      if (-v30 < 64)
      {
        v31 = ~(-1 << -v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v14 + 64);
      sub_1C442A8F4();
      v7 = (v33 >> 6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = 0;
LABEL_14:
      v220 = v29;
LABEL_15:
      if (v32)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          sub_1C4418A14();
          v176();
          v177 = sub_1C4461F74().n128_u64[0];
          *(v0 + 560) = v225;
          *(v0 + 552) = 0;
          v178 = sub_1C440002C(v225, v177);
          v229 = v179;
          v180 = v178[1];
          v181 = swift_task_alloc();
          v182 = sub_1C4405A14(v181);
          *v182 = v183;
          v120 = sub_1C441F71C(v182);
          goto LABEL_66;
        }

        if (v35 >= v7)
        {
          break;
        }

        v32 = *(v14 + 64 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
LABEL_20:
          v36 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v37 = v36 | (v34 << 6);
          v38 = *(*(v14 + 56) + 8 * v37);
          if (v38)
          {
            v39 = (*(v14 + 48) + 16 * v37);
            v40 = v39[1];
            v227 = *v39;
            v41 = v29;
            v42 = *(v29 + 2);
            if (*(v41 + 3) <= v42)
            {
              v44 = v38;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C46795D8(v42 + 1, 1, v45, v46, v47, v48, v49, v50, v213, v214, v215, SBYTE4(v215));
              v29 = *(v0 + 136);
            }

            else
            {
              v43 = v38;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v29 = v220;
            }

            v51 = *(v29 + 5);
            sub_1C4F02AF8();
            v225 = v40;
            sub_1C4F01298();
            v1 = v29;
            v52 = sub_1C4F02B68();
            v53 = v29 + 64;
            v54 = -1 << v29[32];
            v55 = v52 & ~v54;
            v56 = v55 >> 6;
            if (((-1 << v55) & ~*&v29[8 * (v55 >> 6) + 64]) != 0)
            {
              v57 = __clz(__rbit64((-1 << v55) & ~*&v29[8 * (v55 >> 6) + 64])) | v55 & 0x7FFFFFFFFFFFFFC0;
              v59 = v225;
              v58 = v227;
              goto LABEL_33;
            }

            v60 = 0;
            v61 = (63 - v54) >> 6;
            v59 = v225;
            v58 = v227;
            while (2)
            {
              if (++v56 == v61 && (v60 & 1) != 0)
              {
                __break(1u);
                goto LABEL_108;
              }

              v62 = v56 == v61;
              if (v56 == v61)
              {
                v56 = 0;
              }

              v60 |= v62;
              v63 = *&v53[8 * v56];
              if (v63 == -1)
              {
                continue;
              }

              break;
            }

            v57 = __clz(__rbit64(~v63)) + (v56 << 6);
LABEL_33:
            *&v53[(v57 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v57;
            v64 = (*(v29 + 6) + 16 * v57);
            *v64 = v58;
            v64[1] = v59;
            *(*(v29 + 7) + 8 * v57) = v38;
            ++*(v29 + 2);
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      v86 = *(v0 + 440);

      v87 = 0;
      v89 = v29 + 64;
      v88 = *(v29 + 8);
      v90 = v29[32];
      sub_1C44141AC();
      sub_1C442A8F4();
      v93 = v92 >> 6;
      v214 = (v0 + 392);
      v228 = *(v0 + 392);
      while (v91)
      {
        v94 = v91;
LABEL_49:
        v91 = (v94 - 1) & v94;
        if (*(v86 + 16))
        {
          v225 = (v94 - 1) & v94;
          v96 = __clz(__rbit64(v94)) | (v87 << 6);
          v97 = (*(v29 + 6) + 16 * v96);
          v99 = *v97;
          v98 = v97[1];
          v100 = *(*(v29 + 7) + 8 * v96);
          v101 = *(v86 + 40);
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v223 = v100;
          sub_1C4F01298();
          v102 = sub_1C4F02B68();
          v103 = ~(-1 << *(v86 + 32));
          while (1)
          {
            v1 = v102 & v103;
            if (((*(v86 + 56 + (((v102 & v103) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v102 & v103)) & 1) == 0)
            {
              break;
            }

            v104 = (*(v86 + 48) + 16 * v1);
            v105 = *v104 == v99 && v104[1] == v98;
            if (!v105)
            {
              v106 = sub_1C4F02938();
              v102 = v1 + 1;
              if ((v106 & 1) == 0)
              {
                continue;
              }
            }

            v107 = *(v0 + 432);
            v1 = *(v0 + 224);
            v215 = *(v0 + 424);
            v216 = *(v0 + 208);
            log = *(v0 + 200);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4EFDAC8();
            v108 = v223;
            swift_isUniquelyReferenced_nonNull_native();
            v232 = *&v228.f64[0];
            sub_1C466033C();

            (*(v216 + 8))(v1, log);
            v109 = &v232;
            v110 = vld1q_dup_f64(v109);
            v228 = v110;
            goto LABEL_59;
          }

LABEL_59:
          v29 = v220;
          v91 = v225;
        }
      }

      while (1)
      {
        v95 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_97;
        }

        if (v95 >= v93)
        {
          break;
        }

        v94 = *&v89[8 * v95];
        ++v87;
        if (v94)
        {
          v87 = v95;
          goto LABEL_49;
        }
      }

      v73 = v29;
      v112 = *(v0 + 440);
      v111 = *(v0 + 448);
      v71 = *(v0 + 432);
      v113 = *(v0 + 320);

      sub_1C441B844();
      sub_1C46B5C54(v113, v114);
      sub_1C443E2F0();
      *v214 = v228;
      v7 = &unk_1C4F0C000;
      if (!v84)
      {
        goto LABEL_61;
      }

LABEL_41:
      v85 = *(v0 + 384);
      goto LABEL_65;
    }

    v65 = *(v0 + 312);
    sub_1C441B844();
    sub_1C46B5C54(v66, v67);
  }

  sub_1C4460A30();
  if (!v105)
  {
    sub_1C44064A8();
    swift_once();
  }

  v68 = *(v0 + 432);
  v69 = sub_1C4F00978();
  sub_1C43FCEE8(v69, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70 = sub_1C4F00968();
  v71 = sub_1C4F01CE8();

  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v0 + 448);
  v74 = *(v0 + 432);
  if (v72)
  {
    v75 = *(v0 + 424);
    v76 = sub_1C43FD084();
    v1 = sub_1C43FFD34();
    v232 = v1;
    *v76 = 136315138;
    v77 = sub_1C43FE5F8();
    v80 = sub_1C441D828(v77, v78, v79);

    *(v76 + 4) = v80;
    sub_1C4417FB0(&dword_1C43F8000, v81, v71, "HistoricalFeatureCollector: Signal %s ran out of values early or for the wrong timepoint. This timepoint will not be collected.");
    sub_1C440962C(v1);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v82 = *(v0 + 448);
  }

  sub_1C443E2F0();
  if (v84)
  {
    goto LABEL_41;
  }

  do
  {
LABEL_61:
    v115 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_98;
    }

    v85 = *(v0 + 384);
    if (v115 >= (((1 << *(v0 + 592)) + 63) >> 6))
    {
      v122 = *(v0 + 184);

      v123 = sub_1C444B0C8();
      sub_1C441EB70(v123);
      isa = (v124 & v125);
      v225 = *(v0 + 376);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v127 = 0;
      while (1)
      {
        while (1)
        {
          if (!isa)
          {
            while (!__OFADD__(v127, 1))
            {
              v128 = 1 << *(v0 + 593);
              sub_1C4404220();
              if (v130 == v131)
              {
                v171 = sub_1C442A3C0();
                sub_1C4420C3C(v171, &qword_1EC0B84B8, &unk_1C4F0D4F0);

                v172 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
                sub_1C4410AEC(v172);
                v173 = sub_1C4422A18();
                v174(v173);
                *(v1 + 1) = isa;
                *(v7 + 1) = v225;
                sub_1C44183AC(1);
                sub_1C4412F00();
                sub_1C444146C();
                v230 = *(v0 + 192);

                sub_1C43FC1B0();
                goto LABEL_93;
              }

              isa = v122[v129 + 8].isa;
              ++v127;
              if (isa)
              {
                v127 = v129;
                goto LABEL_77;
              }
            }

            goto LABEL_99;
          }

          v122 = *(v0 + 472);
LABEL_77:
          sub_1C4436500();
          v133 = *v132;
          *(v0 + 496) = *v132;
          v1 = v132[1];
          *(v0 + 504) = v1;
          sub_1C44A1E4C(v134);
          v135 = v122[2].isa;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v135)
          {
            break;
          }

LABEL_80:
          sub_1C4460A30();
          if (!v105)
          {
            swift_once();
          }

          v138 = sub_1C4F00978();
          sub_1C43FCEE8(v138, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v122 = sub_1C4F00968();
          v7 = sub_1C4F01CE8();

          if (sub_1C4440D08())
          {
            v139 = sub_1C43FD084();
            v140 = sub_1C43FFD34();
            v232 = v140;
            *v139 = 136315138;
            v148 = sub_1C445BF44(v140, v141, v142, v143, v144, v145, v146, v147, v213, v214, v215, v216, log);

            *(v139 + 4) = v148;
            _os_log_impl(&dword_1C43F8000, v122, v7, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v139, 0xCu);
            sub_1C443EED0();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v149 = sub_1C43FEDE8();
            MEMORY[0x1C6942830](v149);
          }

          else
          {
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v136 = sub_1C445FAA8(v133, v1);
        if ((v137 & 1) == 0)
        {

          goto LABEL_80;
        }

        v150 = *(v0 + 368);
        v151 = sub_1C442DE54(v136);
        sub_1C442E860(v151, v0 + 56);
        sub_1C441D670((v0 + 56), v0 + 16);
        v152 = *(v0 + 40);
        v153 = *(v0 + 48);
        sub_1C440171C((v0 + 16));
        sub_1C46B51A0();
        if (!v71)
        {
          goto LABEL_100;
        }

        v154 = *(v0 + 264);
        v155 = *(v0 + 232);

        *(v0 + 144) = v71;
        v221 = v71;
        v156 = v71;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        sub_1C442AB7C();
        if (swift_dynamicCast())
        {
          v184 = *(v0 + 400);
          v186 = *(v0 + 256);
          v185 = *(v0 + 264);
          v188 = *(v0 + 232);
          v187 = *(v0 + 240);

          (*(v187 + 32))(v186, v185, v188);
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v189 = sub_1C4F00978();
          sub_1C43FCEE8(v189, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v190 = sub_1C4F00968();
          v191 = sub_1C4F01CD8();

          if (sub_1C44020E0())
          {
            sub_1C43FD084();
            v192 = sub_1C44117BC();
            v232 = v192;
            *v185 = 136315138;
            v200 = sub_1C445BF44(v192, v193, v194, v195, v196, v197, v198, v199, v213, v214, v215, v216, log);

            *(v185 + 4) = v200;
            sub_1C43FBD74(&dword_1C43F8000, v201, v202, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.");
            sub_1C44340A8();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          sub_1C4434F44();
          sub_1C4406A10();
          sub_1C46B6958(v203, v204);
          v231 = sub_1C4410258();
          v206 = sub_1C440D280(v231, v205);
          v207(v206);
          swift_willThrow();

          v208 = sub_1C447EFDC();
          v209(v208);
          v210 = sub_1C443F160();
          v211(v210);
          sub_1C4420C3C(v191, &qword_1EC0B84B8, &unk_1C4F0D4F0);

          sub_1C440962C((v0 + 16));
          v212 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
          sub_1C44239FC(v212);
          sub_1C443211C();
          logb = *(v0 + 248);
          v222 = *(v0 + 224);
          v224 = *(v0 + 216);
          v226 = *(v0 + 192);

          sub_1C43FBDA0();
LABEL_93:

          return v175();
        }

        sub_1C4460A30();
        if (!v105)
        {
          sub_1C44064A8();
          swift_once();
        }

        v157 = sub_1C4F00978();
        sub_1C43FCEE8(v157, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v158 = v71;
        v122 = sub_1C4F00968();
        v7 = sub_1C4F01CE8();

        if (sub_1C4440D08())
        {
          sub_1C441024C();
          v159 = swift_slowAlloc();
          loga = v122;
          v122 = sub_1C4408660();
          v160 = sub_1C43FFD34();
          v232 = v160;
          *v159 = 136315394;
          v168 = sub_1C445BF44(v160, v161, v162, v163, v164, v165, v166, v167, v213, v214, v215, v216, loga);

          *(v159 + 4) = v168;
          *(v159 + 12) = 2112;
          v169 = v221;
          v170 = _swift_stdlib_bridgeErrorToNSError();
          *(v159 + 14) = v170;
          v122->isa = v170;
          v1 = log;
          _os_log_impl(&dword_1C43F8000, log, v7, "HistoricalFeatureCollector: Signal %s failed to initialize changes sequence due to: %@. It will be skipped for this timepoint.", v159, 0x16u);
          sub_1C4420C3C(v122, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C443EED0();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        sub_1C440962C((v0 + 16));
        v71 = 0;
      }
    }

    v84 = *(v85 + 8 * v115 + 64);
    ++v83;
  }

  while (!v84);
  v83 = v115;
LABEL_65:
  *(v0 + 408) = v84;
  *(v0 + 416) = v83;
  sub_1C4408810(v85);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v229 = v116;
  v117 = *(v73 + 1);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 456) = v118;
  *v118 = v119;
  v120 = sub_1C4402EBC();
LABEL_66:

  return v229(v120);
}

uint64_t sub_1C46B08A8()
{
  v117 = v0;
  v1 = *(v0 + 464);
  *(v0 + 128) = v1;
  v2 = *(v0 + 288);
  v3 = *(v0 + 232);
  v4 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v5 = &unk_1C4F0C000;
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 376);
    v8 = *(v0 + 288);
    v9 = *(v0 + 272);
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);

    (*(v11 + 32))(v9, v8, v10);
    sub_1C4458484();
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_47;
  }

  sub_1C4458484();
  if (!v12)
  {
    sub_1C44064A8();
    swift_once();
  }

  v23 = *(v0 + 464);
  v24 = *(v0 + 432);
  v113 = sub_1C4F00978();
  sub_1C43FCEE8(v113, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = v23;
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CD8();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 464);
  v30 = *(v0 + 448);
  v31 = &unk_1C4F0C000;
  v32 = *(v0 + 432);
  if (v28)
  {
    v33 = *(v0 + 424);
    sub_1C441024C();
    v34 = swift_slowAlloc();
    v35 = sub_1C4408660();
    v36 = sub_1C43FFD34();
    sub_1C449DA80(v36);
    *v34 = 136315394;
    v37 = sub_1C43FE5F8();
    v40 = sub_1C441D828(v37, v38, v39);

    *(v34 + 4) = v40;
    v31 = &unk_1C4F0C000;
    *(v34 + 12) = 2112;
    v41 = v29;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v42;
    *v35 = v42;
    _os_log_impl(&dword_1C43F8000, v26, v27, "HistoricalFeatureCollector: Signal %s threw error during a timepoint. This timepoint will not be collected. %@", v34, 0x16u);
    sub_1C4420C3C(v35, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C4435858();
    v5 = &unk_1C4F0C000;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v56 = *(v0 + 448);
  }

  v57 = *(v0 + 416);
  v58 = (*(v0 + 408) - 1) & *(v0 + 408);
  if (!v58)
  {
    v109 = (v0 + 56);
    v112 = (v0 + 16);
    while (1)
    {
      v60 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v59 = *(v0 + 384);
      if (v60 >= (((1 << *(v0 + 592)) + 63) >> 6))
      {
        break;
      }

      v58 = *(v59 + 8 * v60 + 64);
      ++v57;
      if (v58)
      {
        v57 = v60;
        goto LABEL_23;
      }
    }

    v66 = *(v0 + 184);

    v67 = sub_1C444B0C8();
    sub_1C441EB70(v67);
    v70 = v68 & v69;
    v106 = *(v0 + 376);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v71 = 0;
    v107 = v5[458];
    v72 = v31[457];
    while (v70)
    {
      v66 = *(v0 + 472);
LABEL_36:
      *(v0 + 480) = v70;
      *(v0 + 488) = v71;
      v78 = *(v0 + 184);
      v79 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v80 = (v66[6].isa + 16 * (v79 | (v71 << 6)));
      v81 = *v80;
      *(v0 + 496) = *v80;
      v32 = v80[1];
      *(v0 + 504) = v32;
      sub_1C44A1E4C(v78);
      isa = v66[2].isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (isa)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v83 = sub_1C445FAA8(v81, v32);
        if (v84)
        {
          v85 = *(v0 + 368);
          v86 = sub_1C442DE54(v83);
          sub_1C442E860(v86, v109);
          sub_1C441D670(v109, v112);
          v87 = *(v0 + 40);
          v88 = *(v0 + 48);
          sub_1C440171C(v112);
          sub_1C46B51A0();
          sub_1C4418A14();
          v98();
          v99 = sub_1C4461F74().n128_u64[0];
          *(v0 + 560) = v106;
          *(v0 + 552) = 0;
          v100 = sub_1C440002C(v106, v99);
          v114 = v101;
          v102 = v100[1];
          v103 = swift_task_alloc();
          v104 = sub_1C4405A14(v103);
          *v104 = v105;
          v65 = sub_1C441F71C(v104);
          goto LABEL_24;
        }
      }

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      sub_1C43FCEE8(v113, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v66 = sub_1C4F00968();
      v89 = sub_1C4F01CE8();

      if (os_log_type_enabled(v66, v89))
      {
        v108 = v31;
        v90 = sub_1C43FD084();
        v91 = sub_1C43FFD34();
        sub_1C449DA80(v91);
        *v90 = v107;
        v92 = sub_1C441D828(v81, v32, v116);

        *(v90 + 4) = v92;
        _os_log_impl(&dword_1C43F8000, v66, v89, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v90, 0xCu);
        sub_1C4435858();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v31 = v108;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    v73 = 1;
    while (!__OFADD__(v71, 1))
    {
      v74 = v73 << *(v0 + 593);
      sub_1C4404220();
      if (v76 == v77)
      {
        v93 = sub_1C4404DF0();
        sub_1C4420C3C(v93, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        v94 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC(v94);
        v95 = sub_1C4402EE8();
        v96(v95);
        *(v32 + v71) = v31;
        sub_1C442F160(v106);
        v97 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C44239FC(v97);
        sub_1C4412F00();
        sub_1C444146C();
        v115 = *(v0 + 192);

        sub_1C43FC1B0();
        goto LABEL_12;
      }

      v70 = v66[v75 + 8].isa;
      ++v71;
      if (v70)
      {
        v71 = v75;
        goto LABEL_36;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    sub_1C44064A8();
    swift_once();
LABEL_4:
    v13 = *(v0 + 432);
    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    v17 = sub_1C44020E0();
    v18 = *(v0 + 432);
    if (v17)
    {
      v19 = *(v0 + 424);
      v20 = sub_1C43FD084();
      v116[0] = sub_1C43FFD34();
      *v20 = v5[458];
      v21 = sub_1C441D828(v19, v18, v116);

      *(v20 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v15, v16, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (snapshot step). Data collection will be terminated.", v20, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v22 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v22);
    }

    else
    {
    }

    v43 = *(v0 + 448);
    v44 = *(v0 + 384);
    v110 = *(v0 + 368);
    v45 = *(v0 + 336);
    v46 = *(v0 + 344);
    v47 = *(v0 + 328);
    v48 = *(v0 + 272);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    sub_1C4406A10();
    sub_1C46B6958(v51, v52);
    sub_1C441C114();
    swift_allocError();
    (*(v49 + 16))(v53, v48, v50);
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    (*(v45 + 8))(v46, v47);
    sub_1C4420C3C(v110, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    sub_1C443211C();
    sub_1C444146C();
    v111 = *(v0 + 192);

    sub_1C43FBDA0();
LABEL_12:

    return v54();
  }

  v59 = *(v0 + 384);
LABEL_23:
  *(v0 + 408) = v58;
  *(v0 + 416) = v57;
  sub_1C4408810(v59);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4411A84();
  v114 = v61;
  v62 = *(v0 + 132);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 456) = v63;
  *v63 = v64;
  v65 = sub_1C4402EBC();
LABEL_24:

  return v114(v65);
}

uint64_t sub_1C46B15D4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 576) = v0;

  if (v0)
  {
    v9 = sub_1C46B2304;
  }

  else
  {
    v9 = sub_1C46B16D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C46B16D4()
{
  v177 = v0;
  v3 = *(v0 + 192);
  v4 = type metadata accessor for FeatureProviderChange(0);
  v5 = sub_1C440EF74();
  if (sub_1C44157D4(v5, v6, v4) == 1)
  {
    v7 = *(v0 + 520);
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    v10 = *(v0 + 120);

    sub_1C440962C((v0 + 16));
    v11 = *(v0 + 488);
    isa = (*(v0 + 480) - 1) & *(v0 + 480);
    v13 = *(v0 + 576);
    sub_1C444ACA4();
    v172 = 136315138;
    *&v14 = 136315394;
    v164 = v14;
    while (1)
    {
LABEL_3:
      if (isa)
      {
        v7 = *(v0 + 472);
        goto LABEL_10;
      }

      do
      {
        if (__OFADD__(v11, 1))
        {
          goto LABEL_62;
        }

        v15 = 1 << *(v0 + 593);
        sub_1C4404220();
        if (v17 == v18)
        {
          v109 = sub_1C4404DF0();
          sub_1C4420C3C(v109, &qword_1EC0B84B8, &unk_1C4F0D4F0);

          v110 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
          sub_1C4410AEC(v110);
          v111 = sub_1C4402EE8();
          v112(v111);
          *(v1 + v2) = isa;
          sub_1C442F160(v166);
          sub_1C44239FC(v168);
          sub_1C4412F00();
          v165 = *(v0 + 248);
          v167 = *(v0 + 224);
          v170 = *(v0 + 216);
          v174 = *(v0 + 192);

          sub_1C43FC1B0();
          goto LABEL_58;
        }

        isa = v7[v16 + 8].isa;
        ++v11;
      }

      while (!isa);
      v11 = v16;
LABEL_10:
      *(v0 + 480) = isa;
      *(v0 + 488) = v11;
      v19 = *(v0 + 184);
      v20 = __clz(__rbit64(isa));
      isa &= isa - 1;
      v21 = v20 | (v11 << 6);
      v22 = (v7[6].isa + 16 * v21);
      v23 = *v22;
      *(v0 + 496) = *v22;
      v24 = v22[1];
      *(v0 + 504) = v24;
      *(v0 + 512) = *(v7[7].isa + v21);
      v25 = *(*(v19 + 8) + 16);
      v1 = v24;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v25)
      {
        break;
      }

LABEL_13:
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1C4F00978();
      sub_1C43FCEE8(v28, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v7 = sub_1C4F00968();
      v2 = sub_1C4F01CE8();

      if (os_log_type_enabled(v7, v2))
      {
        v29 = sub_1C43FD084();
        v30 = sub_1C43FFD34();
        v38 = sub_1C4414534(v30, v31, v32, v33, v34, v35, v36, v37, log, v160, v161, v163, v164, *(&v164 + 1), v166, v168, v172);
        v40 = sub_1C441D828(v38, v1, v39);

        *(v29 + 4) = v40;
        _os_log_impl(&dword_1C43F8000, v7, v2, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v29, 0xCu);
        sub_1C44340A8();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C445FAA8(v23, v1);
    if ((v27 & 1) == 0)
    {

      goto LABEL_13;
    }

    v162 = *(v0 + 368);
    v41 = sub_1C442DE54(v26);
    sub_1C442E860(v41, v0 + 56);
    sub_1C441D670((v0 + 56), v0 + 16);
    v43 = *(v0 + 40);
    v42 = *(v0 + 48);
    sub_1C440171C((v0 + 16));
    sub_1C46B51A0();
    if (v13)
    {
      v44 = *(v0 + 264);
      v45 = *(v0 + 232);

      *(v0 + 144) = v13;
      v161 = v13;
      v46 = v13;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      sub_1C442AB7C();
      if (!swift_dynamicCast())
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v47 = sub_1C4F00978();
        sub_1C43FCEE8(v47, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = v13;
        v7 = sub_1C4F00968();
        v2 = sub_1C4F01CE8();

        if (os_log_type_enabled(v7, v2))
        {
          sub_1C441024C();
          v49 = swift_slowAlloc();
          log = v7;
          v50 = sub_1C4408660();
          v160 = sub_1C43FFD34();
          v176 = v160;
          *v49 = v164;
          v51 = sub_1C441D828(v23, v1, &v176);

          *(v49 + 4) = v51;
          *(v49 + 12) = 2112;
          v52 = v161;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 14) = v53;
          *v50 = v53;
          v1 = log;
          _os_log_impl(&dword_1C43F8000, log, v2, "HistoricalFeatureCollector: Signal %s failed to initialize changes sequence due to: %@. It will be skipped for this timepoint.", v49, 0x16u);
          sub_1C4420C3C(v50, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v7 = v160;
          sub_1C440962C(v160);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        sub_1C440962C((v0 + 16));
        v13 = 0;
        goto LABEL_3;
      }

      v116 = *(v0 + 400);
      v118 = *(v0 + 256);
      v117 = *(v0 + 264);
      v120 = *(v0 + 232);
      v119 = *(v0 + 240);

      v121 = *(v119 + 32);
      v122 = sub_1C4404C28();
      v123(v122);
      if (qword_1EDDFECB0 == -1)
      {
LABEL_65:
        v124 = sub_1C4F00978();
        sub_1C43FCEE8(v124, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v125 = sub_1C4F00968();
        v126 = sub_1C4F01CD8();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = sub_1C43FD084();
          v128 = sub_1C43FFD34();
          v136 = sub_1C4414534(v128, v129, v130, v131, v132, v133, v134, v135, log, v160, v161, v163, v164, *(&v164 + 1), v166, v168, v172);
          v138 = sub_1C441D828(v136, v1, v137);

          *(v127 + 4) = v138;
          _os_log_impl(&dword_1C43F8000, v125, v126, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change preparation step). Data collection will be terminated.", v127, 0xCu);
          sub_1C44340A8();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v139 = *(v0 + 472);
        v140 = *(v0 + 368);
        v141 = *(v0 + 336);
        v142 = *(v0 + 344);
        v143 = *(v0 + 328);
        v144 = *(v0 + 256);
        v145 = *(v0 + 232);
        v146 = *(v0 + 240);
        sub_1C4406A10();
        sub_1C46B6958(v147, v148);
        v175 = sub_1C4410258();
        v150 = sub_1C440D280(v175, v149);
        v151(v150);
        swift_willThrow();

        v152 = sub_1C447EFDC();
        v153(v152);
        v154 = sub_1C443F160();
        v155(v154);
        sub_1C4420C3C(v140, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        sub_1C440962C((v0 + 16));
        sub_1C44239FC(v168);
        sub_1C443211C();
        sub_1C444146C();
        v171 = *(v0 + 192);

        sub_1C43FBDA0();
LABEL_58:
        sub_1C44A1764();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_74;
    }

    goto LABEL_63;
  }

  v54 = *(v3 + *(v4 + 24));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46B5C54(v3, type metadata accessor for FeatureProviderChange);
  v55 = 0;
  v57 = v54 + 64;
  v56 = *(v54 + 64);
  v172 = v54;
  v58 = *(v54 + 32);
  sub_1C44141AC();
  v61 = v60 & v59;
  sub_1C442A8F4();
  v1 = v62 >> 6;
  sub_1C444ACA4();
  while (1)
  {
LABEL_27:
    if (v61)
    {
      v63 = v61;
      goto LABEL_33;
    }

    do
    {
      v64 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        sub_1C4418A14();
        v115();
        v102 = sub_1C4461F74().n128_u64[0];
LABEL_55:
        *(v0 + 560) = v166;
        *(v0 + 552) = v168;
        *(v0 + 544) = v163;
        v173 = v102 + *v102;
        v103 = v102[1];
        v104 = swift_task_alloc();
        v105 = sub_1C4405A14(v104);
        *v105 = v106;
        sub_1C441F71C();
        sub_1C44A1764();

        __asm { BRAA            X1, X16 }
      }

      if (v64 >= v1)
      {

        v102 = *(v0 + 528);
        goto LABEL_55;
      }

      v63 = *(v57 + 8 * v64);
      ++v55;
    }

    while (!v63);
    v55 = v64;
LABEL_33:
    v65 = *(v0 + 512);
    v61 = (v63 - 1) & v63;
    if (!*(v65 + 16))
    {
      continue;
    }

    sub_1C445C148();
    v67 = *v66;
    v68 = v66[1];
    v71 = *(v70 + 8 * v69);
    v72 = *(v65 + 40);
    sub_1C4F02AF8();
    *&v164 = v71;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v73 = sub_1C4F02B68();
    v74 = ~(-1 << *(v65 + 32));
    while (2)
    {
      v75 = *(v0 + 512);
      v76 = v73 & v74;
      if (((*(v75 + (((v73 & v74) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v73 & v74)) & 1) == 0)
      {

        goto LABEL_53;
      }

      v77 = (*(v75 + 48) + 16 * v76);
      if (*v77 != v67 || v77[1] != v68)
      {
        v79 = sub_1C4F02938();
        v73 = v76 + 1;
        if ((v79 & 1) == 0)
        {
          continue;
        }
      }

      break;
    }

    if (v71)
    {
      break;
    }

LABEL_53:
  }

  v81 = *(v0 + 496);
  v80 = *(v0 + 504);
  v82 = *(v0 + 216);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFDAC8();
  sub_1C44239FC(v168);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v163;
  sub_1C457AAB4();
  if (__OFADD__(*(v163 + 16), (v84 & 1) == 0))
  {
    __break(1u);
    goto LABEL_73;
  }

  v85 = v83;
  v86 = v84;
  sub_1C456902C(&qword_1EC0BB1A8, &qword_1C4F1E170);
  v87 = sub_1C4F02458();
  v88 = *(v0 + 168);
  if ((v87 & 1) == 0)
  {
    goto LABEL_46;
  }

  v89 = *(v0 + 216);
  v90 = *(v0 + 168);
  sub_1C457AAB4();
  if ((v86 & 1) == (v92 & 1))
  {
    v85 = v91;
LABEL_46:
    if ((v86 & 1) == 0)
    {
      v94 = *(v0 + 208);
      v93 = *(v0 + 216);
      v95 = *(v0 + 200);
      v88[(v85 >> 6) + 8] |= 1 << v85;
      (*(v94 + 16))(v88[6] + *(v94 + 72) * v85, v93, v95);
      *(v88[7] + 8 * v85) = MEMORY[0x1E69E7CC0];
      v96 = v88[2];
      v18 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (!v18)
      {
        v88[2] = v97;
        goto LABEL_49;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      sub_1C44064A8();
      swift_once();
      goto LABEL_65;
    }

LABEL_49:
    v163 = v88;
    v98 = (v88[7] + 8 * v85);
    v169 = v164;
    MEMORY[0x1C6940330]();
    if (*((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    v100 = *(v0 + 208);
    v99 = *(v0 + 216);
    v101 = *(v0 + 200);
    sub_1C4F01748();

    (*(v100 + 8))(v99, v101);
    v166 = v163;
    v168 = sub_1C455B584;
    goto LABEL_27;
  }

  v156 = *(v0 + 200);
  sub_1C44A1764();

  return sub_1C4F029F8();
}