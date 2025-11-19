uint64_t TypeIdentifier.BuiltInTypeIdentifier.selfLoggingTypeName.getter()
{
  v0 = sub_22C90952C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C9094CC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = (v16 - v15);
  v18 = v12[2];
  v19 = sub_22C372164();
  v20(v19);
  v21 = v12[11];
  v22 = sub_22C36BBCC();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D72C00])
  {
    v25 = v12[12];
    v26 = sub_22C36BBCC();
    v27(v26);
    v28 = *v17;
    v29 = swift_projectBox();
    v30 = (*(v3 + 16))(v8, v29, v0);
    v31 = TypeIdentifier.selfLoggingTypeName.getter(v30);
    MEMORY[0x2318B7850](v31);

    sub_22C8236C4();
    (*(v3 + 8))(v8, v0);
  }

  else if (v24 != *MEMORY[0x277D72BE0] && v24 != *MEMORY[0x277D72BC0] && v24 != *MEMORY[0x277D72C18] && v24 != *MEMORY[0x277D72BF8] && v24 != *MEMORY[0x277D72C20] && v24 != *MEMORY[0x277D72BF0] && v24 != *MEMORY[0x277D72C28] && v24 != *MEMORY[0x277D72BB8] && v24 != *MEMORY[0x277D72BD0] && v24 != *MEMORY[0x277D72C10] && v24 != *MEMORY[0x277D72C08] && v24 != *MEMORY[0x277D72C38] && v24 != *MEMORY[0x277D72BD8] && v24 != *MEMORY[0x277D72BE8] && v24 != *MEMORY[0x277D72C30] && v24 != *MEMORY[0x277D72BC8])
  {
    v33 = v12[1];
    v34 = sub_22C36BBCC();
    v35(v34);
    sub_22C375BCC();
  }

  return sub_22C36BBCC();
}

