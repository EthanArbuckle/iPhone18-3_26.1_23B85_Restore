uint64_t sub_24522F8A4(uint64_t a1)
{
  v2 = sub_245254EDC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2452545BC();
}

unint64_t sub_24522F96C()
{
  result = qword_27EE0E828;
  if (!qword_27EE0E828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E7F8);
    sub_24522F9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E828);
  }

  return result;
}

unint64_t sub_24522F9F8()
{
  result = qword_27EE0E830;
  if (!qword_27EE0E830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E820);
    sub_24522FAB0();
    sub_24521EA80(&qword_27EE0E850, &qword_27EE0E858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E830);
  }

  return result;
}

unint64_t sub_24522FAB0()
{
  result = qword_27EE0E838;
  if (!qword_27EE0E838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E818);
    sub_24522FB68();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E838);
  }

  return result;
}

unint64_t sub_24522FB68()
{
  result = qword_27EE0E840;
  if (!qword_27EE0E840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E808);
    sub_24521EA80(&qword_27EE0E848, &qword_27EE0E810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E840);
  }

  return result;
}

unint64_t sub_24522FC20()
{
  result = qword_27EE0E860;
  if (!qword_27EE0E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E7F8);
    sub_24522F96C();
    swift_getOpaqueTypeConformance2();
    sub_24522FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E860);
  }

  return result;
}

unint64_t sub_24522FCE8()
{
  result = qword_27EE0DDD0;
  if (!qword_27EE0DDD0)
  {
    sub_2452549DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DDD0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24522FD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24522FDA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24522FE10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_24521E31C();

  v4 = sub_245254BFC();
  v6 = v5;
  v8 = v7;
  sub_245254B0C();
  v9 = sub_245254B9C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24521F95C(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0x4039000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for NaturalizedViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NaturalizedViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24522FFA4()
{
  result = qword_27EE0E870;
  if (!qword_27EE0E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E878);
    sub_245230030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E870);
  }

  return result;
}

unint64_t sub_245230030()
{
  result = qword_27EE0E880;
  if (!qword_27EE0E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E880);
  }

  return result;
}

uint64_t sub_2452300A0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E888);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E890);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E898);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8A0);
  v15 = *(*(v14 - 8) + 16);
  if (a2)
  {
    v15(v12, a1, v14);
    v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8A8) + 36)];
    *v16 = KeyPath;
    v16[8] = 0;
    v17 = sub_245254B3C();
    v18 = swift_getKeyPath();
    v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8B0) + 36)];
    *v19 = v18;
    v19[1] = v17;
    LODWORD(v17) = sub_24525490C();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8E0) + 36)] = v17;
    LOBYTE(v17) = sub_245254AAC();
    v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8D0) + 36)];
    *v20 = v17;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    v20[40] = 1;
    LOBYTE(v17) = sub_245254A7C();
    sub_2452542DC();
    v21 = &v12[*(v10 + 36)];
    *v21 = v17;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_24521F96C(v12, v9, &qword_27EE0E898);
    swift_storeEnumTagMultiPayload();
    sub_2452308B4(&qword_27EE0E8C0, &qword_27EE0E898, &unk_24525C720, sub_24523051C);
    sub_2452307FC();
    sub_24525489C();
    v26 = v12;
    v27 = &qword_27EE0E898;
  }

  else
  {
    v15(v6, a1, v14);
    v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8A8) + 36)];
    *v28 = KeyPath;
    v28[8] = 1;
    v29 = sub_245254B6C();
    v30 = swift_getKeyPath();
    v31 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8B0) + 36)];
    *v31 = v30;
    v31[1] = v29;
    LOBYTE(v29) = sub_245254A4C();
    v32 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E8B8) + 36)];
    *v32 = v29;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    *&v6[*(v4 + 36)] = 256;
    sub_24521F96C(v6, v9, &qword_27EE0E888);
    swift_storeEnumTagMultiPayload();
    sub_2452308B4(&qword_27EE0E8C0, &qword_27EE0E898, &unk_24525C720, sub_24523051C);
    sub_2452307FC();
    sub_24525489C();
    v26 = v6;
    v27 = &qword_27EE0E888;
  }

  return sub_24521E5B0(v26, v27);
}

unint64_t sub_24523051C()
{
  result = qword_27EE0E8C8;
  if (!qword_27EE0E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E8D0);
    sub_2452305A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E8C8);
  }

  return result;
}

unint64_t sub_2452305A8()
{
  result = qword_27EE0E8D8;
  if (!qword_27EE0E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E8E0);
    sub_245230660();
    sub_24521EA80(&qword_27EE0E850, &qword_27EE0E858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E8D8);
  }

  return result;
}

unint64_t sub_245230660()
{
  result = qword_27EE0E8E8;
  if (!qword_27EE0E8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E8B0);
    sub_245230718();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E8E8);
  }

  return result;
}

unint64_t sub_245230718()
{
  result = qword_27EE0E8F0;
  if (!qword_27EE0E8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E8A8);
    sub_24521EA80(&qword_27EE0E8F8, &qword_27EE0E8A0);
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E8F0);
  }

  return result;
}

unint64_t sub_2452307FC()
{
  result = qword_27EE0E900;
  if (!qword_27EE0E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E888);
    sub_2452308B4(&qword_27EE0E908, &qword_27EE0E8B8, &unk_24525C7A0, sub_245230660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E900);
  }

  return result;
}

uint64_t sub_2452308B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_245230938()
{
  result = qword_27EE0E910;
  if (!qword_27EE0E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E918);
    sub_2452308B4(&qword_27EE0E8C0, &qword_27EE0E898, &unk_24525C720, sub_24523051C);
    sub_2452307FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E910);
  }

  return result;
}

uint64_t sub_2452309F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6863746157;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  v6 = 0x50206E6F69736956;
  v7 = 0xEA00000000006F72;
  if (a1 != 3)
  {
    v6 = 0x565420656C707041;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 6512973;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
        v12 = 0xE400000000000000;
        if (v10 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 6512973)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
LABEL_39:
        v13 = sub_2452555BC();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006F72;
    if (v10 != 0x50206E6F69736956)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x565420656C707041)
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

void sub_245230BFC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 modelClass];
  if (v4)
  {
    v5 = v4;
    sub_24525518C();

    v6 = sub_2452551BC();
    v8 = v7;

    v9 = v6 == 0x656E6F687069 && v8 == 0xE600000000000000;
    if (v9 || (sub_2452555BC() & 1) != 0)
    {

      v10 = 0;
    }

    else
    {
      v11 = v6 == 1684107369 && v8 == 0xE400000000000000;
      if (v11 || (sub_2452555BC() & 1) != 0)
      {

        v10 = 1;
      }

      else
      {
        sub_24521E31C();
        if (sub_2452554BC())
        {

          v10 = 2;
        }

        else if (sub_2452554BC())
        {

          v10 = 3;
        }

        else if (sub_2452554BC())
        {

          v10 = 4;
        }

        else
        {
          v12 = sub_2452554BC();

          if (v12)
          {
            v10 = 5;
          }

          else
          {
            v10 = 6;
          }
        }
      }
    }
  }

  else
  {

    v10 = 6;
  }

  *a2 = v10;
}

CoreCDPUI::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24525559C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x6863746157;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E55;
  }

  v4 = 0x50206E6F69736956;
  if (v1 != 3)
  {
    v4 = 0x565420656C707041;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 6512973;
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

unint64_t sub_245230F9C()
{
  result = qword_27EE0E920;
  if (!qword_27EE0E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E920);
  }

  return result;
}

uint64_t sub_245230FFC()
{
  sub_2452551FC();
}

uint64_t sub_245231100()
{
  sub_2452555CC();
  sub_2452551FC();

  return sub_2452555EC();
}

void sub_24523121C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE500000000000000;
  v6 = 0x6863746157;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA00000000006F72;
  v8 = 0x50206E6F69736956;
  if (v2 != 3)
  {
    v8 = 0x565420656C707041;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 6512973;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245231454(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x74756374726F6873;
    v6 = 0x656D2D6563696F76;
    if (a1 != 8)
    {
      v6 = 0x74656C6C6177;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7265646E696D6572;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x622D656369766564;
    v2 = 0x736567617373656DLL;
    v3 = 0x7365746F6ELL;
    if (a1 != 3)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6576697264;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id sub_2452315A0(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  if (a1 > 4u)
  {
    v4 = &selRef_initWithBundleIdentifier_;
  }

  else
  {
    v3 = &selRef_initWithType_;
    if (a1)
    {
      v3 = &selRef_initWithBundleIdentifier_;
    }

    if (a1 <= 1u)
    {
      v4 = v3;
    }

    else
    {
      v4 = &selRef_initWithBundleIdentifier_;
    }
  }

  v5 = sub_24525515C();
  v6 = [v2 *v4];

  return v6;
}

uint64_t sub_245231778()
{
  v0 = [objc_opt_self() bundle];
  v1 = sub_2452540EC();

  return v1;
}

uint64_t getEnumTagSinglePayload for AdvancedDataProtectionDataClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvancedDataProtectionDataClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245231B14()
{
  result = qword_27EE0E928;
  if (!qword_27EE0E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E928);
  }

  return result;
}

uint64_t sub_245231B7C()
{
  v1 = *v0;
  sub_2452555CC();
  MEMORY[0x245D66060](v1);
  return sub_2452555EC();
}

uint64_t sub_245231BF0()
{
  v1 = *v0;
  sub_2452555CC();
  MEMORY[0x245D66060](v1);
  return sub_2452555EC();
}

uint64_t sub_245231C34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  swift_getKeyPath();
  v20 = v0;
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v4 = (v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState);
  v5 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 8);
  if (v5)
  {
    v7 = v4[2];
    v6 = v4[3];
    v20 = *v4;
    v21 = v5;
    sub_24521E31C();

    sub_245254BFC();
    v20 = v7;
    v21 = v6;
    sub_245254BFC();
    v8 = sub_245254E1C();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v9 = sub_24525420C();
    __swift_project_value_buffer(v9, qword_27EE11750);
    v10 = sub_2452541EC();
    v11 = sub_24525538C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2451DB000, v10, v11, "If we are not showing the alert, then the alertState should have a default title and no message", v12, 2u);
      MEMORY[0x245D66A70](v12, -1, -1);
    }

    v13 = [objc_opt_self() bundle];
    v14 = sub_2452540EC();
    v16 = v15;

    v20 = v14;
    v21 = v16;
    sub_24521E31C();
    sub_245254BFC();
    v17 = sub_245254E1C();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  }

  return sub_245254E0C();
}

uint64_t sub_245232000@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA00);
  MEMORY[0x28223BE20](v56);
  v57 = v43 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA08);
  MEMORY[0x28223BE20](v55);
  v45 = v43 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0EA10);
  MEMORY[0x28223BE20](v53);
  v54 = (v43 - v4);
  v5 = sub_24525408C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24525409C();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2452540BC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v43 - v16;
  v18 = sub_2452540DC();
  v50 = *(v18 - 8);
  v51 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v43[0] = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = v43 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA28);
  MEMORY[0x28223BE20](v22);
  v52 = v43 - v23;
  swift_getKeyPath();
  v59 = v1;
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v44 = v1;
  if (*(v1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage + 8))
  {
    v43[1] = v22;
    v24 = sub_24525415C();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    (*(v8 + 104))(v10, *MEMORY[0x277CC8BB0], v47);
    (*(v48 + 104))(v7, *MEMORY[0x277CC8B98], v49);

    sub_2452540AC();
    sub_2452540CC();
    v25 = v50;
    v26 = v51;
    (*(v50 + 56))(v17, 0, 1, v51);
    v27 = v46;
    (*(v25 + 32))(v46, v17, v26);
    (*(v25 + 16))(v43[0], v27, v26);
    v28 = sub_245254BEC();
    v30 = v29;
    v32 = v31;
    v49 = v33;
    KeyPath = swift_getKeyPath();
    v35 = v32 & 1;
    LOBYTE(v59) = v32 & 1;
    v36 = sub_245254ACC();
    v37 = swift_getKeyPath();
    v38 = sub_245254E8C();
    v39 = swift_getKeyPath();
    v40 = v54;
    *v54 = v28;
    v40[1] = v30;
    *(v40 + 16) = v35;
    v40[3] = v49;
    *(v40 + 16) = 256;
    v40[5] = KeyPath;
    *(v40 + 48) = 1;
    v40[7] = v37;
    v40[8] = v36;
    v40[9] = v39;
    v40[10] = v38;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0EA40);
    sub_2452272B4();
    sub_245234998();
    v41 = v52;
    sub_24525489C();
    (*(v25 + 8))(v46, v26);
    sub_24521F96C(v41, v57, &qword_27EE0EA28);
    swift_storeEnumTagMultiPayload();
    sub_24523490C();
    sub_24525489C();
    return sub_24521E5B0(v41, &qword_27EE0EA28);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24523490C();
    return sub_24525489C();
  }
}

uint64_t sub_245232A20()
{
  v0 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v1 = sub_245254BFC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = v5 & 1;
  v10 = sub_245254E8C();
  v11 = swift_getKeyPath();
  v12 = sub_245254ABC();
  *&v14 = v1;
  *(&v14 + 1) = v3;
  LOBYTE(v15) = v9;
  *(&v15 + 1) = v7;
  LOWORD(v16) = 256;
  *(&v16 + 1) = KeyPath;
  LOBYTE(v17) = 1;
  *(&v17 + 1) = v11;
  *&v18 = v10;
  *(&v18 + 1) = swift_getKeyPath();
  sub_245254AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0E9A0);
  sub_2452282C4();
  sub_245254C4C();
  v19[3] = v17;
  v19[4] = v18;
  v20 = v12;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  return sub_24521E5B0(v19, &unk_27EE0E9A0);
}

uint64_t sub_245232C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() bundle];
  sub_2452540EC();

  sub_24521E31C();
  v5 = sub_245254BFC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = v9 & 1;
  v14 = sub_245254E9C();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 24) = v11;
  *(a2 + 32) = 256;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 1;
  *(a2 + 56) = v15;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  *(a2 + 80) = a1;
}

uint64_t sub_245232D70()
{
  v1 = v0;
  v2 = sub_2452550CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2452550FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_reachabilityProvider + 24];
  v11 = *&v0[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_reachabilityProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel_reachabilityProvider], v10);
  if ((*(v11 + 8))(v10, v11))
  {
    sub_245229E90();
    v26 = sub_2452553DC();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    aBlock[4] = sub_245234838;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24522D9C8;
    aBlock[3] = &block_descriptor_43;
    v13 = _Block_copy(aBlock);
    v14 = v0;
    sub_2452550EC();
    v27 = MEMORY[0x277D84F90];
    sub_245234BF0(&qword_27EE0DB88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
    v25 = v6;
    sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
    sub_2452554DC();
    v15 = v26;
    MEMORY[0x245D65E70](0, v9, v5, v13);
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v25);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 bundle];
    v19 = sub_2452540EC();
    v21 = v20;

    v22 = [v17 bundle];
    v23 = sub_2452540EC();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v25 - 6) = v1;
    *(&v25 - 5) = v19;
    *(&v25 - 4) = v21;
    *(&v25 - 3) = v23;
    aBlock[0] = v1;
    sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
    sub_24525416C();
  }
}

