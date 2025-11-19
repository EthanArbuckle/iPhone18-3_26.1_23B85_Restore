unint64_t sub_29EBA50F8()
{
  result = qword_2A18855B0;
  if (!qword_2A18855B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855B0);
  }

  return result;
}

unint64_t sub_29EBA5150()
{
  result = qword_2A18855B8;
  if (!qword_2A18855B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18855B8);
  }

  return result;
}

uint64_t sub_29EBA5208()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855C0, &qword_29EBB1CA0);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EBA5258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_29EBA52A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for XPCActorSystem.Actors(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

uint64_t *assignWithTake for XPCActorSystem.Actors(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

unint64_t sub_29EBA546C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885600, &qword_29EBB1E38);
    v3 = sub_29EBAFBA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29EBA22E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EBA5570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855E8, &qword_29EBB1E18);
    v3 = sub_29EBAFBA0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = sub_29EBA2260(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EBA568C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850B8 != -1)
  {
    swift_once();
  }

  v8 = sub_29EBAF780();
  __swift_project_value_buffer(v8, qword_2A1885550);
  v9 = sub_29EBAFA40();
  sub_29EB9707C(a1, v7);
  v10 = sub_29EBAF760();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    v13 = XPCActorID.description.getter();
    v15 = v14;
    sub_29EBA4E98(v7, type metadata accessor for XPCActorID);
    v16 = sub_29EBA1458(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_29EB8F000, v10, v9, "Getting the distributed actor for the key “%{public}s”…", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x29EDAAF90](v12, -1, -1);
    MEMORY[0x29EDAAF90](v11, -1, -1);

    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {

    sub_29EBA4E98(v7, type metadata accessor for XPCActorID);
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  v17 = sub_29EBA21F4(a1);
  if (v18)
  {
    v19 = *(*(a2 + 56) + 8 * v17);
    result = swift_unknownObjectWeakLoadStrong();
    v21 = *(v19 + 24);
    return result;
  }

  return 0;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_29EBA5920(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EBA597C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18855F0, &qword_29EBB1E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBA59E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x29EDAAF90);
  }

  return result;
}