unint64_t TypeIdentifier.MeasurementUnitType.selfLoggingTypeName.getter(char a1)
{
  result = 0x6874676E656CLL;
  switch(a1)
  {
    case 1:
      result = 1936941421;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x656D756C6F76;
      break;
    case 4:
      result = 0x6465657073;
      break;
    case 5:
      result = 0x796772656E65;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x6172656C65636361;
      break;
    case 8:
      result = 0x656C676E61;
      break;
    case 9:
      result = 1634038369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6973726570736964;
      break;
    case 12:
    case 13:
      result = 0x6369727463656C65;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x636E657571657266;
      break;
    case 17:
      result = 0x696666456C657566;
      break;
    case 18:
      result = 0x616E696D756C6C69;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x7265776F70;
      break;
    case 21:
      result = 0x6572757373657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C821E60(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v8 = a2;
  v9 = result;
  if (a4)
  {
    v10 = 0;
    v11 = a3 | a7;
    while ((v11 & 1) == 0)
    {
      if (v8 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 == a5)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v12 = 1 << *(a8 + 32);
      if (v9 >= v12)
      {
        goto LABEL_24;
      }

      v13 = v9 >> 6;
      v14 = *(a8 + 56 + 8 * (v9 >> 6));
      if (((v14 >> v9) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v9 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a8 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v19 = *v18++;
          result = v19;
          v16 += 64;
          ++v17;
          if (v19)
          {
            v9 = __clz(__rbit64(result)) + v16;
            goto LABEL_18;
          }
        }

        v9 = 1 << *(a8 + 32);
      }

LABEL_18:
      ++v10;
      v8 = a6;
      v11 = a7;
      if (v10 >= a4)
      {
        return v9;
      }
    }

    goto LABEL_28;
  }

  sub_22C3AFAB0(result, a2, a3 & 1);
  return v9;
}

uint64_t sub_22C821FBC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C822038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22C57D74C(a2);
  if ((v8 & 1) == 0)
  {
    v9 = *(a2 + 36);
    if (v9 == v7)
    {
      v10 = 1 << *(a2 + 32);
      if (v10 >= result)
      {
        v17[0] = result;
        v17[1] = v7;
        v18 = 0;
        v19 = v10;
        v20 = v9;
        v21 = 0;
        sub_22C821FBC(a1, v17);
        v11 = *a1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);

        sub_22C3AFAB0(v11, v12, v13);
        result = sub_22C3AFAB0(v14, v15, v16);
        *a3 = v11;
        *(a3 + 8) = v12;
        *(a3 + 16) = v13;
        *(a3 + 24) = v14;
        *(a3 + 32) = v15;
        *(a3 + 40) = v16;
        *(a3 + 48) = a2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22C822148()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C90292C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90069C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  (*(v18 + 16))(v22 - v21, v5, v15);
  sub_22C37BBE4();
  v23(v14, v3, v6);
  DecorationSELFLoggerSync = type metadata accessor for QueryDecorationSELFLoggerSync();
  v25 = *(DecorationSELFLoggerSync + 48);
  v26 = *(DecorationSELFLoggerSync + 52);
  swift_allocObject();
  sub_22C37B988();
  sub_22C822348();
  v28 = v27;
  (*(v9 + 8))(v3, v6);
  (*(v18 + 8))(v5, v15);
  *(v1 + 16) = v28;
  sub_22C36CC48();
}

uint64_t type metadata accessor for QueryDecorationSELFLoggerSync()
{
  result = qword_2814310C8;
  if (!qword_2814310C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C822348()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_22C90069C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v22 = v21 - v20;
  v26[3] = v3(v5);
  v26[4] = v1;
  v26[0] = v13;
  sub_22C378A4C(v26, v7 + 16);
  (*(v17 + 16))(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId, v11, v14);
  sub_22C90068C();
  (*(v17 + 8))(v11, v14);
  sub_22C36FF94(v26);
  (*(v17 + 32))(v7 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId, v22, v14);
  v23 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_loggingScope;
  v24 = sub_22C90292C();
  sub_22C36985C(v24);
  (*(v25 + 32))(v7 + v23, v9);
  sub_22C36CC48();
}

_BYTE *sub_22C822514(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C8227F8()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = sub_22C90292C();
    if (v3 <= 0x3F)
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

uint64_t sub_22C8228E4()
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C90069C();
  sub_22C3699B8(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22C90622C();
  sub_22C369914(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_22C370424();
  v8 = swift_task_alloc();
  v9 = sub_22C8236A4(v8);
  *v9 = v10;
  sub_22C36FEE0(v9);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81D78C(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C8229FC()
{
  sub_22C3743E4();
  sub_22C37A458();
  v1 = sub_22C90069C();
  sub_22C3699B8(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22C90622C();
  sub_22C369914(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  sub_22C37FB38();
  v9 = swift_task_alloc();
  v10 = sub_22C8236A4(v9);
  *v10 = v11;
  sub_22C823774(v10);
  sub_22C373AE0();

  return sub_22C81D474(v12, v13, v14, v15, v0, v16, v17);
}

uint64_t sub_22C822B2C()
{
  sub_22C36BA7C();
  v1 = sub_22C90069C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_22C90622C();
  sub_22C369824(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_22C822C5C()
{
  sub_22C388250();
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C90069C();
  sub_22C3699B8(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22C90622C();
  sub_22C369914(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_22C370424();
  v8 = swift_task_alloc();
  v9 = sub_22C8236A4(v8);
  *v9 = v10;
  sub_22C36FEE0(v9);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81D134(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C822D74()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  v2 = *(v1 + 80);
  sub_22C3834DC();
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  sub_22C823774(v4);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81CD10(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C822E34()
{
  sub_22C3743E4();
  v1 = sub_22C37B45C();
  sub_22C369914(v1);
  v3 = (*(v2 + 80) + 42) & ~*(v2 + 80);
  sub_22C370424();
  v4 = *(v0 + 41);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C82367C;
  sub_22C373AE0();

  return sub_22C81CAA0(v9, v10, v11, v12, v5, v4, v13);
}

uint64_t sub_22C822F1C()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  v2 = *(v1 + 80);
  sub_22C3834DC();
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  sub_22C823774(v4);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81C834(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C822FDC()
{
  sub_22C36BA18();
  v1 = sub_22C37B45C();
  sub_22C369914(v1);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  sub_22C37FB38();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C5C0(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C8230BC()
{
  sub_22C36BA18();
  v1 = sub_22C37B45C();
  sub_22C369914(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  sub_22C37FB38();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C348(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_22C823198()
{
  sub_22C36BA18();
  v1 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C3699B8(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22C90622C();
  sub_22C369914(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  sub_22C37FB38();
  v9 = *(v0 + 48);
  v10 = swift_task_alloc();
  v11 = sub_22C8236A4(v10);
  *v11 = v12;
  v11[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C372034();

  return sub_22C81C0B8(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_22C8232DC()
{
  v2 = sub_22C37B45C();
  sub_22C369824(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 2);
  swift_unknownObjectRelease();
  v10 = *(v1 + 4);

  v0(*(v1 + 5));
  (*(v4 + 8))(&v1[v6], v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_22C8233AC()
{
  sub_22C388250();
  sub_22C3743E4();
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  v2 = *(v1 + 80);
  sub_22C3834DC();
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  sub_22C823774(v4);
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C81BD64(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22C82346C()
{
  sub_22C369980();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C823558()
{
  v0 = sub_22C37B45C();
  sub_22C369914(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  sub_22C370424();
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v4[1] = sub_22C82367C;
  sub_22C373AE0();

  return sub_22C81BB00(v6, v7, v8, v9, v10);
}

uint64_t sub_22C82362C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C8236C4()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C8236DC()
{
}

uint64_t sub_22C823700@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000002CLL, (a1 - 32) | 0x8000000000000000, (v1 - 112));
}

uint64_t sub_22C823724@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001ELL, (a1 - 32) | 0x8000000000000000, (v1 - 72));
}

uint64_t sub_22C823748()
{
  v2 = *v0;

  return swift_projectBox();
}

uint64_t sub_22C823760()
{
  v1 = *(v0 - 224);
  v2 = *(*(v0 - 232) + 8);
  return *(v0 - 328);
}

uint64_t sub_22C8237B8()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorationPostProcessing.retrieveDynamicEnumerationEntities";
  *(result + 24) = 64;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000022;
  *(result + 48) = 0x800000022C936FD0;
  *(result + 56) = 0xD000000000000019;
  *(result + 64) = 0x800000022C937000;
  qword_27D9C05A0 = result;
  return result;
}

uint64_t sub_22C82385C()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.callConfigurableToolRetrieval";
  *(result + 24) = 44;
  *(result + 32) = 2;
  *(result + 40) = 0xD00000000000001DLL;
  *(result + 48) = 0x800000022C936F30;
  *(result + 56) = 0xD000000000000020;
  *(result + 64) = 0x800000022C936F50;
  qword_27D9C05A8 = result;
  return result;
}

void *sub_22C823900()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  result = sub_22C36B7E4(v1, "QueryDecorator.callContextRetriever");
  result[5] = 0xD000000000000014;
  result[6] = v0;
  result[7] = 0xD000000000000017;
  result[8] = 0x800000022C936EE0;
  qword_281432A58 = result;
  return result;
}

void *sub_22C823994()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.jointResolverToolProcessing");
  result = sub_22C373AF4(v1, 27);
  qword_27D9C05B0 = result;
  return result;
}

double sub_22C823A0C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  v2 = sub_22C36B7E4(v1, "QueryDecorator.callSpanMatcher");
  result = 5.04292743e223;
  *(v2 + 40) = xmmword_22C927FF0;
  *(v2 + 56) = 0xD000000000000012;
  *(v2 + 64) = v0;
  qword_27D9C05B8 = v2;
  return result;
}

uint64_t sub_22C823A94()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.callToolRetrieval";
  *(result + 24) = 32;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000011;
  *(result + 48) = 0x800000022C936DC0;
  *(result + 56) = 0xD000000000000013;
  *(result + 64) = 0x800000022C936DE0;
  qword_27D9C05C0 = result;
  return result;
}

void *sub_22C823B38()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  result = sub_22C36B7E4(v1, "QueryDecorator.getContextForToolRetrieval");
  result[5] = 0xD00000000000001ALL;
  result[6] = v0;
  result[7] = 0xD000000000000021;
  result[8] = 0x800000022C936D60;
  qword_27D9C05C8 = result;
  return result;
}

double sub_22C823BEC()
{
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.queryDecorationCollection");
  *(v1 + 40) = xmmword_22C928000;
  result = 1.42733068e60;
  *(v1 + 56) = xmmword_22C928010;
  qword_281432B18 = v1;
  return result;
}

double sub_22C823C60()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v1 = swift_allocObject();
  v2 = sub_22C36B7E4(v1, "QueryDecorator.queryDecoratorCollectionToolbox");
  *(v2 + 40) = 0xD00000000000001FLL;
  *(v2 + 48) = v0;
  result = 1.42733068e60;
  *(v2 + 56) = xmmword_22C928010;
  qword_27D9C05D0 = v2;
  return result;
}

uint64_t sub_22C823CE8()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.queryDecoratorCollectionXPCCollection";
  *(result + 24) = 52;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000025;
  *(result + 48) = 0x800000022C936C40;
  *(result + 56) = 0xD000000000000014;
  *(result + 64) = 0x800000022C936C70;
  qword_281432B08 = result;
  return result;
}

uint64_t sub_22C823D8C()
{
  type metadata accessor for QueryDecorationSignpost();
  result = swift_allocObject();
  *(result + 16) = "QueryDecorator.backgroundToolRetrievalTotalTime";
  *(result + 24) = 47;
  *(result + 32) = 2;
  *(result + 40) = 0xD000000000000020;
  *(result + 48) = 0x800000022C936BD0;
  *(result + 56) = 0xD000000000000020;
  *(result + 64) = 0x800000022C936BD0;
  qword_27D9C05D8 = result;
  return result;
}

void *sub_22C823E1C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.toolRetrievalWaitTime");
  result = sub_22C373AF4(v1, 21);
  qword_27D9C05E0 = result;
  return result;
}

void *sub_22C823E94()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.backgroundEntityHydrationTotalTime");
  result = sub_22C373AF4(v1, 34);
  qword_27D9C05E8 = result;
  return result;
}

void *sub_22C823F0C()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.entityHydrationTotalTime");
  result = sub_22C373AF4(v1, 24);
  qword_27D9C05F0 = result;
  return result;
}

void *sub_22C823F84()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.tupleBuildingTime");
  result = sub_22C373AF4(v1, 17);
  qword_27D9C05F8 = result;
  return result;
}

void *sub_22C823FFC()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.tupleRankingTime");
  result = sub_22C373AF4(v1, 16);
  qword_27D9C0600 = result;
  return result;
}

void *sub_22C824074()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.toolSelectionAndSubstitutionTime");
  result = sub_22C373AF4(v1, 32);
  qword_27D9C0608 = result;
  return result;
}

void *sub_22C8240EC()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.appPreLaunchSelectionTime");
  result = sub_22C373AF4(v1, 25);
  qword_27D9C0610 = result;
  return result;
}

void *sub_22C824164()
{
  sub_22C377FD4();
  type metadata accessor for QueryDecorationSignpost();
  sub_22C369F54();
  v0 = swift_allocObject();
  v1 = sub_22C36B7E4(v0, "QueryDecorator.appPreLaunchTime");
  result = sub_22C373AF4(v1, 16);
  qword_27D9C0618 = result;
  return result;
}

uint64_t sub_22C8241DC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t QueryDecorationCoreAnalyticsEvent.eventName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t QueryDecorationCoreAnalyticsEvent.prefix.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22C824290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22C8242E8(v4);
}

uint64_t sub_22C8242BC()
{
  sub_22C38C1D4();
  v1 = *(v0 + 48);
}

uint64_t sub_22C8242E8(uint64_t a1)
{
  sub_22C371E6C();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *sub_22C824368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  swift_beginAccess();
  v4[6] = 0;
  return v4;
}

uint64_t sub_22C8243B8(uint64_t a1)
{
  sub_22C371E6C();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *QueryDecorationCoreAnalyticsEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t QueryDecorationCoreAnalyticsEvent.__deallocating_deinit()
{
  QueryDecorationCoreAnalyticsEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t QueryDecorationSignpost.id.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t QueryDecorationSignpost.analytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22C4722FC(v2, v3);
}

uint64_t *QueryDecorationSignpost.deinit()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22C472340(v0[5], v0[6]);
  return v0;
}

uint64_t QueryDecorationSignpost.__deallocating_deinit()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22C472340(v0[5], v0[6]);
  sub_22C369F54();

  return swift_deallocClassInstance();
}

uint64_t sub_22C8244E8(void *a1)
{
  type metadata accessor for QueryDecorationAnalytics();
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_22C38C1D4();
  v6 = a1[6];

  static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v2, v3, v4, v5, v6);
}

uint64_t sub_22C824580()
{
  sub_22C3727F4();
  DecorationNull = type metadata accessor for QueryDecorationNullSignposter.QueryDecorationNullActiveSignpost();
  result = swift_allocObject();
  v0[3] = DecorationNull;
  v0[4] = &off_283FC1338;
  *v0 = result;
  return result;
}

uint64_t QueryDecorationCapturingSignposter.signpostEvents.getter()
{
  sub_22C38C1D4();
  v1 = *(v0 + 16);
}

uint64_t QueryDecorationCapturingSignposter.signpostEvents.setter(uint64_t a1)
{
  sub_22C371E6C();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t QueryDecorationCapturingSignposter.events.getter()
{
  sub_22C38C1D4();
  v1 = *(v0 + 24);
}

uint64_t QueryDecorationCapturingSignposter.events.setter(uint64_t a1)
{
  sub_22C371E6C();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t QueryDecorationCapturingSignposter.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  QueryDecorationCapturingSignposter.init()();
  return v3;
}

void *QueryDecorationCapturingSignposter.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v1;
  v0[4] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_22C90B0FC();
  return v0;
}

uint64_t QueryDecorationCapturingSignposter.begin(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C3727F4();
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v5);
  v7 = DecorationCapturing - 8;
  v8 = *(*(DecorationCapturing - 8) + 64);
  MEMORY[0x28223BE20](DecorationCapturing);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for QueryDecorationCapturingSignposter.CapturingSignpostStateImpl(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = sub_22C8249B4(v3, a1);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v17 = *(v7 + 32);
  v18 = sub_22C90069C();
  sub_22C36985C(v18);
  (*(v19 + 16))(&v10[v17], v14 + v16);
  v20 = *(v7 + 36);

  sub_22C90B0CC();
  *v10 = 0;
  *(v10 + 1) = v15;
  sub_22C82495C();
  result = sub_22C824AA4(v10);
  v1[3] = v11;
  v1[4] = &off_283FC1388;
  *v1 = v14;
  return result;
}

uint64_t sub_22C8249B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90069C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_owner) = a1;
  *(v2 + 16) = a2;
  sub_22C90068C();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId, v9, v5);
  return v2;
}

uint64_t sub_22C824AA4(uint64_t a1)
{
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  (*(*(DecorationCapturing - 8) + 8))(a1, DecorationCapturing);
  return a1;
}

uint64_t sub_22C824B00()
{
  v1 = sub_22C90B10C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  v7 = DecorationCapturing - 8;
  v8 = *(*(DecorationCapturing - 8) + 64);
  MEMORY[0x28223BE20](DecorationCapturing);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_owner);
  v12 = *(v0 + 16);
  v13 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v14 = *(v7 + 32);
  v15 = sub_22C90069C();
  (*(*(v15 - 8) + 16))(&v10[v14], v0 + v13, v15);
  (*(v2 + 16))(v5, v11 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposter_clock, v1);
  v16 = *(v7 + 36);

  sub_22C90B0CC();
  (*(v2 + 8))(v5, v1);
  *v10 = 1;
  *(v10 + 1) = v12;
  sub_22C82495C();
  return sub_22C824AA4(v10);
}

uint64_t sub_22C824CD0()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_instanceId;
  v3 = sub_22C90069C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733226CapturingSignpostStateImpl_owner);

  return v0;
}

uint64_t sub_22C824D84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22C3D1040();
  v4 = *(*(a1 + 16) + 16);
  sub_22C3D1204(v4);
  v5 = *(a1 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0) - 8);
  sub_22C82585C(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *(a1 + 16) = v5;
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSignposter.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t QueryDecorationCapturingSignposter.SignpostEvent.instanceId.getter()
{
  v2 = sub_22C3727F4();
  v3 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v2) + 24);
  v4 = sub_22C90069C();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t QueryDecorationCapturingSignposter.SignpostEvent.timestamp.getter()
{
  v2 = sub_22C3727F4();
  v3 = *(type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(v2) + 28);
  v4 = sub_22C90B0EC();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t QueryDecorationCapturingSignposter.emitEvent(event:)()
{
  swift_beginAccess();

  MEMORY[0x2318B7AA0](v1);
  sub_22C3D3460(*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_22C90A65C();
  return swift_endAccess();
}

uint64_t QueryDecorationCapturingSignposter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime34QueryDecorationCapturingSignposter_clock;
  v4 = sub_22C90B10C();
  sub_22C36985C(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t QueryDecorationCapturingSignposter.__deallocating_deinit()
{
  QueryDecorationCapturingSignposter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_22C82519C()
{
  result = qword_27D9C0630;
  if (!qword_27D9C0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0630);
  }

  return result;
}

uint64_t sub_22C825364()
{
  result = sub_22C90B10C();
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

uint64_t sub_22C8253FC()
{
  result = sub_22C90B0EC();
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

uint64_t sub_22C825518()
{
  result = sub_22C90B10C();
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

uint64_t sub_22C8255FC()
{
  result = sub_22C90069C();
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

_BYTE *storeEnumTagSinglePayload for QueryDecorationCapturingSignposter.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C8257A0()
{
  type metadata accessor for QueryDecorationSignpost();
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    result = sub_22C90B0EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C82585C(uint64_t a1, uint64_t a2)
{
  DecorationCapturing = type metadata accessor for QueryDecorationCapturingSignposter.SignpostEvent(0);
  (*(*(DecorationCapturing - 8) + 16))(a2, a1, DecorationCapturing);
  return a2;
}

uint64_t sub_22C8258C8(char a1, int a2, id a3)
{
  if (a3)
  {
    v5 = [a3 domain];
    v6 = sub_22C90A11C();
    v8 = v7;

    MEMORY[0x2318B7850](46, 0xE100000000000000);
    [a3 code];
    v9 = sub_22C90B47C();
    MEMORY[0x2318B7850](v9);

    v10 = v8;
  }

  else
  {
    v6 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = 0x4670757465534451;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (v11)
  {
    v13 = 0x800000022C937070;
  }

  else
  {
    v13 = 0xED000064656C6961;
  }

  v14 = sub_22C903CEC();
  static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(v12, v13, v14, v15, v6, v10);
}

uint64_t sub_22C825A20(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_22C90A64C();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_22C9114A0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C825AE0(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_22C90A64C();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

uint64_t sub_22C825B64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      sub_22C3A5908(a3, a4);
      v6 = sub_22C90A64C();
      *(v6 + 16) = a2;
      v7 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v6 + i) = v5;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_22C825BF4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
      v4 = sub_22C90A64C();
      *(v4 + 16) = v2;
      v5 = *(sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_22C3DB138(v3, i, &qword_27D9BB670, &unk_22C90FA40);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_22C36DD28(v3, &qword_27D9BB670, &unk_22C90FA40);
    return v4;
  }

  return result;
}

uint64_t sub_22C825CFC()
{
  sub_22C369980();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_22C9063DC();
  v0[10] = v4;
  sub_22C3699B8(v4);
  v0[11] = v5;
  v7 = *(v6 + 64) + 15;
  v0[12] = swift_task_alloc();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C825DAC()
{
  sub_22C36FB38();
  v1 = v0[9];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  if (qword_27D9BA778 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  (*(v3 + 8))(qword_27D9C05F0, v2, v3);
  v5 = sub_22C903E4C();
  v0[13] = v5;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22C825EC8;
  v7 = v0[9];

  return sub_22C826130(v5, v7);
}

uint64_t sub_22C825EC8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *(v3 + 104);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C825FCC()
{
  sub_22C36FB38();
  v1 = v0[15];
  v2 = v0[12];
  sub_22C90400C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  v5 = sub_22C37B204(v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = sub_22C36FB44();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_22C366000, v3, v2, "Entity Hydration: checked %ld contextual entities for hydration", v7, 0xCu);
    sub_22C3699EC();
  }

  else
  {
    v8 = v0[15];
  }

  v9 = v0[15];
  v11 = v0[7];
  v10 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_22C903E5C();
  sub_22C903E3C();
  v12 = v0[5];
  v13 = v0[6];
  sub_22C374168(v0 + 2, v12);
  (*(v13 + 8))(v12, v13);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();

  return v14();
}

uint64_t sub_22C826130(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_22C9063DC();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8261F0, 0, 0);
}

uint64_t sub_22C8261F0()
{
  sub_22C3743E4();
  sub_22C3DB138(*(v0 + 112) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22QueryDecorationContext_toolExecutionSession, v0 + 56, &qword_27D9C06A0, &qword_22C929950);
  if (*(v0 + 80))
  {
    v25 = *(v0 + 104);
    sub_22C36C730((v0 + 56), v0 + 16);
    v1 = sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *(v2 + 16) = v25;
    *(v2 + 32) = v0 + 16;
    v3 = sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    v4 = *(MEMORY[0x277D858E8] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 152) = v5;
    *v5 = v6;
    v5[1] = sub_22C826420;

    return MEMORY[0x282200600](v0 + 96, v1, v3, 0, 0, &unk_22C9283E8, v2, v1);
  }

  else
  {
    v7 = *(v0 + 136);
    sub_22C36DD28(v0 + 56, &qword_27D9C06A0, &qword_22C929950);
    sub_22C90400C();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AADC();
    if (sub_22C37B204(v9))
    {
      v10 = sub_22C36D240();
      sub_22C36C890(v10);
      sub_22C36BB14(&dword_22C366000, v11, v12, "Entity Hydration: Unable to perform entity hydration as toolExecutionSession was nil.");
      sub_22C372FB0();
    }

    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);

    v17 = *(v14 + 8);
    v18 = sub_22C36BAFC();
    v19(v18);

    v20 = *(v0 + 104);
    v21 = *(v0 + 136);

    v22 = sub_22C385830();

    return v23(v22);
  }
}

uint64_t sub_22C826420()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C826520()
{
  sub_22C369980();
  v1 = v0[12];
  sub_22C36FF94(v0 + 2);
  v2 = v0[17];

  v3 = sub_22C385830();

  return v4(v3);
}

uint64_t sub_22C826584(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v79 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v75 = &v70[-v11];
  v77 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  v12 = sub_22C36985C(v77);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v76 = (v15 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v70[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v70[-v21];
  v23 = sub_22C90399C();
  v24 = sub_22C369824(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v73 = (v29 - v30);
  v32 = MEMORY[0x28223BE20](v31);
  v74 = &v70[-v33];
  MEMORY[0x28223BE20](v32);
  v35 = &v70[-v34];
  sub_22C3DB138(a1, v22, &qword_27D9BB670, &unk_22C90FA40);
  v36 = sub_22C370B74(v22, 1, v23);
  v78 = v2;
  if (v36 == 1)
  {
    sub_22C36DD28(v22, &qword_27D9BB670, &unk_22C90FA40);
    sub_22C90400C();
    sub_22C3DB138(a1, v20, &qword_27D9BB670, &unk_22C90FA40);
    v40 = sub_22C9063CC();
    v41 = sub_22C90AACC();
    if (os_log_type_enabled(v40, v41))
    {
      v43 = sub_22C36FB44();
      v44 = sub_22C370060();
      v80 = v44;
      *v43 = 136315138;
      sub_22C3DB138(v20, v76, &qword_27D9BB670, &unk_22C90FA40);
      v45 = sub_22C90A1AC();
      v47 = v46;
      sub_22C36DD28(v20, &qword_27D9BB670, &unk_22C90FA40);
      v48 = sub_22C36F9F4(v45, v47, &v80);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_22C366000, v40, v41, "Entity Hydration: skipHydrating missing entity or shouldHydrate result. Hydration will be skipped for %s.", v43, 0xCu);
      sub_22C36FF94(v44);
      sub_22C3699EC();
      sub_22C372FB0();

      (*(v79 + 8))(v9, v78);
    }

    else
    {

      sub_22C36DD28(v20, &qword_27D9BB670, &unk_22C90FA40);
      (*(v79 + 8))(v9, v2);
    }

    v49 = 1;
  }

  else
  {
    v72 = v26;
    (*(v26 + 32))(v35, v22, v23);
    if (qword_27D9BA7A8 != -1)
    {
      swift_once();
    }

    v37 = qword_27D9C0690;
    v38 = unk_27D9C0698;
    sub_22C374168(qword_27D9C0678, qword_27D9C0690);
    v39 = (*(v38 + 16))(v35, v37, v38);
    v51 = v39;
    v52 = v72;
    if (v39)
    {
      v53 = v75;
      sub_22C90400C();
      v54 = *(v52 + 16);
      v55 = v74;
      v54(v74, v35, v23);
      v56 = sub_22C9063CC();
      v57 = sub_22C90AACC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = sub_22C36FB44();
        v76 = sub_22C370060();
        v80 = v76;
        *v58 = 136315138;
        v71 = v57;
        v54(v73, v55, v23);
        v59 = sub_22C90A1AC();
        v61 = v60;
        LODWORD(v77) = v51;
        v62 = *(v52 + 8);
        (v62)(v55, v23);
        v63 = sub_22C36F9F4(v59, v61, &v80);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_22C366000, v56, v71, "Entity Hydration: shouldHydrate result dictates that Hydration will be performed for %s.", v58, 0xCu);
        sub_22C36FF94(v76);
        sub_22C3699EC();
        sub_22C372FB0();

        (*(v79 + 8))(v75, v78);
        v64 = sub_22C371510();
        v62(v64);
        LOBYTE(v51) = v77;
      }

      else
      {

        v68 = *(v52 + 8);
        (v68)(v55, v23);
        (*(v79 + 8))(v53, v78);
        v69 = sub_22C371510();
        v68(v69);
      }
    }

    else
    {
      v65 = *(v72 + 8);
      v66 = sub_22C371510();
      v67(v66);
    }

    v49 = v51 ^ 1;
  }

  return v49 & 1;
}

uint64_t sub_22C826BC0()
{
  sub_22C369980();
  v0[33] = v1;
  v0[34] = v2;
  v0[32] = v3;
  v4 = sub_22C903E7C();
  v0[35] = v4;
  sub_22C3699B8(v4);
  v0[36] = v5;
  v0[37] = *(v6 + 64);
  v0[38] = swift_task_alloc();
  v7 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v0[39] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v0[40] = v8;
  sub_22C3699B8(v8);
  v0[41] = v9;
  v11 = *(v10 + 64) + 15;
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C826D10()
{
  sub_22C3DB138(*(v0 + 272), v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
  if (*(v0 + 80))
  {
    sub_22C36C730((v0 + 56), v0 + 16);
    sub_22C378A4C(v0 + 16, v0 + 96);
    sub_22C3A5908(&qword_27D9C06C0, &qword_22C928430);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 344);
      sub_22C90400C();
      v2 = sub_22C9063CC();
      v3 = sub_22C90AADC();
      if (sub_22C37B204(v3))
      {
        v4 = sub_22C36D240();
        sub_22C36C890(v4);
        sub_22C36BB14(&dword_22C366000, v5, v6, "Entity Hydration: QueryDecorationHydratedEntityCache was QueryDecorationFallbackNoOpCache. Skipping nonBlocking hydration.");
        sub_22C372FB0();
      }

      v7 = *(v0 + 344);
      v8 = *(v0 + 320);
      v9 = *(v0 + 328);

      v10 = *(v9 + 8);
      v11 = sub_22C36BAFC();
      v12(v11);
      sub_22C36FF94((v0 + 16));
    }

    else
    {
      v25 = *(v0 + 264);
      v26 = v25[10];
      v27 = v25[11];
      sub_22C374168(v25 + 7, v26);
      if (qword_27D9BA770 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 304);
      v28 = *(v0 + 312);
      v30 = *(v0 + 288);
      v51 = *(v0 + 296);
      v31 = *(v0 + 280);
      v33 = *(v0 + 256);
      v32 = *(v0 + 264);
      (*(v27 + 8))(qword_27D9C05E8, v26, v27);
      v34 = sub_22C90416C();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v37 = sub_22C90417C();
      sub_22C90A75C();
      sub_22C36A748();
      sub_22C36C640(v38, v39, v40, v41);
      sub_22C378A4C(v0 + 16, v0 + 176);
      (*(v30 + 16))(v29, v33, v31);
      sub_22C378A4C(v0 + 136, v0 + 216);
      v42 = (*(v30 + 80) + 88) & ~*(v30 + 80);
      v43 = swift_allocObject();
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      *(v43 + 4) = v37;
      *(v43 + 5) = v32;
      sub_22C36C730((v0 + 176), (v43 + 48));
      (*(v30 + 32))(&v43[v42], v29, v31);
      sub_22C36C730((v0 + 216), &v43[(v51 + v42 + 7) & 0xFFFFFFFFFFFFFFF8]);

      sub_22C82B8E4();
      sub_22C36FF94((v0 + 136));
      sub_22C36FF94((v0 + 16));
    }
  }

  else
  {
    v13 = *(v0 + 336);
    sub_22C36DD28(v0 + 56, &qword_27D9C01C8, &qword_22C9298B0);
    sub_22C90400C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v19 = *(v0 + 320);
    if (v16)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v20, v21, "Entity Hydration:: QueryDecorationHydratedEntityCache was not initialised. Skipping nonBlocking hydration.");
      sub_22C3699EC();
    }

    v22 = *(v18 + 8);
    v23 = sub_22C36BAFC();
    v24(v23);
  }

  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v47 = *(v0 + 304);
  v46 = *(v0 + 312);

  v48 = sub_22C385830();

  return v49(v48);
}

uint64_t sub_22C8270EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D50];
  v3 = sub_22C90415C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C827160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = sub_22C903E7C();
  v8[6] = v9;
  v10 = *(v9 - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v11 = *(*(sub_22C3A5908(&qword_27D9C06C8, &qword_22C929790) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9C06D0, &qword_22C929880) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v8[13] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = sub_22C9063DC();
  v8[15] = v15;
  v16 = *(v15 - 8);
  v8[16] = v16;
  v17 = *(v16 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C827364, 0, 0);
}

uint64_t sub_22C827364()
{
  v1 = v0[20];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (sub_22C37B204(v3))
  {
    v4 = sub_22C36D240();
    sub_22C36C890(v4);
    sub_22C36BB14(&dword_22C366000, v5, v6, "Entity Hydration: Triggering in background");
    sub_22C372FB0();
  }

  v7 = v0[20];
  v8 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v13 = v0[2];

  v14 = *(v9 + 8);
  v0[21] = v14;
  v15 = sub_22C36BAFC();
  v14(v15);
  sub_22C908D2C();
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v19);

  sub_22C83CBDC(v20, 0x747865746E6F63, 0xE700000000000000, v12, v11);
  v21 = sub_22C370B74(v11, 1, v10);
  v22 = v0[12];
  if (v21 == 1)
  {
    v23 = v0[19];
    sub_22C36DD28(v22, &qword_27D9C06D0, &qword_22C929880);
    sub_22C90400C();
    v24 = sub_22C9063CC();
    v25 = sub_22C90AADC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[19];
    v28 = v0[15];
    v29 = v0[16];
    if (v26)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v30, v31, "Entity Hydration: Unable to create cache key. Background hydration will not run.");
      sub_22C3699EC();
    }

    v32 = sub_22C36BAFC();
    v14(v32);
    sub_22C829EF4();

    sub_22C369C50();

    return v33();
  }

  else
  {
    v36 = v0[8];
    v35 = v0[9];
    v37 = v0[6];
    v38 = v0[7];
    v39 = v0[3];
    v40 = v0[4];
    v41 = v0[2];
    sub_22C3DB08C(v22, v0[14], &qword_27D9C0240, &qword_22C926718);
    v42 = v39[3];
    v43 = v39[4];
    sub_22C374168(v39, v42);
    (*(v38 + 16))(v35, v40, v37);
    v44 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v45 = swift_allocObject();
    v0[22] = v45;
    (*(v38 + 32))(v45 + v44, v35, v37);
    *(v45 + ((v36 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v46 = *(v43 + 56);

    v53 = (v46 + *v46);
    v47 = v46[1];
    swift_task_alloc();
    sub_22C36CC90();
    v0[23] = v48;
    *v48 = v49;
    v48[1] = sub_22C827748;
    v50 = v0[14];
    v51 = v0[10];
    v52 = v0[6];

    return v53(v51, v50, &unk_22C928450, v45, v52, v42, v43);
  }
}

uint64_t sub_22C827748()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = sub_22C8279B4;
  }

  else
  {
    v10 = v3[22];
    (*(v3[7] + 8))(v3[10], v3[6]);

    v9 = sub_22C82786C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C82786C()
{
  sub_22C3743E4();
  v4 = *(v0 + 144);
  sub_22C90400C();
  sub_22C9063CC();
  v5 = sub_22C90AACC();
  if (sub_22C37B204(v5))
  {
    v6 = sub_22C36D240();
    sub_22C36C890(v6);
    sub_22C36BB14(&dword_22C366000, v7, v8, "Entity Hydration: Background hydration complete");
    sub_22C372FB0();
  }

  sub_22C3829D0();
  v9 = sub_22C36BAFC();
  v3(v9);
  v10 = v2[4];
  sub_22C374168(v2, v2[3]);
  v11 = *(v10 + 8);
  v12 = sub_22C36BAFC();
  v13(v12);
  sub_22C36DD28(v1, &qword_27D9C0240, &qword_22C926718);
  sub_22C829EF4();

  sub_22C369C50();

  return v14();
}

uint64_t sub_22C8279B4()
{
  sub_22C3743E4();
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);

  sub_22C90400C();
  v7 = v4;
  v8 = sub_22C9063CC();
  v9 = sub_22C90AADC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 192);
  if (v10)
  {
    v1 = sub_22C36FB44();
    v2 = swift_slowAlloc();
    *v1 = 138412290;
    v12 = v11;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v2 = v13;
    _os_log_impl(&dword_22C366000, v8, v9, "Entity Hydration: Error while caching hydrated context: %@", v1, 0xCu);
    sub_22C36DD28(v2, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  else
  {
  }

  v14 = *(v0 + 128) + 8;
  (*(v0 + 168))(*(v0 + 136), *(v0 + 120));
  v15 = *(v0 + 144);
  sub_22C90400C();
  sub_22C9063CC();
  v16 = sub_22C90AACC();
  if (sub_22C37B204(v16))
  {
    v17 = sub_22C36D240();
    sub_22C36C890(v17);
    sub_22C36BB14(&dword_22C366000, v18, v19, "Entity Hydration: Background hydration complete");
    sub_22C372FB0();
  }

  sub_22C3829D0();
  v20 = sub_22C36BAFC();
  v3(v20);
  v21 = v2[4];
  sub_22C374168(v2, v2[3]);
  v22 = *(v21 + 8);
  v23 = sub_22C36BAFC();
  v24(v23);
  sub_22C36DD28(v1, &qword_27D9C0240, &qword_22C926718);
  sub_22C829EF4();

  sub_22C369C50();

  return v25();
}

uint64_t sub_22C827C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22C827C2C, 0, 0);
}

uint64_t sub_22C827C2C()
{
  sub_22C369980();
  v1 = v0[3];
  v2 = sub_22C903E4C();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22C827CCC;
  v4 = v0[4];

  return sub_22C826130(v2, v4);
}

uint64_t sub_22C827CCC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 56) = v8;

  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C827DD0()
{
  sub_22C36FB38();
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  sub_22C903E5C();
  sub_22C903E3C();
  sub_22C369C50();

  return v4();
}

uint64_t sub_22C827E44()
{
  v0 = type metadata accessor for FullPlannerPreferences();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullPlannerPreferences.init()(v3);
  qword_27D9C0690 = type metadata accessor for FullPlannerHydrationArbiter();
  unk_27D9C0698 = &protocol witness table for FullPlannerHydrationArbiter;
  v4 = sub_22C36D548(qword_27D9C0678);
  return sub_22C3E17AC(v3, v4);
}

uint64_t sub_22C827EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_22C9063DC();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9C06B0, &qword_22C9283F8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = sub_22C3A5908(&qword_27D9C06B8, &qword_22C928400);
  v4[24] = v10;
  v11 = *(v10 - 8);
  v4[25] = v11;
  v12 = *(v11 + 64) + 15;
  v4[26] = swift_task_alloc();
  v13 = sub_22C90399C();
  v4[27] = v13;
  v14 = *(v13 - 8);
  v4[28] = v14;
  v4[29] = *(v14 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9C02F8, &unk_22C927B20);
  v4[35] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v17 = *(*(sub_22C3A5908(&qword_27D9C04B8, &unk_22C927B30) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v18 = *(sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40) - 8);
  v4[39] = v18;
  v19 = *(v18 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C828224, 0, 0);
}

uint64_t sub_22C828224()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 216);
  v3 = *(v0 + 120);
  sub_22C36A748();
  sub_22C36C640(v4, v5, v6, v7);
  v8 = *(v3 + 16);
  v9 = sub_22C825BF4(v1, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_29:
    sub_22C8876B0(v9);
    v9 = v61;
  }

  v10 = 0;
  v11 = *(v0 + 224);
  v73 = (v11 + 16);
  v12 = (v11 + 32);
  v70 = (v11 + 8);
  v71 = (v11 + 32);
  v13 = *(v0 + 232) + 7;
  *(v0 + 352) = v9;
  v63 = *(v0 + 312);
  v64 = v13;
  v72 = *(v0 + 280);
  v66 = v9;
  v67 = v8;
  v65 = v11;
  while (1)
  {
    if (v10 == v8)
    {
      v14 = 1;
      v15 = v8;
    }

    else
    {
      if (v10 >= v8)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      v17 = *(v0 + 288);
      v16 = *(v0 + 296);
      v18 = *(v0 + 216);
      v19 = *(v0 + 120) + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10;
      v20 = *(v72 + 48);
      *v17 = v10;
      (*(v11 + 16))(v17 + v20, v19, v18);
      sub_22C3DB08C(v17, v16, &qword_27D9C02F8, &unk_22C927B20);
      v14 = 0;
    }

    v22 = *(v0 + 296);
    v21 = *(v0 + 304);
    v23 = *(v0 + 280);
    sub_22C36C640(v22, v14, 1, v23);
    sub_22C3DB08C(v22, v21, &qword_27D9C04B8, &unk_22C927B30);
    if (sub_22C370B74(v21, 1, v23) == 1)
    {
      break;
    }

    v74 = v15;
    v24 = *(v0 + 304);
    v25 = *(v0 + 128);
    v26 = *v24;
    v27 = *v12;
    (*v12)(*(v0 + 272), &v24[*(v72 + 48)], *(v0 + 216));
    sub_22C83C4EC();
    v28 = *(v0 + 216);
    if (v29)
    {
      v30 = *(v0 + 264);
      v31 = *(v0 + 272);
      v68 = *(v0 + 176);
      v69 = *(v0 + 168);
      v32 = *(v0 + 136);
      v33 = sub_22C90A75C();
      sub_22C36A748();
      sub_22C36C640(v34, v35, v36, v33);
      (*(v11 + 16))(v30, v31, v28);
      sub_22C378A4C(v32, v0 + 16);
      v37 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v38 = (v64 + v37) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      v40 = (v39 + 16);
      *(v39 + 24) = 0;
      v27(v39 + v37, v30, v28);
      *(v39 + v38) = v26;
      sub_22C36C730((v0 + 16), v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_22C3DB138(v68, v69, &qword_27D9BBB48, &qword_22C910F00);
      LODWORD(v37) = sub_22C370B74(v69, 1, v33);

      v41 = *(v0 + 168);
      if (v37 == 1)
      {
        sub_22C36DD28(*(v0 + 168), &qword_27D9BBB48, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v33 - 8) + 8))(v41, v33);
      }

      v10 = v74;
      if (*v40)
      {
        v44 = *(v39 + 24);
        v45 = *v40;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = sub_22C90A6DC();
        v48 = v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v8 = v67;
      v49 = **(v0 + 112);
      v50 = swift_allocObject();
      *(v50 + 16) = &unk_22C928410;
      *(v50 + 24) = v39;
      sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
      v51 = v48 | v46;
      if (v48 | v46)
      {
        v51 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v46;
        *(v0 + 80) = v48;
      }

      v52 = *(v0 + 272);
      v53 = *(v0 + 216);
      v54 = *(v0 + 176);
      *(v0 + 88) = 1;
      *(v0 + 96) = v51;
      *(v0 + 104) = v49;
      swift_task_create();

      sub_22C36DD28(v54, &qword_27D9BBB48, &qword_22C910F00);
      (*v70)(v52, v53);
      v11 = v65;
      v9 = v66;
      v12 = v71;
    }

    else
    {
      v42 = *(v0 + 344);
      v43 = *(v0 + 272);
      (*v73)(v42, v43, *(v0 + 216));
      sub_22C36C640(v42, 0, 1, v28);
      (*v70)(v43, v28);
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v26 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      sub_22C829A88(*(v0 + 344), v9 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v26);
      v10 = v74;
    }
  }

  v55 = *(v0 + 208);
  v56 = **(v0 + 112);
  *(v0 + 360) = sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8);
  sub_22C90A70C();
  v57 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 368) = v58;
  *v58 = v59;
  v60 = sub_22C3788C4(v58);

  return MEMORY[0x2822002E8](v60);
}

uint64_t sub_22C8287E8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 368);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8288CC()
{
  v91 = v0;
  v1 = v0[45];
  v2 = v0[23];
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    v3 = v0[44];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[39];
      v6 = v0[44] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v7 = *(v5 + 72);
      v8 = MEMORY[0x277D84F90];
      v87 = v7;
      do
      {
        v10 = v0[40];
        v9 = v0[41];
        v11 = v0[27];
        sub_22C3DB138(v6, v9, &qword_27D9BB670, &unk_22C90FA40);
        sub_22C3DB08C(v9, v10, &qword_27D9BB670, &unk_22C90FA40);
        if (sub_22C370B74(v10, 1, v11) == 1)
        {
          v12 = v0[40];
          sub_22C38AA18();
          sub_22C36DD28(v13, v14, v15);
        }

        else
        {
          v16 = *(v0[28] + 32);
          v16(v0[31], v0[40], v0[27]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = *(v8 + 16);
            sub_22C595C60();
            v8 = v22;
          }

          v17 = *(v8 + 16);
          if (v17 >= *(v8 + 24) >> 1)
          {
            sub_22C595C60();
            v8 = v23;
          }

          v18 = v0[31];
          v19 = v0[27];
          v20 = v0[28];
          *(v8 + 16) = v17 + 1;
          v16(v8 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v18, v19);
          v7 = v87;
        }

        v6 += v7;
        --v4;
      }

      while (v4);
      v27 = v0[44];
    }

    else
    {
    }

    v51 = v0[42];
    v50 = v0[43];
    v53 = v0[40];
    v52 = v0[41];
    v55 = v0[37];
    v54 = v0[38];
    v56 = v0[36];
    v58 = v0[33];
    v57 = v0[34];
    v74 = v0[32];
    v76 = v0[31];
    v78 = v0[30];
    v80 = v0[26];
    v82 = v0[23];
    v84 = v0[22];
    v86 = v0[21];
    v89 = v0[20];

    sub_22C385830();
    sub_22C378644();

    __asm { BRAA            X2, X16 }
  }

  v24 = v0[42];
  v25 = v0[27];
  v26 = *v2;
  sub_22C3DB08C(v2 + *(v1 + 48), v24, &qword_27D9BB670, &unk_22C90FA40);
  if (sub_22C370B74(v24, 1, v25) == 1)
  {
    sub_22C36DD28(v0[42], &qword_27D9BB670, &unk_22C90FA40);
    goto LABEL_24;
  }

  v28 = v0[43];
  v29 = v0[32];
  v30 = v0[27];
  v31 = v0[28];
  (*(v31 + 32))(v29, v0[42], v30);
  v32 = *(v31 + 16);
  (v32)(v28, v29, v30);
  sub_22C36C640(v28, 0, 1, v30);
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v33 = v0[44];
  if (v26 >= *(v33 + 16))
  {
LABEL_28:
    __break(1u);
    return MEMORY[0x2822002E8]();
  }

  v34 = v0[32];
  v35 = v0[30];
  v36 = v0[27];
  v37 = v0[20];
  sub_22C829A88(v0[43], v33 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)) + *(v0[39] + 72) * v26);
  sub_22C90400C();
  (v32)(v35, v34, v36);
  v38 = sub_22C9063CC();
  v39 = sub_22C90AACC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[33];
    v41 = v0[30];
    v42 = v0[27];
    v75 = v0[28];
    v85 = v0[20];
    v88 = v0[32];
    v81 = v0[19];
    v83 = v0[18];
    v43 = sub_22C36FB44();
    v77 = sub_22C370060();
    v90 = v77;
    *v43 = 136315138;
    sub_22C38AA18();
    v32();
    v44 = v42;
    v79 = v42;
    v45 = sub_22C90A1AC();
    v47 = v46;
    v48 = *(v75 + 8);
    v48(v41, v44);
    v49 = sub_22C36F9F4(v45, v47, &v90);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_22C366000, v38, v39, "Entity Hydration: entity hydrated as %s.", v43, 0xCu);
    sub_22C36FF94(v77);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v81 + 8))(v85, v83);
    v48(v88, v79);
  }

  else
  {
    v61 = v0[32];
    v62 = v0[30];
    v63 = v0[27];
    v64 = v0[28];
    v66 = v0[19];
    v65 = v0[20];
    v67 = v0[18];

    v68 = *(v64 + 8);
    v68(v62, v63);
    (*(v66 + 8))(v65, v67);
    v68(v61, v63);
  }

