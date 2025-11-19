uint64_t sub_1B496EC34()
{
  v1 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

id sub_1B496EC6C@<X0>(void *a1@<X8>)
{
  result = WorkoutRecord.fi_activityType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B496EC9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B496ECD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B496ED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1B4D1746C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1B496ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = sub_1B4D1746C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1B496EDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 32);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B496EEC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 32) = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B496EF74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
    v9 = *(*(Descriptor - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, Descriptor);
  }
}

void *sub_1B496F020(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
    v8 = *(*(Descriptor - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, Descriptor);
  }

  return result;
}

uint64_t sub_1B496F0C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B496F0FC()
{
  v1 = *(type metadata accessor for ActivitySharingAnniversaryFact() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(v1 + 64);
  v21 = v0;
  v4 = v0 + v3;
  v5 = sub_1B4D177CC();
  v6 = *(v5 - 8);
  v19 = *(v6 + 8);
  v19(v0 + v3, v5);
  v7 = type metadata accessor for ActivitySharingFriend();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6] + 8);

  v10 = v7[7];
  v11 = sub_1B4D179BC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = *(v4 + v7[8]);

  v14 = v7[9];
  v15 = sub_1B4D1777C();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);
  v16 = *(v4 + v7[12]);

  v17 = v7[13];
  if (!(*(v6 + 48))(v4 + v17, 1, v5))
  {
    v19(v4 + v17, v5);
  }

  return MEMORY[0x1EEE6BDD0](v21, v3 + v20, v2 | 7);
}

uint64_t sub_1B496F398(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for CacheIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B496F4A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_1B496F4B4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B496F4D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

double sub_1B496F4FC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence28InferenceTelemetryIdentifierVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B496F52C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1B496F544(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
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

uint64_t sub_1B496F618()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496F74C()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496F880()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t sub_1B496F99C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t sub_1B496FAB8()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B496FBE8()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B496FD18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B496FE58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

FitnessIntelligence::DaemonMessageCode_optional __swiftcall DaemonMessageCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0;
  v3 = 21;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_37;
    case 2u:
      v2 = 1;
      goto LABEL_37;
    case 3u:
      v2 = 2;
      goto LABEL_37;
    case 4u:
      v2 = 3;
      goto LABEL_37;
    case 5u:
      v2 = 4;
      goto LABEL_37;
    case 6u:
      v2 = 5;
      goto LABEL_37;
    case 7u:
      v2 = 6;
      goto LABEL_37;
    case 8u:
      v2 = 7;
      goto LABEL_37;
    case 0x15u:
      v2 = 8;
      goto LABEL_37;
    case 0x1Eu:
      v2 = 9;
      goto LABEL_37;
    case 0x1Fu:
      v2 = 10;
      goto LABEL_37;
    case 0x20u:
      v2 = 11;
      goto LABEL_37;
    case 0x21u:
      v2 = 12;
      goto LABEL_37;
    case 0x22u:
      v2 = 13;
      goto LABEL_37;
    case 0x32u:
      v2 = 14;
      goto LABEL_37;
    case 0x33u:
      v2 = 15;
      goto LABEL_37;
    case 0x34u:
      v2 = 16;
      goto LABEL_37;
    case 0x35u:
      v2 = 17;
      goto LABEL_37;
    case 0x36u:
      v2 = 18;
      goto LABEL_37;
    case 0x37u:
      v2 = 19;
      goto LABEL_37;
    case 0x38u:
      v2 = 20;
LABEL_37:
      v3 = v2;
      goto LABEL_38;
    case 0x3Cu:
LABEL_38:
      *v1 = v3;
      break;
    case 0x3Du:
      *v1 = 22;
      break;
    case 0x3Fu:
      *v1 = 23;
      break;
    case 0x46u:
      *v1 = 24;
      break;
    case 0x47u:
      *v1 = 25;
      break;
    case 0x48u:
      *v1 = 26;
      break;
    case 0x49u:
      *v1 = 27;
      break;
    case 0x4Au:
      *v1 = 28;
      break;
    case 0x4Bu:
      *v1 = 29;
      break;
    case 0x4Cu:
      *v1 = 30;
      break;
    case 0x4Du:
      *v1 = 31;
      break;
    case 0x4Eu:
      *v1 = 32;
      break;
    case 0x50u:
      *v1 = 33;
      break;
    case 0x5Au:
      *v1 = 34;
      break;
    case 0x5Bu:
      *v1 = 35;
      break;
    case 0x5Cu:
      *v1 = 36;
      break;
    case 0x5Du:
      *v1 = 37;
      break;
    case 0x5Eu:
      *v1 = 38;
      break;
    default:
      *v1 = 39;
      break;
  }

  return rawValue;
}

unint64_t sub_1B49702D0()
{
  result = qword_1EDC3CFA0;
  if (!qword_1EDC3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CFA0);
  }

  return result;
}

uint64_t sub_1B4970324()
{
  v1 = *v0;
  sub_1B4D18E8C();
  v2 = dword_1B4D1A5A4[v1];
  sub_1B4D18EBC();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49703AC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  v2 = dword_1B4D1A5A4[v1];
  sub_1B4D18EBC();
  return sub_1B4D18EDC();
}