uint64_t sub_29EBA5AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EBA5B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBA5BC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_29EBA5D08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for XPCActorSystemError()
{
  result = qword_2A1885718;
  if (!qword_2A1885718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29EBA6038()
{
  sub_29EBA60F0();
  if (v0 <= 0x3F)
  {
    sub_29EBA6138();
    if (v1 <= 0x3F)
    {
      sub_29EBA6198();
      if (v2 <= 0x3F)
      {
        sub_29EBA61E4();
        if (v3 <= 0x3F)
        {
          sub_29EBA6214();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29EBA60F0()
{
  if (!qword_2A1885728)
  {
    v0 = type metadata accessor for XPCActorID();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1885728);
    }
  }
}

unint64_t sub_29EBA6138()
{
  result = qword_2A1885730;
  if (!qword_2A1885730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1885730);
  }

  return result;
}

unint64_t sub_29EBA6198()
{
  result = qword_2A1885738;
  if (!qword_2A1885738)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1885738);
  }

  return result;
}

ValueMetadata *sub_29EBA61E4()
{
  result = qword_2A1885740;
  if (!qword_2A1885740)
  {
    result = &type metadata for XPCActorSystem.Role;
    atomic_store(&type metadata for XPCActorSystem.Role, &qword_2A1885740);
  }

  return result;
}

uint64_t sub_29EBA6214()
{
  result = qword_2A1885748;
  if (!qword_2A1885748)
  {
    result = MEMORY[0x29EDC99B0];
    atomic_store(MEMORY[0x29EDC99B0], &qword_2A1885748);
  }

  return result;
}

unint64_t sub_29EBA6248()
{
  v1 = v0;
  v2 = type metadata accessor for XPCActorID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for XPCActorSystemError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29EBA6850(v1, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *v9;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();
      MEMORY[0x29EDAA640](0x6F74636120656854, 0xAD00009C80E22072);
      swift_getObjectType();
      v37 = v26;
      sub_29EBAFCC0();
      MEMORY[0x29EDAA640](0x100000000000002ALL, 0x800000029EBB50E0);
      swift_unknownObjectRelease();
      return v32;
    case 2u:
      v17 = *v9;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();

      v32 = 0x1000000000000021;
      v33 = 0x800000029EBB4FA0;
      v18 = sub_29EBAFE20();
      MEMORY[0x29EDAA640](v18);

      v19 = 0x69207369209D80E2;
      v20 = 0x64696C61766ELL;
      goto LABEL_17;
    case 3u:
      v21 = *v9;
      v22 = v9[1];
      v23 = v9[2];
      v24 = v9[3];
      v25 = v9[4];
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();
      v37 = v32;
      v38 = v33;
      MEMORY[0x29EDAA640](0x1000000000000038, 0x800000029EBB4F10);
      v32 = v21;
      v33 = v22;
      v34 = v23;
      v35 = v24;
      v36 = v25;
      sub_29EBAFB50();
      MEMORY[0x29EDAA640](0x1000000000000012, 0x800000029EBB4EB0);
      sub_29EBA4EF8(v21, v22, v23);
      return v37;
    case 4u:
      sub_29EB980F4(v9, v5);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();
      v15 = "” was attempted.";
      v16 = 0x1000000000000031;
      goto LABEL_13;
    case 5u:
      sub_29EB980F4(v9, v5);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();
      v15 = "The generic substitution “";
      v16 = 0x1000000000000030;
LABEL_13:
      MEMORY[0x29EDAA640](v16, v15 | 0x8000000000000000);
      v27 = XPCActorID.description.getter();
      MEMORY[0x29EDAA640](v27);

      v12 = 0x800000029EBB4EB0;
      v11 = 0x1000000000000012;
      goto LABEL_14;
    case 6u:
      v29 = *v9;
      v30 = v9[1];
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();

      v32 = 0x100000000000001CLL;
      v33 = 0x800000029EBB4E50;
      MEMORY[0x29EDAA640](v29, v30);

      v19 = 0x75207369209D80E2;
      v20 = 0x6E776F6E6B6ELL;
LABEL_17:
      MEMORY[0x29EDAA640](v19, v20 & 0xFFFFFFFFFFFFLL | 0xAF2E000000000000);
      return v32;
    case 7u:
      return 0xD000000000000016;
    case 8u:
      return 0xD000000000000010;
    case 9u:
      return 0x1000000000000038;
    case 0xAu:
      v14 = 33;
      goto LABEL_20;
    case 0xBu:
      v14 = 5;
LABEL_20:
      result = v14 | 0xD000000000000010;
      break;
    case 0xCu:
      result = 0xD000000000000020;
      break;
    case 0xDu:
      result = 0xD000000000000017;
      break;
    case 0xEu:
      result = 0xD00000000000002CLL;
      break;
    default:
      sub_29EB980F4(v9, v5);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_29EBAFAF0();

      v32 = 0x1000000000000018;
      v33 = 0x800000029EBB5110;
      v10 = XPCActorID.description.getter();
      MEMORY[0x29EDAA640](v10);

      v11 = 0x1000000000000013;
      v12 = 0x800000029EBB5130;
LABEL_14:
      MEMORY[0x29EDAA640](v11, v12);
      v28 = v32;
      sub_29EB970E0(v5);
      result = v28;
      break;
  }

  return result;
}

uint64_t sub_29EBA6810()
{
  sub_29EB98378();

  return sub_29EBAFD30();
}

uint64_t sub_29EBA6850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCActorSystemError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBA68B8()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD000000000000023, 0x800000029EBB5220);
  v1 = MEMORY[0x29EDAA670](*(v0 + 16), MEMORY[0x29EDC99B0]);
  MEMORY[0x29EDAA640](v1);

  MEMORY[0x29EDAA640](0x6E656D7567726120, 0xEC000000203A7374);
  v2 = MEMORY[0x29EDAA670](*(v0 + 24), MEMORY[0x29EDB9B70]);
  MEMORY[0x29EDAA640](v2);

  MEMORY[0x29EDAA640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_29EBA69A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EBAF720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCActorID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  sub_29EBA874C(a1, v13, type metadata accessor for XPCActorID);
  (*(v6 + 16))(v9, a2, v5);
  v16 = type metadata accessor for AddressedEnvelope(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_29EB980F4(v13, v19 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID);
  (*(v6 + 32))(v19 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target, v9, v5);
  *(v19 + 16) = v15;
  *(v19 + 24) = v14;

  return v19;
}

uint64_t sub_29EBA6B54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

unint64_t sub_29EBA6C10()
{
  v1 = 0x746E656D75677261;
  v2 = 0x6E65697069636572;
  if (*v0 != 2)
  {
    v2 = 0x746567726174;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29EBA6C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EBA7DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EBA6CCC(uint64_t a1)
{
  v2 = sub_29EBA84D0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA6D08(uint64_t a1)
{
  v2 = sub_29EBA84D0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA6D44()
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000002DLL, 0x800000029EBB51F0);
  v1 = MEMORY[0x29EDAA670](*(v0 + 16), MEMORY[0x29EDC99B0]);
  MEMORY[0x29EDAA640](v1);

  MEMORY[0x29EDAA640](0x6E656D7567726120, 0xEC000000203A7374);
  v2 = MEMORY[0x29EDAA670](*(v0 + 24), MEMORY[0x29EDB9B70]);
  MEMORY[0x29EDAA640](v2);

  MEMORY[0x29EDAA640](0x6569706963657220, 0xEF203A444920746ELL);
  v3 = XPCActorID.description.getter();
  MEMORY[0x29EDAA640](v3);

  MEMORY[0x29EDAA640](0x3A74656772617420, 0xE900000000000020);
  sub_29EBAF720();
  sub_29EBA8704(&qword_2A1885590, MEMORY[0x29EDCA2D8]);
  v4 = sub_29EBAFCA0();
  MEMORY[0x29EDAA640](v4);

  return 0;
}

uint64_t sub_29EBA6EF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857B8, &qword_29EBB21D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA84D0();
  sub_29EBAFDF0();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885780, &qword_29EBB21C8);
  sub_29EBA8578(&qword_2A18857C0);
  sub_29EBAFC80();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885790, &qword_29EBB21D0);
    sub_29EBA85E4(&qword_2A18857C8, sub_29EBA865C);
    sub_29EBAFC80();
    LOBYTE(v13) = 2;
    type metadata accessor for XPCActorID();
    sub_29EBA8704(&qword_2A18857D8, type metadata accessor for XPCActorID);
    sub_29EBAFC80();
    LOBYTE(v13) = 3;
    sub_29EBAF720();
    sub_29EBA8704(&qword_2A18857E0, MEMORY[0x29EDCA2D8]);
    sub_29EBAFC80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29EBA71F8()
{
  sub_29EBA4E98(v0 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID, type metadata accessor for XPCActorID);
  v1 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  v2 = sub_29EBAF720();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_29EBA7284()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID;

  sub_29EBA4E98(&v0[v3], type metadata accessor for XPCActorID);
  v4 = OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target;
  v5 = sub_29EBAF720();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v6, v7);
}

uint64_t sub_29EBA738C()
{
  result = type metadata accessor for XPCActorID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29EBAF720();
    if (v2 <= 0x3F)
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

uint64_t sub_29EBA746C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCActorID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29EBA7550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCActorID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_29EBA7638(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EBA7670()
{
  result = type metadata accessor for XPCActorID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBA76E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857F8, &qword_29EBB21E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA86B0();
  sub_29EBAFDF0();
  LOBYTE(v15) = 0;
  type metadata accessor for XPCActorID();
  sub_29EBA8704(&qword_2A18857D8, type metadata accessor for XPCActorID);
  sub_29EBAFC80();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SyncAddressedEnvelope(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_29EB9943C(v15, v12);
    sub_29EBA865C();
    sub_29EBAFC80();
    sub_29EB99490(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29EBA78C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for XPCActorID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18857E8, &qword_29EBB21E0);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SyncAddressedEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBA86B0();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v21;
  v17 = v14;
  LOBYTE(v24) = 0;
  sub_29EBA8704(&qword_2A18857A8, type metadata accessor for XPCActorID);
  v18 = v22;
  sub_29EBAFC10();
  sub_29EB980F4(v23, v17);
  v25 = 1;
  sub_29EBA8524();
  sub_29EBAFC10();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v24;
  sub_29EBA874C(v17, v20, type metadata accessor for SyncAddressedEnvelope);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_29EBA4E98(v17, type metadata accessor for SyncAddressedEnvelope);
}

uint64_t sub_29EBA7BD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29EBA7F74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29EBA7C24()
{
  if (*v0)
  {
    result = 0x446567617373656DLL;
  }

  else
  {
    result = 0x6E65697069636572;
  }

  *v0;
  return result;
}

uint64_t sub_29EBA7C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65697069636572 && a2 == 0xEB00000000444974;
  if (v6 || (sub_29EBAFCD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EBAFCD0();

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

uint64_t sub_29EBA7D54(uint64_t a1)
{
  v2 = sub_29EBA86B0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA7D90(uint64_t a1)
{
  v2 = sub_29EBA86B0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA7DFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000029EBB5180 == a2 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEB00000000444974 || (sub_29EBAFCD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29EBA7F74(uint64_t *a1)
{
  v40 = sub_29EBAF720();
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v40);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v36 - v5;
  v7 = type metadata accessor for XPCActorID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v36 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885770, &qword_29EBB21C0);
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v17 = &v36 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_29EBA84D0();
  v42 = v17;
  v21 = v43;
  sub_29EBAFDD0();
  if (!v21)
  {
    v22 = v14;
    v23 = v6;
    v43 = v11;
    v24 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885780, &qword_29EBB21C8);
    v45 = 0;
    sub_29EBA8578(&qword_2A1885788);
    v25 = v41;
    sub_29EBAFC10();
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885790, &qword_29EBB21D0);
    v45 = 1;
    sub_29EBA85E4(&qword_2A1885798, sub_29EBA8524);
    sub_29EBAFC10();
    v37 = v26;
    v27 = v46;
    LOBYTE(v46) = 2;
    sub_29EBA8704(&qword_2A18857A8, type metadata accessor for XPCActorID);
    sub_29EBAFC10();
    LOBYTE(v46) = 3;
    sub_29EBA8704(&qword_2A18857B0, MEMORY[0x29EDCA2D8]);
    sub_29EBAFC10();
    (*(v22 + 8))(v42, v25);
    v29 = v43;
    sub_29EB980F4(v13, v43);
    v30 = *(v38 + 32);
    v31 = v27;
    v32 = v39;
    v30(v39, v23, v24);
    v33 = type metadata accessor for AddressedEnvelope(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v20 = swift_allocObject();
    sub_29EB980F4(v29, v20 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_recipientID);
    v30((v20 + OBJC_IVAR____TtC26ManagedBackgroundAssetsXPC17AddressedEnvelope_target), v32, v24);
    *(v20 + 16) = v37;
    *(v20 + 24) = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v20;
}

unint64_t sub_29EBA84D0()
{
  result = qword_2A1885778;
  if (!qword_2A1885778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885778);
  }

  return result;
}

unint64_t sub_29EBA8524()
{
  result = qword_2A18857A0;
  if (!qword_2A18857A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857A0);
  }

  return result;
}

uint64_t sub_29EBA8578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885780, &qword_29EBB21C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EBA85E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885790, &qword_29EBB21D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EBA865C()
{
  result = qword_2A18857D0;
  if (!qword_2A18857D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857D0);
  }

  return result;
}

unint64_t sub_29EBA86B0()
{
  result = qword_2A18857F0;
  if (!qword_2A18857F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18857F0);
  }

  return result;
}

uint64_t sub_29EBA8704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EBA874C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AddressedEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AddressedEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29EBA8920()
{
  result = qword_2A1885800;
  if (!qword_2A1885800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885800);
  }

  return result;
}

unint64_t sub_29EBA8978()
{
  result = qword_2A1885808;
  if (!qword_2A1885808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885808);
  }

  return result;
}

unint64_t sub_29EBA89D0()
{
  result = qword_2A1885810;
  if (!qword_2A1885810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885810);
  }

  return result;
}