LABEL_24:
  v69 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[46] = v70;
  *v70 = v71;
  sub_22C3788C4();
  sub_22C378644();

  return MEMORY[0x2822002E8]();
}

uint64_t sub_22C828EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_22C90399C();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_22C9063DC();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C829000, 0, 0);
}

uint64_t sub_22C829000()
{
  v41 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  sub_22C90400C();
  v6 = *(v4 + 16);
  *(v0 + 128) = v6;
  *(v0 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_22C9063CC();
  v8 = sub_22C90AACC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  if (v9)
  {
    v38 = *(v0 + 96);
    v39 = *(v0 + 120);
    v14 = *(v0 + 80);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v36 = *(v0 + 104);
    v17 = sub_22C36FB44();
    v37 = sub_22C370060();
    v40 = v37;
    *v17 = 136315138;
    v6(v14, v13, v16);
    v18 = sub_22C90A1AC();
    v19 = v8;
    v21 = v20;
    v22 = v7;
    v23 = *(v15 + 8);
    v23(v13, v16);
    v24 = sub_22C36F9F4(v18, v21, &v40);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_22C366000, v22, v19, "Entity Hydration: calling entity.hydrate for %s.", v17, 0xCu);
    sub_22C36FF94(v37);
    sub_22C372FB0();
    sub_22C3699EC();

    v25 = *(v36 + 8);
    v25(v39, v38);
  }

  else
  {
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);

    v23 = *(v27 + 8);
    v23(v13, v26);
    v25 = *(v11 + 8);
    v25(v10, v12);
  }

  *(v0 + 144) = v25;
  *(v0 + 152) = v23;
  v28 = *(v0 + 32);
  v29 = *(v0 + 16);
  *(v0 + 176) = *(sub_22C3A5908(&qword_27D9C06A8, &qword_22C9283D8) + 48);
  *v29 = v28;
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 160) = v30;
  *v30 = v31;
  v30[1] = sub_22C829280;
  v32 = *(v0 + 72);
  v33 = *(v0 + 40);
  v34 = *(v0 + 24);

  return sub_22C82B154(v32, v33);
}

uint64_t sub_22C829280()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 168) = v0;

  if (v0)
  {
    v9 = sub_22C829448;
  }

  else
  {
    v9 = sub_22C829380;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22C829380()
{
  (*(*(v0 + 56) + 32))(*(v0 + 16) + *(v0 + 176), *(v0 + 72), *(v0 + 48));
  v1 = sub_22C36DBC8();
  sub_22C36C640(v1, 0, 1, v2);

  sub_22C369A24();

  return v3();
}

void sub_22C829448()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  sub_22C90400C();
  v3(v5, v7, v6);
  v8 = v1;
  v9 = sub_22C9063CC();
  v10 = sub_22C90AADC();

  v11 = os_log_type_enabled(v9, v10);
  v46 = *(v0 + 168);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  if (v11)
  {
    v14 = *(v0 + 128);
    v44 = *(v0 + 144);
    v45 = *(v0 + 112);
    v42 = *(v0 + 104);
    v43 = *(v0 + 96);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v39 = *(v0 + 136);
    v40 = *(v0 + 56);
    v17 = *(v0 + 48);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = sub_22C370060();
    v47 = v41;
    *v18 = 136315394;
    sub_22C38AA18();
    v14();
    v20 = sub_22C90A1AC();
    v22 = v21;
    v12(v16, v17);
    v23 = sub_22C36F9F4(v20, v22, &v47);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v46;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_22C366000, v9, v10, "Entity Hydration: Hydration failed for %s error: %@. This entity will be dropped.", v18, 0x16u);
    sub_22C36DD28(v19, &qword_27D9BB158, qword_22C910FD0);
    sub_22C3699EC();
    sub_22C36FF94(v41);
    sub_22C372FB0();
    sub_22C3699EC();

    v44(v45, v43);
  }

  else
  {
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v28 = *(v0 + 96);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 48);

    v12(v29, v31);
    v32 = sub_22C36BAFC();
    v13(v32);
  }

  **(v0 + 16) = *(v0 + 32);
  sub_22C36DBC8();
  sub_22C36A748();
  sub_22C36C640(v33, v34, v35, v36);

  sub_22C369A24();
  sub_22C378644();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C829710(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C588ED8;

  return v7(a1);
}

uint64_t sub_22C829808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22C8298C0;

  return sub_22C827EE0(a2, a3, a4, a5);
}

uint64_t sub_22C8298C0()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;

  *v5 = v2;
  sub_22C369A24();

  return v8();
}

uint64_t sub_22C8299BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C829808(a1, a2, v6, v7, v8);
}

uint64_t sub_22C829A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C829AF8()
{
  sub_22C3743E4();
  v2 = sub_22C90399C();
  sub_22C3699B8(v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22C46BC08;
  sub_22C38AA18();

  return sub_22C828EB0(v9, v10, v11, v12, v7, v13);
}

uint64_t sub_22C829C20()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_22C46BC08;

  return sub_22C829710(v3, v5);
}

uint64_t sub_22C829CD0()
{
  sub_22C3743E4();
  v2 = sub_22C903E7C();
  sub_22C3699B8(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 88) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_22C46BC08;
  sub_22C38AA18();

  return sub_22C827160(v11, v12, v13, v8, v9, v14, v15, v16);
}

uint64_t sub_22C829DF8()
{
  sub_22C36FB38();
  v3 = v2;
  v4 = sub_22C903E7C();
  sub_22C3699B8(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C827C08(v3, v0 + v6, v8);
}

uint64_t sub_22C829EF4()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
}