uint64_t sub_245233254()
{
  v1 = v0;
  v2 = sub_2452550CC();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2452550FC();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v8 = sub_24525420C();
  __swift_project_value_buffer(v8, qword_27EE11750);
  v9 = sub_2452541EC();
  v10 = sub_24525535C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2451DB000, v9, v10, "User tapped Set Up Later from upsell CFU", v11, 2u);
    MEMORY[0x245D66A70](v11, -1, -1);
  }

  sub_245229E90();
  v12 = sub_2452553DC();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_2452347D0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_36;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_2452550EC();
  v20 = MEMORY[0x277D84F90];
  sub_245234BF0(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  (*(v5 + 8))(v7, v18);
}

uint64_t sub_2452335E8()
{
  v1 = sub_2452550CC();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2452550FC();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245229E90();
  v7 = sub_2452553DC();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_24523476C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24522D9C8;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_2452550EC();
  v15 = MEMORY[0x277D84F90];
  sub_245234BF0(&qword_27EE0DB88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
  sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
  sub_2452554DC();
  MEMORY[0x245D65E70](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

uint64_t sub_2452338C8()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  return *(v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled);
}

uint64_t sub_245233970(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__isWalrusEnabled) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245233A98()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v1 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage);

  return v1;
}

uint64_t sub_245233B54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage);
  v6 = *(v2 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_2452555BC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
    sub_24525416C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_245233CD0()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v1 = *(v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState);
  sub_2452346E4(v1, *(v0 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 8));
  return v1;
}

uint64_t sub_245233DA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  v4 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState);
  v5 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 8);
  v6 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 16);
  v7 = *(v3 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_2452346E4(v4, v5);
}

uint64_t sub_245233E64()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525416C();
}

uint64_t sub_245233F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState);
  v6 = *(a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState);
  v7 = *(a1 + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__alertState + 8);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_2452346E4(a2, a3);
  return sub_245234728(v6, v7);
}

uint64_t sub_245233FB4()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_245234060@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_245234114()
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525416C();
}

void sub_2452341E0(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      a2 = 0;
      a3 = 0;
    }

    else
    {
    }

    sub_245233B54(a2, a3);
  }
}

id sub_24523429C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ADPUpsellViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ADPUpsellViewModel()
{
  result = qword_27EE0E978;
  if (!qword_27EE0E978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245234400()
{
  result = sub_2452541BC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_2452344D4(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_245234BF0(&unk_27EE0E990, type metadata accessor for ADPUpsellViewModel);
  sub_24525417C();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2452346E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_245234728(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24523485C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24525465C();
  *a1 = result;
  return result;
}

uint64_t sub_2452348B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2452545DC();
  *a1 = result;
  return result;
}

unint64_t sub_24523490C()
{
  result = qword_27EE0EA30;
  if (!qword_27EE0EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EA28);
    sub_2452272B4();
    sub_245234998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EA30);
  }

  return result;
}

unint64_t sub_245234998()
{
  result = qword_27EE0EA58;
  if (!qword_27EE0EA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EA08);
    sub_245234A50();
    sub_24521EA80(&unk_27EE0E9F0, &qword_27EE0E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EA58);
  }

  return result;
}

unint64_t sub_245234A50()
{
  result = qword_27EE0EA60;
  if (!qword_27EE0EA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EA68);
    sub_245234B08();
    sub_24521EA80(&qword_27EE0DE40, &qword_27EE0DE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EA60);
  }

  return result;
}

unint64_t sub_245234B08()
{
  result = qword_27EE0EA70;
  if (!qword_27EE0EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EA78);
    sub_245234BF0(&unk_27EE0EA80, type metadata accessor for CenteredLink);
    sub_24521EA80(&qword_27EE0E9E0, &qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EA70);
  }

  return result;
}

uint64_t sub_245234BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245234C38()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9CoreCDPUI18ADPUpsellViewModel__walrusUnavailableInCurrentRegionMessage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t get_enum_tag_for_layout_string_9CoreCDPUI17RemoteSecretAlertO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_245234CF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_245234D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_245234D84(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t type metadata accessor for RemoteSecretAlertViewModifier()
{
  result = qword_27EE0EA90;
  if (!qword_27EE0EA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245234E24()
{
  sub_24521D688();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_245234EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  sub_24525500C();
  v6 = v18;
  swift_getKeyPath();
  v18 = v6;
  sub_245235F6C();
  sub_24525417C();

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = *(v6 + 48);
  sub_245235FC4(v7, v8, *(v6 + 32), *(v6 + 40), *(v6 + 48));

  if (v9 > 1)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
  }

  v20 = v7;
  v21 = v8;
  sub_24525501C();
  swift_getKeyPath();
  sub_24525503C();

  v10 = (*(v3 + 8))(v5, v2);
  v15 = &v13;
  v13 = v18;
  v14 = v19;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAB0);
  sub_24521EA80(&qword_27EE0EAB8, &qword_27EE0EAA0);
  sub_24521E31C();
  sub_245236020();
  sub_245236298();
  sub_245254D9C();
}

uint64_t sub_2452351D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E560);
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = &v32 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB08);
  MEMORY[0x28223BE20](v43);
  v44 = &v32 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB10);
  MEMORY[0x28223BE20](v37);
  v39 = &v32 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAD0);
  MEMORY[0x28223BE20](v42);
  v40 = &v32 - v9;
  v10 = type metadata accessor for RemoteSecretAlertViewModifier();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAE0);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v14 = v46;
  swift_getKeyPath();
  v46 = v14;
  sub_245235F6C();
  sub_24525417C();

  v15 = *(v14 + 48);
  sub_245235FC4(*(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48));

  if (v15)
  {
    if (v15 == 1)
    {

      v16 = [objc_opt_self() bundle];
      v17 = sub_2452540EC();
      v19 = v18;

      v46 = v17;
      v47 = v19;
      sub_2452542BC();
      v20 = sub_2452542CC();
      (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
      sub_24521E31C();
      v21 = v35;
      sub_245254F5C();
      v22 = v36;
      v23 = v41;
      (*(v36 + 16))(v39, v21, v41);
      swift_storeEnumTagMultiPayload();
      sub_245236164();
      sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
      v24 = v40;
      sub_24525489C();
      sub_245236360(v24, v44);
      swift_storeEnumTagMultiPayload();
      sub_2452360AC();
      sub_24525489C();
      sub_2452363D0(v24);
      return (*(v22 + 8))(v21, v23);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2452360AC();
      return sub_24525489C();
    }
  }

  else
  {

    sub_24525500C();
    v26 = *(v46 + 96);

    v46 = v26;
    sub_245236438(a1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v28 = swift_allocObject();
    sub_24523649C(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAF0);
    sub_24521EA80(&qword_27EE0EB20, &qword_27EE0EB18);
    sub_2452361E8();
    sub_245236580();
    sub_245254FDC();
    v29 = v34;
    v30 = v38;
    (*(v34 + 16))(v39, v13, v38);
    swift_storeEnumTagMultiPayload();
    sub_245236164();
    sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
    v31 = v40;
    sub_24525489C();
    sub_245236360(v31, v44);
    swift_storeEnumTagMultiPayload();
    sub_2452360AC();
    sub_24525489C();
    sub_2452363D0(v31);
    return (*(v29 + 8))(v13, v30);
  }
}

uint64_t sub_2452359FC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RemoteSecretAlertViewModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E560);
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = *a1;
  LOBYTE(v26) = *a1;
  v16 = EscapeOffer.localizedTitle.getter();
  if (v17)
  {
    v26 = v16;
    v27 = v17;
    if (v15 == 6)
    {
      sub_2452542BC();
      v18 = sub_2452542CC();
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
    }

    else
    {
      v21 = sub_2452542CC();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    sub_245236438(a2, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    sub_24523649C(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *(v23 + v22 + v8) = v15;
    sub_24521E31C();
    sub_245254F5C();
    (*(v25 + 32))(a3, v14, v12);
    return (*(v25 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v19 = *(v25 + 56);

    return v19(a3, 1, 1, v12);
  }
}

uint64_t sub_245235D34(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v4 = a2;
  sub_245249288(&v4);
}

uint64_t sub_245235D94@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v2 = *(v13 + 48);
  sub_245235FC4(*(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48));

  if (v2 > 1)
  {
    result = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {

    sub_24525500C();
    swift_getKeyPath();
    sub_24525417C();

    v3 = *(v13 + 16);
    v4 = *(v13 + 24);
    v5 = *(v13 + 32);
    v6 = *(v13 + 40);
    v7 = *(v13 + 48);
    sub_245235FC4(v3, v4, v5, v6, *(v13 + 48));

    if (v7 <= 1)
    {

      sub_245236314(v3, v4, v5, v6, v7);
    }

    sub_24521E31C();
    result = sub_245254BFC();
    v10 = v12 & 1;
  }

  *a1 = result;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  return result;
}

unint64_t sub_245235F6C()
{
  result = qword_27EE0DD40;
  if (!qword_27EE0DD40)
  {
    type metadata accessor for RemoteSecretViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0DD40);
  }

  return result;
}

uint64_t sub_245235FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

unint64_t sub_245236020()
{
  result = qword_27EE0EAC0;
  if (!qword_27EE0EAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAA8);
    sub_2452360AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EAC0);
  }

  return result;
}

unint64_t sub_2452360AC()
{
  result = qword_27EE0EAC8;
  if (!qword_27EE0EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAD0);
    sub_245236164();
    sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EAC8);
  }

  return result;
}

unint64_t sub_245236164()
{
  result = qword_27EE0EAD8;
  if (!qword_27EE0EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAE0);
    sub_2452361E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EAD8);
  }

  return result;
}

unint64_t sub_2452361E8()
{
  result = qword_27EE0EAE8;
  if (!qword_27EE0EAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAF0);
    sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EAE8);
  }

  return result;
}

unint64_t sub_245236298()
{
  result = qword_27EE0EAF8;
  if (!qword_27EE0EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EAF8);
  }

  return result;
}

uint64_t sub_245236314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_245236360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2452363D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245236438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteSecretAlertViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24523649C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteSecretAlertViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245236500@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RemoteSecretAlertViewModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2452359FC(a1, v6, a2);
}

unint64_t sub_245236580()
{
  result = qword_27EE0EB28;
  if (!qword_27EE0EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EB28);
  }

  return result;
}

uint64_t sub_2452365D4()
{
  v1 = *(type metadata accessor for RemoteSecretAlertViewModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_245235D34(v2, v3);
}

void sub_245236654(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_245254F0C();
  v6 = v23[1];
  *(a3 + 32) = v23[0];
  *(a3 + 40) = v6;
  v7 = *(type metadata accessor for PrivacyLink() + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB30);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;

  v8 = sub_24525515C();
  v9 = [objc_opt_self() bundleWithIdentifier_];

  v10 = [objc_opt_self() flowWithBundle_];
  v11 = v10;
  if (v10 && (v12 = [v10 localizedButtonTitle]) != 0)
  {
    v13 = v12;

    v14 = sub_24525518C();
    v16 = v15;
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v17 = sub_24525420C();
    __swift_project_value_buffer(v17, qword_27EE11750);

    v18 = sub_2452541EC();
    v19 = sub_24525538C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136446210;
      v22 = sub_24524031C(a1, a2, v23);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_2451DB000, v18, v19, "Failed to get button title/OBBundle for %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245D66A70](v21, -1, -1);
      MEMORY[0x245D66A70](v20, -1, -1);
    }

    else
    {
    }

    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(a3 + 16) = v14;
  *(a3 + 24) = v16;
}

uint64_t type metadata accessor for PrivacyLink()
{
  result = qword_27EE0EB40;
  if (!qword_27EE0EB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245236950()
{
  v1 = v0;
  v2 = type metadata accessor for PrivacyLink();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB60);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  sub_245237C48(v0, &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_245237CAC(&v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v18 = v0;
  sub_245254F4C();
  v11 = *(v0 + 40);
  LOBYTE(v20[0]) = *(v0 + 32);
  v10 = v20[0];
  v20[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB68);
  sub_245254F1C();
  v12 = v19;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = &v7[*(v5 + 36)];
  *v15 = KeyPath;
  v15[1] = sub_2452282BC;
  v15[2] = v14;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_24525552C();

  strcpy(v20, "privacylink - ");
  HIBYTE(v20[1]) = -18;
  MEMORY[0x245D65CD0](*v1, v1[1]);
  LOBYTE(v20[0]) = v10;
  v20[1] = v11;
  sub_245254F1C();
  sub_245237D74();
  sub_245254D2C();

  return sub_24521E5B0(v7, &qword_27EE0EB60);
}

void sub_245236C14()
{
  v1 = v0;
  v2 = sub_2452549FC();
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrivacyLink();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  LOBYTE(aBlock) = v11;
  v37 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB68);
  sub_245254F1C();
  if (v42)
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24525420C();
    __swift_project_value_buffer(v13, qword_27EE11750);
    v14 = sub_2452541EC();
    v15 = sub_24525537C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2451DB000, v14, v15, "Attempting to present privacy view controller multiple times", v16, 2u);
    v17 = v16;
LABEL_12:
    MEMORY[0x245D66A70](v17, -1, -1);
LABEL_13:

    return;
  }

  v32 = v2;
  v18 = sub_24525515C();
  v19 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v19)
  {
    LOBYTE(aBlock) = v11;
    v37 = v12;
    v42 = 1;
    sub_245254F2C();
    sub_245237C48(v1, v10);
    v20 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v21 = swift_allocObject();
    sub_245237CAC(v10, v21 + v20);
    v40 = sub_245238034;
    v41 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_24522D9C8;
    v39 = &block_descriptor_5;
    v22 = _Block_copy(&aBlock);

    [v19 setDismissHandler_];
    _Block_release(v22);
    v23 = sub_245237854(v4);
    MEMORY[0x28223BE20](v23);
    *(&v31 - 2) = v19;
    *(&v31 - 1) = v1;
    sub_2452549EC();

    (*(v35 + 8))(v4, v32);
    return;
  }

  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v24 = sub_24525420C();
  __swift_project_value_buffer(v24, qword_27EE11750);
  sub_245237C48(v1, v8);
  v14 = sub_2452541EC();
  v25 = sub_24525537C();
  if (os_log_type_enabled(v14, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136446210;
    v28 = *v8;
    v29 = v8[1];

    sub_245237EAC(v8);
    v30 = sub_24524031C(v28, v29, &aBlock);

    *(v26 + 4) = v30;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x245D66A70](v27, -1, -1);
    v17 = v26;
    goto LABEL_12;
  }

  sub_245237EAC(v8);
}

uint64_t sub_24523712C@<X0>(uint64_t a1@<X8>)
{
  sub_24521E31C();

  v2 = sub_245254BFC();
  v4 = v3;
  v6 = v5;
  sub_24525447C();
  sub_245237E58();
  v7 = sub_245254BBC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_24521F95C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

id sub_24523726C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivacyLink();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a2 setPresentingViewController_];
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v9 = sub_24525420C();
  __swift_project_value_buffer(v9, qword_27EE11750);
  sub_245237C48(a3, v8);
  v10 = a1;
  v11 = sub_2452541EC();
  v12 = sub_24525536C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v13 = 136446466;
    v22 = a1;
    v23 = v15;
    v16 = a2;
    v18 = *v8;
    v17 = v8[1];

    sub_245237EAC(v8);
    v19 = sub_24524031C(v18, v17, &v23);
    a2 = v16;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v22;
    v20 = v10;
    sub_24521E5B0(v14, &qword_27EE0DBD0);
    MEMORY[0x245D66A70](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245D66A70](v15, -1, -1);
    MEMORY[0x245D66A70](v13, -1, -1);
  }

  else
  {

    sub_245237EAC(v8);
  }

  return [a2 present];
}