unint64_t sub_29EBA8A28()
{
  result = qword_2A1885818;
  if (!qword_2A1885818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885818);
  }

  return result;
}

unint64_t sub_29EBA8A80()
{
  result = qword_2A1885820;
  if (!qword_2A1885820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885820);
  }

  return result;
}

unint64_t sub_29EBA8AD8()
{
  result = qword_2A1885828;
  if (!qword_2A1885828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885828);
  }

  return result;
}

uint64_t sub_29EBA8B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29EBAFCD0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29EBA8BCC(uint64_t a1)
{
  v2 = sub_29EBADD70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EBA8C08(uint64_t a1)
{
  v2 = sub_29EBADD70();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29EBA8C44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885920, &qword_29EBB2820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBADD70();
  sub_29EBAFDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_29EBAFBF0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_29EBA8DC0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885900, &qword_29EBB2808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EBADD70();
  sub_29EBAFDF0();
  sub_29EBAFC60();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29EBA8EFC()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885830);
  __swift_project_value_buffer(v0, qword_2A1885830);
  return sub_29EBAF770();
}

double sub_29EBA8F7C@<D0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for SyncAddressedEnvelope(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  MEMORY[0x2A1C7C4A8](v3);
  v4 = sub_29EBAF8F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  sub_29EBADDC4();
  sub_29EBAF8D0();
  v9 = v23[0];
  v8 = v23[1];
  if (qword_2A18850D8 != -1)
  {
    swift_once();
  }

  v10 = sub_29EBAF780();
  __swift_project_value_buffer(v10, qword_2A1885830);

  v11 = sub_29EBAF760();
  v12 = sub_29EBAFA70();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136446210;

    v15 = sub_29EBA1458(v9, v8, v23);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_29EB8F000, v11, v12, "A session with the client “%{public}s” was activated.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x29EDAAF90](v14, -1, -1);
    MEMORY[0x29EDAAF90](v13, -1, -1);
  }

  v16 = *v21;
  type metadata accessor for Connection();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = v16;
  v19 = v21[5];
  v18 = v21[6];

  v19(v9, v8, v17);

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29EBA9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29EBAF8F0();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBA9A60, 0, 0);
}