uint64_t getEnumTagSinglePayload for DaemonMessageCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DaemonMessageCode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B4970564(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4970584(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
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

uint64_t sub_1B49705D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B49705F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t _s19FitnessIntelligence23RingsTotalCountPropertyV9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4970744()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

BOOL sub_1B49707D8(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B4970808@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B4970834@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1B497090C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B4D17A2C();
}

uint64_t sub_1B4970958()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B4D17A1C();
}

uint64_t sub_1B49709B0()
{
  sub_1B4D18E8C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B4D17A1C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4970A60(unint64_t *a1, void (*a2)(uint64_t))
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

_DWORD *sub_1B4970AA8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B4970AD8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1B4970DE4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B4970B18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1B4D17A0C();
}

void sub_1B4970BE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B4970DE4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t SnapshotQueryResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v272 = a3;
  v317 = *(a2 - 8);
  v5 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v271 = &v264 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v330 = *(AssociatedTypeWitness - 8);
  v9 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v297 = &v264 - v10;
  v292 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v291 = *(v292 - 8);
  v11 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v270 = (&v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v269 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v290 = &v264 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v309 = &v264 - v20;
  v307 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v306 = *(v307 - 8);
  v21 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v307);
  v316 = (&v264 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = type metadata accessor for FitnessPlusPropertiesQuery();
  v23 = *(*(v284 - 8) + 64);
  MEMORY[0x1EEE9AC00](v284);
  v308 = &v264 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v25 = *(*(v321 - 8) + 64);
  MEMORY[0x1EEE9AC00](v321);
  v315 = &v264 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v285 = *(v287 - 8);
  v27 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v268 = (&v264 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v267 = &v264 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v283 = &v264 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v305 = &v264 - v36;
  v303 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v302 = *(v303 - 8);
  v37 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v311 = &v264 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for WorkoutPropertiesQuery();
  v39 = *(*(v282 - 8) + 64);
  MEMORY[0x1EEE9AC00](v282);
  v304 = &v264 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v41 = *(*(v320 - 1) + 64);
  MEMORY[0x1EEE9AC00](v320);
  v324 = (&v264 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v289 = &v264 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v277 = &v264 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v288 = &v264 - v49;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v312 = *(Metrics - 8);
  v50 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v286 = &v264 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v276 = (&v264 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v293 = (&v264 - v55);
  v281 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v280 = *(v281 - 8);
  v56 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v266 = (&v264 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v265 = &v264 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v279 = &v264 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v301 = &v264 - v65;
  v299 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v298 = *(v299 - 8);
  v66 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299);
  v310 = &v264 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for RingsPropertiesQuery();
  v68 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v278);
  v300 = &v264 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v70 = *(*(v319 - 1) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v314 = &v264 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v75 = &v264 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v264 - v77;
  v318 = sub_1B4D1880C();
  v323 = *(v318 - 8);
  v79 = *(v323 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v294 = &v264 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v275 = &v264 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v274 = &v264 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v273 = &v264 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v322 = &v264 - v88;
  v329 = AssociatedTypeWitness;
  v328 = sub_1B4D1880C();
  v325 = *(v328 - 8);
  v89 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v296 = &v264 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v264 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v264 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v264 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v327 = &v264 - v101;
  sub_1B4974FBC(v4, v78, &qword_1EB8A6688, &qword_1B4D1A660);
  v102 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v102 - 8) + 48))(v78, 1, v102) == 1)
  {
    _s7FailureOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v103 = 0;
    v103[1] = 0;
    swift_willThrow();
    v104 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult;
LABEL_3:
    v105 = v104;
    v106 = v4;
LABEL_4:
    sub_1B497538C(v106, v105);
    return sub_1B4975024(v78, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  v264 = a2;
  v295 = v4;
  sub_1B4974FBC(v78, v75, &qword_1EB8A6688, &qword_1B4D1A660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v314;
      sub_1B49752F8(v75, v314, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v109 = v301;
      sub_1B4974FBC(v4 + v319[5], v301, &qword_1EB8A6680, &unk_1B4D2FD90);
      v110 = *(v298 + 48);
      v111 = v299;
      if (v110(v109, 1, v299) == 1)
      {
        v112 = MEMORY[0x1E69E7CC0];
        v113 = v310;
        *v310 = MEMORY[0x1E69E7CC0];
        *(v113 + 1) = v112;
        v114 = &v113[v111[6]];
        sub_1B4D17BBC();
        v115 = v111[7];
        v116 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v116 - 8) + 56))(&v113[v115], 1, 1, v116);
        v117 = v111[8];
        v118 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        (*(*(v118 - 8) + 56))(&v113[v117], 1, 1, v118);
        v119 = v110(v109, 1, v111);
        v120 = v330;
        v121 = v328;
        v122 = v326;
        if (v119 != 1)
        {
          sub_1B4975024(v109, &qword_1EB8A6680, &unk_1B4D2FD90);
        }
      }

      else
      {
        v113 = v310;
        sub_1B49752F8(v109, v310, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v120 = v330;
        v121 = v328;
        v122 = v326;
      }

      RingsPropertiesQuery.init(_:)(v113, v300);
      v158 = v122;
      if (v122)
      {
        sub_1B497538C(v295, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        v104 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
        goto LABEL_3;
      }

      v326 = v78;
      v160 = v329;
      v161 = swift_dynamicCast();
      (*(v120 + 56))(v99, v161 ^ 1u, 1, v160);
      (*(v325 + 32))(v327, v99, v121);
      v162 = v319[6];
      v163 = v279;
      sub_1B4974FBC(v4 + v162, v279, &qword_1EB8A6678, &qword_1B4D3CE20);
      v164 = v281;
      v324 = *(v280 + 48);
      v165 = v324(v163, 1, v281);
      sub_1B4975024(v163, &qword_1EB8A6678, &qword_1B4D3CE20);
      if (v165 == 1)
      {
        v166 = v273;
        v316 = *(v317 + 56);
        v316(v273, 1, 1, v264);
        v167 = v322;
        v168 = v323;
        v169 = Metrics;
        v170 = v312;
        v171 = v288;
      }

      else
      {
        v199 = v4 + v162;
        v200 = v265;
        sub_1B4974FBC(v199, v265, &qword_1EB8A6678, &qword_1B4D3CE20);
        v201 = v324;
        v202 = v324(v200, 1, v164);
        v169 = Metrics;
        v171 = v288;
        if (v202 == 1)
        {
          v203 = v266;
          *v266 = 0;
          v203[1] = 0;
          v203[2] = MEMORY[0x1E69E7CC0];
          v204 = v203 + *(v164 + 28);
          sub_1B4D17BBC();
          if (v201(v200, 1, v164) != 1)
          {
            sub_1B4975024(v200, &qword_1EB8A6678, &qword_1B4D3CE20);
          }
        }

        else
        {
          v203 = v266;
          sub_1B49752F8(v200, v266, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
        }

        RingsProperties.init(_:)(v203, &v334);
        v219 = v264;
        v170 = v312;
        v332 = v334;
        v333 = v335;
        v166 = v273;
        v223 = swift_dynamicCast();
        v316 = *(v317 + 56);
        v316(v166, v223 ^ 1u, 1, v219);
        v167 = v322;
        v168 = v323;
        v4 = v314;
      }

      (*(v168 + 32))(v167, v166, v318);
      sub_1B4974FBC(v4 + v319[7], v171, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v224 = *(v170 + 48);
      if (v224(v171, 1, v169) == 1)
      {
        v225 = v329;
        v226 = v293;
        *v293 = 0;
        v226[1] = 0;
        *(v226 + 16) = 0;
        v227 = v226 + *(v169 + 28);
        sub_1B4D17BBC();
        sub_1B497538C(v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        if (v224(v171, 1, v169) != 1)
        {
          sub_1B4975024(v171, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }

        v228 = v296;
        v183 = v328;
        v229 = v293;
        goto LABEL_63;
      }

      v225 = v329;
      sub_1B497538C(v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v230 = v293;
      sub_1B49752F8(v171, v293, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v229 = v230;
    }

    else
    {
      v140 = v75;
      v141 = v315;
      sub_1B49752F8(v140, v315, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v142 = v309;
      sub_1B4974FBC(v141 + *(v321 + 20), v309, &qword_1EB8A6658, &qword_1B4D1A650);
      v143 = *(v306 + 48);
      v144 = v307;
      if (v143(v142, 1, v307) == 1)
      {
        v145 = MEMORY[0x1E69E7CC0];
        v146 = v316;
        *v316 = MEMORY[0x1E69E7CC0];
        *(v146 + 1) = v145;
        v147 = &v146[v144[6]];
        sub_1B4D17BBC();
        v148 = v144[7];
        v149 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v149 - 8) + 56))(&v146[v148], 1, 1, v149);
        v150 = v144[8];
        v151 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
        (*(*(v151 - 8) + 56))(&v146[v150], 1, 1, v151);
        v152 = v143(v142, 1, v144);
        v153 = v146;
        v154 = v295;
        v156 = v329;
        v155 = v330;
        v157 = v326;
        if (v152 != 1)
        {
          sub_1B4975024(v142, &qword_1EB8A6658, &qword_1B4D1A650);
          v153 = v316;
        }
      }

      else
      {
        v153 = v316;
        sub_1B49752F8(v142, v316, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v154 = v295;
        v156 = v329;
        v155 = v330;
        v157 = v326;
      }

      FitnessPlusPropertiesQuery.init(_:)(v153, v308);
      if (v157)
      {
        sub_1B497538C(v154, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B497538C(v141, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        return sub_1B4975024(v78, &qword_1EB8A6688, &qword_1B4D1A660);
      }

      v326 = v78;
      v185 = swift_dynamicCast();
      (*(v155 + 56))(v93, v185 ^ 1u, 1, v156);
      (*(v325 + 32))(v327, v93, v328);
      v186 = *(v321 + 24);
      v187 = v290;
      sub_1B4974FBC(v141 + v186, v290, &qword_1EB8A6650, &unk_1B4D2FDC0);
      v188 = v292;
      v324 = *(v291 + 48);
      v189 = v324(v187, 1, v292);
      sub_1B4975024(v187, &qword_1EB8A6650, &unk_1B4D2FDC0);
      if (v189 == 1)
      {
        v190 = v275;
        v316 = *(v317 + 56);
        v316(v275, 1, 1, v264);
        v191 = v322;
        v192 = v323;
        v193 = Metrics;
        v194 = v312;
        v158 = 0;
        v195 = v190;
        v196 = v329;
        v197 = v289;
        v198 = v286;
      }

      else
      {
        v211 = v141 + v186;
        v212 = v269;
        sub_1B4974FBC(v211, v269, &qword_1EB8A6650, &unk_1B4D2FDC0);
        v213 = v324;
        v214 = v324(v212, 1, v188);
        v193 = Metrics;
        v198 = v286;
        if (v214 == 1)
        {
          v215 = v188;
          v216 = v270;
          *v270 = 0;
          v216[1] = 0;
          v216[2] = MEMORY[0x1E69E7CC0];
          v217 = v216 + *(v215 + 28);
          sub_1B4D17BBC();
          v218 = v213(v212, 1, v215);
          v197 = v289;
          if (v218 != 1)
          {
            sub_1B4975024(v212, &qword_1EB8A6650, &unk_1B4D2FDC0);
          }
        }

        else
        {
          v216 = v270;
          sub_1B49752F8(v212, v270, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
          v197 = v289;
        }

        FitnessPlusProperties.init(_:)(v216, &v334);
        v158 = v157;
        v222 = v264;
        v194 = v312;
        v141 = v315;
        v196 = v329;
        v332 = v334;
        v333 = v335;
        v239 = v275;
        v240 = swift_dynamicCast();
        v316 = *(v317 + 56);
        v316(v239, v240 ^ 1u, 1, v222);
        v195 = v239;
        v191 = v322;
        v192 = v323;
      }

      (*(v192 + 32))(v191, v195, v318);
      sub_1B4974FBC(v141 + *(v321 + 28), v197, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v241 = *(v194 + 48);
      v225 = v196;
      if (v241(v197, 1, v193) == 1)
      {
        *v198 = 0;
        *(v198 + 8) = 0;
        *(v198 + 16) = 0;
        v242 = v198 + *(v193 + 28);
        sub_1B4D17BBC();
        sub_1B497538C(v141, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        if (v241(v197, 1, v193) != 1)
        {
          sub_1B4975024(v197, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }
      }

      else
      {
        sub_1B497538C(v141, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        sub_1B49752F8(v197, v198, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      v229 = v198;
    }

    v228 = v296;
    v183 = v328;
    goto LABEL_63;
  }

  v123 = v324;
  sub_1B49752F8(v75, v324, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  v124 = v305;
  sub_1B4974FBC(v123 + v320[5], v305, &qword_1EB8A6668, &qword_1B4D1A658);
  v125 = *(v302 + 48);
  v126 = v303;
  if (v125(v124, 1, v303) == 1)
  {
    v127 = MEMORY[0x1E69E7CC0];
    v128 = v311;
    *v311 = MEMORY[0x1E69E7CC0];
    *(v128 + 1) = v127;
    v129 = &v128[v126[6]];
    sub_1B4D17BBC();
    v130 = v78;
    v131 = v126[7];
    v132 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v132 - 8) + 56))(&v128[v131], 1, 1, v132);
    v133 = v126[8];
    v134 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
    v135 = &v128[v133];
    v78 = v130;
    (*(*(v134 - 8) + 56))(v135, 1, 1, v134);
    v136 = v125(v124, 1, v126);
    v137 = v295;
    v139 = v329;
    v138 = v330;
    if (v136 != 1)
    {
      sub_1B4975024(v124, &qword_1EB8A6668, &qword_1B4D1A658);
    }
  }

  else
  {
    v128 = v311;
    sub_1B49752F8(v124, v311, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v137 = v295;
    v139 = v329;
    v138 = v330;
  }

  v159 = v326;
  WorkoutPropertiesQuery.init(_:)(v128, v304);
  v158 = v159;
  if (v159)
  {
    sub_1B497538C(v137, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v105 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
    v106 = v324;
    goto LABEL_4;
  }

  v326 = v78;
  v172 = swift_dynamicCast();
  (*(v138 + 56))(v96, v172 ^ 1u, 1, v139);
  (*(v325 + 32))(v327, v96, v328);
  v173 = v320[6];
  v174 = v324;
  v175 = v283;
  sub_1B4974FBC(v324 + v173, v283, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v176 = v287;
  v321 = *(v285 + 48);
  v177 = (v321)(v175, 1, v287);
  sub_1B4975024(v175, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v177 == 1)
  {
    v178 = v274;
    v316 = *(v317 + 56);
    v316(v274, 1, 1, v264);
    v179 = v322;
    v180 = v323;
    v181 = Metrics;
    v182 = v312;
    v183 = v328;
    v184 = v329;
  }

  else
  {
    v205 = v267;
    sub_1B4974FBC(v174 + v173, v267, &qword_1EB8A6660, &unk_1B4D2FDB0);
    v206 = v321;
    v207 = (v321)(v205, 1, v176);
    v181 = Metrics;
    if (v207 == 1)
    {
      v208 = v268;
      *v268 = 0;
      v208[1] = 0;
      v208[2] = MEMORY[0x1E69E7CC0];
      v209 = v208 + *(v176 + 28);
      sub_1B4D17BBC();
      v210 = v206(v205, 1, v176);
      v184 = v329;
      if (v210 != 1)
      {
        sub_1B4975024(v205, &qword_1EB8A6660, &unk_1B4D2FDB0);
      }
    }

    else
    {
      v208 = v268;
      sub_1B49752F8(v205, v268, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      v184 = v329;
    }

    WorkoutProperties.init(_:)(v208, &v334);
    v220 = v264;
    v182 = v312;
    v221 = v317;
    v332 = v334;
    v333 = v335;
    v178 = v274;
    v231 = swift_dynamicCast();
    v316 = *(v221 + 56);
    v316(v178, v231 ^ 1u, 1, v220);
    v179 = v322;
    v180 = v323;
    v183 = v328;
  }

  (*(v180 + 32))(v179, v178, v318);
  v232 = v324;
  v233 = v277;
  sub_1B4974FBC(v324 + v320[7], v277, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v234 = *(v182 + 48);
  v225 = v184;
  if (v234(v233, 1, v181) == 1)
  {
    v235 = v181;
    v236 = v276;
    *v276 = 0;
    v236[1] = 0;
    *(v236 + 16) = 0;
    v237 = v236 + *(v235 + 28);
    sub_1B4D17BBC();
    sub_1B497538C(v232, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    if (v234(v233, 1, v235) != 1)
    {
      sub_1B4975024(v233, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }

    v229 = v236;
  }

  else
  {
    sub_1B497538C(v232, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v238 = v276;
    sub_1B49752F8(v233, v276, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v229 = v238;
  }

  v228 = v296;
LABEL_63:
  v243 = *v229;
  v244 = v229[1];
  v245 = *(v229 + 16);
  sub_1B497538C(v229, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4975024(v326, &qword_1EB8A6688, &qword_1B4D1A660);
  v246 = v325;
  (*(v325 + 16))(v228, v327, v183);
  v247 = v330;
  v248 = v225;
  if ((*(v330 + 48))(v228, 1, v225) == 1)
  {
    (*(v246 + 8))(v228, v183);
    v249 = v318;
LABEL_67:
    _s7FailureOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v255 = xmmword_1B4D1A640;
    swift_willThrow();
    sub_1B497538C(v295, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    (*(v323 + 8))(v322, v249);
    return (*(v246 + 8))(v327, v183);
  }

  LODWORD(v324) = v245;
  v250 = v317;
  v326 = v158;
  v321 = *(v247 + 32);
  (v321)(v297, v228, v248);
  v252 = v322;
  v251 = v323;
  v253 = v294;
  v249 = v318;
  (*(v323 + 16))(v294, v322, v318);
  v254 = v264;
  if ((*(v250 + 48))(v253, 1, v264) == 1)
  {
    (*(v247 + 8))(v297, v248);
    (*(v251 + 8))(v253, v249);
    v246 = v325;
    v183 = v328;
    goto LABEL_67;
  }

  sub_1B497538C(v295, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  (*(v251 + 8))(v252, v249);
  (*(v325 + 8))(v327, v328);
  v256 = v254;
  v257 = *(v250 + 32);
  v258 = v248;
  v259 = v271;
  v257(v271, v253, v256);
  v260 = v272;
  (v321)(v272, v297, v258);
  v261 = type metadata accessor for SnapshotQueryResult();
  v262 = *(v261 + 36);
  v257((v260 + v262), v259, v256);
  result = (v316)(v260 + v262, 0, 1, v256);
  v263 = v260 + *(v261 + 40);
  *v263 = v243;
  *(v263 + 8) = v244;
  *(v263 + 16) = v324;
  *(v263 + 24) = v243 + v244;
  return result;
}

uint64_t SnapshotQueryResult.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  v3 = *(a1 + 16);
  sub_1B49754C4(&qword_1EB8A6690, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B497343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a1;
  v82 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v7 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for FitnessPlusPropertiesQuery();
  v9 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v101 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v80 - v12;
  v84 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for WorkoutPropertiesQuery();
  v15 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v80 - v18;
  v88 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v19 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RingsPropertiesQuery();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  v27 = sub_1B4D1880C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  v30 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = &v80 - v31;
  v102 = a3;
  v103 = a4;
  v33 = *(type metadata accessor for SnapshotQueryResult() + 36);
  v95 = TupleTypeMetadata2;
  v34 = *(TupleTypeMetadata2 + 48);
  v99 = *(v27 - 8);
  (*(v99 + 16))(v32, a2 + v33, v27);
  v98 = *(AssociatedTypeWitness - 8);
  v35 = *(v98 + 16);
  v107 = v34;
  v96 = a2;
  v35(&v32[v34], a2, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6720, &qword_1B4D1F7B0);
  if (swift_dynamicCast())
  {
    v36 = AssociatedTypeWitness;
    v38 = v104;
    v37 = v105;
    v39 = v106;
    v81 = v36;
    if (swift_dynamicCast())
    {
      v40 = v90;
      v41 = sub_1B49752F8(v26, v90, type metadata accessor for RingsPropertiesQuery);
      MEMORY[0x1EEE9AC00](v41);
      v42 = v103;
      *(&v80 - 8) = v102;
      *(&v80 - 7) = v42;
      *(&v80 - 6) = v40;
      *(&v80 - 5) = v38;
      *(&v80 - 4) = v37;
      *(&v80 - 3) = v39;
      *(&v80 - 2) = v96;
      sub_1B49754C4(&qword_1EB8A6748, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v43 = v89;
      v44 = v97;
      sub_1B4D17DAC();
      if (v44)
      {

        sub_1B497538C(v40, type metadata accessor for RingsPropertiesQuery);
        (*(v98 + 8))(&v32[v107], v81);
LABEL_23:
        v70 = v99;
        return (*(v70 + 8))(v32, v27);
      }

      v71 = v87;
      sub_1B4975024(v87, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v43, v71, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      v72 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
      sub_1B497538C(v40, type metadata accessor for RingsPropertiesQuery);
      v73 = v81;
LABEL_22:
      (*(v98 + 8))(&v32[v107], v73);
      goto LABEL_23;
    }

    AssociatedTypeWitness = v81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6728, &qword_1B4D1A750);
  v45 = swift_dynamicCast();
  v46 = v100;
  v47 = v101;
  if (v45)
  {
    v48 = v104;
    v49 = v105;
    v50 = v106;
    v51 = v92;
    if (swift_dynamicCast())
    {
      v52 = v51;
      v53 = AssociatedTypeWitness;
      v47 = v86;
      v54 = sub_1B49752F8(v52, v86, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v54);
      v55 = v103;
      *(&v80 - 8) = v102;
      *(&v80 - 7) = v55;
      *(&v80 - 6) = v47;
      *(&v80 - 5) = v48;
      *(&v80 - 4) = v49;
      *(&v80 - 3) = v50;
      *(&v80 - 2) = v96;
      sub_1B49754C4(&qword_1EB8A6740, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v56 = v85;
      v57 = v97;
      sub_1B4D17DAC();
      if (v57)
      {

        v58 = type metadata accessor for WorkoutPropertiesQuery;
LABEL_15:
        sub_1B497538C(v47, v58);
        (*(v98 + 8))(&v32[v107], v53);
        goto LABEL_23;
      }

      v74 = v87;
      sub_1B4975024(v87, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v56, v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v75 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = type metadata accessor for WorkoutPropertiesQuery;
      goto LABEL_21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6730, &qword_1B4D1A758);
  if (swift_dynamicCast())
  {
    v59 = v104;
    v60 = v105;
    v61 = v106;
    if (swift_dynamicCast())
    {
      v53 = AssociatedTypeWitness;
      v62 = sub_1B49752F8(v46, v47, type metadata accessor for FitnessPlusPropertiesQuery);
      MEMORY[0x1EEE9AC00](v62);
      v63 = v103;
      *(&v80 - 8) = v102;
      *(&v80 - 7) = v63;
      *(&v80 - 6) = v47;
      *(&v80 - 5) = v59;
      *(&v80 - 4) = v60;
      *(&v80 - 3) = v61;
      *(&v80 - 2) = v96;
      sub_1B49754C4(&qword_1EB8A6738, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v64 = v83;
      v65 = v97;
      sub_1B4D17DAC();
      if (v65)
      {

        v58 = type metadata accessor for FitnessPlusPropertiesQuery;
        goto LABEL_15;
      }

      v77 = v87;
      sub_1B4975024(v87, &qword_1EB8A6688, &qword_1B4D1A660);
      sub_1B49752F8(v64, v77, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v78 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
      v76 = type metadata accessor for FitnessPlusPropertiesQuery;
LABEL_21:
      sub_1B497538C(v47, v76);
      v73 = v53;
      goto LABEL_22;
    }
  }

  v104 = v27;
  swift_getMetatypeMetadata();
  v66 = sub_1B4D181AC();
  v68 = v67;
  _s7FailureOMa();
  swift_getWitnessTable();
  swift_allocError();
  *v69 = v66;
  v69[1] = v68;
  swift_willThrow();
  v70 = v94;
  v27 = v95;
  return (*(v70 + 8))(v32, v27);
}

uint64_t sub_1B4973F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v60 = a6;
  v58 = a5;
  v54 = a4;
  v55 = a3;
  v56 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v57 = *(Metrics - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  sub_1B49754C4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v24 = v55;
    v49 = v13;
    v50 = 0;
    v25 = Metrics;
    v48 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
    v26 = *(v48 + 20);
    v27 = v56;
    sub_1B4975024(v56 + v26, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B49752F8(v22, v27 + v26, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v28 = (*(v19 + 56))(v27 + v26, 0, 1, v18);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = v54;
      *(&v47 - 4) = v24;
      *(&v47 - 3) = v29;
      *(&v47 - 2) = v30;
      sub_1B49754C4(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      v31 = v50;
      result = sub_1B4D17DAC();
      v32 = v25;
      v33 = v57;
      v34 = v60;
      if (v31)
      {
        return result;
      }

      v50 = 0;
      v35 = v48;
      v36 = *(v48 + 24);
      sub_1B4975024(v27 + v36, &qword_1EB8A6678, &qword_1B4D3CE20);
      sub_1B49752F8(v17, v27 + v36, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      (*(v51 + 56))(v27 + v36, 0, 1, v14);
    }

    else
    {
      v32 = v25;
      v33 = v57;
      v34 = v60;
      v35 = v48;
    }

    v37 = type metadata accessor for SnapshotQueryResult();
    v38 = (v34 + *(v37 + 40));
    v39 = *(v38 + 16);
    v40 = *(v38 + 3);
    v41 = *v38;
    v42 = MEMORY[0x1EEE9AC00](v37);
    *(&v47 - 2) = v43;
    *(&v47 - 16) = v44;
    *(&v47 - 1) = v42;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v45 = v49;
    sub_1B4D17DAC();
    v46 = *(v35 + 28);
    sub_1B4975024(v27 + v46, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v45, v27 + v46, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v33 + 56))(v27 + v46, 0, 1, v32);
  }

  return result;
}

uint64_t sub_1B497447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v60 = a6;
  v58 = a5;
  v54 = a4;
  v55 = a3;
  v56 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v57 = *(Metrics - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  sub_1B49754C4(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v24 = v55;
    v49 = v13;
    v50 = 0;
    v25 = Metrics;
    v48 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
    v26 = *(v48 + 20);
    v27 = v56;
    sub_1B4975024(v56 + v26, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B49752F8(v22, v27 + v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v28 = (*(v19 + 56))(v27 + v26, 0, 1, v18);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = v54;
      *(&v47 - 4) = v24;
      *(&v47 - 3) = v29;
      *(&v47 - 2) = v30;
      sub_1B49754C4(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      v31 = v50;
      result = sub_1B4D17DAC();
      v32 = v25;
      v33 = v57;
      v34 = v60;
      if (v31)
      {
        return result;
      }

      v50 = 0;
      v35 = v48;
      v36 = *(v48 + 24);
      sub_1B4975024(v27 + v36, &qword_1EB8A6660, &unk_1B4D2FDB0);
      sub_1B49752F8(v17, v27 + v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      (*(v51 + 56))(v27 + v36, 0, 1, v14);
    }

    else
    {
      v32 = v25;
      v33 = v57;
      v34 = v60;
      v35 = v48;
    }

    v37 = type metadata accessor for SnapshotQueryResult();
    v38 = (v34 + *(v37 + 40));
    v39 = *(v38 + 16);
    v40 = *(v38 + 3);
    v41 = *v38;
    v42 = MEMORY[0x1EEE9AC00](v37);
    *(&v47 - 2) = v43;
    *(&v47 - 16) = v44;
    *(&v47 - 1) = v42;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v45 = v49;
    sub_1B4D17DAC();
    v46 = *(v35 + 28);
    sub_1B4975024(v27 + v46, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v45, v27 + v46, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v33 + 56))(v27 + v46, 0, 1, v32);
  }

  return result;
}

uint64_t sub_1B497496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v60 = a6;
  v58 = a5;
  v54 = a4;
  v55 = a3;
  v56 = a1;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v57 = *(Metrics - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  sub_1B49754C4(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  result = sub_1B4D17DAC();
  if (!v8)
  {
    v24 = v55;
    v49 = v13;
    v50 = 0;
    v25 = Metrics;
    v48 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
    v26 = *(v48 + 20);
    v27 = v56;
    sub_1B4975024(v56 + v26, &qword_1EB8A6658, &qword_1B4D1A650);
    sub_1B49752F8(v22, v27 + v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v28 = (*(v19 + 56))(v27 + v26, 0, 1, v18);
    if (v58)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = v54;
      *(&v47 - 4) = v24;
      *(&v47 - 3) = v29;
      *(&v47 - 2) = v30;
      sub_1B49754C4(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      v31 = v50;
      result = sub_1B4D17DAC();
      v32 = v25;
      v33 = v57;
      v34 = v60;
      if (v31)
      {
        return result;
      }

      v50 = 0;
      v35 = v48;
      v36 = *(v48 + 24);
      sub_1B4975024(v27 + v36, &qword_1EB8A6650, &unk_1B4D2FDC0);
      sub_1B49752F8(v17, v27 + v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      (*(v51 + 56))(v27 + v36, 0, 1, v14);
    }

    else
    {
      v32 = v25;
      v33 = v57;
      v34 = v60;
      v35 = v48;
    }

    v37 = type metadata accessor for SnapshotQueryResult();
    v38 = (v34 + *(v37 + 40));
    v39 = *(v38 + 16);
    v40 = *(v38 + 3);
    v41 = *v38;
    v42 = MEMORY[0x1EEE9AC00](v37);
    *(&v47 - 2) = v43;
    *(&v47 - 16) = v44;
    *(&v47 - 1) = v42;
    sub_1B49754C4(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v45 = v49;
    sub_1B4D17DAC();
    v46 = *(v35 + 28);
    sub_1B4975024(v27 + v46, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B49752F8(v45, v27 + v46, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    return (*(v33 + 56))(v27 + v46, 0, 1, v32);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B4974FBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B4975024(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B4975134()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence19SnapshotQueryResultV7Failure33_044BC95952B0291D09E5BA4ABBA0CA80LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B49751A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B49751F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B4975250(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B49752F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497538C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49754C4(unint64_t *a1, void (*a2)(uint64_t))
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

void RingsPropertyRecord.dimensions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
}

uint64_t sub_1B497558C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t RingsPropertyRecord.propertyKind.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t RingsPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
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

uint64_t RingsPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int16 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 2);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 18) = v7;
  return sub_1B496F398(a4, a5 + 24);
}

uint64_t RingsPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 18);
  result = sub_1B497558C(v3 + 24, a3 + 24);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8;
  return result;
}

unint64_t sub_1B49757F4()
{
  result = qword_1EDC390F0;
  if (!qword_1EDC390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390F0);
  }

  return result;
}

unint64_t sub_1B497584C()
{
  result = qword_1EB8A6758;
  if (!qword_1EB8A6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6758);
  }

  return result;
}

void sub_1B49758AC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
}

uint64_t sub_1B49758C0()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B497590C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B4975998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 16);
  v8 = *(v3 + 18);
  result = sub_1B497558C(v3 + 24, a3 + 24);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 18) = v8;
  return result;
}

unint64_t sub_1B49759F0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4975A20();
  result = sub_1B4975A74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4975A20()
{
  result = qword_1EDC39598;
  if (!qword_1EDC39598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39598);
  }

  return result;
}

unint64_t sub_1B4975A74()
{
  result = qword_1EDC395A8;
  if (!qword_1EDC395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395A8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B4975AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B4975B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4975B88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C616F47;
  v3 = 0x736569726F6C6163;
  v4 = a1;
  v5 = 0x6573696372657865;
  if (a1 == 2)
  {
    v6 = 0xEC0000006C616F47;
  }

  else
  {
    v5 = 0x616F47646E617473;
    v6 = 0xE90000000000006CLL;
  }

  v7 = 0x756E694D65766F6DLL;
  v8 = 0xEF6C616F47736574;
  if (!a1)
  {
    v7 = 0x736569726F6C6163;
    v8 = 0xEC0000006C616F47;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6573696372657865;
  if (a2 == 2)
  {
    v12 = 0xEC0000006C616F47;
  }

  else
  {
    v11 = 0x616F47646E617473;
    v12 = 0xE90000000000006CLL;
  }

  if (a2)
  {
    v3 = 0x756E694D65766F6DLL;
    v2 = 0xEF6C616F47736574;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B4975CE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1702260589;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646E617473;
    }

    else
    {
      v4 = 0x65657268546C6C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xED000073676E6952;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573696372657865;
    }

    else
    {
      v4 = 1702260589;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646E617473;
  if (a2 != 2)
  {
    v8 = 0x65657268546C6C61;
    v7 = 0xED000073676E6952;
  }

  if (a2)
  {
    v2 = 0x6573696372657865;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4975E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1801807223;
    }

    else
    {
      v4 = 7954788;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1918985593;
    }

    else
    {
      v4 = 1919252069;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1801807223;
    }

    else
    {
      v8 = 7954788;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1918985593;
    if (a2 != 3)
    {
      v5 = 1919252069;
    }

    if (a2 == 2)
    {
      v6 = 0x68746E6F6DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1B4D18DCC();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1B4975F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "le_description>.";
  if (a1 > 3u)
  {
    v4 = "ne of my favorites.";
    v5 = 0xD00000000000006DLL;
    if (a1 != 6)
    {
      v5 = 0xD000000000000061;
      v4 = " this is one of my favorites.";
    }

    v6 = "is of genre <genre>.";
    v7 = 0xD000000000000047;
    if (a1 != 4)
    {
      v7 = 0xD000000000000053;
      v6 = "is one of my favorites.";
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = "ia_title> by <artist>.";
    v5 = 0xD000000000000050;
    if (a1 != 2)
    {
      v5 = 0xD000000000000044;
      v4 = "f genre <genre>.";
    }

    v6 = "istening to <media_title>.";
    v7 = 0xD000000000000036;
    if (!a1)
    {
      v7 = 0xD00000000000002ALL;
      v6 = "le_description>.";
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ne of my favorites.";
        v2 = 0xD00000000000006DLL;
      }

      else
      {
        v3 = " this is one of my favorites.";
        v2 = 0xD000000000000061;
      }
    }

    else if (a2 == 4)
    {
      v3 = "is of genre <genre>.";
      v2 = 0xD000000000000047;
    }

    else
    {
      v3 = "is one of my favorites.";
      v2 = 0xD000000000000053;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ia_title> by <artist>.";
      v2 = 0xD000000000000050;
    }

    else
    {
      v3 = "f genre <genre>.";
      v2 = 0xD000000000000044;
    }
  }

  else if (a2)
  {
    v3 = "istening to <media_title>.";
    v2 = 0xD000000000000036;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B497617C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ringsPropertiesThisWeek";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "_type> workouts.";
      v4 = 0xD0000000000000CELL;
    }

    else
    {
      v5 = "ime_last_week_total_distance>.";
      v4 = 0xD0000000000000CALL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000070;
    }

    else
    {
      v4 = 0xD000000000000069;
    }

    if (v3)
    {
      v5 = "<activity_type> workouts.";
    }

    else
    {
      v5 = "ringsPropertiesThisWeek";
    }
  }

  if (a2 > 1u)
  {
    v2 = "_type> workouts.";
    v6 = "ime_last_week_total_distance>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000CELL;
    }

    else
    {
      v8 = 0xD0000000000000CALL;
    }
  }

  else
  {
    v6 = "<activity_type> workouts.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000070;
    }

    else
    {
      v8 = 0xD000000000000069;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B49762A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x7275446C61746F74;
  v6 = 0xED00006E6F697461;
  if (a1 != 4)
  {
    v5 = 0x746E656D6F6DLL;
    v6 = 0xE600000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0x44676E6974696177;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0x687370616E537369;
  v8 = 0xEF7972657551746FLL;
  if (a1 != 1)
  {
    v7 = 0xD000000000000012;
    v8 = 0x80000001B4D4E5A0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x7972657571;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEF6E6F6974617275;
      if (v9 != 0x44676E6974696177)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006E6F697461;
      if (v9 != 0x7275446C61746F74)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x746E656D6F6DLL)
      {
LABEL_35:
        v12 = sub_1B4D18DCC();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEF7972657551746FLL;
      if (v9 != 0x687370616E537369)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x80000001B4D4E5A0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x7972657571)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_1B49764C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "e of <distance_milestone>.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000019;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = "lastSixWeeksWorkoutProperties";
    }

    else
    {
      v5 = "ness_plus_modality> workout.";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3)
    {
      v5 = "rmatted_average_duration>.";
    }

    else
    {
      v5 = "e of <distance_milestone>.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "lastSixWeeksWorkoutProperties";
    v6 = "ness_plus_modality> workout.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000019;
    }

    else
    {
      v8 = 0xD000000000000015;
    }
  }

  else
  {
    v6 = "rmatted_average_duration>.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001ALL;
    }

    else
    {
      v8 = 0xD000000000000019;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B49765C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726165;
  v3 = 0x59664F68746E6F6DLL;
  v4 = a1;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001B4D48D10;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656557664F796164;
  v10 = 0xE90000000000006BLL;
  if (a1 != 1)
  {
    v9 = 0x6144664F72756F68;
    v10 = 0xE900000000000079;
  }

  if (!a1)
  {
    v9 = 0x59664F68746E6F6DLL;
    v10 = 0xEB00000000726165;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0x7974697669746361;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001B4D48D10;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v13 = 0x6E6F697461636F6CLL;
    }

    v2 = 0xEC00000065707954;
    if (v11 != v13)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE90000000000006BLL;
      if (v11 != 0x656557664F796164)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v3 = 0x6144664F72756F68;
    v2 = 0xE900000000000079;
  }

  if (v11 != v3)
  {
LABEL_31:
    v14 = sub_1B4D18DCC();
    goto LABEL_32;
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

uint64_t sub_1B49767B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (a1 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (a1 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (a1 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F6DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756874;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697266;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746173;
      goto LABEL_31;
    }

    v2 = 0x7961646E7573;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657574;
  }

  else
  {
    v2 = 0x616473656E646577;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B4D18DCC();
  }

  return v14 & 1;
}

uint64_t sub_1B4976994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "date>. <sub_templates>";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000003BLL;
    }

    else
    {
      v5 = 0xD00000000000002FLL;
    }

    if (v3 == 2)
    {
      v4 = "closure_count> times.";
    }

    else
    {
      v4 = "etition with <friend_name>.";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "> workouts this week.";
    }

    else
    {
      v4 = "date>. <sub_templates>";
    }

    v5 = 0xD000000000000045;
  }

  v6 = "closure_count> times.";
  v7 = 0xD00000000000003BLL;
  if (a2 != 2)
  {
    v7 = 0xD00000000000002FLL;
    v6 = "etition with <friend_name>.";
  }

  if (a2)
  {
    v2 = "> workouts this week.";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000045;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4976AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6C62616E45746F6ELL;
  v4 = a1;
  v5 = 0xD000000000000018;
  v6 = 0x5364696C61766E69;
  v7 = 0xEC00000065746174;
  if (a1 != 4)
  {
    v6 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v8 = 0x80000001B4D48E90;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7964616552746F6ELL;
  if (a1 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001B4D48E70;
  }

  if (!a1)
  {
    v10 = 0x6C62616E45746F6ELL;
    v9 = 0xEA00000000006465;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001B4D48E90;
      if (v11 != 0xD000000000000018)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000065746174;
      if (v11 != 0x5364696C61766E69)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x726568746FLL)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7964616552746F6ELL)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000011;
      v2 = 0x80000001B4D48E70;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_1B4D18DCC();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_1B4976C84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x726F6F646E69;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x726F6F6474756FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x657461576E65706FLL;
    v4 = 0xE900000000000072;
  }

  else
  {
    v3 = 0x676E696D6D697773;
    v4 = 0xEC0000006C6F6F50;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x726F6F646E69;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x657461576E65706FLL;
    v6 = 0xE900000000000072;
    if (a2 != 3)
    {
      v5 = 0x676E696D6D697773;
      v6 = 0xEC0000006C6F6F50;
    }

    if (a2 == 2)
    {
      v7 = 0x726F6F6474756FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1B4D18DCC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1B4976E20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "y <speed_delta_from_baseline>.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "formatted_days> this week.";
      v4 = 0xD000000000000042;
    }

    else
    {
      v5 = ", including today.";
      v4 = 0xD000000000000046;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000009ALL;
    }

    else
    {
      v4 = 0xD000000000000058;
    }

    if (v3)
    {
      v5 = "me> every day this week.";
    }

    else
    {
      v5 = "y <speed_delta_from_baseline>.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "formatted_days> this week.";
    v6 = ", including today.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000042;
    }

    else
    {
      v8 = 0xD000000000000046;
    }
  }

  else
  {
    v6 = "me> every day this week.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000009ALL;
    }

    else
    {
      v8 = 0xD000000000000058;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4976F4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "y and the day before.";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "<duration_delta_from_baseline>.";
      v4 = 0xD0000000000000A5;
    }

    else
    {
      v5 = "delta_from_baseline>.";
      v4 = 0xD0000000000000AELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD0000000000000AFLL;
    }

    else
    {
      v4 = 0xD0000000000000A6;
    }

    if (v3)
    {
      v5 = "_delta_from_baseline>.";
    }

    else
    {
      v5 = "y and the day before.";
    }
  }

  if (a2 > 1u)
  {
    v2 = "<duration_delta_from_baseline>.";
    v6 = "delta_from_baseline>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000A5;
    }

    else
    {
      v8 = 0xD0000000000000AELL;
    }
  }

  else
  {
    v6 = "_delta_from_baseline>.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD0000000000000AFLL;
    }

    else
    {
      v8 = 0xD0000000000000A6;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4977070(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "sponds to Hard.";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000041;
    }

    else
    {
      v5 = 0xD000000000000025;
    }

    if (v3)
    {
      v4 = " workout of the week.";
    }

    else
    {
      v4 = "sponds to Hard.";
    }
  }

  else if (a1 == 2)
  {
    v4 = "ber_of_workouts>.";
    v5 = 0xD000000000000079;
  }

  else if (a1 == 3)
  {
    v4 = "orkout_type_with_dates>\n}";
    v5 = 0xD000000000000055;
  }

  else
  {
    v4 = " workout of the week.";
    v5 = 0xD00000000000010FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000041;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a2)
    {
      v2 = " workout of the week.";
    }
  }

  else if (a2 == 2)
  {
    v2 = "ber_of_workouts>.";
    v6 = 0xD000000000000079;
  }

  else
  {
    v2 = "orkout_type_with_dates>\n}";
    if (a2 == 3)
    {
      v6 = 0xD000000000000055;
    }

    else
    {
      v6 = 0xD00000000000010FLL;
    }

    if (a2 != 3)
    {
      v2 = " workout of the week.";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B49771D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000041;
  v3 = "poolSwimDistanceWithTime";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "d_date_and_time> in <location>.";
    v12 = 0xD00000000000004DLL;
    if (a1 != 6)
    {
      v12 = 0xD00000000000005BLL;
      v11 = "d_date_and_time> with <goal>.";
    }

    v13 = "ime> in <location> with <goal>.";
    v14 = 0xD00000000000004FLL;
    if (a1 == 4)
    {
      v14 = 0xD000000000000041;
    }

    else
    {
      v13 = "d_date_and_time>.";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000045;
    v6 = "ime> in <location>.";
    v7 = 0xD000000000000051;
    if (a1 != 2)
    {
      v7 = 0xD00000000000005FLL;
      v6 = "ime> with <goal>.";
    }

    v8 = "start_date_and_time>.";
    if (a1)
    {
      v5 = 0xD000000000000053;
    }

    else
    {
      v8 = "poolSwimDistanceWithTime";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "d_date_and_time> in <location>.";
        v2 = 0xD00000000000004DLL;
      }

      else
      {
        v3 = "d_date_and_time> with <goal>.";
        v2 = 0xD00000000000005BLL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "ime> in <location> with <goal>.";
    }

    else
    {
      v3 = "d_date_and_time>.";
      v2 = 0xD00000000000004FLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ime> in <location>.";
      v2 = 0xD000000000000051;
    }

    else
    {
      v3 = "ime> with <goal>.";
      v2 = 0xD00000000000005FLL;
    }
  }

  else if (a2)
  {
    v3 = "start_date_and_time>.";
    v2 = 0xD000000000000053;
  }

  else
  {
    v2 = 0xD000000000000045;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B49773E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "evious_date_range>.";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "VoiceAssetSettingsChanged";
    v12 = 0xD000000000000026;
    if (a1 != 6)
    {
      v12 = 0xD00000000000002BLL;
      v11 = "gistry.devicedidunpair";
    }

    v13 = "vailabilityChanged";
    v14 = 0xD000000000000019;
    if (a1 == 4)
    {
      v14 = 0xD000000000000016;
    }

    else
    {
      v13 = "VoiceAssetCacheChanged";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000030;
    v6 = "ailability.notification";
    v7 = 0xD000000000000033;
    if (a1 != 2)
    {
      v7 = 0xD000000000000022;
      v6 = "itialSyncCompletion";
    }

    v8 = "rwinNotification";
    if (a1)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v8 = "evious_date_range>.";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "VoiceAssetSettingsChanged";
        v2 = 0xD000000000000026;
      }

      else
      {
        v3 = "gistry.devicedidunpair";
        v2 = 0xD00000000000002BLL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "vailabilityChanged";
    }

    else
    {
      v3 = "VoiceAssetCacheChanged";
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "ailability.notification";
      v2 = 0xD000000000000033;
    }

    else
    {
      v3 = "itialSyncCompletion";
      v2 = 0xD000000000000022;
    }
  }

  else if (a2)
  {
    v3 = "rwinNotification";
    v2 = 0xD000000000000027;
  }

  else
  {
    v2 = 0xD000000000000030;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B49775F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000033;
  v3 = "guration";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000033;
    }

    else
    {
      v6 = 0xD00000000000003BLL;
    }

    if (v4)
    {
      v7 = "ck with my 28-day baseline.";
    }

    else
    {
      v7 = "guration";
    }
  }

  else if (a1 == 2)
  {
    v7 = "my 28-day baseline.";
    v6 = 0xD000000000000033;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = "My 7-day training load is well above my 28-day baseline.";
    }

    else
    {
      v5 = "My 7-day training load is well below my 28-day baseline.";
    }

    v7 = (v5 - 32);
    v6 = 0xD000000000000038;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "ck with my 28-day baseline.";
    }

    else
    {
      v2 = 0xD00000000000003BLL;
    }
  }

  else if (a2 == 2)
  {
    v3 = "my 28-day baseline.";
  }

  else
  {
    if (a2 == 3)
    {
      v8 = "My 7-day training load is well above my 28-day baseline.";
    }

    else
    {
      v8 = "My 7-day training load is well below my 28-day baseline.";
    }

    v3 = (v8 - 32);
    v2 = 0xD000000000000038;
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4977748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000009DLL;
  v3 = " rings: <sub_templates>";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = " is <exercise_ring_percentage>.";
    v12 = 0xD000000000000102;
    if (a1 != 6)
    {
      v12 = 0xD0000000000000B1;
      v11 = "_ring_percentage>.";
    }

    v13 = "ng is <move_ring_percentage>.";
    v14 = 0xD0000000000000D7;
    if (a1 != 4)
    {
      v14 = 0xD0000000000000DFLL;
      v13 = "rcise_ring_percentage>.";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD0000000000000BFLL;
    v6 = "<move_ring_percentage>.";
    v7 = 0xD0000000000000E6;
    if (a1 != 2)
    {
      v7 = 0xD00000000000009DLL;
      v6 = "move_ring_percentage>.";
    }

    v8 = "ring is <move_ring_percentage>.";
    if (a1)
    {
      v5 = 0xD0000000000000C7;
    }

    else
    {
      v8 = " rings: <sub_templates>";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = " is <exercise_ring_percentage>.";
        v2 = 0xD000000000000102;
      }

      else
      {
        v3 = "_ring_percentage>.";
        v2 = 0xD0000000000000B1;
      }
    }

    else if (a2 == 4)
    {
      v3 = "ng is <move_ring_percentage>.";
      v2 = 0xD0000000000000D7;
    }

    else
    {
      v3 = "rcise_ring_percentage>.";
      v2 = 0xD0000000000000DFLL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "<move_ring_percentage>.";
      v2 = 0xD0000000000000E6;
    }

    else
    {
      v3 = "move_ring_percentage>.";
    }
  }

  else if (a2)
  {
    v3 = "ring is <move_ring_percentage>.";
    v2 = 0xD0000000000000C7;
  }

  else
  {
    v2 = 0xD0000000000000BFLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4D18DCC();
  }

  return v15 & 1;
}

uint64_t sub_1B4977958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000027;
  v3 = "activitySummaryContext";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "_week>. It's a weekday.";
    }

    else
    {
      v4 = "activitySummaryContext";
    }

    v5 = 0xD000000000000027;
  }

  else if (a1 == 2)
  {
    v4 = "_week>. It's a weekend.";
    v5 = 0xD000000000000048;
  }

  else if (a1 == 3)
  {
    v4 = "f the week in my locale.";
    v5 = 0xD000000000000045;
  }

  else
  {
    v4 = "he week in my locale.";
    v5 = 0xD000000000000047;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "_week>. It's a weekday.";
    }
  }

  else if (a2 == 2)
  {
    v3 = "_week>. It's a weekend.";
    v2 = 0xD000000000000048;
  }

  else
  {
    v3 = "f the week in my locale.";
    if (a2 == 3)
    {
      v2 = 0xD000000000000045;
    }

    else
    {
      v2 = 0xD000000000000047;
    }

    if (a2 != 3)
    {
      v3 = "he week in my locale.";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1B4D18DCC();
  }

  return v6 & 1;
}

uint64_t sub_1B4977AB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ng";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "e> is <ring_percentage>.";
      v4 = 0xD0000000000000C4;
    }

    else
    {
      v5 = "s <ring_percentage>.";
      v4 = 0xD000000000000084;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD0000000000000A8;
    }

    else
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v3)
    {
      v5 = "l my activity rings today.";
    }

    else
    {
      v5 = "ng";
    }
  }

  if (a2 > 1u)
  {
    v2 = "e> is <ring_percentage>.";
    v6 = "s <ring_percentage>.";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD0000000000000C4;
    }

    else
    {
      v8 = 0xD000000000000084;
    }
  }

  else
  {
    v6 = "l my activity rings today.";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD0000000000000A8;
    }

    else
    {
      v8 = 0xD00000000000002ALL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4977BDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73746867696C66;
  if (a1 != 5)
  {
    v5 = 0x65636E6174736964;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6E6952646E617473;
  v7 = 0xE900000000000067;
  if (a1 != 3)
  {
    v6 = 0x7370657473;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x756E694D65766F6DLL;
  v9 = 0xEE00676E69526574;
  if (a1 != 1)
  {
    v8 = 0x6573696372657865;
    v9 = 0xEC000000676E6952;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x676E695265766F6DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE00676E69526574;
        if (v10 != 0x756E694D65766F6DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEC000000676E6952;
        if (v10 != 0x6573696372657865)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E695265766F6DLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73746867696C66)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65636E6174736964)
      {
LABEL_39:
        v13 = sub_1B4D18DCC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E6952646E617473)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7370657473)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1B4977E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656557664F796164;
    }

    else
    {
      v5 = 0x59664F68746E6F6DLL;
    }

    if (v2)
    {
      v6 = 0xE90000000000006BLL;
    }

    else
    {
      v6 = 0xEB00000000726165;
    }
  }

  else
  {
    v3 = 0x7974696C61646F6DLL;
    v4 = 0xEC000000646E694BLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x80000001B4D48DB0;
    }

    if (a1 == 2)
    {
      v5 = 0x6144664F72756F68;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000079;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x656557664F796164;
    }

    else
    {
      v11 = 0x59664F68746E6F6DLL;
    }

    if (a2)
    {
      v10 = 0xE90000000000006BLL;
    }

    else
    {
      v10 = 0xEB00000000726165;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x7974696C61646F6DLL;
    v8 = 0x80000001B4D48DB0;
    if (a2 == 3)
    {
      v8 = 0xEC000000646E694BLL;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x6144664F72756F68;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1B4977FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = 0x6B726F5774736562;
      v5 = 0xEB0000000074756FLL;
    }

    else if (a1 == 4)
    {
      v4 = 0x547942746E756F63;
      v5 = 0xEE0072656E696172;
    }

    else
    {
      v4 = 0x756F436C61746F74;
      v5 = 0xEA0000000000746ELL;
    }
  }

  else
  {
    v3 = 0x80000001B4D48B80;
    if (a1 != 1)
    {
      v3 = 0x80000001B4D48BA0;
    }

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001ALL;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001B4D48B40;
    }
  }

  if (a2 > 2u)
  {
    v9 = 0x547942746E756F63;
    v10 = 0xEE0072656E696172;
    if (a2 != 4)
    {
      v9 = 0x756F436C61746F74;
      v10 = 0xEA0000000000746ELL;
    }

    if (a2 == 3)
    {
      v11 = 0x6B726F5774736562;
    }

    else
    {
      v11 = v9;
    }

    if (a2 == 3)
    {
      v8 = 0xEB0000000074756FLL;
    }

    else
    {
      v8 = v10;
    }

    if (v4 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = 0x80000001B4D48BA0;
    if (a2 == 1)
    {
      v6 = 0x80000001B4D48B80;
    }

    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x80000001B4D48B40;
    }

    if (v4 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v5 != v8)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1B49781EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000062;
  v3 = "userWorkoutPreferences";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = " only one workout.";
      v5 = 0xD00000000000008DLL;
    }

    else
    {
      v6 = " of <workout_count> workouts.";
      v5 = 0xD000000000000075;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000062;
    }

    else
    {
      v5 = 0xD00000000000007ALL;
    }

    if (v4)
    {
      v6 = "tion> in only one workout.";
    }

    else
    {
      v6 = "userWorkoutPreferences";
    }
  }

  if (a2 > 1u)
  {
    v3 = " only one workout.";
    v7 = 0xD00000000000008DLL;
    v8 = " of <workout_count> workouts.";
    v2 = 0xD000000000000075;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000007ALL;
    v8 = "tion> in only one workout.";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B4D18DCC();
  }

  return v12 & 1;
}

uint64_t sub_1B497830C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7365636E657265;
  v3 = 0xD000000000000016;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000019;
    if (v4 == 2)
    {
      v5 = 0xD00000000000001DLL;
      v6 = 0x80000001B4D4AAF0;
    }

    else
    {
      v6 = 0x80000001B4D4AB10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x6665725072657375;
    }

    if (v4)
    {
      v6 = 0x80000001B4D4BF20;
    }

    else
    {
      v6 = 0xEF7365636E657265;
    }
  }

  v7 = 0xD00000000000001DLL;
  v8 = 0x80000001B4D4AB10;
  if (a2 == 2)
  {
    v8 = 0x80000001B4D4AAF0;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (a2)
  {
    v2 = 0x80000001B4D4BF20;
  }

  else
  {
    v3 = 0x6665725072657375;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4978440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65636E6174736964;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x796772656E65;
    if (a1 != 3)
    {
      v4 = 0xD000000000000018;
      v3 = 0x80000001B4D4AB70;
    }

    if (a1 == 2)
    {
      v5 = 1701669236;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x65636E6174736964;
    }

    else
    {
      v11 = 1852141679;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x796772656E65;
    v8 = 0x80000001B4D4AB70;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000018;
    }

    if (a2 == 2)
    {
      v9 = 1701669236;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1B4D18DCC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

FitnessIntelligence::RingsPropertyDimensionsField_optional __swiftcall RingsPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RingsPropertyDimensionsField.rawValue.getter()
{
  v1 = 0x656557664F796164;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x59664F68746E6F6DLL;
  }
}

uint64_t sub_1B4978674(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656557664F796164;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x59664F68746E6F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726165;
  }

  v7 = 0x656557664F796164;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x646573756170;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x59664F68746E6F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726165;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B497877C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4978828()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B49788C0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4978974(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0xE90000000000006BLL;
  v5 = 0x656557664F796164;
  if (v2 != 1)
  {
    v5 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x59664F68746E6F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FitnessIntelligence::RingsPropertyDimensions __swiftcall RingsPropertyDimensions.mask(with:)(Swift::OpaquePointer_optional with)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  if (with.value._rawValue)
  {
    v16 = v2[2];
    v17 = v2[1];
    v19 = *v2;
    v18 = v1;
    v6 = *(with.value._rawValue + 2);
    v7 = with.value._rawValue + 32;
    v8 = v6;
    v9 = with.value._rawValue + 32;
    while (1)
    {
      if (!v8)
      {
        v19 = 12;
        goto LABEL_10;
      }

      v11 = *v9;
      if (v11 != 1 && v11 != 2)
      {
        break;
      }

      v10 = sub_1B4D18DCC();

      ++v9;
      --v8;
      if (v10)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    v12 = v6;
    v13 = v7;
    while (1)
    {
      if (!v12)
      {
        v4 = 7;
        goto LABEL_20;
      }

      if (*v13 && *v13 != 2)
      {
        break;
      }

      v14 = sub_1B4D18DCC();

      ++v13;
      --v12;
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    v4 = v17;
    while (1)
    {
LABEL_20:
      if (!v6)
      {
        v5 = 2;
        v1 = v18;
        v3 = v19;
        goto LABEL_27;
      }

      if (*v7 && *v7 != 1)
      {
        break;
      }

      v15 = sub_1B4D18DCC();

      ++v7;
      --v6;
      if (v15)
      {
        goto LABEL_26;
      }
    }

LABEL_26:
    v1 = v18;
    v3 = v19;
    v5 = v16;
  }

LABEL_27:
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  return *&with.value._rawValue;
}

BOOL sub_1B4978C4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 5)
    {
      if (*v3 > 8u)
      {
        if (v8 == 9)
        {
          v14 = 0xE700000000000000;
          v13 = 0x7265626F74636FLL;
          if (v4 <= 5)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v8 == 10)
          {
            v15 = 1702260590;
          }

          else
          {
            v15 = 1701012836;
          }

          v13 = v15 | 0x7265626D00000000;
          if (v4 <= 5)
          {
            goto LABEL_51;
          }
        }
      }

      else if (v8 == 6)
      {
        v14 = 0xE400000000000000;
        v13 = 2037151082;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }

      else if (v8 == 7)
      {
        v14 = 0xE600000000000000;
        v13 = 0x747375677561;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v13 = 0x65626D6574706573;
        v14 = 0xE900000000000072;
        if (v4 <= 5)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v9 = 1701737834;
      if (v8 == 4)
      {
        v9 = 7954797;
      }

      v10 = 0xE300000000000000;
      if (v8 != 4)
      {
        v10 = 0xE400000000000000;
      }

      if (v8 == 3)
      {
        v9 = 0x6C69727061;
        v10 = 0xE500000000000000;
      }

      v11 = 0x7972617572626566;
      if (v8 == 1)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v11 = 0x686372616DLL;
        v12 = 0xE500000000000000;
      }

      if (!*v3)
      {
        v11 = 0x797261756E616ALL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v4 <= 5)
      {
LABEL_51:
        v16 = 1701737834;
        if (v4 == 4)
        {
          v16 = 7954797;
        }

        v17 = 0xE300000000000000;
        if (v4 != 4)
        {
          v17 = 0xE400000000000000;
        }

        if (v4 == 3)
        {
          v16 = 0x6C69727061;
          v17 = 0xE500000000000000;
        }

        v18 = 0x7972617572626566;
        if (v4 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v18 = 0x686372616DLL;
          v19 = 0xE500000000000000;
        }

        if (!v4)
        {
          v18 = 0x797261756E616ALL;
          v19 = 0xE700000000000000;
        }

        v20 = v4 <= 2;
        goto LABEL_63;
      }
    }

    v16 = 0x7265626D65766F6ELL;
    if (v4 != 10)
    {
      v16 = 0x7265626D65636564;
    }

    v17 = 0xE800000000000000;
    if (v4 == 9)
    {
      v16 = 0x7265626F74636FLL;
      v17 = 0xE700000000000000;
    }

    v18 = 0x65626D6574706573;
    if (v4 == 7)
    {
      v18 = 0x747375677561;
    }

    v19 = 0xE900000000000072;
    if (v4 == 7)
    {
      v19 = 0xE600000000000000;
    }

    if (v4 == 6)
    {
      v18 = 2037151082;
      v19 = 0xE400000000000000;
    }

    v20 = v4 <= 8;
LABEL_63:
    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v16;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }

    if (v13 == v21 && v14 == v22)
    {

      return v6 != 0;
    }

    v5 = sub_1B4D18DCC();

    ++v3;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1B4978F94(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6E776F646C6F6F63;
    switch(*v4)
    {
      case 1:
        v8 = 0xE400000000000000;
        v9 = 1701998435;
        break;
      case 2:
        v8 = 0xE700000000000000;
        v9 = 0x676E696C637963;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x65636E6164;
        break;
      case 4:
        v8 = 0xE90000000000006ELL;
        v9 = 0x7552646564697567;
        break;
      case 5:
        v8 = 0xEA00000000006B6CLL;
        v9 = 0x6157646564697567;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = 1953065320;
        break;
      case 7:
        v9 = 0x69786F626B63696BLL;
        v8 = 0xEA0000000000676ELL;
        break;
      case 8:
        v8 = 0xEA00000000006E6FLL;
        v9 = 0x697461746964656DLL;
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = 0x736574616C6970;
        break;
      case 0xA:
        v8 = 0xE600000000000000;
        v9 = 0x676E69776F72;
        break;
      case 0xB:
        v9 = 0x6874676E65727473;
        break;
      case 0xC:
        v9 = 0x6C696D6461657274;
        v8 = 0xE90000000000006CLL;
        break;
      case 0xD:
        v8 = 0xE400000000000000;
        v9 = 1634168697;
        break;
      case 0xE:
        v8 = 0xE500000000000000;
        v9 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v10 = 0xE800000000000000;
    v11 = 0x6E776F646C6F6F63;
    switch(a1)
    {
      case 1:
        v10 = 0xE400000000000000;
        if (v9 == 1701998435)
        {
          goto LABEL_47;
        }

        goto LABEL_2;
      case 2:
        v10 = 0xE700000000000000;
        if (v9 != 0x676E696C637963)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 3:
        v10 = 0xE500000000000000;
        if (v9 != 0x65636E6164)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 4:
        v10 = 0xE90000000000006ELL;
        if (v9 != 0x7552646564697567)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 5:
        v10 = 0xEA00000000006B6CLL;
        if (v9 != 0x6157646564697567)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 6:
        v10 = 0xE400000000000000;
        if (v9 != 1953065320)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 7:
        v10 = 0xEA0000000000676ELL;
        if (v9 != 0x69786F626B63696BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 8:
        v10 = 0xEA00000000006E6FLL;
        if (v9 != 0x697461746964656DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 9:
        v10 = 0xE700000000000000;
        if (v9 != 0x736574616C6970)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 10:
        v10 = 0xE600000000000000;
        v11 = 0x676E69776F72;
        goto LABEL_46;
      case 11:
        if (v9 != 0x6874676E65727473)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 12:
        v10 = 0xE90000000000006CLL;
        if (v9 != 0x6C696D6461657274)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 13:
        v10 = 0xE400000000000000;
        if (v9 != 1634168697)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      case 14:
        v10 = 0xE500000000000000;
        if (v9 != 0x726568746FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_47:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_1B4D18DCC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_1B49793B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v15 = *v5;
    v8 = a3();
    v10 = v9;
    if (v8 == a3() && v10 == v11)
    {

      return v6 != 0;
    }

    v13 = sub_1B4D18DCC();

    ++v5;
  }

  while ((v13 & 1) == 0);
  return v6 != 0;
}

Swift::Bool __swiftcall RingsPropertyDimensions.matches(_:)(FitnessIntelligence::RingsPropertyDimensionsFilters_optional a1)
{
  a1.value.dayOfWeek._rawValue = *a1.value.monthOfYear._rawValue;
  if (!*a1.value.monthOfYear._rawValue)
  {
    return 1;
  }

  rawValue = a1.value.monthOfYear._rawValue;
  LODWORD(a1.value.monthOfYear._rawValue) = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = rawValue[1];
  v6 = rawValue[2];
  if (LODWORD(a1.value.monthOfYear._rawValue) != 12 && *(a1.value.dayOfWeek._rawValue + 2) && !sub_1B4978C4C(a1.value.monthOfYear._rawValue, a1.value.dayOfWeek._rawValue))
  {
    return 0;
  }

  v27 = v6;
  if (v3 != 7)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = (v5 + 32);
      do
      {
        if (!v7)
        {
          return 0;
        }

        v12 = *v8;
        if (v12 <= 2)
        {
          v16 = 0x616473656E646577;
          if (v12 == 1)
          {
            v16 = 0x79616473657574;
          }

          v17 = 0xE900000000000079;
          if (v12 == 1)
          {
            v17 = 0xE700000000000000;
          }

          if (*v8)
          {
            v13 = v16;
          }

          else
          {
            v13 = 0x7961646E6F6DLL;
          }

          if (*v8)
          {
            v14 = v17;
          }

          else
          {
            v14 = 0xE600000000000000;
          }

          if (v3 > 2)
          {
LABEL_42:
            v18 = 0x7961646E7573;
            if (v3 == 5)
            {
              v18 = 0x7961647275746173;
              v19 = 0xE800000000000000;
            }

            else
            {
              v19 = 0xE600000000000000;
            }

            v20 = 0x7961647372756874;
            if (v3 == 3)
            {
              v21 = 0xE800000000000000;
            }

            else
            {
              v20 = 0x796164697266;
              v21 = 0xE600000000000000;
            }

            if (v3 <= 4)
            {
              v22 = v20;
            }

            else
            {
              v22 = v18;
            }

            if (v3 <= 4)
            {
              v10 = v21;
            }

            else
            {
              v10 = v19;
            }

            if (v13 != v22)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }

        else if (*v8 > 4u)
        {
          if (v12 == 5)
          {
            v14 = 0xE800000000000000;
            v13 = 0x7961647275746173;
            if (v3 > 2)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v13 = 0x7961646E7573;
            v14 = 0xE600000000000000;
            if (v3 > 2)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (v12 == 3)
          {
            v13 = 0x7961647372756874;
          }

          else
          {
            v13 = 0x796164697266;
          }

          if (v12 == 3)
          {
            v14 = 0xE800000000000000;
          }

          else
          {
            v14 = 0xE600000000000000;
          }

          if (v3 > 2)
          {
            goto LABEL_42;
          }
        }

        if (v3)
        {
          if (v3 == 1)
          {
            v15 = 0x79616473657574;
          }

          else
          {
            v15 = 0x616473656E646577;
          }

          if (v3 == 1)
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xE900000000000079;
          }

          if (v13 != v15)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = 0xE600000000000000;
          if (v13 != 0x7961646E6F6DLL)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        if (v14 == v10)
        {

          break;
        }

LABEL_11:
        v11 = sub_1B4D18DCC();

        ++v8;
        --v7;
      }

      while ((v11 & 1) == 0);
    }
  }

  if (v4 != 2)
  {
    v23 = *(v27 + 16);
    if (v23)
    {
      v24 = (v27 + 32);
      while (1)
      {
        v26 = *v24++;
        v25 = v26;
        if (v26 != 2 && ((v25 ^ v4) & 1) == 0)
        {
          break;
        }

        if (!--v23)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t RingsPropertyDimensions.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0 == 12)
  {
    sub_1B4D18EAC();
    if (v1 != 7)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1B4D18EAC();
    if (v2 == 2)
    {
      return sub_1B4D18EAC();
    }

    goto LABEL_4;
  }

  sub_1B4D18EAC();
  MonthOfYear.rawValue.getter();
  sub_1B4D1820C();

  if (v1 == 7)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B4D18EAC();
  sub_1B4D1820C();

  if (v2 != 2)
  {
LABEL_4:
    sub_1B4D18EAC();
  }

  return sub_1B4D18EAC();
}

uint64_t RingsPropertyDimensions.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4979978()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49799D0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence23RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (*a1 == 12)
  {
    if (v4 == 12)
    {
      goto LABEL_3;
    }
  }

  else if (v4 != 12)
  {
    v13 = *a1;
    v7 = MonthOfYear.rawValue.getter();
    v9 = v8;
    if (v7 == MonthOfYear.rawValue.getter() && v9 == v10)
    {

      if (v2 == 7)
      {
LABEL_4:
        if (v5 != 7)
        {
          return 0;
        }

LABEL_12:
        if (v3 == 2)
        {
          if (v6 != 2)
          {
            return 0;
          }
        }

        else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
        {
          return 0;
        }

        return 1;
      }

LABEL_10:
      if (v5 == 7 || (sub_1B49767B8(v2, v5) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v11 = sub_1B4D18DCC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence23RingsPropertyDimensionsV10dimensions4from3forSayACGAA0C13Representable_p_AA0cD4KindOtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *a2;
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(*(v17 + 8) + 8))(&v30, v18);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v19 = sub_1B4D1796C();
  __swift_project_value_buffer(v19, qword_1EDC3CE48);
  CacheIndex.date(for:)(v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v15, v7, v8);
  v20 = *(v9 + 16);
  v20(v12, v15, v8);
  DayOfWeek.init(from:)(v12, &v30);
  v21 = v30;
  if (v30 == 7 || (v20(v12, v15, v8), MonthOfYear.init(from:)(v12, &v30), v22 = v30, v30 == 12))
  {
    (*(v9 + 8))(v15, v8);
    return MEMORY[0x1E69E7CC0];
  }

  else if (v16 <= 0x15 && ((1 << v16) & 0x38000F) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6798, &qword_1B4D1AA20);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B4D1A800;
    *(v24 + 32) = 1804;
    *(v24 + 34) = 2;
    (*(v9 + 8))(v15, v8);
    return v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6798, &qword_1B4D1AA20);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B4D1A800;
    v27 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    v28 = (*(v26 + 24))(v27, v26);
    *(v25 + 32) = v22;
    *(v25 + 33) = v21;
    *(v25 + 34) = v28 & 1;
    (*(v9 + 8))(v15, v8);
    return v25;
  }
}

unint64_t sub_1B4979F40()
{
  result = qword_1EB8A6760;
  if (!qword_1EB8A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6760);
  }

  return result;
}

unint64_t sub_1B4979F94(void *a1)
{
  a1[1] = sub_1B4979FCC();
  a1[2] = sub_1B4979F40();
  result = sub_1B497A020();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4979FCC()
{
  result = qword_1EB8A6768;
  if (!qword_1EB8A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6768);
  }

  return result;
}

unint64_t sub_1B497A020()
{
  result = qword_1EB8A6770;
  if (!qword_1EB8A6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6770);
  }

  return result;
}

unint64_t sub_1B497A078()
{
  result = qword_1EB8A6778;
  if (!qword_1EB8A6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6780, &qword_1B4D1A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6778);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B497A128()
{
  result = qword_1EB8A6788;
  if (!qword_1EB8A6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6788);
  }

  return result;
}

unint64_t sub_1B497A180()
{
  result = qword_1EDC36F60[0];
  if (!qword_1EDC36F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC36F60);
  }

  return result;
}

unint64_t sub_1B497A1D4(uint64_t a1)
{
  *(a1 + 8) = sub_1B497A204();
  result = sub_1B497A258();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B497A204()
{
  result = qword_1EDC390E8;
  if (!qword_1EDC390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390E8);
  }

  return result;
}

unint64_t sub_1B497A258()
{
  result = qword_1EDC39100;
  if (!qword_1EDC39100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39100);
  }

  return result;
}

unint64_t sub_1B497A2B0()
{
  result = qword_1EDC390F8;
  if (!qword_1EDC390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyDimensionsField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RingsPropertyDimensionsField(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RingsPropertyDimensions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyDimensions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
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
      *(result + 2) = a2 + 2;
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

uint64_t sub_1B497A590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B497A600(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v6 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPropertiesQuery();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B497CC9C(a1, v8, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload())
  {
    v13 = type metadata accessor for FitnessContextQueryDescriptor;
    v14 = v8;
LABEL_7:
    sub_1B497CC3C(v14, v13);
    v29 = 0;
    return v29 & 1;
  }

  sub_1B497CD04(v8, v12, type metadata accessor for WorkoutPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v12, a2) & 1) == 0)
  {
    v13 = type metadata accessor for WorkoutPropertiesQuery;
    v14 = v12;
    goto LABEL_7;
  }

  v33[7] = v2;
  v15 = &v12[*(v9 + 20)];
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  v20 = v15[5];
  v33[0] = *v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v21 = *(v9 + 20);
  v31[0] = a2;
  v22 = (a2 + v21);
  v24 = *v22;
  v23 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v28 = v22[4];
  v27 = v22[5];
  v31[1] = v25;
  v31[2] = v28;
  v31[3] = v27;
  v32[0] = v24;
  v32[1] = v23;
  v32[2] = v26;
  v32[3] = v25;
  v32[4] = v28;
  v32[5] = v27;

  LOBYTE(v17) = _s19FitnessIntelligence32WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v33, v32);

  if (v17)
  {
    v29 = sub_1B4A0DD68(*&v12[*(v9 + 24)], *(v31[0] + *(v9 + 24)));
    sub_1B497CC3C(v12, type metadata accessor for WorkoutPropertiesQuery);
  }

  else
  {
    sub_1B497CC3C(v12, type metadata accessor for WorkoutPropertiesQuery);
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1B497A920@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v26 = *(Descriptor - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1B497CC9C(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B497CD04(v10, v7, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v25(v7);
      if (v3)
      {
        sub_1B497CC3C(v7, type metadata accessor for FitnessContextQueryDescriptor);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1B497CC3C(v7, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1B497CD04(v7, v24, type metadata accessor for FitnessContextQueryDescriptor);
    v20 = v21;
    v19 = 0;
    return (*(v26 + 56))(v20, v19, 1, Descriptor);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v24;
        return (*(v26 + 56))(v20, v19, 1, Descriptor);
      }

      v13 = *(a2 + 64 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B497ABAC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 23;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 23;
    }
  }

  return v7;
}

uint64_t sub_1B497AC18(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v6 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for RingsPropertiesQuery();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B497CC9C(a1, v8, type metadata accessor for FitnessContextQueryDescriptor);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for FitnessContextQueryDescriptor;
    v23 = v8;
LABEL_9:
    sub_1B497CC3C(v23, v22);
    v21 = 0;
    return v21 & 1;
  }

  sub_1B497CD04(v8, v12, type metadata accessor for RingsPropertiesQuery);
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v12, a2) & 1) == 0)
  {
    v22 = type metadata accessor for RingsPropertiesQuery;
    v23 = v12;
    goto LABEL_9;
  }

  v27 = v2;
  v13 = *(v9 + 20);
  v14 = *&v12[v13];
  v15 = *&v12[v13 + 8];
  v16 = *&v12[v13 + 16];
  v17 = (a2 + v13);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];

  if ((sub_1B4A0A1C0(v14, v18) & 1) == 0 || (sub_1B4A0A568(v15, v19) & 1) == 0)
  {

    goto LABEL_11;
  }

  v26 = sub_1B4A0A7D0(v16, v20);

  if ((v26 & 1) == 0)
  {
LABEL_11:
    sub_1B497CC3C(v12, type metadata accessor for RingsPropertiesQuery);
    v21 = 0;
    return v21 & 1;
  }

  v21 = sub_1B4A0D340(*&v12[*(v9 + 24)], *(a2 + *(v9 + 24)));
  sub_1B497CC3C(v12, type metadata accessor for RingsPropertiesQuery);
  return v21 & 1;
}

uint64_t _s19FitnessIntelligence0A19ContextQueryPlannerV8coalesceyShyAA0ac9CoalescedD7RequestVGShyAA0acdH0VGFZ_0(uint64_t a1)
{
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A0, &unk_1B4D1AA50);
  v2 = *(*(v307 - 8) + 64);
  MEMORY[0x1EEE9AC00](v307);
  v306 = &v252 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v305 = &v252 - v5;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest();
  v303 = *(Request - 8);
  v304 = Request;
  v7 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v276 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for RingsPropertiesQuery();
  v9 = *(*(v269 - 1) + 64);
  MEMORY[0x1EEE9AC00](v269);
  v278 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v277 = &v252 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v291 = &v252 - v14;
  v272 = type metadata accessor for DateRangeDescriptor();
  v15 = *(v272 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v262 = &v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v260 = &v252 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v261 = &v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v268 = &v252 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v252 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v265 = &v252 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v283 = &v252 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v289 = &v252 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v282 = &v252 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v288 = &v252 - v37;
  v264 = type metadata accessor for WorkoutPropertiesQuery();
  v38 = *(*(v264 - 1) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v273 = &v252 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v274 = &v252 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v290 = &v252 - v43;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v45 = *(Descriptor - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v292 = &v252 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v271 = &v252 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v281 = &v252 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v280 = &v252 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v270 = &v252 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v279 = &v252 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v252 - v59;
  v61 = type metadata accessor for FitnessContextQueryRequest();
  v299 = *(v61 - 8);
  v300 = v61;
  v62 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v252 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v297 = (&v252 - v66);
  v284 = sub_1B4D1777C();
  v286 = *(v284 - 8);
  v67 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v263 = &v252 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v275 = &v252 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v285 = &v252 - v72;
  sub_1B4D1776C();
  v309 = sub_1B4C946F0(MEMORY[0x1E69E7CC0]);
  v311 = v309;
  v73 = a1 + 56;
  v74 = 1 << *(a1 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(a1 + 56);
  v77 = (v74 + 63) >> 6;
  v302 = v45;
  v287 = (v45 + 48);
  v78 = v64;
  v266 = (v15 + 48);
  v267 = (v15 + 56);

  v79 = 0;
  v298 = 0;
  v296 = xmmword_1B4D1A800;
  v294 = v60;
  v295 = a1;
  v308 = Descriptor;
  v301 = v64;
  for (i = v77; ; v77 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v76)
        {
          do
          {
            v80 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              __break(1u);
              goto LABEL_83;
            }

            if (v80 >= v77)
            {

              if (qword_1EDC3CEC8 == -1)
              {
                goto LABEL_58;
              }

              goto LABEL_90;
            }

            v76 = *(v73 + 8 * v80);
            ++v79;
          }

          while (!v76);
          v79 = v80;
        }

        v81 = __clz(__rbit64(v76));
        v76 &= v76 - 1;
        v82 = v297;
        sub_1B497CC9C(*(a1 + 48) + *(v299 + 72) * (v81 | (v79 << 6)), v297, type metadata accessor for FitnessContextQueryRequest);
        sub_1B497CD04(v82, v78, type metadata accessor for FitnessContextQueryRequest);
        v83 = *(v300 + 20);
        sub_1B497CC9C(v78 + v83, v60, type metadata accessor for FitnessContextQueryDescriptor);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v93 = v291;
        v94 = sub_1B497CD04(v60, v291, type metadata accessor for RingsPropertiesQuery);
        MEMORY[0x1EEE9AC00](v94);
        *(&v252 - 2) = v93;
        v95 = v309;

        v96 = v289;
        v97 = v298;
        sub_1B497A920(sub_1B497CBFC, v95, v289);
        v298 = v97;

        v98 = v283;
        v99 = v96;
        v100 = v308;
        sub_1B4974FBC(v99, v283, &qword_1EB8A67B0, &unk_1B4D1AA60);
        if ((*v287)(v98, 1, v100) == 1)
        {
          sub_1B4975024(v98, &qword_1EB8A67B0, &unk_1B4D1AA60);
          v77 = i;
LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
          inited = swift_initStackObject();
          *(inited + 16) = v296;
          v148 = v301;
          v149 = v301[1];
          *(inited + 32) = *v301;
          *(inited + 40) = v149;

          v150 = sub_1B49B554C(inited);
          swift_setDeallocating();
          v78 = v148;
          sub_1B497CBA8(inited + 32);
          v151 = v311;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v310 = v151;
          sub_1B4BA3834(v150, v148 + v83, isUniquelyReferenced_nonNull_native);
          v309 = v310;
          v311 = v310;
          a1 = v295;
          goto LABEL_50;
        }

        v129 = v98;
        v130 = v281;
        sub_1B497CD04(v129, v281, type metadata accessor for FitnessContextQueryDescriptor);
        v131 = v271;
        sub_1B497CC9C(v130, v271, type metadata accessor for FitnessContextQueryDescriptor);
        v132 = swift_getEnumCaseMultiPayload();
        v77 = i;
        if (v132 != 1)
        {
          sub_1B497CC3C(v130, type metadata accessor for FitnessContextQueryDescriptor);
          sub_1B497CC3C(v131, type metadata accessor for FitnessContextQueryDescriptor);
          goto LABEL_35;
        }

        v133 = v277;
        sub_1B497CD04(v131, v277, type metadata accessor for RingsPropertiesQuery);
        v134 = v268;
        v135 = v272;
        (*v267)(v268, 1, 1, v272);
        v136 = v269[7];
        v137 = *(v291 + v136);
        v310 = *(v133 + v136);

        sub_1B49972B4(v138);
        v258 = v310;
        v139 = v261;
        sub_1B4974FBC(v134, v261, &qword_1EB8A67A8, &qword_1B4D1E060);
        v140 = *v266;
        if ((*v266)(v139, 1, v135) == 1)
        {
          v141 = v133;
          v142 = v262;
          sub_1B497CC9C(v141, v262, type metadata accessor for DateRangeDescriptor);
          if (v140(v139, 1, v135) != 1)
          {
            sub_1B4975024(v139, &qword_1EB8A67A8, &qword_1B4D1E060);
          }
        }

        else
        {
          v142 = v262;
          sub_1B497CD04(v139, v262, type metadata accessor for DateRangeDescriptor);
        }

        v162 = v269;
        v163 = v269[6];
        v164 = (v277 + v269[5]);
        v165 = *v164;
        v166 = v164[1];
        v256 = v164[2];
        v257 = v165;
        v167 = *(v277 + v163);
        v168 = v142;
        v169 = v278;
        sub_1B497CD04(v168, v278, type metadata accessor for DateRangeDescriptor);

        v170 = v166;

        v171 = v256;

        sub_1B4975024(v268, &qword_1EB8A67A8, &qword_1B4D1E060);
        v172 = (v169 + v162[5]);
        v173 = v258;
        *v172 = v257;
        v172[1] = v170;
        v172[2] = v171;
        *(v169 + v162[6]) = v167;
        *(v169 + v162[7]) = v173;
        v174 = v309;
        if (*(v309 + 16))
        {
          v175 = v281;
          v176 = sub_1B49E9FEC(v281);
          a1 = v295;
          if (v177)
          {
            v309 = *(*(v174 + 56) + 8 * v176);
          }

          else
          {
            v309 = MEMORY[0x1E69E7CD0];
          }
        }

        else
        {
          v309 = MEMORY[0x1E69E7CD0];
          a1 = v295;
          v175 = v281;
        }

        v197 = v280;
        sub_1B497CC9C(v175, v280, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49CA830(0, v197);
        sub_1B497CC9C(v278, v197, type metadata accessor for RingsPropertiesQuery);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
        v198 = swift_initStackObject();
        *(v198 + 16) = v296;
        v199 = v301;
        v200 = v301[1];
        *(v198 + 32) = *v301;
        *(v198 + 40) = v200;

        v309 = sub_1B49A9FA4(v198, v309);
        swift_setDeallocating();
        sub_1B497CBA8(v198 + 32);
        v201 = v311;
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v201;
        sub_1B4BA3834(v309, v197, v202);
        sub_1B497CC3C(v197, type metadata accessor for FitnessContextQueryDescriptor);
        v309 = v310;
        v311 = v310;
        sub_1B497CC3C(v278, type metadata accessor for RingsPropertiesQuery);
        v78 = v199;
        sub_1B497CC3C(v277, type metadata accessor for RingsPropertiesQuery);
        sub_1B497CC3C(v281, type metadata accessor for FitnessContextQueryDescriptor);
LABEL_50:
        sub_1B4975024(v289, &qword_1EB8A67B0, &unk_1B4D1AA60);
        sub_1B497CC3C(v78, type metadata accessor for FitnessContextQueryRequest);
        sub_1B497CC3C(v291, type metadata accessor for RingsPropertiesQuery);
        v60 = v294;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      v85 = v290;
      v86 = sub_1B497CD04(v60, v290, type metadata accessor for WorkoutPropertiesQuery);
      MEMORY[0x1EEE9AC00](v86);
      *(&v252 - 2) = v85;
      v87 = v309;

      v88 = v288;
      v89 = v298;
      sub_1B497A920(sub_1B497CC1C, v87, v288);
      v298 = v89;

      v90 = v88;
      v91 = v308;
      v92 = v282;
      sub_1B4974FBC(v90, v282, &qword_1EB8A67B0, &unk_1B4D1AA60);
      if ((*v287)(v92, 1, v91) == 1)
      {
        sub_1B4975024(v92, &qword_1EB8A67B0, &unk_1B4D1AA60);
        v77 = i;
LABEL_25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
        v123 = swift_initStackObject();
        *(v123 + 16) = v296;
        v124 = v301;
        v125 = v301[1];
        *(v123 + 32) = *v301;
        *(v123 + 40) = v125;

        v126 = sub_1B49B554C(v123);
        swift_setDeallocating();
        v78 = v124;
        sub_1B497CBA8(v123 + 32);
        v127 = v311;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v127;
        sub_1B4BA3834(v126, v124 + v83, v128);
        v309 = v310;
        v311 = v310;
        goto LABEL_26;
      }

      v118 = v92;
      v119 = v279;
      sub_1B497CD04(v118, v279, type metadata accessor for FitnessContextQueryDescriptor);
      v120 = v270;
      sub_1B497CC9C(v119, v270, type metadata accessor for FitnessContextQueryDescriptor);
      v121 = swift_getEnumCaseMultiPayload();
      v122 = v274;
      v77 = i;
      if (v121)
      {
        sub_1B497CC3C(v119, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B497CC3C(v120, type metadata accessor for FitnessContextQueryDescriptor);
        goto LABEL_25;
      }

      sub_1B497CD04(v120, v274, type metadata accessor for WorkoutPropertiesQuery);
      v153 = v265;
      v154 = v272;
      (*v267)(v265, 1, 1, v272);
      v155 = v264[7];
      v156 = *(v290 + v155);
      v310 = *(v122 + v155);

      sub_1B49972CC(v157);
      v255 = v310;
      v158 = v259;
      sub_1B4974FBC(v153, v259, &qword_1EB8A67A8, &qword_1B4D1E060);
      v159 = *v266;
      if ((*v266)(v158, 1, v154) == 1)
      {
        v160 = v260;
        sub_1B497CC9C(v122, v260, type metadata accessor for DateRangeDescriptor);
        v161 = v160;
        if (v159(v158, 1, v272) != 1)
        {
          sub_1B4975024(v158, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v161 = v260;
        sub_1B497CD04(v158, v260, type metadata accessor for DateRangeDescriptor);
      }

      v178 = v264;
      v179 = v264[6];
      v180 = (v122 + v264[5]);
      v182 = *v180;
      v181 = v180[1];
      v183 = v180[3];
      v256 = v180[2];
      v257 = v181;
      v184 = v122;
      v185 = v180[5];
      v253 = v180[4];
      v254 = v182;
      v258 = *(v184 + v179);
      v186 = v161;
      v187 = v273;
      sub_1B497CD04(v186, v273, type metadata accessor for DateRangeDescriptor);

      v188 = v253;

      sub_1B4975024(v265, &qword_1EB8A67A8, &qword_1B4D1E060);
      v189 = (v187 + v178[5]);
      v190 = v256;
      v191 = v257;
      *v189 = v254;
      v189[1] = v191;
      v189[2] = v190;
      v189[3] = v183;
      v189[4] = v188;
      v189[5] = v185;
      *(v187 + v178[6]) = v258;
      *(v187 + v178[7]) = v255;
      v192 = v309;
      if (*(v309 + 16))
      {
        v193 = v279;
        v194 = sub_1B49E9FEC(v279);
        if (v195)
        {
          v196 = *(*(v192 + 56) + 8 * v194);
        }

        else
        {
          v196 = MEMORY[0x1E69E7CD0];
        }
      }

      else
      {
        v196 = MEMORY[0x1E69E7CD0];
        v193 = v279;
      }

      v203 = v280;
      sub_1B497CC9C(v193, v280, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B49CA830(0, v203);
      sub_1B497CC9C(v273, v203, type metadata accessor for WorkoutPropertiesQuery);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
      v204 = swift_initStackObject();
      *(v204 + 16) = v296;
      v205 = v301;
      v206 = v301[1];
      *(v204 + 32) = *v301;
      *(v204 + 40) = v206;

      v207 = sub_1B49A9FA4(v204, v196);
      swift_setDeallocating();
      sub_1B497CBA8(v204 + 32);
      v208 = v311;
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v310 = v208;
      sub_1B4BA3834(v207, v203, v209);
      sub_1B497CC3C(v203, type metadata accessor for FitnessContextQueryDescriptor);
      v309 = v310;
      v311 = v310;
      sub_1B497CC3C(v273, type metadata accessor for WorkoutPropertiesQuery);
      v78 = v205;
      sub_1B497CC3C(v274, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B497CC3C(v279, type metadata accessor for FitnessContextQueryDescriptor);
LABEL_26:
      sub_1B4975024(v288, &qword_1EB8A67B0, &unk_1B4D1AA60);
      sub_1B497CC3C(v78, type metadata accessor for FitnessContextQueryRequest);
      sub_1B497CC3C(v290, type metadata accessor for WorkoutPropertiesQuery);
      v60 = v294;
      a1 = v295;
    }

    a1 = v292;
    sub_1B497CC9C(v78 + v83, v292, type metadata accessor for FitnessContextQueryDescriptor);
    v101 = v309;
    if (*(v309 + 16) && (v102 = sub_1B49E9FEC(v78 + v83), (v103 & 1) != 0))
    {
      v104 = *(*(v101 + 56) + 8 * v102);
    }

    else
    {
      v104 = MEMORY[0x1E69E7CD0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
    v105 = swift_initStackObject();
    *(v105 + 16) = v296;
    v106 = v301[1];
    *(v105 + 32) = *v301;
    *(v105 + 40) = v106;

    v107 = sub_1B49A9FA4(v105, v104);
    swift_setDeallocating();
    sub_1B497CBA8(v105 + 32);
    v108 = v311;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v310 = v108;
    v110 = sub_1B49E9FEC(a1);
    v112 = *(v108 + 16);
    v113 = (v111 & 1) == 0;
    v114 = __OFADD__(v112, v113);
    v115 = v112 + v113;
    if (v114)
    {
      break;
    }

    v116 = v111;
    if (*(v108 + 24) < v115)
    {
      sub_1B49855D4(v115, v109);
      v110 = sub_1B49E9FEC(v292);
      if ((v116 & 1) != (v117 & 1))
      {
        result = sub_1B4D18E1C();
        __break(1u);
        return result;
      }

LABEL_32:
      v143 = v310;
      if (v116)
      {
        goto LABEL_33;
      }

      goto LABEL_55;
    }

    if (v109)
    {
      goto LABEL_32;
    }

    v210 = v110;
    sub_1B4989318();
    v110 = v210;
    v143 = v310;
    if (v116)
    {
LABEL_33:
      v144 = v143[7];
      v145 = *(v144 + 8 * v110);
      *(v144 + 8 * v110) = v107;

      v146 = v292;
      goto LABEL_56;
    }

LABEL_55:
    v211 = v110;
    v146 = v292;
    v212 = v280;
    sub_1B497CC9C(v292, v280, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B4BA3F30(v211, v212, v107, v143);
LABEL_56:
    v60 = v294;
    sub_1B497CC3C(v146, type metadata accessor for FitnessContextQueryDescriptor);
    v309 = v143;
    v311 = v143;
    v78 = v301;
    sub_1B497CC3C(v301, type metadata accessor for FitnessContextQueryRequest);
    sub_1B497CC3C(v60, type metadata accessor for FitnessContextQueryDescriptor);
    a1 = v295;
  }

  while (1)
  {
    __break(1u);
LABEL_90:
    swift_once();
LABEL_58:
    v213 = sub_1B4D17F6C();
    __swift_project_value_buffer(v213, qword_1EDC3CED0);
    v214 = v286;
    v215 = v275;
    v216 = v284;
    (*(v286 + 16))(v275, v285, v284);

    v217 = sub_1B4D17F5C();
    v218 = a1;
    a1 = sub_1B4D1873C();
    v219 = os_log_type_enabled(v217, a1);
    v220 = v276;
    v221 = v309;
    if (v219)
    {
      v222 = swift_slowAlloc();
      *v222 = 134218496;
      *(v222 + 4) = *(v218 + 16);

      *(v222 + 12) = 2048;
      *(v222 + 14) = *(v221 + 16);
      *(v222 + 22) = 2048;
      v223 = v263;
      sub_1B4D1776C();
      sub_1B4D176FC();
      v225 = v224;
      v226 = *(v214 + 8);
      v227 = v223;
      v221 = v309;
      v226(v227, v216);
      v297 = v226;
      v226(v215, v216);
      *(v222 + 24) = v225;
      _os_log_impl(&dword_1B4953000, v217, a1, "Coalesced %ld queries into %ld in %fs", v222, 0x20u);
      MEMORY[0x1B8C7DDA0](v222, -1, -1);
    }

    else
    {

      v297 = *(v214 + 8);
      v297(v215, v216);
    }

    v228 = *(v221 + 16);
    v229 = MEMORY[0x1E69E7CC0];
    if (!v228)
    {
      break;
    }

    v310 = MEMORY[0x1E69E7CC0];

    sub_1B4BCF03C(0, v228, 0);
    v229 = v310;
    v230 = (v221 + 64);
    v231 = -1 << *(v221 + 32);
    v232 = sub_1B4D188DC();
    v233 = 0;
    v309 = *(v221 + 36);
    v299 = v221 + 72;
    v300 = v228;
    v301 = (v221 + 64);
    while ((v232 & 0x8000000000000000) == 0 && v232 < 1 << *(v221 + 32))
    {
      v235 = v232 >> 6;
      if ((v230[v232 >> 6] & (1 << v232)) == 0)
      {
        goto LABEL_84;
      }

      if (v309 != *(v221 + 36))
      {
        goto LABEL_85;
      }

      v308 = v233;
      v236 = *(v221 + 48) + *(v302 + 72) * v232;
      v237 = v221;
      v238 = v305;
      sub_1B497CC9C(v236, v305, type metadata accessor for FitnessContextQueryDescriptor);
      v239 = *(*(v237 + 56) + 8 * v232);
      v240 = v238;
      v241 = v306;
      sub_1B497CD04(v240, v306, type metadata accessor for FitnessContextQueryDescriptor);
      *(v241 + *(v307 + 48)) = v239;
      sub_1B497CC9C(v241, v220 + *(v304 + 20), type metadata accessor for FitnessContextQueryDescriptor);
      *v220 = v239;
      swift_bridgeObjectRetain_n();
      sub_1B4975024(v241, &qword_1EB8A67A0, &unk_1B4D1AA50);
      v310 = v229;
      v243 = *(v229 + 16);
      v242 = *(v229 + 24);
      a1 = v243 + 1;
      if (v243 >= v242 >> 1)
      {
        sub_1B4BCF03C(v242 > 1, v243 + 1, 1);
        v229 = v310;
      }

      *(v229 + 16) = a1;
      sub_1B497CD04(v220, v229 + ((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v303 + 72) * v243, type metadata accessor for FitnessContextCoalescedQueryRequest);
      v234 = 1 << *(v237 + 32);
      if (v232 >= v234)
      {
        goto LABEL_86;
      }

      v221 = v237;
      v230 = v301;
      v244 = v301[v235];
      if ((v244 & (1 << v232)) == 0)
      {
        goto LABEL_87;
      }

      if (v309 != *(v221 + 36))
      {
        goto LABEL_88;
      }

      v245 = v244 & (-2 << (v232 & 0x3F));
      if (v245)
      {
        v234 = __clz(__rbit64(v245)) | v232 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        a1 = v235 << 6;
        v246 = v235 + 1;
        v247 = (v299 + 8 * v235);
        while (v246 < (v234 + 63) >> 6)
        {
          v249 = *v247++;
          v248 = v249;
          a1 += 64;
          ++v246;
          if (v249)
          {
            sub_1B497CD6C(v232, v309, 0);
            v234 = __clz(__rbit64(v248)) + a1;
            goto LABEL_64;
          }
        }

        sub_1B497CD6C(v232, v309, 0);
      }

LABEL_64:
      v233 = v308 + 1;
      v232 = v234;
      if (v308 + 1 == v300)
      {

        v216 = v284;
        goto LABEL_81;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
  }

LABEL_81:
  v250 = sub_1B4A02EB8(v229);

  v297(v285, v216);

  return v250;
}

uint64_t getEnumTagSinglePayload for FitnessContextQueryPlanner(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessContextQueryPlanner(_WORD *result, int a2, int a3)
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

uint64_t sub_1B497CC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B497CC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497CD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B497CD6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for FitnessContextDemoClient()
{
  result = qword_1EB8A67C0;
  if (!qword_1EB8A67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B497CDEC()
{
  result = sub_1B4D1796C();
  if (v1 <= 0x3F)
  {
    result = sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      result = sub_1B498AFB8(319, &qword_1EDC36DC8, 0x1E699C9F0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B497CEA8()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t sub_1B497CEEC()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t sub_1B497CF2C(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v2[68] = Descriptor;
  v4 = *(*(Descriptor - 8) + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v5 = type metadata accessor for FitnessContextQueryResult();
  v2[74] = v5;
  v6 = *(v5 - 8);
  v2[75] = v6;
  v7 = *(v6 + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B497D0B0, 0, 0);
}

uint64_t sub_1B497D0B0()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 592);
  v127 = *(v0 + 584);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1AA70;
  *(v0 + 424) = &type metadata for RingProgressFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D0, &unk_1B4D419B0);
  v129 = sub_1B4D181CC();
  v142 = v6;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  *(inited + 32) = v129;
  *(inited + 40) = v142;
  *(v0 + 432) = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v130 = sub_1B4D181CC();
  v143 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  *(inited + 48) = v130;
  *(inited + 56) = v143;
  v122 = sub_1B49B554C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = v2[5];
  v125 = v4 + *(type metadata accessor for FitnessContextDemoClient() + 20);
  v9 = sub_1B4D1777C();
  v10 = *(*(v9 - 8) + 16);
  v10(v1 + v8, v125, v9);
  swift_storeEnumTagMultiPayload();
  v11 = (v1 + v2[6]);
  v11[3] = type metadata accessor for ActivitySummaryContext();
  v11[4] = &protocol witness table for ActivitySummaryContext;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1B497E6EC(boxed_opaque_existential_1);
  *v1 = v122;
  v111 = v2;
  v13 = v1 + v2[7];
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 1) = xmmword_1B4D1AA80;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B4D1A800;
  *(v0 + 440) = &type metadata for CompletedWorkoutsFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E0, &qword_1B4D478F0);
  v131 = sub_1B4D181CC();
  v144 = v15;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E420);
  *(v14 + 32) = v131;
  *(v14 + 40) = v144;
  v16 = sub_1B49B554C(v14);
  swift_setDeallocating();
  sub_1B497CBA8(v14 + 32);
  v120 = v9;
  v10(v127, v125, v9);
  swift_storeEnumTagMultiPayload();
  *(v0 + 248) = &type metadata for WorkoutWeekContext;
  *(v0 + 256) = &protocol witness table for WorkoutWeekContext;
  v128 = v0;
  sub_1B497F0F0((v0 + 224));
  v17 = *(v0 + 664);
  v18 = *(v0 + 656);
  v105 = *(v0 + 640);
  v19 = *(v0 + 584);
  v106 = *(v0 + 576);
  v115 = *(v0 + 544);
  v102 = *(v0 + 648);
  v103 = *(v0 + 536);
  *v17 = v16;
  sub_1B498B198(v19, v17 + v111[5], type metadata accessor for FitnessContextQueryDescriptor);
  v20 = v17 + v111[6];
  v21 = *(v0 + 224);
  v22 = *(v0 + 240);
  *(v20 + 4) = *(v0 + 256);
  *v20 = v21;
  *(v20 + 1) = v22;
  v23 = v17 + v111[7];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 1) = xmmword_1B4D1AA80;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1B4D1A800;
  *(v0 + 448) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v132 = sub_1B4D181CC();
  v145 = v25;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  *(v24 + 32) = v132;
  *(v24 + 40) = v145;
  v26 = sub_1B49B554C(v24);
  swift_setDeallocating();
  sub_1B497CBA8(v24 + 32);
  v10(v18 + v111[5], v125, v9);
  swift_storeEnumTagMultiPayload();
  v27 = v18 + v111[6];
  *(v27 + 3) = &type metadata for TrainingLoadContext;
  *(v27 + 4) = &protocol witness table for TrainingLoadContext;
  *v27 = 2;
  *v18 = v26;
  v28 = v18 + v111[7];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 1) = xmmword_1B4D1AA80;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B4D1AA70;
  *(v0 + 456) = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F0, &qword_1B4D1AB08);
  v133 = sub_1B4D181CC();
  v146 = v30;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E890);

  *(v29 + 32) = v133;
  *(v29 + 40) = v146;
  *(v0 + 464) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F8, &qword_1B4D1AB10);
  v134 = sub_1B4D181CC();
  v147 = v31;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4E570);

  *(v29 + 48) = v134;
  *(v29 + 56) = v147;
  v32 = sub_1B49B554C(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = v102 + v111[5];
  v10(v33, v125, v9);
  type metadata accessor for DateRangeDescriptor();
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for WorkoutPropertiesQuery();
  v35 = &v33[v34[5]];
  v36 = MEMORY[0x1E69E7CC0];
  *v35 = MEMORY[0x1E69E7CC0];
  *(v35 + 1) = v36;
  *(v35 + 2) = v36;
  *(v35 + 3) = v36;
  *(v35 + 4) = v36;
  *(v35 + 5) = v36;
  *&v33[v34[6]] = v36;
  *&v33[v34[7]] = &unk_1F2CB81C0;
  swift_storeEnumTagMultiPayload();
  v37 = (v102 + v111[6]);
  v37[3] = &type metadata for WorkoutProperties;
  v37[4] = &protocol witness table for WorkoutProperties;
  sub_1B497F9FC(v37);
  *v102 = v32;
  v38 = v102 + v111[7];
  *v38 = 0;
  *(v38 + 1) = 0;
  *(v38 + 1) = xmmword_1B4D1AA80;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1B4D1A800;
  *(v0 + 472) = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  v135 = sub_1B4D181CC();
  v148 = v40;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E8B0);

  *(v39 + 32) = v135;
  *(v39 + 40) = v148;
  v41 = sub_1B49B554C(v39);
  swift_setDeallocating();
  sub_1B497CBA8(v39 + 32);
  v42 = v105 + v111[5];
  v10(v42, v125, v9);
  swift_storeEnumTagMultiPayload();
  v43 = &v42[v34[5]];
  *v43 = v36;
  *(v43 + 1) = v36;
  *(v43 + 2) = v36;
  *(v43 + 3) = v36;
  *(v43 + 4) = v36;
  *(v43 + 5) = v36;
  *&v42[v34[6]] = v36;
  *&v42[v34[7]] = &unk_1F2CB81E8;
  swift_storeEnumTagMultiPayload();
  v44 = (v105 + v111[6]);
  v44[3] = &type metadata for WorkoutProperties;
  v44[4] = &protocol witness table for WorkoutProperties;
  sub_1B4980308(v44);
  *v105 = v41;
  v45 = v105 + v111[7];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 1) = xmmword_1B4D1AA80;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B4D1AA70;
  *(v0 + 480) = &type metadata for AverageWorkoutDurationFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6800, &qword_1B4D1AB18);
  v136 = sub_1B4D181CC();
  v149 = v47;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);
  *(v46 + 32) = v136;
  *(v46 + 40) = v149;
  *(v0 + 488) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v137 = sub_1B4D181CC();
  v150 = v48;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);

  *(v46 + 48) = v137;
  *(v46 + 56) = v150;
  v49 = sub_1B49B554C(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10(v106, v125, v120);
  swift_storeEnumTagMultiPayload();
  v50 = &v106[v34[5]];
  *v50 = v36;
  *(v50 + 1) = v36;
  *(v50 + 2) = v36;
  *(v50 + 3) = v36;
  *(v50 + 4) = v36;
  *(v50 + 5) = v36;
  *&v106[v34[6]] = v36;
  *&v106[v34[7]] = &unk_1F2CB8210;
  swift_storeEnumTagMultiPayload();
  *(v0 + 288) = &type metadata for WorkoutProperties;
  *(v0 + 296) = &protocol witness table for WorkoutProperties;
  v51 = (v0 + 264);
  sub_1B4980E70(v51);
  v53 = *(v128 + 632);
  v54 = *(v128 + 576);
  v55 = *(v128 + 568);
  v107 = *(v128 + 544);
  v116 = *(v128 + 536);
  *v53 = v49;
  sub_1B498B198(v54, v53 + v111[5], type metadata accessor for FitnessContextQueryDescriptor);
  v56 = v53 + v111[6];
  v57 = *v51;
  v58 = *(v51 + 1);
  *(v56 + 4) = v51[4];
  *v56 = v57;
  *(v56 + 1) = v58;
  v59 = v53 + v111[7];
  *v59 = 0;
  *(v59 + 1) = 0;
  *(v59 + 1) = xmmword_1B4D1AA80;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1B4D1A800;
  *(v128 + 496) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6808, &unk_1B4D1AB20);
  v138 = sub_1B4D181CC();
  v151 = v61;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  *(v60 + 32) = v138;
  *(v60 + 40) = v151;
  v109 = sub_1B49B554C(v60);
  swift_setDeallocating();
  sub_1B497CBA8(v60 + 32);
  swift_deallocClassInstance();
  v10(v55, v125, v120);
  swift_storeEnumTagMultiPayload();
  v62 = &v55[v34[5]];
  *v62 = v36;
  *(v62 + 1) = v36;
  *(v62 + 2) = v36;
  *(v62 + 3) = v36;
  *(v62 + 4) = v36;
  *(v62 + 5) = v36;
  *&v55[v34[6]] = v36;
  *&v55[v34[7]] = &unk_1F2CB8238;
  swift_storeEnumTagMultiPayload();
  *(v128 + 328) = &type metadata for WorkoutProperties;
  *(v128 + 336) = &protocol witness table for WorkoutProperties;
  sub_1B4981A7C((v128 + 304));
  v63 = *(v128 + 624);
  v64 = *(v128 + 568);
  v65 = *(v128 + 560);
  v104 = *(v128 + 544);
  v108 = *(v128 + 536);
  *v63 = v109;
  sub_1B498B198(v64, v63 + v111[5], type metadata accessor for FitnessContextQueryDescriptor);
  v66 = v63 + v111[6];
  v67 = *(v128 + 304);
  v68 = *(v128 + 320);
  *(v66 + 4) = *(v128 + 336);
  *v66 = v67;
  *(v66 + 1) = v68;
  v69 = v63 + v111[7];
  *v69 = 0;
  *(v69 + 1) = 0;
  *(v69 + 1) = xmmword_1B4D1AA80;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1B4D1AA70;
  *(v128 + 504) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v139 = sub_1B4D181CC();
  v152 = v71;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  *(v70 + 32) = v139;
  *(v70 + 40) = v152;
  *(v128 + 512) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  v140 = sub_1B4D181CC();
  v153 = v72;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  *(v70 + 48) = v140;
  *(v70 + 56) = v153;
  v112 = sub_1B49B554C(v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10(v65, v125, v120);
  swift_storeEnumTagMultiPayload();
  v73 = &v65[v34[5]];
  *v73 = v36;
  *(v73 + 1) = v36;
  *(v73 + 2) = v36;
  *(v73 + 3) = v36;
  *(v73 + 4) = v36;
  *(v73 + 5) = v36;
  *&v65[v34[6]] = v36;
  *&v65[v34[7]] = &unk_1F2CB8260;
  swift_storeEnumTagMultiPayload();
  *(v128 + 368) = &type metadata for WorkoutProperties;
  *(v128 + 376) = &protocol witness table for WorkoutProperties;
  sub_1B4982240((v128 + 344));
  v74 = *(v128 + 616);
  v75 = *(v128 + 560);
  v76 = *(v128 + 552);
  v110 = *(v128 + 544);
  v77 = *(v128 + 536);
  *v74 = v112;
  sub_1B498B198(v75, v74 + v111[5], type metadata accessor for FitnessContextQueryDescriptor);
  v78 = v74 + v111[6];
  v79 = *(v128 + 344);
  v80 = *(v128 + 360);
  *(v78 + 4) = *(v128 + 376);
  *v78 = v79;
  *(v78 + 1) = v80;
  v81 = v74 + v111[7];
  *v81 = 0;
  *(v81 + 1) = 0;
  *(v81 + 1) = xmmword_1B4D1AA80;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1B4D1A800;
  *(v128 + 520) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  v141 = sub_1B4D181CC();
  v154 = v83;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  *(v82 + 32) = v141;
  *(v82 + 40) = v154;
  v84 = sub_1B49B554C(v82);
  swift_setDeallocating();
  sub_1B497CBA8(v82 + 32);
  swift_deallocClassInstance();
  v10(v76, v125, v120);
  swift_storeEnumTagMultiPayload();
  v85 = &v76[v34[5]];
  *v85 = v36;
  *(v85 + 1) = v36;
  *(v85 + 2) = v36;
  *(v85 + 3) = v36;
  *(v85 + 4) = v36;
  *(v85 + 5) = v36;
  *&v76[v34[6]] = v36;
  *&v76[v34[7]] = &unk_1F2CB8288;
  swift_storeEnumTagMultiPayload();
  *(v128 + 408) = &type metadata for WorkoutProperties;
  *(v128 + 416) = &protocol witness table for WorkoutProperties;
  sub_1B4982E30((v128 + 384));
  v86 = *(v128 + 672);
  v87 = *(v128 + 664);
  v88 = *(v128 + 656);
  v89 = *(v128 + 648);
  v121 = *(v128 + 640);
  v124 = *(v128 + 632);
  v90 = *(v128 + 624);
  v119 = *(v128 + 616);
  v91 = *(v128 + 608);
  v92 = *(v128 + 600);
  v114 = *(v128 + 584);
  v117 = *(v128 + 576);
  v118 = *(v128 + 568);
  v126 = *(v128 + 560);
  v93 = *(v128 + 552);
  v113 = *(v128 + 528);
  *v91 = v84;
  sub_1B498B198(v93, v91 + v111[5], type metadata accessor for FitnessContextQueryDescriptor);
  v94 = v91 + v111[6];
  v95 = *(v128 + 384);
  v96 = *(v128 + 400);
  *(v94 + 4) = *(v128 + 416);
  *v94 = v95;
  *(v94 + 1) = v96;
  v97 = v91 + v111[7];
  *v97 = 0;
  *(v97 + 1) = 0;
  *(v97 + 1) = xmmword_1B4D1AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6810, &unk_1B4D20400);
  v98 = *(v92 + 72);
  v99 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1B4D1AA90;
  v100 = v123 + v99;
  sub_1B498B130(v87, v100, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v86, v100 + v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v88, v100 + 2 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v89, v100 + 3 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v121, v100 + 4 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v90, v100 + 5 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v124, v100 + 6 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B130(v119, v100 + 7 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B198(v91, v100 + 8 * v98, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v119, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v90, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v124, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v121, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v89, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v88, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v87, type metadata accessor for FitnessContextQueryResult);
  sub_1B498B000(v86, type metadata accessor for FitnessContextQueryResult);
  *v113 = v123;

  v101 = *(v128 + 8);

  return v101();
}

uint64_t sub_1B497E6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v128 = a1;
  v3 = type metadata accessor for HKActivitySummaryRepresentable();
  v127 = *(v3 - 1);
  v4 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v102 - v7;
  v9 = type metadata accessor for FitnessContextDemoClient();
  v126 = v1 + *(v9 + 20);
  v10 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4D1796C();
  v125 = __swift_project_value_buffer(v11, qword_1EDC3CE48);
  v12 = sub_1B4D178CC();
  v121 = _HKCacheIndexFromDate();

  v13 = v3[7];
  v14 = (v2 + *(v9 + 28));
  v15 = v14[2];
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDC36DF8;
  v17 = sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v18 = v16;
  sub_1B4D1741C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(&v8[v13], 0, 1, v19);
  v23 = v3[8];
  v24 = v14[1];
  v115 = v18;
  v123 = v17;
  sub_1B4D1741C();
  v118 = v21;
  v119 = v19;
  v117 = v22;
  v21(&v8[v23], 0, 1, v19);
  v25 = v3[9];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v28(&v8[v25], 1, 1, v26);
  v28(&v8[v3[10]], 1, 1, v26);
  v30 = v3[11];
  v31 = v14[4];
  v32 = v14;
  v33 = objc_opt_self();
  v34 = [v33 minutes];
  v35 = v3;
  v36 = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v37 = v32;
  sub_1B4D1741C();
  v28(&v8[v30], 0, 1, v26);
  v38 = v35[12];
  v39 = v37[3];
  v116 = v33;
  v40 = [v33 minutes];
  v114 = v36;
  v41 = v35;
  sub_1B4D1741C();
  v124 = v26;
  v122 = v28;
  v120 = v29;
  v28(&v8[v38], 0, 1, v26);
  v42 = v35[13];
  if (qword_1EDC36E70 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDC36E78;
  v44 = type metadata accessor for UnitCount();
  v45 = v43;
  sub_1B4D1741C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v49 = v47 + 56;
  v48(&v8[v42], 0, 1, v46);
  v50 = v41[14];
  v51 = v37[5];
  v52 = v45;
  sub_1B4D1741C();
  v48(&v8[v50], 0, 1, v46);
  v53 = v41[15];
  v54 = v37[7];
  v55 = v52;
  v104 = v44;
  sub_1B4D1741C();
  v105 = v46;
  v106 = v49;
  v107 = v48;
  v48(&v8[v53], 0, 1, v46);
  v56 = v41[16];
  v57 = v37[9];
  v103 = v55;
  sub_1B4D1741C();
  v48(&v8[v56], 0, 1, v46);
  v58 = v41[17];
  v59 = v37[8];
  v112 = objc_opt_self();
  v60 = [v112 meters];
  v111 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v61 = *(v109 - 8);
  v108 = *(v61 + 56);
  v110 = v61 + 56;
  v108(&v8[v58], 0, 1, v109);
  v62 = v41[19];
  v63 = &v8[v41[18]];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = v121;
  *(v8 + 12) = 1;
  *v63 = 0;
  v63[8] = 1;
  v8[v62] = 0;
  v64 = sub_1B4D1771C();
  v65 = sub_1B4D178CC();
  v126 = _HKCacheIndexFromDate();

  v66 = v41[7];
  v67 = v37[11];
  v68 = v113;
  sub_1B4D1741C();
  v70 = v118;
  v69 = v119;
  v71 = v37;
  v118(v68 + v66, 0, 1, v119);
  v72 = v41[8];
  v73 = v37[10];
  sub_1B4D1741C();
  v70(v68 + v72, 0, 1, v69);
  v74 = v124;
  v75 = v122;
  v122(v68 + v41[9], 1, 1, v124);
  v75(v68 + v41[10], 1, 1, v74);
  v76 = v41[11];
  v77 = v37[13];
  v125 = v8;
  v78 = v116;
  v79 = [v116 minutes];
  sub_1B4D1741C();
  v75(v68 + v76, 0, 1, v74);
  v80 = v41[12];
  v81 = v71[12];
  v82 = [v78 minutes];
  sub_1B4D1741C();
  v75(v68 + v80, 0, 1, v74);
  v83 = v41[13];
  v84 = v71[15];
  v85 = v103;
  sub_1B4D1741C();
  v86 = v105;
  v87 = v107;
  v107(v68 + v83, 0, 1, v105);
  v88 = v41[14];
  v89 = v71[14];
  v90 = v85;
  sub_1B4D1741C();
  v87(v68 + v88, 0, 1, v86);
  v91 = v41[15];
  v92 = v71[16];
  sub_1B4D1741C();
  v87(v68 + v91, 0, 1, v86);
  v93 = v41[16];
  v94 = v71[18];
  sub_1B4D1741C();
  v87(v68 + v93, 0, 1, v86);
  v95 = v41[17];
  v96 = v71[17];
  v97 = [v112 meters];
  sub_1B4D1741C();
  v108((v68 + v95), 0, 1, v109);
  v98 = v41[19];
  v99 = v68 + v41[18];
  *(v68 + 8) = 0;
  *(v68 + 16) = 0;
  *v68 = v126;
  *(v68 + 24) = 1;
  *v99 = 0;
  *(v99 + 8) = 1;
  *(v68 + v98) = 0;
  sub_1B498B000(v68, type metadata accessor for HKActivitySummaryRepresentable);
  v100 = v128;
  sub_1B498B198(v125, v128, type metadata accessor for HKActivitySummaryRepresentable);
  return (*(v127 + 56))(v100, 0, 1, v41);
}

size_t sub_1B497F0F0@<X0>(void *a1@<X8>)
{
  v81 = a1;
  v100 = sub_1B4D1794C();
  v109 = *(v100 - 8);
  v2 = v109[8];
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = &v79 - v6;
  v7 = type metadata accessor for WorkoutRecord();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FitnessContextDemoClient();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v85 = *(v15 - 8);
  v16 = v85[8];
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v107 = v1;
  v29 = sub_1B4D178CC();
  v84 = v12;
  v30 = *(v12 + 20);
  v31 = sub_1B4D1771C();
  v32 = [v29 hk:v31 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v33 = v107;
  sub_1B4D1782C();
  v34 = v104;
  sub_1B498B130(v33, v104, type metadata accessor for FitnessContextDemoClient);
  v35 = v85 + 2;
  v36 = v85[2];
  v101 = v22;
  v79 = v28;
  v36(v22, v28, v15);
  v80 = v25;
  v91 = v36;
  v92 = v35;
  v36(v93, v25, v15);
  result = sub_1B49833B4();
  v38 = result;
  v39 = 0;
  v40 = result + 64;
  v41 = 1 << *(result + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(result + 64);
  v83 = v34 + 192;
  v82 = (v41 + 63) >> 6;
  v96 = *MEMORY[0x1E6969A48];
  v107 = (v109 + 13);
  v95 = (v109 + 1);
  v109 = v85 + 4;
  v44 = MEMORY[0x1E69E7CC0];
  v86 = result;
  v108 = v15;
  v87 = result + 64;
  v94 = (v85 + 6);
  while (v43)
  {
LABEL_10:
    v46 = (v39 << 9) | (8 * __clz(__rbit64(v43)));
    v47 = *(*(v38 + 56) + v46);
    if (v47 < 0)
    {
      goto LABEL_36;
    }

    v89 = v43;
    v90 = v39;
    if (v47)
    {
      v88 = v44;
      v103 = *(*(v38 + 48) + v46);
      v110 = MEMORY[0x1E69E7CC0];
      sub_1B4BCED9C(0, v47, 0);
      v48 = 0;
      v49 = v110;
      v50 = *(v83 + *(v84 + 28));
      v102 = *v107;
      do
      {
        v51 = v47;
        v53 = v99;
        v52 = v100;
        v102(v99, v96, v100);
        v54 = v98;
        sub_1B4D1790C();
        v55 = v53;
        v56 = v54;
        (*v95)(v55, v52);
        v57 = *v94;
        v58 = v54;
        v59 = v108;
        if ((*v94)(v58, 1, v108) == 1)
        {
          v60 = v97;
          v91(v97, v93, v59);
          if (v57(v56, 1, v59) != 1)
          {
            sub_1B4975024(v56, &qword_1EB8A6790, &qword_1B4D1BBC0);
          }
        }

        else
        {
          v60 = v97;
          (*v109)(v97, v56, v59);
        }

        sub_1B4D177BC();
        v61 = v105;
        v62 = &v11[v105[5]];
        sub_1B4D1770C();
        (*v109)(&v11[v61[6]], v60, v59);
        *&v11[v61[7]] = v103;
        v11[v61[8]] = 2;
        v63 = &v11[v61[9]];
        *v63 = 0;
        *(v63 + 1) = 0;
        v64 = &v11[v61[10]];
        *v64 = 0;
        *(v64 + 1) = 0;
        v64[24] = 0;
        *(v64 + 2) = 0;
        v110 = v49;
        v66 = *(v49 + 16);
        v65 = *(v49 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1B4BCED9C(v65 > 1, v66 + 1, 1);
          v49 = v110;
        }

        ++v48;
        *(v49 + 16) = v66 + 1;
        result = sub_1B498B198(v11, v49 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v66, type metadata accessor for WorkoutRecord);
        v47 = v51;
      }

      while (v51 != v48);
      v15 = v108;
      v44 = v88;
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }

    v67 = *(v49 + 16);
    v68 = v44[2];
    v69 = v68 + v67;
    if (__OFADD__(v68, v67))
    {
      goto LABEL_37;
    }

    v70 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v69 > v70[3] >> 1)
    {
      if (v68 <= v69)
      {
        v71 = v68 + v67;
      }

      else
      {
        v71 = v68;
      }

      result = sub_1B4A1D454(result, v71, 1, v70);
      v70 = result;
    }

    v40 = v87;
    v39 = v90;
    v43 = (v89 - 1) & v89;
    if (*(v49 + 16))
    {
      v72 = v70[2];
      if ((v70[3] >> 1) - v72 < v67)
      {
        goto LABEL_39;
      }

      v73 = v70 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v72;
      swift_arrayInitWithCopy();

      v44 = v70;
      v38 = v86;
      if (v67)
      {
        v74 = v70[2];
        v75 = __OFADD__(v74, v67);
        v76 = v74 + v67;
        if (v75)
        {
          goto LABEL_40;
        }

        v70[2] = v76;
      }
    }

    else
    {

      v44 = v70;
      v38 = v86;
      if (v67)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v45 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v45 >= v82)
    {
      v77 = v85[1];
      v78 = v44;
      v77(v93, v15);
      v77(v101, v15);
      sub_1B498B000(v104, type metadata accessor for FitnessContextDemoClient);
      v77(v80, v15);
      v77(v79, v15);

      *v81 = v78;
      return result;
    }

    v43 = *(v40 + 8 * v45);
    ++v39;
    if (v43)
    {
      v39 = v45;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B497F9FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v79 - v6;
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D178CC();
  v13 = type metadata accessor for FitnessContextDemoClient();
  v95 = v1 + *(v13 + 20);
  v14 = sub_1B4D1771C();
  v15 = [v12 hk:v14 startOfFitnessWeekBeforeDate:?];

  v96 = v11;
  sub_1B4D1775C();

  v16 = sub_1B49833B4();
  v17 = v16;
  v18 = 0;
  v19 = 0;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  do
  {
    if (!v22)
    {
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v24 >= v23)
        {
          goto LABEL_13;
        }

        v22 = *(v16 + 64 + 8 * v24);
        ++v18;
        if (v22)
        {
          v18 = v24;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v24 = v18;
LABEL_10:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v26 = *(*(v16 + 56) + ((v24 << 9) | (8 * v25)));
    v27 = __OFADD__(v19, v26);
    v19 += v26;
  }

  while (!v27);
  __break(1u);
LABEL_13:
  v89 = v8;
  v90 = v7;
  v91 = a1;
  MEMORY[0x1EEE9AC00](v16);
  *(&v79 - 2) = v2;
  sub_1B4983910(sub_1B498AF9C, (&v79 - 4), v17);

  v15 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
LABEL_20:
    swift_once();
  }

  v28 = sub_1B4D1796C();
  v29 = __swift_project_value_buffer(v28, qword_1EDC3CE48);
  v30 = sub_1B4D178CC();
  v88 = _HKCacheIndexFromDate();

  v31 = sub_1B4D1771C();
  v85 = v29;
  v32 = sub_1B4D178CC();
  v87 = _HKCacheIndexFromDate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B4D1AA70;
  v34 = sub_1B4D1771C();
  v35 = sub_1B4D178CC();
  v84 = _HKCacheIndexFromDate();

  v36 = sub_1B4D1771C();
  v37 = sub_1B4D178CC();
  v83 = _HKCacheIndexFromDate();

  v86 = *(v2 + *(v13 + 24));
  v82 = [v86 effectiveTypeIdentifier];
  LOBYTE(v109) = 1;
  LOBYTE(v104) = 0;
  v38 = [objc_opt_self() meters];
  v81 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata baseUnit];
  *(v33 + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  *(v33 + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 104));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v42 = v41[11];
  v43 = v93;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v41[7]) = 1;
  v44 = v92;
  v45 = *(v92 + 16);
  v45(boxed_opaque_existential_1, boxed_opaque_existential_1 + v42, v43);
  v46 = [ObjCClassFromMetadata baseUnit];
  v47 = boxed_opaque_existential_1 + v41[10];
  sub_1B4D1741C();
  (*(v44 + 8))(v94, v43);
  v45((boxed_opaque_existential_1 + v41[9]), boxed_opaque_existential_1 + v42, v43);
  v45((boxed_opaque_existential_1 + v41[8]), boxed_opaque_existential_1 + v42, v43);
  v48 = v83;
  *(v33 + 32) = v84;
  *(v33 + 40) = v48;
  *(v33 + 48) = 1804;
  *(v33 + 50) = *&v117[7];
  *(v33 + 54) = v118;
  *(v33 + 56) = 0;
  *(v33 + 64) = 1;
  *(v33 + 65) = *v117;
  *(v33 + 68) = *&v117[3];
  *(v33 + 72) = v82;
  *(v33 + 80) = 1280;
  LODWORD(v48) = v115;
  *(v33 + 86) = v116;
  *(v33 + 82) = v48;
  *(v33 + 88) = 0;
  *(v33 + 96) = 0;
  v49 = sub_1B4D1771C();
  v50 = sub_1B4D178CC();
  v51 = _HKCacheIndexFromDate();

  v52 = sub_1B4D1771C();
  v53 = sub_1B4D178CC();
  v54 = _HKCacheIndexFromDate();

  v55 = [v86 effectiveTypeIdentifier];
  LOBYTE(v109) = 1;
  LOBYTE(v104) = 0;
  *(v33 + 240) = &type metadata for WorkoutTotalCountProperty;
  v56 = sub_1B498AF48();
  *(v33 + 144) = v51;
  *(v33 + 248) = v56;
  *(v33 + 216) = v19;
  *(v33 + 152) = v54;
  *(v33 + 160) = 1804;
  *(v33 + 162) = *&v121[7];
  *(v33 + 166) = v122;
  *(v33 + 168) = 0;
  *(v33 + 176) = 1;
  *(v33 + 177) = *v121;
  *(v33 + 180) = *&v121[3];
  *(v33 + 184) = v55;
  *(v33 + 192) = 1280;
  v57 = v87;
  *(v33 + 194) = v119;
  *(v33 + 198) = v120;
  *(v33 + 200) = 0;
  *(v33 + 208) = 0;
  v114 = MEMORY[0x1E69E7CC0];
  sub_1B4BCECFC(0, 2, 0);
  v58 = v114;
  v59 = v88;
  sub_1B498ADFC(v33 + 32, &v104);
  v123 = v105;
  v124 = v106;
  v125 = v107;
  v126 = *&v108[0];
  sub_1B496F398((v108 + 8), v113 + 8);
  *&v109 = v59;
  *(&v109 + 1) = v57;
  v110 = v123;
  v111 = v124;
  v112 = v125;
  *&v113[0] = v126;
  v61 = *(v58 + 16);
  v60 = *(v58 + 24);
  if (v61 >= v60 >> 1)
  {
    sub_1B4BCECFC((v60 > 1), v61 + 1, 1);
    v58 = v114;
  }

  *(v58 + 16) = v61 + 1;
  v62 = (v58 + 112 * v61);
  v63 = v109;
  v64 = v111;
  v62[3] = v110;
  v62[4] = v64;
  v62[2] = v63;
  v65 = v112;
  v66 = v113[0];
  v67 = v113[2];
  v62[7] = v113[1];
  v62[8] = v67;
  v62[5] = v65;
  v62[6] = v66;
  sub_1B498ADFC(v33 + 144, v97);

  v100 = v97[1];
  v101 = v97[2];
  v102 = v97[3];
  v103 = v98;
  sub_1B496F398(&v99, v108 + 8);
  *&v104 = v59;
  *(&v104 + 1) = v57;
  v105 = v100;
  v106 = v101;
  v107 = v102;
  *&v108[0] = v103;
  v69 = *(v58 + 16);
  v68 = *(v58 + 24);
  v70 = v89;
  if (v69 >= v68 >> 1)
  {
    sub_1B4BCECFC((v68 > 1), v69 + 1, 1);
    v58 = v114;
  }

  *(v58 + 16) = v69 + 1;
  v71 = (v58 + 112 * v69);
  v72 = v104;
  v73 = v106;
  v71[3] = v105;
  v71[4] = v73;
  v71[2] = v72;
  v74 = v107;
  v75 = v108[0];
  v76 = v108[2];
  v71[7] = v108[1];
  v71[8] = v76;
  v71[5] = v74;
  v71[6] = v75;
  result = (*(v70 + 8))(v96);
  v78 = v91;
  *v91 = v59;
  v78[1] = v57;
  v78[2] = v58;
  return result;
}