double sub_2452374C8(uint64_t a1, char a2)
{
  v4 = sub_2452546DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_24525538C();
  v10 = sub_245254A0C();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24524031C(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&dword_2451DB000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D66A70](v12, -1, -1);
    MEMORY[0x245D66A70](v11, -1, -1);
  }

  sub_2452546CC();
  swift_getAtKeyPath();
  sub_2451DDD58(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_245237694(uint64_t a1, char a2)
{
  v4 = sub_2452546DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_24525538C();
    v9 = sub_245254A0C();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24524031C(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_2451DB000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D66A70](v11, -1, -1);
      MEMORY[0x245D66A70](v10, -1, -1);
    }

    sub_2452546CC();
    swift_getAtKeyPath();
    sub_2451DDD58(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_245237854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2452546DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB30);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_2452380B4(v2, &v17 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2452549FC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_24525538C();
    v14 = sub_245254A0C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24524031C(0xD000000000000022, 0x80000002452630D0, &v18);
      _os_log_impl(&dword_2451DB000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D66A70](v16, -1, -1);
      MEMORY[0x245D66A70](v15, -1, -1);
    }

    sub_2452546CC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_245237AF0()
{
  sub_245237B84();
  if (v0 <= 0x3F)
  {
    sub_245237BD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245237B84()
{
  if (!qword_27EE0EB50)
  {
    v0 = sub_245254F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0EB50);
    }
  }
}

void sub_245237BD4()
{
  if (!qword_27EE0EB58)
  {
    sub_2452549FC();
    v0 = sub_24525434C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0EB58);
    }
  }
}

uint64_t sub_245237C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245237CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_245237D74()
{
  result = qword_27EE0EB70;
  if (!qword_27EE0EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EB60);
    sub_24521EA80(&qword_27EE0E568, &qword_27EE0E560);
    sub_24521EA80(&qword_27EE0EB78, &qword_27EE0EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EB70);
  }

  return result;
}

unint64_t sub_245237E58()
{
  result = qword_27EE0EB88;
  if (!qword_27EE0EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EB88);
  }

  return result;
}

uint64_t sub_245237EAC(uint64_t a1)
{
  v2 = type metadata accessor for PrivacyLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PrivacyLink() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2452549FC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_245238034()
{
  type metadata accessor for PrivacyLink();

  return sub_245237210();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2452380B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_245238124()
{
  result = qword_27EE0EB90;
  if (!qword_27EE0EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EB98);
    sub_245237D74();
    sub_24522FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EB90);
  }

  return result;
}

void sub_2452382F4(void *a1)
{
  v1 = a1;
  sub_2452386C0();
}

uint64_t sub_24523833C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_245238724(a1);
  (*(*(*(v2 + qword_27EE11740) - 8) + 8))(a1);
  return v5;
}

void *sub_245238400(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27EE11740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  *(v2 + *(v6 + 16)) = 0;
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_2452547CC();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_245238544(void *a1)
{
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_27EE11740 + 16)) = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HiddenBFFProgressIndicatorHostingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24523862C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HiddenBFFProgressIndicatorHostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2452386C0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_245238724(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  *(v1 + *(v3 + 16)) = 0;
  (*(v4 + 16))(&v6 - v2);
  return sub_2452547DC();
}

uint64_t sub_245238848(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_245238AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 56) = v14;
  *(v8 + 64) = v16;
  *(v8 + 108) = v15;
  *(v8 + 107) = v13;
  *(v8 + 106) = a8;
  *(v8 + 105) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 104) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  sub_2452552FC();
  *(v8 + 72) = sub_2452552EC();
  v10 = sub_2452552DC();

  return MEMORY[0x2822009F8](sub_245238B84, v10, v9);
}

void sub_245238B84()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v0[10] = _Block_copy(v1);
  sub_245217E28(0, &qword_27EE0EC90);
  v0[11] = sub_2452552BC();
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_245238CD8;

  JUMPOUT(0x245239C34);
}

uint64_t sub_245238CD8(void *a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  if (v3)
  {
    v10 = *(v2 + 80);
    (v10)[2](v10, a1);

    _Block_release(v10);
  }

  else
  {
  }

  v11 = *(v9 + 8);

  return v11();
}

CDPStateSwiftUIProvider __swiftcall CDPStateSwiftUIProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_245238F90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24523A580;

  JUMPOUT(0x245238AB8);
}

uint64_t sub_2452390B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24523A580;

  return v6();
}

uint64_t sub_245239198()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24523A580;

  return sub_2452390B0(v2, v3, v4);
}

uint64_t sub_245239258(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_245239340;

  return v7();
}

uint64_t sub_245239340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245239474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_245239340;

  return sub_245239258(a1, v4, v5, v6);
}

uint64_t sub_245239540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2452397FC(a3, v23 - v10);
  v12 = sub_24525531C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24523986C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24525530C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2452552DC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2452551CC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24523986C(a3);

    return v21;
  }

LABEL_8:
  sub_24523986C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2452397FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24523986C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2452398D4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2452399CC;

  return v6(a1);
}

uint64_t sub_2452399CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245239AC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24523A580;

  return sub_2452398D4(a1, v4);
}

uint64_t sub_245239B7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245239340;

  return sub_2452398D4(a1, v4);
}

uint64_t sub_245239C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 165) = v15;
  *(v8 + 164) = v13;
  *(v8 + 163) = a8;
  *(v8 + 162) = a7;
  *(v8 + 208) = a6;
  *(v8 + 216) = v14;
  *(v8 + 161) = a5;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  *(v8 + 224) = type metadata accessor for RemoteSecretView(0);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  sub_2452552FC();
  *(v8 + 256) = sub_2452552EC();
  v10 = sub_2452552DC();
  *(v8 + 264) = v10;
  *(v8 + 272) = v9;

  return MEMORY[0x2822009F8](sub_245239D40, v10, v9);
}

uint64_t sub_245239D40()
{
  if ([*(v0 + 176) keychainSyncSystem] == 1)
  {
    v1 = *(v0 + 192);
    if (v1 >> 62)
    {
      v2 = sub_24525556C();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v2 < 2;
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 166) = v3;
  v4 = *(v0 + 184);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_245239EAC;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC98);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_245238848;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v5;
  [v4 supportedEscapeOfferMaskCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_245239EAC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_245239FB4, v2, v1);
}

uint64_t sub_245239FB4()
{
  v1 = *(v0 + 166);
  v31 = v1;
  v2 = *(v0 + 164);
  v3 = *(v0 + 163);
  v4 = *(v0 + 162);
  v5 = *(v0 + 216);
  v33 = *(v0 + 208);
  v34 = *(v0 + 161);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);

  v32 = sub_24525050C(v7, v4, v2, v1, v3, *(v0 + 168));
  v10 = objc_allocWithZone(MEMORY[0x277CFD4F8]);

  v30 = [v10 init];
  v11 = [objc_allocWithZone(MEMORY[0x277D262A0]) init];
  type metadata accessor for RemoteSecretViewModel();
  swift_allocObject();
  v12 = v5;
  v13 = v8;
  v14 = v9;
  v6;
  v15 = v33;
  v16 = sub_245247EA0(v13, v14, v32, v7, &unk_285824210, v30, v2, v34, v6, v33, v31, v4, v5, v11);
  v17 = *(v0 + 240);
  v18 = *(v0 + 248);
  v19 = *(v0 + 232);
  LOBYTE(v13) = *(v0 + 165);
  v20 = v18 + *(*(v0 + 224) + 20);
  sub_24523A46C();

  sub_24525431C();
  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  *v20 = *(v0 + 144);
  *(v20 + 8) = v21;
  *(v20 + 16) = v22;
  swift_unknownObjectWeakInit();
  sub_245235F6C();
  sub_24525502C();
  swift_unknownObjectWeakAssign();
  sub_24523A4C0(v18, v17);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECA8));
  *(v23 + *((*MEMORY[0x277D85000] & *v23) + qword_27EE11740 + 16)) = 0;
  sub_24523A4C0(v17, v19);
  v24 = sub_2452547DC();
  sub_24523A524(v17);
  if (v13)
  {
    sub_24523A524(*(v0 + 248));
  }

  else
  {
    v25 = *(v0 + 248);
    if ((*(v16 + 160) & 0x8000000000000000) != 0)
    {
      v26 = [v24 navigationItem];
      v27 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v16 action:sel_validate];
      [v26 setRightBarButtonItem_];
    }

    sub_24523A524(v25);
  }

  v28 = *(v0 + 8);

  return v28(v24);
}

uint64_t sub_24523A408(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24523A46C()
{
  result = qword_27EE0ECA0;
  if (!qword_27EE0ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0ECA0);
  }

  return result;
}

uint64_t sub_24523A4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteSecretView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24523A524(uint64_t a1)
{
  v2 = type metadata accessor for RemoteSecretView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24523A584(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_24;
  }

  sub_2452551BC();
  sub_24521E31C();
  if (sub_2452554BC())
  {

    v14 = a4;

    v6 = 0x4E4F4850495FLL;
LABEL_25:
    v7 = v6 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
    goto LABEL_26;
  }

  if (sub_2452554BC())
  {

    v14 = a4;

    v7 = 0x444150495FLL;
LABEL_6:
    v8 = 0xE500000000000000;
    goto LABEL_27;
  }

  if ((sub_2452554BC() & 1) == 0)
  {
    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x4F545F444F50495FLL;
      v9 = 4735829;
LABEL_13:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      goto LABEL_27;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x48435441575FLL;
      v8 = 0xE600000000000000;
      goto LABEL_27;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 1448362335;
      v8 = 0xE400000000000000;
      goto LABEL_27;
    }

    v11 = sub_2452554BC();

    if (v11)
    {
      v14 = a4;

      v7 = 0x4E4F495349565FLL;
LABEL_26:
      v8 = 0xE700000000000000;
      goto LABEL_27;
    }

LABEL_24:
    v14 = a4;

    v6 = 0x43495645445FLL;
    goto LABEL_25;
  }

  if (a3)
  {
    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x4E494D5F43414D5FLL;
      v8 = 0xE900000000000049;
      goto LABEL_27;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x5554535F43414D5FLL;
      v9 = 5196100;
      goto LABEL_13;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x4B4F4F4243414D5FLL;
      v10 = 1380532575;
LABEL_34:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_27;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x52505F43414D495FLL;
      v8 = 0xE90000000000004FLL;
      goto LABEL_27;
    }

    if (sub_2452554BC())
    {

      v14 = a4;

      v7 = 0x43414D495FLL;
      goto LABEL_6;
    }
  }

  if (sub_2452554BC())
  {

    v14 = a4;

    v7 = 0x4B4F4F4243414D5FLL;
    v10 = 1330794591;
    goto LABEL_34;
  }

  if (sub_2452554BC())
  {

    v14 = a4;

    v7 = 0x4B4F4F4243414D5FLL;
  }

  else
  {
    v13 = sub_2452554BC();

    if ((v13 & 1) == 0)
    {
      v14 = a4;

      v7 = 1128353119;
      v8 = 0xE400000000000000;
      goto LABEL_27;
    }

    v14 = a4;

    v7 = 0x4F52505F43414D5FLL;
  }

  v8 = 0xE800000000000000;
LABEL_27:
  MEMORY[0x245D65CD0](v7, v8);
  return v14;
}

uint64_t getEnumTagSinglePayload for Field(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Field(_WORD *result, int a2, int a3)
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

void sub_24523ADF0()
{
  sub_24521D688();
  if (v0 <= 0x3F)
  {
    sub_24523AE80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24523AE80()
{
  if (!qword_27EE0ECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECC8);
    sub_24523ED88(&qword_27EE0ECD0, sub_24523A46C);
    v0 = sub_24525432C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0ECC0);
    }
  }
}

uint64_t sub_24523AF44()
{
  sub_2452555CC();
  MEMORY[0x245D66060](0);
  return sub_2452555EC();
}

uint64_t sub_24523AFB0()
{
  sub_2452555CC();
  MEMORY[0x245D66060](0);
  return sub_2452555EC();
}

uint64_t sub_24523AFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for RemoteSecretView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECE0);
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECE8);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECF0);
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v56 = v47 - v12;
  sub_24523F16C(v2, v6, type metadata accessor for RemoteSecretView);
  v13 = *(v4 + 80);
  v14 = (v13 + 16) & ~v13;
  v61 = v14 + v5;
  v62 = v13;
  v15 = swift_allocObject();
  v53 = v14;
  sub_24523F460(v6, v15 + v14, type metadata accessor for RemoteSecretView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v17 = v63;
  swift_getKeyPath();
  v63 = v17;
  v18 = sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525417C();

  v19 = *(v17 + 264);

  LOBYTE(v17) = v19(v20);

  if (v17)
  {
    v21 = sub_245254A4C();
  }

  else
  {
    v21 = sub_245254A9C();
  }

  v22 = v21;
  sub_2452542DC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v68 = 0;
  sub_24525500C();
  type metadata accessor for RemoteSecretViewModel();
  v52 = v18;
  sub_24525502C();
  *v9 = sub_24523DE4C;
  *(v9 + 1) = v15;
  v9[16] = v22;
  *(v9 + 17) = v69[0];
  *(v9 + 5) = *(v69 + 3);
  *(v9 + 3) = v24;
  *(v9 + 4) = v26;
  *(v9 + 5) = v28;
  *(v9 + 6) = v30;
  v9[56] = v68;
  sub_24525500C();
  v31 = v63;
  swift_getKeyPath();
  v63 = v31;
  sub_24525417C();

  v32 = *(v31 + 56);
  v33 = *(v31 + 64);

  v63 = v32;
  v64 = v33;
  v51 = v16;
  v50 = type metadata accessor for RemoteSecretView;
  sub_24523F16C(v2, v6, type metadata accessor for RemoteSecretView);
  v34 = swift_allocObject();
  v48 = v7;
  v49 = type metadata accessor for RemoteSecretView;
  v35 = v53;
  sub_24523F460(v6, v34 + v53, type metadata accessor for RemoteSecretView);
  v36 = sub_24523E948();
  v37 = v54;
  sub_245254DDC();

  sub_24521E5B0(v9, &qword_27EE0ECE0);
  v47[1] = v2;
  sub_24525500C();
  v38 = v63;
  swift_getKeyPath();
  v63 = v38;
  sub_24525417C();

  LOBYTE(v32) = *(v38 + 73);

  v67 = v32;
  sub_24523F16C(v2, v6, v50);
  v39 = swift_allocObject();
  sub_24523F460(v6, v39 + v35, v49);
  v63 = v48;
  v64 = MEMORY[0x277D837D0];
  v65 = v36;
  v66 = MEMORY[0x277D837F8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277D839B0];
  v42 = MEMORY[0x277D839C8];
  v43 = v56;
  v44 = v59;
  sub_245254DDC();

  (*(v55 + 8))(v37, v44);
  sub_24525500C();

  v63 = v44;
  v64 = v41;
  v65 = OpaqueTypeConformance2;
  v66 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v58;
  sub_245254D6C();
  return (*(v57 + 8))(v43, v45);
}