uint64_t sub_29EBA9A60()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  (*(v3 + 16))(v1, v0[4], v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v13 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_29EBA9BF0;
  v11 = v0[3];

  return v13(v11, sub_29EBAE190, v8);
}

uint64_t sub_29EBA9BF0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBA9D34, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_29EBA9D34()
{
  v1 = v0[9];

  if (qword_2A18850D8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = sub_29EBAF780();
  __swift_project_value_buffer(v3, qword_2A1885830);
  v4 = sub_29EBAFA50();
  MEMORY[0x29EDAAE00](v2);
  v5 = sub_29EBAF760();
  MEMORY[0x29EDAADF0](v2);
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x29EDAAE00](v7);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_29EB8F000, v5, v4, "A message couldn’t be handled: %{public}@", v8, 0xCu);
    sub_29EBAD824(v9, &qword_2A18858C8, &qword_29EBB26C0);
    MEMORY[0x29EDAAF90](v9, -1, -1);
    MEMORY[0x29EDAAF90](v8, -1, -1);
    MEMORY[0x29EDAADF0](v7);
  }

  else
  {

    MEMORY[0x29EDAADF0](v7);
  }

  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EBA9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v27 - v11;
  sub_29EBAD7B4(a3, v27 - v11);
  v13 = sub_29EBAFA10();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29EBAD824(v12, &qword_2A18858D0, &qword_29EBB26C8);
  }

  else
  {
    sub_29EBAFA00();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29EBAF9D0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_29EBAF960() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29EBAD824(a3, &qword_2A18858D0, &qword_29EBB26C8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29EBAD824(a3, &qword_2A18858D0, &qword_29EBB26C8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

double sub_29EBAA1D8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_29EBA8F7C(a1);
}

uint64_t Connection.Request.bundleID.getter()
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = v0[1];
  *token.val = *v0;
  *&token.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (v3)
  {
    v4 = v3;
    error = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &error);
    v6 = v5;
    v7 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      v1 = sub_29EBADE18(&qword_2A1885868, type metadata accessor for CFError);
      v8 = v7;
      swift_allocError();
      *v9 = v8;
      swift_willThrow();

      if (error)
      {
      }

      goto LABEL_16;
    }

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        sub_29EBAF940();

        if (*&token.val[2])
        {
          v1 = *token.val;
          v11 = error;
          if (!error)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      v1 = 0;
      v11 = error;
      if (error)
      {
LABEL_15:
      }
    }

    else
    {
      v1 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_29EBAA3EC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();
LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return v1;
}

unint64_t sub_29EBAA3EC()
{
  result = qword_2A1885860;
  if (!qword_2A1885860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885860);
  }

  return result;
}

void Connection.Request.value<A>(forEntitlement:)(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = v2[1];
  *token.val = *v2;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (!v6)
  {
    sub_29EBAA3EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    goto LABEL_7;
  }

  v7 = v6;
  *token.val = 0;
  v8 = sub_29EBAF930();
  SecTaskCopyValueForEntitlement(v7, v8, &token);

  v9 = *token.val;
  if (!*token.val)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885870, &qword_29EBB2420);
    v15 = swift_dynamicCast();
    (*(*(a1 - 8) + 56))(a2, v15 ^ 1u, 1, a1);
    v12 = *token.val;
    if (!*token.val)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  type metadata accessor for CFError(0);
  sub_29EBADE18(&qword_2A1885868, type metadata accessor for CFError);
  v10 = v9;
  swift_allocError();
  *v11 = v10;
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = *token.val;
  if (*token.val)
  {
LABEL_4:
  }

LABEL_5:

LABEL_7:
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t Connection.Rejection.reason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Connection.Rejection.underlyingError.getter()
{
  v1 = *(v0 + 16);
  MEMORY[0x29EDAAE00](v1);
  return v1;
}