void static QueryDecorationAnalytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_22C82A05C(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

void sub_22C82A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  strcpy(v8, "com.apple.qd.");
  MEMORY[0x2318B7850](a1, a2);
  v6 = sub_22C90A0EC();

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22C82A164;
  v8[3] = &unk_283FC1460;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

id sub_22C82A164(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_22C389D24();
    v5 = sub_22C909EAC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22C82A290(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C389D24();
  v3 = sub_22C909ECC();

  return v3;
}

id QueryDecorationAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryDecorationAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id QueryDecorationAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C82A3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *initializeBufferWithCopyOfBuffer for QueryDecorationFeatureControl(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for QueryDecorationFeatureControl(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for QueryDecorationFeatureControl(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t QueryDecorationError.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

unint64_t sub_22C82A538()
{
  result = qword_27D9C06E0;
  if (!qword_27D9C06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C06E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryDecorationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C82A6A4()
{
  sub_22C3A5908(&qword_27D9C06E8, &qword_22C9286F0);
  v0 = (sub_22C3A5908(&qword_27D9C06F0, &qword_22C9286F8) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = *(*v0 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90D070;
  v3 = (v20 + v1);
  v4 = (v20 + v1 + v0[14]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000015;
  *(v5 + 24) = 0x800000022C937130;
  strcpy((v5 + 32), "ContactEntity");
  *(v5 + 46) = -4864;
  *v3 = v5;
  v6 = *MEMORY[0x277D72D28];
  v7 = sub_22C90952C();
  v8 = *(*(v7 - 8) + 104);
  v8(v3, v6, v7);
  *v4 = 0xD00000000000001BLL;
  v4[1] = 0x800000022C92EBF0;
  v9 = (v3 + v2);
  v10 = v2;
  v11 = (v3 + v2 + v0[14]);
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000015;
  v12[3] = 0x800000022C937130;
  v12[4] = 0x6F6365526C6C6143;
  v12[5] = 0xEA00000000006472;
  *v9 = v12;
  v8(v9, v6, v7);
  *v11 = 0xD000000000000028;
  v11[1] = 0x800000022C937150;
  v13 = (v3 + 2 * v10);
  v14 = (v13 + v0[14]);
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000015;
  v15[3] = 0x800000022C937130;
  v15[4] = 0x7373654D6C6C6143;
  v15[5] = 0xEB00000000656761;
  *v13 = v15;
  v8(v13, v6, v7);
  *v14 = 0xD000000000000028;
  v14[1] = 0x800000022C937150;
  v16 = (v3 + 3 * v10);
  v17 = (v16 + v0[14]);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000013;
  *(v18 + 24) = 0x800000022C92EC30;
  strcpy((v18 + 32), "ReminderEntity");
  *(v18 + 47) = -18;
  *v16 = v18;
  v8(v16, v6, v7);
  *v17 = 0xD000000000000013;
  v17[1] = 0x800000022C937180;
  sub_22C82AF08();
  result = sub_22C909F0C();
  qword_27D9C06D8 = result;
  return result;
}

uint64_t sub_22C82AA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = v61 - v5;
  v6 = sub_22C90952C();
  v7 = sub_22C369824(v6);
  v69 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v66 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v61 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (v61 - v16);
  v18 = sub_22C9093BC();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = (v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_22C90910C();
  v27 = sub_22C369824(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v33 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25, a1, v18);
  v34 = (*(v21 + 88))(v25, v18);
  if (v34 != *MEMORY[0x277D729F8])
  {
    (*(v21 + 8))(v25, v18);
LABEL_10:
    v54 = v68;
    v55 = 1;
    return sub_22C36C640(v54, v55, 1, v18);
  }

  v35 = v34;
  (*(v21 + 96))(v25, v18);
  v36 = *v25;
  v37 = swift_projectBox();
  (*(v29 + 16))(v33, v37, v26);

  sub_22C9090AC();
  v38 = (*(v69 + 88))(v17, v6);
  if (v38 != *MEMORY[0x277D72D28])
  {
    v56 = sub_22C373B04();
    v57(v56);
    (*(v69 + 8))(v17, v6);
    goto LABEL_10;
  }

  v39 = v38;
  (*(v69 + 96))(v17, v6);
  v40 = *v17;
  v41 = *(v40 + 40);
  v64 = *(v40 + 32);
  v65 = v41;

  if (qword_27D9BA7C0 != -1)
  {
    swift_once();
  }

  v42 = qword_27D9C06D8;
  sub_22C9090AC();
  v63 = sub_22C605D88(v15, v42);
  v44 = v43;
  (*(v69 + 8))(v15, v6);
  if (!v44)
  {
    v58 = sub_22C373B04();
    v59(v58);

    goto LABEL_10;
  }

  v45 = swift_allocBox();
  v61[1] = v46;
  v62 = v45;
  v47 = swift_allocObject();
  v48 = v64;
  v47[2] = v63;
  v47[3] = v44;
  v49 = v65;
  v50 = v66;
  v47[4] = v48;
  v47[5] = v49;
  *v50 = v47;
  (*(v69 + 104))(v50, v39, v6);
  sub_22C90908C();
  sub_22C9090DC();
  sub_22C9090EC();
  v51 = sub_22C373B04();
  v52(v51);
  v53 = v68;
  *v68 = v62;
  (*(v21 + 104))(v53, v35, v18);
  v54 = v53;
  v55 = 0;
  return sub_22C36C640(v54, v55, 1, v18);
}

unint64_t sub_22C82AF08()
{
  result = qword_28142FA80;
  if (!qword_28142FA80)
  {
    sub_22C90952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142FA80);
  }

  return result;
}

uint64_t sub_22C82AF60(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C90355C();
  v7 = sub_22C369914(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C90390C();
  sub_22C9038EC();
  sub_22C531200(a1, v19);
  sub_22C90398C();
  sub_22C90394C();
  sub_22C90397C();
  return sub_22C9038FC();
}

uint64_t sub_22C82B154(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v4);
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v7 = sub_22C9093BC();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C82B258, 0, 0);
}

uint64_t sub_22C82B258()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  sub_22C90391C();
  if (sub_22C370B74(v2, 1, v1) == 1)
  {
    v4 = v0[4];
    v5 = v0[2];
    sub_22C3E259C(v0[6]);
    v6 = sub_22C90399C();
    (*(*(v6 - 8) + 16))(v5, v4, v6);
    v7 = v0[9];
    v8 = v0[5];
    v9 = v0[6];

    sub_22C369A24();

    return v10();
  }

  else
  {
    v12 = v0[3];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v13 = v12[3];
    v14 = v12[4];
    sub_22C374168(v12, v13);
    v15 = *(MEMORY[0x277D1E548] + 4);
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_22C82B3F8;
    v17 = v0[9];
    v18 = v0[5];

    return MEMORY[0x282178338](v18, v17, v13, v14);
  }
}

uint64_t sub_22C82B3F8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22C82B5E0;
  }

  else
  {
    v3 = sub_22C82B50C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C82B50C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  sub_22C36C640(v4, 0, 1, v3);
  sub_22C82AF60(v4);
  sub_22C3E259C(v4);
  (*(v2 + 8))(v1, v3);
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C82B5E0()
{
  v1 = v0[6];
  v2 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_22C369A24();
  v4 = v0[11];

  return v3();
}

void sub_22C82B678()
{
  sub_22C36BA7C();
  sub_22C83AAE0();
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C37BC84();
  sub_22C3E8FB4(v8, v9, &qword_27D9BBB48, &qword_22C910F00);
  v10 = sub_22C90A75C();
  v11 = sub_22C3707B4();
  v13 = sub_22C370B74(v11, v12, v10);

  if (v13 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8(v10);
    (*(v14 + 8))(v1, v10);
  }

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
    sub_22C383918();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C383918();
  swift_task_create();
  sub_22C37BB14();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C82B8E4()
{
  sub_22C36BA7C();
  sub_22C83AAE0();
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C37BC84();
  sub_22C3E8FB4(v8, v9, &qword_27D9BBB48, &qword_22C910F00);
  v10 = sub_22C90A75C();
  v11 = sub_22C3707B4();
  v13 = sub_22C370B74(v11, v12, v10);

  if (v13 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8(v10);
    (*(v14 + 8))(v1, v10);
  }

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C383918();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  sub_22C383918();
  swift_task_create();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C82BB44()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C37BC84();
  sub_22C3E8FB4(v11, v12, &qword_27D9BBB48, &qword_22C910F00);
  v13 = sub_22C90A75C();
  v14 = sub_22C3707B4();
  v16 = sub_22C370B74(v14, v15, v13);

  if (v16 == 1)
  {
    sub_22C36DD28(v0, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C36BBA8(v13);
    v18 = *(v17 + 8);
    v19 = sub_22C379FC8();
    v20(v19);
  }

  v21 = *(v2 + 16);
  v22 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v21)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v4, &qword_27D9BBB48, &qword_22C910F00);
    v25 = sub_22C371510();
    sub_22C3A5908(v25, v26);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();

  v23 = sub_22C371510();
  sub_22C3A5908(v23, v24);
  swift_task_create();
  sub_22C83AAD4();

  sub_22C36DD28(v4, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

uint64_t QueryDecorationRemoteStateHandler.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281431278 != -1)
  {
    swift_once();
  }

  v3 = sub_22C381880();
  result = sub_22C373E78(v3, v4, type metadata accessor for QueryDecorationCache);
  if (!v1)
  {
    v6 = result;
    DecorationCache = type metadata accessor for QueryDecorationCache(0);
    v9 = &off_283FC17B8;
    *&v7 = v6;
    return sub_22C36C730(&v7, a1);
  }

  return result;
}

uint64_t sub_22C82BE88()
{
  DecorationReferenceCache = type metadata accessor for QueryDecorationReferenceCache(0);
  v1 = *(DecorationReferenceCache + 48);
  v2 = *(DecorationReferenceCache + 52);
  swift_allocObject();
  result = sub_22C82BEC8();
  qword_281437508 = result;
  return result;
}

uint64_t sub_22C82BEC8()
{
  type metadata accessor for QueryDecorationReferenceCache.CacheCallbacks();
  swift_allocObject();
  sub_22C373F18(qword_281431318, v1, type metadata accessor for QueryDecorationReferenceCache.CacheCallbacks);
  sub_22C90412C();
  return v0;
}

uint64_t sub_22C82BFF4()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime29QueryDecorationReferenceCache_instance;
  v2 = sub_22C90413C();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C82C088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v81 = a2;
  v76 = a1;
  v4 = sub_22C90063C();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v69 - v9;
  v74 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v11 = *(*(v74 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v75 = (&v69 - v16);
  MEMORY[0x28223BE20](v15);
  v73 = &v69 - v17;
  v18 = sub_22C3A5908(&qword_27D9C0768, &unk_22C928BE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v22 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - v24;
  v26 = sub_22C9063DC();
  v79 = *(v26 - 8);
  v80 = v26;
  v27 = *(v79 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = &v69 - v33;
  v35 = v3[15];
  if (v35 < 1)
  {
    sub_22C90400C();

    v45 = sub_22C9063CC();
    v46 = sub_22C90AACC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v83[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v83);
      *(v47 + 12) = 2048;
      *(v47 + 14) = v35;

      _os_log_impl(&dword_22C366000, v45, v46, "%s Not using cache as cacheSize=%ld", v47, 0x16u);
      sub_22C36FF94(v48);
      MEMORY[0x2318B9880](v48, -1, -1);
      MEMORY[0x2318B9880](v47, -1, -1);
    }

    else
    {
    }

    return (*(v79 + 8))(v34, v80);
  }

  else
  {
    v72 = v32;
    swift_beginAccess();
    if (v35 <= *(v3[14] + 16))
    {
      sub_22C90400C();
      sub_22C3E8FB4(v81, v25, &qword_27D9C0260, &unk_22C926740);

      v36 = sub_22C9063CC();
      v70 = sub_22C90AACC();
      v37 = os_log_type_enabled(v36, v70);
      v71 = v4;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v83[0] = v69;
        *v38 = 136315650;
        *(v38 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v83);
        *(v38 + 12) = 2048;
        *(v38 + 14) = v35;

        *(v38 + 22) = 2080;
        sub_22C3E8FB4(v25, v21, &qword_27D9C0768, &unk_22C928BE0);
        v39 = sub_22C90A1AC();
        v41 = v40;
        sub_22C36DD28(v25, &qword_27D9C0260, &unk_22C926740);
        v42 = sub_22C36F9F4(v39, v41, v83);

        *(v38 + 24) = v42;
        _os_log_impl(&dword_22C366000, v36, v70, "%s New entry would exceed cacheSize=%ld for key.query=%s", v38, 0x20u);
        v43 = v69;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v43, -1, -1);
        v44 = v38;
        v4 = v71;
        MEMORY[0x2318B9880](v44, -1, -1);
      }

      else
      {

        sub_22C36DD28(v25, &qword_27D9C0260, &unk_22C926740);
      }

      v50 = *(v79 + 8);
      v50(v31, v80);
      v51 = v75;
      v52 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      swift_beginAccess();
      sub_22C3E8FB4(v3 + v52, v10, &qword_27D9C0760, &qword_22C928BD8);
      if (sub_22C370B74(v10, 1, v74) == 1)
      {
        sub_22C36DD28(v10, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v53 = v10;
        v54 = v73;
        sub_22C839CD0(v53, v73);
        swift_beginAccess();
        sub_22C62BE24(v83);
        sub_22C36DD28(v83, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        swift_beginAccess();
        sub_22C62BA88();
        swift_endAccess();
        v55 = v72;
        sub_22C90400C();
        sub_22C839D2C(v54, v51);
        v56 = sub_22C9063CC();
        v57 = sub_22C90AACC();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v83[0] = v59;
          *v58 = 136315394;
          *(v58 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v83);
          *(v58 + 12) = 2080;
          sub_22C839D2C(v51, v14);
          v60 = sub_22C90A1AC();
          v75 = v50;
          v62 = v61;
          sub_22C839C78(v51, type metadata accessor for CacheKeyHashableRepresentation);
          v63 = sub_22C36F9F4(v60, v62, v83);

          *(v58 + 14) = v63;
          _os_log_impl(&dword_22C366000, v56, v57, "%s Removed LRU key: %s", v58, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v59, -1, -1);
          MEMORY[0x2318B9880](v58, -1, -1);

          v75(v55, v80);
          v64 = v73;
        }

        else
        {

          sub_22C839C78(v51, type metadata accessor for CacheKeyHashableRepresentation);
          v50(v55, v80);
          v64 = v54;
        }

        sub_22C839C78(v64, type metadata accessor for CacheKeyHashableRepresentation);
        v4 = v71;
      }
    }

    sub_22C82E1A0(v14);
    v83[3] = sub_22C3A5908(&qword_27D9C0270, &unk_22C926750);
    v83[0] = v76;
    v84 = 1;
    swift_beginAccess();

    sub_22C6041CC(v83, v14);
    swift_endAccess();
    sub_22C82E1A0(v14);
    v65 = v77;
    sub_22C90062C();
    sub_22C9005DC();
    v67 = v66;
    (*(v78 + 8))(v65, v4);
    swift_beginAccess();
    v68 = v3[16];
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v3[16];
    sub_22C62E050(v14, v67);
    v3[16] = v82;
    sub_22C839C78(v14, type metadata accessor for CacheKeyHashableRepresentation);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82CAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v78 = a1;
  v4 = sub_22C90063C();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v71 - v9;
  v76 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v11 = *(*(v76 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v76);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v77 = (&v71 - v16);
  MEMORY[0x28223BE20](v15);
  v75 = &v71 - v17;
  v18 = sub_22C3A5908(&qword_27D9C0770, &unk_22C928BF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v71 - v24;
  v26 = sub_22C9063DC();
  v81 = *(v26 - 8);
  v82 = v26;
  v27 = *(v81 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v71 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = &v71 - v33;
  v35 = v3[15];
  if (v35 < 1)
  {
    sub_22C90400C();

    v45 = sub_22C9063CC();
    v46 = sub_22C90AACC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v85);
      *(v47 + 12) = 2048;
      *(v47 + 14) = v35;

      _os_log_impl(&dword_22C366000, v45, v46, "%s Not using cache as cacheSize=%ld", v47, 0x16u);
      sub_22C36FF94(v48);
      MEMORY[0x2318B9880](v48, -1, -1);
      MEMORY[0x2318B9880](v47, -1, -1);
    }

    else
    {
    }

    return (*(v81 + 8))(v34, v82);
  }

  else
  {
    v74 = v32;
    swift_beginAccess();
    if (v35 <= *(v3[14] + 16))
    {
      sub_22C90400C();
      sub_22C3E8FB4(v83, v25, &qword_27D9C0240, &qword_22C926718);

      v36 = sub_22C9063CC();
      v72 = sub_22C90AACC();
      v37 = os_log_type_enabled(v36, v72);
      v73 = v4;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v85[0] = v71;
        *v38 = 136315650;
        *(v38 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v85);
        *(v38 + 12) = 2048;
        *(v38 + 14) = v35;

        *(v38 + 22) = 2080;
        sub_22C3E8FB4(v25, v21, &qword_27D9C0770, &unk_22C928BF8);
        v39 = sub_22C90A1AC();
        v41 = v40;
        sub_22C36DD28(v25, &qword_27D9C0240, &qword_22C926718);
        v42 = sub_22C36F9F4(v39, v41, v85);

        *(v38 + 24) = v42;
        _os_log_impl(&dword_22C366000, v36, v72, "%s New entry would exceed cacheSize=%ld for key.query=%s", v38, 0x20u);
        v43 = v71;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v43, -1, -1);
        v44 = v38;
        v4 = v73;
        MEMORY[0x2318B9880](v44, -1, -1);
      }

      else
      {

        sub_22C36DD28(v25, &qword_27D9C0240, &qword_22C926718);
      }

      v50 = *(v81 + 8);
      v50(v31, v82);
      v51 = v77;
      v52 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      swift_beginAccess();
      sub_22C3E8FB4(v3 + v52, v10, &qword_27D9C0760, &qword_22C928BD8);
      if (sub_22C370B74(v10, 1, v76) == 1)
      {
        sub_22C36DD28(v10, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v53 = v10;
        v54 = v75;
        sub_22C839CD0(v53, v75);
        swift_beginAccess();
        sub_22C62BE24(v85);
        sub_22C36DD28(v85, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        swift_beginAccess();
        sub_22C62BA88();
        swift_endAccess();
        v55 = v74;
        sub_22C90400C();
        sub_22C839D2C(v54, v51);
        v56 = sub_22C9063CC();
        v57 = sub_22C90AACC();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v85[0] = v59;
          *v58 = 136315394;
          *(v58 + 4) = sub_22C36F9F4(0xD000000000000013, 0x800000022C9372B0, v85);
          *(v58 + 12) = 2080;
          sub_22C839D2C(v51, v14);
          v60 = sub_22C90A1AC();
          v77 = v50;
          v62 = v61;
          sub_22C839C78(v51, type metadata accessor for CacheKeyHashableRepresentation);
          v63 = sub_22C36F9F4(v60, v62, v85);

          *(v58 + 14) = v63;
          _os_log_impl(&dword_22C366000, v56, v57, "%s Removed LRU key: %s", v58, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v59, -1, -1);
          MEMORY[0x2318B9880](v58, -1, -1);

          v77(v55, v82);
          v64 = v75;
        }

        else
        {

          sub_22C839C78(v51, type metadata accessor for CacheKeyHashableRepresentation);
          v50(v55, v82);
          v64 = v54;
        }

        sub_22C839C78(v64, type metadata accessor for CacheKeyHashableRepresentation);
        v4 = v73;
      }
    }

    sub_22C82DF18(v14);
    v65 = sub_22C903E7C();
    v85[3] = v65;
    v66 = sub_22C36D548(v85);
    (*(*(v65 - 8) + 16))(v66, v78, v65);
    v86 = 1;
    swift_beginAccess();
    sub_22C6041CC(v85, v14);
    swift_endAccess();
    sub_22C82DF18(v14);
    v67 = v79;
    sub_22C90062C();
    sub_22C9005DC();
    v69 = v68;
    (*(v80 + 8))(v67, v4);
    swift_beginAccess();
    v70 = v3[16];
    swift_isUniquelyReferenced_nonNull_native();
    v84 = v3[16];
    sub_22C62E050(v14, v69);
    v3[16] = v84;
    sub_22C839C78(v14, type metadata accessor for CacheKeyHashableRepresentation);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v121 = a2;
  v115 = a1;
  v8 = sub_22C90063C();
  v9 = sub_22C369824(v8);
  v118 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v117 = v14 - v13;
  v15 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  v111 = v19;
  v20 = sub_22C36BA0C();
  v112 = type metadata accessor for CacheKeyHashableRepresentation(v20);
  v21 = sub_22C36985C(v112);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v113 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  v114 = v30;
  sub_22C38B534();
  v31 = sub_22C83AAA8();
  sub_22C369824(v31);
  v110 = v32;
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C50B438();
  v116 = a3;
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  sub_22C369824(DecorationCacheKey);
  v37 = v36;
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  v42 = &v106 - v41;
  v43 = sub_22C9063DC();
  v44 = sub_22C369824(v43);
  v119 = v45;
  v120 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  sub_22C37EBC0();
  v49 = MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v49);
  v52 = &v106 - v51;
  v53 = v6[15];
  if (v53 < 1)
  {
    sub_22C90400C();

    v64 = sub_22C9063CC();
    v65 = sub_22C90AACC();
    v66 = sub_22C370214();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = sub_22C383050();
      sub_22C370220();
      v69 = swift_slowAlloc();
      v124[0] = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
      *(v68 + 12) = 2048;
      *(v68 + 14) = v53;

      _os_log_impl(&dword_22C366000, v64, v65, "%s Not using cache as cacheSize=%ld", v68, 0x16u);
      sub_22C36FF94(v69);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    return (*(v119 + 8))(v4, v120);
  }

  else
  {
    v109 = v50;
    sub_22C3870A4();
    swift_beginAccess();
    v54 = DecorationCacheKey;
    if (v53 <= *(v6[14] + 16))
    {
      sub_22C90400C();
      (*(v37 + 16))(v42, v121, v54);

      v55 = sub_22C9063CC();
      v108 = sub_22C90AACC();
      if (os_log_type_enabled(v55, v108))
      {
        sub_22C370220();
        v56 = swift_slowAlloc();
        v107 = v8;
        v57 = v56;
        v106 = sub_22C37A180();
        v124[0] = v106;
        *v57 = 136315650;
        *(v57 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
        *(v57 + 12) = 2048;
        *(v57 + 14) = v53;

        *(v57 + 22) = 2080;
        (*(v110 + 16))(v5, v42, v31);
        v58 = sub_22C90A1AC();
        v60 = v59;
        v61 = DecorationCacheKey;
        (*(v37 + 8))(v42, DecorationCacheKey);
        v62 = sub_22C36F9F4(v58, v60, v124);

        *(v57 + 24) = v62;
        _os_log_impl(&dword_22C366000, v55, v108, "%s New entry would exceed cacheSize=%ld for key.query=%s", v57, 0x20u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v8 = v107;
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v63 = *(v119 + 8);
        v63(v52, v120);
        v54 = v61;
      }

      else
      {

        v54 = DecorationCacheKey;
        (*(v37 + 8))(v42, DecorationCacheKey);
        v63 = *(v119 + 8);
        v63(v52, v120);
      }

      v71 = v114;
      v72 = v113;
      v73 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
      sub_22C3870A4();
      swift_beginAccess();
      v74 = v6 + v73;
      v75 = v111;
      sub_22C3E8FB4(v74, v111, &qword_27D9C0760, &qword_22C928BD8);
      v76 = sub_22C3707B4();
      if (sub_22C370B74(v76, v77, v112) == 1)
      {
        sub_22C36DD28(v75, &qword_27D9C0760, &qword_22C928BD8);
      }

      else
      {
        v113 = v63;
        sub_22C36A42C();
        sub_22C839CD0(v75, v71);
        sub_22C79D0C0();
        sub_22C62BE24(v124);
        sub_22C36DD28(v124, &qword_27D9BF3C8, &qword_22C928BF0);
        swift_endAccess();
        sub_22C79D0C0();
        sub_22C62BA88();
        swift_endAccess();
        sub_22C90400C();
        sub_22C839D2C(v71, v72);
        v78 = sub_22C9063CC();
        v79 = sub_22C90AACC();
        v80 = sub_22C370214();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = sub_22C383050();
          v124[0] = sub_22C37A180();
          *v82 = 136315394;
          *(v82 + 4) = sub_22C37EDD0("putValue(_:forKey:)");
          *(v82 + 12) = 2080;
          v83 = sub_22C371510();
          sub_22C839D2C(v83, v84);
          sub_22C377C4C();
          v85 = sub_22C90A1AC();
          v86 = v8;
          v88 = v87;
          sub_22C36B7F4();
          v112 = v89;
          sub_22C839C78(v90, v91);
          v92 = sub_22C36F9F4(v85, v88, v124);
          v8 = v86;

          *(v82 + 14) = v92;
          _os_log_impl(&dword_22C366000, v78, v79, "%s Removed LRU key: %s", v82, 0x16u);
          swift_arrayDestroy();
          v54 = DecorationCacheKey;
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v93 = sub_22C83A9AC();
          v94(v93);
          v95 = v114;
          v96 = v112;
        }

        else
        {

          sub_22C839C78(v72, type metadata accessor for CacheKeyHashableRepresentation);
          v97 = sub_22C83A9AC();
          v98(v97);
          v95 = v71;
          v96 = type metadata accessor for CacheKeyHashableRepresentation;
        }

        sub_22C839C78(v95, v96);
      }
    }

    sub_22C82E428(v54, v26);
    v99 = v116;
    v124[3] = v116;
    sub_22C36D548(v124);
    sub_22C36BBA8(v99);
    (*(v100 + 16))();
    v125 = 1;
    sub_22C79D0C0();
    sub_22C6041CC(v124, v26);
    swift_endAccess();
    sub_22C82E428(v54, v26);
    v101 = v117;
    sub_22C90062C();
    sub_22C9005DC();
    v103 = v102;
    (*(v118 + 8))(v101, v8);
    sub_22C79D0C0();
    v104 = v6[16];
    swift_isUniquelyReferenced_nonNull_native();
    v123 = v6[16];
    sub_22C62E050(v26, v103);
    v6[16] = v123;
    sub_22C36B7F4();
    sub_22C839C78(v26, v105);
    swift_endAccess();
    return sub_22C831298();
  }
}

uint64_t sub_22C82DF18@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C908D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9C0770, &unk_22C928BF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v34 - v11);
  sub_22C3E8FB4(v2, &v34 - v11, &qword_27D9C0770, &unk_22C928BF8);
  v13 = sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
  v14 = 0;
  v15 = 0;
  if (sub_22C370B74(v12, 1, v13) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v8, v12, v4);
      v14 = sub_22C908D1C();
      v15 = v16;
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v14 = *v12;
      v15 = v12[1];
    }
  }

  v35 = v14;
  v17 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  v18 = (v2 + v17[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v2 + v17[8]);
  v22 = v21[1];
  v36 = *v21;
  v37 = v19;
  v23 = v17[10];
  v24 = (v2 + v17[9]);
  v25 = *v24;
  v26 = v24[1];
  v27 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v2 + v23, a1 + v27[8], &qword_27D9C06F8, &qword_22C929520);
  v28 = (v2 + v17[11]);
  v30 = *v28;
  v29 = v28[1];
  LOBYTE(v28) = *(v2 + v17[12]);
  *a1 = v35;
  a1[1] = v15;
  v31 = v36;
  a1[2] = v37;
  a1[3] = v20;
  a1[4] = v31;
  a1[5] = v22;
  a1[6] = v25;
  a1[7] = v26;
  v32 = (a1 + v27[9]);
  *v32 = v30;
  v32[1] = v29;
  *(a1 + v27[10]) = v28;
}

uint64_t sub_22C82E1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C908D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9C0768, &unk_22C928BE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v34 - v11);
  sub_22C3E8FB4(v2, &v34 - v11, &qword_27D9C0768, &unk_22C928BE0);
  v13 = sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
  v14 = 0;
  v15 = 0;
  if (sub_22C370B74(v12, 1, v13) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v8, v12, v4);
      v14 = sub_22C908D1C();
      v15 = v16;
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v14 = *v12;
      v15 = v12[1];
    }
  }

  v35 = v14;
  v17 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  v18 = (v2 + v17[7]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v2 + v17[8]);
  v22 = v21[1];
  v36 = *v21;
  v37 = v19;
  v23 = v17[10];
  v24 = (v2 + v17[9]);
  v25 = *v24;
  v26 = v24[1];
  v27 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v2 + v23, a1 + v27[8], &qword_27D9C06F8, &qword_22C929520);
  v28 = (v2 + v17[11]);
  v30 = *v28;
  v29 = v28[1];
  LOBYTE(v28) = *(v2 + v17[12]);
  *a1 = v35;
  a1[1] = v15;
  v31 = v36;
  a1[2] = v37;
  a1[3] = v20;
  a1[4] = v31;
  a1[5] = v22;
  a1[6] = v25;
  a1[7] = v26;
  v32 = (a1 + v27[9]);
  *v32 = v30;
  v32[1] = v29;
  *(a1 + v27[10]) = v28;
}

uint64_t sub_22C82E428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_22C908D2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input();
  v13 = sub_22C90AC6C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v39 - v15);
  (*(v17 + 16))(&v39 - v15, v3);
  v18 = 0;
  v19 = 0;
  if (sub_22C370B74(v16, 1, DecorationCache) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v10, v16, v6);
      v18 = sub_22C908D1C();
      v19 = v20;
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v18 = *v16;
      v19 = v16[1];
    }
  }

  v21 = *(a1 + 32);
  v22 = (v3 + *(a1 + 28));
  v23 = v22[1];
  v42 = *v22;
  v24 = v3 + v21;
  v25 = *(v3 + v21);
  v26 = *(v24 + 8);
  v40 = v18;
  v41 = v25;
  v27 = v19;
  v28 = *(a1 + 40);
  v29 = (v3 + *(a1 + 36));
  v30 = *v29;
  v31 = v29[1];
  v32 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v3 + v28, a2 + v32[8], &qword_27D9C06F8, &qword_22C929520);
  v33 = (v3 + *(a1 + 44));
  v35 = *v33;
  v34 = v33[1];
  LOBYTE(v33) = *(v3 + *(a1 + 48));
  *a2 = v40;
  a2[1] = v27;
  v36 = v41;
  a2[2] = v42;
  a2[3] = v23;
  a2[4] = v36;
  a2[5] = v26;
  a2[6] = v30;
  a2[7] = v31;
  v37 = (a2 + v32[9]);
  *v37 = v35;
  v37[1] = v34;
  *(a2 + v32[10]) = v33;
}

