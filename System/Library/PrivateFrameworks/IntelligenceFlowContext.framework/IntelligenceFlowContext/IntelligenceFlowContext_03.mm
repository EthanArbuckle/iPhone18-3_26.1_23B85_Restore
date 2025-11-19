uint64_t storeEnumTagSinglePayload for UIContextOptions.IntelligenceCommandOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIContextOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for UIContextOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_254E9B694(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UIContextOptions.IntelligenceCommandOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254E9B8A0()
{
  result = qword_27F755CB8;
  if (!qword_27F755CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755CB8);
  }

  return result;
}

unint64_t sub_254E9B8F8()
{
  result = qword_27F755CC0;
  if (!qword_27F755CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755CC0);
  }

  return result;
}

unint64_t sub_254E9B950()
{
  result = qword_27F755CC8;
  if (!qword_27F755CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F755CC8);
  }

  return result;
}

unint64_t sub_254E9B9A8()
{
  result = qword_280C40270;
  if (!qword_280C40270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40270);
  }

  return result;
}

unint64_t sub_254E9BA00()
{
  result = qword_280C40278;
  if (!qword_280C40278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40278);
  }

  return result;
}

unint64_t sub_254E9BA58()
{
  result = qword_280C40230;
  if (!qword_280C40230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40230);
  }

  return result;
}

unint64_t sub_254E9BAB0()
{
  result = qword_280C40238;
  if (!qword_280C40238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40238);
  }

  return result;
}

unint64_t sub_254E9BB08()
{
  result = qword_280C40240;
  if (!qword_280C40240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40240);
  }

  return result;
}

unint64_t sub_254E9BB60()
{
  result = qword_280C40248;
  if (!qword_280C40248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40248);
  }

  return result;
}

unint64_t sub_254E9BBB8()
{
  result = qword_280C40200;
  if (!qword_280C40200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40200);
  }

  return result;
}

unint64_t sub_254E9BC10()
{
  result = qword_280C40208;
  if (!qword_280C40208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40208);
  }

  return result;
}

unint64_t sub_254E9BC68()
{
  result = qword_280C40220;
  if (!qword_280C40220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40220);
  }

  return result;
}

unint64_t sub_254E9BCC0()
{
  result = qword_280C40228;
  if (!qword_280C40228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40228);
  }

  return result;
}

unint64_t sub_254E9BD18()
{
  result = qword_280C40218;
  if (!qword_280C40218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40218);
  }

  return result;
}

unint64_t sub_254E9BD70()
{
  result = qword_280C40210;
  if (!qword_280C40210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40210);
  }

  return result;
}

unint64_t sub_254E9BDC8()
{
  result = qword_280C40258;
  if (!qword_280C40258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40258);
  }

  return result;
}

unint64_t sub_254E9BE20()
{
  result = qword_280C40260;
  if (!qword_280C40260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40260);
  }

  return result;
}

unint64_t sub_254E9BE78()
{
  result = qword_280C40288;
  if (!qword_280C40288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40288);
  }

  return result;
}

unint64_t sub_254E9BED0()
{
  result = qword_280C40290;
  if (!qword_280C40290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C40290);
  }

  return result;
}

uint64_t sub_254E9BF64()
{

  return swift_beginAccess();
}

uint64_t sub_254E9BF84()
{

  return swift_beginAccess();
}

uint64_t sub_254E9BFF0()
{

  return sub_254E9E57C();
}

void sub_254E9C034()
{

  JUMPOUT(0x259C2B8B0);
}

uint64_t sub_254E9C04C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_254E9C104(a4, a5, a6, a7, sub_254E632DC, v14, a1);
}

void sub_254E9C104(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a4;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = sub_254E9DD7C();
  if (v10)
  {
LABEL_5:
    v10 = sub_254E9E26C();
  }

LABEL_6:
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_254E63250;
  v13[3] = &unk_286722B30;
  v12 = _Block_copy(v13);

  [a7 refreshWithContextTypes:v11 interactionId:v10 with:v12];
  _Block_release(v12);
}

void sub_254E9C240(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_254E9DD7C();
  }

  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_254E9CF04;
  v10[3] = &unk_286722AE0;
  v9 = _Block_copy(v10);

  [a5 refreshAndRetrieveWithContextTypes:v8 with:v9];
  _Block_release(v9);
}

void sub_254E9C380(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](a1);
    sub_254E63754();
    *(v3 - 16) = v2;

    sub_254E9E00C();
    sub_254E9CEB0();
    sub_254E634F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254E9C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  sub_254E9CE98();
  sub_254E621F8();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;

  sub_254E9C4B0(v11, v10, a6, a8, v17, v14, a9, a10);
}

void sub_254E9C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, SEL *a8)
{
  v14 = sub_254E9DD7C();
  v17[4] = a4;
  v17[5] = a5;
  sub_254E62C48();
  sub_254E62B60();
  v17[2] = v15;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  [a6 *a8];
  _Block_release(v16);
}