uint64_t Connection.Rejection.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_29EBAA6E0();
  return sub_29EBAFD30();
}

unint64_t sub_29EBAA6E0()
{
  result = qword_2A1885878;
  if (!qword_2A1885878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885878);
  }

  return result;
}

uint64_t Connection.Rejection.errorDescription.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    swift_getErrorValue();
    return sub_29EBAFD30();
  }

  return result;
}

uint64_t Connection.Rejection.failureReason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Connection.Rejection.init(because:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t Connection.Rejection.init(becauseOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29EBAFAF0();
  MEMORY[0x29EDAA640](0xD00000000000001ELL, 0x800000029EBB5250);
  swift_getErrorValue();
  result = sub_29EBAFCC0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = a1;
  return result;
}

uint64_t sub_29EBAA854()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_29EBAA6E0();
  return sub_29EBAFD30();
}

uint64_t sub_29EBAA8A0()
{
  result = *(v0 + 16);
  if (result)
  {
    swift_getErrorValue();
    return sub_29EBAFD30();
  }

  return result;
}

uint64_t sub_29EBAA8EC()
{
  v0 = sub_29EBAF780();
  __swift_allocate_value_buffer(v0, qword_2A1885848);
  __swift_project_value_buffer(v0, qword_2A1885848);
  return sub_29EBAF770();
}

void *sub_29EBAA968(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v10 = v9;
  v45 = a6;
  v46 = a4;
  v44 = a2;
  v15 = *v10;
  v16 = sub_29EBAF830();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v49 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v50 = *a1;
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v20 = a9;
  v21 = sub_29EBAF780();
  __swift_project_value_buffer(v21, qword_2A1885848);

  v22 = sub_29EBAF760();
  v23 = sub_29EBAFA70();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = v15;
    v25 = v24;
    v41 = swift_slowAlloc();
    v42 = a7;
    v51 = v41;
    *v25 = 136446210;

    v26 = v10;
    v27 = a3;
    v28 = a5;
    v29 = sub_29EBA1458(v50, v19, &v51);

    *(v25 + 4) = v29;
    a5 = v28;
    a3 = v27;
    v10 = v26;
    v20 = a9;
    _os_log_impl(&dword_29EB8F000, v22, v23, "Attempting to listen on “%{public}s”…", v25, 0xCu);
    v30 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    a7 = v42;
    MEMORY[0x29EDAAF90](v30, -1, -1);
    v31 = v25;
    v15 = v43;
    MEMORY[0x29EDAAF90](v31, -1, -1);
  }

  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = v45;
  v32[3] = a7;
  v32[4] = v33;
  v32[5] = a3;
  v34 = v47;
  v32[6] = v46;
  v32[7] = a5;
  v32[8] = v34;
  v32[9] = v20;
  v32[10] = v15;

  sub_29EBAF820();
  v35 = sub_29EBAF890();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = v48;
  v39 = sub_29EBAF880();

  if (v38)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10[2] = v39;
    v10[3] = 0;
  }

  return v10;
}

uint64_t sub_29EBAAC94()
{
  v0 = sub_29EBAF840();
  MEMORY[0x2A1C7C4A8](v0);
  sub_29EBADBC8();
  return sub_29EBAF850();
}

uint64_t sub_29EBAB10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, __int128 *))
{
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  swift_beginAccess();
  v14 = v16;
  v15 = v17;
  a5(&v14, &v12);
  swift_endAccess();
  v11[0] = v14;
  v11[1] = v15;
  if (!v5)
  {
    return nullsub_1(v11);
  }

  nullsub_1(v11);
  v10 = v12;
  v7 = v13;
  sub_29EBAA6E0();
  result = swift_allocError();
  *v9 = v10;
  *(v9 + 16) = v7;
  return result;
}

uint64_t sub_29EBAB1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
}

uint64_t *sub_29EBAB258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v8 = v7;
  v42 = a4;
  v39 = a1;
  v47 = *v8;
  v13 = sub_29EBAF7C0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = *(a3 + 8);
  v45 = *a3;
  v41 = *(a3 + 16);
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v18 = sub_29EBAF780();
  __swift_project_value_buffer(v18, qword_2A1885848);

  v19 = sub_29EBAF760();
  v20 = sub_29EBAFA70();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = a7;
    v38 = a2;
    v23 = v22;
    v46[0] = v22;
    *v21 = 136446210;

    v24 = a5;
    v25 = sub_29EBA1458(v45, v17, v46);

    *(v21 + 4) = v25;
    a5 = v24;
    _os_log_impl(&dword_29EB8F000, v19, v20, "Attempting to connect to the server “%{public}s”…", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v26 = v23;
    a7 = v37;
    a2 = v38;
    MEMORY[0x29EDAAF90](v26, -1, -1);
    MEMORY[0x29EDAAF90](v21, -1, -1);
  }

  v27 = swift_allocObject();
  v27[2] = v42;
  v27[3] = a5;
  v28 = v47;
  v27[4] = v47;
  v29 = swift_allocObject();
  v29[2] = v43;
  v29[3] = a7;
  v29[4] = v28;
  v8[2] = 0;
  sub_29EBAF810();

  if (v41)
  {
    sub_29EBAF7B0();
    v30 = v44;
    v31 = sub_29EBAF7A0();
    v32 = v30;
    if (v30)
    {
LABEL_7:

      v33 = v8[2];

      swift_deallocPartialClassInstance();
      return v8;
    }
  }

  else
  {
    sub_29EBAF7B0();
    v34 = v44;
    v31 = sub_29EBAF790();
    v32 = v34;
    if (v34)
    {
      goto LABEL_7;
    }
  }

  v8[3] = v31;
  v46[0] = v39;
  v46[1] = a2;
  sub_29EBAD348();

  sub_29EBAF7E0();

  if (v32)
  {
  }

  return v8;
}