uint64_t sub_22C82E6C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = (v8 - v7);
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  sub_22C82E428(DecorationCacheKey, v9);
  v12[0] = a2;
  v13 = 0;
  sub_22C79D0C0();

  sub_22C6041CC(v12, v9);
  return swift_endAccess();
}

uint64_t sub_22C82E788()
{
  v1 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v2 = sub_22C369914(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C50B530();
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  sub_22C82E428(DecorationCacheKey, v0);
  memset(v8, 0, sizeof(v8));
  v9 = -1;
  sub_22C79D0C0();
  sub_22C6041CC(v8, v0);
  swift_endAccess();
  sub_22C82E428(DecorationCacheKey, v0);
  sub_22C79D0C0();
  sub_22C62BA88();
  sub_22C36B7F4();
  sub_22C839C78(v0, v6);
  return swift_endAccess();
}

void sub_22C82E888()
{
  sub_22C370030();
  v106 = v1;
  v2 = v0;
  v4 = v3;
  v102 = v5;
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  v7 = sub_22C369824(DecorationCacheKey);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v103 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v99 = v14;
  sub_22C369930();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v96[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v96[-v19];
  v21 = sub_22C9063DC();
  v22 = sub_22C369824(v21);
  v104 = v23;
  v105 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v100 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v111 = v32;
  v33 = sub_22C36BA0C();
  v34 = type metadata accessor for CacheKeyHashableRepresentation(v33);
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v40 = v39 - v38;
  sub_22C82E428(DecorationCacheKey, (v39 - v38));
  sub_22C3870A4();
  swift_beginAccess();
  v41 = *(v0 + 112);

  sub_22C6059A4(v40, v41);

  sub_22C36B7F4();
  sub_22C839C78(v40, v42);
  if (v108 == 255)
  {
    v101 = v2;
    v102 = v28;
    sub_22C36DD28(v107, &qword_27D9BF3C8, &qword_22C928BF0);
    v62 = v100;
    sub_22C90400C();
    v63 = *(v9 + 16);
    v64 = v99;
    v65 = sub_22C377C4C();
    v63(v65);
    (v63)(v103, v4, DecorationCacheKey);
    v66 = sub_22C9063CC();
    v67 = sub_22C90AACC();
    v68 = sub_22C83AA7C();
    if (os_log_type_enabled(v68, v69))
    {
      sub_22C370220();
      v70 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v109[0] = v98;
      *v70 = 136315650;
      *(v70 + 4) = sub_22C36F9F4(0xD000000000000016, 0x800000022C9372F0, v109);
      *(v70 + 12) = 2080;
      v97 = v67;
      v71 = sub_22C82F03C(DecorationCacheKey);
      v72 = *(v9 + 8);
      v72(v64, DecorationCacheKey);
      v73 = sub_22C36EC8C();
      sub_22C36F9F4(v73, v74, v75);
      sub_22C83AAD4();

      *(v70 + 14) = v71;
      *(v70 + 22) = 2080;
      v76 = v103;
      sub_22C82F144();
      v77 = sub_22C379FC8();
      (v72)(v77);
      v78 = sub_22C377C4C();
      sub_22C36F9F4(v78, v79, v80);
      sub_22C83AAD4();

      *(v70 + 24) = v76;
      _os_log_impl(&dword_22C366000, v66, v97, "%s %s cache MISS for %s.", v70, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v83 = *(v9 + 8);
      v83(v103, DecorationCacheKey);
      v83(v64, DecorationCacheKey);
    }

    v84 = *(v104 + 8);
    v84(v62, v105);
    v85 = (v4 + *(DecorationCacheKey + 28));
    v86 = *v85;
    v87 = v85[1];
    sub_22C83144C();
    if (v88)
    {
      sub_22C90400C();
      v89 = sub_22C9063CC();
      v90 = sub_22C90AACC();
      v91 = sub_22C83AA7C();
      if (os_log_type_enabled(v91, v92))
      {
        sub_22C3720F4();
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_22C366000, v89, v90, "Handling new request. Clear cache completely.", v93, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v94 = sub_22C36CA88();
      (v84)(v94);
      sub_22C8317F4();
    }

    v95 = v106;
    *v106 = 0u;
    v95[1] = 0u;
    *(v95 + 32) = -1;
  }

  else
  {
    v109[0] = v107[0];
    v109[1] = v107[1];
    v110 = v108;
    sub_22C90400C();
    v43 = *(v9 + 16);
    v43(v20, v4, DecorationCacheKey);
    v43(v18, v4, DecorationCacheKey);
    swift_retain_n();
    v44 = sub_22C9063CC();
    v45 = sub_22C90AACC();
    v46 = sub_22C370214();
    v48 = v2;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v107[0] = v103;
      *v49 = 136315906;
      *(v49 + 4) = sub_22C36F9F4(0xD000000000000016, 0x800000022C9372F0, v107);
      *(v49 + 12) = 2080;
      v100 = v44;
      sub_22C82F03C(DecorationCacheKey);
      LODWORD(v99) = v45;
      v101 = v48;
      v50 = *(v9 + 8);
      (v50)(v20, DecorationCacheKey);
      v51 = sub_22C372164();
      v54 = sub_22C36F9F4(v51, v52, v53);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2080;
      sub_22C82F144();
      v55 = sub_22C383CCC();
      v50(v55);
      v48 = v101;
      v56 = sub_22C372164();
      v59 = sub_22C36F9F4(v56, v57, v58);

      *(v49 + 24) = v59;
      *(v49 + 32) = 2048;
      v60 = *(*(v48 + 112) + 16);

      *(v49 + 34) = v60;

      v61 = v100;
      _os_log_impl(&dword_22C366000, v100, v99, "%s %s cache HIT for %s from cache size of %ld", v49, 0x2Au);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v81 = *(v9 + 8);
      v82 = sub_22C383CCC();
      v81(v82);
      (v81)(v20, DecorationCacheKey);
    }

    (*(v104 + 8))(v111, v105);
    sub_22C6337B8(v109, v106);
    sub_22C82F53C(v48);
    sub_22C83A014(v109);
  }

  sub_22C36FB20();
}

uint64_t sub_22C82F03C(uint64_t a1)
{
  v4 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  sub_22C36985C(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C383814();
  BYTE8(v10) = 0;
  sub_22C3E8FB4(v1 + *(a1 + 52), v2, &qword_27D9C0588, &qword_22C927FD0);
  v8 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v8);

  MEMORY[0x2318B7850](2108704, 0xE300000000000000);
  *&v10 = *(v1 + *(a1 + 48));
  sub_22C90B12C();
  return *(&v10 + 1);
}

void sub_22C82F144()
{
  sub_22C36BA7C();
  v3 = v2;
  v31 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C36985C(v31);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  v30 = v7;
  v8 = *(v3 + 16);
  v9 = sub_22C83AAA8();
  sub_22C369824(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C50B41C();
  *&v40 = 0x4974736575716572;
  *(&v40 + 1) = 0xEB00000000203A64;
  v15 = (v0 + *(v3 + 28));
  v32 = *v15;
  v36 = v15[1];

  sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
  v16 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v16);

  *&v40 = 0x636976726573200ALL;
  *(&v40 + 1) = 0xEB00000000203A65;
  v17 = (v0 + *(v3 + 32));
  v33 = *v17;
  v37 = v17[1];
  type metadata accessor for QueryDecorationCacheValue.Identifier();

  v18 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v18);

  MEMORY[0x2318B7850](0x636976726573200ALL, 0xEB00000000203A65);

  *&v40 = 0x3A7475706E69200ALL;
  *(&v40 + 1) = 0xE900000000000020;
  (*(v11 + 16))(v1, v0, v9);
  v19 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v19);

  sub_22C385E2C();
  v20 = sub_22C36CA88();
  MEMORY[0x2318B7850](v20);

  *&v40 = 0x644972657375200ALL;
  *(&v40 + 1) = 0xE900000000000020;
  v21 = (v0 + *(v3 + 36));
  v34 = *v21;
  v38 = v21[1];

  v22 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v22);

  sub_22C385E2C();
  v23 = sub_22C36CA88();
  MEMORY[0x2318B7850](v23);

  sub_22C90AF5C();

  *&v40 = 0xD00000000000001DLL;
  *(&v40 + 1) = 0x800000022C9372D0;
  sub_22C3E8FB4(v0 + *(v3 + 40), v30, &qword_27D9C06F8, &qword_22C929520);
  v24 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v24);

  sub_22C385E2C();
  v25 = sub_22C36CA88();
  MEMORY[0x2318B7850](v25);

  v26 = v40;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_22C90AF5C();

  strcpy(&v40, "\n deviceIdsID:");
  HIBYTE(v40) = -18;
  v27 = (v0 + *(v3 + 44));
  v35 = *v27;
  v39 = v27[1];

  v28 = sub_22C90A1AC();
  MEMORY[0x2318B7850](v28);

  v40 = v26;

  v29 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v29);

  sub_22C36CC48();
}

uint64_t sub_22C82F53C(uint64_t a1)
{
  v2 = sub_22C90063C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  sub_22C82E428(DecorationCacheKey, v10);
  sub_22C90062C();
  sub_22C9005DC();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  v14 = *(a1 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 128);
  sub_22C62E050(v10, v13);
  *(a1 + 128) = v16;
  sub_22C839C78(v10, type metadata accessor for CacheKeyHashableRepresentation);
  swift_endAccess();
  return sub_22C831298();
}