void sub_254E9C568(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v6 = MEMORY[0x28223BE20](a1);
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;

    sub_254E9E00C();
    sub_254E9CEB0();
    sub_254E634F4();
  }

  else
  {
    __break(1u);
  }
}

void sub_254E9C614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_254E9E26C();
  v15 = sub_254E9E2FC();
  v17[4] = sub_254E9CE94;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_254E9CF04;
  v17[3] = &unk_2867229F0;
  v16 = _Block_copy(v17);

  [a1 retrieveAndRankIntelligenceCommandContextValuesWithQuery:v14 appBundleIds:v15 threshold:a7 timeout:a8 with:v16];
  _Block_release(v16);
}

void sub_254E9C7FC(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](a1);

    sub_254E9E00C();
    sub_254E9CEB0();
    sub_254E634F4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254E9C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_254E9CE98();
  sub_254E621F8();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;

  a8(v9, v8, a7, v15, v12);
}

void sub_254E9C920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_254E9E26C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_254E9CF04;
  v10[3] = &unk_2867229A0;
  v9 = _Block_copy(v10);

  [a5 retrieveContextValuesWithQuery:v8 with:v9];
  _Block_release(v9);
}

uint64_t sub_254E9CA20(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = result;

    sub_254E9E00C();
    result = sub_254E9CEB0();
    if (!v2)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254E9CAB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  sub_254E621F8();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  sub_254E9CB4C(a5, v13, a1, a6, a7);
}

void sub_254E9CB4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v10[4] = a1;
  v10[5] = a2;
  sub_254E62C48();
  sub_254E62B60();
  v10[2] = v8;
  v10[3] = v7;
  v9 = _Block_copy(v10);

  [a3 *a5];
  _Block_release(v9);
}

uint64_t sub_254E9CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContextClient();

  return MEMORY[0x2821A2850](a1, v5, a3);
}

uint64_t sub_254E9CCA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254E9CE18()
{
  result = qword_280C3FE50;
  if (!qword_280C3FE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3FE50);
  }

  return result;
}

uint64_t sub_254E9CEB0()
{
}

uint64_t sub_254E9CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t sub_254E9CF04(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_254E9DD8C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_254E678F8(v4, v8);
}

id static UIContextXPCService.interface.getter()
{
  if (qword_280C40A18 != -1)
  {
    swift_once();
  }

  v1 = qword_280C40A20;

  return v1;
}

uint64_t static UIContextXPCService.selectorClasses.getter()
{
  if (qword_280C40A50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254E9D090()
{
  v0 = sub_254E9E10C();
  sub_254E9DA90(v0, qword_280C40A30);
  sub_254E61C34(v0, qword_280C40A30);
  return sub_254E9DFEC();
}

_BYTE *storeEnumTagSinglePayload for UIContextXPCService(_BYTE *result, int a2, int a3)
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

uint64_t sub_254E9D194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_254E618B8(qword_280C40CF0, a2, type metadata accessor for UIContextXPCClient);
  sub_254E6775C(&unk_27F755CE0);
  swift_allocObject();

  *(v2 + 16) = sub_254E9E02C();

  return v2;
}

uint64_t sub_254E9D29C(uint64_t result)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](result);

    sub_254E9E00C();

    if (!v2)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254E9D340(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  sub_254E9D8FC(a4, a5, a7, v16, a1, a8, a9);
}

uint64_t sub_254E9D3F0(uint64_t result)
{
  if (*(v1 + 16))
  {
    MEMORY[0x28223BE20](result);

    sub_254E9E00C();

    if (!v2)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254E9D4A8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_254E9D548(a4, a5, sub_254E9DC58, v10, a1);
}

void sub_254E9D548(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_254E9E2FC();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_254E9CF04;
  v11[3] = &unk_286722D00;
  v10 = _Block_copy(v11);

  [a5 retrieveElementHierarchyWithVerbose:a1 & 1 args:v9 with:v10];
  _Block_release(v10);
}

uint64_t sub_254E9D634(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_254E9D658, 0, 0);
}

uint64_t sub_254E9D658(void *a1, uint64_t (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(v4[6] + 16);
  v4[7] = v5;
  if (v5)
  {
    v7 = v4[4];
    v6 = v4[5];
    v8 = swift_task_alloc();
    v4[8] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v4;
    v9[1] = sub_254E9D750;
    a4 = MEMORY[0x277CC9318];
    a2 = sub_254E9DAF4;
    a1 = v4 + 2;
    a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821A27B8](a1, a2, a3, a4);
}

uint64_t sub_254E9D750()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_254E9D890;
  }

  else
  {

    v2 = sub_254E9D874;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254E9D890()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_254E9D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, SEL *a7)
{
  v12 = sub_254E9DD7C();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_254E9CF04;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a5 *a7];
  _Block_release(v13);
}

uint64_t sub_254E9DA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UIContextXPCClient();

  return MEMORY[0x2821A2850](a1, v5, a3);
}

uint64_t *sub_254E9DA90(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_254E9DB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254E9DC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}