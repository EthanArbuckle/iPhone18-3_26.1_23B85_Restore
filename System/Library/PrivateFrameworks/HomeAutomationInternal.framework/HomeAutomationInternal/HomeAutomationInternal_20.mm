uint64_t sub_252A96E5C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252A96E98(a1);
}

uint64_t sub_252A96E98(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27F5427A8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_252E36734();
  v12 = qword_27F5427B0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542870, &qword_252E46A70);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_252E36734();
  v16 = qword_27F5427B8;
  v17 = *(v9 + 48);
  v18 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_252E36734();
  v19 = qword_27F5427C0;
  v20 = *(v9 + 48);
  v21 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_252E36734();
  v22 = qword_27F5427C8;
  v23 = *(v9 + 48);
  v24 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v22) = sub_252E36734();
  v25 = qword_27F5427D0;
  v26 = *(v9 + 48);
  v27 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v25) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v28 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v28;
}

uint64_t sub_252A970C8()
{
  v1 = *(v0 + qword_27F5427A8);

  v2 = *(v0 + qword_27F5427B0);

  v3 = *(v0 + qword_27F5427B8);

  v4 = *(v0 + qword_27F5427C0);

  v5 = *(v0 + qword_27F5427C8);

  v6 = *(v0 + qword_27F5427D0);
}

uint64_t sub_252A97148()
{
  v0 = sub_252E364A4();
  v1 = *(v0 + qword_27F5427A8);

  v2 = *(v0 + qword_27F5427B0);

  v3 = *(v0 + qword_27F5427B8);

  v4 = *(v0 + qword_27F5427C0);

  v5 = *(v0 + qword_27F5427C8);

  v6 = *(v0 + qword_27F5427D0);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 65522 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65522 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65522;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xC | (*a1 >> 14)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65522 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65522 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 16) + 1;
    *result = a2 - 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 16 * (-a2 & 0xC) - (a2 << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A973B0()
{
  result = qword_27F5427E8;
  if (!qword_27F5427E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5427E8);
  }

  return result;
}

uint64_t sub_252A97428()
{
  v0 = *aComAppleHome_0;

  return v0;
}

uint64_t sub_252A97480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252A974E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252A97534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252A97594(unsigned __int16 a1)
{
  if (a1 >> 14 == 1)
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    MEMORY[0x2530AD570](0x7954656369766544, 0xEA00000000006570);
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E76D00);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E76D20);
    goto LABEL_5;
  }

  if (!(a1 >> 14))
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    MEMORY[0x2530AD570](0x7954656369766544, 0xEA00000000006570);
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E76D40);
LABEL_5:
    sub_252E37AE4();
    MEMORY[0x2530AD570](8194604, 0xE300000000000000);
    return 0;
  }

  return 0x29656E6F6E28;
}

uint64_t sub_252A97788(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0x79726574746162;
      break;
    case 4:
      result = 0x6172656D6163;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x53746361746E6F63;
      break;
    case 8:
      result = 1919905636;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x6F44656761726167;
      break;
    case 12:
      result = 0x6F43726574616568;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x79746964696D7568;
      break;
    case 15:
      result = 0x736E65536B61656CLL;
      break;
    case 16:
      result = 0x6C7562746867696CLL;
      break;
    case 17:
      v3 = 0x53746867696CLL;
      goto LABEL_38;
    case 18:
      result = 1801678700;
      break;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
      result = 0x636E61707563636FLL;
      break;
    case 21:
      result = 0x74656C74756FLL;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0x7974697275636573;
      break;
    case 24:
      result = 0x726F736E6573;
      break;
    case 25:
      result = 0x7265776F6873;
      break;
    case 26:
      v3 = 0x53656B6F6D73;
LABEL_38:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 27:
      result = 0x656C6B6E69727073;
      break;
    case 28:
      result = 0x686374697773;
      break;
    case 29:
      result = 0x69736976656C6574;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0x74736F6D72656874;
      break;
    case 32:
      result = 0x65766C6176;
      break;
    case 33:
      result = 0x776F646E6977;
      break;
    case 34:
      result = 0x6F43776F646E6977;
      break;
    case 35:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A97B64(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_252A97788(*a1);
  v5 = v4;
  if (v3 == sub_252A97788(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A97BEC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A97788(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A97C50()
{
  sub_252A97788(*v0);
  sub_252E37044();
}

uint64_t sub_252A97CA4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A97788(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A97D04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A98E08();
  *a2 = result;
  return result;
}

uint64_t sub_252A97D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A97788(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A97D60()
{
  v0 = qword_27F542798;

  return v0;
}

uint64_t sub_252A97DA8(uint64_t a1)
{
  v2 = sub_252A999B4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A97DE4(uint64_t a1)
{
  v2 = sub_252A999B4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A97E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A99750();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A97E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A999B4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A97ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A99750();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A97F1C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x8000000252E67580;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000252E67580;
  }

  else
  {
    v6 = 0x8000000252E675A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7954656C676E6953;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00657361436570;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x8000000252E675A0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7954656C676E6953;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00657361436570;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A98004()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A980B8()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252A98158()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A98208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A98E5C();
  *a2 = result;
  return result;
}

void sub_252A98238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657361436570;
  v4 = 0xD000000000000011;
  v5 = 0x8000000252E67580;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x8000000252E675A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7954656C676E6953;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A982A8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 12895;
  }

  else
  {
    v2 = 12639;
  }

  if (*a2)
  {
    v3 = 12895;
  }

  else
  {
    v3 = 12639;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252A98318()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A98378()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252A983BC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A98418@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_252A98478(uint64_t *a1@<X8>)
{
  v2 = 12639;
  if (*v1)
  {
    v2 = 12895;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_252A98498(unsigned __int16 a1)
{
  if (a1 >> 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v1 = *(sub_252E36724() - 8);
    v2 = *(v1 + 72);
    v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C3C0;
    sub_252A994B4();
    sub_252A99508();
    sub_252E366F4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v4 = *(sub_252E36724() - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    sub_252A994B4();
    sub_252A99508();
  }

  sub_252E366F4();
  sub_252A9955C();
  sub_252E36574();
}

uint64_t sub_252A9883C@<X0>(_WORD *a1@<X8>)
{
  result = sub_252A98EA8();
  *a1 = result;
  return result;
}

uint64_t sub_252A98864()
{
  sub_252A995B0();

  return sub_252E36514();
}

uint64_t sub_252A988A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A995B0();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A988EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A995B0();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A98950(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A995B0();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252A989A0()
{
  result = qword_27F5427F0;
  if (!qword_27F5427F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5427F0);
  }

  return result;
}

unint64_t sub_252A989F8()
{
  result = qword_27F5427F8;
  if (!qword_27F5427F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5427F8);
  }

  return result;
}

unint64_t sub_252A98A50()
{
  result = qword_27F542800;
  if (!qword_27F542800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542800);
  }

  return result;
}

uint64_t sub_252A98C44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A98C88(int a1, unsigned int a2)
{
  v2 = a2;
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      if ((a2 & 0xC000) != 0x4000)
      {
        goto LABEL_18;
      }

      v3 = a1;
      v4 = sub_252A97788(a1);
      v6 = v5;
      if (v4 != sub_252A97788(v2) || v6 != v7)
      {
LABEL_13:
        v12 = sub_252E37DB4();

        if (v12)
        {
          goto LABEL_14;
        }

LABEL_18:
        v17 = 0;
        return v17 & 1;
      }
    }

    else
    {
      if ((a2 & 0xC000) != 0x8000)
      {
        goto LABEL_18;
      }

      v3 = a1;
      v8 = sub_252A97788(a1);
      v10 = v9;
      if (v8 != sub_252A97788(v2) || v10 != v11)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    a1 = (v3 >> 8) & 0x3F;
    v2 = (v2 >> 8) & 0x3F;
    goto LABEL_15;
  }

  if (a2 >= 0x4000u)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = sub_252A97788(a1);
  v15 = v14;
  if (v13 == sub_252A97788(v2) && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_252E37DB4();
  }

  return v17 & 1;
}

uint64_t sub_252A98E08()
{
  v0 = sub_252E37DE4();

  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A98E5C()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A98EA8()
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v12, v14);
  sub_252E364C4();
  v0 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v12);
  if (v0 == 2)
  {
    sub_252A994B4();
    sub_252A99508();
    sub_252E365A4();
    v8 = v12;
    if (v12 != 36)
    {
      sub_252E365A4();
      if (v12 != 36)
      {
        return v8 | (v12 << 8) | 0xFFFF8000;
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544EE0);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E76E10);
    sub_252E365B4();
    sub_252E37AE4();
    v5 = v12;
    v6 = v13;
    v7 = 206;
LABEL_22:
    sub_252CC4050(v5, v6, 0xD00000000000007ALL, 0x8000000252E76D90, 0xD000000000000010, 0x8000000252E6F060, v7);

    return 49344;
  }

  if (v0 == 1)
  {
    sub_252A994B4();
    sub_252A99508();
    sub_252E365A4();
    v3 = v12;
    if (v12 != 36)
    {
      sub_252E365A4();
      if (v12 != 36)
      {
        return v3 | (v12 << 8) | 0x4000u;
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544EE0);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E76E50);
    sub_252E365B4();
    sub_252E37AE4();
    v5 = v12;
    v6 = v13;
    v7 = 196;
    goto LABEL_22;
  }

  if (v0)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544EE0);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_252E379F4();

    sub_252E36584();
    __swift_project_boxed_opaque_existential_1(&v12, v14);
    v11 = sub_252E364C4();
    MEMORY[0x2530AD570](v11);

    __swift_destroy_boxed_opaque_existential_1(&v12);
    v5 = 0xD000000000000028;
    v6 = 0x8000000252E76D60;
    v7 = 183;
    goto LABEL_22;
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544EE0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E76E80);
  sub_252E365B4();
  sub_252E37AE4();
  sub_252CC4050(v12, v13, 0xD00000000000007ALL, 0x8000000252E76D90, 0xD000000000000010, 0x8000000252E6F060, 188);

  sub_252A994B4();
  sub_252E36594();
  if (v12 == 36)
  {
    return 4294951104;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_252A994B4()
{
  result = qword_27F542850;
  if (!qword_27F542850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542850);
  }

  return result;
}

unint64_t sub_252A99508()
{
  result = qword_27F542858;
  if (!qword_27F542858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542858);
  }

  return result;
}

unint64_t sub_252A9955C()
{
  result = qword_27F542860;
  if (!qword_27F542860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542860);
  }

  return result;
}

unint64_t sub_252A995B0()
{
  result = qword_27F542868;
  if (!qword_27F542868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542868);
  }

  return result;
}

unint64_t sub_252A99638()
{
  result = qword_27F542878;
  if (!qword_27F542878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542878);
  }

  return result;
}

unint64_t sub_252A99690()
{
  result = qword_27F542880;
  if (!qword_27F542880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542888, &qword_252E46B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542880);
  }

  return result;
}

unint64_t sub_252A996F8()
{
  result = qword_27F542890;
  if (!qword_27F542890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542890);
  }

  return result;
}

unint64_t sub_252A99750()
{
  result = qword_27F542898;
  if (!qword_27F542898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542898);
  }

  return result;
}

unint64_t sub_252A997A8()
{
  result = qword_27F5428A0;
  if (!qword_27F5428A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428A0);
  }

  return result;
}

unint64_t sub_252A99800()
{
  result = qword_27F5428A8;
  if (!qword_27F5428A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428A8);
  }

  return result;
}

unint64_t sub_252A99858()
{
  result = qword_27F5428B0;
  if (!qword_27F5428B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428B0);
  }

  return result;
}

unint64_t sub_252A998B0()
{
  result = qword_27F5428B8;
  if (!qword_27F5428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428B8);
  }

  return result;
}

unint64_t sub_252A99908()
{
  result = qword_27F5428C0;
  if (!qword_27F5428C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428C0);
  }

  return result;
}

unint64_t sub_252A99960()
{
  result = qword_27F5428C8;
  if (!qword_27F5428C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428C8);
  }

  return result;
}

unint64_t sub_252A999B4()
{
  result = qword_27F5428D0;
  if (!qword_27F5428D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428D0);
  }

  return result;
}

uint64_t sub_252A99A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A99AE4, 0, 0);
}

uint64_t sub_252A99AE4()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = [v1 userTask];
  if (v4)
  {
    v5 = v4;
    if (v0[15])
    {
      v6 = sub_252C32D14();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    type metadata accessor for HomeAutomationNumericEntityResponses();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = v6;
    *v3 = v7;
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = swift_allocObject();
  v0[22] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v2;

  if (v9)
  {
    v11 = v8[6];
    v12 = v9;
    v13 = *__swift_project_boxed_opaque_existential_1(v8 + 3, v11);
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_252A99DEC;

    return (sub_252C0CBE0)(0, v13, v3);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
      v8 = v0[16];
    }

    v16 = v0[20];
    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v18 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 9, v18);
    sub_252AD7CC4();
    v19 = swift_task_alloc();
    v0[29] = v19;
    *v19 = v0;
    v19[1] = sub_252A9A110;
    v20 = v0[20];

    return sub_252BDB88C((v0 + 2), &unk_252E46E58, v10, v20, 0, 0, 0, v18);
  }
}

uint64_t sub_252A99DEC(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252A9A080, 0, 0);
  }

  else
  {
    v5 = v4[15];
    v6 = swift_task_alloc();
    v4[26] = v6;
    *v6 = v4;
    v6[1] = sub_252A99F6C;
    v7 = v4[16];

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252A99F6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_252A9A3DC;
  }

  else
  {
    v5 = sub_252A9A280;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9A080()
{
  v1 = v0[22];
  v2 = v0[15];

  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252A9A110()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 240) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252A9A808;
  }

  else
  {
    v6 = sub_2529A4D98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A9A280()
{
  v1 = v0[24];
  v0[12] = v1;
  v2 = v0 + 12;
  v3 = v0[27];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[19];
  v9 = v0[16];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[31] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_252A9A478;
  v13 = v0[19];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252A9A3DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  v3 = *(v0 + 224);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252A9A478()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 264) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252A9A750;
  }

  else
  {
    v8 = *(v2 + 248);

    v7 = sub_252A9A5F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252A9A5F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252A9A750()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 120);

  v5 = *(v0 + 264);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252A9A808()
{
  v1 = v0[22];

  v2 = v0[30];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A9A890(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A9A8B0, 0, 0);
}

uint64_t sub_252A9A8B0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return (sub_252C0CBE0)(0, v2, v1 + 16);
}

uint64_t sub_252A9A974(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_252A9AA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252A99A14(a1, a2, a3);
}

void *sub_252A9AB50@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetNumericValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252A9ABB4(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = sub_252C32D14();
  v7 = [a1 userTask];
  if (!v7)
  {

    sub_252C515AC();
    goto LABEL_12;
  }

  v8 = v7;
  if ([v7 taskType] != 4)
  {
    v9 = [v8 taskType];

    if (v9 == 5)
    {
      goto LABEL_8;
    }

LABEL_12:

    return 0;
  }

LABEL_8:
  if (v6 >> 62)
  {
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v10 != 0);
}

uint64_t sub_252A9ACC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252A9A890(v2, v3);
}

unint64_t sub_252A9AD58(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
    case 4:
    case 14:
    case 40:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 6:
    case 23:
    case 36:
    case 52:
    case 67:
    case 69:
      result = 0xD000000000000018;
      break;
    case 3:
    case 19:
    case 31:
    case 48:
    case 58:
      result = 0xD000000000000016;
      break;
    case 5:
    case 22:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 18:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
    case 10:
      result = 0xD000000000000024;
      break;
    case 11:
    case 30:
    case 53:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
    case 33:
    case 34:
    case 46:
    case 49:
    case 50:
      result = 0xD000000000000013;
      break;
    case 15:
    case 43:
    case 64:
      result = 0xD000000000000019;
      break;
    case 16:
    case 20:
    case 27:
    case 41:
    case 55:
    case 57:
      result = 0xD000000000000015;
      break;
    case 17:
    case 21:
    case 26:
    case 28:
    case 70:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 42:
    case 45:
    case 54:
    case 56:
    case 63:
      result = 0xD000000000000017;
      break;
    case 25:
    case 47:
    case 61:
    case 62:
    case 65:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD000000000000028;
      break;
    case 32:
    case 35:
    case 37:
    case 39:
    case 66:
      result = 0xD000000000000012;
      break;
    case 38:
    case 68:
      result = 0xD000000000000014;
      break;
    case 51:
    case 59:
      result = 0xD00000000000001FLL;
      break;
    case 60:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A9B1D4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_252A9AD58(*a1);
  v5 = v4;
  if (v3 == sub_252A9AD58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A9B25C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A9AD58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9B2C0()
{
  sub_252A9AD58(*v0);
  sub_252E37044();
}

uint64_t sub_252A9B314()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A9AD58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9B374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252A9B42C();
  *a2 = result;
  return result;
}

unint64_t sub_252A9B3A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252A9AD58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A9B3D0()
{
  v0 = sub_252CC5CD0(&unk_2864A36C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5428E8, &unk_252E46E60);
  result = swift_arrayDestroy();
  qword_27F5757B8 = v0;
  return result;
}

uint64_t sub_252A9B42C()
{
  v0 = sub_252E37DE4();

  if (v0 >= 0x47)
  {
    return 71;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for HomeAutomationSemanticTags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBA)
  {
    goto LABEL_17;
  }

  if (a2 + 70 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 70) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 70;
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

      return (*a1 | (v4 << 8)) - 70;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 70;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x47;
  v8 = v6 - 71;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationSemanticTags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 70 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 70) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBA)
  {
    v4 = 0;
  }

  if (a2 > 0xB9)
  {
    v5 = ((a2 - 186) >> 8) + 1;
    *result = a2 + 70;
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
    *result = a2 + 70;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A9B5D4()
{
  result = qword_27F5428F0;
  if (!qword_27F5428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428F0);
  }

  return result;
}