uint64_t sub_22C82F6F8()
{
  sub_22C36FB38();
  sub_22C83AA94(v1, v2, v3);
  v4 = sub_22C90AC6C();
  v0[28] = v4;
  sub_22C3699B8(v4);
  v0[29] = v5;
  v7 = *(v6 + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  sub_22C83A980();
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  v0[32] = DecorationCacheKey;
  sub_22C3699B8(DecorationCacheKey);
  v0[33] = v9;
  v11 = *(v10 + 64);
  v0[34] = sub_22C3856B8();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v0[37] = v12;
  sub_22C3699B8(v12);
  v0[38] = v13;
  v15 = *(v14 + 64);
  v0[39] = sub_22C3856B8();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v16 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C82F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v109 = v18;
  v20 = *(v18 + 208);
  v21 = *(v18 + 216);
  v22 = *(v18 + 200);
  sub_22C82E888();
  sub_22C3E8FB4(v18 + 16, v18 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
  v23 = *(v18 + 88);
  if (v23 == 255)
  {
    v48 = *(v18 + 208);
    v49 = *(v18 + 192);
    sub_22C36DD28(v18 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
    v50 = sub_22C36CCF8();
    goto LABEL_6;
  }

  v24 = *(v18 + 256);
  v25 = *(v18 + 264);
  v26 = *(v18 + 200);
  if (v23)
  {
    v27 = *(v18 + 312);
    v28 = *(v18 + 272);
    sub_22C456E34((v18 + 56), (v18 + 96));
    sub_22C90400C();
    v29 = *(v25 + 16);
    v30 = sub_22C370018();
    v31(v30);
    v32 = sub_22C9063CC();
    v33 = sub_22C90AACC();
    v34 = sub_22C83AA00(v33);
    v36 = *(v18 + 304);
    v35 = *(v18 + 312);
    v37 = *(v18 + 296);
    v39 = *(v18 + 264);
    v38 = *(v18 + 272);
    v40 = *(v18 + 256);
    if (v34)
    {
      v107 = *(v18 + 296);
      v41 = sub_22C36FB44();
      sub_22C370220();
      v104 = v19;
      v42 = swift_slowAlloc();
      v108 = v42;
      sub_22C83AB44(4.8149e-34);
      v43 = sub_22C83A858();
      v44(v43);
      v45 = sub_22C36D390();
      sub_22C36F9F4(v45, v46, v47);
      sub_22C37BB14();

      *(v41 + 4) = v38;
      sub_22C36D418(&dword_22C366000, "%s No cache operation in progress, returning result now.", v104);
      sub_22C36FF94(v42);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v36 + 8))(v35, v107);
    }

    else
    {

      v71 = sub_22C83A858();
      v72(v71);
      (*(v36 + 8))(v35, v37);
    }

    sub_22C831118(v18 + 96, *(v18 + 224), *(v18 + 240));
    v87 = *(v18 + 240);
    v88 = *(v18 + 208);
    sub_22C36FF94((v18 + 96));
    sub_22C36DD28(v18 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
    v89 = sub_22C3707B4();
    v91 = sub_22C370B74(v89, v90, v88);
    v92 = *(v18 + 240);
    v48 = *(v18 + 208);
    v93 = *(v18 + 192);
    if (v91 == 1)
    {
      v94 = *(v18 + 192);
      sub_22C36A748();
      sub_22C36C640(v95, v96, v97, v48);
      v98 = sub_22C36CCF8();
      if (sub_22C370B74(v98, v99, v48) != 1)
      {
        (*(*(v18 + 232) + 8))(*(v18 + 240), *(v18 + 224));
      }

LABEL_7:
      sub_22C36CBAC();

      sub_22C369C50();
      sub_22C375E04();

      __asm { BRAA            X1, X16 }
    }

    sub_22C36BBA8(*(v18 + 208));
    (*(v100 + 32))(v93, v92, v48);
    v50 = v93;
    v51 = 0;
LABEL_6:
    sub_22C36C640(v50, v51, 1, v48);
    goto LABEL_7;
  }

  v52 = *(v18 + 328);
  v53 = *(v18 + 288);
  *(v18 + 336) = *(v18 + 56);
  sub_22C90400C();
  v54 = *(v25 + 16);
  *(v18 + 344) = v54;
  *(v18 + 352) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v53, v26, v24);
  v55 = sub_22C9063CC();
  v56 = sub_22C90AACC();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v18 + 328);
  v60 = *(v18 + 296);
  v59 = *(v18 + 304);
  v61 = *(v18 + 288);
  v63 = *(v18 + 256);
  v62 = *(v18 + 264);
  if (v57)
  {
    v64 = sub_22C36FB44();
    sub_22C370220();
    v106 = v60;
    v65 = swift_slowAlloc();
    v108 = v65;
    *v64 = 136315138;
    v102 = sub_22C82F03C(v63);
    v105 = v58;
    v67 = v66;
    v103 = v56;
    v68 = *(v62 + 8);
    v69 = sub_22C36EC8C();
    v68(v69);
    sub_22C36F9F4(v102, v67, &v108);
    sub_22C37FF48();

    *(v64 + 4) = v61;
    _os_log_impl(&dword_22C366000, v55, v103, "%s A cache operation is in progress. Waiting for result.", v64, 0xCu);
    sub_22C36FF94(v65);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v70 = *(v59 + 8);
    v70(v105, v106);
  }

  else
  {

    v68 = *(v62 + 8);
    v75 = sub_22C36EC8C();
    v68(v75);
    v70 = *(v59 + 8);
    v70(v58, v60);
  }

  *(v18 + 360) = v70;
  *(v18 + 368) = v68;
  v76 = *(MEMORY[0x277D857C8] + 4);
  v77 = swift_task_alloc();
  *(v18 + 376) = v77;
  sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C83A99C();
  *v77 = v78;
  v77[1] = sub_22C82FE3C;
  sub_22C375E04();

  return MEMORY[0x282200430](v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C82FE3C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 216);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22C82FF54()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[40];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[25];
  sub_22C90400C();
  v2(v4, v6, v5);
  v7 = sub_22C9063CC();
  v8 = sub_22C90AACC();
  v9 = sub_22C83AA7C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[45];
  v60 = v0[46];
  v13 = v0[40];
  v14 = v0[37];
  v15 = v0[38];
  v16 = v0[35];
  v18 = v0[32];
  v17 = v0[33];
  if (v11)
  {
    v59 = v0[40];
    v19 = sub_22C36FB44();
    sub_22C370220();
    v58 = v14;
    v20 = swift_slowAlloc();
    v61 = v20;
    v57 = v12;
    v21 = sub_22C83AB44(4.8149e-34);
    v23 = v22;
    v24 = sub_22C379FC8();
    v60(v24);
    sub_22C36F9F4(v21, v23, &v61);
    sub_22C37FF48();

    *(v19 + 4) = v16;
    _os_log_impl(&dword_22C366000, v7, v8, "%s Cache operation complete. Returning result.", v19, 0xCu);
    sub_22C36FF94(v20);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v57(v59, v58);
  }

  else
  {

    v25 = sub_22C379FC8();
    v60(v25);
    v12(v13, v14);
  }

  v26 = v0[48];
  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[19];
  sub_22C83AB5C(v0 + 16);
  v0[23] = v29;
  sub_22C36D548(v0 + 20);
  sub_22C36BBA8(v29);
  v31 = *(v30 + 16);
  sub_22C634004();
  v32();
  sub_22C381574();
  sub_22C831118(v33, v34, v35);
  v36 = v0[42];
  if (v26)
  {
    sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v0 + 20);
    sub_22C36FF94(v0 + 16);
    v38 = v0[40];
    v37 = v0[41];
    v39 = v0[39];
    sub_22C3730BC();

    sub_22C369A24();
  }

  else
  {
    v40 = v0[31];
    v41 = v0[26];
    sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v0 + 20);
    v42 = sub_22C36CCF8();
    v44 = sub_22C370B74(v42, v43, v41);
    v45 = v0[31];
    v46 = v0[26];
    v47 = v0[24];
    if (v44 == 1)
    {
      v48 = v0[24];
      sub_22C36A748();
      sub_22C36C640(v49, v50, v51, v46);
      v52 = sub_22C36CCF8();
      if (sub_22C370B74(v52, v53, v46) != 1)
      {
        (*(v0[29] + 8))(v0[31], v0[28]);
      }
    }

    else
    {
      sub_22C36BBA8(v0[26]);
      (*(v54 + 32))(v47, v45, v46);
      sub_22C36C640(v47, 0, 1, v46);
    }

    sub_22C36FF94(v0 + 16);
    sub_22C36CBAC();

    sub_22C369C50();
  }

  sub_22C375E04();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C830318()
{
  sub_22C3743E4();
  v1 = v0[42];

  sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
  v2 = v0[48];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  sub_22C3730BC();

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C8303E8()
{
  sub_22C369980();
  sub_22C83AA94(v1, v2, v3);
  DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey();
  v0[28] = DecorationCacheKey;
  sub_22C3699B8(DecorationCacheKey);
  v0[29] = v5;
  v7 = *(v6 + 64);
  v0[30] = sub_22C3856B8();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v0[36] = v8;
  sub_22C3699B8(v8);
  v0[37] = v9;
  v11 = *(v10 + 64);
  v0[38] = sub_22C3856B8();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9C0788, &qword_22C928C48);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v0[42] = sub_22C3699D4();
  v15 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C830560()
{
  v154 = v0;
  v2 = *(v0 + 200);
  v3 = (v2 + *(*(v0 + 224) + 44));
  v4 = v3[1];
  if (v4)
  {
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *v3;
    sub_22C3870A4();
    swift_beginAccess();
    v8 = *(v5 + 112);
    v9 = swift_task_alloc();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v4;
    v9[5] = v2;

    sub_22C838538();
    sub_22C37BB14();

    if (*(v2 + 16) <= 1uLL)
    {
      sub_22C58B7C8(v2, *(v0 + 336));

      v10 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
      v11 = sub_22C36CCF8();
      v13 = sub_22C370B74(v11, v12, v10);
      v14 = *(v0 + 336);
      if (v13 == 1)
      {
        sub_22C36DD28(v14, &qword_27D9C0788, &qword_22C928C48);
        *(v0 + 56) = 0u;
        *(v0 + 72) = 0u;
        *(v0 + 88) = -1;
      }

      else
      {
        v57 = v14 + *(v10 + 48);
        v58 = *v57;
        v59 = *(v57 + 16);
        *(v0 + 88) = *(v57 + 32);
        *(v0 + 72) = v59;
        *(v0 + 56) = v58;
        sub_22C36B7F4();
        sub_22C839C78(v60, v61);
        if (*(v0 + 88) != 255)
        {
          v62 = *(v0 + 72);
          *(v0 + 16) = *(v0 + 56);
          *(v0 + 32) = v62;
          *(v0 + 48) = *(v0 + 88);
          sub_22C6337B8(v0 + 16, v0 + 96);
          if (*(v0 + 128))
          {
            v63 = *(v0 + 328);
            v65 = *(v0 + 272);
            v64 = *(v0 + 280);
            v66 = *(v0 + 224);
            v67 = *(v0 + 232);
            v68 = *(v0 + 200);
            sub_22C456E34((v0 + 96), (v0 + 136));
            sub_22C90400C();
            v69 = *(v67 + 16);
            v69(v64, v68, v66);
            v69(v65, v68, v66);
            v70 = sub_22C9063CC();
            v151 = sub_22C90AACC();
            v71 = os_log_type_enabled(v70, v151);
            v72 = *(v0 + 328);
            v74 = *(v0 + 288);
            v73 = *(v0 + 296);
            v75 = *(v0 + 272);
            v76 = *(v0 + 280);
            v78 = *(v0 + 224);
            v77 = *(v0 + 232);
            if (v71)
            {
              v149 = *(v0 + 328);
              v79 = sub_22C383050();
              v153 = sub_22C37A180();
              *v79 = 136315394;
              log = v70;
              v80 = sub_22C82F03C(v78);
              v147 = v74;
              v82 = v81;
              v83 = *(v77 + 8);
              v83(v76, v78);
              sub_22C36F9F4(v80, v82, &v153);
              sub_22C83AAD4();

              *(v79 + 4) = v76;
              *(v79 + 12) = 2080;
              sub_22C82F144();
              v84 = sub_22C36DA14();
              (v83)(v84);
              v85 = sub_22C372164();
              v88 = sub_22C36F9F4(v85, v86, v87);

              *(v79 + 14) = v88;
              _os_log_impl(&dword_22C366000, log, v151, "%s Cache HIT for remote state with key %s", v79, 0x16u);
              swift_arrayDestroy();
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();

              (*(v73 + 8))(v149, v147);
            }

            else
            {

              v139 = *(v77 + 8);
              v140 = sub_22C36DA14();
              v139(v140);
              (v139)(v76, v78);
              (*(v73 + 8))(v72, v74);
            }

            v141 = *(v0 + 208);
            v142 = *(v0 + 192);
            v143 = sub_22C90AC6C();
            sub_22C831118(v0 + 136, v143, v142);
            sub_22C36FF94((v0 + 136));
            sub_22C83A014(v0 + 16);
            goto LABEL_21;
          }

          sub_22C83A014(v0 + 16);
          sub_22C83A014(v0 + 96);
          goto LABEL_16;
        }
      }

      sub_22C36DD28(v0 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
LABEL_16:
      v89 = *(v0 + 320);
      v91 = *(v0 + 256);
      v90 = *(v0 + 264);
      v92 = *(v0 + 224);
      v93 = *(v0 + 232);
      v94 = *(v0 + 200);
      sub_22C90400C();
      v95 = *(v93 + 16);
      sub_22C634004();
      v95();
      sub_22C634004();
      v95();
      v96 = sub_22C9063CC();
      v97 = sub_22C90AADC();
      v98 = sub_22C83AA7C();
      v100 = os_log_type_enabled(v98, v99);
      v101 = *(v0 + 320);
      v102 = *(v0 + 288);
      v103 = *(v0 + 296);
      v105 = *(v0 + 256);
      v104 = *(v0 + 264);
      v107 = *(v0 + 224);
      v106 = *(v0 + 232);
      if (v100)
      {
        v145 = v97;
        v108 = sub_22C383050();
        v153 = sub_22C37A180();
        *v108 = 136315394;
        sub_22C82F03C(v107);
        v109 = *(v106 + 8);
        v110 = sub_22C36EC8C();
        v109(v110);
        v111 = sub_22C36BAFC();
        sub_22C36F9F4(v111, v112, v113);
        sub_22C37FF48();

        *(v108 + 4) = v104;
        *(v108 + 12) = 2080;
        sub_22C82F144();
        v115 = v114;
        (v109)(v105, v107);
        v116 = sub_22C36BBCC();
        sub_22C36F9F4(v116, v117, v118);
        sub_22C37BB14();

        *(v108 + 14) = v115;
        _os_log_impl(&dword_22C366000, v96, v145, "%s Cache MISS for remote request with key %s", v108, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {

        v119 = *(v106 + 8);
        v119(v105, v107);
        v120 = sub_22C36EC8C();
        (v119)(v120);
      }

      (*(v103 + 8))(v101, v102);
      goto LABEL_20;
    }

    v37 = *(v0 + 312);
    v38 = *(v0 + 248);
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    v41 = *(v0 + 200);

    sub_22C90400C();
    v42 = *(v40 + 16);
    sub_22C634004();
    v43();
    v20 = sub_22C9063CC();
    v44 = sub_22C90AADC();
    v45 = sub_22C83AA00(v44);
    v23 = *(v0 + 312);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);
    v46 = *(v0 + 248);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    if (v45)
    {
      v150 = *(v0 + 288);
      v49 = sub_22C36FB44();
      sub_22C370220();
      v146 = v1;
      v30 = swift_slowAlloc();
      v153 = v30;
      sub_22C83AB44(4.8149e-34);
      v148 = v23;
      v50 = sub_22C83A858();
      v51(v50);
      v52 = sub_22C36D390();
      sub_22C36F9F4(v52, v53, v54);
      sub_22C37BB14();

      *(v49 + 4) = v46;
      v36 = "%s Cache error: multiple remote cache entries found";
      goto LABEL_9;
    }

LABEL_10:

    v55 = sub_22C83A858();
    v56(v55);
    (*(v24 + 8))(v23, v25);
    goto LABEL_20;
  }

  v15 = *(v0 + 304);
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  sub_22C90400C();
  v18 = *(v17 + 16);
  sub_22C37017C();
  v19();
  v20 = sub_22C9063CC();
  v21 = sub_22C90AACC();
  v22 = sub_22C83AA00(v21);
  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 288);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v28 = *(v0 + 224);
  if (!v22)
  {
    goto LABEL_10;
  }

  v150 = *(v0 + 288);
  v29 = sub_22C36FB44();
  sub_22C370220();
  v146 = v1;
  v30 = swift_slowAlloc();
  v153 = v30;
  sub_22C83AB44(4.8149e-34);
  v148 = v23;
  v31 = sub_22C83A858();
  v32(v31);
  v33 = sub_22C36D390();
  sub_22C36F9F4(v33, v34, v35);
  sub_22C37BB14();

  *(v29 + 4) = v26;
  v36 = "%s Not checking remote cache as deviceIdsID is nil";
LABEL_9:
  sub_22C36D418(&dword_22C366000, v36, v146);
  sub_22C36FF94(v30);
  sub_22C369B50();
  MEMORY[0x2318B9880]();
  sub_22C369B50();
  MEMORY[0x2318B9880]();

  (*(v24 + 8))(v148, v150);
LABEL_20:
  v121 = *(v0 + 208);
  v122 = *(v0 + 192);
  sub_22C36A748();
  sub_22C36C640(v123, v124, v125, v126);
LABEL_21:
  v128 = *(v0 + 328);
  v127 = *(v0 + 336);
  v130 = *(v0 + 312);
  v129 = *(v0 + 320);
  v131 = *(v0 + 304);
  v133 = *(v0 + 272);
  v132 = *(v0 + 280);
  v135 = *(v0 + 256);
  v134 = *(v0 + 264);
  v136 = *(v0 + 248);
  v152 = *(v0 + 240);

  sub_22C369C50();

  return v137();
}

uint64_t sub_22C830E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v38 = a6;
  v36 = a3;
  v9 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  sub_22C839D2C(a1, &v35 - v17);
  sub_22C6337B8(a2, &v18[*(v9 + 48)]);
  sub_22C3E8FB4(v18, v16, &qword_27D9BE230, &unk_22C928C50);
  v19 = *(v9 + 48);
  v20 = v16[*(type metadata accessor for CacheKeyHashableRepresentation(0) + 40)];
  sub_22C839C78(v16, type metadata accessor for CacheKeyHashableRepresentation);
  v21 = &v16[v19];
  v22 = a5;
  sub_22C83A014(v21);
  if (v20 == 1 && (DecorationCacheKey = type metadata accessor for QueryDecorationCacheKey(), v24 = (a5 + *(DecorationCacheKey + 44)), (v25 = v24[1]) != 0) && ((v26 = DecorationCacheKey, *v24 == v36) ? (v27 = v25 == v37) : (v27 = 0), v27 || (sub_22C90B4FC() & 1) != 0))
  {
    sub_22C3E8FB4(v18, v13, &qword_27D9BE230, &unk_22C928C50);
    v29 = *(v13 + 4);
    v28 = *(v13 + 5);

    sub_22C839C78(v13, type metadata accessor for CacheKeyHashableRepresentation);
    v30 = (v22 + *(v26 + 32));
    if (v29 == *v30 && v28 == v30[1])
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_22C90B4FC();
    }

    v33 = *(v9 + 48);
    sub_22C36DD28(v18, &qword_27D9BE230, &unk_22C928C50);
    sub_22C83A014(&v13[v33]);
  }

  else
  {
    sub_22C36DD28(v18, &qword_27D9BE230, &unk_22C928C50);
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_22C831118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90AC6C();
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-v12];
  sub_22C36F998(a1, v20);
  if (swift_dynamicCast())
  {
    sub_22C36C640(v13, 0, 1, a2);
    sub_22C36BBA8(a2);
    return (*(v14 + 32))(a3, v13, a2);
  }

  else
  {
    sub_22C36A748();
    sub_22C36C640(v16, v17, v18, a2);
    (*(v8 + 8))(v13, v6);
    sub_22C839C24();
    sub_22C37A198();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_22C831298()
{
  v3 = sub_22C3A5908(&qword_27D9C0780, &qword_22C928C38);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3717BC();
  v7 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3721C8();
  sub_22C3870A4();
  swift_beginAccess();
  v11 = *(v1 + 128);

  v19[0] = sub_22C470270(v12);
  sub_22C836F64(v19);

  sub_22C58B484(v19[0], v2);

  v13 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  if (sub_22C370B74(v2, 1, v13) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9C0780, &qword_22C928C38);
    v14 = 1;
  }

  else
  {
    sub_22C36A42C();
    sub_22C839CD0(v2, v0);
    v14 = 0;
  }

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v15 = sub_22C598F54();
  sub_22C36C640(v15, v14, 1, v16);
  v17 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
  sub_22C79D0C0();
  sub_22C839EF8(v0, v1 + v17);
  return swift_endAccess();
}

void sub_22C83144C()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v18);
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C3717BC();
  if (!v3)
  {
LABEL_23:
    sub_22C36CC48();
    return;
  }

  v38 = v5;
  v39 = v3;
  sub_22C3870A4();
  swift_beginAccess();
  v22 = *(v0 + 112);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_9:
      sub_22C839D2C(*(v22 + 48) + *(v9 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v17);
      sub_22C36A42C();
      v29 = sub_22C371510();
      sub_22C839CD0(v29, v30);
      if (*(v14 + 24))
      {
        break;
      }

      v25 &= v25 - 1;
      sub_22C36B7F4();
      sub_22C839C78(v14, v31);
      v27 = v28;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    sub_22C36A42C();
    sub_22C839CD0(v14, v1);
    v32 = 0;
LABEL_13:
    sub_22C36C640(v1, v32, 1, v6);

    if (sub_22C370B74(v1, 1, v6) == 1)
    {
      sub_22C36DD28(v1, &qword_27D9C0760, &qword_22C928BD8);
    }

    else
    {
      v34 = *(v1 + 16);
      v33 = *(v1 + 24);

      sub_22C36B7F4();
      sub_22C839C78(v1, v35);
      if (v33)
      {
        if (v34 != v38 || v33 != v39)
        {
          sub_22C90B4FC();
        }
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v32 = 1;
      goto LABEL_13;
    }

    v25 = *(v22 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22C8316FC()
{
  v2 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C3721C8();
  sub_22C3870A4();
  swift_beginAccess();
  v6 = *(v1 + 112);

  sub_22C58B920(v7, v0);

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v8 = sub_22C36CCF8();
  if (sub_22C370B74(v8, v9, v10) == 1)
  {
    sub_22C36DD28(v0, &qword_27D9C0760, &qword_22C928BD8);
    return 0;
  }

  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  sub_22C36B7F4();
  sub_22C839C78(v0, v13);
  if (!v12)
  {
    return 0;
  }

  return v11;
}

uint64_t sub_22C8317F4()
{
  v2 = sub_22C3A5908(&qword_27D9C0760, &qword_22C928BD8);
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C3721C8();
  v6 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C373F18(&qword_281430CF0, 255, type metadata accessor for CacheKeyHashableRepresentation);
  sub_22C370018();
  v7 = sub_22C909F0C();
  swift_beginAccess();
  v8 = *(v1 + 112);
  *(v1 + 112) = v7;

  sub_22C370018();
  v9 = sub_22C909F0C();
  swift_beginAccess();
  v10 = *(v1 + 128);
  *(v1 + 128) = v9;

  sub_22C36A748();
  sub_22C36C640(v11, v12, v13, v6);
  v14 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU;
  sub_22C79D0C0();
  sub_22C839EF8(v0, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_22C83195C()
{
  sub_22C369980();
  v3 = v2;
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v4;
  v1[35] = v5;
  v1[32] = v6;
  v1[33] = v7;
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[38] = sub_22C3699D4();
  v11 = *(v3 - 8);
  v1[39] = v11;
  v12 = *(v11 + 64);
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v13 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C831A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C3743E4();
  v19 = *(v18 + 288);
  v20 = *(v18 + 296);
  v21 = *(v18 + 264);
  sub_22C82E888();
  sub_22C3E8FB4(v18 + 16, v18 + 56, &qword_27D9BF3C8, &qword_22C928BF0);
  v22 = *(v18 + 88);
  if (v22 == 255)
  {
    v29 = *(v18 + 296);
    v28 = *(v18 + 304);
    v31 = *(v18 + 280);
    v30 = *(v18 + 288);
    v32 = *(v18 + 264);
    v33 = *(v18 + 272);
    sub_22C90A75C();
    sub_22C598F54();
    sub_22C36A748();
    sub_22C36C640(v34, v35, v36, v37);
    v38 = swift_allocObject();
    sub_22C83AA1C(v38);
    sub_22C83A954();
    v40 = v39;
    *(v18 + 368) = v39;
    sub_22C37275C();
    sub_22C82E6C0(v41, v42);
    v43 = *(MEMORY[0x277D857C8] + 4);
    v44 = swift_task_alloc();
    *(v18 + 376) = v44;
    v45 = sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    sub_22C83A99C();
    *v44 = v50;
    v44[1] = sub_22C83203C;
    v51 = MEMORY[0x277D84950];
    v52 = v18 + 96;
    v53 = v40;
  }

  else
  {
    if (v22)
    {
      v23 = *(v18 + 328);
      v24 = *(v18 + 288);
      sub_22C456E34((v18 + 56), (v18 + 160));
      sub_22C381574();
      sub_22C831118(v25, v26, v27);
      v57 = *(v18 + 328);
      v58 = *(v18 + 312);
      v59 = *(v18 + 288);
      v60 = *(v18 + 256);
      sub_22C36FF94((v18 + 160));
      sub_22C36DD28(v18 + 16, &qword_27D9BF3C8, &qword_22C928BF0);
      v61 = *(v58 + 32);
      sub_22C37017C();
      v62();
      sub_22C83A9C4();
      v63 = *(v18 + 304);

      sub_22C369C50();

      return v64();
    }

    v54 = *(v18 + 56);
    *(v18 + 344) = v54;
    v55 = *(MEMORY[0x277D857C8] + 4);
    v56 = swift_task_alloc();
    *(v18 + 352) = v56;
    v45 = sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
    v46 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v56 = v18;
    v56[1] = sub_22C831D88;
    v51 = MEMORY[0x277D84950];
    v52 = v18 + 192;
    v53 = v54;
  }

  return MEMORY[0x282200430](v52, v53, v45, v46, v51, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C831D88()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v1 + 352);
  *v4 = *v2;
  *(v3 + 360) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 296);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C831EA0()
{
  sub_22C36D5EC();
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[36];
  v4 = v0[27];
  sub_22C83AB5C(v0 + 24);
  v0[31] = v4;
  sub_22C36D548(v0 + 28);
  sub_22C36BBA8(v4);
  v6 = *(v5 + 16);
  sub_22C634004();
  v7();
  sub_22C381574();
  sub_22C831118(v8, v9, v10);
  v11 = v0[43];
  if (v1)
  {
    sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v0 + 28);
    sub_22C36FF94(v0 + 24);
    sub_22C83A9C4();
    v12 = v0[38];

    sub_22C369A24();
  }

  else
  {
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[36];
    v17 = v0[32];
    sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);

    sub_22C36FF94(v0 + 28);
    sub_22C36FF94(v0 + 24);
    v18 = *(v15 + 32);
    sub_22C37275C();
    v19();
    sub_22C83A9C4();
    v20 = v0[38];

    sub_22C369C50();
  }

  return v13();
}

uint64_t sub_22C83203C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 296);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C832154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C83AB14();
  sub_22C3743E4();
  v11 = v10[48];
  v12 = v10[40];
  v13 = v10[36];
  v14 = v10[15];
  sub_22C83AB5C(v10 + 12);
  v10[19] = v14;
  sub_22C36D548(v10 + 16);
  sub_22C36BBA8(v14);
  v16 = *(v15 + 16);
  sub_22C634004();
  v17();
  sub_22C381574();
  sub_22C831118(v18, v19, v20);
  sub_22C36FF94(v10 + 16);
  sub_22C36FF94(v10 + 12);
  v21 = v10[46];
  if (v11)
  {
    v22 = v10[36];
    v23 = v10[37];
    v24 = v10[33];
    sub_22C82E788();
    swift_willThrow();

    sub_22C36DD28((v10 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
    v26 = v10[41];
    v25 = v10[42];
    v27 = v10[40];
    v28 = v10[38];

    sub_22C369A24();
  }

  else
  {
    v29 = v10[39];
    v30 = v10[37];
    v31 = v10[32];
    sub_22C82D568(v10[40], v10[33], v10[36]);

    sub_22C36DD28((v10 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
    v32 = *(v29 + 32);
    sub_22C37275C();
    v33();
    sub_22C83A9C4();
    v34 = v10[38];

    sub_22C369C50();
  }

  sub_22C83AB2C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_22C8322FC()
{
  sub_22C36FB38();
  v1 = v0[43];

  sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[38];

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C8323A0()
{
  sub_22C36D5EC();
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[33];
  sub_22C82E788();
  swift_willThrow();

  sub_22C36DD28((v0 + 2), &qword_27D9BF3C8, &qword_22C928BF0);
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];
  v9 = v0[38];

  sub_22C369A24();

  return v10();
}

uint64_t sub_22C832468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22C83248C, 0, 0);
}

uint64_t sub_22C83248C()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v1[3] = v0[5];
  sub_22C36D548(v1);
  sub_22C37F5D8();
  v3 = *(v2 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v4;
  *v4 = v5;
  v6 = sub_22C37E1E8(v4);

  return v7(v6);
}

uint64_t sub_22C83254C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C83A850, 0, 0);
  }

  else
  {
    sub_22C369A24();

    return v9();
  }
}

uint64_t sub_22C832668()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v7 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v1[16] = sub_22C3699D4();
  v10 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8326F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C3743E4();
  v20 = v18[15];
  v19 = v18[16];
  v22 = v18[13];
  v21 = v18[14];
  v23 = v18[11];
  v24 = v18[12];
  sub_22C90A75C();
  sub_22C598F54();
  sub_22C36A748();
  sub_22C36C640(v25, v26, v27, v28);
  v29 = swift_allocObject();
  sub_22C83AA1C(v29);
  sub_22C83A954();
  v18[17] = v30;
  sub_22C37275C();
  sub_22C82E6C0(v31, v32);
  v33 = *(MEMORY[0x277D857C8] + 4);
  v34 = swift_task_alloc();
  v18[18] = v34;
  sub_22C3A5908(&qword_27D9C0778, &unk_22C928C18);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C83A99C();
  *v34 = v35;
  v34[1] = sub_22C83283C;
  sub_22C37275C();

  return MEMORY[0x282200430](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C83283C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  sub_22C6343B0();
  v7 = *(v6 + 120);
  sub_22C37E810();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C832954()
{
  sub_22C3743E4();
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[5];
  sub_22C83AB5C(v0 + 2);
  v0[9] = v4;
  sub_22C36D548(v0 + 6);
  sub_22C36BBA8(v4);
  v6 = *(v5 + 16);
  sub_22C634004();
  v7();
  sub_22C831118((v0 + 6), v2, v3);
  sub_22C36FF94(v0 + 6);
  sub_22C36FF94(v0 + 2);
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  if (v1)
  {
    v11 = v0[11];
    sub_22C82E788();
    swift_willThrow();
  }

  else
  {
    sub_22C82D568(v0[10], v0[11], v0[14]);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22C832A8C()
{
  sub_22C36D5EC();
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[11];
  sub_22C82E788();
  swift_willThrow();

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C832B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22C832B40, 0, 0);
}

uint64_t sub_22C832B40()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v1[3] = v0[5];
  sub_22C36D548(v1);
  sub_22C37F5D8();
  v3 = *(v2 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v4;
  *v4 = v5;
  v6 = sub_22C37E1E8(v4);

  return v7(v6);
}

uint64_t sub_22C832C00()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C832D1C, 0, 0);
  }

  else
  {
    sub_22C369A24();

    return v9();
  }
}