double sub_29EBAB68C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a5;
  v8 = sub_29EBAF8F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v35[-v13];
  type metadata accessor for AddressedEnvelope(0);
  sub_29EBADE18(&qword_2A18858D8, type metadata accessor for AddressedEnvelope);
  sub_29EBAF8D0();
  v37 = a1;
  v38 = v8;
  v39 = a2;
  v40 = a4;
  v15 = v43;
  v16 = qword_2A18850E0;
  swift_retain_n();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_29EBAF780();
  __swift_project_value_buffer(v17, qword_2A1885848);
  v18 = sub_29EBAFA40();
  v19 = sub_29EBAF760();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v36 = v18;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 136446210;

    v23 = sub_29EBA6D44();
    v25 = v24;

    v26 = sub_29EBA1458(v23, v25, &v43);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_29EB8F000, v19, v36, "A message in the envelope “%{public}s” was received.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x29EDAAF90](v22, -1, -1);
    MEMORY[0x29EDAAF90](v21, -1, -1);
  }

  v27 = v37;
  v28 = v38;
  v29 = sub_29EBAFA10();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  (*(v9 + 16))(&v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v27, v28);
  v30 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v41;
  *(v31 + 4) = v39;
  *(v31 + 5) = v32;
  *(v31 + 6) = v15;
  (*(v9 + 32))(&v31[v30], &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v28);
  *&v31[(v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v40;

  sub_29EBA9EE8(0, 0, v14, &unk_29EBB26D8, v31);

  v33 = v42;
  *(v42 + 32) = 0;
  result = 0.0;
  *v33 = 0u;
  v33[1] = 0u;
  return result;
}

uint64_t sub_29EBABBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_29EBAF8F0();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBABC6C, 0, 0);
}

uint64_t sub_29EBABC6C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  (*(v3 + 16))(v1, v0[5], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v12 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_29EBABDF4;
  v10 = v0[3];
  v9 = v0[4];

  return v12(v9, sub_29EBAE34C, v6);
}

uint64_t sub_29EBABDF4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBABF38, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_29EBABF38()
{
  v1 = v0[10];

  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_29EBAF780();
  __swift_project_value_buffer(v3, qword_2A1885848);
  v4 = sub_29EBAFA50();
  MEMORY[0x29EDAAE00](v2);
  v5 = sub_29EBAF760();
  MEMORY[0x29EDAADF0](v2);
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    MEMORY[0x29EDAAE00](v7);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_29EB8F000, v5, v4, "A message couldn’t be handled: %{public}@", v8, 0xCu);
    sub_29EBAD824(v9, &qword_2A18858C8, &qword_29EBB26C0);
    MEMORY[0x29EDAAF90](v9, -1, -1);
    MEMORY[0x29EDAAF90](v8, -1, -1);
    MEMORY[0x29EDAADF0](v7);
  }

  else
  {

    MEMORY[0x29EDAADF0](v7);
  }

  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EBAC0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
  sub_29EBADA30(&qword_2A18858E0, sub_29EBA865C, sub_29EBADAC0);
  return sub_29EBAF8C0();
}

uint64_t sub_29EBAC1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_29EBAF8A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18850E0 != -1)
  {
    swift_once();
  }

  v9 = sub_29EBAF780();
  __swift_project_value_buffer(v9, qword_2A1885848);
  v10 = sub_29EBAFA50();
  v11 = *(v5 + 16);
  v11(v8, a1, v4);
  v12 = sub_29EBAF760();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = a2;
    v15 = v14;
    *v13 = 138543362;
    sub_29EBADE18(&qword_2A18858C0, MEMORY[0x29EDCA350]);
    swift_allocError();
    HIDWORD(v21) = v10;
    v11(v16, v8, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v13 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_29EB8F000, v12, BYTE4(v21), "A session was canceled: %{public}@", v13, 0xCu);
    sub_29EBAD824(v15, &qword_2A18858C8, &qword_29EBB26C0);
    v18 = v15;
    a2 = v22;
    MEMORY[0x29EDAAF90](v18, -1, -1);
    MEMORY[0x29EDAAF90](v13, -1, -1);
  }

  else
  {

    v19 = (*(v5 + 8))(v8, v4);
  }

  return a2(v19);
}

uint64_t Connection.deinit()
{
  if (*(v0 + 16))
  {

    sub_29EBAF870();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_29EBAF7F0();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_29EBAF870();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_29EBAF7F0();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EBAC5E4(uint64_t a1, int a2)
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

uint64_t sub_29EBAC62C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ConnectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29EBAC7D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2A1C73D48](sub_29EBAC7F0, 0, 0);
}

uint64_t sub_29EBAC7F0()
{
  v1 = *(v0[6] + 24);
  v0[7] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = swift_task_alloc();
    v0[8] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x29EDCA478] + 4);

    v5 = swift_task_alloc();
    v0[9] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
    *v5 = v0;
    v5[1] = sub_29EBAC970;

    return MEMORY[0x2A1C73C80](v0 + 2, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_29EBAD1D0, v3, v6);
  }

  else
  {
    sub_29EBAA3EC();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_29EBAC970()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_29EBACAF8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_29EBACA8C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EBACA8C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_29EBACAF8()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_29EBACB64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v14 - v9;
  v14[1] = a3;
  (*(v7 + 16))(v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
  sub_29EBADE18(&qword_2A18858B0, type metadata accessor for AddressedEnvelope);
  sub_29EBADA30(&qword_2A1885898, sub_29EBA8524, sub_29EBAD17C);
  sub_29EBAF7D0();
}

uint64_t sub_29EBACDB0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    MEMORY[0x29EDAAE00]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
    return sub_29EBAF9E0();
  }

  else
  {
    sub_29EBAD2E8(v2, *(a1 + 8), *(a1 + 16) & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
    return sub_29EBAF9F0();
  }
}