uint64_t sub_24523B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v45 = sub_2452549AC();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24525496C();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2452548BC();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED30);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED38);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED40);
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v37 = &v32 - v17;
  v41 = a2;
  v46 = a2;
  v47 = a1;
  sub_245254A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED48);
  sub_24521EA80(&qword_27EE0ED50, &qword_27EE0ED48);
  sub_24525433C();
  sub_2452548AC();
  LOBYTE(a1) = sub_245254A3C();
  sub_245254A2C();
  sub_245254A2C();
  if (sub_245254A2C() != a1)
  {
    sub_245254A2C();
  }

  v18 = sub_24521EA80(&qword_27EE0ED58, &qword_27EE0ED30);
  sub_245254CFC();
  (*(v7 + 8))(v9, v32);
  (*(v11 + 8))(v13, v10);
  v19 = v34;
  sub_2452548AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24525CF70;
  v21 = sub_245254A3C();
  *(inited + 32) = v21;
  v22 = sub_245254A1C();
  *(inited + 33) = v22;
  sub_245254A2C();
  sub_245254A2C();
  if (sub_245254A2C() != v21)
  {
    sub_245254A2C();
  }

  sub_245254A2C();
  if (sub_245254A2C() != v22)
  {
    sub_245254A2C();
  }

  v48 = v10;
  v49 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v37;
  v24 = v38;
  sub_245254CCC();
  (*(v35 + 8))(v19, v36);
  (*(v33 + 8))(v15, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v26 = v48;
  swift_getKeyPath();
  v48 = v26;
  sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525417C();

  v27 = *(v26 + 264);

  LOBYTE(v27) = v27(v28);

  if ((v27 & 1) != 0 && (*(v26 + 160) & 0x8000000000000000) != 0)
  {
    v29 = v42;
    sub_2452548AC();
  }

  else
  {
    v29 = v42;
    sub_24525499C();
  }

  v48 = v24;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_245254D5C();
  (*(v43 + 8))(v29, v45);
  return (*(v39 + 8))(v25, v30);
}

uint64_t sub_24523BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = sub_24525441C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for RemoteSecretView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24523F16C(a1, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteSecretView);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v11 + *(v7 + 80) + v12) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_24523F460(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for RemoteSecretView);
  result = (*(v7 + 32))(v14 + v13, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *a3 = sub_24523EB6C;
  a3[1] = v14;
  return result;
}

uint64_t sub_24523C050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v33 = a1;
  v36 = a4;
  v35 = sub_24525452C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED70);
  MEMORY[0x28223BE20](v34);
  v11 = &v31 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v12 = v37;
  swift_getKeyPath();
  v37 = v12;
  sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525417C();

  v13 = *(v12 + 264);

  LOBYTE(v12) = v13(v14);

  if (v12)
  {
    v15 = sub_2452547BC();
  }

  else
  {
    v15 = sub_2452547AC();
  }

  *v9 = v15;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED78);
  sub_24523C4DC(a2, v31, &v9[*(v16 + 44)]);
  sub_24525500C();
  v17 = v37;
  swift_getKeyPath();
  v37 = v17;
  sub_24525417C();

  v18 = *(v17 + 264);

  LOBYTE(v18) = v18(v19);

  if (v18)
  {
    v20 = sub_245254A9C();
  }

  else
  {
    v20 = sub_245254A5C();
  }

  v21 = v20;
  sub_2451DF0D4(v9, v11);
  v22 = &v11[*(v34 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = a2 + *(type metadata accessor for RemoteSecretView(0) + 20);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  LOBYTE(v37) = v24;
  v38 = v25;
  v39 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED28);
  sub_2452542EC();
  v26 = v32;
  v27 = v35;
  (*(v5 + 16))(v32, v33, v35);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = swift_allocObject();
  (*(v5 + 32))(v29 + v28, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECC8);
  sub_24523ECD0();
  sub_24523ED88(&qword_27EE0ED90, sub_24523DDF8);
  sub_245254DCC();

  return sub_24521E5B0(v11, &qword_27EE0ED70);
}

uint64_t sub_24523C4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v112 = a3;
  v4 = type metadata accessor for RemoteSecretEscapeOfferButton(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v113 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = v90 - v7;
  v102 = type metadata accessor for RemoteSecretView(0);
  v107 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v108 = v8;
  v109 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24525454C();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v95 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED98);
  MEMORY[0x28223BE20](v100);
  v91 = v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDA0);
  v103 = *(v12 - 8);
  v104 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = v90 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDA8);
  v14 = MEMORY[0x28223BE20](v105);
  v119 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v117 = v90 - v16;
  v17 = type metadata accessor for RemoteSecretDeviceImageView();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v118 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v90 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v23 = type metadata accessor for RemoteSecretViewModel();
  v24 = sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  v115 = v23;
  v116 = v21;
  sub_24525502C();
  sub_24525500C();
  v106 = sub_2452496D8();
  v111 = v25;

  sub_24525500C();
  v26 = v128;
  swift_getKeyPath();
  v128 = v26;
  sub_24525417C();

  v27 = *(*&v26 + 264);

  v97 = v27(v28);

  sub_24525500C();
  v29 = v128;
  swift_getKeyPath();
  v128 = v29;
  sub_24525417C();

  v30 = *(*&v29 + 264);

  v32 = v30(v31);

  sub_24525500C();
  v96 = sub_245249D88();
  v110 = v33;

  sub_24525500C();
  v34 = v128;
  swift_getKeyPath();
  v128 = v34;
  sub_24525417C();

  v35 = *(*&v34 + 264);

  v94 = v35(v36);

  sub_24525500C();
  v37 = v128;
  swift_getKeyPath();
  v128 = v37;
  v114 = v24;
  sub_24525417C();

  v38 = *(*&v37 + 264);

  LOBYTE(v38) = v38(v39);

  if (v38)
  {
    sub_24525506C();
    sub_2452543EC();
    LOBYTE(v145) = 1;
    LOBYTE(v121) = v141;
    v134 = v143;
    LOBYTE(v126[0]) = 0;
    v128 = 0.0;
    v129[0] = 1;
    *&v129[8] = v140;
    v129[16] = v141;
    *&v129[24] = v142;
    v129[32] = v143;
    *(v130 + 7) = v144;
    BYTE7(v130[1]) = 0;
  }

  else
  {
    sub_24525440C();
    LOBYTE(v126[0]) = 0;
    LOBYTE(v145) = 1;
    v128 = v40 * 0.1;
    v129[0] = 0;
    BYTE7(v130[1]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDB0);
  sub_24523EF64();
  sub_24525489C();
  v93 = v32;
  LODWORD(v92) = (v32 & 1) == 0;
  sub_24525500C();
  *&v90[1] = v128;
  sub_24525500C();
  v41 = sub_2452495BC();
  v90[0] = v42;

  sub_24525500C();
  v43 = v128;
  swift_getKeyPath();
  v128 = v43;
  sub_24525417C();

  v44 = *(*&v43 + 264);

  LOBYTE(v43) = v44(v45);

  v46 = v91;
  sub_24525502C();
  v47 = type metadata accessor for iOSRemoteSecretEntryView(0);
  v48 = (v46 + *(v47 + 20));
  v49 = v90[0];
  *v48 = v41;
  v48[1] = v49;
  *(v46 + *(v47 + 24)) = LOBYTE(v43) & 1;
  v90[2] = v22;
  sub_24525500C();
  v50 = v128;
  swift_getKeyPath();
  v128 = v50;
  sub_24525417C();

  v51 = *(*&v50 + 248);

  v52 = *&v100;
  v53 = v46 + *(v100 + 36);
  *v53 = 0x4024000000000000;
  *(v53 + 8) = 3;
  *(v53 + 16) = v51;
  v54 = v95;
  sub_24525453C();
  v55 = a1;
  sub_24525500C();
  v56 = v128;
  swift_getKeyPath();
  v128 = v56;
  sub_24525417C();

  v57 = *(*&v56 + 248);

  v128 = v57;
  v58 = sub_24523EFE8();
  v59 = v101;
  sub_245254CBC();
  (*(v98 + 8))(v54, v99);
  sub_24521E5B0(v46, &qword_27EE0ED98);
  v60 = v55 + *(v102 + 20);
  v61 = *v60;
  v62 = *(v60 + 8);
  LOBYTE(v60) = *(v60 + 16);
  LOBYTE(v128) = v61;
  *v129 = v62;
  v129[8] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED28);
  sub_24525430C();
  LOBYTE(v145) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ECC8);
  v128 = v52;
  *v129 = MEMORY[0x277D83B88];
  *&v129[8] = v58;
  *&v129[16] = MEMORY[0x277D83BA8];
  swift_getOpaqueTypeConformance2();
  sub_24523ED88(&qword_27EE0ECD0, sub_24523A46C);
  v63 = v117;
  v64 = v104;
  sub_245254DAC();

  (*(v103 + 8))(v59, v64);
  v65 = v109;
  sub_24523F16C(v55, v109, type metadata accessor for RemoteSecretView);
  v66 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v67 = swift_allocObject();
  sub_24523F460(v65, v67 + v66, type metadata accessor for RemoteSecretView);
  v68 = (v63 + *(v105 + 36));
  *v68 = sub_24523F140;
  v68[1] = v67;
  v68[2] = 0;
  v68[3] = 0;
  sub_24525500C();
  v69 = v120;
  sub_24525502C();
  sub_24525506C();
  sub_24525459C();
  *&v133[55] = v148;
  *&v133[71] = v149;
  *&v133[87] = v150;
  *&v133[103] = v151;
  *&v133[7] = v145;
  *&v133[23] = v146;
  v134 = 1;
  *&v133[39] = v147;
  v70 = v118;
  sub_24523F16C(v116, v118, type metadata accessor for RemoteSecretDeviceImageView);
  LOBYTE(v65) = v97 & 1;
  LODWORD(v115) = v94 & 1;
  v123 = v137;
  v124 = v138;
  v125 = v139;
  v121 = v135;
  v122 = v136;
  v71 = v119;
  sub_2451DF150(v63, v119);
  v72 = v69;
  v73 = v113;
  sub_24523F16C(v72, v113, type metadata accessor for RemoteSecretEscapeOfferButton);
  v74 = v112;
  sub_24523F16C(v70, v112, type metadata accessor for RemoteSecretDeviceImageView);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDD8);
  v76 = v74 + v75[12];
  v77 = v111;
  *v76 = v106;
  *(v76 + 8) = v77;
  *(v76 + 16) = v65;
  v78 = v74 + v75[16];
  *v78 = 0;
  *(v78 + 8) = v92;
  *(v78 + 9) = v93 & 1;
  v79 = v74 + v75[20];
  v80 = v110;
  *v79 = v96;
  *(v79 + 8) = v80;
  *(v79 + 16) = v115;
  v81 = v74 + v75[24];
  v82 = v124;
  *(v81 + 32) = v123;
  *(v81 + 48) = v82;
  *(v81 + 64) = v125;
  v83 = v122;
  *v81 = v121;
  *(v81 + 16) = v83;
  sub_2451DF150(v71, v74 + v75[28]);
  sub_24523F16C(v73, v74 + v75[32], type metadata accessor for RemoteSecretEscapeOfferButton);
  v84 = (v74 + v75[36]);
  *&v126[0] = 0;
  BYTE8(v126[0]) = 1;
  *(&v126[4] + 9) = *&v133[64];
  *(&v126[5] + 9) = *&v133[80];
  *(&v126[6] + 9) = *&v133[96];
  *(v126 + 9) = *v133;
  *(&v126[1] + 9) = *&v133[16];
  *(&v126[2] + 9) = *&v133[32];
  *(&v126[3] + 9) = *&v133[48];
  *(&v126[7] + 1) = *&v133[111];
  strcpy(&v127, "BottomOfView");
  BYTE13(v127) = 0;
  HIWORD(v127) = -5120;
  v85 = v126[7];
  v84[6] = v126[6];
  v84[7] = v85;
  v86 = v126[3];
  v84[2] = v126[2];
  v84[3] = v86;
  v87 = v126[5];
  v84[4] = v126[4];
  v84[5] = v87;
  v88 = v126[1];
  *v84 = v126[0];
  v84[1] = v88;
  v84[8] = v127;

  sub_24523F1D4(v126, &v128);
  sub_24523F244(v120, type metadata accessor for RemoteSecretEscapeOfferButton);
  sub_24521E5B0(v117, &qword_27EE0EDA8);
  sub_24523F244(v116, type metadata accessor for RemoteSecretDeviceImageView);
  v130[2] = *&v133[64];
  v130[3] = *&v133[80];
  *v131 = *&v133[96];
  *&v129[1] = *v133;
  *&v129[17] = *&v133[16];
  v130[0] = *&v133[32];
  v128 = 0.0;
  v129[0] = 1;
  v130[1] = *&v133[48];
  *&v131[15] = *&v133[111];
  strcpy(v132, "BottomOfView");
  HIBYTE(v132[6]) = 0;
  v132[7] = -5120;
  sub_24521E5B0(&v128, &qword_27EE0EDE0);
  sub_24523F244(v73, type metadata accessor for RemoteSecretEscapeOfferButton);
  sub_24521E5B0(v119, &qword_27EE0EDA8);

  return sub_24523F244(v118, type metadata accessor for RemoteSecretDeviceImageView);
}

uint64_t sub_24523D3EC()
{
  type metadata accessor for RemoteSecretView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED28);
  return sub_2452542FC();
}

uint64_t sub_24523D464(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v27 = a3;
  v4 = sub_2452550CC();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2452550FC();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24525452C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_24525511C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  if ((*a2 & 1) == 0)
  {
    sub_245229E90();
    v25 = sub_2452553DC();
    sub_24525510C();
    sub_24525512C();
    v26 = *(v12 + 8);
    v26(v15, v11);
    (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v8);
    v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v20 = swift_allocObject();
    (*(v9 + 32))(v20 + v19, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    aBlock[4] = sub_24523EE88;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24522D9C8;
    aBlock[3] = &block_descriptor_7;
    v21 = _Block_copy(aBlock);

    sub_2452550EC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24523F0A4(&qword_27EE0DB88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DB90);
    sub_24521EA80(&qword_27EE0DB98, &qword_27EE0DB90);
    v22 = v29;
    v23 = v32;
    sub_2452554DC();
    v24 = v25;
    MEMORY[0x245D65E40](v18, v7, v22, v21);
    _Block_release(v21);

    (*(v31 + 8))(v22, v23);
    (*(v28 + 8))(v7, v30);
    return (v26)(v18, v11);
  }

  return result;
}

uint64_t sub_24523D8FC()
{
  sub_24525509C();
  sub_24525442C();
}

uint64_t sub_24523D968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v0 = v9[20];
  v1 = v9[23];
  sub_24521D71C();

  sub_24521D724();
  if (v0 < 0 || (sub_24525500C(), swift_getKeyPath(), sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel), sub_24525417C(), , , , v2 = sub_24525520C(), , v2 != v1))
  {
    sub_24525500C();
    v3 = v9[20];
    sub_24521D71C();

    sub_24521D724();
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    sub_24525500C();
    swift_getKeyPath();
    sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
    sub_24525417C();

    v5 = v9[7];
    v6 = v9[8];

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_24525500C();
      swift_getKeyPath();
      sub_24525417C();

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong remoteSecretEntryDidRequestEnableUserInteraction];
    }

    else
    {
LABEL_5:
      sub_24525500C();
      swift_getKeyPath();
      sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
      sub_24525417C();

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong remoteSecretEntryDidRequestDisableUserInteraction];
    }
  }

  else
  {
    sub_24525500C();
    sub_24524A798();
  }
}