uint64_t ReferenceSemantic.rawValue.getter()
{
  result = 31085;
  switch(*v0)
  {
    case 1:
      return 0xD00000000000001FLL;
    case 3:
      return 0xD00000000000001FLL;
    case 4:
      return 0xD00000000000001FLL;
    case 5:
      return 0xD00000000000001DLL;
    case 6:
      return result;
    case 7:
      return 6647407;
    case 8:
      return 1953718636;
    case 9:
      return 1954047342;
    case 0xA:
      return 0x73756F6976657270;
    case 0xB:
      return 0x6F54646E6F636573;
    case 0xC:
      return 0x4C6F546472696874;
    case 0xD:
      return 0x656C6464696DLL;
    case 0xE:
      return 0x7473726966;
    case 0xF:
      return 0x646E6F636573;
    case 0x10:
      return 0x6472696874;
    case 0x11:
      return 0x687472756F66;
    case 0x12:
      return 0x6874666966;
    case 0x13:
      return 0x6874786973;
    case 0x14:
      return 0x68746E65766573;
    case 0x15:
      return 0x687468676965;
    case 0x16:
      return 0x68746E696ELL;
    case 0x17:
      return 0x68746E6574;
    case 0x18:
      return 0x68746E6576656C65;
    case 0x19:
      return 0x6874666C657774;
    case 0x1A:
      v2 = 1919510644;
      goto LABEL_40;
    case 0x1B:
      v2 = 1920298854;
      goto LABEL_40;
    case 0x1C:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 0x1D:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 0x1E:
      return 0x6565746E65766573;
    case 0x1F:
      v2 = 1751607653;
      goto LABEL_40;
    case 0x20:
      v2 = 1701734766;
LABEL_40:
      result = v2 | 0x6E65657400000000;
      break;
    case 0x21:
      result = 0x746569746E657774;
      break;
    case 0x22:
    case 0x25:
    case 0x26:
      result = 0x662079746E657774;
      break;
    case 0x23:
      result = 0x732079746E657774;
      break;
    case 0x24:
      result = 0x742079746E657774;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t static ReferenceSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = ReferenceSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == ReferenceSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

HomeAutomationInternal::ReferenceSemantic_optional __swiftcall ReferenceSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252A9BC04(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ReferenceSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == ReferenceSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252A9BCA0()
{
  v1 = *v0;
  sub_252E37EC4();
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9BD08()
{
  v2 = *v0;
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252A9BD6C()
{
  v1 = *v0;
  sub_252E37EC4();
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9BDDC@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252A9BE04(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = ReferenceSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == ReferenceSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A9BEA0(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = ReferenceSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == ReferenceSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252A9BF50(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = ReferenceSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == ReferenceSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252A9C000(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = ReferenceSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == ReferenceSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A9C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A9C3DC();
  v5 = sub_252A9C430();
  v6 = sub_252A9C484();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252A9C120()
{
  result = qword_27F5428F8;
  if (!qword_27F5428F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5428F8);
  }

  return result;
}

unint64_t sub_252A9C178()
{
  result = qword_27F542900;
  if (!qword_27F542900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542900);
  }

  return result;
}

unint64_t sub_252A9C1D0()
{
  result = qword_27F542908;
  if (!qword_27F542908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542910, &qword_252E47040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542908);
  }

  return result;
}

unint64_t sub_252A9C238()
{
  result = qword_27F542918;
  if (!qword_27F542918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReferenceSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferenceSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A9C3DC()
{
  result = qword_27F542920;
  if (!qword_27F542920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542920);
  }

  return result;
}

unint64_t sub_252A9C430()
{
  result = qword_27F542928;
  if (!qword_27F542928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542928);
  }

  return result;
}

unint64_t sub_252A9C484()
{
  result = qword_27F542930;
  if (!qword_27F542930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542930);
  }

  return result;
}

uint64_t type metadata accessor for HomeAppEntity()
{
  result = qword_27F542950;
  if (!qword_27F542950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252A9C578(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F542948;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v15 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v15;
}

uint64_t sub_252A9C6D8()
{
  v0 = *(sub_252E364A4() + qword_27F542948);

  return swift_deallocClassInstance();
}

uint64_t sub_252A9C730()
{
  v0 = *aComAppleHome_1;

  return v0;
}

uint64_t sub_252A9C784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252A9C7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252A9C838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252A9CA38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAppEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252A9CA80(uint64_t a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[3] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 136), (v1 + 4));

  v6 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v1[12] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[13] = &off_2864BA730;
  v1[9] = v6;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v8 = *(v7 + 23);

  v1[14] = v8;
  v1[2] = a1;
  return v1;
}

uint64_t sub_252A9CB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_252E33C44();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A9CC40, 0, 0);
}

uint64_t sub_252A9CC40()
{
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v2 = sub_252E34024();
  v0[20] = v2;
  v3 = sub_252E34034();
  v0[21] = v3;
  v4 = [v2 automatableTask];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  type metadata accessor for ControlAutomateHomeIntent();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_9:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544DA8);
    sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD00000000000008FLL, 0x8000000252E77350, 0xD00000000000003ALL, 0x8000000252E773E0, 36);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v32 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_12;
  }

  v7 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v8 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v9 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v10 = v7;

  v11 = [v9 init];
  v0[22] = v11;
  v12 = v11;
  [v12 setUserTask_];
  v13 = type metadata accessor for HomeFilter();
  v14 = sub_252E37254();

  [v12 setFilters_];

  [v12 setTime_];
  v15 = [v3 disambiguationItems];
  v16 = sub_252E37264();

  v17 = sub_252A9E238(v16);

  if (v17)
  {
    v18 = sub_252A6EACC(v17);
    v0[23] = v18;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D18);
    sub_252E379F4();

    v20 = MEMORY[0x2530AD730](v18, v13);
    MEMORY[0x2530AD570](v20);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD00000000000008FLL, 0x8000000252E77350);

    v21 = sub_252A6D8E8(v18);
    v0[24] = v21;
    *(sub_252B680FC() + 72) = 1;

    v22 = sub_252B680FC();
    *(v22 + 104) = v21;
    *(v22 + 112) = 0;

    v23 = sub_252B680FC();
    v24 = *(v23 + 120);
    *(v23 + 120) = v18;

    v25 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v25 + 288), (v0 + 2));

    v26 = v0[5];
    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v26);
    LOBYTE(v21) = (*(v27 + 120))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v21)
    {
      v28 = v0[15];
      v0[25] = *(v28 + 112);
      v0[26] = *(v28 + 16);
      sub_252CC3D90(0xD000000000000033, 0x8000000252E77450, 0xD000000000000096, 0x8000000252E76FA0);
      v40 = sub_252A71970;
      v29 = swift_task_alloc();
      v0[27] = v29;
      *v29 = v0;
      v30 = sub_252A9D37C;
    }

    else
    {
      v0[36] = *(v0[15] + 16);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E77420, 0xD000000000000096, 0x8000000252E76FA0);
      v39 = sub_252A6F108(v18, 0);
      v0[37] = v39;
      v0[12] = v39;
      v40 = sub_252A71628;
      v29 = swift_task_alloc();
      v0[38] = v29;
      *v29 = v0;
      v30 = sub_252A9DB00;
    }

    v29[1] = v30;

    return v40(v18);
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544D18);
  sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD00000000000008FLL, 0x8000000252E77350, 0xD00000000000003ALL, 0x8000000252E773E0, 41);
  type metadata accessor for HomeAutomationError();
  sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
  swift_allocError();
  *v38 = v3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_12:
  v34 = v0[18];
  v33 = v0[19];

  v35 = v0[1];

  return v35();
}

uint64_t sub_252A9D37C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v8 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[23];

    v6 = sub_252A9D7AC;
  }

  else
  {
    v6 = sub_252A9D498;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A9D498()
{
  v1 = *(v0 + 184);
  v29 = sub_252A6F5D8(v1, *(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 240) = v2;
  v5 = sub_252BAFC18(v1);
  if (qword_27F53F2A0 != -1)
  {
    v25 = v5;
    swift_once();
    v5 = v25;
  }

  v6 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v7 = sub_252A488EC(v5), (v8 & 1) != 0))
  {
    v31 = *(v6[7] + v7);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v30 = *(v0 + 208);
  v26 = *(v0 + 120);
  v15 = sub_252E36324();
  (*(*(v15 - 8) + 56))(v4, v9, 1, v15);
  v16 = swift_allocObject();
  *(v0 + 248) = v16;
  v16[2] = v14;
  v16[3] = v2;
  v16[4] = v12;
  v16[5] = v11;
  v16[6] = v29;
  v16[7] = v10;
  v16[8] = v13;
  v17 = swift_allocObject();
  *(v0 + 256) = v17;
  v17[2] = v14;
  v17[3] = v2;
  v17[4] = v12;
  v17[5] = v11;
  v17[6] = v13;
  v18 = swift_allocObject();
  *(v0 + 264) = v18;
  v18[2] = &unk_252E475C8;
  v18[3] = v17;
  v18[4] = v29;
  v18[5] = v10;
  v27 = v26[7];
  v28 = v26[8];
  __swift_project_boxed_opaque_existential_1(v26 + 4, v27);
  v19 = v14;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v20 = v19;

  sub_252DF2694(v12, v30);

  v21 = swift_task_alloc();
  *(v0 + 272) = v21;
  *v21 = v0;
  v21[1] = sub_252A9D834;
  v22 = *(v0 + 152);
  v23 = *(v0 + 104);

  return sub_252A1DBA0(v23, &unk_252E475C0, v16, &unk_252E475D0, v18, v22, v27, v28);
}

uint64_t sub_252A9D7AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252A9D834()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[17] + 8))(v2[19], v2[16]);
  if (v0)
  {
    v5 = sub_252A9DA54;
  }

  else
  {
    v5 = sub_252A9D99C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9D99C()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);

  v7 = *(v0 + 152);
  v8 = *(v0 + 144);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252A9DA54()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = *(v0 + 280);
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252A9DB00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = v4[37];
    v8 = v4[23];

    v9 = sub_252A9DF00;
  }

  else
  {
    v4[40] = a1;
    v9 = sub_252A9DC3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_252A9DC3C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  sub_25297BB38(*(v0 + 320));
  v7 = v5[7];
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v7);
  sub_252929E74((v5 + 9), v0 + 56);
  v8 = *(v0 + 96);
  v9 = swift_allocObject();
  *(v0 + 328) = v9;
  sub_252927BEC((v0 + 56), (v9 + 2));
  v9[7] = v8;
  v9[8] = v2;
  v9[9] = v3;

  sub_252DF2694(v10, v1);

  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  *v11 = v0;
  v11[1] = sub_252A9DDA4;
  v12 = *(v0 + 144);
  v13 = *(v0 + 104);

  return sub_252BDCAFC(v13, &unk_252E475B0, v9, v12, v7, v6);
}

uint64_t sub_252A9DDA4()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[41];
    (*(v2[17] + 8))(v2[18], v2[16]);

    v5 = sub_252A9E00C;
  }

  else
  {
    v6 = v2[41];
    (*(v2[17] + 8))(v2[18], v2[16]);

    v5 = sub_252A9DF88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9DF00()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252A9DF88()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 152);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252A9E00C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252A9E0D0(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_252E37AB4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_252E37A94();
      v11 = *(v13 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_252E378C4();
    sub_252E37AB4();
  }

  return v13;
}

uint64_t sub_252A9E238(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_252E37AB4();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_252974E7C(i, v6);
    type metadata accessor for HomeFilter();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_252E37A94();
    v4 = *(v7 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_252A9E324()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v3 = v0[14];

  return swift_deallocClassInstance();
}

void sub_252A9E3A4()
{
  type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();

  JUMPOUT(0x2530A97C0);
}

uint64_t sub_252A9E414()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(sub_252B680FC() + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v13);
  (*(v1 + 8))(v4, v0);
  memcpy(v14, v13, sizeof(v14));
  memcpy(v15, v13, sizeof(v15));
  if (sub_252956B94(v15) == 1)
  {
    return sub_252E33A04();
  }

  v6 = BYTE1(v15[1]);
  if (BYTE1(v15[1]) == 3)
  {
    goto LABEL_9;
  }

  if (BYTE1(v15[1]) && BYTE1(v15[1]) != 1)
  {
    goto LABEL_12;
  }

  v7 = sub_252E37DB4();

  if ((v7 & 1) == 0)
  {
    if (v6)
    {
LABEL_12:
      swift_bridgeObjectRelease_n();
      goto LABEL_13;
    }

    v8 = sub_252E37DB4();

    if ((v8 & 1) == 0)
    {
LABEL_9:
      sub_252B680FC();
      v9 = sub_252B63488();

      if (v6 != 3 && v9)
      {
        if (v6 == 1)
        {
          goto LABEL_12;
        }

        v10 = sub_252E37DB4();

        if (v10)
        {
          goto LABEL_13;
        }
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544DA8);
      sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD000000000000096, 0x8000000252E76FA0);
      sub_252E339F4();
      return sub_25299F5D4(v14);
    }
  }

LABEL_13:
  sub_252E339E4();
  return sub_25299F5D4(v14);
}

uint64_t sub_252A9E720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_252A9E7CC;

  return sub_252A9E8DC(a2);
}

uint64_t sub_252A9E7CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_252A9E8FC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v2 = sub_252E34034();
  v3 = [v2 disambiguationItems];
  v4 = sub_252E37264();

  v5 = sub_252A9E238(v4);

  if (v5)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544C40);
    sub_252E379F4();

    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](v5, v7);
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000096, 0x8000000252E76FA0);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429B8, qword_252E47458);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_252E34094();

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C40);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000002FLL, 0x8000000252E772C0, 55);
    sub_2529515FC(6, 3, 0xD000000000000028, 0x8000000252E772F0);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v16 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_252A9EC64()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = sub_252E34034();
  v3 = [v2 disambiguationItems];
  v4 = sub_252E37264();

  v5 = sub_252A9E238(v4);

  if (v5)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544C40);
    sub_252E379F4();

    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](v5, v7);
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000096, 0x8000000252E76FA0);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429B8, qword_252E47458);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_252E34094();

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C40);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000002FLL, 0x8000000252E772C0, 55);
    sub_2529515FC(6, 3, 0xD000000000000028, 0x8000000252E772F0);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v16 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_252A9EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return (sub_252A9F07C)(a1, a2, a3, a4);
}

uint64_t sub_252A9F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1284] = a4;
  v4[1283] = a2;
  v4[1282] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
  v4[1285] = v5;
  v6 = *(v5 - 8);
  v4[1286] = v6;
  v7 = *(v6 + 64) + 15;
  v4[1287] = swift_task_alloc();
  v8 = sub_252E36AD4();
  v4[1288] = v8;
  v9 = *(v8 - 8);
  v4[1289] = v9;
  v10 = *(v9 + 64) + 15;
  v4[1290] = swift_task_alloc();
  v11 = sub_252E34164();
  v4[1291] = v11;
  v12 = *(v11 - 8);
  v4[1292] = v12;
  v13 = *(v12 + 64) + 15;
  v4[1293] = swift_task_alloc();
  v14 = sub_252E33DB4();
  v4[1294] = v14;
  v15 = *(v14 - 8);
  v4[1295] = v15;
  v16 = *(v15 + 64) + 15;
  v4[1296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A9F264, 0, 0);
}