uint64_t sub_29EBACE4C()
{
  v2 = sub_29EBAF8F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    type metadata accessor for SyncAddressedEnvelope(0);
    sub_29EBADE18(&qword_2A1885888, type metadata accessor for SyncAddressedEnvelope);

    sub_29EBAF800();
    if (v1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885890, &qword_29EBB26A8);
      sub_29EBADA30(&qword_2A1885898, sub_29EBA8524, sub_29EBAD17C);
      sub_29EBAF8D0();
      (*(v3 + 8))(v6, v2);

      return v9[1];
    }
  }

  else
  {
    sub_29EBAA3EC();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_29EBAD084()
{
  v2 = *v0;
  sub_29EBAA3EC();
  return sub_29EBAFD30();
}

unint64_t sub_29EBAD0C8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x1000000000000026;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

unint64_t sub_29EBAD128()
{
  result = qword_2A1885880;
  if (!qword_2A1885880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885880);
  }

  return result;
}

unint64_t sub_29EBAD17C()
{
  result = qword_2A18858A0;
  if (!qword_2A18858A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858A0);
  }

  return result;
}

uint64_t sub_29EBAD1D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EBAD26C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858A8, &qword_29EBB26B8) - 8) + 80);

  return sub_29EBACDB0(a1);
}

uint64_t sub_29EBAD2E8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29EB9943C(a1, a2);
  }
}

uint64_t sub_29EBAD2F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EBAD33C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_29EBAC1A0(a1, *(v1 + 16));
}

unint64_t sub_29EBAD348()
{
  result = qword_2A18858B8;
  if (!qword_2A18858B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858B8);
  }

  return result;
}

uint64_t sub_29EBAD39C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29EBAD494;

  return v7(a1);
}

uint64_t sub_29EBAD494()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EBAD58C()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29EBAD66C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29EBAF8F0() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29EBA5F94;

  return sub_29EBABBA0(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_29EBAD7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18858D0, &qword_29EBB26C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBAD824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EBAD884()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBAD8BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBA5F94;

  return sub_29EBAD39C(a1, v5);
}

uint64_t sub_29EBAD974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EB99244;

  return sub_29EBAD39C(a1, v5);
}

uint64_t sub_29EBADA30(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1885890, &qword_29EBB26A8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EBADAC0()
{
  result = qword_2A18858E8;
  if (!qword_2A18858E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858E8);
  }

  return result;
}

uint64_t sub_29EBADB14()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29EBADB64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  return sub_29EBAAC94();
}

unint64_t sub_29EBADBC8()
{
  result = qword_2A18858F8;
  if (!qword_2A18858F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18858F8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29EBADC38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29EBADC80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EBADCDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29EBADD24(uint64_t result, int a2, int a3)
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

unint64_t sub_29EBADD70()
{
  result = qword_2A1885908;
  if (!qword_2A1885908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885908);
  }

  return result;
}

unint64_t sub_29EBADDC4()
{
  result = qword_2A1885910;
  if (!qword_2A1885910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885910);
  }

  return result;
}

uint64_t sub_29EBADE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EBADE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncAddressedEnvelope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBADEC4(uint64_t a1)
{
  v2 = type metadata accessor for SyncAddressedEnvelope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBADF20()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  v11 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EBAE00C(uint64_t a1)
{
  v4 = *(sub_29EBAF8F0() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EB99244;

  return sub_29EBA9994(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = sub_29EBAF8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_29EBAE240()
{
  result = qword_2A1885928;
  if (!qword_2A1885928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885928);
  }

  return result;
}

unint64_t sub_29EBAE298()
{
  result = qword_2A1885930;
  if (!qword_2A1885930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885930);
  }

  return result;
}

unint64_t sub_29EBAE2F0()
{
  result = qword_2A1885938;
  if (!qword_2A1885938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1885938);
  }

  return result;
}

uint64_t sub_29EBAE368(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_29EBAF3E0(a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_29EBA2260(a2, a3, a4 & 1);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_29EBA40DC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 24 * v14 + 8);

      v20 = *(*(v18 + 56) + 8 * v14);

      result = sub_29EBAF080(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_29EBAE470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBAE494, 0, 0);
}

uint64_t sub_29EBAE494()
{
  v1 = v0[5];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  if (*(v2 + 16) && (v3 = sub_29EBA22E8(v0[3], v0[4]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v0[6] = v5;

    os_unfair_lock_unlock((v1 + 32));
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_29EBAE600;
      v7 = v0[2];

      return sub_29EBAC7D0(v7);
    }
  }

  else
  {
    os_unfair_lock_unlock((v1 + 32));
  }

  type metadata accessor for XPCActorSystemError();
  sub_29EB98378();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_29EBAE600(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 56);
  v10 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v11 = sub_29EBAE7B0;
  }

  else
  {
    *(v8 + 88) = a3;
    *(v8 + 72) = a2;
    *(v8 + 80) = a1;
    v11 = sub_29EBAE73C;
  }

  return MEMORY[0x2A1C73D48](v11, 0, 0);
}

uint64_t sub_29EBAE73C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  return v3(v4, v5, v1 & 1);
}