uint64_t sub_24523DCD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  swift_getKeyPath();
  sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525417C();

  v0 = *(v2 + 73);

  if ((v0 & 1) == 0)
  {
    type metadata accessor for RemoteSecretView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0ED28);
    return sub_2452542FC();
  }

  return result;
}

unint64_t sub_24523DDF8()
{
  result = qword_27EE0ECD8;
  if (!qword_27EE0ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0ECD8);
  }

  return result;
}

uint64_t sub_24523DE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RemoteSecretView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24523B728(a1, v6, a2);
}

CGFloat sub_24523DECC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sin(*(v1 + 16) * 3.14159265 * *(v1 + 8));
  CGAffineTransformMakeTranslation(&v8, v3 * v4, 0.0);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

double sub_24523DF54@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_24523DF60(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t sub_24523DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24523F40C();

  return MEMORY[0x282130D98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_24523E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24523F40C();

  return MEMORY[0x282130D80](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_24523E0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  sub_245248A24();
}

double sub_24523E14C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  swift_getKeyPath();
  sub_24523F0A4(&qword_27EE0DD40, type metadata accessor for RemoteSecretViewModel);
  sub_24525417C();

  v2 = *(v25 + 264);

  v4 = v2(v3);

  if (v4)
  {
    sub_24523E360(v15);
    v20 = v15[3];
    v21 = v15[4];
    v22 = v16;
    v17 = v15[0];
    v18 = v15[1];
    v19 = v15[2];
    v24 = 0;
    v23 = 0;
  }

  else
  {
    sub_24525500C();
    v5 = sub_24524A36C();
    v7 = v6;

    *&v25 = v5;
    *(&v25 + 1) = v7;
    sub_24521E31C();
    v8 = sub_245254BFC();
    LOBYTE(v15[0]) = v9 & 1;
    v24 = 1;
    *&v17 = v8;
    *(&v17 + 1) = v10;
    LOBYTE(v18) = v9 & 1;
    *(&v18 + 1) = v11;
    v23 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE28);
  sub_24523F588();
  sub_24525489C();
  v12 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v12;
  *(a1 + 64) = *v29;
  *(a1 + 79) = *&v29[15];
  result = *&v25;
  v14 = v26;
  *a1 = v25;
  *(a1 + 16) = v14;
  return result;
}

double sub_24523E360@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v2 = *(v26 + 160);
  sub_24521D71C();

  sub_24521D724();
  if (v2 < 0)
  {
    sub_24525500C();
    v4 = sub_24524A36C();
    v6 = v5;

    *&v26 = v4;
    *(&v26 + 1) = v6;
    sub_24521E31C();
    v7 = sub_245254BFC();
    LOBYTE(v15[0]) = v8 & 1;
    v25 = 1;
    v17 = v7;
    v18 = v9;
    v19 = v8 & 1;
    *(&v20 + 7) = v10;
    v24 = 1;
  }

  else
  {
    v3 = sub_24525471C();
    LOBYTE(v26) = 1;
    sub_24523E56C(v15);
    *&v14[48] = *&v16[9];
    *&v14[39] = *v16;
    *&v14[23] = v15[1];
    *&v14[7] = v15[0];
    v20 = *v14;
    v21 = *&v14[16];
    v22 = *&v14[32];
    v25 = 0;
    v17 = v3;
    v18 = 0;
    v19 = v26;
    v23 = *&v14[48];
    v24 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE38);
  sub_24521EA80(&qword_27EE0EE30, &qword_27EE0EE38);
  sub_24525489C();
  v11 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v11;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  result = *&v26;
  v13 = v27;
  *a1 = v26;
  *(a1 + 16) = v13;
  return result;
}

uint64_t sub_24523E56C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  sub_24524A36C();

  sub_24521E31C();
  v2 = sub_245254BFC();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_24521F94C(v2, v3, v5 & 1);

  sub_24521F95C(v2, v4, v6);
}

uint64_t sub_24523E658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24523F16C(v2, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RemoteSecretEscapeOfferButton);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24523F460(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for RemoteSecretEscapeOfferButton);
  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE10);
  sub_24523F4FC();
  sub_245254F4C();
  v8 = sub_245254A6C();
  sub_2452542DC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE40);
  v18 = a2 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for RemoteSecretView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x245D66B10](v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24523E948()
{
  result = qword_27EE0ECF8;
  if (!qword_27EE0ECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECE0);
    sub_24523EA04();
    sub_24523F0A4(&qword_27EE0ED20, type metadata accessor for RemoteSecretAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0ECF8);
  }

  return result;
}

unint64_t sub_24523EA04()
{
  result = qword_27EE0ED00;
  if (!qword_27EE0ED00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ED08);
    sub_24521EA80(&qword_27EE0ED10, &qword_27EE0ED18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0ED00);
  }

  return result;
}

uint64_t sub_24523EAE8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24523EB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RemoteSecretView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24525441C() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24523C050(a1, v2 + v6, v9, a2);
}

uint64_t sub_24523EC50(uint64_t a1, _BYTE *a2)
{
  v5 = *(sub_24525452C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24523D464(a1, a2, v6);
}

unint64_t sub_24523ECD0()
{
  result = qword_27EE0ED80;
  if (!qword_27EE0ED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ED70);
    sub_24521EA80(&qword_27EE0ED88, &qword_27EE0ED68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0ED80);
  }

  return result;
}

uint64_t sub_24523ED88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ECC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = sub_24525452C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24523EF64()
{
  result = qword_27EE0EDB8;
  if (!qword_27EE0EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EDB8);
  }

  return result;
}

unint64_t sub_24523EFE8()
{
  result = qword_27EE0EDC0;
  if (!qword_27EE0EDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0ED98);
    sub_24523F0A4(&qword_27EE0EDC8, type metadata accessor for iOSRemoteSecretEntryView);
    sub_24523F0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EDC0);
  }

  return result;
}

uint64_t sub_24523F0A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24523F0EC()
{
  result = qword_27EE0EDD0;
  if (!qword_27EE0EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EDD0);
  }

  return result;
}

uint64_t sub_24523F16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24523F1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24523F244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Shake(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Shake(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_24523F340()
{
  result = qword_27EE0EDF8;
  if (!qword_27EE0EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EDF8);
  }

  return result;
}

unint64_t sub_24523F398()
{
  result = qword_27EE0EE00;
  if (!qword_27EE0EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE00);
  }

  return result;
}

unint64_t sub_24523F40C()
{
  result = qword_27EE0EE08;
  if (!qword_27EE0EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE08);
  }

  return result;
}

uint64_t sub_24523F460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24523F4FC()
{
  result = qword_27EE0EE18;
  if (!qword_27EE0EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EE10);
    sub_24523F588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE18);
  }

  return result;
}

unint64_t sub_24523F588()
{
  result = qword_27EE0EE20;
  if (!qword_27EE0EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EE28);
    sub_24521EA80(&qword_27EE0EE30, &qword_27EE0EE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE20);
  }

  return result;
}

unint64_t sub_24523F640()
{
  result = qword_27EE0EE48;
  if (!qword_27EE0EE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EE40);
    sub_24521EA80(&qword_27EE0EE50, &qword_27EE0EE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CDPFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CDPFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24523F88C()
{
  result = qword_27EE0EE60;
  if (!qword_27EE0EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE60);
  }

  return result;
}

const char *sub_24523F8F8()
{
  if (*v0)
  {
    return "SwiftUI";
  }

  else
  {
    return "OnBoardingKit";
  }
}

const char *sub_24523F928()
{
  if (*v0)
  {
    return "Solarium";
  }

  else
  {
    return "NaturalUI";
  }
}

CoreCDPUI::InformationLabelView::Link __swiftcall InformationLabelView.Link.init(text:url:)(Swift::String text, Swift::String_optional url)
{
  object = url.value._object;
  countAndFlagsBits = url.value._countAndFlagsBits;
  v5 = text._object;
  v6 = text._countAndFlagsBits;
  v7 = v2;
  if (!url.value._object)
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v8 = sub_24525420C();
    __swift_project_value_buffer(v8, qword_27EE11750);
    v9 = sub_2452541EC();
    v10 = sub_24525538C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24524031C(1802398028, 0xE400000000000000, &v13);
      _os_log_impl(&dword_2451DB000, v9, v10, "%s Link has text but no url", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D66A70](v12, -1, -1);
      MEMORY[0x245D66A70](v11, -1, -1);
    }
  }

  *v7 = v6;
  v7[1] = v5;
  v7[2] = countAndFlagsBits;
  v7[3] = object;
  result.url = url;
  result.text = text;
  return result;
}

__n128 InformationLabelView.init(text:link:isLinkOnNewLine:textAlignment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a3;
  v7 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v7;
  *(a6 + 48) = a4;
  *(a6 + 49) = a5;
  return result;
}

double InformationLabelView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24525475C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24525408C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24525409C();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2452540BC();
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_2452540DC();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v23 = *v1;
  v65 = v1[1];
  v66 = v23;
  v24 = v1[3];
  v64 = *(v1 + 49);
  if (v24 && (v25 = v1[5]) != 0)
  {
    v52 = v22;
    v53 = &v51 - v20;
    v58 = v19;
    v59 = a1;
    v26 = *(v1 + 48);
    v57 = v21;
    v54 = v1[4];
    v27 = v1[2];
    *&v72 = v66;
    *(&v72 + 1) = v65;
    v56 = v4;
    if (v26)
    {
      v28 = 10;
    }

    else
    {
      v28 = 32;
    }

    v55 = v7;
    MEMORY[0x245D65CD0](v28, 0xE100000000000000);

    *&v67 = 91;
    *(&v67 + 1) = 0xE100000000000000;
    MEMORY[0x245D65CD0](v27, v24);
    MEMORY[0x245D65CD0](10333, 0xE200000000000000);
    v29 = v57;
    MEMORY[0x245D65CD0](v54, v25);

    MEMORY[0x245D65CD0](41, 0xE100000000000000);
    MEMORY[0x245D65CD0](v67, *(&v67 + 1));

    v30 = sub_24525415C();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    (*(v61 + 104))(v62, *MEMORY[0x277CC8BB0], v63);
    (*(v5 + 104))(v55, *MEMORY[0x277CC8B98], v56);
    sub_2452540AC();
    sub_2452540CC();
    v41 = v58;
    (*(v29 + 56))(v16, 0, 1, v58);
    v42 = v53;
    (*(v29 + 32))(v53, v16, v41);
    (*(v29 + 16))(v52, v42, v41);
    v43 = sub_245254BEC();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    KeyPath = swift_getKeyPath();
    v71 = 0;
    *&v72 = v43;
    *(&v72 + 1) = v45;
    LOBYTE(v73) = v47 & 1;
    *(&v73 + 1) = v49;
    LOWORD(v74) = 256;
    *(&v74 + 1) = KeyPath;
    v75 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1F8);
    sub_245227424();
    sub_24525489C();
    (*(v29 + 8))(v42, v41);
    v72 = v67;
    v73 = v68;
    v74 = v69;
    v75 = v70;
    a1 = v59;
  }

  else
  {
    sub_24525474C();
    sub_24525473C();
    sub_24525472C();
    sub_24525473C();
    sub_24525476C();
    v31 = sub_245254BDC();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = swift_getKeyPath();
    LOBYTE(v72) = v35 & 1;
    v71 = 1;
    *&v67 = v31;
    *(&v67 + 1) = v33;
    LOBYTE(v68) = v35 & 1;
    *(&v68 + 1) = v37;
    LOWORD(v69) = 256;
    *(&v69 + 1) = v38;
    LOBYTE(v70) = v64;
    HIBYTE(v70) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E1F8);
    sub_245227424();
    sub_24525489C();
  }

  v39 = v73;
  *a1 = v72;
  *(a1 + 16) = v39;
  result = *&v74;
  *(a1 + 32) = v74;
  *(a1 + 48) = v75;
  return result;
}

uint64_t sub_24524024C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2452402C0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24524031C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24524031C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2452403E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24523A408(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2452403E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2452404F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24525554C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2452404F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_245240540(a1, a2);
  sub_245240670(&unk_285823FE8);
  return v3;
}

uint64_t sub_245240540(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24524075C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24525554C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24525526C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24524075C(v10, 0);
        result = sub_24525550C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_245240670(uint64_t result)
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

  result = sub_2452407D0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_24524075C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2452407D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_2452408C4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2452408D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24525461C();
  *a1 = result;
  return result;
}

unint64_t sub_245240928()
{
  result = qword_27EE0E9E0;
  if (!qword_27EE0E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E9E0);
  }

  return result;
}

uint64_t sub_24524098C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9CoreCDPUI20InformationLabelViewV4LinkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_245240A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_245240A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245240AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_245240B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_245240B84()
{
  result = qword_27EE0EE68;
  if (!qword_27EE0EE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EE70);
    sub_245227424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE68);
  }

  return result;
}

uint64_t sub_245240C0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_245240C54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_245240CC0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEA0);
  result = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = *a1;
  *v13 = 0;
  v13[8] = 1;
  if (v14 > 4)
  {
    __break(1u);
  }

  else
  {
    v22 = a3;
    *&v23 = qword_285824100[v14 + 4];
    swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a4;
    *(v15 + 32) = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEB0);
    sub_24521EA80(&qword_27EE0EEB8, &qword_27EE0EEA8);
    sub_24521EA80(&qword_27EE0EEC0, &qword_27EE0EEB0);
    sub_245254FCC();
    sub_24525507C();
    sub_24525459C();
    v16 = v22;
    sub_2451DF55C(v13, v22);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE88);
    v17 = (v16 + *(result + 36));
    v18 = v28;
    v17[4] = v27;
    v17[5] = v18;
    v17[6] = v29;
    v19 = v24;
    *v17 = v23;
    v17[1] = v19;
    v20 = v26;
    v17[2] = v25;
    v17[3] = v20;
  }

  return result;
}

uint64_t sub_245240F58@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *a1;
  *a2 = sub_2452546FC();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEC8);
  return sub_245240FD8(v7, a2 + *(v8 + 44), a3, a4);
}