uint64_t sub_22C832D1C()
{
  sub_22C369980();
  sub_22C4BF5D8(*(v0 + 16));
  sub_22C369A24();
  v2 = *(v0 + 56);

  return v1();
}

void sub_22C832D78()
{
  sub_22C370030();
  v3 = sub_22C3A5908(&qword_27D9C0240, &qword_22C926718);
  sub_22C36985C(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  v9 = sub_22C903E7C();
  v10 = sub_22C369824(v9);
  v62 = v11;
  v63 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C50B438();
  v14 = sub_22C3A5908(&qword_27D9C0260, &unk_22C926740);
  sub_22C36985C(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C3721C8();
  v64 = sub_22C903EAC();
  if (v18)
  {
    v19 = v18;
    v61 = v1;
    v20 = sub_22C903EBC();
    if (v20)
    {
      v21 = v20;
      v22 = v14[10];
      sub_22C902DBC();
      sub_22C36A748();
      sub_22C36C640(v23, v24, v25, v26);
      v27 = v14[13];
      sub_22C903D4C();
      sub_22C36A748();
      sub_22C36C640(v28, v29, v30, v31);
      sub_22C3A5908(&qword_27D9C0268, &qword_22C928BD0);
      sub_22C598F54();
      sub_22C36A748();
      sub_22C36C640(v32, v33, v34, v35);
      v36 = (v0 + v14[7]);
      *v36 = 0;
      v36[1] = 0;
      v37 = (v0 + v14[8]);
      *v37 = 0x736E617073;
      v37[1] = 0xE500000000000000;
      v38 = (v0 + v14[9]);
      *v38 = 0;
      v38[1] = 0;
      v39 = (v0 + v14[11]);
      *v39 = v64;
      v39[1] = v19;
      *(v0 + v14[12]) = 1;

      sub_22C82C088(v21, v0);

      sub_22C36DD28(v0, &qword_27D9C0260, &unk_22C926740);
    }

    if (sub_22C903ECC())
    {
      sub_22C903E3C();
      v40 = v3[10];
      sub_22C902DBC();
      sub_22C36A748();
      sub_22C36C640(v41, v42, v43, v44);
      v45 = v3[13];
      sub_22C903D4C();
      sub_22C36A748();
      sub_22C36C640(v46, v47, v48, v49);
      sub_22C3A5908(&qword_27D9C0248, &qword_22C926720);
      sub_22C36A748();
      sub_22C36C640(v50, v51, v52, v53);
      v54 = &v8[v3[7]];
      *v54 = 0;
      *(v54 + 1) = 0;
      v55 = &v8[v3[8]];
      *v55 = 0x747865746E6F63;
      *(v55 + 1) = 0xE700000000000000;
      v56 = &v8[v3[9]];
      *v56 = 0;
      *(v56 + 1) = 0;
      v57 = &v8[v3[11]];
      *v57 = v64;
      v57[1] = v19;
      v8[v3[12]] = 1;
      v58 = sub_22C370114();
      sub_22C82CAE8(v58, v59);
      sub_22C36DD28(v8, &qword_27D9C0240, &qword_22C926718);
      (*(v62 + 8))(v2, v63);
    }

    else
    {
    }
  }

  else
  {
    sub_22C839C24();
    sub_22C37A198();
    swift_allocError();
    *v60 = 0;
    swift_willThrow();
  }

  sub_22C36FB20();
}

uint64_t sub_22C8330E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return sub_22C82F6F8();
}

uint64_t sub_22C83319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22C8331C0, v5, 0);
}

uint64_t sub_22C8331C0()
{
  sub_22C369980();
  v1 = v0[5];
  sub_22C82D568(v0[2], v0[3], v0[4]);
  sub_22C369C50();

  return v2();
}

uint64_t sub_22C83321C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return sub_22C8303E8();
}

uint64_t sub_22C8332D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22C8332F4, v4, 0);
}

uint64_t sub_22C8332F4()
{
  sub_22C36FB38();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_22C832D78();
  sub_22C369A24();

  return v3();
}

uint64_t sub_22C83336C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return sub_22C83195C();
}

uint64_t sub_22C833438()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return sub_22C832668();
}

void sub_22C83353C()
{
  sub_22C36BA7C();
  v42 = v2;
  v43 = v3;
  v4 = sub_22C908D2C();
  v5 = sub_22C369824(v4);
  v40 = v6;
  v41 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C50B530();
  sub_22C83A980();
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input();
  v10 = sub_22C369824(DecorationCache);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v15);
  v17 = (&v38 - v16);
  sub_22C83A980();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_22C369824(TupleTypeMetadata2);
  v39 = v19;
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v38 + *(v23 + 48) - v24);
  v26 = *(v12 + 16);
  (v26)(&v38 - v24, v42, DecorationCache);
  (v26)(v25, v43, DecorationCache);
  sub_22C36BBCC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C37017C();
    v26();
    sub_22C36D390();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v40;
      v27 = v41;
      (*(v40 + 32))(v0, v25, v41);
      sub_22C370018();
      sub_22C908D0C();
      v29 = *(v28 + 8);
      v29(v0, v27);
      v29(v1, v27);
      goto LABEL_8;
    }

    (*(v40 + 8))(v1, v41);
LABEL_7:
    v12 = v39;
    goto LABEL_8;
  }

  sub_22C37017C();
  v26();
  v31 = *v17;
  v30 = v17[1];
  sub_22C36D390();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_7;
  }

  if (v31 == *v25 && v30 == v25[1])
  {
    v37 = v25[1];
  }

  else
  {
    v36 = v25[1];
    sub_22C90B4FC();
  }

LABEL_8:
  v32 = *(v12 + 8);
  v33 = sub_22C36BBCC();
  v34(v33);
  sub_22C36CC48();
}

uint64_t sub_22C833858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575516C6F6F74 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C833924(char a1)
{
  if (a1)
  {
    return 0x726575516C6F6F74;
  }

  else
  {
    return 0x7972657571;
  }
}

void sub_22C83395C()
{
  sub_22C370030();
  v57 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v6 = v4;
  v55 = v4;
  type metadata accessor for QueryDecorationCacheKey.Input.ToolQueryCodingKeys();
  sub_22C381C08();
  swift_getWitnessTable();
  sub_22C83AA88();
  v7 = sub_22C90B43C();
  v8 = sub_22C369824(v7);
  v53 = v9;
  v54 = v8;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v50 = v13;
  sub_22C36BA0C();
  v14 = sub_22C908D2C();
  v15 = sub_22C369824(v14);
  v51 = v16;
  v52 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v49 = v20 - v19;
  type metadata accessor for QueryDecorationCacheKey.Input.QueryCodingKeys();
  sub_22C83A8D4();
  swift_getWitnessTable();
  sub_22C83AA88();
  v21 = sub_22C90B43C();
  v22 = sub_22C369824(v21);
  v47 = v23;
  v48 = v22;
  v25 = *(v24 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C36D5B4();
  v46 = v27;
  v28 = *(v6 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  sub_22C50B438();
  type metadata accessor for QueryDecorationCacheKey.Input.CodingKeys();
  sub_22C380628();
  swift_getWitnessTable();
  v56 = sub_22C90B43C();
  sub_22C369824(v56);
  v58 = v31;
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C3721C8();
  v36 = *(v3 + 24);
  v35 = *(v3 + 32);
  v37 = sub_22C36EC8C();
  sub_22C374168(v37, v38);
  sub_22C90B6CC();
  (*(v28 + 16))(v1, v57, v55);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v51 + 32))(v49, v1, v52);
    sub_22C90B36C();
    sub_22C36C504();
    sub_22C373F18(v39, 255, v40);
    sub_22C90B41C();
    (*(v53 + 8))(v50, v54);
    (*(v51 + 8))(v49, v52);
  }

  else
  {
    v41 = *v1;
    v42 = v1[1];
    sub_22C90B36C();
    sub_22C90B3CC();

    (*(v47 + 8))(v46, v48);
  }

  v43 = *(v58 + 8);
  v44 = sub_22C36DA14();
  v45(v44);
  sub_22C36FB20();
}

uint64_t sub_22C833DB8(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v5 = sub_22C908D2C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C50B530();
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v3, v15, v5);
    MEMORY[0x2318B8B10](1);
    sub_22C36C504();
    sub_22C373F18(v17, 255, v18);
    sub_22C909F8C();
    return (*(v8 + 8))(v3, v5);
  }

  else
  {
    v20 = *v15;
    v21 = v15[1];
    MEMORY[0x2318B8B10](0);
    sub_22C36BBCC();
    sub_22C909FFC();
  }
}

uint64_t sub_22C833F8C(uint64_t a1)
{
  sub_22C37B5C8();
  sub_22C833DB8(v3, a1);
  return sub_22C90B66C();
}

void sub_22C833FCC()
{
  sub_22C370030();
  v89 = v0;
  v4 = v3;
  v82 = v5;
  DecorationCache = type metadata accessor for QueryDecorationCacheKey.Input.ToolQueryCodingKeys();
  sub_22C381C08();
  swift_getWitnessTable();
  sub_22C83AA88();
  v80 = DecorationCache;
  v81 = v7;
  v78 = sub_22C90B35C();
  sub_22C369824(v78);
  v77 = v8;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v83 = v12;
  sub_22C38B534();
  v13 = type metadata accessor for QueryDecorationCacheKey.Input.QueryCodingKeys();
  sub_22C83A8D4();
  swift_getWitnessTable();
  sub_22C83AA88();
  v86 = v13;
  v79 = v14;
  v76 = sub_22C90B35C();
  sub_22C369824(v76);
  v75 = v15;
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  v85 = v19;
  sub_22C38B534();
  type metadata accessor for QueryDecorationCacheKey.Input.CodingKeys();
  sub_22C380628();
  swift_getWitnessTable();
  sub_22C83A980();
  v20 = sub_22C90B35C();
  v87 = sub_22C369824(v20);
  v88 = v21;
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C50B438();
  v84 = type metadata accessor for QueryDecorationCacheKey.Input();
  v25 = sub_22C369824(v84);
  v74 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v33);
  v35 = &v70 - v34;
  v36 = v4;
  v38 = v4[3];
  v37 = v4[4];
  v94 = v36;
  sub_22C374168(v36, v38);
  v39 = v89;
  sub_22C90B6BC();
  if (!v39)
  {
    v71 = v1;
    v73 = v31;
    v72 = v35;
    v89 = 0;
    v40 = v87;
    *&v90 = sub_22C90B34C();
    sub_22C83A980();
    sub_22C90A68C();
    swift_getWitnessTable();
    *&v92 = sub_22C90ADFC();
    *(&v92 + 1) = v41;
    *&v93 = v42;
    *(&v93 + 1) = v43;
    sub_22C83A980();
    sub_22C90ADEC();
    swift_getWitnessTable();
    sub_22C36DA14();
    sub_22C90A99C();
    v44 = v90;
    if (v90 == 2 || (v70 = v92, v90 = v92, v91 = v93, sub_22C36DA14(), (sub_22C90A9AC() & 1) == 0))
    {
      v49 = sub_22C90AFBC();
      sub_22C37A198();
      swift_allocError();
      v51 = v50;
      v52 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
      *v51 = v84;
      sub_22C90B25C();
      sub_22C387D6C();
      v53 = *MEMORY[0x277D84160];
      sub_22C36BBA8(v49);
      (*(v54 + 104))(v51);
      swift_willThrow();
      (*(v88 + 8))(v2, v40);
    }

    else
    {
      if (v44)
      {
        LOBYTE(v90) = 1;
        v45 = v89;
        sub_22C90B24C();
        v46 = v82;
        if (!v45)
        {
          sub_22C908D2C();
          sub_22C36C504();
          sub_22C373F18(v47, 255, v48);
          sub_22C90B32C();
          v57 = *(v77 + 8);
          v58 = sub_22C372164();
          v59(v58);
          (*(v88 + 8))(v2, v40);
          sub_22C386048();
          swift_unknownObjectRelease();
          v60 = v84;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          v67 = *(v74 + 32);
          v68 = v72;
          v69 = sub_22C36CA88();
          v67(v69);
          (v67)(v46, v68, v60);
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v90) = 0;
        v55 = v89;
        sub_22C90B24C();
        v56 = v88;
        if (!v55)
        {
          v61 = sub_22C90B2DC();
          v63 = v62;
          v64 = sub_22C36CD78();
          v65(v64);
          (*(v56 + 8))(v2, v40);
          sub_22C386048();
          swift_unknownObjectRelease();
          v66 = v71;
          *v71 = v61;
          v66[1] = v63;
          v60 = v84;
          swift_storeEnumTagMultiPayload();
          v46 = v82;
          goto LABEL_14;
        }
      }

      (*(v88 + 8))(v2, v40);
      sub_22C386048();
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  sub_22C36FF94(v94);
  sub_22C36FB20();
}

uint64_t sub_22C8346B8(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  v4 = *(a2 + 16);
  sub_22C3A4FC0(v6, *v2);
  return sub_22C90B66C();
}

uint64_t sub_22C834710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_22C833858(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_22C83473C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_22C3C0B2C();
}

uint64_t sub_22C834764@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_22C3C4E48();
  *a2 = result;
  return result;
}

uint64_t sub_22C834790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C8347E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834880@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_22C3772DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_22C8348B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C834904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834958(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_22C90B62C();
  a4(v7, *(a2 + 16));
  return sub_22C90B66C();
}

uint64_t sub_22C8349A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22C8349F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22C834A90(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C833DB8(v4, a2);
  return sub_22C90B66C();
}