uint64_t sub_29EBAE7B0()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

unint64_t sub_29EBAE818()
{
  type metadata accessor for Transport();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x29EDCA190];
  v2 = sub_29EBA546C(MEMORY[0x29EDCA190]);
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  result = sub_29EBA5570(v1);
  *(v0 + 48) = 0;
  *(v0 + 56) = result;
  qword_2A1889A80 = v0;
  return result;
}

uint64_t sub_29EBAE880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  os_unfair_lock_lock((a4 + 32));

  v8 = *(a4 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 40);
  *(a4 + 40) = 0x8000000000000000;
  sub_29EBAF538(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 40) = v11;
  os_unfair_lock_unlock((a4 + 32));
}

uint64_t sub_29EBAE940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v7 = v5;
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  os_unfair_lock_lock((v5 + 48));
  v14 = *(v5 + 56);
  if (*(v14 + 16) && (v15 = sub_29EBA2260(v12, v11, v13), (v16 & 1) != 0))
  {
    a5 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v24[0] = v12;
    v24[1] = v11;
    v25 = v13;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = a4;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v12;
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    type metadata accessor for Connection();
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v20 = sub_29EBAB258(v26, a2, v24, v18, a5, sub_29EBAED4C, v19);
    if (!v6)
    {
      a5 = v20;

      v21 = *(v7 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = *(v7 + 56);
      *(v7 + 56) = 0x8000000000000000;
      sub_29EBAF3E0(a5, v12, v11, v13, isUniquelyReferenced_nonNull_native);

      *(v7 + 56) = v24[0];
    }
  }

  os_unfair_lock_unlock((v7 + 48));
  return a5;
}

os_unfair_lock_s *sub_29EBAEB10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    os_unfair_lock_lock(result + 12);

    sub_29EBAE368(0, a2, a3, a4 & 1);
    os_unfair_lock_unlock(v8 + 12);
  }

  return result;
}

uint64_t sub_29EBAEBA8()
{
  sub_29EBAD824(v0 + 24, &qword_2A1885958, &qword_29EBB2990);
  sub_29EBAD824(v0 + 40, &qword_2A1885960, &qword_29EBB2998);
  sub_29EBAD824(v0 + 56, &qword_2A1885968, &qword_29EBB29A0);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t sub_29EBAEC44()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885940, &qword_29EBB2978);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAEC74()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885948, &qword_29EBB2980);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAECA4()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1885950, &qword_29EBB2988);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29EBAECD4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EBAED0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

unint64_t sub_29EBAED5C(unint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for XPCActorID();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x2A1C7C4A8](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_29EBAFAB0();
    v14 = *(v4 + 72);
    v35 = (v13 + 1) & v12;
    v36 = a2 + 64;
    v34 = v14;
    do
    {
      v15 = a1;
      v16 = v12;
      v17 = v14 * v11;
      sub_29EB9707C(*(a2 + 48) + v14 * v11, v8);
      v18 = a2;
      v19 = *(a2 + 40);
      sub_29EBAFD80();
      v21 = *v8;
      v20 = *(v8 + 1);
      v22 = *(v8 + 8);
      if (v22 < 0)
      {
        MEMORY[0x29EDAAA50](1);
        if ((v22 & 0x100) == 0)
        {
LABEL_9:
          MEMORY[0x29EDAAA50](0);
          goto LABEL_12;
        }
      }

      else
      {
        MEMORY[0x29EDAAA50](0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x29EDAAA50](1);
LABEL_12:
      sub_29EB96EC0();
      sub_29EBAF970();

      v23 = sub_29EBAFDA0();
      result = sub_29EB970E0(v8);
      v12 = v16;
      v24 = v23 & v16;
      a1 = v15;
      a2 = v18;
      if (v15 >= v35)
      {
        v9 = v36;
        v14 = v34;
        if (v24 < v35)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v9 = v36;
        v14 = v34;
        if (v24 >= v35)
        {
          goto LABEL_17;
        }
      }

      if (v15 >= v24)
      {
LABEL_17:
        v25 = *(a2 + 48);
        result = v25 + v14 * v15;
        if (v14 * v15 < v17 || result >= v25 + v17 + v14)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * v15 != v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v26 = *(a2 + 56);
        v27 = (v26 + 8 * v15);
        v28 = (v26 + 8 * v11);
        if (v15 != v11 || v27 >= v28 + 1)
        {
          *v27 = *v28;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29EBAF080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29EBAFAB0() + 1) & ~v5;
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 24 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_29EBAFD80();

      sub_29EBAF970();
      v14 = sub_29EBAFDA0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + v9);
        if (24 * v3 < v9 || v17 >= v18 + 24 || v3 != v6)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29EBAF250(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for XPCActorID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29EBA21F4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29EBA3CAC();
      goto LABEL_7;
    }

    sub_29EBA2E24(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_29EBA21F4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_29EB9707C(a2, v11);
      return sub_29EBA3B74(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_29EBAFD20();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_29EBAF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v13 = sub_29EBA2260(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_29EBA40DC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_29EBA360C(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_29EBA2260(a2, a3, v8 & 1);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_29EBAFD20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  else
  {
    sub_29EBA3C14(v13, a2, a3, v8 & 1, a1, v24);
  }
}

uint64_t sub_29EBAF538(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29EBA22E8(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_29EBA4258();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29EBA38CC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_29EBA22E8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_29EBAFD20();
      __break(1u);
      return sub_29EBAF680();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_29EBA3C64(v11, a2, a3, a1, v22);
  }
}