uint64_t sub_245240FD8@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v36 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EED8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v44 = &type metadata for CDPFeatureFlags;
  v16 = sub_245241AA0();
  v45 = v16;
  LOBYTE(v41) = 0;
  v17 = sub_2452541CC();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  if ((v17 & 1) == 0 || (v44 = &type metadata for CDPFeatureFlags, v45 = v16, LOBYTE(v41) = 1, v18 = sub_2452541CC(), __swift_destroy_boxed_opaque_existential_1(&v41), v19 = a4, (v18 & 1) == 0))
  {
    v19 = a3;
  }

  sub_2452412E0(a1, v9, v19);
  sub_245241AF4();
  sub_245254CEC();
  sub_24521E5B0(v9, &qword_27EE0EED0);
  v41 = sub_245231778();
  v42 = v20;
  sub_24521E31C();
  v35 = sub_245254BFC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_245254B5C();
  KeyPath = swift_getKeyPath();
  v29 = v24 & 1;
  LOBYTE(v41) = v24 & 1;
  sub_24521F96C(v15, v13, &qword_27EE0EED8);
  v30 = v36;
  sub_24521F96C(v13, v36, &qword_27EE0EED8);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF18) + 48);
  v32 = v35;
  *&v37 = v35;
  *(&v37 + 1) = v22;
  LOBYTE(v38) = v29;
  *(&v38 + 1) = v26;
  LOWORD(v39) = 256;
  *(&v39 + 1) = KeyPath;
  v40 = v27;
  v33 = v38;
  *v31 = v37;
  *(v31 + 16) = v33;
  *(v31 + 32) = v39;
  *(v31 + 48) = v27;
  sub_245241CD0(&v37, &v41);
  sub_24521E5B0(v15, &qword_27EE0EED8);
  v41 = v32;
  v42 = v22;
  v43 = v29;
  v44 = v26;
  LOWORD(v45) = 256;
  v46 = KeyPath;
  v47 = v27;
  sub_245241D40(&v41);
  return sub_24521E5B0(v13, &qword_27EE0EED8);
}

uint64_t sub_2452412E0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF28);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF00);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF30);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EEF8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v36 = &type metadata for CDPFeatureFlags;
  v16 = sub_245241AA0();
  v37 = v16;
  LOBYTE(v35[0]) = 0;
  v17 = sub_2452541CC();
  __swift_destroy_boxed_opaque_existential_1(v35);
  if (v17 & 1) != 0 && (v36 = &type metadata for CDPFeatureFlags, v37 = v16, LOBYTE(v35[0]) = 1, v18 = sub_2452541CC(), __swift_destroy_boxed_opaque_existential_1(v35), (v18))
  {
    sub_2452315A0(a1);
    sub_2452541DC();
    v19 = sub_24521EA80(&qword_27EE0EF08, &qword_27EE0EF00);
    sub_245254C0C();
    (*(v28 + 8))(v9, v7);
    v35[0] = sub_245231778();
    v35[1] = v20;
    v33 = v7;
    v34 = v19;
    swift_getOpaqueTypeConformance2();
    sub_24521E31C();
    v21 = v30;
    sub_245254CDC();

    (*(v29 + 8))(v12, v21);
    sub_24521F96C(v15, v6, &qword_27EE0EEF8);
    swift_storeEnumTagMultiPayload();
    sub_245241B80();
    sub_245241C7C();
    sub_24525489C();
    return sub_24521E5B0(v15, &qword_27EE0EEF8);
  }

  else
  {
    v23 = sub_245231454(a1);
    v25 = v24;
    v26 = sub_245231778();
    *v6 = v23;
    *(v6 + 1) = v25;
    *(v6 + 2) = v26;
    *(v6 + 3) = v27;
    *(v6 + 4) = a3;
    swift_storeEnumTagMultiPayload();
    sub_245241B80();
    sub_245241C7C();
    return sub_24525489C();
  }
}

uint64_t sub_245241714()
{
  type metadata accessor for AdvancedDataProtectionDataClassViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();

  v2 = [v1 bundleForClass_];
  sub_245254EFC();
  sub_24525506C();
  sub_2452543EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E468);
  sub_2452284C0();
  sub_24521E31C();
  sub_245254CDC();
}

uint64_t sub_24524188C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_24525505C();
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE80);
  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EE88);
  sub_24521DF40();
  sub_2452419DC();
  return sub_245254FCC();
}

unint64_t sub_2452419DC()
{
  result = qword_27EE0EE90;
  if (!qword_27EE0EE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EE88);
    sub_24521EA80(&qword_27EE0EE98, &qword_27EE0EEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EE90);
  }

  return result;
}

unint64_t sub_245241AA0()
{
  result = qword_27EE0EEE0;
  if (!qword_27EE0EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EEE0);
  }

  return result;
}

unint64_t sub_245241AF4()
{
  result = qword_27EE0EEE8;
  if (!qword_27EE0EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EED0);
    sub_245241B80();
    sub_245241C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EEE8);
  }

  return result;
}

unint64_t sub_245241B80()
{
  result = qword_27EE0EEF0;
  if (!qword_27EE0EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EF00);
    sub_24521EA80(&qword_27EE0EF08, &qword_27EE0EF00);
    swift_getOpaqueTypeConformance2();
    sub_24522FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EEF0);
  }

  return result;
}

unint64_t sub_245241C7C()
{
  result = qword_27EE0EF10;
  if (!qword_27EE0EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF10);
  }

  return result;
}

uint64_t sub_245241CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245241D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245241DD4()
{
  result = qword_27EE0EF48;
  if (!qword_27EE0EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EF50);
    sub_2452284C0();
    sub_24522FCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF48);
  }

  return result;
}

void sub_245241E60(void *a1, void *a2)
{
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24525420C();
  __swift_project_value_buffer(v5, qword_27EE11750);
  v6 = sub_2452541EC();
  v7 = sub_24525536C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2451DB000, v6, v7, "Starting ADP detailAction event.", v8, 2u);
    MEMORY[0x245D66A70](v8, -1, -1);
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CFDA88]) initWithEvent_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2452552CC();
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CFDA60]];

    v12 = *(v2 + 24);
    v13 = [v12 primaryAuthKitAccount];
    if (v13)
    {
      v14 = v13;
      v15 = [v12 appleIDCountryCodeForAccount_];
      if (v15)
      {
        v16 = v15;
        sub_24525518C();
      }

      v17 = sub_24525515C();

      [v10 setObject:v17 forKeyedSubscript:*MEMORY[0x277CFDA68]];
    }

    if (a1)
    {
      v18 = a1;
      v19 = [v18 deviceRegionCode];
      if (v19)
      {
        v20 = v19;
        sub_24525518C();
      }

      v21 = sub_24525515C();

      [v10 setObject:v21 forKeyedSubscript:*MEMORY[0x277CFDA70]];
    }

    if (a2)
    {
      v22 = a2;
      [v22 code];
      v23 = sub_24525534C();
      [v10 setObject:v23 forKeyedSubscript:*MEMORY[0x277CFDA78]];
    }

    v24 = sub_24525515C();
    [v10 setObject:v24 forKeyedSubscript:*MEMORY[0x277CFDA80]];

    [v10 sendReport];
    oslog = sub_2452541EC();
    v25 = sub_24525536C();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2451DB000, oslog, v25, "ADP detailAction event sent.", v26, 2u);
      MEMORY[0x245D66A70](v26, -1, -1);
    }
  }
}

uint64_t sub_24524220C()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for CenteredLink()
{
  result = qword_27EE0EF58;
  if (!qword_27EE0EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2452422EC()
{
  sub_245242378();
  if (v0 <= 0x3F)
  {
    sub_24525415C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245242378()
{
  if (!qword_27EE0EF68)
  {
    v0 = sub_24525548C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE0EF68);
    }
  }
}

uint64_t sub_2452423E4@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v34 = sub_24525408C();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24525409C();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2452540BC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_2452540DC();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v32 = v1;
  sub_2452428D8(v1);
  v18 = sub_24525415C();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  (*(v5 + 104))(v7, *MEMORY[0x277CC8BB0], v33);
  (*(v2 + 104))(v4, *MEMORY[0x277CC8B98], v34);
  sub_2452540AC();
  sub_2452540CC();
  v20 = v30;
  v19 = v31;
  (*(v30 + 16))(v15, v17, v31);
  v21 = sub_245254BEC();
  v23 = v22;
  LOBYTE(v7) = v24;
  v26 = v25;
  result = (*(v20 + 8))(v17, v19);
  v28 = v35;
  *v35 = v21;
  v28[1] = v23;
  *(v28 + 16) = v7 & 1;
  v28[3] = v26;
  return result;
}

uint64_t sub_2452428D8(uint64_t *a1)
{
  MEMORY[0x245D65CD0](a1[2], a1[3]);
  MEMORY[0x245D65CD0](10333, 0xE200000000000000);
  type metadata accessor for CenteredLink();
  sub_24525415C();
  sub_245242AC4();
  v2 = sub_2452555AC();
  MEMORY[0x245D65CD0](v2);

  MEMORY[0x245D65CD0](41, 0xE100000000000000);
  v3 = 91;
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DD08);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24525CF70;
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;
    *(v6 + 48) = 91;
    *(v6 + 56) = 0xE100000000000000;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF70);
    sub_24521EA80(&qword_27EE0EF78, &qword_27EE0EF70);
    v3 = sub_24525514C();
  }

  return v3;
}

uint64_t sub_245242A58@<X0>(uint64_t a1@<X8>)
{
  sub_2452423E4(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

unint64_t sub_245242AC4()
{
  result = qword_27EE0E7E8;
  if (!qword_27EE0E7E8)
  {
    sub_24525415C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0E7E8);
  }

  return result;
}

uint64_t EscapeOffer.localizedTitle.getter()
{
  if (*v0 >= 2u || *v0)
  {
    v6 = [objc_opt_self() bundle];
    v5 = sub_2452540EC();
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v1 = sub_24525420C();
    __swift_project_value_buffer(v1, qword_27EE11750);
    v2 = sub_2452541EC();
    v3 = sub_24525537C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2451DB000, v2, v3, "The user should not be able to select an escape offer for remote secret entry.", v4, 2u);
      MEMORY[0x245D66A70](v4, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t EscapeOffer.hashValue.getter()
{
  v1 = *v0;
  sub_2452555CC();
  MEMORY[0x245D66060](v1);
  return sub_2452555EC();
}

unint64_t sub_245243104()
{
  result = qword_27EE0EF80;
  if (!qword_27EE0EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF80);
  }

  return result;
}

unint64_t sub_24524315C()
{
  result = qword_27EE0EF88;
  if (!qword_27EE0EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF88);
  }

  return result;
}

unint64_t sub_2452431B4()
{
  result = qword_27EE0EF90;
  if (!qword_27EE0EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF90);
  }

  return result;
}

uint64_t _s9CoreCDPUI16RemoteSecretTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (*a1 < 0)
  {
    if (v6 < 0)
    {
      sub_24521D71C();
      sub_24521D71C();
      if (sub_2452309F0(v3, v6))
      {
        if (v2 == v7 && v5 == v9)
        {
          sub_24521D724();
          sub_24521D724();
          return 1;
        }

        else
        {
          v12 = sub_2452555BC();
          sub_24521D724();
          sub_24521D724();
          return v12 & 1;
        }
      }

LABEL_9:
      sub_24521D724();
      sub_24521D724();
      return 0;
    }

LABEL_8:
    sub_24521D71C();
    sub_24521D71C();
    goto LABEL_9;
  }

  if (v6 < 0)
  {
    goto LABEL_8;
  }

  sub_24521D71C();
  sub_24521D71C();
  if ((sub_2452309F0(v3, v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v2 == v7 && v5 == v9)
  {
    sub_24521D724();
    sub_24521D724();
    return v4 == v8;
  }

  v11 = sub_2452555BC();
  sub_24521D724();
  sub_24521D724();
  result = 0;
  if (v11)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_245243478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
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

uint64_t sub_2452434C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 8 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for RemoteSecretDeviceImageView()
{
  result = qword_27EE0EF98;
  if (!qword_27EE0EF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2452435D4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for RemoteSecretDeviceImageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  sub_245246300();

  sub_24525414C();

  sub_245243C5C(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_245243CC0(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_24521F96C(v10, v8, &qword_27EE0E7E0);
  v13 = swift_allocObject();
  v13[2] = sub_2452438F8;
  v13[3] = 0;
  v13[4] = sub_245243D24;
  v13[5] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EFA8);
  sub_245244440();
  v14 = v20;
  sub_2452542AC();
  sub_24521E5B0(v10, &qword_27EE0E7E0);
  sub_24525500C();
  v15 = v21;
  swift_getKeyPath();
  v21 = v15;
  sub_245235F6C();
  sub_24525417C();

  v16 = *(v15 + 264);

  LOBYTE(v15) = v16(v17);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F008);
  v19 = v14 + *(result + 36);
  *v19 = v15 & 1;
  *(v19 + 8) = 0x4034000000000000;
  return result;
}

double sub_2452438F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_245254ECC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_245254EEC();
  (*(v3 + 8))(v5, v2);
  sub_24525506C();
  sub_2452543EC();
  *&v9[40] = v12;
  *&v9[24] = v11;
  *&v9[8] = v10;
  v7 = *&v9[18];
  *(a1 + 18) = *&v9[2];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v7;
  result = *&v9[34];
  *(a1 + 50) = *&v9[34];
  *(a1 + 64) = *&v9[48];
  return result;
}

uint64_t sub_245243A70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_245254ECC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0DD10);
  sub_24525500C();
  v6 = sub_24524E00C();

  if (v6)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v7 = sub_245254EEC();

    (*(v3 + 8))(v5, v2);
    sub_24525506C();
    sub_2452543EC();
    v17 = 1;
    v15 = v19;
    v16 = v18;
    v14 = v20;
    v8 = 1;
    v9 = sub_245254E5C();
    result = sub_245254E7C();
    v12 = v14;
    v11 = v15;
    v13 = v16;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    result = 0;
    v8 = 0;
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v13;
  *(a1 + 40) = v11;
  *(a1 + 56) = v12;
  *(a1 + 72) = v9;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_245243C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteSecretDeviceImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245243CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteSecretDeviceImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245243D24@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RemoteSecretDeviceImageView();

  return sub_245243A70(a1);
}

uint64_t sub_245243D94@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F030);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F038);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F040);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  if (a2)
  {
    *v15 = sub_24525471C();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F068) + 44);
    v27[0] = v6;
    v27[1] = a3;
    v17 = &v15[v16];
    v18 = *(v10 + 16);
    v18(v12, a1, v9);
    *v17 = 0;
    v17[8] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F070);
    v18(&v17[*(v19 + 48)], v12, v9);
    v20 = &v17[*(v19 + 64)];
    *v20 = 0;
    v20[8] = 1;
    (*(v10 + 8))(v12, v9);
    LOBYTE(v19) = sub_245254A7C();
    sub_2452542DC();
    v21 = &v15[*(v13 + 36)];
    *v21 = v19;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_24521F96C(v15, v8, &qword_27EE0F040);
    swift_storeEnumTagMultiPayload();
    sub_245244850();
    sub_24521EA80(&qword_27EE0F060, &qword_27EE0F038);
    sub_24525489C();
    return sub_24521E5B0(v15, &qword_27EE0F040);
  }

  else
  {
    (*(v10 + 16))(v8, a1, v9);
    swift_storeEnumTagMultiPayload();
    sub_245244850();
    sub_24521EA80(&qword_27EE0F060, &qword_27EE0F038);
    return sub_24525489C();
  }
}