uint64_t sub_22C834AD4()
{
  sub_22C90B21C();
  sub_22C37BB14();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_22C834B1C()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C369A48();
  v6 = sub_22C902DBC();
  v7 = sub_22C36985C(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  v10 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C383814();
  v14 = sub_22C3A5908(&qword_27D9C0708, &qword_22C928B88);
  sub_22C36985C(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C3717BC();
  v18 = v0[1];
  v19 = v5[1];
  if (!v18)
  {
    if (v19)
    {
      goto LABEL_42;
    }

LABEL_10:
    v21 = v0[3];
    v22 = v5[3];
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_42;
      }

      v23 = v0[2] == v5[2] && v21 == v22;
      if (!v23 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v22)
    {
      goto LABEL_42;
    }

    v24 = v0[4] == v5[4] && v0[5] == v5[5];
    if (!v24 && (sub_22C90B4FC() & 1) == 0)
    {
      goto LABEL_42;
    }

    v25 = v0[7];
    v26 = v5[7];
    if (v25)
    {
      if (!v26)
      {
        goto LABEL_42;
      }

      v27 = v0[6] == v5[6] && v25 == v26;
      if (!v27 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v26)
    {
      goto LABEL_42;
    }

    v39 = type metadata accessor for CacheKeyHashableRepresentation(0);
    v28 = v39[8];
    v29 = *(v14 + 48);
    sub_22C3E8FB4(v0 + v28, v2, &qword_27D9C06F8, &qword_22C929520);
    sub_22C3E8FB4(v5 + v28, v2 + v29, &qword_27D9C06F8, &qword_22C929520);
    sub_22C37BFE0(v2);
    if (v20)
    {
      sub_22C37BFE0(v2 + v29);
      if (v20)
      {
        sub_22C36DD28(v2, &qword_27D9C06F8, &qword_22C929520);
        goto LABEL_44;
      }
    }

    else
    {
      sub_22C3E8FB4(v2, v3, &qword_27D9C06F8, &qword_22C929520);
      sub_22C37BFE0(v2 + v29);
      if (!v30)
      {
        sub_22C37B83C();
        sub_22C839CD0(v2 + v29, v1);
        v31 = sub_22C90067C();
        sub_22C839C78(v1, v6);
        sub_22C839C78(v3, v6);
        sub_22C36DD28(v2, &qword_27D9C06F8, &qword_22C929520);
        if ((v31 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_44:
        v32 = v39[9];
        v33 = (v0 + v32);
        v34 = *(v0 + v32 + 8);
        v35 = (v5 + v32);
        v36 = v35[1];
        if (v34)
        {
          if (!v36)
          {
            goto LABEL_42;
          }

          v37 = *v33 == *v35 && v34 == v36;
          if (!v37 && (sub_22C90B4FC() & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else if (v36)
        {
          goto LABEL_42;
        }

        v38 = *(v0 + v39[10]) ^ *(v5 + v39[10]) ^ 1u;
        goto LABEL_42;
      }

      sub_22C839C78(v3, MEMORY[0x277D1D2C8]);
    }

    sub_22C36DD28(v2, &qword_27D9C0708, &qword_22C928B88);
    goto LABEL_42;
  }

  if (v19)
  {
    v20 = *v0 == *v5 && v18 == v19;
    if (v20 || (sub_22C90B4FC() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_42:
  sub_22C36CC48();
}

uint64_t sub_22C834E6C()
{
  v2 = sub_22C902DBC();
  v3 = sub_22C36985C(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C383814();
  if (v0[1])
  {
    v13 = *v0;
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  if (v0[3])
  {
    v14 = v0[2];
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  v15 = v0[4];
  v16 = v0[5];
  sub_22C909FFC();
  if (v0[7])
  {
    v17 = v0[6];
    sub_22C36D354();
    sub_22C383CCC();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  v18 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C3E8FB4(v0 + v18[8], v1, &qword_27D9C06F8, &qword_22C929520);
  sub_22C37BFE0(v1);
  if (v19)
  {
    sub_22C387CC4();
  }

  else
  {
    sub_22C37B83C();
    sub_22C839CD0(v1, v8);
    sub_22C36D354();
    sub_22C902D9C();
    sub_22C839C78(v8, v2);
  }

  v20 = (v0 + v18[9]);
  if (v20[1])
  {
    v21 = *v20;
    sub_22C36D354();
    sub_22C909FFC();
  }

  else
  {
    sub_22C387CC4();
  }

  return MEMORY[0x2318B8B10](*(v0 + v18[10]));
}

uint64_t sub_22C83504C()
{
  sub_22C90B62C();
  sub_22C834E6C();
  return sub_22C90B66C();
}

uint64_t sub_22C83508C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C83514C(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

void sub_22C83517C()
{
  sub_22C370030();
  v29 = v2;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9C0740, &qword_22C928BB0);
  v6 = sub_22C369824(v5);
  v27 = v7;
  v28 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C383814();
  v26 = sub_22C3A5908(&qword_27D9C0748, &qword_22C928BB8);
  sub_22C369824(v26);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C50B41C();
  v16 = sub_22C3A5908(&qword_27D9C0750, &unk_22C928BC0);
  sub_22C369824(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = &v26 - v22;
  v24 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C836F10();
  sub_22C90B6CC();
  v25 = (v18 + 8);
  if (v29)
  {
    sub_22C839B7C();
    sub_22C90B36C();
    (*(v27 + 8))(v0, v28);
  }

  else
  {
    sub_22C839BD0();
    sub_22C90B36C();
    (*(v12 + 8))(v1, v26);
  }

  (*v25)(v23, v16);
  sub_22C36FB20();
}

void sub_22C8353E8()
{
  sub_22C370030();
  v3 = v2;
  v45 = sub_22C3A5908(&qword_27D9C0710, &qword_22C928B90);
  sub_22C369824(v45);
  v43 = v4;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C3721C8();
  v8 = sub_22C3A5908(&qword_27D9C0718, &qword_22C928B98);
  sub_22C369824(v8);
  v42 = v9;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C50B41C();
  v13 = sub_22C3A5908(&qword_27D9C0720, &unk_22C928BA0);
  sub_22C369824(v13);
  v44 = v14;
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C383814();
  v18 = v3[4];
  sub_22C374168(v3, v3[3]);
  sub_22C836F10();
  sub_22C90B6BC();
  if (v0)
  {
    goto LABEL_8;
  }

  v46 = v3;
  v19 = sub_22C90B34C();
  sub_22C3E1F24(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v28 = sub_22C90AFBC();
    sub_22C37A198();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v30 = &type metadata for DeviceSource;
    sub_22C90B25C();
    sub_22C387D6C();
    v32 = *MEMORY[0x277D84160];
    sub_22C36BBA8(v28);
    (*(v33 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = *(v44 + 8);
    v35 = sub_22C377C4C();
    v36(v35);
    v3 = v46;
LABEL_8:
    sub_22C36FF94(v3);
LABEL_9:
    sub_22C36FB20();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_22C3E1F20(v21 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      if (v23)
      {
        sub_22C839B7C();
        sub_22C38B284();
        swift_unknownObjectRelease();
        v37 = *(v43 + 8);
        v38 = sub_22C370114();
        v39(v38);
      }

      else
      {
        sub_22C839BD0();
        sub_22C38B284();
        swift_unknownObjectRelease();
        (*(v42 + 8))(v1, v8);
      }

      v40 = sub_22C83A90C();
      v41(v40);
      sub_22C36FF94(v46);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22C83582C()
{
  sub_22C90B62C();
  sub_22C834E6C();
  return sub_22C90B66C();
}

uint64_t sub_22C83588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C83508C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8358B4(uint64_t a1)
{
  v2 = sub_22C836F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8358F0(uint64_t a1)
{
  v2 = sub_22C836F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C83592C(uint64_t a1)
{
  v2 = sub_22C839BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C835968(uint64_t a1)
{
  v2 = sub_22C839BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8359A4(uint64_t a1)
{
  v2 = sub_22C839B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8359E0(uint64_t a1)
{
  v2 = sub_22C839B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C835A1C(_BYTE *a1@<X8>)
{
  sub_22C8353E8();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_22C835A80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C835ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C90B4FC();
  }
}

uint64_t sub_22C835AE8()
{
  sub_22C37B5C8();
  sub_22C37017C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t sub_22C835B2C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C835AE8();
}

uint64_t sub_22C835B34()
{
  sub_22C90B62C();
  sub_22C573C50(v2, *v0, v0[1]);
  return sub_22C90B66C();
}

uint64_t sub_22C835BA8()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[2] = v1;
  sub_22C3699B8(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C835C48()
{
  sub_22C36D5EC();
  v1 = v0[4];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AAEC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache failed to initialise. The remote state cannot be read so this remote intelligence request will fail");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  v11 = *(v9 + 8);
  v12 = sub_22C36BAFC();
  v13(v12);
  sub_22C839C24();
  sub_22C37A198();
  v14 = swift_allocError();
  sub_22C83AAF4(v14, v15);

  sub_22C369A24();

  return v16();
}

uint64_t sub_22C835D40()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[2] = v1;
  sub_22C3699B8(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C835DE0()
{
  sub_22C36D5EC();
  v1 = v0[4];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AAEC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache failed to initialise. The remote state cannot be stored so this remote intelligence request will fail");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  v11 = *(v9 + 8);
  v12 = sub_22C36BAFC();
  v13(v12);
  sub_22C839C24();
  sub_22C37A198();
  v14 = swift_allocError();
  sub_22C83AAF4(v14, v15);

  sub_22C369A24();

  return v16();
}

uint64_t sub_22C835ED8()
{
  sub_22C369980();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22C9063DC();
  v0[4] = v3;
  sub_22C3699B8(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_22C3699D4();
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C835F7C()
{
  sub_22C36D5EC();
  v1 = v0[6];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AADC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  v13 = *(v9 + 8);
  v14 = sub_22C36BAFC();
  v15(v14);
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v11);

  sub_22C369C50();

  return v19();
}

uint64_t sub_22C83606C()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C9063DC();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_22C3699D4();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C836114()
{
  sub_22C36D5EC();
  v1 = v0[7];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AADC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  sub_22C38AB9C();
  v15 = *(v11 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[8] = v16;
  *v16 = v17;
  v18 = sub_22C83A9D0(v16);

  return v19(v18);
}

uint64_t sub_22C836248()
{
  sub_22C369980();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_22C9063DC();
  v0[5] = v4;
  sub_22C3699B8(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_22C3699D4();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8362F0()
{
  sub_22C36D5EC();
  v1 = v0[7];
  sub_22C90400C();
  v2 = sub_22C9063CC();
  sub_22C90AADC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C36BB14(&dword_22C366000, v6, v7, "QueryDecorationCache failed to initialise - QueryDecoration will run but caching will fail. This will impact performance.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  sub_22C38AB9C();
  v15 = *(v11 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[8] = v16;
  *v16 = v17;
  v18 = sub_22C83A9D0(v16);

  return v19(v18);
}

uint64_t sub_22C836424()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C836520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835ED8();
}

uint64_t sub_22C8365C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835B88();
}

uint64_t sub_22C83664C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835BA8();
}

uint64_t sub_22C8366D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C835D40();
}

uint64_t sub_22C836764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C83606C();
}

uint64_t sub_22C836814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C836248();
}

uint64_t QueryDecorationRemoteStateHandler.cacheRemoteDeviceState(remoteState:sessionId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8368F0()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v4 = *(sub_22C37FF48() + 32);
  sub_22C369B5C();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_22C469418;
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9, v2, v3);
}

uint64_t sub_22C836A38()
{
  result = sub_22C90413C();
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

void sub_22C836AF4()
{
  sub_22C836D70(319, &qword_281430C90, type metadata accessor for CacheKeyHashableRepresentation);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22C836BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C836C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C836C6C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_22C836CA0()
{
  sub_22C436620();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22C836D70(319, &qword_281435798, MEMORY[0x277D1D2C8]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_22C836D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22C836DD8()
{
  result = qword_27D9C0700;
  if (!qword_27D9C0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0700);
  }

  return result;
}

unint64_t sub_22C836F10()
{
  result = qword_27D9C0728;
  if (!qword_27D9C0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0728);
  }

  return result;
}

uint64_t sub_22C836F64(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C468(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C837018(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C837018(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C8373B0(v8, v9, a1, v4);
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
    return sub_22C837160(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C837160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v35 = v20;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      v23 = v21;
      v24 = v40;
      do
      {
        sub_22C3E8FB4(v22, v17, &qword_27D9BAB78, &qword_22C928C40);
        sub_22C3E8FB4(v20, v13, &qword_27D9BAB78, &qword_22C928C40);
        v25 = *(v24 + 48);
        v26 = *&v17[v25];
        v27 = *&v13[v25];
        sub_22C36DD28(v13, &qword_27D9BAB78, &qword_22C928C40);
        result = sub_22C36DD28(v17, &qword_27D9BAB78, &qword_22C928C40);
        if (v26 >= v27)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v28 = v39;
        sub_22C839F68(v22, v39);
        v24 = v40;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C839F68(v28, v20);
        v20 += v37;
        v22 += v37;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v36 + 1;
      v20 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C8373B0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v128 = *(v8 - 8);
  v9 = *(v128 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v134 = &v116 - v15;
  MEMORY[0x28223BE20](v14);
  v133 = &v116 - v16;
  v129 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_98:
    v135 = *v120;
    if (!v135)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v109 = (v19 + 16);
      v110 = *(v19 + 16);
      while (v110 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_136;
        }

        v111 = v5;
        v112 = v19;
        v5 = (v19 + 16 * v110);
        v113 = *v5;
        v114 = &v109[2 * v110];
        v19 = *(v114 + 1);
        sub_22C837CC0(*v129 + *(v128 + 72) * *v5, *v129 + *(v128 + 72) * *v114, *v129 + *(v128 + 72) * v19, v135);
        if (v111)
        {
          break;
        }

        if (v19 < v113)
        {
          goto LABEL_124;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_125;
        }

        *v5 = v113;
        v5[1] = v19;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_126;
        }

        v110 = *v109 - 1;
        sub_22C56BFF0(v114 + 16, v115, v114);
        *v109 = v110;
        v19 = v112;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v19 = sub_22C56BFD8(v19);
    goto LABEL_100;
  }

  v118 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v135 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v121 = v18;
    if (v18 + 1 < v17)
    {
      v119 = v5;
      v22 = *v129;
      v126 = v22;
      v127 = v17;
      v23 = *(v128 + 72);
      v130 = v18 + 1;
      v24 = v22 + v23 * v21;
      v25 = v133;
      sub_22C3E8FB4(v24, v133, &qword_27D9BAB78, &qword_22C928C40);
      v26 = v22 + v23 * v20;
      v27 = v134;
      sub_22C3E8FB4(v26, v134, &qword_27D9BAB78, &qword_22C928C40);
      v28 = *(v8 + 48);
      v29 = *(v25 + v28);
      v30 = *(v27 + v28);
      sub_22C36DD28(v27, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v25, &qword_27D9BAB78, &qword_22C928C40);
      v31 = v127;
      v32 = v20 + 2;
      v131 = v23;
      v33 = v126 + v23 * (v20 + 2);
      while (1)
      {
        v34 = v32;
        if (++v130 >= v31)
        {
          break;
        }

        v35 = v133;
        sub_22C3E8FB4(v33, v133, &qword_27D9BAB78, &qword_22C928C40);
        v36 = v134;
        sub_22C3E8FB4(v24, v134, &qword_27D9BAB78, &qword_22C928C40);
        v37 = *(v135 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_22C36DD28(v36, &qword_27D9BAB78, &qword_22C928C40);
        sub_22C36DD28(v35, &qword_27D9BAB78, &qword_22C928C40);
        v31 = v127;
        v33 += v131;
        v24 += v131;
        v32 = v34 + 1;
        if (v29 < v30 == v38 >= v39)
        {
          goto LABEL_9;
        }
      }

      v130 = v31;
LABEL_9:
      v5 = v119;
      if (v29 >= v30)
      {
        v21 = v130;
        v20 = v121;
        v8 = v135;
      }

      else
      {
        v21 = v130;
        v20 = v121;
        if (v130 < v121)
        {
          goto LABEL_130;
        }

        v8 = v135;
        if (v121 < v130)
        {
          v117 = v19;
          if (v31 >= v34)
          {
            v40 = v34;
          }

          else
          {
            v40 = v31;
          }

          v41 = v131 * (v40 - 1);
          v42 = v130;
          v43 = v131 * v40;
          v44 = v121 * v131;
          do
          {
            if (v20 != --v42)
            {
              v45 = *v129;
              if (!*v129)
              {
                goto LABEL_137;
              }

              sub_22C839F68(v45 + v44, v124);
              v46 = v44 < v41 || v45 + v44 >= v45 + v43;
              if (v46)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C839F68(v124, v45 + v41);
            }

            ++v20;
            v41 -= v131;
            v43 -= v131;
            v44 += v131;
          }

          while (v20 < v42);
          v5 = v119;
          v19 = v117;
          v8 = v135;
          v21 = v130;
          v20 = v121;
        }
      }
    }

    v47 = v129[1];
    if (v21 < v47)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_129;
      }

      if (v21 - v20 < v118)
      {
        break;
      }
    }

LABEL_46:
    if (v21 < v20)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v106 = *(v19 + 16);
      sub_22C590218();
      v19 = v107;
    }

    v63 = *(v19 + 16);
    v64 = v63 + 1;
    if (v63 >= *(v19 + 24) >> 1)
    {
      sub_22C590218();
      v19 = v108;
    }

    *(v19 + 16) = v64;
    v65 = v19 + 32;
    v66 = (v19 + 32 + 16 * v63);
    v67 = v130;
    *v66 = v121;
    v66[1] = v67;
    v131 = *v120;
    if (!v131)
    {
      goto LABEL_138;
    }

    if (v63)
    {
      while (1)
      {
        v68 = v64 - 1;
        v69 = (v65 + 16 * (v64 - 1));
        v70 = (v19 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v19 + 32);
          v72 = *(v19 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_66:
          if (v74)
          {
            goto LABEL_115;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_123;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v64 < 2)
        {
          goto LABEL_117;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_81:
        if (v89)
        {
          goto LABEL_120;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v96 < v88)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v68 - 1 >= v64)
        {
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
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v100 = (v65 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = v65 + 16 * v68;
        v103 = *(v102 + 8);
        sub_22C837CC0(*v129 + *(v128 + 72) * *v100, *v129 + *(v128 + 72) * *v102, *v129 + *(v128 + 72) * v103, v131);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v103 < v101)
        {
          goto LABEL_110;
        }

        v104 = v19;
        v19 = *(v19 + 16);
        if (v68 > v19)
        {
          goto LABEL_111;
        }

        *v100 = v101;
        v100[1] = v103;
        if (v68 >= v19)
        {
          goto LABEL_112;
        }

        v64 = v19 - 1;
        sub_22C56BFF0((v102 + 16), v19 - 1 - v68, (v65 + 16 * v68));
        *(v104 + 16) = v19 - 1;
        v105 = v19 > 2;
        v19 = v104;
        v8 = v135;
        if (!v105)
        {
          goto LABEL_95;
        }
      }

      v75 = v65 + 16 * v64;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_113;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_114;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_116;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_119;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_127;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v18 = v130;
    v17 = v129[1];
    if (v130 >= v17)
    {
      goto LABEL_98;
    }
  }

  v48 = v20 + v118;
  if (__OFADD__(v20, v118))
  {
    goto LABEL_131;
  }

  if (v48 >= v47)
  {
    v48 = v129[1];
  }

  if (v48 < v20)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v21 == v48)
  {
    goto LABEL_46;
  }

  v117 = v19;
  v119 = v5;
  v49 = *(v128 + 72);
  v50 = *v129 + v49 * (v21 - 1);
  v51 = -v49;
  v52 = v20 - v21;
  v131 = *v129;
  v122 = v49;
  v123 = v48;
  v53 = v131 + v21 * v49;
LABEL_39:
  v130 = v21;
  v125 = v53;
  v126 = v52;
  v54 = v53;
  v127 = v50;
  v55 = v135;
  while (1)
  {
    v56 = v133;
    sub_22C3E8FB4(v54, v133, &qword_27D9BAB78, &qword_22C928C40);
    v57 = v134;
    sub_22C3E8FB4(v50, v134, &qword_27D9BAB78, &qword_22C928C40);
    v58 = *(v55 + 48);
    v59 = *(v56 + v58);
    v60 = *(v57 + v58);
    sub_22C36DD28(v57, &qword_27D9BAB78, &qword_22C928C40);
    sub_22C36DD28(v56, &qword_27D9BAB78, &qword_22C928C40);
    if (v59 >= v60)
    {
LABEL_44:
      v21 = v130 + 1;
      v50 = v127 + v122;
      v52 = v126 - 1;
      v53 = v125 + v122;
      if (v130 + 1 == v123)
      {
        v21 = v123;
        v5 = v119;
        v19 = v117;
        v8 = v135;
        v20 = v121;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v131)
    {
      break;
    }

    v61 = v132;
    sub_22C839F68(v54, v132);
    v55 = v135;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C839F68(v61, v50);
    v50 += v51;
    v54 += v51;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_44;
    }
  }

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
}

uint64_t sub_22C837CC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = a3;
  v55 = sub_22C3A5908(&qword_27D9BAB78, &qword_22C928C40);
  v7 = *(*(v55 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = v53 - a2;
  if (v53 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v58 = a1;
  v57 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_22C3D763C(a2, v17 / v14, a4);
    v28 = a4 + v20 * v14;
    v29 = -v14;
    v30 = v28;
    v31 = v53;
    v52 = v29;
    v50 = a1;
LABEL_37:
    v53 = a2 + v29;
    v32 = v31;
    v48 = v30;
    v51 = a2;
    while (1)
    {
      if (v28 <= a4)
      {
        v58 = a2;
        v56 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v30;
      v33 = a4;
      v34 = v32 + v52;
      v35 = v28 + v52;
      sub_22C3E8FB4(v28 + v52, v12, &qword_27D9BAB78, &qword_22C928C40);
      v36 = v12;
      v37 = v54;
      sub_22C3E8FB4(v53, v54, &qword_27D9BAB78, &qword_22C928C40);
      v38 = *(v55 + 48);
      v39 = *(v36 + v38);
      v40 = *(v37 + v38);
      v41 = v37;
      v12 = v36;
      sub_22C36DD28(v41, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v36, &qword_27D9BAB78, &qword_22C928C40);
      if (v39 < v40)
      {
        v43 = v32 < v51 || v34 >= v51;
        v31 = v34;
        a4 = v33;
        if (v43)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v34;
          v29 = v52;
          v30 = v49;
          a1 = v50;
        }

        else
        {
          v30 = v49;
          v16 = v32 == v51;
          v29 = v52;
          v44 = v53;
          a2 = v53;
          a1 = v50;
          if (!v16)
          {
            v45 = v31;
            v46 = v49;
            swift_arrayInitWithTakeBackToFront();
            v31 = v45;
            a2 = v44;
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      v42 = v32 < v28 || v34 >= v28;
      a4 = v33;
      if (v42)
      {
        v32 = v34;
        swift_arrayInitWithTakeFrontToBack();
        v28 = v35;
        v30 = v35;
        a1 = v50;
        a2 = v51;
      }

      else
      {
        v30 = v35;
        v16 = v28 == v32;
        v32 = v34;
        v28 = v35;
        a1 = v50;
        a2 = v51;
        if (!v16)
        {
          v32 = v34;
          swift_arrayInitWithTakeBackToFront();
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v58 = a2;
    v56 = v48;
  }

  else
  {
    sub_22C3D763C(a1, v15 / v14, a4);
    v52 = a4 + v19 * v14;
    v56 = v52;
    while (a4 < v52 && a2 < v53)
    {
      sub_22C3E8FB4(a2, v12, &qword_27D9BAB78, &qword_22C928C40);
      v22 = v54;
      sub_22C3E8FB4(a4, v54, &qword_27D9BAB78, &qword_22C928C40);
      v23 = *(v55 + 48);
      v24 = *&v12[v23];
      v25 = *(v22 + v23);
      sub_22C36DD28(v22, &qword_27D9BAB78, &qword_22C928C40);
      sub_22C36DD28(v12, &qword_27D9BAB78, &qword_22C928C40);
      if (v24 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v58 = a1;
    }
  }

LABEL_59:
  sub_22C838290(&v58, &v57, &v56, &qword_27D9BAB78, &qword_22C928C40);
  return 1;
}