uint64_t sub_252A9F264()
{
  v271 = v0;
  v1 = v0[1296];
  v2 = v0[1295];
  v3 = v0[1294];
  v4 = v0[1284];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v226 = sub_252E34024();
  if ((v5 != 0x737265746C6966 || v7 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0 && (v5 != 0x6174616D6F747561 || v7 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    v42 = v5;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v12 = v227;
    __swift_project_value_buffer(*(v227 + 1288), qword_27F544C40);
    sub_252E379F4();

    *&v270[0] = 0xD000000000000029;
    *(&v270[0] + 1) = 0x8000000252E76F70;
    MEMORY[0x2530AD570](v42, v7);
    sub_252CC4050(0xD000000000000029, 0x8000000252E76F70, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 66);

    sub_2529515FC(6, 3, 0xD000000000000025, 0x8000000252E77080);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v43 = v42;
    v43[1] = v7;
    goto LABEL_11;
  }

  v225 = v5;
  v8 = *(v227 + 1293);
  v9 = *(v227 + 1292);
  v10 = *(v227 + 1291);
  v11 = *(v227 + 1283);
  sub_252E340E4();
  sub_252AB3FEC(v8, 0, __src);
  (*(v9 + 8))(v8, v10);
  v12 = v227;
  memcpy(v227 + 1, __src, 0x1F8uLL);
  if (sub_252956B94(v227 + 2) == 1)
  {

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v13 = *(v227 + 1283);
    __swift_project_value_buffer(*(v227 + 1288), qword_27F544C40);
    *&v270[0] = 0;
    *(&v270[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E770B0);
    v14 = sub_252E340C4();
    MEMORY[0x2530AD570](v14);

    sub_252CC4050(*&v270[0], *(&v270[0] + 1), 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 72);

    sub_2529515FC(6, 3, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    sub_252E340E4();
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v15 = v12[1296];
    v16 = v12[1293];
    v17 = v12[1290];
    v18 = v12[1287];
    swift_willThrow();

    v19 = v12[1];
    goto LABEL_138;
  }

  v20 = *(v227 + 40);
  v224 = *(v227 + 39);
  memcpy(__dst, v227 + 1, sizeof(__dst));
  v21 = *(v227 + 37);
  v22 = *(v227 + 304);
  v23 = *(v227 + 305);
  v240 = *(v227 + 306);
  v241 = *(v227 + 155);
  v24 = v227[31];
  v252 = v227[30];
  v253 = v24;
  v254 = *(v227 + 64);
  v25 = v227[27];
  v248 = v227[26];
  v249 = v25;
  v26 = v227[29];
  v250 = v227[28];
  v251 = v26;
  v27 = v227[23];
  v244 = v227[22];
  v245 = v27;
  v28 = v227[25];
  v246 = v227[24];
  v247 = v28;
  v29 = v227[21];
  v242 = v227[20];
  v243 = v29;
  v223 = v23;
  v222 = v21;
  v221 = v22;
  if (v23 & 1) != 0 || (v22)
  {
  }

  else
  {
    *&v270[0] = v21;
    BYTE8(v270[0]) = 0;

    v33 = sub_252C92E6C(v270);
    if (v33)
    {
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_252E3C130;
      *(v35 + 32) = v34;
      v36 = v34;

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v227 + 1288), qword_27F544C40);
      *&v270[0] = 0;
      *(&v270[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v270[0] = 0xD00000000000001ELL;
      *(&v270[0] + 1) = 0x8000000252E77270;
      v37 = v36;
      v38 = [v37 description];
      v39 = sub_252E36F34();
      v41 = v40;

      MEMORY[0x2530AD570](v39, v41);

      sub_252CC3D90(*&v270[0], *(&v270[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

      v224 = v35;
    }
  }

  v30 = *(v227 + 23);
  v219 = v30;
  v220 = *(v227 + 17);
  v255 = MEMORY[0x277D84F90];
  if (v20)
  {
    if (v20 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v227 + 1288), qword_27F544C40);
      *&v270[0] = 0;
      *(&v270[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v270[0] = 0xD00000000000001CLL;
      *(&v270[0] + 1) = 0x8000000252E77250;
      v31 = type metadata accessor for HomeFilter();
      v32 = MEMORY[0x2530AD730](v20, v31);
      MEMORY[0x2530AD570](v32);

      sub_252CC3D90(*&v270[0], *(&v270[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
      goto LABEL_87;
    }
  }

  v44 = [v226 automatableTask];
  if (v44)
  {
    v45 = v44;
    type metadata accessor for ControlAutomateHomeIntent();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v218 = v7;
  if (v47 >> 62)
  {
    goto LABEL_85;
  }

  v233 = v47 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v49 = 0;
    v230 = v47 + 32;
    v231 = (v47 & 0xC000000000000001);
    v216 = v12 + 1314;
    v214 = v47;
    v215 = v12 + 166;
    v20 = MEMORY[0x277D84F90];
    v50 = v224;
    v228 = i;
LABEL_39:
    v12 = (v50 & 0xFFFFFFFFFFFFFF8);
    v217 = v20;
    while (1)
    {
      if (v231)
      {
        v51 = MEMORY[0x2530ADF00](v49, v214);
      }

      else
      {
        if (v49 >= *(v233 + 16))
        {
          goto LABEL_82;
        }

        v51 = *(v230 + 8 * v49);
      }

      v52 = v51;
      if (__OFADD__(v49++, 1))
      {
        goto LABEL_81;
      }

      v235 = v49;
      if (!v50)
      {
        v12 = v227;
        memcpy(v227 + 64, __dst, 0x118uLL);
        *(v227 + 163) = v222;
        *(v227 + 1312) = v221;
        *(v227 + 1313) = v223;
        *v216 = v240;
        *(v216 + 2) = v241;
        *(v227 + 165) = v224;
        v60 = v253;
        *(v215 + 10) = v252;
        *(v215 + 11) = v60;
        v215[24] = v254;
        v61 = v249;
        *(v215 + 6) = v248;
        *(v215 + 7) = v61;
        v62 = v251;
        *(v215 + 8) = v250;
        *(v215 + 9) = v62;
        v63 = v245;
        *(v215 + 2) = v244;
        *(v215 + 3) = v63;
        v64 = v247;
        *(v215 + 4) = v246;
        *(v215 + 5) = v64;
        v65 = v243;
        *v215 = v242;
        *(v215 + 1) = v65;
        memcpy(v270, v227 + 64, 0x1F8uLL);
        sub_2529353AC((v12 + 128), (v12 + 191));
        v66 = sub_252BAC7E4();
        memcpy(v227 + 520, v270, 0x1F8uLL);
        sub_252935408(v227 + 520);
        if (v66 >> 62)
        {
          v67 = sub_252E378C4();
        }

        else
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v217;
        v69 = v52;
        if (v67)
        {
          v70 = 0;
          v12 = (v66 & 0xC000000000000001);
          v47 = v66 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v12)
            {
              v71 = MEMORY[0x2530ADF00](v70, v66);
            }

            else
            {
              if (v70 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v71 = *(v66 + 8 * v70 + 32);
            }

            v72 = v71;
            v73 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_83;
            }

            sub_252A20DFC(v71);
            MEMORY[0x2530AD700]();
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v237 = *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();
            v68 = v255;

            ++v70;
            if (v73 == v67)
            {
              v12 = v227;
              break;
            }
          }
        }

        v50 = v12[165];
        v219 = v12[149];
        v220 = v12[143];

        v20 = v68;
        v49 = v235;
        if (v235 != v228)
        {
          goto LABEL_39;
        }

LABEL_78:
        v7 = v218;
        goto LABEL_87;
      }

      v54 = v50 >> 62 ? sub_252E378C4() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v55 = v52;

      if (v54)
      {
        break;
      }

LABEL_40:

      if (v49 == v228)
      {
        v12 = v227;
        goto LABEL_78;
      }
    }

    v56 = 0;
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x2530ADF00](v56, v50);
      }

      else
      {
        if (v56 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v57 = *(v50 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      sub_252A20DFC(v57);
      MEMORY[0x2530AD700]();
      v47 = *((v255 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47 >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v20 = v255;

      ++v56;
      if (v59 == v54)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v233 = v47 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = MEMORY[0x277D84F90];
  v7 = v218;
LABEL_87:

  v74 = [v226 automatableTask];
  if (v74)
  {
    v75 = v74;
    type metadata accessor for ControlAutomateHomeIntent();
    v76 = swift_dynamicCastClass();
    if (v76)
    {
      v77 = *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v20;

      v78 = v226;

      goto LABEL_92;
    }
  }

  v79 = v226;
LABEL_92:
  if (qword_27F53F488 != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v80 = v12[1290];
    v81 = v12;
    v82 = v12[1289];
    v83 = v81[1288];
    v84 = __swift_project_value_buffer(v83, qword_27F544C40);
    (*(v82 + 16))(v80, v84, v83);
    *&v270[0] = 0;
    *(&v270[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v270[0] = 0xD000000000000013;
    *(&v270[0] + 1) = 0x8000000252E77110;
    MEMORY[0x2530AD570](v225, v7);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E77130);
    v12 = v20 >> 62 ? sub_252E378C4() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v85 = MEMORY[0x277D84F90];
    if (!v12)
    {
      break;
    }

    v86 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x2530ADF00](v86, v20);
      }

      else
      {
        if (v86 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v87 = *(v20 + 8 * v86 + 32);
      }

      v88 = v87;
      v89 = (v86 + 1);
      if (__OFADD__(v86, 1))
      {
        break;
      }

      v90 = [v87 description];
      v91 = sub_252E36F34();
      v93 = v92;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_2529F7A80(0, *(v85 + 2) + 1, 1, v85);
      }

      v7 = *(v85 + 2);
      v94 = *(v85 + 3);
      if (v7 >= v94 >> 1)
      {
        v85 = sub_2529F7A80((v94 > 1), v7 + 1, 1, v85);
      }

      *(v85 + 2) = v7 + 1;
      v95 = &v85[16 * v7];
      *(v95 + 4) = v91;
      *(v95 + 5) = v93;
      ++v86;
      if (v89 == v12)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
  }

LABEL_108:
  v96 = *(v227 + 1290);
  v97 = *(v227 + 1289);
  v98 = *(v227 + 1288);
  v99 = MEMORY[0x2530AD730](v85, MEMORY[0x277D837D0]);
  v101 = v100;

  MEMORY[0x2530AD570](v99, v101);

  sub_252CC3D90(*&v270[0], *(&v270[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

  (*(v97 + 8))(v96, v98);
  *(sub_252B680FC() + 75) = 1;

  v102 = sub_252B680FC();
  v103 = v227;
  swift_beginAccess();
  v104 = *(v102 + 16);
  v105 = *(v104 + 16);
  if (v105)
  {
    memcpy(v227 + 190, (v104 + 504 * v105 - 472), 0x1F8uLL);
    sub_2529353AC((v227 + 190), v227 + 3544);

    v106 = v227[195];
    v260 = v227[194];
    v261 = v106;
    v262 = v227[196];
    v263 = *(v227 + 394);
    v107 = v227[191];
    v256 = v227[190];
    v257 = v107;
    v108 = v227[193];
    v258 = v227[192];
    v259 = v108;
    v109 = *(v227 + 395);
    v110 = v227[198];
    v111 = v227[199];
    v266 = *(v227 + 400);
    v264 = v110;
    v265 = v111;
    v112 = *(v227 + 401);
    memcpy(v267, v227 + 201, sizeof(v267));
    v113 = v227[195];
    *(v227 + 2600) = v227[194];
    *(v227 + 2616) = v113;
    *(v227 + 2632) = v227[196];
    *(v227 + 331) = *(v227 + 394);
    v114 = v227[191];
    *(v227 + 2536) = v227[190];
    *(v227 + 2552) = v114;
    v115 = v227[193];
    *(v227 + 2568) = v227[192];
    *(v227 + 2584) = v115;
    *(v227 + 332) = v109;
    v116 = v227[199];
    *(v227 + 2664) = v227[198];
    *(v227 + 2680) = v116;
    *(v227 + 337) = *(v227 + 400);
    *(v227 + 338) = v112;
    memcpy(v227 + 2712, v227 + 201, 0x148uLL);
    memcpy(v270, v227 + 2536, 0x1F8uLL);
    sub_2529353AC(v227 + 2536, (v227 + 253));
    v117 = sub_252CDFDD4();
    memcpy(v227 + 127, v270, 0x1F8uLL);
    sub_252935408((v227 + 127));
    if (v117)
    {
      v118 = [v226 automatableTask];
      if (v118)
      {
        v119 = v118;
        type metadata accessor for ControlAutomateHomeIntent();
        v120 = swift_dynamicCastClass();
        if (v120)
        {
          v121 = v227 + 568;
          v232 = *(v120 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

          sub_252CC3D90(0xD000000000000023, 0x8000000252E77190, 0xD000000000000096, 0x8000000252E76FA0);
          if (*(v220 + 16))
          {
            v122 = *(v227 + 332);

            *&v270[0] = 0;
            *(&v270[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            v268 = 0xD00000000000002CLL;
            v269 = 0x8000000252E771C0;
            v270[4] = v260;
            v270[5] = v261;
            v270[6] = v262;
            v270[0] = v256;
            v270[1] = v257;
            v270[2] = v258;
            v270[3] = v259;
            *&v270[7] = v263;
            *&v270[10] = v266;
            v270[8] = v264;
            v270[9] = v265;
            memcpy(&v270[11], v267, 0x148uLL);
            *(&v270[7] + 1) = v220;
            *(&v270[10] + 1) = v112;
            v123 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v123);

            sub_252CC3D90(v268, v269, 0xD000000000000096, 0x8000000252E76FA0);
            v109 = v220;
          }

          else
          {
            if (!*(v219 + 16))
            {
LABEL_119:
              v126 = v261;
              v227[572] = v260;
              v227[573] = v126;
              v227[574] = v262;
              v127 = v257;
              *v121 = v256;
              v227[569] = v127;
              v128 = v259;
              v227[570] = v258;
              v227[571] = v128;
              v129 = v264;
              v227[577] = v265;
              *(v227 + 1150) = v263;
              *(v227 + 1151) = v109;
              *(v227 + 1156) = v266;
              v227[576] = v129;
              *(v227 + 1157) = v112;
              memcpy(v227 + 579, v267, 0x148uLL);
              memcpy(v270, v121, 0x1F8uLL);
              sub_2529353AC(v121, v227 + 9592);
              v130 = sub_252D5B220();
              memcpy(v227 + 8584, v270, 0x1F8uLL);
              v103 = v227;
              sub_252935408(v227 + 8584);
              if (v130)
              {
                v229 = v109;
                type metadata accessor for HomeUserTask.Builder();
                v131 = swift_allocObject();
                v131[3] = 0;
                v131[4] = 0;
                v131[2] = 4;
                v132 = [v232 taskType];
                v133 = [v232 attribute];
                v134 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                v135 = v130;
                v136 = sub_252E36F04();
                v137 = [v134 initWithIdentifier:0 displayString:v136];

                v138 = v137;
                [v138 setTaskType_];
                [v138 setAttribute_];
                [v138 setValue_];

                swift_setDeallocating();
                swift_deallocClassInstance();
                v139 = [v226 automatableTask];
                if (v139)
                {
                  v140 = v139;
                  v141 = swift_dynamicCastClass();
                  if (v141)
                  {
                    v142 = *(v141 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
                    *(v141 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v138;

                    v143 = v138;
                  }
                }

                *&v270[0] = 0;
                *(&v270[0] + 1) = 0xE000000000000000;
                sub_252E379F4();

                *&v270[0] = 0xD00000000000001DLL;
                *(&v270[0] + 1) = 0x8000000252E771F0;
                v144 = [v232 description];
                v145 = sub_252E36F34();
                v147 = v146;

                MEMORY[0x2530AD570](v145, v147);

                MEMORY[0x2530AD570](0x203A77656E0ALL, 0xE600000000000000);
                v148 = [v138 description];
                v149 = sub_252E36F34();
                v151 = v150;

                MEMORY[0x2530AD570](v149, v151);

                sub_252CC3D90(*&v270[0], *(&v270[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

                v103 = v227;
                v109 = v229;
              }

              else
              {
              }

              goto LABEL_126;
            }

            v124 = *(v227 + 338);
            v112 = v219;

            *&v270[0] = 0;
            *(&v270[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            v268 = 0xD000000000000030;
            v269 = 0x8000000252E77210;
            v270[4] = v260;
            v270[5] = v261;
            v270[6] = v262;
            v270[0] = v256;
            v270[1] = v257;
            v270[2] = v258;
            v270[3] = v259;
            *&v270[7] = v263;
            *&v270[10] = v266;
            v270[8] = v264;
            v270[9] = v265;
            memcpy(&v270[11], v267, 0x148uLL);
            *(&v270[7] + 1) = v109;
            *(&v270[10] + 1) = v219;
            v125 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v125);

            sub_252CC3D90(v268, v269, 0xD000000000000096, 0x8000000252E76FA0);
          }

          goto LABEL_119;
        }
      }
    }

LABEL_126:
    v152 = v103 + 379;
    sub_252B680FC();
    v153 = sub_252B63488();

    if (v153)
    {
      v154 = (v103 + 505);
      v155 = (v103 + 631);
      v270[4] = v260;
      v270[5] = v261;
      v270[6] = v262;
      v270[0] = v256;
      v270[1] = v257;
      v270[2] = v258;
      v270[3] = v259;
      *&v270[7] = v263;
      *&v270[10] = v266;
      v156 = v103;
      v270[8] = v264;
      v270[9] = v265;
      memcpy(&v270[11], v267, 0x148uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      *(&v270[7] + 1) = v109;
      *(&v270[10] + 1) = v112;
      v157 = v109;
      v158 = sub_252E1EBE8(v270);

      v159 = *(v158 + 416);
      *v155 = *(v158 + 400);
      *(v155 + 16) = v159;
      v160 = *(v158 + 432);
      v161 = *(v158 + 448);
      v162 = *(v158 + 464);
      *(v155 + 80) = *(v158 + 480);
      *(v155 + 48) = v161;
      *(v155 + 64) = v162;
      *(v155 + 32) = v160;
      v163 = MEMORY[0x277D84F90];
      *(v158 + 400) = MEMORY[0x277D84F90];
      *(v158 + 408) = v163;
      *(v158 + 416) = v163;
      *(v158 + 424) = v163;
      *(v158 + 432) = v163;
      *(v158 + 440) = v163;
      *(v158 + 448) = v163;
      *(v158 + 456) = v163;
      *(v158 + 464) = v163;
      *(v158 + 472) = v163;
      *(v158 + 480) = v163;
      sub_252937BEC(v155);
      v164 = *(v158 + 384);
      *(v158 + 384) = v163;

      sub_252E1E4F8(v270);

      v165 = v261;
      *(v154 + 64) = v260;
      *(v154 + 80) = v165;
      *(v154 + 96) = v262;
      v166 = v257;
      *v154 = v256;
      *(v154 + 16) = v166;
      v167 = v259;
      *(v154 + 32) = v258;
      *(v154 + 48) = v167;
      v168 = v264;
      v156[514] = v265;
      v169 = *(&v270[7] + 1);
      v170 = *(&v270[10] + 1);
      *(v154 + 112) = v263;
      *(v156 + 1025) = v157;
      *(v156 + 1030) = v266;
      v156[513] = v168;
      *(v156 + 1031) = v112;
      memcpy(v156 + 516, v267, 0x148uLL);
      sub_252935408(v154);
      v263 = *&v270[7];
      v260 = v270[4];
      v261 = v270[5];
      v262 = v270[6];
      v256 = v270[0];
      v257 = v270[1];
      v258 = v270[2];
      v259 = v270[3];
      v266 = *&v270[10];
      v264 = v270[8];
      v265 = v270[9];
      memcpy(v267, &v270[11], sizeof(v267));
      *&v270[0] = 0;
      *(&v270[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v268 = 0xD000000000000016;
      v269 = 0x8000000252E77170;
      v270[4] = v260;
      v270[5] = v261;
      v270[6] = v262;
      v270[0] = v256;
      v270[1] = v257;
      v270[2] = v258;
      v270[3] = v259;
      *&v270[7] = v263;
      *&v270[10] = v266;
      v270[8] = v264;
      v270[9] = v265;
      memcpy(&v270[11], v267, 0x148uLL);
      *(&v270[7] + 1) = v169;
      *(&v270[10] + 1) = v170;
      v171 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v171);

      sub_252CC3D90(v268, v269, 0xD000000000000096, 0x8000000252E76FA0);

      v172 = v169;
      v112 = v170;
    }

    else
    {
      v172 = v109;
    }

    sub_252B680FC();
    v173 = sub_252B63B0C();

    v174 = *(v173 + 16);

    if (v174)
    {
      v175 = v261;
      v227[320] = v260;
      v227[321] = v175;
      v227[322] = v262;
      v176 = v257;
      v227[316] = v256;
      v227[317] = v176;
      v177 = v259;
      v227[318] = v258;
      v227[319] = v177;
      v178 = v264;
      v227[325] = v265;
      *(v227 + 646) = v263;
      *(v227 + 647) = v172;
      *(v227 + 652) = v266;
      v227[324] = v178;
      *(v227 + 653) = v112;
      memcpy(v227 + 327, v267, 0x148uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      memcpy(v270, v227 + 316, 0x1F8uLL);
      sub_2529353AC((v227 + 316), v227 + 5560);
      v179 = sub_252E1EBE8(v270);

      swift_beginAccess();
      v180 = *(v179 + 488);
      *(v179 + 488) = MEMORY[0x277D84FA0];

      sub_252E1E4F8(v270);

      sub_252935408((v227 + 316));
      v181 = *(&v270[7] + 1);
      v182 = *(&v270[10] + 1);
      v183 = v261;
      *(v227 + 4616) = v260;
      *(v227 + 4632) = v183;
      *(v227 + 4648) = v262;
      *(v227 + 583) = v263;
      v184 = v257;
      *(v227 + 4552) = v256;
      *(v227 + 4568) = v184;
      v185 = v259;
      *(v227 + 4584) = v258;
      *(v227 + 4600) = v185;
      *(v227 + 584) = v172;
      *(v227 + 589) = v266;
      v186 = v265;
      *(v227 + 4680) = v264;
      *(v227 + 4696) = v186;
      *(v227 + 590) = v112;
      memcpy(v227 + 4728, v267, 0x148uLL);
      sub_252935408(v227 + 4552);
      v263 = *&v270[7];
      v260 = v270[4];
      v261 = v270[5];
      v262 = v270[6];
      v256 = v270[0];
      v257 = v270[1];
      v258 = v270[2];
      v259 = v270[3];
      v266 = *&v270[10];
      v264 = v270[8];
      v265 = v270[9];
      memcpy(v267, &v270[11], sizeof(v267));
      sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E77150, 0xD000000000000096, 0x8000000252E76FA0);
      v112 = v182;
    }

    else
    {
      v181 = v172;
    }

    v187 = sub_252B680FC();
    v188 = v261;
    v152[4] = v260;
    v152[5] = v188;
    v152[6] = v262;
    v189 = v257;
    *v152 = v256;
    v152[1] = v189;
    v190 = v259;
    v152[2] = v258;
    v152[3] = v190;
    v191 = v265;
    v227[387] = v264;
    *(v152 + 14) = v263;
    *(v227 + 773) = v181;
    v227[388] = v191;
    *(v227 + 778) = v266;
    *(v227 + 779) = v112;
    memcpy(v227 + 390, v267, 0x148uLL);
    swift_beginAccess();
    v192 = *(v187 + 16);
    sub_2529353AC(v152, v227 + 6568);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v187 + 16) = v192;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v192 = sub_2529F7FB0(0, *(v192 + 2) + 1, 1, v192);
      *(v187 + 16) = v192;
    }

    v195 = *(v192 + 2);
    v194 = *(v192 + 3);
    if (v195 >= v194 >> 1)
    {
      v192 = sub_2529F7FB0((v194 > 1), v195 + 1, 1, v192);
    }

    *(v192 + 2) = v195 + 1;
    memcpy(&v192[504 * v195 + 32], v152, 0x1F8uLL);
    *(v187 + 16) = v192;
    v103 = v227;
    swift_endAccess();

    v196 = v261;
    v227[446] = v260;
    v227[447] = v196;
    v227[448] = v262;
    *(v227 + 898) = v263;
    v197 = v257;
    v227[442] = v256;
    v227[443] = v197;
    v198 = v259;
    v227[444] = v258;
    v227[445] = v198;
    *(v227 + 899) = v181;
    v199 = v264;
    v200 = v265;
    *(v227 + 904) = v266;
    v227[451] = v200;
    v227[450] = v199;
    *(v227 + 905) = v112;
    memcpy(v227 + 453, v267, 0x148uLL);
    sub_252935408((v227 + 442));
    goto LABEL_137;
  }

LABEL_137:
  v201 = *(v103 + 1296);
  v234 = *(v103 + 1293);
  v236 = *(v103 + 1290);
  v202 = *(v103 + 1287);
  v203 = *(v103 + 1286);
  v204 = *(v103 + 1285);
  v205 = *(v103 + 1282);
  *(&v270[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
  *&v270[0] = v20;
  type metadata accessor for AutomateHomeIntent();
  v206 = v226;
  sub_252E33CC4();
  sub_252E33E24();

  (*(v203 + 8))(v202, v204);

  memcpy(v103 + 7576, __dst, 0x118uLL);
  *(v103 + 982) = v222;
  *(v227 + 7864) = v221;
  *(v227 + 7865) = v223;
  *(v103 + 7866) = v240;
  *(v103 + 3935) = v241;
  *(v103 + 984) = v224;
  v207 = v253;
  *(v103 + 8040) = v252;
  *(v103 + 8056) = v207;
  *(v103 + 1009) = v254;
  v208 = v249;
  *(v103 + 7976) = v248;
  *(v103 + 7992) = v208;
  v209 = v251;
  *(v103 + 8008) = v250;
  *(v103 + 8024) = v209;
  v210 = v245;
  *(v103 + 7912) = v244;
  *(v103 + 7928) = v210;
  v211 = v247;
  *(v103 + 7944) = v246;
  *(v103 + 7960) = v211;
  v212 = v243;
  *(v103 + 7880) = v242;
  *(v103 + 7896) = v212;
  sub_252935408(v103 + 7576);

  v19 = *(v103 + 1);
LABEL_138:

  return v19();
}

uint64_t sub_252AA11D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1284] = a4;
  v4[1283] = a2;
  v4[1282] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D0, &qword_252E480A0);
  v4[1285] = v5;
  v6 = *(v5 - 8);
  v4[1286] = v6;
  v7 = *(v6 + 64) + 15;
  v4[1287] = swift_task_alloc();
  v8 = sub_252E36AD4();
  v4[1288] = v8;
  v9 = *(v8 - 8);
  v4[1289] = v9;
  v10 = *(v9 + 64) + 15;
  v4[1290] = swift_task_alloc();
  v11 = sub_252E34164();
  v4[1291] = v11;
  v12 = *(v11 - 8);
  v4[1292] = v12;
  v13 = *(v12 + 64) + 15;
  v4[1293] = swift_task_alloc();
  v14 = sub_252E33DB4();
  v4[1294] = v14;
  v15 = *(v14 - 8);
  v4[1295] = v15;
  v16 = *(v15 + 64) + 15;
  v4[1296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA13BC, 0, 0);
}

uint64_t sub_252AA13BC()
{
  v258 = v0;
  v2 = v0[1296];
  v3 = v0[1295];
  v4 = v0[1294];
  v5 = v0[1284];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v212 = v6;
  v213 = sub_252E34024();
  if ((v6 != 0x737265746C6966 || v8 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0 && (v6 != 0x6174616D6F747561 || v8 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    v43 = v8;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v13 = v214;
    __swift_project_value_buffer(*(v214 + 1288), qword_27F544C40);
    sub_252E379F4();

    *&v257[0] = 0xD000000000000029;
    *(&v257[0] + 1) = 0x8000000252E76F70;
    MEMORY[0x2530AD570](v6, v43);
    sub_252CC4050(0xD000000000000029, 0x8000000252E76F70, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 66);

    sub_2529515FC(6, 3, 0xD000000000000025, 0x8000000252E77080);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    *v44 = v6;
    v44[1] = v43;
    goto LABEL_11;
  }

  v211 = v8;
  v9 = *(v214 + 1293);
  v10 = *(v214 + 1292);
  v11 = *(v214 + 1291);
  v12 = *(v214 + 1283);
  sub_252E340E4();
  sub_252AB3FEC(v9, 0, __src);
  (*(v10 + 8))(v9, v11);
  v13 = v214;
  memcpy(v214 + 1, __src, 0x1F8uLL);
  if (sub_252956B94(v214 + 2) == 1)
  {

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v14 = *(v214 + 1283);
    __swift_project_value_buffer(*(v214 + 1288), qword_27F544C40);
    *&v257[0] = 0;
    *(&v257[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E770B0);
    v15 = sub_252E340C4();
    MEMORY[0x2530AD570](v15);

    sub_252CC4050(*&v257[0], *(&v257[0] + 1), 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 72);

    sub_2529515FC(6, 3, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for HomeAutomationError();
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    sub_252E340E4();
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v16 = *(v13 + 10368);
    v17 = *(v13 + 10344);
    v18 = *(v13 + 10320);
    v19 = *(v13 + 10296);
    swift_willThrow();

    v20 = *(v13 + 8);
    goto LABEL_117;
  }

  v21 = *(v214 + 39);
  v22 = *(v214 + 40);
  memcpy(__dst, v214 + 1, sizeof(__dst));
  v23 = *(v214 + 37);
  v24 = *(v214 + 304);
  v25 = *(v214 + 305);
  v227 = *(v214 + 306);
  v228 = *(v214 + 155);
  v26 = v214[31];
  v239 = v214[30];
  v240 = v26;
  v241 = *(v214 + 64);
  v27 = v214[27];
  v235 = v214[26];
  v236 = v27;
  v28 = v214[29];
  v237 = v214[28];
  v238 = v28;
  v29 = v214[23];
  v231 = v214[22];
  v232 = v29;
  v30 = v214[25];
  v233 = v214[24];
  v234 = v30;
  v31 = v214[21];
  v229 = v214[20];
  v230 = v31;
  v210 = v25;
  v209 = v23;
  v208 = v24;
  if (v25 & 1) != 0 || (v24)
  {
  }

  else
  {
    *&v257[0] = v23;
    BYTE8(v257[0]) = 0;

    v35 = sub_252C92E6C(v257);
    if (v35)
    {
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252E3C130;
      *(v21 + 32) = v36;
      v37 = v36;

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v214 + 1288), qword_27F544C40);
      *&v257[0] = 0;
      *(&v257[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v257[0] = 0xD00000000000001ELL;
      *(&v257[0] + 1) = 0x8000000252E77270;
      v38 = v37;
      v39 = [v38 description];
      v40 = sub_252E36F34();
      v42 = v41;

      MEMORY[0x2530AD570](v40, v42);

      sub_252CC3D90(*&v257[0], *(&v257[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
    }
  }

  v32 = *(v214 + 23);
  v205 = v32;
  v206 = *(v214 + 17);
  v242 = MEMORY[0x277D84F90];
  v207 = v21;
  if (v22)
  {
    if (v22 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v214 + 1288), qword_27F544C40);
      *&v257[0] = 0;
      *(&v257[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v257[0] = 0xD00000000000001CLL;
      *(&v257[0] + 1) = 0x8000000252E77250;
      v33 = type metadata accessor for HomeFilter();
      v34 = MEMORY[0x2530AD730](v22, v33);
      MEMORY[0x2530AD570](v34);

      sub_252CC3D90(*&v257[0], *(&v257[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
      goto LABEL_76;
    }
  }

  v45 = [v213 filters];
  if (v45)
  {
    v46 = v45;
    type metadata accessor for HomeFilter();
    v47 = sub_252E37264();

    if (!(v47 >> 62))
    {
      goto LABEL_32;
    }

LABEL_73:
    v220 = v47 & 0xFFFFFFFFFFFFFF8;
    v48 = sub_252E378C4();
    if (v48)
    {
      goto LABEL_33;
    }

LABEL_74:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_76;
  }

  v47 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_73;
  }

LABEL_32:
  v220 = v47 & 0xFFFFFFFFFFFFFF8;
  v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v48)
  {
    goto LABEL_74;
  }

LABEL_33:
  v49 = 0;
  v216 = v47 + 32;
  v217 = v47 & 0xC000000000000001;
  v203 = v47;
  v22 = MEMORY[0x277D84F90];
  v215 = v48;
  while (2)
  {
    v13 = v21 & 0xFFFFFFFFFFFFFF8;
    v223 = v21 & 0xC000000000000001;
    v204 = v22;
    while (1)
    {
      if (v217)
      {
        v50 = MEMORY[0x2530ADF00](v49, v203);
      }

      else
      {
        if (v49 >= *(v220 + 16))
        {
          goto LABEL_123;
        }

        v50 = *(v216 + 8 * v49);
      }

      v51 = v50;
      if (__OFADD__(v49++, 1))
      {
        goto LABEL_122;
      }

      v222 = v49;
      if (!v21)
      {
        break;
      }

      if (v21 >> 62)
      {
        v53 = sub_252E378C4();
      }

      else
      {
        v53 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v51;

      if (v53)
      {
        v55 = 0;
        while (1)
        {
          if (v223)
          {
            v56 = MEMORY[0x2530ADF00](v55, v21);
          }

          else
          {
            if (v55 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v56 = *(v21 + 8 * v55 + 32);
          }

          v57 = v56;
          v1 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          sub_252A20DFC(v56);
          MEMORY[0x2530AD700]();
          if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v22 = v242;

          ++v55;
          if (v1 == v53)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_35:

      if (v49 == v215)
      {
        v13 = v214;
        goto LABEL_76;
      }
    }

    v13 = v214;
    memcpy(v214 + 64, __dst, 0x118uLL);
    *(v214 + 163) = v209;
    *(v214 + 1312) = v208;
    *(v214 + 1313) = v210;
    *(v214 + 1314) = v227;
    *(v214 + 659) = v228;
    *(v214 + 165) = v207;
    v58 = v240;
    v214[93] = v239;
    v214[94] = v58;
    *(v214 + 190) = v241;
    v59 = v236;
    v214[89] = v235;
    v214[90] = v59;
    v60 = v238;
    v214[91] = v237;
    v214[92] = v60;
    v61 = v232;
    v214[85] = v231;
    v214[86] = v61;
    v62 = v234;
    v214[87] = v233;
    v214[88] = v62;
    v63 = v230;
    v214[83] = v229;
    v214[84] = v63;
    memcpy(v257, v214 + 64, 0x1F8uLL);
    sub_2529353AC(v13 + 1024, v13 + 1528);
    v64 = sub_252BAC7E4();
    memcpy(v214 + 520, v257, 0x1F8uLL);
    sub_252935408(v214 + 520);
    if (v64 >> 62)
    {
      v65 = sub_252E378C4();
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v204;
    v22 = v51;
    if (v65)
    {
      v67 = 0;
      v13 = v64 & 0xC000000000000001;
      do
      {
        if (v13)
        {
          v68 = MEMORY[0x2530ADF00](v67, v64);
        }

        else
        {
          if (v67 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_125;
          }

          v68 = *(v64 + 8 * v67 + 32);
        }

        v69 = v68;
        v1 = (v67 + 1);
        if (__OFADD__(v67, 1))
        {
          goto LABEL_124;
        }

        sub_252A20DFC(v68);
        MEMORY[0x2530AD700]();
        if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v224 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v66 = v242;

        ++v67;
      }

      while (v1 != v65);
      v13 = v214;
    }

    v21 = *(v13 + 1320);
    v205 = *(v13 + 1192);
    v206 = *(v13 + 1144);

    v22 = v66;
    v49 = v222;
    if (v222 != v215)
    {
      continue;
    }

    break;
  }

LABEL_76:

  v222 = sub_252DE1F7C(v70);
  if (qword_27F53F488 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v71 = *(v13 + 10320);
    v72 = v13;
    v73 = *(v13 + 10312);
    v74 = *(v72 + 10304);
    v75 = __swift_project_value_buffer(v74, qword_27F544C40);
    (*(v73 + 16))(v71, v75, v74);
    *&v257[0] = 0;
    *(&v257[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v257[0] = 0xD000000000000013;
    *(&v257[0] + 1) = 0x8000000252E77110;
    MEMORY[0x2530AD570](v212, v211);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E77130);
    v13 = v22 >> 62 ? sub_252E378C4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v76 = MEMORY[0x277D84F90];
    if (!v13)
    {
      break;
    }

    v77 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x2530ADF00](v77, v22);
      }

      else
      {
        if (v77 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v78 = *(v22 + 8 * v77 + 32);
      }

      v79 = v78;
      v80 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      v81 = [v78 description];
      v82 = sub_252E36F34();
      v84 = v83;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_2529F7A80(0, *(v76 + 2) + 1, 1, v76);
      }

      v86 = *(v76 + 2);
      v85 = *(v76 + 3);
      if (v86 >= v85 >> 1)
      {
        v76 = sub_2529F7A80((v85 > 1), v86 + 1, 1, v76);
      }

      *(v76 + 2) = v86 + 1;
      v87 = &v76[16 * v86];
      *(v87 + 4) = v82;
      *(v87 + 5) = v84;
      ++v77;
      if (v80 == v13)
      {
        goto LABEL_92;
      }
    }

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
    swift_once();
  }

LABEL_92:
  v223 = (v214 + 256);
  v88 = *(v214 + 1290);
  v89 = *(v214 + 1289);
  v90 = *(v214 + 1288);
  v91 = MEMORY[0x2530AD730](v76, MEMORY[0x277D837D0]);
  v93 = v92;

  MEMORY[0x2530AD570](v91, v93);

  v1 = "eter for disambiguation: ";
  sub_252CC3D90(*&v257[0], *(&v257[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

  (*(v89 + 8))(v88, v90);
  *(sub_252B680FC() + 75) = 1;

  v94 = sub_252B680FC();
  v95 = v214;
  swift_beginAccess();
  v96 = *(v94 + 16);
  v97 = *(v96 + 16);
  if (v97)
  {
    memcpy(v214 + 190, (v96 + 504 * v97 - 472), 0x1F8uLL);
    sub_2529353AC((v214 + 190), v214 + 3544);

    v98 = v214[195];
    v247 = v214[194];
    v248 = v98;
    v249 = v214[196];
    v250 = *(v214 + 394);
    v99 = v214[191];
    v243 = v214[190];
    v244 = v99;
    v100 = v214[193];
    v245 = v214[192];
    v246 = v100;
    v101 = *(v214 + 395);
    v102 = v214[198];
    v103 = v214[199];
    v253 = *(v214 + 400);
    v251 = v102;
    v252 = v103;
    v104 = *(v214 + 401);
    memcpy(v254, v214 + 201, sizeof(v254));
    v105 = v214[195];
    *(v214 + 2600) = v214[194];
    *(v214 + 2616) = v105;
    *(v214 + 2632) = v214[196];
    *(v214 + 331) = *(v214 + 394);
    v106 = v214[191];
    *(v214 + 2536) = v214[190];
    *(v214 + 2552) = v106;
    v107 = v214[193];
    *(v214 + 2568) = v214[192];
    *(v214 + 2584) = v107;
    *(v214 + 332) = v101;
    v108 = v214[199];
    *(v214 + 2664) = v214[198];
    *(v214 + 2680) = v108;
    *(v214 + 337) = *(v214 + 400);
    *(v214 + 338) = v104;
    memcpy(v214 + 2712, v214 + 201, 0x148uLL);
    memcpy(v257, v214 + 2536, 0x1F8uLL);
    sub_2529353AC(v214 + 2536, (v214 + 253));
    v109 = sub_252CDFDD4();
    memcpy(v214 + 127, v257, 0x1F8uLL);
    sub_252935408((v214 + 127));
    if ((v109 & 1) == 0 || (v110 = [v213 userTask]) == 0)
    {
LABEL_106:
      v139 = v95 + 379;
      sub_252B680FC();
      v140 = sub_252B63488();

      v218 = v1;
      if (v140)
      {
        v141 = (v95 + 505);
        v142 = (v95 + 631);
        v257[4] = v247;
        v257[5] = v248;
        v257[6] = v249;
        v257[0] = v243;
        v257[1] = v244;
        v257[2] = v245;
        v257[3] = v246;
        *&v257[7] = v250;
        *&v257[10] = v253;
        v143 = v95;
        v257[8] = v251;
        v257[9] = v252;
        memcpy(&v257[11], v254, 0x148uLL);
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        *(&v257[7] + 1) = v101;
        *(&v257[10] + 1) = v104;
        v144 = v104;
        v145 = sub_252E1EBE8(v257);

        v146 = *(v145 + 416);
        *v142 = *(v145 + 400);
        *(v142 + 16) = v146;
        v147 = *(v145 + 432);
        v148 = *(v145 + 448);
        v149 = *(v145 + 464);
        *(v142 + 80) = *(v145 + 480);
        *(v142 + 48) = v148;
        *(v142 + 64) = v149;
        *(v142 + 32) = v147;
        v150 = MEMORY[0x277D84F90];
        *(v145 + 400) = MEMORY[0x277D84F90];
        *(v145 + 408) = v150;
        *(v145 + 416) = v150;
        *(v145 + 424) = v150;
        *(v145 + 432) = v150;
        *(v145 + 440) = v150;
        *(v145 + 448) = v150;
        *(v145 + 456) = v150;
        *(v145 + 464) = v150;
        *(v145 + 472) = v150;
        *(v145 + 480) = v150;
        sub_252937BEC(v142);
        v151 = *(v145 + 384);
        *(v145 + 384) = v150;

        sub_252E1E4F8(v257);

        v152 = v248;
        *(v141 + 64) = v247;
        *(v141 + 80) = v152;
        *(v141 + 96) = v249;
        v153 = v244;
        *v141 = v243;
        *(v141 + 16) = v153;
        v154 = v246;
        *(v141 + 32) = v245;
        *(v141 + 48) = v154;
        v155 = v251;
        v143[514] = v252;
        v156 = *(&v257[7] + 1);
        v157 = *(&v257[10] + 1);
        *(v141 + 112) = v250;
        *(v143 + 1025) = v101;
        *(v143 + 1030) = v253;
        v143[513] = v155;
        *(v143 + 1031) = v144;
        memcpy(v143 + 516, v254, 0x148uLL);
        sub_252935408(v141);
        v250 = *&v257[7];
        v247 = v257[4];
        v248 = v257[5];
        v249 = v257[6];
        v243 = v257[0];
        v244 = v257[1];
        v245 = v257[2];
        v246 = v257[3];
        v253 = *&v257[10];
        v251 = v257[8];
        v252 = v257[9];
        memcpy(v254, &v257[11], sizeof(v254));
        *&v257[0] = 0;
        *(&v257[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        v255 = 0xD000000000000016;
        v256 = 0x8000000252E77170;
        v257[4] = v247;
        v257[5] = v248;
        v257[6] = v249;
        v257[0] = v243;
        v257[1] = v244;
        v257[2] = v245;
        v257[3] = v246;
        *&v257[7] = v250;
        *&v257[10] = v253;
        v257[8] = v251;
        v257[9] = v252;
        memcpy(&v257[11], v254, 0x148uLL);
        *(&v257[7] + 1) = v156;
        *(&v257[10] + 1) = v157;
        v158 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v158);

        sub_252CC3D90(v255, v256, 0xD000000000000096, v218 | 0x8000000000000000);

        v101 = v156;
        v104 = v157;
      }

      sub_252B680FC();
      v159 = sub_252B63B0C();

      v160 = *(v159 + 16);

      if (v160)
      {
        v161 = v248;
        v214[320] = v247;
        v214[321] = v161;
        v214[322] = v249;
        v162 = v244;
        v214[316] = v243;
        v214[317] = v162;
        v163 = v246;
        v214[318] = v245;
        v214[319] = v163;
        v164 = v251;
        v214[325] = v252;
        v165 = v104;
        *(v214 + 646) = v250;
        *(v214 + 647) = v101;
        *(v214 + 652) = v253;
        v214[324] = v164;
        *(v214 + 653) = v104;
        memcpy(v214 + 327, v254, 0x148uLL);
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(v257, v214 + 316, 0x1F8uLL);
        sub_2529353AC((v214 + 316), v214 + 5560);
        v166 = sub_252E1EBE8(v257);

        swift_beginAccess();
        v167 = *(v166 + 488);
        *(v166 + 488) = MEMORY[0x277D84FA0];

        sub_252E1E4F8(v257);

        sub_252935408((v214 + 316));
        v168 = *(&v257[7] + 1);
        v169 = *(&v257[10] + 1);
        v170 = v248;
        *(v214 + 4616) = v247;
        *(v214 + 4632) = v170;
        *(v214 + 4648) = v249;
        *(v214 + 583) = v250;
        v171 = v244;
        *(v214 + 4552) = v243;
        *(v214 + 4568) = v171;
        v172 = v246;
        *(v214 + 4584) = v245;
        *(v214 + 4600) = v172;
        *(v214 + 584) = v101;
        *(v214 + 589) = v253;
        v173 = v252;
        *(v214 + 4680) = v251;
        *(v214 + 4696) = v173;
        *(v214 + 590) = v165;
        memcpy(v214 + 4728, v254, 0x148uLL);
        sub_252935408(v214 + 4552);
        v250 = *&v257[7];
        v247 = v257[4];
        v248 = v257[5];
        v249 = v257[6];
        v243 = v257[0];
        v244 = v257[1];
        v245 = v257[2];
        v246 = v257[3];
        v253 = *&v257[10];
        v251 = v257[8];
        v252 = v257[9];
        memcpy(v254, &v257[11], sizeof(v254));
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E77150, 0xD000000000000096, v218 | 0x8000000000000000);
        v174 = v168;
        v104 = v169;
      }

      else
      {
        v174 = v101;
      }

      v175 = sub_252B680FC();
      v176 = v248;
      v139[4] = v247;
      v139[5] = v176;
      v139[6] = v249;
      v177 = v244;
      *v139 = v243;
      v139[1] = v177;
      v178 = v246;
      v139[2] = v245;
      v139[3] = v178;
      v179 = v252;
      v214[387] = v251;
      *(v139 + 14) = v250;
      *(v214 + 773) = v174;
      v214[388] = v179;
      *(v214 + 778) = v253;
      *(v214 + 779) = v104;
      memcpy(v214 + 390, v254, 0x148uLL);
      swift_beginAccess();
      v180 = *(v175 + 16);
      sub_2529353AC(v139, v214 + 6568);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v175 + 16) = v180;
      v182 = v174;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v180 = sub_2529F7FB0(0, *(v180 + 2) + 1, 1, v180);
        *(v175 + 16) = v180;
      }

      v184 = *(v180 + 2);
      v183 = *(v180 + 3);
      if (v184 >= v183 >> 1)
      {
        v180 = sub_2529F7FB0((v183 > 1), v184 + 1, 1, v180);
      }

      *(v180 + 2) = v184 + 1;
      memcpy(&v180[504 * v184 + 32], v139, 0x1F8uLL);
      *(v175 + 16) = v180;
      v95 = v214;
      swift_endAccess();

      v185 = v248;
      v214[446] = v247;
      v214[447] = v185;
      v214[448] = v249;
      *(v214 + 898) = v250;
      v186 = v244;
      v214[442] = v243;
      v214[443] = v186;
      v187 = v246;
      v214[444] = v245;
      v214[445] = v187;
      *(v214 + 899) = v182;
      v188 = v251;
      v189 = v252;
      *(v214 + 904) = v253;
      v214[451] = v189;
      v214[450] = v188;
      *(v214 + 905) = v104;
      memcpy(v214 + 453, v254, 0x148uLL);
      sub_252935408((v214 + 442));
      goto LABEL_116;
    }

    v55 = v110;
    v215 = v101;
    v216 = v104;
    v13 = 8584;
    v54 = v214 + 568;
    v53 = 9592;
    sub_252CC3D90(0xD000000000000023, 0x8000000252E77190, 0xD000000000000096, 0x8000000252E76FA0);
    if (v206[2])
    {
      v111 = *(v214 + 332);

      *&v257[0] = 0;
      *(&v257[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v255 = 0xD00000000000002CLL;
      v256 = 0x8000000252E771C0;
      v257[4] = v247;
      v257[5] = v248;
      v257[6] = v249;
      v257[0] = v243;
      v257[1] = v244;
      v257[2] = v245;
      v257[3] = v246;
      *&v257[7] = v250;
      *&v257[10] = v253;
      v257[8] = v251;
      v257[9] = v252;
      memcpy(&v257[11], v254, 0x148uLL);
      *(&v257[7] + 1) = v206;
      *(&v257[10] + 1) = v104;
      v112 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v112);

      sub_252CC3D90(v255, v256, 0xD000000000000096, 0x8000000252E76FA0);
      v215 = v206;
      v53 = 9592;
    }

    else
    {
LABEL_100:
      if (!*(v205 + 16))
      {
LABEL_103:
        v115 = v248;
        v54[4] = v247;
        v54[5] = v115;
        v54[6] = v249;
        v116 = v244;
        *v54 = v243;
        v54[1] = v116;
        v117 = v246;
        v54[2] = v245;
        v54[3] = v117;
        v118 = v251;
        v214[577] = v252;
        *(v54 + 14) = v250;
        *(v214 + 1151) = v215;
        *(v214 + 1156) = v253;
        v214[576] = v118;
        *(v214 + 1157) = v216;
        memcpy(v214 + 579, v254, 0x148uLL);
        memcpy(v257, v54, 0x1F8uLL);
        sub_2529353AC(v54, v214 + v53);
        v119 = sub_252D5B220();
        memcpy(v214 + v13, v257, 0x1F8uLL);
        v120 = v214 + v13;
        v95 = v214;
        sub_252935408(v120);
        if (v119)
        {
          type metadata accessor for HomeUserTask.Builder();
          v121 = swift_allocObject();
          v121[3] = 0;
          v121[4] = 0;
          v121[2] = 4;
          v122 = [v55 taskType];
          v123 = v1;
          v124 = [v55 attribute];
          v125 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v126 = v119;
          v127 = sub_252E36F04();
          v128 = [v125 initWithIdentifier:0 displayString:v127];

          v129 = v128;
          [v129 setTaskType_];
          [v129 setAttribute_];
          [v129 setValue_];

          swift_setDeallocating();
          swift_deallocClassInstance();
          v130 = ControlHomeIntent.withUpdated(task:)(v129);

          *&v257[0] = 0;
          *(&v257[0] + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v257[0] = 0xD00000000000001DLL;
          *(&v257[0] + 1) = 0x8000000252E771F0;
          v131 = [v55 description];
          v132 = sub_252E36F34();
          v134 = v133;

          MEMORY[0x2530AD570](v132, v134);

          MEMORY[0x2530AD570](0x203A77656E0ALL, 0xE600000000000000);
          v95 = v214;
          v135 = [v129 description];
          v136 = sub_252E36F34();
          v138 = v137;

          MEMORY[0x2530AD570](v136, v138);
          v1 = v123;

          sub_252CC3D90(*&v257[0], *(&v257[0] + 1), 0xD000000000000096, v123 | 0x8000000000000000);

          v55 = v126;
          v222 = v130;
        }

        v101 = v215;
        v104 = v216;
        goto LABEL_106;
      }

      v113 = *(v214 + 338);

      *&v257[0] = 0;
      *(&v257[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v255 = 0xD000000000000030;
      v256 = 0x8000000252E77210;
      v257[4] = v247;
      v257[5] = v248;
      v257[6] = v249;
      v257[0] = v243;
      v257[1] = v244;
      v257[2] = v245;
      v257[3] = v246;
      *&v257[7] = v250;
      *&v257[10] = v253;
      v257[8] = v251;
      v257[9] = v252;
      memcpy(&v257[11], v254, 0x148uLL);
      *(&v257[7] + 1) = v215;
      *(&v257[10] + 1) = v205;
      v114 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v114);

      sub_252CC3D90(v255, v256, 0xD000000000000096, v1 | 0x8000000000000000);
      v216 = v205;
    }

    goto LABEL_103;
  }

LABEL_116:
  v190 = *(v95 + 1296);
  v219 = *(v95 + 1293);
  v221 = *(v95 + 1290);
  v191 = *(v95 + 1287);
  v192 = *(v95 + 1286);
  v193 = *(v95 + 1285);
  v194 = *(v95 + 1282);
  *(&v257[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
  *&v257[0] = v22;
  type metadata accessor for ControlHomeIntent();
  v195 = v222;
  sub_252E33CC4();
  sub_252E33E24();

  (*(v192 + 8))(v191, v193);

  memcpy(v95 + 7576, __dst, 0x118uLL);
  *(v95 + 982) = v209;
  *(v223 + 3768) = v208;
  *(v223 + 3769) = v210;
  *(v95 + 7866) = v227;
  *(v95 + 3935) = v228;
  *(v95 + 984) = v207;
  v196 = v240;
  *(v95 + 8040) = v239;
  *(v95 + 8056) = v196;
  *(v95 + 1009) = v241;
  v197 = v236;
  *(v95 + 7976) = v235;
  *(v95 + 7992) = v197;
  v198 = v238;
  *(v95 + 8008) = v237;
  *(v95 + 8024) = v198;
  v199 = v232;
  *(v95 + 7912) = v231;
  *(v95 + 7928) = v199;
  v200 = v234;
  *(v95 + 7944) = v233;
  *(v95 + 7960) = v200;
  v201 = v230;
  *(v95 + 7880) = v229;
  *(v95 + 7896) = v201;
  sub_252935408(v95 + 7576);

  v20 = *(v95 + 1);
LABEL_117:

  return v20();
}

uint64_t sub_252AA321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252A9CB70(a1, v8, a3);
}

uint64_t sub_252AA32C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_252AA3394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_252AA3460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_252AA3524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_252AA35E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_252AA3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252AA3710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_252AA3840()
{
  result = qword_27F5429B0;
  if (!qword_27F5429B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5429B8, qword_252E47458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5429B0);
  }

  return result;
}

uint64_t sub_252AA38A4(uint64_t a1, uint64_t a2)
{
  result = sub_252AA38FC(&qword_27F5429C0, a2, type metadata accessor for AutomateHomeNeedsDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252AA38FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252AA3944()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252B29FE8((v0 + 2), v2, v3, v4);
}

uint64_t sub_252AA39F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_25294B958;

  return sub_252B28D44(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_252AA3AC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B958;

  return sub_252B29588(v2, v3, v4, v5, v6);
}

uint64_t sub_252AA3B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25293B808;

  return sub_252B29AE4(a1, v4, v5, v7, v6);
}

uint64_t sub_252AA3C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[326] = v3;
  v4[325] = a3;
  v4[324] = a2;
  v4[323] = a1;
  v5 = sub_252E34014();
  v4[327] = v5;
  v6 = *(v5 - 8);
  v4[328] = v6;
  v7 = *(v6 + 64) + 15;
  v4[329] = swift_task_alloc();
  v4[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA3D18, 0, 0);
}

uint64_t sub_252AA3D18()
{
  v37 = v0;
  v2 = MEMORY[0x277D84F90];
  if (v0[325])
  {
    v3 = sub_252C2C068();
    v4 = v3;
    __dst[0] = v2;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (1)
    {
      if (v6 == v7)
      {

        goto LABEL_16;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v1 = sub_252DA124C(0);

      ++v7;
      if (v1)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v2 = __dst[0];
        v7 = v10;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_16:
    v0[331] = v2;
    v1 = v0[326];
    v12 = v0[324];
    memcpy(v0 + 65, (v1 + 112), 0x1F8uLL);
    memcpy(__dst, (v1 + 112), 0x1F8uLL);
    sub_2529D291C((v0 + 65), (v0 + 128));
    v13 = v12;
    v4 = sub_252953488(v12, __dst, 0);
    v0[332] = v4;

    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v14 = v0[326];
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D18);
  __dst[0] = 0x203A746E65746E49;
  __dst[1] = 0xE800000000000000;
  memcpy(v0 + 2, (v1 + 112), 0x1F8uLL);
  memcpy(v0 + 191, (v1 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 2), (v0 + 254));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000091, 0x8000000252E774D0);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  v0[322] = *(v4 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000091, 0x8000000252E774D0);

  v18 = swift_allocObject();
  v0[333] = v18;
  *(v18 + 16) = v14;
  *(v18 + 24) = v2;

  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v19 + 288), (v0 + 317));

  v20 = v0[320];
  v21 = v0[321];
  __swift_project_boxed_opaque_existential_1(v0 + 317, v20);
  v22 = (*(v21 + 120))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 317);
  if (v22)
  {
    v23 = v0[330];
    v24 = v0[326];
    v25 = v0[324];
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
    type metadata accessor for HomeAutomationEntityResponses();
    v26 = swift_allocObject();
    v0[334] = v26;
    *(v26 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v26 + 24) = v2;
    v27 = v24[12];
    v28 = v24[13];
    __swift_project_boxed_opaque_existential_1(v24 + 9, v27);
    v29 = swift_task_alloc();
    v0[335] = v29;
    v29[2] = v25;
    v29[3] = v26;
    v29[4] = v4;
    sub_252B03B94();
    v30 = swift_task_alloc();
    v0[336] = v30;
    *v30 = v0;
    v30[1] = sub_252AA4314;
    v31 = v0[330];
    v32 = v0[323];
    v41 = v27;
    v42 = v28;
    v40 = 512;
    v39 = 0;

    return sub_252A199A8(v32, &unk_252E47648, v18, &unk_252E47668, v29, v31, 0, 0);
  }

  else
  {
    v34 = *__swift_project_boxed_opaque_existential_1((v0[326] + 24), *(v0[326] + 48));

    v35 = swift_task_alloc();
    v0[338] = v35;
    *v35 = v0;
    v35[1] = sub_252AA4524;

    return sub_252C0FFE0(0, v34, v2);
  }
}

uint64_t sub_252AA4314()
{
  v2 = *v1;
  v3 = *(*v1 + 2688);
  v4 = *(*v1 + 2640);
  v5 = *(*v1 + 2624);
  v6 = *(*v1 + 2616);
  v10 = *v1;
  *(*v1 + 2696) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252AA4A14;
  }

  else
  {
    v8 = *(v2 + 2680);

    v7 = sub_252AA4494;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252AA4494()
{
  v1 = v0[334];
  v2 = v0[333];
  v3 = v0[332];

  v4 = v0[330];
  v5 = v0[329];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252AA4524(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2704);
  v5 = *(*v2 + 2648);
  v8 = *v2;
  *(v3 + 2712) = a1;
  *(v3 + 2720) = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {
    v6 = sub_252AA4900;
  }

  else
  {
    v6 = sub_252AA4660;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252AA4660()
{
  v1 = v0[339];
  v2 = v0[329];
  v3 = v0[326];
  v4 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 72), v4);
  v5 = swift_task_alloc();
  v0[341] = v5;
  *(v5 + 16) = v1;
  sub_252AD7CC4();
  v6 = swift_task_alloc();
  v0[342] = v6;
  *v6 = v0;
  v6[1] = sub_252AA4780;
  v7 = v0[329];
  v8 = v0[323];

  return sub_252BDB88C(v8, &unk_252E47658, v5, v7, 0, 0, 0, v4);
}

uint64_t sub_252AA4780()
{
  v2 = *v1;
  v3 = *(*v1 + 2736);
  v4 = *(*v1 + 2632);
  v5 = *(*v1 + 2624);
  v6 = *(*v1 + 2616);
  v10 = *v1;
  *(*v1 + 2744) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252AA4AB8;
  }

  else
  {
    v8 = *(v2 + 2728);

    v7 = sub_252AA4984;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252AA4900()
{
  v1 = v0[333];
  v2 = v0[332];

  v3 = v0[340];
  v4 = v0[330];
  v5 = v0[329];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252AA4984()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2656);

  v3 = *(v0 + 2640);
  v4 = *(v0 + 2632);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252AA4A14()
{
  v1 = v0[335];
  v2 = v0[334];
  v3 = v0[333];
  v4 = v0[332];

  v5 = v0[337];
  v6 = v0[330];
  v7 = v0[329];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252AA4AB8()
{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2656);

  v4 = *(v0 + 2744);
  v5 = *(v0 + 2640);
  v6 = *(v0 + 2632);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252AA4B5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252AA4B7C, 0, 0);
}

uint64_t sub_252AA4B7C()
{
  v1 = v0[3];
  v0[4] = *(v0[2] + 64);
  v2 = type metadata accessor for HomeAutomationEntityResponses();
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x8000000252E775C0;
  *(v4 + 72) = v2;
  v5 = *(MEMORY[0x277D55C70] + 4);
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v0[6] = v4;
  *(v4 + 16) = xmmword_252E3C290;
  *(v4 + 48) = v3;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_252AA4CF0;

  return v8(0xD000000000000021, 0x8000000252E77590, v4);
}

uint64_t sub_252AA4CF0(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252AA4E58, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];
    v8 = v5[4];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_252AA4E58()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_252AA4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA4F64, 0, 0);
}

uint64_t sub_252AA4F64()
{
  v1 = v0[3];
  if (sub_252C4B5D4())
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_252AA5090;
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];

    return sub_252A25610(v4, v6, v2, v5);
  }

  else
  {
    v8 = type metadata accessor for HomeAutomationSnippetModels();
    v9 = v0[6];
    (*(*(v8 - 8) + 56))(v0[2], 1, 1);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_252AA5090()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_252AA5270;
  }

  else
  {
    v3 = sub_252AA51A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AA51A4()
{
  sub_2529645E8(v0[6], v0[2]);
  v1 = type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  v2 = v0[6];
  (*(*(v1 - 8) + 56))(v0[2], 0, 1, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252AA5270()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_252AA5300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252AA3C40(a1, a2, a3);
}

void *sub_252AA53B4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for InProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252AA5418(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_252C285CC();
  if (v2 >> 62)
  {
    v8 = sub_252E378C4();

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  v4 = sub_252C285CC();
  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_252C2C068();
  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v5 == v7);
}

uint64_t sub_252AA5528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252AA4B5C(v2, v3);
}

uint64_t sub_252AA55C0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252AA5654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252AA4ED0(a1, v4, v5, v6);
}

unint64_t AttributeSemantic.rawValue.getter()
{
  result = 0x74617265706D6574;
  switch(*v0)
  {
    case 1:
      return 0x656E746867697262;
    case 2:
      return 0x6974617275746173;
    case 3:
      return 0x726F6C6F63;
    case 4:
      return 0x7265776F70;
    case 5:
    case 0x16:
    case 0x17:
    case 0x23:
    case 0x2C:
      return 0xD000000000000011;
    case 6:
      v2 = 1769172848;
      return v2 | 0x6E6F697400000000;
    case 7:
    case 0x32:
    case 0x35:
    case 0x40:
      return 0xD000000000000012;
    case 8:
      v2 = 1635020658;
      return v2 | 0x6E6F697400000000;
    case 9:
      return 0x79746964696D7568;
    case 0xA:
      return 0x79726574746162;
    case 0xB:
      return 0x656B6F6D73;
    case 0xC:
      return 0x6D5F6E6F62726163;
    case 0xD:
      return 0x645F6E6F62726163;
    case 0xE:
      return 0x746361746E6F63;
    case 0xF:
      return 0x6E6F69746F6DLL;
    case 0x10:
      return 0x636E61707563636FLL;
    case 0x11:
      return 0x746867696CLL;
    case 0x12:
      return 1801545068;
    case 0x13:
      return 0x656E656373;
    case 0x14:
      return 0x352E326D70;
    case 0x15:
      return 808545648;
    case 0x18:
    case 0x1E:
      return 0xD000000000000014;
    case 0x19:
    case 0x36:
      return 0xD000000000000016;
    case 0x1A:
      return 0x65645F656E6F7A6FLL;
    case 0x1B:
      return 0xD000000000000010;
    case 0x1C:
      return 0x5F727568706C7573;
    case 0x1D:
      return 0x736E65645F636F76;
    case 0x1F:
      return 0x64656C62616E65;
    case 0x20:
      return 0x6573556E69;
    case 0x21:
      return 0x4D6D6172676F7270;
    case 0x22:
      v2 = 1634891108;
      return v2 | 0x6E6F697400000000;
    case 0x24:
      return 6649192;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 1801678700;
    case 0x28:
      return 0x4C6C6F72746E6F63;
    case 0x29:
    case 0x33:
      return 0xD000000000000013;
    case 0x2A:
      return 0x6573696172;
    case 0x2B:
      return 0xD000000000000010;
    case 0x2D:
      return 0x646F4D676E697773;
    case 0x2E:
      v3 = 10;
      goto LABEL_58;
    case 0x2F:
      return 0xD000000000000010;
    case 0x30:
      return 0xD000000000000018;
    case 0x31:
      v3 = 5;
LABEL_58:
      result = v3 | 0xD000000000000010;
      break;
    case 0x34:
      result = 0xD000000000000017;
      break;
    case 0x37:
      result = 0x676E696772616863;
      break;
    case 0x38:
      result = 0x6574746142776F6CLL;
      break;
    case 0x39:
      result = 0x68437265746C6966;
      break;
    case 0x3A:
      result = 0x694C7265746C6966;
      break;
    case 0x3B:
      result = 0x76654C7265746177;
      break;
    case 0x3C:
      result = 0x6146737574617473;
      break;
    case 0x3D:
      result = 1701080941;
      break;
    case 0x3E:
      result = 0x7265746177;
      break;
    case 0x3F:
      result = 0x6E6964726F636572;
      break;
    case 0x41:
      result = 1701670760;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::AttributeSemantic_optional __swiftcall AttributeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 48;
  switch(v3)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v5 = 1;
      goto LABEL_65;
    case 2:
      v5 = 2;
      goto LABEL_65;
    case 3:
      v5 = 3;
      goto LABEL_65;
    case 4:
      v5 = 4;
      goto LABEL_65;
    case 5:
      v5 = 5;
      goto LABEL_65;
    case 6:
      v5 = 6;
      goto LABEL_65;
    case 7:
      v5 = 7;
      goto LABEL_65;
    case 8:
      v5 = 8;
      goto LABEL_65;
    case 9:
      v5 = 9;
      goto LABEL_65;
    case 10:
      v5 = 10;
      goto LABEL_65;
    case 11:
      v5 = 11;
      goto LABEL_65;
    case 12:
      v5 = 12;
      goto LABEL_65;
    case 13:
      v5 = 13;
      goto LABEL_65;
    case 14:
      v5 = 14;
      goto LABEL_65;
    case 15:
      v5 = 15;
      goto LABEL_65;
    case 16:
      v5 = 16;
      goto LABEL_65;
    case 17:
      v5 = 17;
      goto LABEL_65;
    case 18:
      v5 = 18;
      goto LABEL_65;
    case 19:
      v5 = 19;
      goto LABEL_65;
    case 20:
      v5 = 20;
      goto LABEL_65;
    case 21:
      v5 = 21;
      goto LABEL_65;
    case 22:
      v5 = 22;
      goto LABEL_65;
    case 23:
      v5 = 23;
      goto LABEL_65;
    case 24:
      v5 = 24;
      goto LABEL_65;
    case 25:
      v5 = 25;
      goto LABEL_65;
    case 26:
      v5 = 26;
      goto LABEL_65;
    case 27:
      v5 = 27;
      goto LABEL_65;
    case 28:
      v5 = 28;
      goto LABEL_65;
    case 29:
      v5 = 29;
      goto LABEL_65;
    case 30:
      v5 = 30;
      goto LABEL_65;
    case 31:
      v5 = 31;
      goto LABEL_65;
    case 32:
      v5 = 32;
      goto LABEL_65;
    case 33:
      v5 = 33;
      goto LABEL_65;
    case 34:
      v5 = 34;
      goto LABEL_65;
    case 35:
      v5 = 35;
      goto LABEL_65;
    case 36:
      v5 = 36;
      goto LABEL_65;
    case 37:
      v5 = 37;
      goto LABEL_65;
    case 38:
      v5 = 38;
      goto LABEL_65;
    case 39:
      v5 = 39;
      goto LABEL_65;
    case 40:
      v5 = 40;
      goto LABEL_65;
    case 41:
      v5 = 41;
      goto LABEL_65;
    case 42:
      v5 = 42;
      goto LABEL_65;
    case 43:
      v5 = 43;
      goto LABEL_65;
    case 44:
      v5 = 44;
      goto LABEL_65;
    case 45:
      v5 = 45;
      goto LABEL_65;
    case 46:
      v5 = 46;
      goto LABEL_65;
    case 47:
      v5 = 47;
LABEL_65:
      v6 = v5;
      break;
    case 48:
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    default:
      v6 = 66;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static AttributeSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = AttributeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AA6098()
{
  v1 = *v0;
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AA6100()
{
  v2 = *v0;
  AttributeSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252AA6164()
{
  v1 = *v0;
  sub_252E37EC4();
  AttributeSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252AA61D4@<X0>(unint64_t *a1@<X8>)
{
  result = AttributeSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252AA61FC(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = AttributeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AA6298(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = AttributeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252AA6348(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = AttributeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252AA63F8(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = AttributeSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == AttributeSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AA6554(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AttributeSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == AttributeSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252AA65F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AA6920();
  v5 = sub_252AA6974();
  v6 = sub_252AA69C8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252AA6664()
{
  result = qword_27F5429E0;
  if (!qword_27F5429E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5429E0);
  }

  return result;
}

unint64_t sub_252AA66BC()
{
  result = qword_27F5429E8;
  if (!qword_27F5429E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540948, &qword_252E47730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5429E8);
  }

  return result;
}

unint64_t sub_252AA6724()
{
  result = qword_27F5429F0;
  if (!qword_27F5429F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5429F0);
  }

  return result;
}

unint64_t sub_252AA677C()
{
  result = qword_27F5429F8;
  if (!qword_27F5429F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5429F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBF)
  {
    goto LABEL_17;
  }

  if (a2 + 65 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 65) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 65;
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

      return (*a1 | (v4 << 8)) - 65;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 65;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x42;
  v8 = v6 - 66;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 65) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBF)
  {
    v4 = 0;
  }

  if (a2 > 0xBE)
  {
    v5 = ((a2 - 191) >> 8) + 1;
    *result = a2 + 65;
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
    *result = a2 + 65;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252AA6920()
{
  result = qword_27F542A00;
  if (!qword_27F542A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A00);
  }

  return result;
}

unint64_t sub_252AA6974()
{
  result = qword_27F542A08;
  if (!qword_27F542A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A08);
  }

  return result;
}

unint64_t sub_252AA69C8()
{
  result = qword_27F542A10;
  if (!qword_27F542A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A10);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.init(primaryText:secondaryText:confirmationText:confirmLabel:denyLabel:confirmDirectInvocation:denyDirectInvocation:iconConfiguration:isDestructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13)
{
  v18 = type metadata accessor for ConfirmationSnippetModel();
  v19 = v18[11];
  v20 = type metadata accessor for IconConfiguration();
  (*(*(v20 - 8) + 56))(&a7[v19], 1, 1, v20);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v21 = v18[7];
  sub_252E330C4();
  v22 = v18[8];
  sub_252E330C4();
  v23 = v18[9];
  sub_252A75B60();
  v24 = a10;
  sub_252E33054();
  v25 = &a7[v18[10]];
  sub_252E33054();

  a7[v18[12]] = a13;
  result = sub_252A6FB00(a12, &a7[v19]);
  *(a7 + 4) = a5;
  *(a7 + 5) = a6;
  return result;
}

uint64_t type metadata accessor for ConfirmationSnippetModel()
{
  result = qword_27F542A70;
  if (!qword_27F542A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ConfirmationSnippetModel.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-2] - v4;
  v21 = 0xD000000000000019;
  v22 = 0x8000000252E775E0;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v20, "primaryText: ");
  HIWORD(v20[1]) = -4864;
  MEMORY[0x2530AD570](*v1, *(v1 + 8));
  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v20, "confirmLabel: ");
  HIBYTE(v20[1]) = -18;
  v6 = type metadata accessor for ConfirmationSnippetModel();
  v7 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v19, *(&v19 + 1));

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v20[0], v20[1]);

  strcpy(v20, "denyLabel: ");
  HIDWORD(v20[1]) = -352321536;
  v8 = v1 + v6[8];
  sub_252E330E4();
  MEMORY[0x2530AD570](v19, *(&v19 + 1));

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252E379F4();

  v9 = *(v1 + v6[12]);
  v20[0] = 0x7572747365447369;
  v20[1] = 0xEF203A6576697463;
  if (v9)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v10, v11);

  MEMORY[0x2530AD570](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E77600);
  v19 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E37AE4();
  MEMORY[0x2530AD570](v20[0], v20[1]);

  v12 = *(v1 + 24);
  if (v12)
  {
    v13 = *(v1 + 16);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_252E379F4();

    v20[0] = 0xD000000000000011;
    v20[1] = 0x8000000252E77640;
    MEMORY[0x2530AD570](v13, v12);
    MEMORY[0x2530AD570](v20[0], v20[1]);
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252E379F4();

  v20[0] = 0xD000000000000015;
  v20[1] = 0x8000000252E77620;
  sub_252A6FA90(v1 + v6[11], v5);
  v14 = type metadata accessor for IconConfiguration();
  v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
  sub_252AA7488(v5);
  if (v15 == 1)
  {
    v16 = 0x65736C6166;
  }

  else
  {
    v16 = 1702195828;
  }

  if (v15 == 1)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  MEMORY[0x2530AD570](v20[0], v20[1]);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v21;
}

uint64_t ConfirmationSnippetModel.primaryText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSnippetModel.primaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.secondaryText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmationText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSnippetModel.confirmationText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmLabel.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252AA7268@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252AA72D0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for ConfirmationSnippetModel() + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t ConfirmationSnippetModel.confirmLabel.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*ConfirmationSnippetModel.confirmLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ConfirmationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t ConfirmationSnippetModel.denyLabel.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252AA7488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AA74F0@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252AA7558(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for ConfirmationSnippetModel() + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t ConfirmationSnippetModel.denyLabel.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*ConfirmationSnippetModel.denyLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ConfirmationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252AA7700@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252AA7758(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t (*ConfirmationSnippetModel.confirmDirectInvocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ConfirmationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.getter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252AA78F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252AA794C(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.setter()
{
  v0 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t (*ConfirmationSnippetModel.denyDirectInvocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for ConfirmationSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel() + 44);

  return sub_252A6FA90(v3, a1);
}

uint64_t ConfirmationSnippetModel.iconConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel() + 44);

  return sub_252A6FB00(a1, v3);
}

uint64_t ConfirmationSnippetModel.isDestructive.setter(char a1)
{
  result = type metadata accessor for ConfirmationSnippetModel();
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_252AA7C10(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x547972616D697270;
    v6 = 0x4C6D7269666E6F63;
    if (a1 != 2)
    {
      v6 = 0x6562614C796E6564;
    }

    if (a1)
    {
      v5 = 0x7261646E6F636573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7572747365447369;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252AA7D70()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB37C4();
  return sub_252E37F14();
}

uint64_t sub_252AA7DC0()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB37C4();
  return sub_252E37F14();
}

uint64_t sub_252AA7E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252AA95E4();
  *a2 = result;
  return result;
}

unint64_t sub_252AA7E34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252AA7C10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252AA7E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252AA95E4();
  *a1 = result;
  return result;
}

uint64_t sub_252AA7EA4(uint64_t a1)
{
  v2 = sub_252AA87A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AA7EE0(uint64_t a1)
{
  v2 = sub_252AA87A8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall ConfirmationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E77660;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v56 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v71 = *(v74 - 8);
  v6 = *(v71 + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A20, &qword_252E47980);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for ConfirmationSnippetModel();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 44);
  v20 = type metadata accessor for IconConfiguration();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v76 = v19;
  v79 = v18;
  v22(v18 + v19, 1, 1, v20);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AA87A8();
  v25 = v75;
  sub_252E37F74();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252AA7488(v79 + v76);
  }

  else
  {
    v63 = v23;
    v64 = v22;
    v65 = v20;
    v66 = v14;
    v26 = v72;
    v27 = v73;
    v28 = a1;
    v29 = v74;
    LOBYTE(v77) = 0;
    v30 = sub_252E37C04();
    v31 = v79;
    *v79 = v30;
    v31[1] = v32;
    v62 = v32;
    LOBYTE(v77) = 1;
    v75 = v13;
    v31[2] = sub_252E37C04();
    v31[3] = v33;
    v61 = v33;
    LOBYTE(v77) = 8;
    v31[4] = sub_252E37C04();
    v31[5] = v34;
    v60 = v34;
    LOBYTE(v77) = 2;
    v35 = sub_252E37C04();
    v36 = v66;
    v37 = v66[7];
    v77 = v35;
    v78 = v38;
    sub_252E330C4();
    LOBYTE(v77) = 3;
    v59 = 0;
    v39 = sub_252E37C04();
    v40 = v36[8];
    v77 = v39;
    v78 = v41;
    sub_252E330C4();
    LOBYTE(v77) = 4;
    v42 = sub_252AA8EEC(&qword_27F542A30);
    v43 = v74;
    v58 = v42;
    sub_252E37C64();
    v44 = v70;
    v57 = sub_252E33074();
    v45 = *(v71 + 8);
    v70 = (v71 + 8);
    v56 = v45;
    v45(v44, v43);
    v46 = v66[9];
    v57 = sub_252A75B60();
    sub_252E33054();
    LOBYTE(v77) = 5;
    v47 = v69;
    sub_252E37C64();
    sub_252E33074();
    v56(v47, v29);
    v48 = v31 + v66[10];
    sub_252E33054();
    LOBYTE(v77) = 7;
    sub_252AA9210(&qword_27F542A38, type metadata accessor for IconConfiguration);
    v49 = v68;
    v50 = v65;
    sub_252E37C64();
    v51 = v76;
    v64(v49, 0, 1, v50);
    v52 = v79;
    sub_252A6FB00(v49, v79 + v51);
    LOBYTE(v77) = 6;
    v53 = v75;
    LOBYTE(v49) = sub_252E37C14();
    (*(v26 + 8))(v53, v27);
    v54 = v67;
    *(v52 + v66[12]) = v49 & 1;
    sub_252AA87FC(v52, v54);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_252AA8860(v52);
  }
}

unint64_t sub_252AA87A8()
{
  result = qword_27F542A28;
  if (!qword_27F542A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A28);
  }

  return result;
}

uint64_t sub_252AA87FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252AA8860(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A40, &qword_252E47988);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AA87A8();
  sub_252E37F84();
  v18 = *v2;
  v19 = v2[1];
  LOBYTE(v44) = 0;
  v20 = v43;
  sub_252E37CF4();
  if (v20)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v39 = v9;
  v40 = v11;
  v43 = v13;
  v22 = v2[3];
  v44 = v2[2];
  v45 = v22;
  v46 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  sub_252E37D54();
  v23 = v12;

  v24 = v2[5];
  v44 = v2[4];
  v45 = v24;
  v46 = 8;

  sub_252E37D54();

  v25 = type metadata accessor for ConfirmationSnippetModel();
  v26 = *(v25 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v44) = 2;
  sub_252E37CF4();

  v27 = v25;
  v28 = *(v25 + 44);
  LOBYTE(v44) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  sub_252AA8E38();
  sub_252E37D54();
  v29 = v40;
  v30 = v2 + v27[8];
  sub_252E330E4();
  LOBYTE(v44) = 3;
  sub_252E37CF4();

  v31 = v2 + v27[9];
  v32 = v41;
  sub_252E33074();
  v40 = sub_252A75B60();
  sub_252E33054();
  LOBYTE(v44) = 4;
  v38 = sub_252AA8EEC(&qword_27F542A58);
  sub_252E37D54();
  v33 = v42 + 8;
  v34 = *(v42 + 8);
  v34(v29, v32);
  v35 = v27[10];
  v42 = v33;
  sub_252E33074();
  v36 = v39;
  sub_252E33054();
  LOBYTE(v44) = 5;
  sub_252E37D54();
  v34(v36, v32);
  v37 = *(v2 + v27[12]);
  LOBYTE(v44) = 6;
  sub_252E37D04();
  return (*(v43 + 8))(v16, v23);
}

unint64_t sub_252AA8E38()
{
  result = qword_27F542A48;
  if (!qword_27F542A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541B50, &unk_252E47970);
    sub_252AA9210(&qword_27F542A50, type metadata accessor for IconConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A48);
  }

  return result;
}

uint64_t sub_252AA8EEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542A18, &qword_252E5FE30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.stringId.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v15, "#primaryText: ");
  HIBYTE(v15[1]) = -18;
  MEMORY[0x2530AD570](*v0, v0[1]);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_252E379F4();

  v13 = 0xD000000000000010;
  v14 = 0x8000000252E77680;
  if (v0[3])
  {
    v5 = v0[2];
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x2530AD570](v5, v6);

  MEMORY[0x2530AD570](v13, v14);

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_252E379F4();

  v13 = 0xD000000000000017;
  v14 = 0x8000000252E776A0;
  v7 = type metadata accessor for ConfirmationSnippetModel();
  sub_252A6FA90(v0 + *(v7 + 44), v4);
  v8 = type metadata accessor for IconConfiguration();
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_252AA7488(v4);
  if (v9 == 1)
  {
    v10 = 0x65736C6166;
  }

  else
  {
    v10 = 1702195828;
  }

  if (v9 == 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v10, v11);

  MEMORY[0x2530AD570](v13, v14);

  return v15[0];
}

uint64_t sub_252AA9210(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252AA92B0()
{
  sub_252AA9414(319, &qword_27F542A80, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252AA9414(319, &qword_27F540118, MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      sub_252AA9468(319, &qword_27F542A88, sub_252A75B60, MEMORY[0x277D63220]);
      if (v2 <= 0x3F)
      {
        sub_252AA9468(319, &qword_27F542A90, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252AA9414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252AA9468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_252AA94E0()
{
  result = qword_27F542A98;
  if (!qword_27F542A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542A98);
  }

  return result;
}

unint64_t sub_252AA9538()
{
  result = qword_27F542AA0;
  if (!qword_27F542AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AA0);
  }

  return result;
}

unint64_t sub_252AA9590()
{
  result = qword_27F542AA8;
  if (!qword_27F542AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542AA8);
  }

  return result;
}

uint64_t sub_252AA95E4()
{
  v0 = sub_252E37B74();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252AA9634@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v49 = sub_252E36324();
  v44 = *(v49 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v43 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - v13;
  v14 = &off_279711000;
  v15 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeUserTask();
  if (!swift_dynamicCast())
  {
    if (qword_27F53F4D0 == -1)
    {
LABEL_20:
      v29 = sub_252E36AD4();
      __swift_project_value_buffer(v29, qword_27F544D18);
      sub_252CC4050(0xD000000000000021, 0x8000000252E776C0, 0xD000000000000095, 0x8000000252E776F0, 0xD00000000000002FLL, 0x8000000252E77790, 29);
      sub_2529515FC(6, 0, 0xD00000000000001ELL, 0x8000000252E777C0);
      type metadata accessor for HomeAutomationError();
      sub_2529671A8();
      v30 = swift_allocError();
      v31 = [a1 v14[306]];
      sub_252E377F4();
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      *a3 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_24:
    swift_once();
    goto LABEL_20;
  }

  v14 = v50;
  v16 = [a2 filters];
  if (v16)
  {
    a1 = v16;
    v40 = v14;
    v41 = v9;
    type metadata accessor for HomeFilter();
    v17 = sub_252E37264();

    if (v17 >> 62)
    {
      v18 = sub_252E378C4();
      v42 = a3;
      if (v18)
      {
LABEL_5:
        v19 = 0;
        v45 = v17 & 0xFFFFFFFFFFFFFF8;
        v46 = v17 & 0xC000000000000001;
        v47 = (v44 + 32);
        v20 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v46)
          {
            v21 = MEMORY[0x2530ADF00](v19, v17);
          }

          else
          {
            if (v19 >= *(v45 + 16))
            {
              goto LABEL_23;
            }

            v21 = *(v17 + 8 * v19 + 32);
          }

          a1 = v21;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = [v21 homeEntityName];
          if (v23)
          {
            v24 = v23;
            sub_252E36F34();
            v14 = v25;

            a3 = v43;
            sub_252E37024();

            v26 = *v47;
            (*v47)(v48, a3, v49);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_2529F7F74(0, *(v20 + 2) + 1, 1, v20);
            }

            v28 = *(v20 + 2);
            v27 = *(v20 + 3);
            a1 = (v28 + 1);
            if (v28 >= v27 >> 1)
            {
              v20 = sub_2529F7F74(v27 > 1, v28 + 1, 1, v20);
            }

            *(v20 + 2) = a1;
            v26(&v20[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v28], v48, v49);
          }

          else
          {
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = a3;
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v20 = MEMORY[0x277D84F90];
LABEL_27:

    v9 = v41;
    v14 = v40;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v33 = [(SEL *)v14 attribute];
  if (qword_27F53F2A8 != -1)
  {
    v38 = v33;
    swift_once();
    v33 = v38;
  }

  v34 = off_27F541CD8;
  if (*(off_27F541CD8 + 2) && (v35 = sub_252A488EC(v33), (v36 & 1) != 0))
  {
    v51 = *(v34[7] + v35);
    AttributeSemantic.rawValue.getter();
    sub_252E362F4();
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  (*(v44 + 56))(v9, v37, 1, v49);
  if (qword_27F53F318 != -1)
  {
    swift_once();
  }

  sub_252BFDC54(v9, v20);

  return sub_252938BBC(v9);
}

uint64_t sub_252AA9C4C()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v1 = *(v0 + 22);

  qword_27F5757D0 = v1;
  return result;
}

uint64_t sub_252AA9CA8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v169 = a3;
  v182 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v173 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v171 = &v168 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v168 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v177 = &v168 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v172 = &v168 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v170 = &v168 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v176 = &v168 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v183 = &v168 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v186 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v174 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v181 = &v168 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v187 = &v168 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v168 - v32;
  v34 = sub_252E36324();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v175 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v179 = &v168 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v188 = &v168 - v42;
  MEMORY[0x28223BE20](v41);
  v193 = &v168 - v43;
  v180 = a1;
  v44 = [a1 filters];
  v192 = v34;
  v189 = v35;
  v178 = a4;
  v185 = v33;
  if (v44)
  {
    v45 = v44;
    type metadata accessor for HomeFilter();
    v46 = sub_252E37264();

    if (v46 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v48 = 0;
      v190 = v46 & 0xFFFFFFFFFFFFFF8;
      v191 = v46 & 0xC000000000000001;
      v35 += 32;
      v194 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v191)
        {
          v49 = MEMORY[0x2530ADF00](v48, v46);
        }

        else
        {
          if (v48 >= *(v190 + 16))
          {
            goto LABEL_20;
          }

          v49 = *(v46 + 8 * v48 + 32);
        }

        v50 = v49;
        v51 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v52 = [v49 homeEntityName];
        if (v52)
        {
          v53 = v52;
          v54 = i;
          sub_252E36F34();

          v55 = v188;
          sub_252E37024();

          v56 = *v35;
          v57 = v55;
          v34 = v192;
          (*v35)(v193, v57, v192);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v194 = sub_2529F7F74(0, *(v194 + 2) + 1, 1, v194);
          }

          v59 = *(v194 + 2);
          v58 = *(v194 + 3);
          if (v59 >= v58 >> 1)
          {
            v194 = sub_2529F7F74(v58 > 1, v59 + 1, 1, v194);
          }

          v60 = v193;
          v61 = v194;
          *(v194 + 2) = v59 + 1;
          v56(&v61[((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v59], v60, v34);
          i = v54;
        }

        else
        {

          v34 = v192;
        }

        ++v48;
        if (v51 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v194 = MEMORY[0x277D84F90];
LABEL_23:

    v33 = v185;
    v35 = v189;
  }

  else
  {
    v194 = MEMORY[0x277D84F90];
  }

  v62 = v180;
  v63 = [v180 filters];
  v64 = v182;
  if (!v63)
  {
    goto LABEL_33;
  }

  v65 = v63;
  type metadata accessor for HomeFilter();
  v66 = sub_252E37264();

  if (v66 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  result = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_32:

    v63 = 0;
LABEL_33:
    v71 = 1;
    goto LABEL_34;
  }

LABEL_27:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x2530ADF00](0, v66);
  }

  else
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v68 = *(v66 + 32);
  }

  v69 = v68;

  v70 = [v69 deviceType];

  v63 = v70;
  v71 = 0;
LABEL_34:
  static SemanticMapper.getSemanticKey(for:)(v63, v71, v33);
  v72 = sub_252B680FC();
  swift_beginAccess();
  v73 = *(v72 + 16);
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = (v73 + 504 * v74 - 472);
    memcpy(v195, v75, sizeof(v195));
    memmove(v196, v75, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v196);
    sub_2529353AC(v195, v197);

    memcpy(v197, v196, 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v197);
  }

  memcpy(v196, v197, 0x1F8uLL);
  v76 = v62;
  v193 = sub_252953488(v62, v196, 0);

  if (v64)
  {
    v77 = *(v35 + 56);
    v77(v181, 1, 1, v34);
    v78 = v64;
    v79 = [v78 homeName];
    if (v79)
    {
      v80 = v79;
      sub_252E36F34();

      v81 = v174;
      sub_252E37024();

      v64 = v182;

      v82 = 0;
    }

    else
    {

      v82 = 1;
      v81 = v174;
    }

    v83 = v181;
    sub_252938BBC(v181);
    v77(v81, v82, 1, v34);
    sub_2529439A0(v81, v83);
    sub_2529439A0(v83, v187);
  }

  else
  {
    v77 = *(v35 + 56);
    v77(v187, 1, 1, v34);
  }

  sub_252B680FC();
  v84 = sub_252B63638();

  if (v84)
  {
    if (v64)
    {
      v85 = [v64 deviceType];
      static SemanticMapper.getSemanticKey(for:)(v85, 0, v186);
      v86 = [v64 entityType];
    }

    else
    {
      static SemanticMapper.getSemanticKey(for:)(0, 1, v186);
      v86 = 0;
    }

    v131 = v179;
    sub_252A48498(v86, v64 == 0);
    sub_252E37024();

    if (qword_27F53F318 != -1)
    {
      swift_once();
    }

    v132 = qword_27F5757D0;
    v133 = v183;
    (*(v35 + 16))(v183, v131, v34);
    v77(v133, 0, 1, v34);
    v134 = v176;
    sub_252956C1C(v186, v176);
    v135 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v136 = *(v135 + 48);
    v137 = *(v135 + 52);
    v138 = swift_allocObject();
    v139 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v77(v138 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v34);
    swift_beginAccess();
    v190 = v132;

    sub_252956BAC(v134, v138 + v139);
    swift_endAccess();
    sub_252938BBC(v134);
    v140 = v35;
    v141 = type metadata accessor for HomeAutomationHomeLocation(0);
    v142 = *(v141 + 48);
    v143 = *(v141 + 52);
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v191 = v144;
    sub_252956C1C(v138 + v139, v144 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v138 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    v145 = *(*v138 + 48);
    v146 = *(*v138 + 52);
    swift_deallocClassInstance();
    sub_252956C1C(v187, v134);
    v147 = *(v135 + 48);
    v148 = *(v135 + 52);
    v149 = swift_allocObject();
    v150 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v77(v149 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v192);
    v151 = v140;
    swift_beginAccess();
    sub_252956BAC(v134, v149 + v150);
    swift_endAccess();
    sub_252938BBC(v134);
    v152 = *(v141 + 48);
    v153 = *(v141 + 52);
    v154 = swift_allocObject();
    *(v154 + 16) = 0;
    v155 = v192;
    v156 = v154;
    sub_252956C1C(v149 + v150, v154 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v149 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    v157 = *(*v149 + 48);
    v158 = *(*v149 + 52);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_252E3F1F0;
    *(v159 + 32) = 0xD000000000000013;
    *(v159 + 40) = 0x8000000252E76480;
    v160 = v170;
    sub_252956C1C(v183, v170);
    v161 = *(v151 + 48);
    if (v161(v160, 1, v155) == 1)
    {
      v162 = v193;

      sub_252938BBC(v160);
      *(v159 + 48) = 0u;
      *(v159 + 64) = 0u;
    }

    else
    {
      *(v159 + 72) = v155;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v159 + 48));
      (*(v151 + 32))(boxed_opaque_existential_0, v160, v155);
      v162 = v193;
    }

    v164 = v172;
    strcpy((v159 + 80), "candidateName");
    *(v159 + 94) = -4864;
    *(v159 + 96) = v191;
    *(v159 + 120) = v141;
    *(v159 + 128) = 0x656D614E656D6F68;
    *(v159 + 136) = 0xE800000000000000;
    *(v159 + 144) = v156;
    *(v159 + 168) = v141;
    *(v159 + 176) = 0xD000000000000011;
    *(v159 + 184) = 0x8000000252E764A0;
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v159 + 192) = v194;
    *(v159 + 216) = v165;
    *(v159 + 224) = 0xD000000000000010;
    *(v159 + 232) = 0x8000000252E764C0;
    sub_252956C1C(v186, v164);
    if (v161(v164, 1, v155) == 1)
    {

      sub_252938BBC(v164);
      *(v159 + 240) = 0u;
      *(v159 + 256) = 0u;
      v127 = v185;
      v166 = v189;
    }

    else
    {
      *(v159 + 264) = v155;
      v167 = __swift_allocate_boxed_opaque_existential_0((v159 + 240));
      v166 = v189;
      (*(v189 + 32))(v167, v164, v155);

      v127 = v185;
    }

    strcpy((v159 + 272), "intentContext");
    *(v159 + 286) = -4864;
    *(v159 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
    *(v159 + 288) = v162;

    sub_252E362B4();

    sub_252938BBC(v183);
    (*(v166 + 8))(v179, v155);
    sub_252938BBC(v186);
  }

  else
  {
    v87 = v169;
    v88 = v169 == 1;
    if (v169 == 1)
    {
      v89 = 0;
    }

    else
    {
      v89 = v169;
    }

    v90 = v77;
    if (v64 && v169 == 1)
    {
      v89 = [v64 entityType];
      v88 = 0;
    }

    v91 = v35;
    if (!v88)
    {
      v87 = v89;
    }

    sub_252A48498(v89, v88);
    v92 = v175;
    sub_252E37024();

    v93 = v177;
    sub_252AAB0A8(v64, v87, v177);
    if (qword_27F53F318 != -1)
    {
      swift_once();
    }

    v94 = qword_27F5757D0;
    v95 = v184;
    (*(v91 + 16))(v184, v92, v34);
    v90(v95, 0, 1, v34);
    v96 = v176;
    sub_252956C1C(v93, v176);
    v97 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v100 = swift_allocObject();
    v101 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v90(v100 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v34);
    swift_beginAccess();
    v191 = v94;

    sub_252956BAC(v96, v100 + v101);
    swift_endAccess();
    sub_252938BBC(v96);
    v102 = type metadata accessor for HomeAutomationHomeLocation(0);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    v105 = swift_allocObject();
    *(v105 + 16) = 0;
    v190 = v105;
    sub_252956C1C(v100 + v101, v105 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v100 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    v106 = *(*v100 + 48);
    v107 = *(*v100 + 52);
    swift_deallocClassInstance();
    sub_252956C1C(v187, v96);
    v108 = *(v97 + 48);
    v109 = *(v97 + 52);
    v110 = swift_allocObject();
    v111 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v90(v110 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v192);
    swift_beginAccess();
    sub_252956BAC(v96, v110 + v111);
    swift_endAccess();
    sub_252938BBC(v96);
    v112 = *(v102 + 48);
    v113 = *(v102 + 52);
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    v115 = v192;
    v116 = v114;
    sub_252956C1C(v110 + v111, v114 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_252938BBC(v110 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
    v117 = *(*v110 + 48);
    v118 = *(*v110 + 52);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_252E3F1F0;
    *(v119 + 32) = 0xD000000000000013;
    *(v119 + 40) = 0x8000000252E76480;
    v120 = v171;
    sub_252956C1C(v184, v171);
    v121 = *(v91 + 48);
    v122 = v121(v120, 1, v115);
    v188 = v121;
    if (v122 == 1)
    {
      v123 = v193;

      sub_252938BBC(v120);
      *(v119 + 48) = 0u;
      *(v119 + 64) = 0u;
    }

    else
    {
      *(v119 + 72) = v115;
      v124 = __swift_allocate_boxed_opaque_existential_0((v119 + 48));
      (*(v91 + 32))(v124, v120, v115);
      v123 = v193;
    }

    v125 = v173;
    strcpy((v119 + 80), "candidateName");
    *(v119 + 94) = -4864;
    *(v119 + 96) = v190;
    *(v119 + 120) = v102;
    *(v119 + 128) = 0x656D614E656D6F68;
    *(v119 + 136) = 0xE800000000000000;
    *(v119 + 144) = v116;
    *(v119 + 168) = v102;
    *(v119 + 176) = 0xD000000000000011;
    *(v119 + 184) = 0x8000000252E764A0;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v119 + 192) = v194;
    *(v119 + 216) = v126;
    *(v119 + 224) = 0xD000000000000010;
    *(v119 + 232) = 0x8000000252E764C0;
    v127 = v185;
    sub_252956C1C(v185, v125);
    if ((v188)(v125, 1, v115) == 1)
    {

      sub_252938BBC(v125);
      *(v119 + 240) = 0u;
      *(v119 + 256) = 0u;
      v128 = v189;
    }

    else
    {
      *(v119 + 264) = v115;
      v129 = __swift_allocate_boxed_opaque_existential_0((v119 + 240));
      v128 = v189;
      (*(v189 + 32))(v129, v125, v115);
    }

    v130 = v175;
    strcpy((v119 + 272), "intentContext");
    *(v119 + 286) = -4864;
    *(v119 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
    *(v119 + 288) = v123;

    sub_252E362B4();

    sub_252938BBC(v184);
    sub_252938BBC(v177);
    (*(v128 + 8))(v130, v115);
  }

  sub_252938BBC(v187);
  return sub_252938BBC(v127);
}

uint64_t sub_252AAB0A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v75 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v75 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v75 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  if (a1)
  {
    v77 = v27;
    v80 = a3;
    v30 = sub_252E36324();
    v76 = *(v30 - 8);
    v31 = *(v76 + 56);
    v32 = v29;
    v33 = v29;
    v34 = v30;
    v78 = v76 + 56;
    v79 = v31;
    v31(v33, 1, 1, v30);
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        v48 = a1;
        v49 = [v48 homeName];
        v35 = v32;
        if (v49)
        {
          v50 = v34;
          v51 = v49;
          sub_252E36F34();

          v34 = v50;
          sub_252E37024();

          v52 = 0;
        }

        else
        {

          v52 = 1;
        }

        v66 = v79;
        v47 = v80;
        sub_252938BBC(v35);
        v66(v26, v52, 1, v34);
        v67 = v26;
        goto LABEL_38;
      }

      if (a2 == 2)
      {
        v58 = a1;
        v59 = [v58 zoneName];
        if (v59)
        {
          v60 = v59;
          sub_252E36F34();

          sub_252E37024();

          v61 = 0;
        }

        else
        {
          v61 = 1;
        }

        v72 = v79;
        v47 = v80;

        sub_252938BBC(v32);
        v72(v17, v61, 1, v34);
        v67 = v17;
        v35 = v32;
        v73 = v32;
        goto LABEL_39;
      }

      v35 = v32;
      if (a2 == 3)
      {
        v36 = a1;
        v37 = [v36 roomName];
        if (v37)
        {
          v38 = v37;
          sub_252E36F34();

          sub_252E37024();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v47 = v80;

        sub_252938BBC(v32);
        v79(v23, v39, 1, v34);
        v67 = v23;
        goto LABEL_38;
      }

LABEL_20:
      sub_252938BBC(v35);
      v79(v35, 1, 1, v34);
      v47 = v80;
      return sub_2529439A0(v35, v47);
    }

    if (a2 == 4)
    {
      v53 = a1;
      v54 = [v53 groupName];
      v35 = v32;
      v55 = v79;
      if (v54)
      {
        v56 = v54;
        sub_252E36F34();

        sub_252E37024();

        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v47 = v80;

      sub_252938BBC(v32);
      v55(v20, v57, 1, v34);
    }

    else
    {
      v35 = v32;
      if (a2 == 5)
      {
        v62 = a1;
        v63 = [v62 homeName];
        if (v63)
        {
          v64 = v63;
          sub_252E36F34();

          sub_252E37024();

          v65 = 0;
        }

        else
        {
          v65 = 1;
        }

        v74 = v79;
        v47 = v80;

        sub_252938BBC(v35);
        v74(v10, v65, 1, v34);
        v67 = v10;
        goto LABEL_38;
      }

      if (a2 != 7)
      {
        goto LABEL_20;
      }

      v43 = a1;
      v44 = [v43 homeEntityName];
      if (v44)
      {
        v45 = v44;
        sub_252E36F34();

        sub_252E37024();

        v46 = v79;
        v79(v13, 0, 1, v34);
        sub_252938BBC(v32);
        v20 = v77;
        (*(v76 + 32))(v77, v13, v34);
        v46(v20, 0, 1, v34);
        v47 = v80;
      }

      else
      {
        v68 = 1;
        v69 = v79;
        v79(v13, 1, 1, v34);
        v70 = [v43 outerDeviceName];
        if (v70)
        {
          v71 = v70;
          sub_252E36F34();

          v20 = v77;
          sub_252E37024();

          v68 = 0;
          v47 = v80;
        }

        else
        {
          v47 = v80;
          v20 = v77;
        }

        sub_252938BBC(v35);
        v69(v20, v68, 1, v34);
        if ((*(v76 + 48))(v13, 1, v34) != 1)
        {
          sub_252938BBC(v13);
        }
      }
    }

    v67 = v20;
LABEL_38:
    v73 = v35;
LABEL_39:
    sub_2529439A0(v67, v73);
    return sub_2529439A0(v35, v47);
  }

  v40 = sub_252E36324();
  v41 = *(*(v40 - 8) + 56);

  return v41(a3, 1, 1, v40);
}

uint64_t sub_252AAB844()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 limitValue];

      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  result = [v0 userTask];
  if (result)
  {
    v6 = result;
    v7 = [result value];

    if (v7)
    {
      v8 = [v7 limitValue];

      return v8 == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AAB938()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        v6 = [v5 limitValue];

        if (v6 == 2)
        {
          return 1;
        }
      }
    }

    else
    {
    }
  }

  result = [v0 automatableTask];
  if (result)
  {
    v8 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v11 = [v10 value];
      if (v11)
      {
        v12 = [v11 limitValue];

        return v12 == 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_252AABAA0()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      if ([v3 type] == 2 || objc_msgSend(v3, sel_type) == 4)
      {

        return 1;
      }

      else
      {
        v4 = [v3 type];

        return v4 == 6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AABB9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetMaxMinForPositionRequestsHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252AABBD0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 9)
    {
      v5 = [a1 userTask];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 taskType];

        if (v7 == 1 || (sub_252AAB844() & 1) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_252C515AC();
        if (sub_252AAB844())
        {
LABEL_10:
          v8 = sub_252AABAA0() ^ 1;
          return v8 & 1;
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  v8 = 0;
  return v8 & 1;
}

id sub_252AABC98(void *a1, uint64_t a2)
{
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v155 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = *a2;
  v143 = *(a2 + 8);
  v142 = *(a2 + 9);
  v154 = *(a2 + 10);
  v173 = *(a2 + 11);
  v174 = *(a2 + 15);
  v127 = *(a2 + 16);
  v126 = *(a2 + 24);
  v125 = *(a2 + 25);
  v124 = *(a2 + 26);
  v171 = *(a2 + 27);
  v172 = *(a2 + 31);
  v123 = *(a2 + 32);
  v122 = *(a2 + 40);
  *(v170 + 3) = *(a2 + 44);
  v170[0] = *(a2 + 41);
  v8 = *(a2 + 48);
  v120 = *(a2 + 56);
  v121 = v8;
  v119 = *(a2 + 64);
  *(v169 + 3) = *(a2 + 68);
  v169[0] = *(a2 + 65);
  v9 = *(a2 + 72);
  v117 = *(a2 + 80);
  v118 = v9;
  v10 = *(a2 + 88);
  v115 = *(a2 + 96);
  v116 = v10;
  v11 = *(a2 + 104);
  v113 = *(a2 + 112);
  v114 = v11;
  v12 = *(a2 + 120);
  v111 = *(a2 + 128);
  v112 = v12;
  v13 = *(a2 + 136);
  v109 = *(a2 + 144);
  v110 = v13;
  v14 = *(a2 + 152);
  v107 = *(a2 + 160);
  v108 = v14;
  v15 = *(a2 + 168);
  v105 = *(a2 + 176);
  v106 = v15;
  v16 = *(a2 + 184);
  v103 = *(a2 + 192);
  v104 = v16;
  v167 = *(a2 + 210);
  v168 = *(a2 + 214);
  v166[0] = *(a2 + 233);
  *(v166 + 3) = *(a2 + 236);
  v165 = *(a2 + 294);
  v164 = *(a2 + 290);
  *(v163 + 3) = *(a2 + 316);
  v163[0] = *(a2 + 313);
  v100 = *(a2 + 200);
  LODWORD(v16) = *(a2 + 208);
  v98 = *(a2 + 209);
  v99 = v16;
  v17 = *(a2 + 216);
  v96 = *(a2 + 224);
  v97 = v17;
  LODWORD(v17) = *(a2 + 232);
  v18 = *(a2 + 240);
  v94 = *(a2 + 248);
  v95 = v18;
  v19 = *(a2 + 256);
  v92 = *(a2 + 264);
  v93 = v19;
  v20 = *(a2 + 272);
  v90 = *(a2 + 280);
  v91 = v20;
  v89 = *(a2 + 288);
  v101 = *(a2 + 289);
  v102 = v17;
  v21 = *(a2 + 296);
  v87 = *(a2 + 304);
  v88 = v21;
  LODWORD(v21) = *(a2 + 312);
  v22 = *(a2 + 328);
  v153 = *(a2 + 320);
  v152 = v22;
  v23 = *(a2 + 344);
  v151 = *(a2 + 336);
  v24 = *(a2 + 360);
  v149 = *(a2 + 352);
  v150 = v23;
  v148 = v24;
  v25 = *(a2 + 368);
  v146 = *(a2 + 376);
  v147 = v25;
  v145 = *(a2 + 384);
  v85 = *(a2 + 385);
  v86 = v21;
  LODWORD(v21) = *(a2 + 386);
  v83 = *(a2 + 387);
  v84 = v21;
  v26 = *(a2 + 388);
  v27 = *(a2 + 389);
  v28 = *(a2 + 390);
  v29 = *(a2 + 392);
  v140 = *(a2 + 400);
  v141 = v29;
  v30 = *(a2 + 408);
  v138 = *(a2 + 416);
  v139 = v30;
  v31 = *(a2 + 424);
  v136 = *(a2 + 432);
  v137 = v31;
  v32 = *(a2 + 440);
  v134 = *(a2 + 448);
  v135 = v32;
  v33 = *(a2 + 456);
  v132 = *(a2 + 464);
  v133 = v33;
  v34 = *(a2 + 472);
  v130 = *(a2 + 480);
  v131 = v34;
  v35 = *(a2 + 488);
  v128 = *(a2 + 496);
  v129 = v35;
  v36 = a1;
  v37 = [a1 userTask];
  if (v37)
  {
    v38 = v37;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v39 = sub_252D6CA80(v38);
  }

  else
  {
    v39 = 0;
  }

  *(&v162[36] + 2) = v164;
  *(&v162[39] + 1) = v163[0];
  *(&v162[1] + 3) = v173;
  HIBYTE(v162[1]) = v174;
  *(&v162[3] + 3) = v171;
  HIBYTE(v162[3]) = v172;
  HIDWORD(v162[5]) = *(v170 + 3);
  *(&v162[5] + 1) = v170[0];
  HIDWORD(v162[8]) = *(v169 + 3);
  *(&v162[8] + 1) = v169[0];
  HIWORD(v162[26]) = v168;
  *(&v162[26] + 2) = v167;
  HIDWORD(v162[29]) = *(v166 + 3);
  *(&v162[29] + 1) = v166[0];
  HIWORD(v162[36]) = v165;
  HIDWORD(v162[39]) = *(v163 + 3);
  HIWORD(v162[48]) = v28;
  v162[2] = v127;
  v162[4] = v123;
  v162[6] = v121;
  v162[7] = v120;
  v162[9] = v118;
  v162[10] = v117;
  v162[11] = v116;
  v162[12] = v115;
  v162[13] = v114;
  v162[14] = v113;
  v162[15] = v112;
  v162[16] = v111;
  v162[17] = v110;
  v162[18] = v109;
  v162[19] = v108;
  v162[20] = v107;
  v162[21] = v106;
  v162[22] = v105;
  v162[23] = v104;
  v162[24] = v103;
  v162[25] = v100;
  v162[27] = v97;
  v162[28] = v96;
  v162[30] = v95;
  v162[31] = v94;
  v162[32] = v93;
  v162[33] = v92;
  v162[34] = v91;
  v162[35] = v90;
  v162[37] = v88;
  v162[38] = v87;
  v162[40] = v153;
  v162[41] = v152;
  v162[42] = v151;
  v162[43] = v150;
  v162[44] = v149;
  v162[45] = v148;
  v162[46] = v147;
  v162[47] = v146;
  v162[49] = v141;
  v162[50] = v140;
  v162[51] = v139;
  v162[52] = v138;
  v162[53] = v137;
  v162[54] = v136;
  v162[55] = v135;
  v162[56] = v134;
  v162[57] = v133;
  v162[58] = v132;
  v162[59] = v131;
  v162[60] = v130;
  v162[61] = v129;
  v162[62] = v128;
  v162[0] = v144;
  LOBYTE(v162[1]) = v143;
  BYTE1(v162[1]) = v142;
  BYTE2(v162[1]) = v154;
  LOBYTE(v162[3]) = v126;
  BYTE1(v162[3]) = v125;
  BYTE2(v162[3]) = v124;
  LOBYTE(v162[5]) = v122;
  LOBYTE(v162[8]) = v119;
  LOBYTE(v162[26]) = v99;
  BYTE1(v162[26]) = v98;
  LOBYTE(v162[29]) = v102;
  LOBYTE(v162[36]) = v89;
  BYTE1(v162[36]) = v101;
  LOBYTE(v162[39]) = v86;
  LOBYTE(v162[48]) = v145;
  BYTE1(v162[48]) = v85;
  BYTE2(v162[48]) = v84;
  BYTE3(v162[48]) = v83;
  BYTE4(v162[48]) = v26;
  BYTE5(v162[48]) = v27;
  if (sub_252956B94(v162) != 1)
  {
    memcpy(v157, v162, sizeof(v157));
    sub_252A10E18(&v160);
    v41 = v36;
    v43 = v82;
    v44 = &off_279711000;
    HIDWORD(v80) = v160 != 77 && sub_2529A78B0(v160, &unk_2864A43B0);
    v42 = v81;
    v157[0] = v144;
    LOBYTE(v157[1]) = v143;
    BYTE1(v157[1]) = v142;
    v157[2] = v127;
    LOBYTE(v157[3]) = v126;
    BYTE1(v157[3]) = v125;
    BYTE2(v157[3]) = v124;
    v157[4] = v123;
    LOBYTE(v157[5]) = v122;
    v157[6] = v121;
    v157[7] = v120;
    LOBYTE(v157[8]) = v119;
    v157[9] = v118;
    v157[10] = v117;
    v157[11] = v116;
    v157[12] = v115;
    v157[13] = v114;
    v157[14] = v113;
    v157[15] = v112;
    v157[16] = v111;
    v157[17] = v110;
    v157[18] = v109;
    v157[19] = v108;
    v157[20] = v107;
    v157[21] = v106;
    v157[22] = v105;
    v157[23] = v104;
    v157[24] = v103;
    v157[25] = v100;
    LOBYTE(v157[26]) = v99;
    BYTE1(v157[26]) = v98;
    v157[27] = v97;
    v157[28] = v96;
    v157[30] = v95;
    v157[31] = v94;
    v157[32] = v93;
    v157[33] = v92;
    v157[34] = v91;
    v157[35] = v90;
    LOBYTE(v157[36]) = v89;
    v157[37] = v88;
    v157[38] = v87;
    LOBYTE(v157[39]) = v86;
    LOBYTE(v160) = v154 & 1;
    LOBYTE(v158) = v102 & 1;
    v156[1] = v101 & 1;
    BYTE2(v157[1]) = v154 & 1;
    LOBYTE(v157[29]) = v102 & 1;
    BYTE1(v157[36]) = v101 & 1;
    v157[40] = v153;
    v157[41] = v152;
    v157[42] = v151;
    v157[43] = v150;
    v157[44] = v149;
    v157[45] = v148;
    v157[46] = v147;
    v157[47] = v146;
    LOBYTE(v157[48]) = v145;
    BYTE1(v157[48]) = v85 & 1;
    BYTE2(v157[48]) = v84 & 1;
    BYTE3(v157[48]) = v83 & 1;
    BYTE4(v157[48]) = v26 & 1;
    BYTE5(v157[48]) = v27 & 1;
    v157[49] = v141;
    v157[50] = v140;
    v157[51] = v139;
    v157[52] = v138;
    v157[53] = v137;
    v157[54] = v136;
    v157[55] = v135;
    v157[56] = v134;
    v157[57] = v133;
    v157[58] = v132;
    v157[59] = v131;
    v157[60] = v130;
    v157[61] = v129;
    v157[62] = v128;
    sub_252A10E18(v156);
    if (v156[0] == 77)
    {
      if ((v80 & 0x100000000) == 0)
      {
        v40 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      v60 = sub_2529A78B0(v156[0], &unk_2864A4440);
      if ((v80 & 0x100000000) == 0)
      {
        v40 = v60;
        goto LABEL_6;
      }
    }

LABEL_23:
    if (!v39)
    {
      goto LABEL_28;
    }

    v54 = sub_252D6CA30();
    if (!*v61)
    {
      goto LABEL_27;
    }

    v55 = v61;
    v62 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v63 = sub_252E36F04();
    v64 = [v62 initWithIdentifier:0 displayString:v63];

    v43 = v82;
    v59 = v64;
    [v59 setIntegerValue_];
    goto LABEL_26;
  }

  v40 = 0;
  v41 = v36;
  v42 = v81;
  v43 = v82;
  v44 = &off_279711000;
LABEL_6:
  v45 = [v41 v44[214]];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 value];

    if (v47)
    {
      v48 = [v47 limitValue];

      if (v48 == 2)
      {
        goto LABEL_23;
      }
    }
  }

  if (v40 || (v49 = [v41 v44[214]]) != 0 && (v50 = v49, v51 = objc_msgSend(v49, sel_value), v50, v51) && (v52 = objc_msgSend(v51, sel_limitValue), v51, v52 == 1))
  {
    if (v39)
    {

      v54 = sub_252D6CA30();
      if (!*v53)
      {
LABEL_27:
        (v54)(v157, 0);

        goto LABEL_28;
      }

      v55 = v53;
      v56 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v57 = sub_252E36F04();
      v58 = [v56 initWithIdentifier:0 displayString:v57];

      v43 = v82;
      v59 = v58;
      [v59 setIntegerValue_];
LABEL_26:
      [v59 setUnit_];
      [v59 setType_];

      type metadata accessor for MutableAttributeValue();
      swift_allocObject();
      v65 = sub_252D6CC80(v59);
      v66 = *v55;
      *v55 = v65;

      goto LABEL_27;
    }
  }

LABEL_28:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v42, qword_27F544DA8);
  (*(v43 + 16))(v155, v67, v42);
  v157[0] = 0;
  v157[1] = 0xE000000000000000;
  sub_252E379F4();
  v160 = v157[0];
  v161 = v157[1];
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E77830);
  if (v39)
  {
    swift_beginAccess();
    v68 = v39[4];
    if (v68)
    {
      v69 = 0;
      v68 = *(v68 + 40);
      goto LABEL_35;
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = 1;
LABEL_35:
  v158 = v68;
  v159 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v70 = sub_252E36F94();
  MEMORY[0x2530AD570](v70);

  v71 = v155;
  sub_252CC3D90(v160, v161, 0xD00000000000009CLL, 0x8000000252E77870);

  (*(v43 + 8))(v71, v42);
  if (v39)
  {

    v72 = sub_252D6CB58();
  }

  else
  {
    v72 = 0;
  }

  v73 = [v41 filters];
  if (v73)
  {
    v74 = v73;
    type metadata accessor for HomeFilter();
    v75 = sub_252E37264();
  }

  else
  {
    v75 = 0;
  }

  v76 = [v41 time];
  v77 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v77 setUserTask_];
  if (v75)
  {
    type metadata accessor for HomeFilter();
    v78 = sub_252E37254();
  }

  else
  {
    v78 = 0;
  }

  [v77 setFilters_];

  [v77 setTime_];

  return v77;
}