uint64_t sub_245244128@<X0>(void (*a1)(__int128 *__return_ptr)@<X1>, void (*a2)(__int128 *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  if (sub_24525450C())
  {
    a1(&v33);
    v18 = v35;
    v19 = v36;
    *&v20 = *v37;
    v16 = v33;
    v17 = v34;
    v24 = v35;
    v25 = v36;
    *v26 = *v37;
    v22 = v33;
    v23 = v34;
    sub_24521F96C(&v16, &v27, &qword_27EE0EFC0);
    sub_24521E5B0(&v22, &qword_27EE0EFC0);
    v29 = v18;
    v30 = v19;
    *v31 = v20;
    v27 = v16;
    v28 = v17;
    v32 = 0;
    v31[24] = 0;
    sub_24521F96C(&v16, &v33, &qword_27EE0EFC0);
    sub_24521F96C(&v16, &v33, &qword_27EE0EFC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EFC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EFE0);
    sub_2452444CC();
    sub_2452445DC();
    sub_24525489C();

    sub_24521E5B0(&v16, &qword_27EE0EFC0);
    sub_24521E5B0(&v16, &qword_27EE0EFC0);
  }

  else
  {
    a2(&v33);
    v18 = v35;
    v19 = v36;
    v20 = *v37;
    v21 = *&v37[16];
    v16 = v33;
    v17 = v34;
    *&v26[16] = *&v37[16];
    v24 = v35;
    v25 = v36;
    *v26 = *v37;
    v22 = v33;
    v23 = v34;
    sub_24521F96C(&v16, &v27, &qword_27EE0EFE0);
    sub_24521E5B0(&v22, &qword_27EE0EFE0);
    v29 = v18;
    v30 = v19;
    *v31 = v20;
    *&v31[16] = v21;
    v27 = v16;
    v28 = v17;
    v32 = 1;
    v31[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EFC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EFE0);
    sub_2452444CC();
    sub_2452445DC();
    sub_24525489C();
  }

  v6 = v36;
  v7 = v36;
  v24 = v35;
  v8 = v35;
  v25 = v36;
  *v26 = *v37;
  v10 = *v37;
  v9 = *v37;
  v11 = *&v37[9];
  *&v26[9] = *&v37[9];
  a3[2] = v35;
  a3[3] = v6;
  a3[4] = v9;
  *(a3 + 73) = v11;
  v12 = v34;
  v14 = v33;
  v13 = v34;
  v22 = v33;
  v23 = v34;
  *a3 = v33;
  a3[1] = v12;
  v27 = v14;
  v28 = v13;
  *&v31[9] = *&v37[9];
  v30 = v7;
  *v31 = v10;
  v29 = v8;
  sub_24521F96C(&v22, &v16, &qword_27EE0EFA8);
  return sub_24521E5B0(&v27, &qword_27EE0EFA8);
}

unint64_t sub_245244440()
{
  result = qword_27EE0EFB0;
  if (!qword_27EE0EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EFA8);
    sub_2452444CC();
    sub_2452445DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EFB0);
  }

  return result;
}

unint64_t sub_2452444CC()
{
  result = qword_27EE0EFB8;
  if (!qword_27EE0EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EFC0);
    sub_245244558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EFB8);
  }

  return result;
}

unint64_t sub_245244558()
{
  result = qword_27EE0EFC8;
  if (!qword_27EE0EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EFC8);
  }

  return result;
}

unint64_t sub_2452445DC()
{
  result = qword_27EE0EFD8;
  if (!qword_27EE0EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EFE0);
    sub_245244660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EFD8);
  }

  return result;
}

unint64_t sub_245244660()
{
  result = qword_27EE0EFE8;
  if (!qword_27EE0EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EFF0);
    sub_2452444CC();
    sub_24521EA80(&qword_27EE0EFF8, &qword_27EE0F000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EFE8);
  }

  return result;
}

unint64_t sub_245244728()
{
  result = qword_27EE0F010;
  if (!qword_27EE0F010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F008);
    sub_24521EA80(&qword_27EE0F018, &qword_27EE0F020);
    sub_2452447E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F010);
  }

  return result;
}

unint64_t sub_2452447E0()
{
  result = qword_27EE0F028;
  if (!qword_27EE0F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F028);
  }

  return result;
}

unint64_t sub_245244850()
{
  result = qword_27EE0F048;
  if (!qword_27EE0F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F040);
    sub_24521EA80(&qword_27EE0F050, &qword_27EE0F058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F048);
  }

  return result;
}

unint64_t sub_245244908()
{
  result = qword_27EE0F078;
  if (!qword_27EE0F078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0F080);
    sub_245244850();
    sub_24521EA80(&qword_27EE0F060, &qword_27EE0F038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F078);
  }

  return result;
}

void *DataAccessNavigationViewModel.__allocating_init(cdpContext:escapeOffers:stack:validator:devices:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2452541AC();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  if (!*(a3 + 16))
  {
    v11 = qword_27EE0D9E8;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_24525420C();
    __swift_project_value_buffer(v13, qword_27EE11750);
    v14 = sub_2452541EC();
    v15 = sub_24525538C();
    if (os_log_type_enabled(v14, v15))
    {
      v24 = v12;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v18 = [objc_opt_self() callStackSymbols];
      sub_2452552BC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF70);
      sub_2452453F0();
      v19 = sub_24525514C();
      v21 = v20;

      v22 = sub_24524031C(v19, v21, &v25);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2451DB000, v14, v15, "Stack should never be empty. Backtrace: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D66A70](v17, -1, -1);
      MEMORY[0x245D66A70](v16, -1, -1);
    }

    else
    {
    }
  }

  v10[5] = a4;
  v10[6] = a5;
  return v10;
}

uint64_t sub_245244C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24524560C();
  sub_24525417C();

  *a2 = *(v3 + 32);
}

uint64_t sub_245244C7C()
{
  swift_getKeyPath();
  sub_24524560C();
  sub_24525417C();
}

uint64_t sub_245244CF0(uint64_t result)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 32) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24524560C();
    sub_24525416C();
  }

  return result;
}

id sub_245244E44()
{
  swift_getKeyPath();
  sub_24524560C();
  sub_24525417C();

  v1 = *(v0 + 40);

  return v1;
}

id sub_245244EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24524560C();
  sub_24525417C();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_245244F4C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_245245588();
  v5 = v4;
  v6 = sub_24525542C();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24524560C();
    sub_24525416C();
  }
}

void *DataAccessNavigationViewModel.init(cdpContext:escapeOffers:stack:validator:devices:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_2452541AC();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  if (!*(a3 + 16))
  {
    v12 = qword_27EE0D9E8;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_24525420C();
    __swift_project_value_buffer(v14, qword_27EE11750);
    v15 = sub_2452541EC();
    v16 = sub_24525538C();
    if (os_log_type_enabled(v15, v16))
    {
      v25 = v13;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = [objc_opt_self() callStackSymbols];
      sub_2452552BC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EF70);
      sub_2452453F0();
      v20 = sub_24525514C();
      v22 = v21;

      v23 = sub_24524031C(v20, v22, &v26);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2451DB000, v15, v16, "Stack should never be empty. Backtrace: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245D66A70](v18, -1, -1);
      MEMORY[0x245D66A70](v17, -1, -1);
    }

    else
    {
    }
  }

  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t DataAccessNavigationViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9CoreCDPUI29DataAccessNavigationViewModel___observationRegistrar;
  v2 = sub_2452541BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DataAccessNavigationViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9CoreCDPUI29DataAccessNavigationViewModel___observationRegistrar;
  v2 = sub_2452541BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_2452453F0()
{
  result = qword_27EE0EF78;
  if (!qword_27EE0EF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0EF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0EF78);
  }

  return result;
}

uint64_t type metadata accessor for DataAccessNavigationViewModel()
{
  result = qword_27EE0F090;
  if (!qword_27EE0F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2452454A8()
{
  result = sub_2452541BC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_245245588()
{
  result = qword_27EE0F0A0;
  if (!qword_27EE0F0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0F0A0);
  }

  return result;
}

void sub_2452455D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

unint64_t sub_24524560C()
{
  result = qword_27EE0F0A8;
  if (!qword_27EE0F0A8)
  {
    type metadata accessor for DataAccessNavigationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0F0A8);
  }

  return result;
}

uint64_t sub_245245664()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
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

uint64_t sub_2452456B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2452456FC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_24524575C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  result = [objc_opt_self() sharedBag];
  v11 = result;
  if (a1)
  {
    if (result)
    {
      v12 = [result dataRecoveryServiceEnableURL];

      if (v12)
      {
        sub_24525413C();

        v13 = sub_24525415C();
        (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
      }

      else
      {
        v16 = sub_24525415C();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      }

      return sub_2452459A0(v9, a2);
    }

    __break(1u);
  }

  else if (result)
  {
    v14 = [result dataRecoveryServiceDisableURL];

    if (v14)
    {
      sub_24525413C();

      v15 = sub_24525415C();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v17 = sub_24525415C();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    v9 = v7;
    return sub_2452459A0(v9, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_2452459A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0E7E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245245A10(char a1, char a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  if ((*(v6 + 8))(v5, v6))
  {
    if (a1)
    {
      if (qword_27EE0D9E8 != -1)
      {
        swift_once();
      }

      v7 = sub_24525420C();
      __swift_project_value_buffer(v7, qword_27EE11750);
      v8 = sub_2452541EC();
      v9 = sub_24525537C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2451DB000, v8, v9, "ADP - Walrus not enabled", v10, 2u);
        MEMORY[0x245D66A70](v10, -1, -1);
      }

      sub_245241E60(0, 0);
      v22 = 5;
      v11 = &v22;
      goto LABEL_16;
    }

    if (a2)
    {
      v23 = 5;
      v11 = &v23;
LABEL_16:
      v16 = 1;
      return sub_24522E0B8(v11, v16);
    }

    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v18 = sub_24525420C();
    __swift_project_value_buffer(v18, qword_27EE11750);
    v19 = sub_2452541EC();
    v20 = sub_24525537C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2451DB000, v19, v20, "ADP - AKWalrusConfigProvider Region Unavailable", v21, 2u);
      MEMORY[0x245D66A70](v21, -1, -1);
    }

    v24 = 4;
    v11 = &v24;
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v12 = sub_24525420C();
    __swift_project_value_buffer(v12, qword_27EE11750);
    v13 = sub_2452541EC();
    v14 = sub_24525537C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2451DB000, v13, v14, "ADP - Network not reachable", v15, 2u);
      MEMORY[0x245D66A70](v15, -1, -1);
    }

    v25 = 3;
    v11 = &v25;
  }

  v16 = 0;
  return sub_24522E0B8(v11, v16);
}

uint64_t sub_245245D14(char a1, char a2, void *a3, uint64_t a4, char a5)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  if ((*(v10 + 8))(v9, v10))
  {
    if (a1)
    {
      if (qword_27EE0D9E8 != -1)
      {
        swift_once();
      }

      v11 = sub_24525420C();
      __swift_project_value_buffer(v11, qword_27EE11750);
      v12 = sub_2452541EC();
      v13 = sub_24525537C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2451DB000, v12, v13, "ADP - Walrus not enabled", v14, 2u);
        MEMORY[0x245D66A70](v14, -1, -1);
      }

      sub_245241E60(0, 0);
      v27 = 5;
      v15 = &v27;
      goto LABEL_16;
    }

    if (a2)
    {
      v28 = 5;
      v15 = &v28;
LABEL_16:
      v20 = a5 & 1;
      v21 = 1;
      return sub_24522DB40(v15, v21, a4, v20);
    }

    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24525420C();
    __swift_project_value_buffer(v23, qword_27EE11750);
    v24 = sub_2452541EC();
    v25 = sub_24525537C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2451DB000, v24, v25, "ADP - AKWalrusConfigProvider Region Unavailable", v26, 2u);
      MEMORY[0x245D66A70](v26, -1, -1);
    }

    v29 = 4;
    v15 = &v29;
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v16 = sub_24525420C();
    __swift_project_value_buffer(v16, qword_27EE11750);
    v17 = sub_2452541EC();
    v18 = sub_24525537C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2451DB000, v17, v18, "ADP - Network not reachable", v19, 2u);
      MEMORY[0x245D66A70](v19, -1, -1);
    }

    v30 = 3;
    v15 = &v30;
  }

  v20 = a5 & 1;
  v21 = 0;
  return sub_24522DB40(v15, v21, a4, v20);
}

uint64_t sub_245246024()
{
  v0 = sub_24525420C();
  __swift_allocate_value_buffer(v0, qword_27EE11750);
  __swift_project_value_buffer(v0, qword_27EE11750);

  return sub_2452541FC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_245246104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_245246180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_245246898(v1, v2);
}

uint64_t sub_2452461C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_245246260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 73);
  return result;
}

id sub_245246300()
{
  v1 = sub_24525407C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + 192) modelVersion];
  if (result)
  {
    v6 = result;
    v7 = sub_24525518C();
    v9 = v8;

    v10 = sub_24524DE54();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_24525552C();
      MEMORY[0x245D65CD0](0xD000000000000037, 0x80000002452645B0);
      v22 = v12;
      v23 = v13;
      v21[2] = 32;
      v21[3] = 0xE100000000000000;
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_24521E31C();
      v14 = sub_2452554AC();
      v16 = v15;

      v22 = v14;
      v23 = v16;
      if (qword_27EE0D9F0 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v1, qword_27EE0F0C0);
      (*(v2 + 16))(v4, v17, v1);
      v18 = sub_24525549C();
      v20 = v19;
      (*(v2 + 8))(v4, v1);

      MEMORY[0x245D65CD0](v18, v20);

      MEMORY[0x245D65CD0](47, 0xE100000000000000);
      MEMORY[0x245D65CD0](v7, v9);

      MEMORY[0x245D65CD0](0xD000000000000013, 0x80000002452645F0);
      return v24;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2452465B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_245235F6C();
  sub_24525417C();

  v3 = *(v1 + 16);
  v4 = *(v9 + 24);
  v5 = *(v9 + 32);
  v6 = *(v9 + 40);
  v7 = *(v9 + 48);
  result = sub_245235FC4(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_245246660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 48);
  *(a2 + 32) = v8;
  return sub_245235FC4(v4, v5, v6, v7, v8);
}

uint64_t sub_2452466EC()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525416C();
}

uint64_t sub_245246798(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 32);
  sub_24524C594(a2, v9);
  return sub_245236314(v2, v3, v4, v5, v7);
}

uint64_t sub_245246818()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_245246898(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_2452555BC() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }
}

uint64_t sub_2452469C8()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 72);
}

uint64_t sub_245246A38(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245246B18()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 73);
}

uint64_t sub_245246B88(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245246C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_245217E28(0, &qword_27EE0F0F0);
  if ((sub_24525542C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_2452555BC();
}

uint64_t sub_245246D24()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 200);
}

uint64_t sub_245246D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 200);
  return result;
}

uint64_t sub_245246E0C(uint64_t result)
{
  if (*(v1 + 200) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245246EE0()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 208);
}

uint64_t sub_245246F50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 208);
  return result;
}

uint64_t sub_245246FC8(uint64_t result)
{
  if (*(v1 + 208) == (result & 1))
  {
    *(v1 + 208) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_2452470A8()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_24524711C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_245247198(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_245217E28(0, &qword_27EE0F128);
  v3 = v2;
  v4 = sub_24525542C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_245247310()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_245247384@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_245247400(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_245247430(v1);
}

void sub_245247430(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_245217E28(0, &qword_27EE0F120);
  v3 = v2;
  v4 = sub_24525542C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2452475A8()
{
  v0 = sub_24525407C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27EE0F0C0);
  __swift_project_value_buffer(v0, qword_27EE0F0C0);
  sub_24525404C();
  sub_24525406C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_245247690()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 248);
}

uint64_t sub_245247700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 248);
  return result;
}

uint64_t sub_2452477A0(uint64_t result)
{
  if (*(v1 + 248) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245247874()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 256);
}

uint64_t sub_2452478E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 256);
  return result;
}

uint64_t sub_24524795C(uint64_t result)
{
  if (*(v1 + 256) == (result & 1))
  {
    *(v1 + 256) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245247A3C()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  return *(v0 + 257);
}

uint64_t sub_245247AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  *a2 = *(v3 + 257);
  return result;
}

uint64_t sub_245247B24(uint64_t result)
{
  if (*(v1 + 257) == (result & 1))
  {
    *(v1 + 257) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_245235F6C();
    sub_24525416C();
  }

  return result;
}

uint64_t sub_245247C04()
{
  v5 = &type metadata for CDPFeatureFlags;
  v0 = sub_245241AA0();
  v6 = v0;
  v4[0] = 0;
  v1 = sub_2452541CC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v2 = 0;
  if (v1)
  {
    v5 = &type metadata for CDPFeatureFlags;
    v6 = v0;
    v4[0] = 1;
    v2 = sub_2452541CC();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_245247C8C()
{
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v1 = *(v0 + 264);

  return v1;
}

uint64_t sub_245247D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  v5 = *(v3 + 264);
  v4 = *(v3 + 272);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_24524DD10;
  a2[1] = v6;
}

uint64_t sub_245247DB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_245235F6C();

  sub_24525416C();
}

uint64_t sub_245247EA0(id a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6, int a7, int a8, void *a9, void *a10, char a11, char a12, void *a13, void *a14)
{
  v15 = v14;
  LODWORD(v42) = a8;
  LODWORD(v44) = a7;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 2;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0xE000000000000000;
  *(v15 + 72) = 0;
  *(v15 + 74) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v15 + 248) = 0;
  *(v15 + 264) = sub_245247C04;
  *(v15 + 272) = 0;
  v20 = OBJC_IVAR____TtC9CoreCDPUI21RemoteSecretViewModel___observationRegistrar;
  sub_2452541AC();
  v21 = sub_24524D8B0(a4, a13);
  if (v21)
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
    sub_2452482D8(v21, v22, v23, v47);
    v27 = v47[0];
    v28 = v47[1];
    *(v15 + 136) = v24;
    *(v15 + 144) = v25;
    *(v15 + 152) = v26;
    *(v15 + 192) = v24;
    *(v15 + 160) = v27;
    *(v15 + 176) = v28;
    *(v15 + 80) = a1;
    *(v15 + 88) = a2;
    *(v15 + 96) = a3;
    *(v15 + 104) = a4;
    *(v15 + 112) = a5;
    *(v15 + 120) = a6;
    *(v15 + 128) = v44 & 1;
    v29 = [v24 remainingAttempts];
    if ((v29 & 0x8000000000000000) == 0)
    {
      *(v15 + 200) = v29;
      *(v15 + 208) = v42 & 1;
      MEMORY[0x245D66B10](v15 + 216);
      swift_unknownObjectWeakInit();

      MEMORY[0x245D66B10](v15 + 224);
      swift_unknownObjectWeakInit();

      *(v15 + 256) = a11 & 1;
      *(v15 + 257) = a12 & 1;
      *(v15 + 232) = a13;
      *(v15 + 240) = a14;
      return v15;
    }

    __break(1u);
    goto LABEL_10;
  }

  v42 = a1;
  v43 = a2;
  v44 = v20;
  v20 = a6;

  a1 = [objc_opt_self() cdp:-5219 errorWithCode:?];
  if (qword_27EE0D9E8 != -1)
  {
LABEL_10:
    swift_once();
  }

  v30 = sub_24525420C();
  __swift_project_value_buffer(v30, qword_27EE11750);
  v31 = a1;
  v32 = sub_2452541EC();
  v33 = sub_24525537C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v47[0] = v35;
    *v34 = 136315138;
    v48 = v31;
    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0DBD8);
    v37 = sub_2452551AC();
    v39 = sub_24524031C(v37, v38, v47);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2451DB000, v32, v33, "RemoteSecretViewModel init failed with error: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245D66A70](v35, -1, -1);
    MEMORY[0x245D66A70](v34, -1, -1);
  }

  swift_willThrow();
  sub_245236314(*(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48));

  MEMORY[0x245D66B10](v15 + 216);
  MEMORY[0x245D66B10](v15 + 224);

  v40 = sub_2452541BC();
  (*(*(v40 - 8) + 8))(&v44[v15], v40);
  type metadata accessor for RemoteSecretViewModel();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t sub_2452482D8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = a1;
  v8 = [v7 numericSecretLength];
  if (v8)
  {
    v9 = v8;
    if ([v8 integerValue] < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v9 integerValue];
    }
  }

  else
  {
    v10 = 0;
  }

  sub_245230BFC(v7, &v16);
  v11 = v16;
  v12 = [v7 hasNumericSecret];
  v13 = v10 < 7;
  if ((v12 & v13) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 | 0x8000000000000000;
  }

  if ((v12 & v13) == 0)
  {
    v10 = 0;
  }

  *a4 = v14;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v10;
  return result;
}

void *sub_2452483BC(uint64_t a1, unint64_t a2)
{
  v5 = [objc_opt_self() analyticsEventWithContext:*(v2 + 80) eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24525515C();
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD6D8]];
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v8 = sub_24525420C();
    __swift_project_value_buffer(v8, qword_27EE11750);

    v9 = sub_2452541EC();
    v10 = sub_24525537C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24524031C(a1, a2, &v14);
      _os_log_impl(&dword_2451DB000, v9, v10, "RemoteSecretViewModel was not able to send the event for the selected escape offer of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D66A70](v12, -1, -1);
      MEMORY[0x245D66A70](v11, -1, -1);
    }

    return 0;
  }

  return v6;
}

void *sub_245248594()
{
  v1 = [objc_opt_self() analyticsEventWithContext:*(v0 + 80) eventName:*MEMORY[0x277CFD6D0] category:*MEMORY[0x277CFD930]];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 96);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v22 = v1;
      v23 = MEMORY[0x277D84F90];
      sub_24524D674(0, v4, 0);
      v5 = v23;
      v6 = v3 + 32;
      do
      {
        ++v6;
        v7 = sub_24525518C();
        v10 = *(v23 + 16);
        v9 = *(v23 + 24);
        if (v10 >= v9 >> 1)
        {
          v20 = v8;
          v21 = v7;
          sub_24524D674((v9 > 1), v10 + 1, 1);
          v8 = v20;
          v7 = v21;
        }

        *(v23 + 16) = v10 + 1;
        v11 = v23 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8;
        --v4;
      }

      while (v4);
      v2 = v22;
    }

    sub_245248924(v5);

    v12 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v13 = sub_2452552AC();

    v14 = [v12 initWithArray_];

    v15 = [v14 aaf_arrayAsCommaSeperatedString];
    if (!v15)
    {
      sub_24525518C();
      v15 = sub_24525515C();
    }

    [v2 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v16 = sub_24525420C();
    __swift_project_value_buffer(v16, qword_27EE11750);
    v15 = sub_2452541EC();
    v17 = sub_24525537C();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2451DB000, v15, v17, "RemoteSecretViewModel was not able to send the event for the presented escape offers.", v18, 2u);
      MEMORY[0x245D66A70](v18, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t sub_245248924(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24524D654(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24524D654((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_24524DC88(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_245248A24()
{
  sub_245246898(0, 0xE000000000000000);
  swift_getKeyPath();
  v11[0] = v0;
  sub_245235F6C();
  sub_24525417C();

  if (*(v0 + 208) == 1)
  {
    sub_2452490F0();
    return;
  }

  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      LOBYTE(v11[0]) = *(v1 + 32);
LABEL_9:
      sub_245249288(v11);
      return;
    }

    v3 = 2;
    if (sub_24521FFAC(2u, *(v0 + 96)) || (v3 = 3, sub_24521FFAC(3u, v1)))
    {
      LOBYTE(v11[0]) = v3;
      goto LABEL_9;
    }

    if (*(v0 + 73) == 1)
    {
      *(v0 + 73) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v11[0] = v0;
      sub_24525416C();
    }

    v11[0] = sub_24524A514();
    v11[1] = v5;
    v11[2] = sub_245248CC8();
    v11[3] = v6;
    v12 = 0;
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_24525416C();

    v8 = sub_245248594();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() rtcAnalyticsReporter];
      [v10 sendEvent_];
    }
  }
}

uint64_t sub_245248CC8()
{
  v1 = v0;
  if ([*(v0 + 80) type] == 1 && *(v0 + 128) == 1)
  {
    return sub_24524C5F0();
  }

  v3 = *(v0 + 104);
  if (v3 >> 62)
  {
    v4 = sub_24525556C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == 1)
  {
    v5 = sub_24524C858();
  }

  else
  {
    v5 = sub_24524CB3C();
  }

  v2 = v5;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  if (*(v0 + 256) == 1)
  {

    v6 = [*(v0 + 192) localSecretType];
    v7 = "APPROVAL_PASSWORD";
    if (v6 == 2)
    {
      v7 = "_MESSAGE_PASSCODE";
    }

    v8 = v7 | 0x8000000000000000;
    v9 = [objc_opt_self() bundle];
    v18 = v8;
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24525DE30;
    v12 = *(v1 + 144);
    v11 = *(v1 + 152);
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_24524DBE8();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;

    v2 = sub_24525519C();
  }

  if (sub_24521FFAC(7u, *(v1 + 96)))
  {
    swift_getKeyPath();
    sub_24525417C();

    if (*(v1 + 257) == 1)
    {

      if (v3 >> 62)
      {
        sub_24525556C();
      }

      [*(v1 + 192) localSecretType];
      v13 = [objc_opt_self() bundle];
      sub_2452540EC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24525DE30;
      v16 = *(v1 + 144);
      v15 = *(v1 + 152);
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_24524DBE8();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;

      v2 = sub_24525519C();
    }
  }

  return v2;
}

void sub_2452490F0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_245235F6C();
  sub_24525417C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_24525417C();

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 remoteSecretEntryDidRequestAccountRecoveryFromViewController:v3 newestDevice:*(v1 + 192)];
    }
  }

  else
  {
    if (qword_27EE0D9E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24525420C();
    __swift_project_value_buffer(v6, qword_27EE11750);
    v3 = sub_2452541EC();
    v7 = sub_24525537C();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2451DB000, v3, v7, "Could not begin account recovery because the presenting view controller is nil.", v8, 2u);
      MEMORY[0x245D66A70](v8, -1, -1);
    }
  }
}

void sub_245249288(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = EscapeOffer.telemetryKey.getter();
  v6 = sub_2452483BC(v4, v5);

  if (v6)
  {
    v7 = [objc_opt_self() rtcAnalyticsReporter];
    [v7 sendEvent_];
  }

  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 != 5)
      {
        return;
      }

      swift_getKeyPath();
      sub_245235F6C();
      sub_24525417C();

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong remoteSecretEntryDidRequestCustodianRecoveryEscapeAction];
    }

    else if (v3 == 7)
    {
      swift_getKeyPath();
      sub_245235F6C();
      sub_24525417C();

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong remoteSecretEntryDidRequestRemoteApprovalEscapeAction];
    }

    else
    {
      if (v3 == 8)
      {
        return;
      }

      swift_getKeyPath();
      sub_245235F6C();
      sub_24525417C();

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong remoteSecretEntryDidRequestPiggybackingEscapeAction];
    }
  }

  else if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    swift_getKeyPath();
    sub_245235F6C();
    sub_24525417C();

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong remoteSecretEntryDidRequestDeviceSelectionEscapeAction];
  }

  else if (v3 == 2)
  {
    swift_getKeyPath();
    sub_245235F6C();
    sub_24525417C();

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      return;
    }

    Strong = v10;
    [v10 remoteSecretEntryDidRequestAccountResetEscapeActionForDevice_];
  }

  else if (v3 == 3)
  {
    swift_getKeyPath();
    sub_245235F6C();
    sub_24525417C();

    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    Strong = v8;
    [v8 remoteSecretEntryDidRequestSkipEscapeActionForDevice_];
  }

  else
  {
    swift_getKeyPath();
    sub_245235F6C();
    sub_24525417C();

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong remoteSecretEntryDidRequestRecoveryKeyEscapeAction];
  }
}

uint64_t sub_2452495BC()
{
  v1 = [*(v0 + 192) modelClass];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24525518C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_24523A584(v3, v5, 1, 0xD00000000000002ALL);

  v6 = [objc_opt_self() bundle];
  v7 = sub_2452540EC();

  return v7;
}

id sub_2452496D8()
{
  v1 = *(v0 + 192);
  v2 = [v1 isCurrentDevice];
  v3 = *(v0 + 120);
  if (v2)
  {
    if ([v3 hasLocalSecret])
    {
      swift_getKeyPath();
      sub_245235F6C();
      sub_24525417C();
    }

    if ([v1 localSecretType] == 2)
    {

      v14 = 0x524F57535341505FLL;
      v15 = 0xE900000000000044;
    }

    else
    {

      v14 = 0x444F43535341505FLL;
      v15 = 0xE900000000000045;
    }

    MEMORY[0x245D65CD0](v14, v15);

    v16 = [objc_opt_self() bundle];
    v17 = sub_2452540EC();

    return v17;
  }

  v4 = [v3 deviceClass];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = sub_24525518C();
  v8 = v7;

  v9 = [v1 modelClass];
  if (!v9)
  {
LABEL_16:

LABEL_17:
    v23 = [v1 modelClass];
    if (v23)
    {
      v24 = v23;
      v25 = sub_24525518C();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_24523A584(v25, v27, 1, 0xD000000000000022);

    if ([v1 localSecretType] == 2)
    {

      v28 = 0x524F57535341505FLL;
      v29 = 0xE900000000000044;
    }

    else
    {

      v28 = 0x444F43535341505FLL;
      v29 = 0xE900000000000045;
    }

    MEMORY[0x245D65CD0](v28, v29);

    v30 = [objc_opt_self() bundle];
    v31 = sub_2452540EC();

    return v31;
  }

  v10 = v9;
  v11 = sub_24525518C();
  v13 = v12;

  if (v11 != v6 || v13 != v8)
  {
    v18 = sub_2452555BC();

    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_14:
  sub_2452551BC();
  sub_24521E31C();
  v19 = MEMORY[0x277D837D0];
  v20 = sub_2452554BC();

  if (v20)
  {

    [v1 localSecretType];
    v21 = [objc_opt_self() bundle];
    sub_2452540EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24525DE30;
    *(v22 + 56) = v19;
    *(v22 + 64) = sub_24524DBE8();
    *(v22 + 32) = 0xD000000000000010;
    *(v22 + 40) = 0x8000000245263FA0;
    v17 = sub_24525519C();
LABEL_28:

    return v17;
  }

  v33 = [v1 localSecretType];
  v34 = "TRY_TITLE_SPECIFIC";
  if (v33 == 2)
  {
    v34 = "TRY_TITLE_SAME_CLASS_PASSCODE";
  }

  v35 = v34 | 0x8000000000000000;
  v36 = [objc_opt_self() bundle];
  sub_2452540EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F0F8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24525DE30;
  result = [v1 modelClass];
  if (result)
  {
    v38 = result;

    v39 = sub_24525518C();
    v41 = v40;

    *(v37 + 56) = v19;
    *(v37 + 64) = sub_24524DBE8();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v17 = sub_24525519C();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}