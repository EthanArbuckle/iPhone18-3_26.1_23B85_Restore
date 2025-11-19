unint64_t sub_1D51F9F6C()
{
  result = qword_1EDD56E20;
  if (!qword_1EDD56E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E20);
  }

  return result;
}

unint64_t sub_1D51F9FC0()
{
  result = qword_1EDD56D28[0];
  if (!qword_1EDD56D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56D28);
  }

  return result;
}

unint64_t sub_1D51FA060()
{
  result = qword_1EC7F1C68;
  if (!qword_1EC7F1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C68);
  }

  return result;
}

unint64_t sub_1D51FA0B8()
{
  result = qword_1EDD56DE8;
  if (!qword_1EDD56DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DE8);
  }

  return result;
}

unint64_t sub_1D51FA110()
{
  result = qword_1EDD56DF0;
  if (!qword_1EDD56DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DF0);
  }

  return result;
}

unint64_t sub_1D51FA168()
{
  result = qword_1EC7F1C70;
  if (!qword_1EC7F1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1C78, &qword_1D5642BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C70);
  }

  return result;
}

unint64_t sub_1D51FA218()
{
  result = qword_1EC7F1C88;
  if (!qword_1EC7F1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C88);
  }

  return result;
}

unint64_t sub_1D51FA270()
{
  result = qword_1EC7F1C90;
  if (!qword_1EC7F1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C90);
  }

  return result;
}

void sub_1D51FA4F8()
{
  type metadata accessor for CloudUserProfile.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D51FA7B0(319, qword_1EDD56D88, type metadata accessor for CloudUserProfile.Relationships);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD56E18);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD56D20);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D51FA620()
{
  sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD52708);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_1D4E518A0(319, &qword_1EDD5F070);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1D51FA7B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1D51FA7B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D51FA82C()
{
  sub_1D4E6D600(319, &qword_1EDD530C0, &qword_1EC7EA800, &unk_1D5622EC0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD53090, &qword_1EC7ECD10, &unk_1D5622F10);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D51FAA24(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudUserProfile.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D51FAD34()
{
  result = qword_1EC7F1CA0;
  if (!qword_1EC7F1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CA0);
  }

  return result;
}

unint64_t sub_1D51FAD8C()
{
  result = qword_1EC7F1CA8;
  if (!qword_1EC7F1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CA8);
  }

  return result;
}

unint64_t sub_1D51FADE4()
{
  result = qword_1EDD56E28;
  if (!qword_1EDD56E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E28);
  }

  return result;
}

unint64_t sub_1D51FAE3C()
{
  result = qword_1EDD56E30;
  if (!qword_1EDD56E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E30);
  }

  return result;
}

unint64_t sub_1D51FAE94()
{
  result = qword_1EC7F1CB0;
  if (!qword_1EC7F1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CB0);
  }

  return result;
}

unint64_t sub_1D51FAEEC()
{
  result = qword_1EC7F1CB8;
  if (!qword_1EC7F1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CB8);
  }

  return result;
}

unint64_t sub_1D51FAF44()
{
  result = qword_1EC7F1CC0;
  if (!qword_1EC7F1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CC0);
  }

  return result;
}

unint64_t sub_1D51FAF9C()
{
  result = qword_1EC7F1CC8;
  if (!qword_1EC7F1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CC8);
  }

  return result;
}

unint64_t sub_1D51FAFF4()
{
  result = qword_1EDD56F08;
  if (!qword_1EDD56F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56F08);
  }

  return result;
}

unint64_t sub_1D51FB04C()
{
  result = qword_1EDD56F10;
  if (!qword_1EDD56F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_52()
{
  v2 = *(v1 - 176);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_23(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_115_8()
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_116_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = *(v4 - 152);

  return sub_1D4E50004(v6, a2, a3);
}

uint64_t OUTLINED_FUNCTION_117_8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_1D4F39AB0(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_120_7()
{
  v2 = *(v0 - 120);

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_122_6(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 144);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t sub_1D51FB364()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C300);
  __swift_project_value_buffer(v0, qword_1EC87C300);
  return sub_1D560C748();
}

uint64_t sub_1D51FB404(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D560C758();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D560C748();
}

uint64_t sub_1D51FB47C()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C330);
  __swift_project_value_buffer(v0, qword_1EC87C330);
  return sub_1D560C748();
}

uint64_t sub_1D51FB4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0198, &qword_1D5636268);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_1D560BD68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D560C3D8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = sub_1D560C418();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v16);
  sub_1D560BD58();
  sub_1D525C5A8();
  if (v17)
  {
    (*(v11 + 8))(v14, v10);
    v18 = a1;
    v19 = 1;
  }

  else
  {
    v22 = sub_1D5614E48();
    OUTLINED_FUNCTION_0_132(&v22, 89);
    sub_1D560BD18();
    OUTLINED_FUNCTION_0_132(&v22, 77);
    sub_1D560BD28();
    OUTLINED_FUNCTION_0_132(&v22, 87);
    sub_1D560BCE8();
    OUTLINED_FUNCTION_0_132(&v22, 68);
    sub_1D560BCF8();
    OUTLINED_FUNCTION_0_132(&v22, 84);
    OUTLINED_FUNCTION_0_132(&v22, 72);
    sub_1D560BD08();
    OUTLINED_FUNCTION_0_132(&v22, 77);
    sub_1D560BD38();
    OUTLINED_FUNCTION_0_132(&v22, 83);
    sub_1D560BD48();
    (*(v11 + 32))(a1, v14, v10);
    v18 = a1;
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v10);
}

unsigned __int8 *sub_1D51FB830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  sub_1D55D61F0(*a1, a4, a5);
  sub_1D525C4DC();
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  if (v8 >> 14 < v6 >> 14)
  {
    __break(1u);
LABEL_72:

    v11 = 0;
LABEL_69:
    *a1 = sub_1D5614E48();
    return v11;
  }

  v12 = sub_1D5614F88();
  v13 = MEMORY[0x1DA6EABE0](v12);
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  v18 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_72;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v42 = 0;
    v21 = sub_1D5341FA0(v13, v15, 10);
    v39 = v40;
LABEL_66:

    if (v39)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    goto LABEL_69;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D5615C58();
    }

    v20 = *result;
    if (v20 == 43)
    {
      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_64;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_64;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_64;
              }

              ++v28;
              if (!--v17)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_77;
    }

    if (v20 != 45)
    {
      if (v18)
      {
        v21 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_64;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v18)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v21 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_65;
    }

    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v21 = 0;
        if (result)
        {
          v22 = result + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v17) = 0;
LABEL_65:
        v42 = v17;
        v39 = v17;
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v41[0] = v13;
  v41[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v17)
      {
        v21 = 0;
        v36 = v41;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v17)
    {
      if (--v17)
      {
        v21 = 0;
        v25 = v41 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_76;
  }

  if (v17)
  {
    if (--v17)
    {
      v21 = 0;
      v31 = v41 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1D51FBC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MusicLibrary.FilteringOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D51FBC6C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibrary.FilteringOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicLibrary.FilteringOptions.description.getter()
{
  if (*v0)
  {
    sub_1D4EFF8E4();
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v2 = v9;
    }

    *(v2 + 16) = v3 + 1;
    v4 = v2 + 16 * v3;
    *(v4 + 32) = 0xD000000000000012;
    *(v4 + 40) = 0x80000001D5687C00;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v5 = sub_1D5614CF8();
  v7 = v6;

  MEMORY[0x1DA6EAC70](v5, v7);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);

  return 91;
}

unint64_t sub_1D51FBDE0()
{
  result = qword_1EC7F1CE0;
  if (!qword_1EC7F1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CE0);
  }

  return result;
}

unint64_t sub_1D51FBE38()
{
  result = qword_1EC7F1CE8;
  if (!qword_1EC7F1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CE8);
  }

  return result;
}

unint64_t sub_1D51FBE8C()
{
  result = qword_1EC7F1CF0;
  if (!qword_1EC7F1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CF0);
  }

  return result;
}

unint64_t sub_1D51FBEE4()
{
  result = qword_1EC7F1CF8;
  if (!qword_1EC7F1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CF8);
  }

  return result;
}

uint64_t MusicSuggestedPivotContainer.id.getter()
{
  MusicSuggestedPivotContainer.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

void sub_1D51FC038()
{
  OUTLINED_FUNCTION_47();
  v38 = v2;
  v39 = v3;
  v37 = v4;
  v5 = sub_1D5614408();
  v6 = OUTLINED_FUNCTION_4(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_1D5613AF8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  v25 = type metadata accessor for MusicSuggestedPivotContainer();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  sub_1D503DEA4(v0, v30 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = (*(v13 + 32))(v18, v31, v10);
      v38(v33);
      (*(v13 + 8))(v18, v10);
    }

    else
    {
      v35 = (*(v36 + 32))(v1, v31, v5);
      v39(v35);
      (*(v36 + 8))(v1, v5);
    }
  }

  else
  {
    v34 = (*(v22 + 32))(v0, v31, v19);
    v37(v34);
    (*(v22 + 8))(v0, v19);
  }

  OUTLINED_FUNCTION_46();
}

void _s16MusicKitInternal0A19SuggestedPivotEntryV16recommendedTrack0aB00H0OSgvg_0()
{
  OUTLINED_FUNCTION_47();
  v54 = v0;
  v55 = v1;
  v2 = sub_1D5614408();
  v3 = OUTLINED_FUNCTION_4(v2);
  v52 = v4;
  v53 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  v7 = sub_1D5614898();
  v8 = OUTLINED_FUNCTION_4(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D5613AF8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for MusicSuggestedPivotContainer();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  OUTLINED_FUNCTION_59_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v50 - v37;
  sub_1D503DEA4(v0, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v51;
      OUTLINED_FUNCTION_81();
      v41(v14, v30, v7);
      sub_1D5614668();
      (*(v40 + 8))(v14, v7);
    }

    else
    {
      v43 = v52;
      OUTLINED_FUNCTION_81();
      v44 = v30;
      v45 = v53;
      v46(v0, v44, v53);
      sub_1D5614348();
      (*(v43 + 8))(v0, v45);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v42(v23, v30, v15);
    sub_1D5613A08();
    (*(v18 + 8))(v23, v15);
  }

  v47 = v55;
  sub_1D51FD5D0(v38, v35);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  if (__swift_getEnumTagSinglePayload(v35, 1, v48) == 1)
  {
    OUTLINED_FUNCTION_119_1(v38);
    OUTLINED_FUNCTION_119_1(v35);
    v49 = sub_1D5613D28();
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v49);
  }

  else
  {
    sub_1D4EC9F14(v47);
    sub_1D4E50004(v38, &qword_1EC7EC458, &unk_1D5620CD0);
    (*(*(v48 - 8) + 8))(v35, v48);
  }

  OUTLINED_FUNCTION_46();
}

void static MusicSuggestedPivotContainer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v58 = v1;
  v59 = v2;
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v56 = v5;
  v57 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_14_57(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v54 = v11;
  v55 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_15_6();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for MusicSuggestedPivotContainer();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v29 = v27 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v52 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v52 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB410, &qword_1D5643790);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = &v52 - v39;
  v41 = *(v38 + 56);
  sub_1D503DEA4(v58, &v52 - v39);
  sub_1D503DEA4(v59, &v40[v41]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D503DEA4(v40, v33);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v54;
        v43 = v55;
        (*(v54 + 32))(v0, &v40[v41], v55);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v45 = *(v44 + 8);
        v45(v0, v43);
        v45(v33, v43);
LABEL_13:
        sub_1D51EAB28(v40);
        goto LABEL_14;
      }

      (*(v54 + 8))(v33, v55);
    }

    else
    {
      sub_1D503DEA4(v40, v29);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v47 = v56;
        v46 = v57;
        v48 = v53;
        (*(v56 + 32))(v53, &v40[v41], v57);
        sub_1D5614368();
        v49 = *(v47 + 8);
        v49(v48, v46);
        v49(v29, v46);
        goto LABEL_13;
      }

      (*(v56 + 8))(v29, v57);
    }
  }

  else
  {
    sub_1D503DEA4(v40, v35);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_81();
      v50(v22, &v40[v41], v14);
      sub_1D5613A68();
      v51 = *(v17 + 8);
      v51(v22, v14);
      v51(v35, v14);
      goto LABEL_13;
    }

    (*(v17 + 8))(v35, v14);
  }

  sub_1D4E50004(v40, &qword_1EC7EB410, &qword_1D5643790);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

void sub_1D51FCAB8()
{
  OUTLINED_FUNCTION_47();
  v67 = v0;
  v70 = v2;
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v65 = v5;
  v66 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_14_57(v8);
  v10 = OUTLINED_FUNCTION_4(v9);
  v63 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  v25 = sub_1D560D838();
  v26 = OUTLINED_FUNCTION_4(v25);
  v68 = v27;
  v69 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v30 = OUTLINED_FUNCTION_15_6();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v36 = type metadata accessor for MusicSuggestedPivotContainer();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  sub_1D503DEA4(v67, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v63;
      (*(v63 + 32))(v16, v0, v9);
      sub_1D560EC98();
      sub_1D5610038();
      v42 = sub_1D5610088();
      v43 = OUTLINED_FUNCTION_63_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      sub_1D560FF58();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v42);
      OUTLINED_FUNCTION_3_105();
      OUTLINED_FUNCTION_119_1(v21);
      OUTLINED_FUNCTION_119_1(v24);
      v46 = OUTLINED_FUNCTION_7_82();
      v47(v46);
      (*(v41 + 8))(v16, v9);
    }

    else
    {
      v55 = v64;
      v54 = v65;
      v56 = v66;
      (*(v65 + 32))(v64, v0, v66);
      sub_1D560EC98();
      sub_1D5610008();
      v57 = sub_1D5610088();
      v58 = OUTLINED_FUNCTION_63_2();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v57);
      OUTLINED_FUNCTION_3_105();
      OUTLINED_FUNCTION_119_1(v21);
      OUTLINED_FUNCTION_119_1(v24);
      v61 = OUTLINED_FUNCTION_7_82();
      v62(v61);
      (*(v54 + 8))(v55, v56);
    }
  }

  else
  {
    (*(v33 + 32))(v1, v0, v30);
    sub_1D560EC98();
    sub_1D560FFB8();
    v48 = sub_1D5610088();
    v49 = OUTLINED_FUNCTION_63_2();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
    sub_1D560FEA8();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v48);
    OUTLINED_FUNCTION_3_105();
    sub_1D4E50004(v21, &qword_1EC7EA358, &unk_1D561DF50);
    sub_1D4E50004(v24, &qword_1EC7EA358, &unk_1D561DF50);
    v52 = OUTLINED_FUNCTION_7_82();
    v53(v52);
    (*(v33 + 8))(v1, v30);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotContainer.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MusicSuggestedPivotContainer();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  sub_1D503DEA4(v1, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1D5614898();
      v9 = MEMORY[0x1E69773A0];
    }

    else
    {
      v8 = sub_1D5614408();
      v9 = MEMORY[0x1E6977150];
    }
  }

  else
  {
    v8 = sub_1D5613AF8();
    v9 = MEMORY[0x1E6976CF0];
  }

  a1[3] = v8;
  a1[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, v1, v8);
}

uint64_t type metadata accessor for MusicSuggestedPivotContainer()
{
  result = qword_1EC7F1D18;
  if (!qword_1EC7F1D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MusicSuggestedPivotContainer.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v8 = sub_1D5614898();
  v9 = OUTLINED_FUNCTION_4(v8);
  v31 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_15_6();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = type metadata accessor for MusicSuggestedPivotContainer();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D503DEA4(v0, v27 - v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v31 + 32))(v2, v28, v8);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D51FD584(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
      sub_1D5614CB8();
      (*(v31 + 8))(v2, v8);
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v30(v1, v28, v3);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D51FD584(&qword_1EC7EBD38, MEMORY[0x1E6977180]);
      sub_1D5614CB8();
      (*(v32 + 8))(v1, v3);
    }
  }

  else
  {
    (*(v16 + 32))(v21, v28, v13);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D51FD584(&qword_1EC7EB598, MEMORY[0x1E6976D28]);
    sub_1D5614CB8();
    (*(v16 + 8))(v21, v13);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotContainer.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D51FD4CC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotContainer.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51FD584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51FD5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EditorialVideoArtworkFlavor.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D51FD760@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = EditorialVideoArtworkFlavor.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D51FD7A0@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialVideoArtworkFlavor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EditorialVideoArtworkFlavor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_1_1();
    v6 = sub_1D5616188();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialVideoArtworkFlavor.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D51FD944(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  v4 = type metadata accessor for MusicPin();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v11 = sub_1D4E62A60(&qword_1EDD53C00, &qword_1EC7F1D28, &qword_1D5643A60);
  v12 = sub_1D5615618();
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D4F03DB4();
    v33 = v35;
    sub_1D5615608();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v32 = v2;
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v31 = i + 1;
        v15 = v11;
        v16 = a1;
        v17 = v10;
        v18 = v15;
        v19 = sub_1D5615688();
        a1 = v29;
        sub_1D5205744(v20, v29);
        v19(v34, 0);
        v21 = v9;
        v22 = v32;
        sub_1D5204A8C(a1, v30, v9);
        v32 = v22;
        if (v22)
        {
          goto LABEL_13;
        }

        sub_1D520579C(a1, type metadata accessor for MusicPin);
        v23 = v33;
        v35 = v33;
        v24 = *(v33 + 16);
        if (v24 >= *(v33 + 24) >> 1)
        {
          sub_1D4F03DB4();
          v23 = v35;
        }

        *(v23 + 16) = v24 + 1;
        v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v33 = v23;
        v26 = v23 + v25 + *(v28 + 72) * v24;
        v9 = v21;
        sub_1D52056EC(v21, v26);
        a1 = v16;
        v10 = v17;
        v11 = v18;
        sub_1D5615658();
        if (v31 == v12)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    sub_1D520579C(a1, type metadata accessor for MusicPin);

    __break(1u);
  }

  return result;
}

void sub_1D51FDC68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1D51FDCD0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v48 = v2;
  v46 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  v49 = OUTLINED_FUNCTION_4(v9);
  v50 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v47 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_3_106();
  sub_1D5204908(v23, v24);
  v25 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_55_20();
  v26 = *(v17 + 32);
  v26(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins, v22, v15);
  v27 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  OUTLINED_FUNCTION_55_20();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD8, &qword_1D5643DF8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v0 + v27) = sub_1D560C878();
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsAutoupdatingResponse) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords) = v25;
  OUTLINED_FUNCTION_55_20();
  v26(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins, v22, v15);
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__librarySyncObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords) = 0;
  sub_1D560C4F8();
  v31 = v46;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController) = v46;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_isSharedLibrary) = v48;
  v32 = *(v31 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

  v33 = [v32 maximumAllowedPins];
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount) = v33;
  v34 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController);
  OUTLINED_FUNCTION_34_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v35 = v47;
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_40_13();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_37();
  sub_1D4E62A60(v36, &qword_1EC7F1DD0, &qword_1D5643DF0);

  v37 = v49;
  v38 = sub_1D560C948();

  (*(v50 + 8))(v35, v37);
  sub_1D51FE724(v38);
  v39 = sub_1D5615458();
  v40 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v39);
  OUTLINED_FUNCTION_40_13();
  v41 = swift_allocObject();
  swift_weakInit();

  sub_1D56153C8();

  v42 = sub_1D56153B8();
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E85E0];
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v41;

  sub_1D51ECB60(0, 0, v40, &unk_1D5643E10, v43);

  OUTLINED_FUNCTION_46();
}

void sub_1D51FE158()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  OUTLINED_FUNCTION_59();
  v12 = *(v7 + 16);
  v12(v1, v2 + v11, v5);
  sub_1D5205850();
  LOBYTE(v11) = sub_1D5614D18();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_75_2();
  v13(v14);
  if (v11)
  {
    v12(v1, v4, v5);
    sub_1D51FEB3C(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_26_45();
    *(v16 - 16) = v2;
    *(v16 - 8) = v4;
    sub_1D5205500();
  }

  (v13)(v4, v5);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51FE300(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_1D4EFC4E8();
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_26_45();
    *(v10 - 16) = v1;
    *(v10 - 8) = a1;
    sub_1D5205500();
  }
}

void sub_1D51FE3E0()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins;
  OUTLINED_FUNCTION_59();
  v12 = v7[2];
  v12(v1, v2 + v11, v5);
  sub_1D5205850();
  v19 = v4;
  LOBYTE(v4) = sub_1D5614D18();
  v13 = v7[1];
  v14 = OUTLINED_FUNCTION_75_2();
  v13(v14);
  if (v4)
  {
    v12(v1, v19, v5);
    OUTLINED_FUNCTION_54_0();
    v15 = v7[5];
    OUTLINED_FUNCTION_78_15();
    v16();
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_26_45();
    *(v18 - 16) = v2;
    *(v18 - 8) = v19;
    sub_1D5205500();
  }

  (v13)(v19, v5);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51FE5B4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount) != result)
  {
    v2 = result;
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_26_45();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_1D5205500();
  }

  return result;
}

void sub_1D51FE650()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController);

    v2 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D51FE5B4([v2 maximumAllowedPins]);
    }
  }
}

uint64_t sub_1D51FE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D51FE7E4, v6, v5);
}

uint64_t sub_1D51FE7E4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_59();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D51FFB14();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MusicLibraryPinsObserver.deinit()
{
  v1 = v0;
  if (sub_1D51FF4DC())
  {
    sub_1D560C808();
  }

  v2 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 8);
  v5(v1 + v2, v3);
  v6 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsAutoupdatingResponse);

  v9 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords);

  v5(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins, v3);
  v10 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsDidChangeObserver);

  v11 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__librarySyncObserver);

  v12 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver___observationRegistrar;
  v13 = sub_1D560C508();
  OUTLINED_FUNCTION_14(v13);
  (*(v14 + 8))(v1 + v12);
  return v1;
}

uint64_t MusicLibraryPinsObserver.__deallocating_deinit()
{
  MusicLibraryPinsObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D51FEA2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  swift_beginAccess();
  v7 = *(v0 + v6);

  sub_1D51FEC44(v5);
  sub_1D560C868();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D51FEB3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  OUTLINED_FUNCTION_54_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_25_0(v4);
  v6 = v5;
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1D51FEA2C();
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_1D51FEC58(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2);
  return sub_1D51FEB3C(v6);
}

uint64_t sub_1D51FED34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D51FEDA0(v4);
}

uint64_t sub_1D51FED60()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + v1);
}

uint64_t sub_1D51FEDA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL sub_1D51FEDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_93_5();
  sub_1D51FEC44(v0);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v7, &qword_1EC7F1D28, &qword_1D5643A60);
  sub_1D5615608();
  sub_1D5615648();
  v8 = sub_1D5615638();
  (*(v3 + 8))(v0, v1);
  return v8 >= sub_1D51FEF88();
}

uint64_t sub_1D51FEF34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D51FEF88();
  *a2 = result;
  return result;
}

uint64_t sub_1D51FEF88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v1, v2);
  OUTLINED_FUNCTION_52_23();

  return *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount);
}

uint64_t sub_1D51FF024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D51FF050();
}

uint64_t sub_1D51FF050()
{
  swift_getKeyPath();
  sub_1D5205500();
}

uint64_t sub_1D51FF0C4()
{
  swift_getKeyPath();
  v6 = v0;
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v1, v2);
  OUTLINED_FUNCTION_52_23();

  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_59();
  v4 = *(v6 + v3);
}

uint64_t sub_1D51FF15C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D51FE300(v4);
}

uint64_t sub_1D51FF188(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1D51FF20C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v11 = v2;
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v5, v6);
  sub_1D560C4C8();

  v7 = *a1;
  OUTLINED_FUNCTION_59();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_14(v8);
  return (*(v9 + 16))(a2, v11 + v7);
}

uint64_t sub_1D51FF2F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_61();
  v16(v15);
  v17 = *a2;
  return a5(v12);
}

uint64_t sub_1D51FF3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a2, v4);
  v9 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void sub_1D51FF518()
{
  sub_1D5204874();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D560C508();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D51FF6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D51FF70C(v4);
}

uint64_t sub_1D51FF734(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + *a2);

  v7 = sub_1D52055A8(v6, a1);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_26_45();
    *(v9 - 16) = v2;
    *(v9 - 8) = a1;
    sub_1D5205500();
  }

  else
  {
    v11 = *(v2 + v4);
    *(v2 + v4) = a1;
  }
}

uint64_t sub_1D51FF830(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v4, v5);
  sub_1D560C4C8();

  v6 = *(v2 + *a2);
}

uint64_t sub_1D51FF8C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D51FE724(v4);
}

uint64_t sub_1D51FF8F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  *(a1 + *a3) = a2;
}

void *sub_1D51FF930()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v1, v2);
  OUTLINED_FUNCTION_52_23();

  v3 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  v4 = v3;
  return v3;
}

void sub_1D51FF9C0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D51FF9F0(v2);
}

void sub_1D51FF9F0(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  v5 = v4;
  LOBYTE(v4) = sub_1D5205670(v4, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_26_45();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_1D5205500();
  }

  else
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_1D51FFAD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords) = a2;
  v3 = a2;
}

void sub_1D51FFB14()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA8, &qword_1D5643CD8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DB0, &qword_1D5643CE0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_isSharedLibrary))
  {
    if (qword_1EDD544C8 != -1)
    {
      OUTLINED_FUNCTION_11_73();
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EDD76B20);
    v34 = sub_1D560C738();
    v19 = sub_1D56156E8();
    if (os_log_type_enabled(v34, v19))
    {
      v20 = OUTLINED_FUNCTION_63_12();
      *v20 = 0;
      _os_log_impl(&dword_1D4E3F000, v34, v19, "Not observing pins because this is a shared library.", v20, 2u);
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_46();
  }

  else
  {
    type metadata accessor for MusicPin();
    OUTLINED_FUNCTION_3_106();
    sub_1D5204908(v23, v24);
    sub_1D560DD68();
    _s8MusicKit0A14LibraryRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvs_0();
    _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
    (*(v12 + 16))(v2, v17, v9);
    sub_1D560F0D8();
    _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DB8, &qword_1D5643CE8);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1D5479640();
    sub_1D51FF050();
    v28 = sub_1D51FF010();
    if (v28)
    {
      v29 = *(*v28 + 104);
      OUTLINED_FUNCTION_34_37();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DC0, &qword_1D5643CF0);
      sub_1D560C8C8();
      swift_endAccess();

      OUTLINED_FUNCTION_40_13();
      swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37();
      sub_1D4E62A60(v30, v31, v32);
      v33 = sub_1D560C948();

      (*(v5 + 8))(v1, v3);
    }

    else
    {
      v33 = 0;
    }

    sub_1D51FF70C(v33);
    (*(v12 + 8))(v17, v9);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D51FFEE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D51FFF44();
  }

  return result;
}

void sub_1D51FFF44()
{
  OUTLINED_FUNCTION_47();
  v134 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v133 - v8;
  v10 = sub_1D560D838();
  v11 = OUTLINED_FUNCTION_4(v10);
  v159 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v146 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v145 = v17;
  v18 = type metadata accessor for MusicPin();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v157 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v25);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D90, &qword_1D5643CC0);
  OUTLINED_FUNCTION_14(v158);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v149 = v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v30 = OUTLINED_FUNCTION_4(v151);
  v137 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v156 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  v39 = OUTLINED_FUNCTION_22(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_59_0();
  v44 = v42 - v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v133 - v47;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73();
  }

  v49 = sub_1D560C758();
  v50 = __swift_project_value_buffer(v49, qword_1EDD76B20);
  v51 = v3;
  v52 = OUTLINED_FUNCTION_61();
  sub_1D5205A68(v52, v53);
  v160 = v50;
  v54 = sub_1D560C738();
  v55 = sub_1D56156E8();
  v56 = os_log_type_enabled(v54, v55);
  v147 = v10;
  v148 = v9;
  v150 = v18;
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_142();
    *v57 = 134217984;
    sub_1D5205A68(v48, v1);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
    OUTLINED_FUNCTION_23_1(v1);
    if (v59)
    {
      sub_1D4E50004(v1, &qword_1EC7F1D98, &qword_1D5643CC8);
      v65 = 0;
    }

    else
    {
      v60 = v135;
      sub_1D560DE38();
      (*(*(v58 - 8) + 8))(v1, v58);
      OUTLINED_FUNCTION_14_1();
      sub_1D4E62A60(v61, v62, v63);
      v64 = v151;
      sub_1D5615608();
      sub_1D5615648();
      v65 = sub_1D5615638();
      (*(v137 + 8))(v60, v64);
    }

    sub_1D4E50004(v48, &qword_1EC7F1D98, &qword_1D5643CC8);
    *(v57 + 4) = v65;
    _os_log_impl(&dword_1D4E3F000, v54, v55, "Received pins response with %ld from Media Player.", v57, 0xCu);
    OUTLINED_FUNCTION_122();
  }

  else
  {
    sub_1D4E50004(v48, &qword_1EC7F1D98, &qword_1D5643CC8);
  }

  sub_1D5205A68(v51, v44);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
  v67 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v67, v68, v66) == 1)
  {
    sub_1D4E50004(v44, &qword_1EC7F1D98, &qword_1D5643CC8);
  }

  else
  {
    sub_1D560DE38();
    (*(*(v66 - 8) + 8))(v44, v66);
    OUTLINED_FUNCTION_172(&v164);
    v70 = *(v69 + 32);
    v71 = v136;
    v72 = OUTLINED_FUNCTION_21_1();
    v73 = v151;
    v74(v72);
    v76 = *(v44 + 16);
    v75 = (v44 + 16);
    v77 = v149;
    v133[1] = v75;
    v133[0] = v76;
    v76(v149, v71, v73);
    v78 = *(v158 + 36);
    OUTLINED_FUNCTION_14_1();
    v82 = sub_1D4E62A60(v79, v80, v81);
    sub_1D5615608();
    v140 = (v159 + 8);
    *&v83 = 136447490;
    v139 = v83;
    *&v83 = 136446210;
    v138 = v83;
    v84 = v157;
    v142 = v78;
    v141 = v82;
    while (1)
    {
      sub_1D5615648();
      if (*(v77 + v78) == v161)
      {
        break;
      }

      v85 = sub_1D5615688();
      OUTLINED_FUNCTION_0_134();
      v86 = v143;
      sub_1D5205744(v87, v143);
      v85(&v161, 0);
      sub_1D5615658();
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v86, v84);
      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5ECA0, v88);
      v89 = v145;
      sub_1D560EC98();
      v154 = sub_1D560D708();
      v158 = v90;
      v91 = *v140;
      v92 = v147;
      (*v140)(v89, v147);
      OUTLINED_FUNCTION_54_20();
      sub_1D560D768();
      v93 = OUTLINED_FUNCTION_41_30();
      v91(v93);
      OUTLINED_FUNCTION_21_1();
      v156 = sub_1D5615888();
      v159 = v94;

      OUTLINED_FUNCTION_54_20();
      sub_1D560D688();
      v95 = OUTLINED_FUNCTION_41_30();
      v91(v95);
      OUTLINED_FUNCTION_21_1();
      v155 = sub_1D5615888();
      v97 = v96;

      OUTLINED_FUNCTION_54_20();
      sub_1D560D808();
      v98 = OUTLINED_FUNCTION_41_30();
      v91(v98);
      OUTLINED_FUNCTION_21_1();
      v153 = sub_1D5615888();
      v100 = v99;

      if (qword_1EC7E9038 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5EC98, v101);
      sub_1D560EC28();
      v102 = v161;
      if (v162)
      {
        v102 = 0;
      }

      v152 = v102;
      v103 = v146;
      sub_1D560EC98();
      v104 = v148;
      sub_1D560D5C8();
      (v91)(v103, v92);
      v105 = sub_1D560D4C8();
      if (__swift_getEnumTagSinglePayload(v104, 1, v105) == 1)
      {
        sub_1D4E50004(v104, &unk_1EC7EBF20, &unk_1D561F530);
      }

      else
      {
        sub_1D560D4B8();
        (*(*(v105 - 8) + 8))(v104, v105);
      }

      v106 = v159;
      v107 = sub_1D5615888();
      v109 = v108;

      v110 = sub_1D560C738();
      v111 = sub_1D56156E8();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v159 = v107;
        v113 = v112;
        v161 = swift_slowAlloc();
        *v113 = v139;
        v114 = sub_1D560EEC8();
        v116 = v115;

        v117 = sub_1D4E6835C(v114, v116, &v161);
        v118 = v106;
        v119 = v117;

        *(v113 + 4) = v119;
        *(v113 + 12) = 2050;
        v120 = v153;
        *(v113 + 14) = v152;
        *(v113 + 22) = 2082;
        v121 = sub_1D4E6835C(v120, v100, &v161);

        *(v113 + 24) = v121;
        *(v113 + 32) = 2082;
        v122 = sub_1D4E6835C(v156, v118, &v161);

        *(v113 + 34) = v122;
        *(v113 + 42) = 2082;
        v123 = sub_1D4E6835C(v155, v97, &v161);

        *(v113 + 44) = v123;
        *(v113 + 52) = 2082;
        v124 = sub_1D4E6835C(v159, v109, &v161);

        *(v113 + 54) = v124;
        _os_log_impl(&dword_1D4E3F000, v110, v111, "Pin identifier: %{public}s, position: %{public}ld, libraryID: %{public}s, cloudID: %{public}s, cloudAlbumLibraryID: %{public}s, deviceLocalID: %{public}s.", v113, 0x3Eu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_134();
      v84 = v157;
      v125 = v144;
      sub_1D5205744(v157, v144);
      v75 = sub_1D560C738();
      v126 = sub_1D56156E8();
      if (os_log_type_enabled(v75, v126))
      {
        v127 = OUTLINED_FUNCTION_142();
        v128 = OUTLINED_FUNCTION_138_0();
        v161 = v128;
        *v127 = v138;
        v129 = MusicPin.description.getter();
        v131 = v130;
        sub_1D520579C(v125, type metadata accessor for MusicPin);
        v132 = sub_1D4E6835C(v129, v131, &v161);

        *(v127 + 4) = v132;
        _os_log_impl(&dword_1D4E3F000, v75, v126, "Received pin: %{public}s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v128);
        OUTLINED_FUNCTION_122();
        v84 = v157;
        OUTLINED_FUNCTION_122();
      }

      else
      {

        v75 = type metadata accessor for MusicPin;
        sub_1D520579C(v125, type metadata accessor for MusicPin);
      }

      sub_1D520579C(v84, type metadata accessor for MusicPin);
      v73 = v151;
      v77 = v149;
      v78 = v142;
    }

    sub_1D4E50004(v77, &qword_1EC7F1D90, &qword_1D5643CC0);
    OUTLINED_FUNCTION_165_4(&v163);
    (v133[0])();
    sub_1D51FE3E0();
    sub_1D5202768();
    (*(v137 + 8))(v75, v73);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5200C94@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_61();
  sub_1D5200D64();
  v7 = type metadata accessor for MusicPin();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  result = sub_1D4E50004(v1, &qword_1EC7F1D88, &unk_1D5643CB0);
  *a1 = v8;
  return result;
}

void sub_1D5200D64()
{
  OUTLINED_FUNCTION_47();
  v39[0] = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_114();
  v20 = *(v5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = type metadata accessor for MusicPin();
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  (*(v20 + 16))(v25, v7, v5);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_76_12(v1, 0);
    sub_1D52056EC(v1, v32);
    OUTLINED_FUNCTION_65();
    sub_1D52056EC(v33, v34);
    v35 = v9;
    v36 = 0;
LABEL_6:
    OUTLINED_FUNCTION_76_12(v35, v36);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76_12(v1, 1);
  sub_1D4E50004(v1, &qword_1EC7F1D88, &unk_1D5643CB0);
  (*(v3 + 16))(&v40, v5, v3);
  if (!v41)
  {
    sub_1D4E50004(&v40, &qword_1EC7EC500, &unk_1D5621030);
    v35 = OUTLINED_FUNCTION_45_1();
    goto LABEL_6;
  }

  sub_1D4F69344(&v40, v42);
  v37 = sub_1D51FEC44(v15);
  MEMORY[0x1EEE9AC00](v37);
  v39[-2] = v42;
  v38 = sub_1D5595458(sub_1D5205C14, &v39[-4]);
  sub_1D4EC9F84(v38);

  __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_7:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5201040(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_147();
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for MusicPin.Item();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  MusicPin.item.getter(v20 - v19);
  OUTLINED_FUNCTION_13_60();
  sub_1D5204908(v22, v23);
  sub_1D560EC98();
  sub_1D520579C(v21, type metadata accessor for MusicPin.Item);
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = *(*(v24 + 8) + 8);
  sub_1D560EC98();
  v26 = sub_1D560D528();
  v27 = *(v6 + 8);
  v27(v11, v3);
  v27(v14, v3);
  return v26 & 1;
}

void sub_1D5201214()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v51 = v3;
  v52 = v4;
  v50 = v5;
  v7 = v6;
  v54 = v8;
  v9 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v10 = v9 - 8;
  v55 = *(v9 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v53 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_114();
  v20 = type metadata accessor for MusicPin();
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v27 = *v7;
  sub_1D51FEC44(v1);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v28, &qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_200();
  sub_1D5615608();
  OUTLINED_FUNCTION_200();
  sub_1D5615648();
  v29 = sub_1D5615638();
  (*(v16 + 8))(v1, v14);
  LOBYTE(v57[0]) = v27;
  sub_1D54729B4(v29, v57, v50, v52, v26);
  v30 = *(v10 + 28);
  OUTLINED_FUNCTION_0_134();
  sub_1D5205744(v26, v54 + v31);
  sub_1D560C358();
  OUTLINED_FUNCTION_82_15();
  *v32 = 0;
  *(v32 + 8) = 2;
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v54, v53);
  swift_getKeyPath();
  v57[0] = v2;
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v33, v34);
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4C8();

  v57[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4E8();

  v35 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_54_0();
  sub_1D4EFF588();
  v36 = *(*(v2 + v35) + 16);
  sub_1D4EFF7D0(v36);
  v37 = *(v2 + v35);
  *(v37 + 16) = v36 + 1;
  v38 = *(v55 + 80);
  v39 = *(v55 + 72);
  OUTLINED_FUNCTION_9_73();
  sub_1D52056EC(v53, v40);
  *(v2 + v35) = v37;
  swift_endAccess();
  v57[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4D8();

  swift_getKeyPath();
  v57[0] = v2;
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4C8();

  v57[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4E8();

  v41 = OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_57_23(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, v55, v26, v55, v57[0], v57[1], v57[2], v57[3]);
  swift_endAccess();
  sub_1D51FEA2C();
  v57[0] = v2;
  swift_getKeyPath();
  sub_1D560C4D8();

  OUTLINED_FUNCTION_4_77();
  sub_1D520579C(v56, v49);
  OUTLINED_FUNCTION_46();
}

void sub_1D5201D1C()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v53 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73();
  }

  v19 = sub_1D560C758();
  v20 = __swift_project_value_buffer(v19, qword_1EDD76B20);
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v6, v18);
  v54 = v20;
  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_59_18();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_138_0();
    v55[0] = v24;
    *v23 = 136446466;
    v25 = sub_1D5205034();
    v52 = v2;
    v26 = v13;
    v27 = v4;
    v29 = v28;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v18, v30);
    v31 = sub_1D4E6835C(v25, v29, v55);
    v4 = v27;
    v13 = v26;
    v2 = v52;

    *(v23 + 4) = v31;
    *(v23 + 12) = 1026;
    *(v23 + 14) = v4 & 1;
    _os_log_impl(&dword_1D4E3F000, v21, v1, "Initiating discard process for this corresponding transient state record: %{public}s. Operation did succeed: %{BOOL,public}d.", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v18, v32);
  }

  sub_1D51FF0C4();
  sub_1D525C678();
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    swift_getKeyPath();
    v55[0] = v2;
    OUTLINED_FUNCTION_1_107();
    sub_1D5204908(v35, v36);
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4C8();

    v55[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4E8();

    OUTLINED_FUNCTION_34_37();
    v37 = v53;
    sub_1D525CB38();
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v37, v38);
    swift_endAccess();
    v55[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4D8();
  }

  OUTLINED_FUNCTION_5_81();
  v39 = OUTLINED_FUNCTION_75_2();
  sub_1D5205744(v39, v40);
  v41 = sub_1D560C738();
  v42 = sub_1D56156E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_142();
    v44 = v4;
    v45 = OUTLINED_FUNCTION_138_0();
    v55[0] = v45;
    *v43 = 136446210;
    v46 = sub_1D5205034();
    v48 = v47;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v13, v49);
    v50 = sub_1D4E6835C(v46, v48, v55);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_1D4E3F000, v41, v42, "Underlying library request has completed. Discarding this corresponding transient state record: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v4 = v44;
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v13, v51);
  }

  if (v4)
  {
    sub_1D5202118();
  }

  else
  {
    sub_1D5202768();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D5202118()
{
  OUTLINED_FUNCTION_47();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v7 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73();
  }

  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EDD76B20);
  v9 = sub_1D560C738();
  v10 = sub_1D56156E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_63_12();
    *v11 = 0;
    _os_log_impl(&dword_1D4E3F000, v9, v10, "Scheduling delayed pins reset with existing transient state records.", v11, 2u);
    OUTLINED_FUNCTION_122();
  }

  v12 = sub_1D51FF930();
  [v12 invalidate];

  type metadata accessor for MusicLibraryPinsObserver(0);

  sub_1D5612C48();
  v13 = objc_opt_self();
  v14 = *(v3 + 16);
  v15 = OUTLINED_FUNCTION_75_2();
  v16(v15);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v7, v0);
  v24[4] = sub_1D5205904;
  v24[5] = v18;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1D51FDC68;
  v24[3] = &block_descriptor_16;
  v19 = _Block_copy(v24);

  v20 = [v13 scheduledTimerWithTimeInterval:0 repeats:v19 block:2.0];
  _Block_release(v19);
  sub_1D51FF9F0(v20);
  v21 = *(v3 + 8);
  v22 = OUTLINED_FUNCTION_61();
  v23(v22);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52023E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v4 + 16))(v7, a2, v3);
  sub_1D56153C8();
  v13 = sub_1D56153B8();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_1D51EC8B4(0, 0, v11, &unk_1D5643CA8, v15);
}

uint64_t sub_1D52025B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D56153C8();
  *(v4 + 24) = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5202650, v6, v5);
}

uint64_t sub_1D5202650()
{
  v2 = v0[2];
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  if (sub_1D5612C38())
  {
    if (qword_1EDD544C8 != -1)
    {
      OUTLINED_FUNCTION_11_73();
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76B20);
    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v4, v5))
    {
      *OUTLINED_FUNCTION_63_12() = 0;
      OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v6, v7, "Starting delayed pins reset with existing transient state records.");
      OUTLINED_FUNCTION_122();
    }

    sub_1D5202768();
  }

  v8 = v0[1];

  return v8();
}

void sub_1D5202768()
{
  OUTLINED_FUNCTION_47();
  v4 = v0;
  v5 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73();
  }

  v18 = sub_1D560C758();
  v67 = __swift_project_value_buffer(v18, qword_1EDD76B20);
  v19 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_59_18();
  if (os_log_type_enabled(v19, v20))
  {
    *OUTLINED_FUNCTION_63_12() = 0;
    OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v21, v22, "Resetting pins.");
    OUTLINED_FUNCTION_122();
  }

  sub_1D51FF1F8(v17);
  v23 = *(sub_1D51FF0C4() + 16);

  if (v23)
  {
    v61 = v3;
    v24 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v24, v25))
    {
      *OUTLINED_FUNCTION_63_12() = 0;
      OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v26, v27, "Reevaluating pins by applying existing transient state records.");
      OUTLINED_FUNCTION_122();
    }

    v28 = sub_1D51FF0C4();
    v30 = *(v28 + 16);
    if (v30)
    {
      v59 = v12;
      v60 = v9;
      v31 = *(v64 + 80);
      v58 = v28;
      v32 = v28 + ((v31 + 32) & ~v31);
      v33 = *(v64 + 72);
      *&v29 = 136446210;
      v62 = v29;
      v64 = v33;
      v65 = v4;
      do
      {
        v34 = v66;
        sub_1D5205744(v32, v66);
        sub_1D5202C28(v34, v17, v35, v36, v37, v38, v39, v40, v58, v59, v60, v61, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
        OUTLINED_FUNCTION_9_73();
        sub_1D52056EC(v34, v2);
        v41 = sub_1D560C738();
        sub_1D56156E8();
        OUTLINED_FUNCTION_59_18();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_142();
          v44 = OUTLINED_FUNCTION_138_0();
          v68 = v44;
          *v43 = v62;
          sub_1D5205034();
          OUTLINED_FUNCTION_2_106();
          sub_1D520579C(v2, v45);
          v46 = OUTLINED_FUNCTION_21_1();
          v49 = sub_1D4E6835C(v46, v47, v48);
          v33 = v64;

          *(v43 + 4) = v49;
          _os_log_impl(&dword_1D4E3F000, v41, v1, "Applying transient state record to pins: %{public}s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_122();
        }

        else
        {

          OUTLINED_FUNCTION_2_106();
          sub_1D520579C(v2, v50);
        }

        v32 += v33;
        --v30;
      }

      while (v30);

      v12 = v59;
      v9 = v60;
    }

    else
    {
    }

    v3 = v61;
  }

  sub_1D51FEC44(v3);
  sub_1D5205850();
  v51 = sub_1D5614D18();
  v52 = *(v12 + 8);
  v52(v3, v9);
  if ((v51 & 1) == 0)
  {
    v53 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_63_12();
      *v55 = 0;
      _os_log_impl(&dword_1D4E3F000, v53, v17, "Resetting pins after applying existing transient state records.", v55, 2u);
      OUTLINED_FUNCTION_122();
    }

    (*(v12 + 16))(v3, v17, v9);
    sub_1D51FE158();
  }

  v56 = sub_1D51FF930();
  [v56 invalidate];

  sub_1D51FF9F0(0);
  v57 = OUTLINED_FUNCTION_112();
  (v52)(v57);
  OUTLINED_FUNCTION_46();
}

void sub_1D5202C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v312 = v20;
  v332 = v25;
  v354 = v26;
  v346 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v27 = OUTLINED_FUNCTION_14(v346);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D50, &unk_1D5643C60);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v317 = type metadata accessor for MusicPinPropertyProvider();
  v37 = OUTLINED_FUNCTION_14(v317);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D60, &unk_1D5643C70);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v47);
  v351 = sub_1D560D838();
  v48 = OUTLINED_FUNCTION_4(v351);
  v321 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  v350 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  v349 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v56 = OUTLINED_FUNCTION_22(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  k = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  v347 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v66);
  v67 = type metadata accessor for MusicPin.Item();
  v68 = OUTLINED_FUNCTION_14(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v76);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D68, &qword_1D5643C80);
  OUTLINED_FUNCTION_14(v342);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_3();
  v343 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D70, &qword_1D5643C88);
  v82 = OUTLINED_FUNCTION_22(v81);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13();
  v345 = v85;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = &v310 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = &v310 - v92;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v95);
  v96 = type metadata accessor for MusicPin();
  v97 = OUTLINED_FUNCTION_4(v96);
  v344 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v107 = OUTLINED_FUNCTION_4(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v310 - v112;
  v331 = v114;
  v115 = *(v114 + 16);
  v324 = v114 + 16;
  v323 = v115;
  v115(&v310 - v112, v332, v106);
  v116 = sub_1D4E62A60(&qword_1EDD53C08, &qword_1EC7F1D28, &qword_1D5643A60);
  v329 = v113;
  v326 = v106;
  v322 = v116;
  v117 = sub_1D5614FB8();
  OUTLINED_FUNCTION_3_106();
  v120 = sub_1D5204908(v118, v119);
  v330 = v21;
  v328 = v96;
  v353 = v120;
  sub_1D560D9F8();
  v121 = v354 + *(v346 + 24);
  v122 = *v121;
  v123 = *(v121 + 8);
  v352 = v117;
  if (!v123)
  {
    v345 = v93;
    k = v90;
    v339 = v122;
    v21 = 0;
    v168 = (v321 + 8);
    v169 = *(v117 + 16);
    v144 = v315;
    for (i = v169; ; v169 = i)
    {
      v170 = k;
      v171 = v342;
      if (v21 == v169)
      {
        v172 = 1;
        v21 = v169;
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (v21 >= *(v117 + 16))
        {
          goto LABEL_80;
        }

        v173 = v343;
        OUTLINED_FUNCTION_18_56();
        v175 = *(v174 + 72);
        v176 = *(v171 + 48);
        *v173 = v21;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v178, v173 + v177);
        sub_1D52057F4(v173, v170, &qword_1EC7F1D68, &qword_1D5643C80);
        v172 = 0;
        ++v21;
      }

      __swift_storeEnumTagSinglePayload(v170, v172, 1, v171);
      v179 = v345;
      sub_1D52057F4(v170, v345, &qword_1EC7F1D70, &qword_1D5643C88);
      v180 = OUTLINED_FUNCTION_45_1();
      if (__swift_getEnumTagSinglePayload(v180, v181, v171) == 1)
      {
        v144 = v332;
        OUTLINED_FUNCTION_28_43();
        goto LABEL_71;
      }

      v182 = v171;
      v183 = v144;
      v340 = *v179;
      v184 = *(v182 + 48);
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v179 + v185, v22);
      if (qword_1EC7E9028 != -1)
      {
        OUTLINED_FUNCTION_19_52();
        swift_once();
      }

      v93 = qword_1EC87C288;
      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5EC98, v186);
      v187 = v22;
      sub_1D560EC28();
      v158 = v347;
      OUTLINED_FUNCTION_23_1(v347);
      if (v159)
      {
LABEL_95:
        v307 = v158;
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_6_74();
      v188 = v337;
      sub_1D52056EC(v158, v337);
      OUTLINED_FUNCTION_84_12();
      v93 = v338;
      sub_1D560EC28();
      OUTLINED_FUNCTION_23_1(v93);
      if (v159)
      {
LABEL_94:
        v307 = v93;
LABEL_97:
        sub_1D4E50004(v307, &qword_1EC7EEDB8, &qword_1D5640B80);
        while (1)
        {
          sub_1D5615E08();
          __break(1u);
LABEL_99:
          v308 = OUTLINED_FUNCTION_45_1();
          OUTLINED_FUNCTION_76_12(v308, v309);
          sub_1D4E50004(v93, &qword_1EC7F1D50, &unk_1D5643C60);
          v357 = 0;
          v358[0] = 0xE000000000000000;
          sub_1D5615B68();
          v355 = v357;
          v356 = v358[0];
          MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D5687F20);
          sub_1D5612B18();
          sub_1D5615D48();
          __swift_destroy_boxed_opaque_existential_1(&v357);
          MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
        }
      }

      OUTLINED_FUNCTION_6_74();
      sub_1D52056EC(v93, v144);
      OUTLINED_FUNCTION_13_60();
      sub_1D5204908(&qword_1EC7EC830, v189);
      v190 = v349;
      sub_1D560EC98();
      v191 = v350;
      sub_1D560EC98();
      v192 = sub_1D560D528();
      v193 = *v168;
      v194 = v191;
      v195 = v351;
      (*v168)(v194, v351);
      v196 = v195;
      v144 = v183;
      v193(v190, v196);
      sub_1D520579C(v183, type metadata accessor for MusicPin.Item);
      sub_1D520579C(v188, type metadata accessor for MusicPin.Item);
      v117 = v352;
      if (v192)
      {
        break;
      }

      OUTLINED_FUNCTION_4_77();
      v22 = v187;
      sub_1D520579C(v187, v197);
    }

    v225 = v187;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D54B45D4(v117);
      v117 = v299;
    }

    v144 = v332;
    OUTLINED_FUNCTION_28_43();
    v226 = v340;
    v227 = *(v117 + 16);
    if (v340 < v227)
    {
      v228 = v227 - 1;
      OUTLINED_FUNCTION_18_56();
      v230 = *(v229 + 72);
      v232 = v231 + v230 * v226;
      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(v232, v233);
      sub_1D4F0373C(v232 + v230, v227 - 1 - v226, v232);
      *(v117 + 16) = v227 - 1;
      if (v227 <= v339)
      {
        goto LABEL_88;
      }

      v234 = v313;
      if (v339 < 0)
      {
        __break(1u);
      }

      else
      {
        v226 = v225;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v225, v234);
        v360 = v117;
        if (v227 <= *(v117 + 24) >> 1)
        {
LABEL_54:
          sub_1D54FB990();
          OUTLINED_FUNCTION_4_77();
          sub_1D520579C(v226, v235);
          goto LABEL_71;
        }
      }

      OUTLINED_FUNCTION_73_14();
      v117 = v302;
      v360 = v302;
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_86;
  }

  if (v123 == 1)
  {
    v124 = v122;
    v125 = *(v346 + 20);
    OUTLINED_FUNCTION_3_106();
    v128 = sub_1D5204908(v126, v127);
    v347 = v125;
    v129 = v328;
    v346 = v128;
    sub_1D5612B18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
    v93 = v316;
    v130 = v317;
    v131 = swift_dynamicCast();
    v132 = v342;
    if ((v131 & 1) == 0)
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_76_12(v93, 0);
    sub_1D52056EC(v93, v319);
    v133 = v340;
    if (qword_1EC7E9020 != -1)
    {
      swift_once();
    }

    v134 = qword_1EC87C280;
    v358[2] = &type metadata for MusicPin.Action;
    LOBYTE(v357) = v124;
    swift_retain_n();
    v335 = v134;
    sub_1D528FA08(&v357);
    OUTLINED_FUNCTION_165_4(&v345);
    sub_1D5205744(v135, v136);
    v137 = v134 + *(v130 + 36);
    v138 = sub_1D560D708();
    v139 = v320;
    *v320 = v138;
    v139[1] = v140;
    v141 = *(v129 + 20);
    sub_1D5204908(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider);
    sub_1D5610D28();
    OUTLINED_FUNCTION_36_30();
    sub_1D520579C(v134, v142);
    v143 = 0;
    v338 = (v321 + 8);
    v21 = *(v117 + 16);
    v144 = v318;
    v93 = i;
    for (j = v21; ; v21 = j)
    {
      v145 = v345;
      if (v143 == v21)
      {
        v146 = 1;
        v143 = v21;
      }

      else
      {
        if ((v143 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v143 >= *(v117 + 16))
        {
          goto LABEL_81;
        }

        v147 = v343;
        OUTLINED_FUNCTION_18_56();
        v149 = *(v148 + 72);
        v150 = *(v132 + 48);
        *v147 = v143;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v152, v147 + v151);
        v153 = v147;
        v145 = v345;
        sub_1D52057F4(v153, v345, &qword_1EC7F1D68, &qword_1D5643C80);
        v146 = 0;
        ++v143;
      }

      __swift_storeEnumTagSinglePayload(v145, v146, 1, v132);
      v154 = v145;
      v155 = v339;
      sub_1D52057F4(v154, v339, &qword_1EC7F1D70, &qword_1D5643C88);
      if (__swift_getEnumTagSinglePayload(v155, 1, v132) == 1)
      {
        OUTLINED_FUNCTION_29_38();
        OUTLINED_FUNCTION_43_22();
        goto LABEL_59;
      }

      v337 = *v155;
      v21 = v132;
      v156 = *(v132 + 48);
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v155 + v157, v93);
      if (qword_1EC7E9028 != -1)
      {
        OUTLINED_FUNCTION_19_52();
        swift_once();
      }

      OUTLINED_FUNCTION_161();
      sub_1D560EC28();
      v158 = k;
      OUTLINED_FUNCTION_23_1(k);
      if (v159)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_6_74();
      sub_1D52056EC(v158, v144);
      OUTLINED_FUNCTION_161();
      sub_1D560EC28();
      OUTLINED_FUNCTION_23_1(v133);
      if (v159)
      {
        v307 = v133;
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_6_74();
      OUTLINED_FUNCTION_165_4(&a14);
      sub_1D52056EC(v160, v161);
      OUTLINED_FUNCTION_13_60();
      sub_1D5204908(&qword_1EC7EC830, v162);
      sub_1D560EC98();
      v163 = v350;
      sub_1D560EC98();
      v164 = sub_1D560D528();
      v165 = *v338;
      (*v338)(v163, v351);
      v166 = OUTLINED_FUNCTION_61();
      v165(v166);
      sub_1D520579C(v93, type metadata accessor for MusicPin.Item);
      sub_1D520579C(v144, type metadata accessor for MusicPin.Item);
      if (v164)
      {
        break;
      }

      OUTLINED_FUNCTION_4_77();
      v93 = i;
      sub_1D520579C(i, v167);
      v117 = v352;
      v133 = v340;
    }

    v117 = v352;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_56:
      v228 = v332;
      OUTLINED_FUNCTION_28_43();
      v236 = *(v117 + 16);
      v237 = v337;
      if (v337 >= v236)
      {
        __break(1u);
LABEL_88:
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_18_56();
        v239 = *(v238 + 72);
        v241 = v240 + v239 * v237;
        OUTLINED_FUNCTION_4_77();
        sub_1D520579C(v241, v242);
        sub_1D4F0373C(v241 + v239, v236 - 1 - v237, v241);
        *(v117 + 16) = v236 - 1;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v320, v314);
        v360 = v117;
        if (v236 <= *(v117 + 24) >> 1)
        {
          goto LABEL_58;
        }
      }

      OUTLINED_FUNCTION_73_14();
      v117 = v301;
      v360 = v301;
LABEL_58:
      v144 = v228;
      sub_1D54FB990();
      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(i, v243);
LABEL_59:
      v357 = v117;
      v244 = OUTLINED_FUNCTION_71();
      __swift_instantiateConcreteTypeFromMangledNameV2(v244, v245);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_65();
      sub_1D4E62A60(v246, v247, v248);
      OUTLINED_FUNCTION_50_21();

      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(v320, v249);
      OUTLINED_FUNCTION_36_30();
      sub_1D520579C(v319, v250);
      goto LABEL_60;
    }

LABEL_86:
    sub_1D54B45D4(v117);
    v117 = v300;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_43_22();
  v198 = v342;
  OUTLINED_FUNCTION_79_10();
  v144 = j;
  if (!v199)
  {
    OUTLINED_FUNCTION_14_1();
    sub_1D4E62A60(v251, v252, v253);
    v144 = v332;
    sub_1D5615608();
    sub_1D5615648();
    v254 = sub_1D5615638();
    if (v254 >= sub_1D51FEF88())
    {

      v67 = v325;
      goto LABEL_72;
    }

    v255 = *(v346 + 20);
    OUTLINED_FUNCTION_0_134();
    v257 = v311;
    sub_1D5205744(v354 + v256, v311);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v325;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_63:
      v259 = *(v117 + 16);
      if (v259 >= *(v117 + 24) >> 1)
      {
        OUTLINED_FUNCTION_73_14();
        v117 = v306;
      }

      *(v117 + 16) = v259 + 1;
      OUTLINED_FUNCTION_18_56();
      v261 = *(v260 + 72);
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v257, v262);
      v357 = v117;
      v263 = OUTLINED_FUNCTION_71();
      __swift_instantiateConcreteTypeFromMangledNameV2(v263, v264);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_65();
      sub_1D4E62A60(v265, v266, v267);
      OUTLINED_FUNCTION_50_21();
LABEL_60:
      (*(v331 + 40))(v330, &qword_1EC7F1D40, v21);
      goto LABEL_72;
    }

LABEL_93:
    v304 = *(v117 + 16);
    sub_1D4F02190();
    v117 = v305;
    goto LABEL_63;
  }

  v21 = 0;
  v200 = (v321 + 8);
  v201 = *(v117 + 16);
  for (k = v201; ; v201 = k)
  {
    if (v21 == v201)
    {
      v202 = 1;
      v21 = v201;
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (v21 >= *(v117 + 16))
      {
        goto LABEL_83;
      }

      v203 = v343;
      OUTLINED_FUNCTION_18_56();
      v205 = *(v204 + 72);
      v206 = *(v198 + 48);
      *v203 = v21;
      OUTLINED_FUNCTION_0_134();
      sub_1D5205744(v208, v203 + v207);
      sub_1D52057F4(v203, v106, &qword_1EC7F1D68, &qword_1D5643C80);
      v202 = 0;
      ++v21;
    }

    __swift_storeEnumTagSinglePayload(v106, v202, 1, v198);
    v209 = v334;
    sub_1D52057F4(v106, v334, &qword_1EC7F1D70, &qword_1D5643C88);
    if (__swift_getEnumTagSinglePayload(v209, 1, v198) == 1)
    {
      OUTLINED_FUNCTION_29_38();
      OUTLINED_FUNCTION_43_22();
      goto LABEL_71;
    }

    v347 = *v209;
    v210 = *(v198 + 48);
    OUTLINED_FUNCTION_7_83();
    sub_1D52056EC(v209 + v211, v144);
    if (qword_1EC7E9028 != -1)
    {
      OUTLINED_FUNCTION_19_52();
      swift_once();
    }

    OUTLINED_FUNCTION_3_106();
    sub_1D5204908(&qword_1EDD5EC98, v212);
    OUTLINED_FUNCTION_161();
    sub_1D560EC28();
    OUTLINED_FUNCTION_23_1(v93);
    if (v159)
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_6_74();
    v144 = v333;
    sub_1D52056EC(v93, v333);
    OUTLINED_FUNCTION_84_12();
    OUTLINED_FUNCTION_172(&v360);
    OUTLINED_FUNCTION_161();
    sub_1D560EC28();
    OUTLINED_FUNCTION_23_1(v93);
    if (v159)
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_6_74();
    OUTLINED_FUNCTION_165_4(&v359);
    sub_1D52056EC(v213, v214);
    OUTLINED_FUNCTION_13_60();
    sub_1D5204908(&qword_1EC7EC830, v215);
    v216 = v349;
    OUTLINED_FUNCTION_200();
    sub_1D560EC98();
    v217 = v350;
    OUTLINED_FUNCTION_200();
    sub_1D560EC98();
    v218 = sub_1D560D528();
    v219 = *v200;
    v220 = v217;
    v221 = v351;
    (*v200)(v220, v351);
    v219(v216, v221);
    v106 = type metadata accessor for MusicPin.Item;
    sub_1D520579C(v93, type metadata accessor for MusicPin.Item);
    v222 = OUTLINED_FUNCTION_75_2();
    sub_1D520579C(v222, v223);
    v117 = v352;
    if (v218)
    {
      break;
    }

    OUTLINED_FUNCTION_4_77();
    v144 = j;
    sub_1D520579C(j, v224);
    OUTLINED_FUNCTION_79_10();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B45D4(v117);
    v117 = v303;
  }

  v257 = v332;
  OUTLINED_FUNCTION_28_43();
  v268 = v347;
  v269 = *(v117 + 16);
  if (v347 >= v269)
  {
    __break(1u);
    goto LABEL_93;
  }

  v270 = v269 - 1;
  OUTLINED_FUNCTION_18_56();
  v272 = *(v271 + 72);
  v274 = v273 + v272 * v268;
  sub_1D520579C(v274, type metadata accessor for MusicPin);
  sub_1D4F0373C(v274 + v272, v270 - v268, v274);
  *(v117 + 16) = v270;
  sub_1D520579C(j, type metadata accessor for MusicPin);
  v144 = v257;
LABEL_71:
  v357 = v117;
  v275 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v275, v276);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_65();
  sub_1D4E62A60(v277, v278, v279);
  OUTLINED_FUNCTION_68_14();
  sub_1D560DAD8();
  v280 = v329;
  sub_1D520475C(&qword_1D5643C58);
  OUTLINED_FUNCTION_172(v358);
  (*(v281 + 8))(&qword_1D5643C58, v21);
  (qword_1EC7F1D68)(v330, v280, v21);
LABEL_72:
  if (qword_1EDD544C8 != -1)
  {
LABEL_84:
    OUTLINED_FUNCTION_11_73();
  }

  v282 = sub_1D560C758();
  __swift_project_value_buffer(v282, qword_1EDD76B20);
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v354, v67);
  v283 = sub_1D560C738();
  v284 = sub_1D56156E8();
  if (os_log_type_enabled(v283, v284))
  {
    v285 = swift_slowAlloc();
    v357 = swift_slowAlloc();
    *v285 = 136315394;
    v286 = sub_1D5205034();
    v288 = v287;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v67, v289);
    v290 = sub_1D4E6835C(v286, v288, &v357);

    *(v285 + 4) = v290;
    *(v285 + 12) = 2082;
    v291 = v330;
    OUTLINED_FUNCTION_59();
    sub_1D4E62A60(&qword_1EC7F1D78, &qword_1EC7F1D28, &qword_1D5643A60);
    v292 = sub_1D56160F8();
    v294 = sub_1D4E6835C(v292, v293, &v357);

    *(v285 + 14) = v294;
    _os_log_impl(&dword_1D4E3F000, v283, v284, "Applying transient state record: %s. Updating pins collection to %{public}s", v285, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v67, v295);
    v291 = v330;
  }

  v296 = v324;
  v297 = v323;
  OUTLINED_FUNCTION_59();
  v297(v329, v291, v21);
  OUTLINED_FUNCTION_172(v358);
  (*(v298 + 32))(v327, v144, v21);
  sub_1D560DA18();
  (*(v296 + 8))(v291, v21);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D520475C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v6 = sub_1D560DA58();
  sub_1D51FD944(a1, &v6);

  type metadata accessor for MusicPin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D40, &qword_1D5643C58);
  OUTLINED_FUNCTION_3_106();
  sub_1D5204908(v2, v3);
  OUTLINED_FUNCTION_96();
  sub_1D4E62A60(v4, &qword_1EC7F1D40, &qword_1D5643C58);
  sub_1D560DAD8();
}

void sub_1D5204874()
{
  if (!qword_1EDD5D790)
  {
    type metadata accessor for MusicPin();
    sub_1D5204908(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D790);
    }
  }
}

uint64_t sub_1D5204908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5204998()
{
  result = sub_1D560C368();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicPin();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5204A38()
{
  result = qword_1EC7F1D30;
  if (!qword_1EC7F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1D30);
  }

  return result;
}

uint64_t sub_1D5204A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = type metadata accessor for MusicPin();
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D50, &unk_1D5643C60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v31 - v11;
  v13 = type metadata accessor for MusicPinPropertyProvider();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v31 - v18;
  v33 = a3;
  sub_1D5205744(a1, a3);
  v20 = *a2;

  sub_1D525C790();
  v22 = v21;
  LOBYTE(a3) = v23;

  if ((a3 & 1) == 0)
  {
    v32 = v8;
    if (qword_1EC7E9038 != -1)
    {
      swift_once();
    }

    v25 = qword_1EC87C298;
    sub_1D5204908(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
    sub_1D5204908(&qword_1EDD5EC98, type metadata accessor for MusicPin);
    v31[1] = v25;
    result = sub_1D560EC28();
    if (v38 == 1)
    {
      v26 = v32;
      if (!v22)
      {
        return result;
      }
    }

    else
    {
      v26 = v32;
      if (v22 == v37)
      {
        return result;
      }
    }

    sub_1D5612B18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
      sub_1D52056EC(v12, v19);
      v39 = MEMORY[0x1E69E6530];
      v37 = v22;
      swift_retain_n();
      sub_1D528FA08(&v37);
      sub_1D5205744(v19, v17);
      v27 = &v17[*(v13 + 36)];
      *v26 = sub_1D560D708();
      v26[1] = v28;
      v29 = *(v34 + 20);
      sub_1D5204908(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider);
      sub_1D5610D28();

      sub_1D520579C(v17, type metadata accessor for MusicPinPropertyProvider);
      sub_1D520579C(v19, type metadata accessor for MusicPinPropertyProvider);
      v30 = v33;
      sub_1D520579C(v33, type metadata accessor for MusicPin);
      return sub_1D52056EC(v26, v30);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
      sub_1D4E50004(v12, &qword_1EC7F1D50, &unk_1D5643C60);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1D5615B68();
      v35 = v37;
      v36 = v38;
      MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D5687F20);
      sub_1D5612B18();
      sub_1D5615D48();
      __swift_destroy_boxed_opaque_existential_1(&v37);
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5204FC0()
{
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v0, v1);

  return sub_1D5614CB8();
}

unint64_t sub_1D5205034()
{
  v1 = v0;
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v2, v3);
  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  v5 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v6 = v0 + *(v5 + 20);
  v7 = MusicPin.description.getter();
  MEMORY[0x1DA6EAC70](v7);

  MEMORY[0x1DA6EAC70](0x203A6E6970202CLL, 0xE700000000000000);

  MEMORY[0x1DA6EAC70](0x74617265706F202CLL, 0xED0000203A6E6F69);
  v8 = (v1 + *(v5 + 24));
  v10 = *v8;
  v11 = *(v8 + 8);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D5205200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return 1;
    }

    if (v4 == 1)
    {
      return (v3 ^ v2) == 0;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1D5205268()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](3);
      v1 = v1;
    }

    else
    {
      v1 = v1 != 0;
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](2);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t sub_1D52052CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA6EC0D0](3);
      v1 = v1;
    }

    else
    {
      v1 = v1 != 0;
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](2);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5205350()
{
  sub_1D56162D8();
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v0, v1);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52053D4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D56162D8();
  sub_1D5205268();
  return sub_1D5616328();
}

uint64_t sub_1D5205430()
{
  sub_1D56162D8();
  sub_1D560C368();
  sub_1D5204908(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5205500()
{
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v0, v1);
  return sub_1D560C4B8();
}

BOOL sub_1D52055A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1D560C818();
      sub_1D5204908(&qword_1EC7EDEC0, MEMORY[0x1E695BF10]);

      v2 = sub_1D5614D18();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

BOOL sub_1D5205670(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1D5205AFC();
    v5 = a1;
    v6 = a2;
    v2 = sub_1D5615848();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1D52056EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D5205744(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D520579C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D52057F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

unint64_t sub_1D5205850()
{
  result = qword_1EDD53C10;
  if (!qword_1EDD53C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1D28, &qword_1D5643A60);
    sub_1D5204908(qword_1EDD593C8, type metadata accessor for MusicPin);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53C10);
  }

  return result;
}

uint64_t sub_1D5205904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_22(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1D52023E4(a1, v5);
}

uint64_t sub_1D520597C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D4ECF3E8;
  v8 = OUTLINED_FUNCTION_18_27();

  return sub_1D52025B8(v8, v9, v10, v11);
}

uint64_t sub_1D5205A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5205AFC()
{
  result = qword_1EC7F1DC8;
  if (!qword_1EC7F1DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7F1DC8);
  }

  return result;
}

uint64_t sub_1D5205C3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4ECF4E0;
  v6 = OUTLINED_FUNCTION_18_27();

  return sub_1D51FE74C(v6, v7, v8, v4);
}

uint64_t OUTLINED_FUNCTION_34_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_26()
{
  result = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v1 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_51_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_57_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1D5202C28(v22, v20 + v21, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_68_14()
{
  result = v0 - 136;
  v2 = *(v0 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_16()
{
  *(v1 - 104) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_76_12(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t Composer.name.getter()
{
  if (qword_1EC7E90E0 != -1)
  {
    swift_once();
  }

  sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v0, type metadata accessor for Composer);
  sub_1D560EC28();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t static Composer.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Composer() + 20);

  return sub_1D5611A78();
}

uint64_t Composer.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v119 = v4;
  v120 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v118 = v8 - v7;
  v9 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v9);
  v115 = v11;
  v116 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v113 = v15 - v14;
  v16 = sub_1D5611AB8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v108 = v18;
  v109 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v111 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v103 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v103 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v103 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v103 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v103 - v54;
  v56 = type metadata accessor for Composer();
  v57 = OUTLINED_FUNCTION_14(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  v62 = v61 - v60;
  sub_1D52077E8(v1, v61 - v60);
  v63 = Composer.name.getter();
  v106 = v64;
  v107 = v63;
  sub_1D56140F8();
  v110 = v55;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_1D56106B8();
  v112 = v49;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  sub_1D560C0A8();
  v114 = v43;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78();
  }

  v77 = sub_1D560C328();
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v78, v49);
  OUTLINED_FUNCTION_0_135();
  v80 = sub_1D5208690(v79, v49);
  sub_1D560EC28();
  v105 = __swift_getEnumTagSinglePayload(v37, 1, v77) != 1;
  sub_1D4E50004(v37, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_33();
  v81 = v116;
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v116);
  v122 = v56;
  v123 = v80;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
  v104 = v62;
  sub_1D52077E8(v62, boxed_opaque_existential_0);
  v86 = __swift_project_boxed_opaque_existential_1(v121, v122);
  v88 = v108;
  v87 = v109;
  (*(v108 + 16))(v23, &v86[*(v56 + 20)], v109);
  v89 = v113;
  sub_1D5611A98();
  (*(v88 + 8))(v23, v87);
  v90 = v111;
  sub_1D560FDD8();
  (*(v115 + 8))(v89, v81);
  sub_1D4E50004(v31, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v81);
  sub_1D4F7AFE0(v90, v31);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v91 = v118;
  sub_1D560EC98();
  sub_1D4E69970(v31, v90, &qword_1EC7EA358, &unk_1D561DF50);
  v92 = type metadata accessor for MusicSiriRepresentation();
  v93 = v117;
  v94 = v110;
  sub_1D4E69970(v110, v117 + v92[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v95 = v112;
  sub_1D4E69970(v112, v93 + v92[9], &qword_1EC7EC478, &unk_1D56299D0);
  v96 = v114;
  sub_1D4E69970(v114, v93 + v92[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v121[0]) = 2;
  sub_1D50391CC();
  v98 = v97;
  v100 = v99;
  sub_1D4E50004(v90, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v119 + 8))(v91, v120);
  sub_1D4E50004(v31, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v96, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v95, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v94, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5208304(v104);
  *v93 = v98;
  *(v93 + 8) = v100;
  *(v93 + 16) = 2;
  v102 = v106;
  *(v93 + 24) = v107;
  *(v93 + 32) = v102;
  *(v93 + 40) = 0;
  *(v93 + 48) = 0;
  return result;
}

uint64_t Composer.debugDescription.getter()
{
  v74 = sub_1D5613AF8();
  v1 = OUTLINED_FUNCTION_4(v74);
  v67 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v73 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v66 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DF8, &qword_1D5643E18);
  OUTLINED_FUNCTION_14(v68);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v71 = (&v66 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_4(v18);
  v70 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = sub_1D560C328();
  v31 = OUTLINED_FUNCTION_4(v30);
  v66 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_18_57();
  v84 = v38;
  v85 = 0xE900000000000028;
  strcpy(v81, "\n  id: ");
  BYTE1(v81[1]) = 0;
  WORD1(v81[1]) = 0;
  HIDWORD(v81[1]) = -402653184;
  v39 = *v0;
  v40 = v0[1];
  v41 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v41);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  strcpy(v81, ",\n  name: ");
  HIDWORD(v81[1]) = -352321536;
  v42 = Composer.name.getter();
  MEMORY[0x1DA6EAC70](v42);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_15_59();

  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78();
  }

  sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v43, type metadata accessor for Composer);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_1D4E50004(v29, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v44 = v66;
    (*(v66 + 32))(v37, v29, v30);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_1D5615B68();

    v81[0] = 0xD000000000000016;
    v81[1] = 0x80000001D5687F60;
    OUTLINED_FUNCTION_10_72();
    sub_1D5208690(v45, v46);
    v47 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v47);

    MEMORY[0x1DA6EAC70](v81[0], v81[1]);

    (*(v44 + 8))(v37, v30);
  }

  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82();
  }

  v48 = v71;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v48, 1, v18) == 1)
  {
    sub_1D4E50004(v48, &qword_1EC7EB508, &unk_1D5643E20);
  }

  else
  {
    v50 = v69;
    v49 = v70;
    (*(v70 + 32))(v69, v48, v18);
    v82 = 0;
    v83 = 0xE000000000000000;
    (*(v49 + 16))(v12, v50, v18);
    v51 = *(v68 + 36);
    sub_1D5208360();
    sub_1D5615608();
    v71 = (v67 + 16);
    v52 = (v67 + 32);
    v53 = (v67 + 8);
    while (1)
    {
      sub_1D5615648();
      if (*&v12[v51] == v81[0])
      {
        break;
      }

      v54 = sub_1D5615688();
      v55 = v72;
      v56 = v74;
      (*v71)(v72);
      v54(v81, 0);
      v57 = v12;
      v58 = v18;
      sub_1D5615658();
      (*v52)(v73, v55, v56);
      v59 = v82 & 0xFFFFFFFFFFFFLL;
      if ((v83 & 0x2000000000000000) != 0)
      {
        v59 = HIBYTE(v83) & 0xF;
      }

      if (v59)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v81[0] = 10;
      v81[1] = 0xE100000000000000;
      v60 = v73;
      v61 = sub_1D5613958();
      MEMORY[0x1DA6EAC70](v61);

      MEMORY[0x1DA6EAC70](v81[0], v81[1]);

      (*v53)(v60, v74);
      v18 = v58;
      v12 = v57;
    }

    sub_1D4E50004(v12, &qword_1EC7F1DF8, &qword_1D5643E18);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v81, ",\n  albums: [");
    HIWORD(v81[1]) = -4864;
    v79 = v82;
    v80 = v83;
    v77 = 10;
    v78 = 0xE100000000000000;
    v75 = 0x202020200ALL;
    v76 = 0xE500000000000000;
    sub_1D4F53278();
    v62 = sub_1D5615968();
    v64 = v63;

    MEMORY[0x1DA6EAC70](v62, v64);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_15_59();

    (*(v70 + 8))(v69, v18);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v84;
}

uint64_t Composer.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for Composer() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Composer.libraryAddedDate.getter()
{
  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v1, v0);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Composer.albums.getter()
{
  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v1, v0);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Composer.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t Composer.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Composer() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Composer.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Composer() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_74();
  sub_1D5208690(v4, v5);
  return sub_1D5614CB8();
}

uint64_t Composer.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for Composer() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_74();
  sub_1D5208690(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52072E8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D5208690(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D520738C@<X0>(uint64_t *a1@<X8>)
{
  result = Composer.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D52073B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  v12 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D52074E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  v14 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D520762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  v14 = sub_1D5208690(&qword_1EC7EA9E8, type metadata accessor for Composer);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5207770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  v0 = sub_1D560D178();

  qword_1EC87C348 = v0;
  return result;
}

uint64_t sub_1D52077E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Composer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D520784C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_72();
  sub_1D5208690(v0, v1);
  v2 = sub_1D560D188();

  qword_1EC87C350 = v2;
  return result;
}

uint64_t sub_1D52078F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  swift_getKeyPath();
  sub_1D5615288();
  sub_1D5208690(&qword_1EC7EA9B8, MEMORY[0x1E6976D28]);
  v0 = sub_1D560D0F8();

  qword_1EC7F1DE8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.albums.getter()
{
  if (qword_1EC7E90F0 != -1)
  {
    OUTLINED_FUNCTION_5_82();
  }
}

uint64_t static Composer.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5207B48()
{
  sub_1D5208690(&qword_1EDD54818, type metadata accessor for Composer);

  return sub_1D5610C58();
}

uint64_t static Composer.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D560EEA8();
  if (result != a4)
  {
    result = sub_1D5613838();
    if (result != a4)
    {
      result = sub_1D5613D28();
      if (result != a4)
      {
        result = sub_1D5613AF8();
        if (result != a4)
        {
          v6 = sub_1D560DE58();
          sub_1D5208690(&qword_1EDD53B58, MEMORY[0x1E69750D8]);
          swift_allocError();
          (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69750C8], v6);
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5207CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t Composer.init(from:)(uint64_t *a1)
{
  type metadata accessor for Composer();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v3, v4);
  OUTLINED_FUNCTION_8_72();
  sub_1D5208690(v5, v1);
  OUTLINED_FUNCTION_11_74(&qword_1EC7F1E10);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Composer.encode(to:)()
{
  type metadata accessor for Composer();
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v1, v2);
  OUTLINED_FUNCTION_8_72();
  sub_1D5208690(v3, v0);
  OUTLINED_FUNCTION_11_74(&qword_1EC7F1E10);
  return sub_1D560CA28();
}

uint64_t Composer.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_18_57();
  v7 = v1;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v5 = Composer.name.getter();
  MEMORY[0x1DA6EAC70](v5);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v7;
}

uint64_t sub_1D52080A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EDD54880 = v4;
  return result;
}

uint64_t sub_1D52081FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v6 + v5, *MEMORY[0x1E6975218], v0);
  qword_1EC7F1DF0 = v6;
  return result;
}

uint64_t sub_1D5208304(uint64_t a1)
{
  v2 = type metadata accessor for Composer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5208360()
{
  result = qword_1EDD53BC0;
  if (!qword_1EDD53BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BC0);
  }

  return result;
}

uint64_t sub_1D52083C4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD54830);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Composer();
  OUTLINED_FUNCTION_1_108();
  sub_1D5208690(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D5208470()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53C88);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD54828 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDD54830);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t sub_1D52085A0(uint64_t a1)
{
  result = sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5208690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D520876C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E20, &unk_1D56443D8);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87C358 = v0;
  return result;
}

uint64_t sub_1D520884C()
{
  type metadata accessor for UploadedAudio();
  sub_1D52089D8(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  return sub_1D560EC98();
}

uint64_t sub_1D5208924(void *a1)
{
  a1[1] = sub_1D52089D8(&qword_1EC7F1E18, type metadata accessor for UploadedAudio);
  a1[2] = sub_1D52089D8(&qword_1EC7F05E8, type metadata accessor for UploadedAudio);
  result = sub_1D52089D8(&qword_1EC7F1330, type metadata accessor for UploadedAudio);
  a1[3] = result;
  return result;
}

uint64_t sub_1D52089D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5208A20()
{
  OUTLINED_FUNCTION_47();
  v329 = v1;
  v318 = v2;
  v312 = v3;
  v5 = v4;
  v324 = v6;
  v323 = sub_1D5612B88();
  v7 = OUTLINED_FUNCTION_4(v323);
  v322 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v22 = OUTLINED_FUNCTION_48(v21);
  v328 = _s15InternalStorageVMa(v22);
  v23 = OUTLINED_FUNCTION_14(v328);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  v334 = v26;
  OUTLINED_FUNCTION_70_0();
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v31);
  v32 = type metadata accessor for UploadedAudio();
  v33 = OUTLINED_FUNCTION_22(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v37 = type metadata accessor for TVEpisode();
  v38 = OUTLINED_FUNCTION_22(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v41);
  v303 = sub_1D5613838();
  v42 = OUTLINED_FUNCTION_4(v303);
  v302 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v46);
  v300 = sub_1D560EEA8();
  v47 = OUTLINED_FUNCTION_4(v300);
  v299 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v51);
  v52 = type metadata accessor for MusicMovie();
  v53 = OUTLINED_FUNCTION_22(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v56);
  v325 = type metadata accessor for Playlist.Entry.InternalItem();
  v57 = OUTLINED_FUNCTION_14(v325);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v62 = OUTLINED_FUNCTION_22(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_2();
  v332 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v68 = OUTLINED_FUNCTION_22(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_2();
  v338 = v72;
  v73 = OUTLINED_FUNCTION_70_0();
  v305 = _s12InternalItemOMa(v73);
  v74 = OUTLINED_FUNCTION_14(v305);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v331 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_2();
  v337 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13_3();
  v327 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  v90 = OUTLINED_FUNCTION_22(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13();
  v335 = v93;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v95);
  v320 = sub_1D5612E58();
  v96 = OUTLINED_FUNCTION_4(v320);
  v319 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  v333 = v100;
  OUTLINED_FUNCTION_70_0();
  v101 = sub_1D560D838();
  v102 = OUTLINED_FUNCTION_4(v101);
  v104 = v103;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_59_0();
  v109 = v107 - v108;
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_70_14();
  v336 = sub_1D5610088();
  v111 = OUTLINED_FUNCTION_4(v336);
  v326 = v112;
  v114 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v297 - v116;
  sub_1D560FF08();
  v330 = v5;
  Playlist.Entry.InternalItem.innerItem.getter(&v339);
  __swift_project_boxed_opaque_existential_1(&v339, v341);
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(&v339);
  v309 = sub_1D560FDE8();
  v308 = v118;

  OUTLINED_FUNCTION_38_28();
  sub_1D520D9CC(v119, v120);
  sub_1D560EC98();
  sub_1D560D4E8();
  v121 = OUTLINED_FUNCTION_60_17(v104);
  v315 = v122;
  v314 = v123;
  (v123)(v121);
  v306 = sub_1D56147B8();
  v124 = v310;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
  v129 = *(v104 + 16);
  v317 = v0;
  v318 = v101;
  v129(v109, v0, v101);
  v130 = *(v326 + 16);
  v316 = v117;
  v130(v307, v117, v336);
  sub_1D5614A88();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_6_37();
  v131 = OUTLINED_FUNCTION_6_37();
  v132 = sub_1D56131D8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v132);
  v136 = v311;
  v137 = v306;
  v138 = v332;
  sub_1D5612DD8();
  v139 = sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v139);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v137);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v336);
  v149 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v149);
  OUTLINED_FUNCTION_33_37();
  sub_1D520D970(v330, v136, v153);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v313 = v132;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v180 = v299;
      OUTLINED_FUNCTION_66_15();
      v131 = v298;
      v181 = v300;
      v221(v298, v136, v300);
      OUTLINED_FUNCTION_57_5(&v333);
      sub_1D560EE78();
      v156 = &unk_1D561A0C0;
      v222 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v222, v223, &unk_1D561A0C0);
      v224 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v224, v225, v226, &unk_1D561A0C0);
      v325 = sub_1D560EE88();
      LODWORD(v312) = v227;
      v228 = v335;
      sub_1D4E50004(v335, &qword_1EC7EED08, &qword_1D562E660);
      v229 = OUTLINED_FUNCTION_55_21();
      v124(v229);
      OUTLINED_FUNCTION_73_15();
      swift_storeEnumTagMultiPayload();
      (v124)(v228, v131, v181);
      v230 = *MEMORY[0x1E69772B0];
      OUTLINED_FUNCTION_24_0(v137);
      (*(v231 + 104))(v228);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v232, v233, v234, v137);
      OUTLINED_FUNCTION_57_5(&v334);
      sub_1D560FE38();
      v235 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v235, v236, &unk_1D561DF50);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v237, v238, v239, v336);
      v240 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v240, v241, v242, &unk_1D561DF50);
      v157 = v304;
      sub_1D560ECE8();
      v243 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v243, v244, &unk_1D561E370);
      v245 = OUTLINED_FUNCTION_70();
      sub_1D4F39A1C(v245, v246, &qword_1EC7EA3B8, &unk_1D561E370);
      v208 = sub_1D560EE68();
      goto LABEL_26;
    case 2:
      v180 = v302;
      OUTLINED_FUNCTION_66_15();
      v131 = v301;
      v181 = v303;
      v182(v301, v136, v303);
      OUTLINED_FUNCTION_57_5(&v333);
      sub_1D56137F8();
      v156 = &unk_1D561A0C0;
      v183 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v183, v184, &unk_1D561A0C0);
      v185 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v185, v186, v187, &unk_1D561A0C0);
      v325 = sub_1D5613818();
      LODWORD(v312) = v188;
      v189 = v335;
      sub_1D4E50004(v335, &qword_1EC7EED08, &qword_1D562E660);
      v190 = OUTLINED_FUNCTION_55_21();
      v124(v190);
      OUTLINED_FUNCTION_73_15();
      swift_storeEnumTagMultiPayload();
      (v124)(v189, v131, v181);
      v191 = *MEMORY[0x1E69772B8];
      OUTLINED_FUNCTION_24_0(v137);
      (*(v192 + 104))(v189);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v193, v194, v195, v137);
      OUTLINED_FUNCTION_57_5(&v334);
      sub_1D560FFA8();
      v196 = OUTLINED_FUNCTION_98();
      sub_1D4E50004(v196, v197, &unk_1D561DF50);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v336);
      v201 = OUTLINED_FUNCTION_43_23();
      sub_1D4F39A1C(v201, v202, v203, &unk_1D561DF50);
      v157 = v304;
      sub_1D56135D8();
      v204 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v204, v205, &unk_1D561E370);
      v206 = OUTLINED_FUNCTION_70();
      sub_1D4F39A1C(v206, v207, &qword_1EC7EA3B8, &unk_1D561E370);
      v208 = sub_1D56137E8();
LABEL_26:
      OUTLINED_FUNCTION_46_21(v208, v209);
      (*(v180 + 8))(v131, v181);
      goto LABEL_27;
    case 3:
      OUTLINED_FUNCTION_8_73();
      OUTLINED_FUNCTION_81_18(v136, v210, &v329);
      v156 = v305;
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D520D9CC(&qword_1EDD54508, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v211, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_79_11();
      v213 = *(v212 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v213);
      if (qword_1EC7E91A0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v325 = v339;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D5610078();
      v214 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v214, &qword_1EC7EA358, &unk_1D561DF50);
      v215 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v215, v216, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E9248 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_57_5(&v332);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v157 = &unk_1D561E370;
      v217 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v217, v218, &unk_1D561E370);
      sub_1D4F39A1C(&unk_1D561DF50, v138, &qword_1EC7EA3B8, &unk_1D561E370);
      v219 = TVEpisode.title.getter();
      OUTLINED_FUNCTION_46_21(v219, v220);
      v169 = type metadata accessor for TVEpisode;
      v170 = v131;
      goto LABEL_24;
    case 4:
      OUTLINED_FUNCTION_4_79();
      OUTLINED_FUNCTION_81_18(v136, v171, &v330);
      v156 = v305;
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      v157 = sub_1D520D9CC(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v172, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_79_11();
      v174 = *(v173 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v174);
      if (qword_1EC7E8E60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v175 = v339;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FF28();
      v176 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v176, &qword_1EC7EA358, &unk_1D561DF50);
      v177 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v177, v178, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v179 = type metadata accessor for UploadedAudio;
      goto LABEL_35;
    case 5:
      OUTLINED_FUNCTION_3_108();
      OUTLINED_FUNCTION_81_18(v136, v247, &v331);
      v156 = v305;
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      v157 = sub_1D520D9CC(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v248, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_79_11();
      v250 = *(v249 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      OUTLINED_FUNCTION_53_21();
      OUTLINED_FUNCTION_64_17(v250);
      if (qword_1EDD53E28 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v175 = v339;
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_50_22();
      OUTLINED_FUNCTION_71_15();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FF38();
      v251 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v251, &qword_1EC7EA358, &unk_1D561DF50);
      v252 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v252, v253, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v179 = type metadata accessor for UploadedVideo;
LABEL_35:
      sub_1D520D918(v131, v179);
      v310 = v339;
      v311 = v340;
      OUTLINED_FUNCTION_68_15();
      v325 = v175;
      break;
    default:
      OUTLINED_FUNCTION_6_75();
      OUTLINED_FUNCTION_81_18(v136, v155, &v327);
      v156 = v305;
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      v157 = sub_1D520D9CC(&qword_1EDD59308, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v158, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_79_11();
      v160 = *(v159 - 256);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v161 = v337;
      sub_1D4E50004(v337, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4F39A1C(v160, v161, &qword_1EC7E9CA0, &unk_1D561A0C0);
      if (qword_1EDD541A8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v325 = v339;
      OUTLINED_FUNCTION_48_24();
      sub_1D520D970(v131, v331, type metadata accessor for MusicMovie);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_47_29();
      sub_1D560FE38();
      v162 = OUTLINED_FUNCTION_77_10();
      sub_1D4E50004(v162, &qword_1EC7EA358, &unk_1D561DF50);
      v163 = OUTLINED_FUNCTION_20_54();
      sub_1D4F39A1C(v163, v164, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EDD54338 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_57_5(&v332);
      OUTLINED_FUNCTION_64_5();
      sub_1D560EC28();
      v165 = OUTLINED_FUNCTION_86_0();
      sub_1D4E50004(v165, v166, &unk_1D561E370);
      sub_1D4F39A1C(&unk_1D561DF50, v138, &qword_1EC7EA3B8, &unk_1D561E370);
      v167 = MusicMovie.title.getter();
      OUTLINED_FUNCTION_46_21(v167, v168);
      OUTLINED_FUNCTION_15_62();
      v170 = v131;
LABEL_24:
      sub_1D520D918(v170, v169);
LABEL_27:
      OUTLINED_FUNCTION_68_15();
      break;
  }

  sub_1D520D970(v331, v157, _s12InternalItemOMa);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v254, v255, v256, v156);
  sub_1D4F39AB0(v329, v131, &unk_1EC7ED370, &unk_1D5624FE0);
  v257 = v334;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v258, v259, v260, v156);
  v261 = *(v328 + 20);
  type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v262, v263, v264, v265);
  sub_1D4E68940(v157, v257, &qword_1EC7EB6E0, &qword_1D56320D0);
  sub_1D4E68940(v131, v257 + v261, &unk_1EC7ED370, &unk_1D5624FE0);
  swift_getKeyPath();
  v266 = *MEMORY[0x1E6976668];
  v267 = v322;
  v268 = v322 + 104;
  v269 = *(v322 + 104);
  v270 = v321;
  v271 = v323;
  v269(v321, v266, v323);
  sub_1D5610DB8();

  v272 = *(v267 + 8);
  v273 = OUTLINED_FUNCTION_45_5();
  v272(v273);
  swift_getKeyPath();
  v339 = v325;
  LOBYTE(v340) = v312 & 1;
  v274 = OUTLINED_FUNCTION_44_26();
  (v269)(v274);
  sub_1D5610DB8();

  v275 = OUTLINED_FUNCTION_45_5();
  v272(v275);
  swift_getKeyPath();
  v276 = OUTLINED_FUNCTION_44_26();
  (v269)(v276);
  sub_1D5610DB8();

  v277 = OUTLINED_FUNCTION_45_5();
  v272(v277);
  swift_getKeyPath();
  v278 = OUTLINED_FUNCTION_44_26();
  (v269)(v278);
  v308 = v268;
  sub_1D5610DB8();

  v279 = OUTLINED_FUNCTION_45_5();
  v272(v279);
  swift_getKeyPath();
  LODWORD(v309) = v266;
  v269(v270, v266, v271);
  sub_1D5610DB8();

  v280 = OUTLINED_FUNCTION_45_5();
  v272(v280);
  swift_getKeyPath();
  v339 = v310;
  v340 = v311;
  v281 = OUTLINED_FUNCTION_44_26();
  (v269)(v281);
  sub_1D5610DB8();

  v282 = OUTLINED_FUNCTION_45_5();
  v272(v282);

  swift_getKeyPath();
  OUTLINED_FUNCTION_36_31();
  sub_1D520D9CC(v283, v284);
  v285 = v327;
  sub_1D56130F8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v286, v287, v288, v313);
  v269(v270, v309, v271);
  v289 = MEMORY[0x1E69766F0];
  v290 = v333;
  sub_1D5610DB8();

  v291 = OUTLINED_FUNCTION_45_5();
  v272(v291);
  sub_1D4E50004(v285, &qword_1EC7EECD0, &qword_1D562E620);
  v292 = v320;
  v341 = v320;
  v342 = v289;
  v293 = __swift_allocate_boxed_opaque_existential_0(&v339);
  v294 = v319;
  (*(v319 + 16))(v293, v290, v292);
  sub_1D5614768();
  sub_1D4E50004(v329, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_0_136();
  sub_1D520D918(v330, v295);
  sub_1D4E50004(v332, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4E50004(v338, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v335, &qword_1EC7EED08, &qword_1D562E660);
  sub_1D520D918(v331, _s12InternalItemOMa);
  sub_1D4E50004(v337, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v294 + 8))(v290, v292);
  v314(v317, v318);
  (*(v326 + 8))(v316, v336);
  OUTLINED_FUNCTION_35_35();
  sub_1D520D918(v334, v296);
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.internalItem.getter()
{
  OUTLINED_FUNCTION_47();
  v68 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_18_3();
  v8 = _s12InternalItemOMa(v7);
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED08, &qword_1D562E660);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_3();
  v19 = sub_1D56147B8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  sub_1D56147E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v19) != 1)
  {
    (*(v22 + 32))(v30, v1, v19);
    (*(v22 + 16))(v27, v30, v19);
    v36 = (*(v22 + 88))(v27, v19);
    if (v36 == *MEMORY[0x1E69772B0])
    {
      v37 = OUTLINED_FUNCTION_60_17(v22);
      v38(v37);
      (*(v22 + 96))(v27, v19);
      v39 = sub_1D560EEA8();
      OUTLINED_FUNCTION_14(v39);
      (*(v40 + 32))(v68, v27);
    }

    else
    {
      if (v36 != *MEMORY[0x1E69772B8])
      {
        v69 = 0;
        v70 = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5688030);
        sub_1D520D9CC(&qword_1EC7F1B48, MEMORY[0x1E69772C0]);
        v66 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v66);

        MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D5688050);
        OUTLINED_FUNCTION_6_3();
        v67 = 54;
        goto LABEL_17;
      }

      v41 = OUTLINED_FUNCTION_60_17(v22);
      v42(v41);
      (*(v22 + 96))(v27, v19);
      v43 = sub_1D5613838();
      OUTLINED_FUNCTION_14(v43);
      (*(v44 + 32))(v68, v27);
    }

LABEL_13:
    type metadata accessor for Playlist.Entry.InternalItem();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D4E50004(v1, &qword_1EC7EED08, &qword_1D562E660);
  sub_1D520B8F8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v8) != 1)
  {
    sub_1D520BAC4(v0, v14, _s12InternalItemOMa);
    v31 = OUTLINED_FUNCTION_45_5();
    sub_1D520BAC4(v31, v32, _s12InternalItemOMa);
    OUTLINED_FUNCTION_70();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v57 = sub_1D560EEA8();
        OUTLINED_FUNCTION_14(v57);
        v59 = *(v58 + 32);
        v60 = OUTLINED_FUNCTION_128();
        v62(v60, v61);
        break;
      case 2u:
        v48 = sub_1D5613838();
        OUTLINED_FUNCTION_14(v48);
        v50 = *(v49 + 32);
        v51 = OUTLINED_FUNCTION_128();
        v53(v51, v52);
        break;
      case 3u:
        OUTLINED_FUNCTION_8_73();
        v54 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v54, v55, v56);
        break;
      case 4u:
        OUTLINED_FUNCTION_4_79();
        v45 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v45, v46, v47);
        break;
      case 5u:
        OUTLINED_FUNCTION_3_108();
        v63 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v63, v64, v65);
        break;
      default:
        OUTLINED_FUNCTION_6_75();
        v33 = OUTLINED_FUNCTION_98();
        sub_1D520BAC4(v33, v34, v35);
        break;
    }

    goto LABEL_13;
  }

  sub_1D4E50004(v0, &qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_6_3();
  v67 = 72;
LABEL_17:
  sub_1D5615E08();
  __break(1u);
}

void Playlist.Entry.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v86 = v3;
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v80 = v9;
  OUTLINED_FUNCTION_70_0();
  v75 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v75);
  v79 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v77 = v14;
  OUTLINED_FUNCTION_70_0();
  v78 = sub_1D5611AB8();
  v15 = OUTLINED_FUNCTION_4(v78);
  v76 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v74 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v73 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v85 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v84 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v83 = v41;
  OUTLINED_FUNCTION_70_0();
  v87 = sub_1D5614828();
  v70 = *(v87 - 8);
  v42 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v43 = type metadata accessor for Playlist.Entry.InternalItem();
  v44 = OUTLINED_FUNCTION_22(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v47 = type metadata accessor for MusicSiriRepresentation();
  v48 = (v47 - 8);
  v49 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v52 = (v51 - v50);
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.siriRepresentation.getter();
  sub_1D520D918(v2, type metadata accessor for Playlist.Entry.InternalItem);
  v53 = *(v70 + 16);
  v53(v0, v1, v87);
  v72 = v52[3];
  v68 = v52[4];
  v71 = v52[5];
  v69 = v52[6];
  sub_1D4F39AB0(v52 + v48[10], v83, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v52 + v48[11], v84, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F39AB0(v52 + v48[12], v85, &unk_1EC7E9CA8, &unk_1D561D1D0);

  Playlist.Entry.internalItem.getter();
  sub_1D551B9BC();
  sub_1D520D918(v2, type metadata accessor for Playlist.Entry.InternalItem);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v75);
  v89 = v87;
  v90 = MEMORY[0x1E6977300];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
  v53(boxed_opaque_existential_0, v0, v87);
  __swift_project_boxed_opaque_existential_1(v88, v89);
  sub_1D5612AF8();
  sub_1D5611A98();
  (*(v76 + 8))(v74, v78);
  sub_1D560FDD8();
  (*(v79 + 8))(v77, v75);
  sub_1D4E50004(v67, &qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v75);
  v61 = OUTLINED_FUNCTION_86_0();
  sub_1D4F39A1C(v61, v62, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v88);
  sub_1D560EC98();
  sub_1D4F39AB0(v67, v73, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4F39AB0(v83, v86 + v48[10], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39AB0(v84, v86 + v48[11], &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F39AB0(v85, v86 + v48[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v88[0]) = 9;
  sub_1D50391CC();
  v64 = v63;
  v66 = v65;
  sub_1D4E50004(v73, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v81 + 8))(v80, v82);
  sub_1D4E50004(v67, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v85, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v84, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v83, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v70 + 8))(v0, v87);
  sub_1D520D918(v52, type metadata accessor for MusicSiriRepresentation);
  *v86 = v64;
  *(v86 + 8) = v66;
  *(v86 + 16) = 9;
  *(v86 + 24) = v72;
  *(v86 + 32) = v68;
  *(v86 + 40) = v71;
  *(v86 + 48) = v69;
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.init(internalItem:existingEntry:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v105 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v101 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v104 = _s15InternalStorageVMa(v16);
  v17 = OUTLINED_FUNCTION_14(v104);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D5613838();
  v24 = OUTLINED_FUNCTION_4(v23);
  v99 = v25;
  v100 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v98 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = sub_1D560EEA8();
  v30 = OUTLINED_FUNCTION_4(v29);
  v96 = v31;
  v97 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v35 = v34;
  OUTLINED_FUNCTION_70_0();
  v36 = type metadata accessor for Playlist.Entry.InternalItem();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E28, &unk_1D5644460);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_40_2();
  v47 = sub_1D5612E58();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v102 = sub_1D5614828();
  v106 = v3;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v47);
    v103 = v50;
    (*(v50 + 32))(v1, v0, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
    sub_1D560D1C8();
    OUTLINED_FUNCTION_33_37();
    sub_1D520D970(v5, v42, v56);
    v57 = v5;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v59 = v96;
        OUTLINED_FUNCTION_66_15();
        v60 = v42;
        v61 = v97;
        v62(v35, v60, v97);
        v63 = sub_1D56147B8();
        v108 = v63;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
        OUTLINED_FUNCTION_67_23();
        v65();
        v66 = *MEMORY[0x1E69772B0];
        OUTLINED_FUNCTION_24_0(v63);
        (*(v67 + 104))(boxed_opaque_existential_0);

        OUTLINED_FUNCTION_65_21();
        v57 = v5;
        goto LABEL_6;
      case 2u:
        v35 = v98;
        v59 = v99;
        OUTLINED_FUNCTION_66_15();
        v68 = v42;
        v61 = v100;
        v69(v98, v68, v100);
        v70 = sub_1D56147B8();
        v108 = v70;
        v71 = __swift_allocate_boxed_opaque_existential_0(v107);
        OUTLINED_FUNCTION_67_23();
        v72();
        v73 = *MEMORY[0x1E69772B8];
        OUTLINED_FUNCTION_24_0(v70);
        (*(v74 + 104))(v71);

        OUTLINED_FUNCTION_65_21();
LABEL_6:
        (*(v59 + 8))(v35, v61);
        break;
      default:
        OUTLINED_FUNCTION_0_136();
        sub_1D520D918(v42, v58);
        break;
    }

    sub_1D551B208(v101);
    v75 = _s12InternalItemOMa(0);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    Playlist.Entry.contributor.getter();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v75);
    v82 = *(v104 + 20);
    type metadata accessor for SocialProfile();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    sub_1D4E68940(v101, v22, &qword_1EC7EB6E0, &qword_1D56320D0);
    sub_1D4E68940(v105, v22 + v82, &unk_1EC7ED370, &unk_1D5624FE0);
    sub_1D560D1B8();
    v108 = sub_1D56131D8();
    __swift_allocate_boxed_opaque_existential_0(v107);
    OUTLINED_FUNCTION_36_31();
    sub_1D520D9CC(v87, v88);

    OUTLINED_FUNCTION_45_5();
    sub_1D56130F8();
    OUTLINED_FUNCTION_65_21();
    v108 = v47;
    v109 = MEMORY[0x1E69766F0];
    v89 = __swift_allocate_boxed_opaque_existential_0(v107);
    (*(v103 + 16))(v89, v1, v47);
    sub_1D5614768();

    OUTLINED_FUNCTION_24_0(v102);
    (*(v90 + 8))(v106);
    OUTLINED_FUNCTION_0_136();
    sub_1D520D918(v57, v91);
    (*(v103 + 8))(v1, v47);
    OUTLINED_FUNCTION_35_35();
    sub_1D520D918(v22, v92);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v47);
    sub_1D4E50004(v0, &qword_1EC7F1E28, &unk_1D5644460);
    OUTLINED_FUNCTION_6_3();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D520B930(void *a1, uint64_t *a2, void (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECD0, &qword_1D562E620);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_68_2();
  sub_1D5614738();
  v11 = sub_1D56131D8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    sub_1D4E50004(v3, &qword_1EC7EECD0, &qword_1D562E620);
    a3(0);
    OUTLINED_FUNCTION_33();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    if (*a1 != -1)
    {
      OUTLINED_FUNCTION_66();
      swift_once();
    }

    v17 = *a2;
    a3(0);
    sub_1D520D9CC(&qword_1EDD52EC8, MEMORY[0x1E69769D0]);
    sub_1D5613128();
    OUTLINED_FUNCTION_24_0(v11);
    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_70();
    return v21(v20);
  }
}

uint64_t sub_1D520BAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t Playlist.Entry.catalogID.getter()
{
  v1 = sub_1D560D838();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v7 = type metadata accessor for Playlist.Entry.InternalItem();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_38_28();
  sub_1D520D9CC(v18, v19);
  sub_1D560EC98();
  OUTLINED_FUNCTION_0_136();
  sub_1D520D918(v13, v20);
  sub_1D560D7A8();
  v21 = *(v4 + 8);
  v22 = OUTLINED_FUNCTION_98();
  v23(v22);
  v24 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v0, 1, v24) == 1)
  {
    sub_1D4E50004(v0, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v25 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0(v24);
    (*(v26 + 8))(v0, v24);
  }

  return v25;
}

void Playlist.Entry.favoritedDate.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_18(v3);
  v4 = type metadata accessor for UploadedVideo();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v46 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v13 = sub_1D560EEA8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v19 = sub_1D5613838();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v25 = type metadata accessor for Playlist.Entry.InternalItem();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v16 + 32))(v1, v31, v13);
      _s8MusicKit0A5VideoV0aB8InternalE13favoritedDate10Foundation0F0VSgvg_0();
      (*(v16 + 8))(v1, v13);
      break;
    case 2u:
      (*(v22 + 32))(v2, v31, v19);
      _s8MusicKit4SongV0aB8InternalE13favoritedDate10Foundation0F0VSgvg_0();
      v37 = *(v22 + 8);
      v38 = OUTLINED_FUNCTION_66();
      v39(v38);
      break;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v31, v0, v44);
      if (qword_1EC7E8E78 != -1)
      {
        swift_once();
      }

      sub_1D560C328();
      sub_1D520D9CC(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v45, type metadata accessor for UploadedAudio);
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v43 = v0;
      goto LABEL_11;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      sub_1D520BAC4(v31, v46, v40);
      if (qword_1EDD53F20 != -1)
      {
        swift_once();
      }

      sub_1D560C328();
      sub_1D520D9CC(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v41, type metadata accessor for UploadedVideo);
      sub_1D560EC28();
      v42 = type metadata accessor for UploadedVideo;
      v43 = v46;
LABEL_11:
      sub_1D520D918(v43, v42);
      break;
    default:
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v31, v32);
      sub_1D560C328();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.keepLocalManagedStatus.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_18(v3);
  v4 = type metadata accessor for TVEpisode();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v64 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for MusicMovie();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v63 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for UploadedVideo();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v62 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = type metadata accessor for UploadedAudio();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v23 = sub_1D560EEA8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v29 = sub_1D5613838();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v35 = type metadata accessor for Playlist.Entry.InternalItem();
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = OUTLINED_FUNCTION_63_14();
      v55(v54);
      sub_1D560EE08();
      v56 = *(v26 + 8);
      v57 = OUTLINED_FUNCTION_66();
      v58(v57);
      goto LABEL_18;
    case 2u:
      v47 = OUTLINED_FUNCTION_58_22();
      v48(v47, v0, v29);
      sub_1D5613748();
      (*(v32 + 8))(v2, v29);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_8_73();
      v49 = v64;
      sub_1D520BAC4(v0, v64, v50);
      if (qword_1EC7E91E0 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_34_38();
      sub_1D520D9CC(v51, v35);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v52, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v53 = type metadata accessor for TVEpisode;
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v0, v1, v44);
      if (qword_1EC7E8E90 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_37_26();
      sub_1D520D9CC(v45, v35);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v46, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v43 = v1;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      v49 = v62;
      sub_1D520BAC4(v0, v62, v59);
      if (qword_1EDD53EA8 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_32_37();
      sub_1D520D9CC(v60, v35);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v61, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v53 = type metadata accessor for UploadedVideo;
LABEL_16:
      v42 = v53;
      v43 = v49;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_6_75();
      sub_1D520BAC4(v0, v63, v39);
      if (qword_1EDD54208 != -1)
      {
        swift_once();
      }

      sub_1D5613198();
      OUTLINED_FUNCTION_39_29();
      sub_1D520D9CC(v40, v35);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v41, v35);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_15_62();
      v43 = v63;
LABEL_17:
      sub_1D520D918(v43, v42);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.keepLocalManagedStatusReasons.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_18(v3);
  v4 = type metadata accessor for TVEpisode();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v64 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for MusicMovie();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v63 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for UploadedVideo();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v62 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = type metadata accessor for UploadedAudio();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v23 = sub_1D560EEA8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v29 = sub_1D5613838();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v35 = type metadata accessor for Playlist.Entry.InternalItem();
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  Playlist.Entry.internalItem.getter();
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = OUTLINED_FUNCTION_63_14();
      v55(v54);
      sub_1D560EE18();
      v56 = *(v26 + 8);
      v57 = OUTLINED_FUNCTION_66();
      v58(v57);
      goto LABEL_18;
    case 2u:
      v47 = OUTLINED_FUNCTION_58_22();
      v48(v47, v0, v29);
      sub_1D5613798();
      (*(v32 + 8))(v2, v29);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_8_73();
      v49 = v64;
      sub_1D520BAC4(v0, v64, v50);
      if (qword_1EC7E91E8 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_34_38();
      sub_1D520D9CC(v51, v35);
      OUTLINED_FUNCTION_88_0();
      sub_1D520D9CC(v52, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v53 = type metadata accessor for TVEpisode;
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_4_79();
      sub_1D520BAC4(v0, v1, v44);
      if (qword_1EC7E8E98 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_37_26();
      sub_1D520D9CC(v45, v35);
      OUTLINED_FUNCTION_24_5();
      sub_1D520D9CC(v46, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      OUTLINED_FUNCTION_14_58();
      v43 = v1;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_3_108();
      v49 = v62;
      sub_1D520BAC4(v0, v62, v59);
      if (qword_1EDD53EA0 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_32_37();
      sub_1D520D9CC(v60, v35);
      OUTLINED_FUNCTION_23_2();
      sub_1D520D9CC(v61, v35);
      OUTLINED_FUNCTION_17_24();
      sub_1D560EC28();
      v53 = type metadata accessor for UploadedVideo;
LABEL_16:
      v42 = v53;
      v43 = v49;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_6_75();
      sub_1D520BAC4(v0, v63, v39);
      if (qword_1EDD54200 != -1)
      {
        swift_once();
      }

      sub_1D56134E8();
      OUTLINED_FUNCTION_39_29();
      sub_1D520D9CC(v40, v35);
      OUTLINED_FUNCTION_85_1();
      sub_1D520D9CC(v41, v35);
      OUTLINED_FUNCTION_18_29();
      sub_1D560EC28();
      OUTLINED_FUNCTION_15_62();
      v43 = v63;
LABEL_17:
      sub_1D520D918(v43, v42);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t Playlist.Entry.shouldShowComposer.getter()
{
  v2 = sub_1D5613838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v8 = type metadata accessor for Playlist.Entry.InternalItem();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v0, v1, v2);
    v12 = _s8MusicKit4SongV0aB8InternalE18shouldShowComposerSbvg_0();
    v13 = *(v5 + 8);
    v14 = OUTLINED_FUNCTION_98();
    v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_136();
    sub_1D520D918(v1, v16);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1D520CD70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  swift_getKeyPath();
  sub_1D520D9CC(&qword_1EC7F1E38, _s12InternalItemOMa);
  v0 = sub_1D560D188();

  qword_1EC87C368 = v0;
  return result;
}

uint64_t sub_1D520CE28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E30, &qword_1D5644470);
  swift_getKeyPath();
  sub_1D520D9CC(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
  v0 = sub_1D560D188();

  qword_1EDD76A58 = v0;
  return result;
}

void Playlist.Entry.favoriteStatus.getter()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_18(v3);
  v4 = sub_1D560EEA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v52 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D56128E8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v55 = v12;
  v56 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_70_14();
  v25 = sub_1D5613838();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v31 = type metadata accessor for Playlist.Entry.InternalItem();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = v52;
      v46 = v53;
      v47 = v0;
      v48 = v54;
      (*(v53 + 32))(v52, v47, v54);
      sub_1D560ED78();
      v50 = v55;
      v49 = v56;
      (*(v55 + 16))(v17, v21, v56);
      v51 = (*(v50 + 88))(v17, v49);
      if (v51 == *MEMORY[0x1E69765E8])
      {
        v36 = 0;
      }

      else if (v51 == *MEMORY[0x1E69765F8])
      {
        v36 = 1;
      }

      else
      {
        if (v51 != *MEMORY[0x1E69765F0])
        {
          goto LABEL_18;
        }

        v36 = 2;
      }

      (*(v50 + 8))(v21, v49);
      (*(v46 + 8))(v45, v48);
      goto LABEL_3;
    case 2u:
      v37 = OUTLINED_FUNCTION_58_22();
      v38(v37, v0, v25);
      sub_1D5613698();
      v40 = v55;
      v39 = v56;
      (*(v55 + 16))(v24, v1, v56);
      v41 = *(v40 + 88);
      v42 = OUTLINED_FUNCTION_71();
      v44 = v43(v42);
      if (v44 == *MEMORY[0x1E69765E8])
      {
        v36 = 0;
      }

      else if (v44 == *MEMORY[0x1E69765F8])
      {
        v36 = 1;
      }

      else
      {
        if (v44 != *MEMORY[0x1E69765F0])
        {
LABEL_18:
          OUTLINED_FUNCTION_6_3();
          v52 = 66;
          sub_1D5615E08();
          __break(1u);
          return;
        }

        v36 = 2;
      }

      (*(v40 + 8))(v1, v39);
      (*(v28 + 8))(v2, v25);
LABEL_3:
      *v57 = v36;
      OUTLINED_FUNCTION_46();
      return;
    default:
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v0, v35);
      v36 = 0;
      goto LABEL_3;
  }
}

uint64_t static Playlist.Entry.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Playlist.Entry.Reaction();
  if (result != a4)
  {
    v6 = sub_1D560DE58();
    sub_1D520D9CC(&qword_1EDD53B58, MEMORY[0x1E69750D8]);
    swift_allocError();
    v7 = *MEMORY[0x1E69750C8];
    OUTLINED_FUNCTION_24_0(v6);
    (*(v8 + 104))();
    return swift_willThrow();
  }

  return result;
}

void Playlist.Entry.itemToPin.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = sub_1D560EEA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v10 = sub_1D5613838();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v16 = type metadata accessor for Playlist.Entry.InternalItem();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *(v7 + 32);
      v27 = OUTLINED_FUNCTION_71_15();
      v26(v27);
      *(&v31 + 1) = v4;
      v32 = &protocol witness table for MusicVideo;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
      (v26)(boxed_opaque_existential_0, v0, v4);
      goto LABEL_5;
    case 2u:
      v24 = *(v13 + 32);
      v24(v1, v22, v10);
      *(&v31 + 1) = v10;
      v32 = &protocol witness table for Song;
      v25 = __swift_allocate_boxed_opaque_existential_0(&v30);
      v24(v25, v1, v10);
LABEL_5:
      sub_1D4E50004(v3, &qword_1EC7EC500, &unk_1D5621030);
      v29 = v31;
      *v3 = v30;
      *(v3 + 16) = v29;
      *(v3 + 32) = v32;
      break;
    default:
      sub_1D4E50004(v3, &qword_1EC7EC500, &unk_1D5621030);
      OUTLINED_FUNCTION_0_136();
      sub_1D520D918(v22, v23);
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0;
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t _s8MusicKit8PlaylistV5EntryV0aB8InternalE14itemToFavoriteAA0A4Item_pvg_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry.InternalItem();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.innerItem.getter(a1);
  OUTLINED_FUNCTION_0_136();
  return sub_1D520D918(v1, v7);
}

uint64_t sub_1D520D744(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1D5612E38();
}

uint64_t sub_1D520D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  sub_1D4F39AB0(a1, &v18 - v15, a5, a6);
  return a7(v16);
}

uint64_t sub_1D520D818(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D5612E08();
}

uint64_t sub_1D520D918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D520D970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D520D9CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_46_21(uint64_t result, uint64_t a2)
{
  *(v2 - 360) = result;
  *(v2 - 352) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_21()
{

  return MEMORY[0x1EEDD12F0](v1 - 128, v0);
}

uint64_t OUTLINED_FUNCTION_81_18@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1D520BAC4(a1, v4, a2);
}

_BYTE *storeEnumTagSinglePayload for MusicIncompleteResponseReason(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D520DBEC()
{
  result = qword_1EC7F1E40;
  if (!qword_1EC7F1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E40);
  }

  return result;
}

unint64_t sub_1D520DC54()
{
  result = qword_1EC7F1E48;
  if (!qword_1EC7F1E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1E50, qword_1D56448A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E48);
  }

  return result;
}

uint64_t MusicDataRequest.Presto_ExecutionMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D520DD50()
{
  swift_beginAccess();
  if (byte_1EC7F1E58)
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  swift_beginAccess();
  byte_1EDD5F568 = v0;
  return sub_1D560D318();
}

uint64_t static MusicDataRequest.presto_preferredExecutionMethod.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC7F1E58;
  return result;
}

uint64_t static MusicDataRequest.presto_preferredExecutionMethod.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EC7F1E58 = v1;
  return sub_1D520DD50();
}

uint64_t sub_1D520DEF0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return sub_1D520DD50();
  }

  return result;
}

unint64_t sub_1D520DF38()
{
  result = qword_1EC7F1E60;
  if (!qword_1EC7F1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1E60);
  }

  return result;
}

_BYTE *_s22Presto_ExecutionMethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D520E068@<X0>(uint64_t *a1@<X8>)
{
  v93 = a1;
  v2 = sub_1D5611C78();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E68, &unk_1D5644980);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v91 = v14;
  OUTLINED_FUNCTION_23();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v92 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v90 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v89 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_75();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v84 - v35;
  v37 = sub_1D5612268();
  if (v38)
  {
    *v9 = 0x6973736572707865;
    v39 = 0xEC00000044496E6FLL;
LABEL_8:
    v9[1] = v39;
    (*(v5 + 104))(v9, *MEMORY[0x1E69763E0], v2);
    sub_1D50F96EC();
    swift_allocError();
    (*(v5 + 16))(v44, v9, v2);
    swift_willThrow();
    return (*(v5 + 8))(v9, v2);
  }

  v88 = v37;
  v40 = sub_1D5612308();
  if (!v41)
  {
    *v9 = 0x6E6F6973726576;
    v39 = 0xE700000000000000;
    goto LABEL_8;
  }

  v86 = v41;
  v87 = v40;
  sub_1D56122D8();
  v42 = sub_1D56122C8();
  OUTLINED_FUNCTION_23_1(v23);
  if (v66)
  {
    sub_1D4E7661C(v23, &qword_1EC7F1E68, &unk_1D5644980);
    v43 = 0;
  }

  else
  {
    sub_1D5612288();
    OUTLINED_FUNCTION_24_0(v42);
    (*(v46 + 8))(v23, v42);
    v47 = sub_1D5614028();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v47);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v36, &qword_1EC7F1E70, &qword_1D5653790);
      v43 = 0;
    }

    else
    {
      v43 = sub_1D5614008();
      OUTLINED_FUNCTION_24_0(v47);
      (*(v49 + 8))(v36, v47);
    }
  }

  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v21);
  v50 = v91;
  if (v66)
  {
    v51 = &qword_1EC7F1E68;
    v52 = &unk_1D5644980;
    v53 = v21;
LABEL_17:
    sub_1D4E7661C(v53, v51, v52);
    v85 = 0;
    goto LABEL_19;
  }

  sub_1D5612298();
  OUTLINED_FUNCTION_24_0(v42);
  (*(v54 + 8))(v21, v42);
  v55 = sub_1D5614028();
  v56 = __swift_getEnumTagSinglePayload(v1, 1, v55);
  if (v56 == 1)
  {
    v51 = &qword_1EC7F1E70;
    v52 = &qword_1D5653790;
    v53 = v1;
    goto LABEL_17;
  }

  v85 = sub_1D5614008();
  OUTLINED_FUNCTION_24_0(v55);
  (*(v57 + 8))(v1, v55);
LABEL_19:
  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v18);
  v58 = v90;
  if (v66)
  {
    v59 = &qword_1EC7F1E68;
    v60 = &unk_1D5644980;
    v61 = v18;
  }

  else
  {
    v62 = v89;
    sub_1D56122A8();
    OUTLINED_FUNCTION_24_0(v42);
    v64 = v62;
    (*(v63 + 8))(v18, v42);
    v65 = sub_1D5614028();
    OUTLINED_FUNCTION_32_1(v62);
    if (!v66)
    {
      v67 = sub_1D5614008();
      OUTLINED_FUNCTION_24_0(v65);
      (*(v68 + 8))(v64, v65);
      goto LABEL_26;
    }

    v59 = &qword_1EC7F1E70;
    v60 = &qword_1D5653790;
    v61 = v62;
  }

  sub_1D4E7661C(v61, v59, v60);
  v67 = 0;
LABEL_26:
  v69 = v92;
  sub_1D56122D8();
  OUTLINED_FUNCTION_23_1(v50);
  if (v66)
  {
    v70 = &qword_1EC7F1E68;
    v71 = &unk_1D5644980;
    v72 = v50;
LABEL_32:
    sub_1D4E7661C(v72, v70, v71);
    v76 = 0;
    goto LABEL_33;
  }

  sub_1D56122B8();
  OUTLINED_FUNCTION_24_0(v42);
  (*(v73 + 8))(v50, v42);
  v74 = sub_1D5614028();
  OUTLINED_FUNCTION_32_1(v58);
  if (v75)
  {
    v70 = &qword_1EC7F1E70;
    v71 = &qword_1D5653790;
    v72 = v58;
    goto LABEL_32;
  }

  v76 = sub_1D5614008();
  OUTLINED_FUNCTION_24_0(v74);
  (*(v77 + 8))(v58, v74);
LABEL_33:
  sub_1D5612318();
  v78 = sub_1D5614028();
  OUTLINED_FUNCTION_32_1(v69);
  if (v66)
  {
    result = sub_1D4E7661C(v69, &qword_1EC7F1E70, &qword_1D5653790);
    v79 = 0;
  }

  else
  {
    v79 = sub_1D5614008();
    OUTLINED_FUNCTION_24_0(v78);
    result = (*(v80 + 8))(v69, v78);
  }

  v81 = v93;
  v82 = v87;
  *v93 = v88;
  v81[1] = v82;
  v83 = v85;
  v81[2] = v86;
  v81[3] = v43;
  v81[4] = v83;
  v81[5] = v67;
  v81[6] = v76;
  v81[7] = v79;
  return result;
}

uint64_t CoverArtworkRecipe.convertToCloudCoverArtworkRecipe()@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E68, &unk_1D5644980);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v66 - v7;
  v8 = sub_1D56122C8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v71 = v10;
  v72 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v70 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v69 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v68 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v67 = v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v66 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v28 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v31 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_75();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v66 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v66 - v37;
  v39 = *v1;
  v66[3] = v1[1];
  v40 = v1[2];
  v41 = v1[3];
  v66[1] = v39;
  v66[2] = v40;
  v42 = v1[4];
  v43 = v1[5];
  v44 = v1[6];
  v45 = v1[7];
  v66[0] = v44;
  if (v45)
  {
    sub_1D5615698();
    if (v41)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v46 = sub_1D5614028();
    OUTLINED_FUNCTION_146_0(v38, v47, v48, v46);
    if (v41)
    {
LABEL_3:
      sub_1D5615698();
      if (v42)
      {
        goto LABEL_4;
      }

LABEL_8:
      v52 = sub_1D5614028();
      OUTLINED_FUNCTION_146_0(v2, v53, v54, v52);
      if (v43)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v49 = sub_1D5614028();
  OUTLINED_FUNCTION_146_0(v36, v50, v51, v49);
  if (!v42)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1D5615698();
  if (v43)
  {
LABEL_5:
    sub_1D5615698();
    goto LABEL_10;
  }

LABEL_9:
  v55 = sub_1D5614028();
  OUTLINED_FUNCTION_146_0(v31, v56, v57, v55);
LABEL_10:
  if (v66[0])
  {
    sub_1D5615698();
  }

  else
  {
    v58 = sub_1D5614028();
    OUTLINED_FUNCTION_146_0(v28, v59, v60, v58);
  }

  sub_1D520EBBC(v36, v26);
  sub_1D520EBBC(v2, v67);
  v66[0] = v36;
  sub_1D520EBBC(v31, v68);
  sub_1D520EBBC(v28, v69);
  v61 = v70;
  sub_1D5612278();
  v63 = v71;
  v62 = v72;
  v64 = v73;
  (*(v71 + 16))(v73, v61, v72);
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v62);
  sub_1D520EBBC(v38, v26);

  sub_1D5612258();
  (*(v63 + 8))(v61, v62);
  OUTLINED_FUNCTION_25_2(v28);
  OUTLINED_FUNCTION_25_2(v31);
  OUTLINED_FUNCTION_25_2(v2);
  OUTLINED_FUNCTION_25_2(v66[0]);
  return OUTLINED_FUNCTION_25_2(v38);
}

uint64_t sub_1D520EBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D520EC60@<X0>(void (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_16_0();
  a1(0);
  sub_1D520F3F0(a2, a3);
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v14);
    if (!v15)
    {
      sub_1D516D7A0(a5);
      OUTLINED_FUNCTION_8_0();
      return (*(v16 + 8))(v5, a4);
    }

    result = sub_1D520EFB0(v5);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_1D520ED98@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_16_0();
  a1(0);
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v10);
    if (!v11)
    {
      sub_1D516D7A0(a3);
      OUTLINED_FUNCTION_8_0();
      return (*(v12 + 8))(v3, a2);
    }

    result = sub_1D520EFB0(v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t MusicCatalogInternalSearchSnippetVending<>.searchContextSnippet.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_16_0();
  result = sub_1D560CBC8();
  if (result)
  {
    sub_1D4EC9F70(result);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
    OUTLINED_FUNCTION_2_49(v8);
    if (!v9)
    {
      sub_1D516D7A0(a2);
      OUTLINED_FUNCTION_8_0();
      return (*(v10 + 8))(v2, a1);
    }

    result = sub_1D520EFB0(v2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D520EFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E78, &unk_1D5644990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicCatalogInternalSearchSnippetVending.searchContextSnippet.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1D520F3F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MusicMoviePropertyProvider()
{
  result = qword_1EDD5B340;
  if (!qword_1EDD5B340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D520F4AC()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 > 0x3F)
  {
    return v1;
  }

  sub_1D520FBF4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  if (v4 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
  if (v5 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52800, &qword_1EC7EF318, &qword_1D563DD60);
  if (v6 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52820, &qword_1EC7EA3D0, &unk_1D56223F0);
  if (v7 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = v8;
  if (v10 > 0x3F)
  {
    return v9;
  }

  sub_1D4E518A0(319, &qword_1EDD52730);
  if (v11 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
  if (v12 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52830, &qword_1EC7ED210, &unk_1D5637540);
  if (v13 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
  if (v15 > 0x3F)
  {
    return v14;
  }

  sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
  if (v16 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
  if (v17 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD5F550);
  if (v18 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v19 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD52EE8, MEMORY[0x1E69768B0], MEMORY[0x1E69E6720]);
  if (v20 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
  if (v21 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
  if (v22 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
  if (v23 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52850, &qword_1EC7ECBC0, &qword_1D562BF20);
  if (v24 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD56B78);
  if (v25 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
  if (v26 > 0x3F)
  {
    return v3;
  }

  sub_1D4E518A0(319, &qword_1EDD557F8);
  if (v27 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
  if (v28 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD53BF0, &qword_1EC7EA410, &unk_1D561C400);
  v9 = v29;
  if (v30 > 0x3F)
  {
    return v9;
  }

  sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
  if (v31 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
  if (v32 > 0x3F)
  {
    return v3;
  }

  sub_1D4E6D600(319, &qword_1EDD52790, &qword_1EC7ED150, &unk_1D565B6C0);
  if (v33 > 0x3F)
  {
    return v3;
  }

  sub_1D520FBF4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
  if (v34 > 0x3F)
  {
    return v3;
  }

  v3 = sub_1D560D838();
  if (v35 > 0x3F)
  {
    return v3;
  }

  v3 = sub_1D5610088();
  if (v36 > 0x3F)
  {
    return v3;
  }

  sub_1D4E5CF94();
  v1 = v37;
  if (v38 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D520FBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D520FCA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v407 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v405 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v405 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v59 = OUTLINED_FUNCTION_22(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  v64 = v405 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v66 = OUTLINED_FUNCTION_22(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v405 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  v79 = v405 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  v85 = v405 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD50, &unk_1D5622F40);
  v87 = swift_dynamicCastClass();
  if (!v87)
  {
    *&v410 = 0;
    *(&v410 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D56881E0);
    v409[0] = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_186;
  }

  v88 = v87;
  v89 = qword_1EDD54370;
  v408 = a1;

  if (v89 != -1)
  {
    OUTLINED_FUNCTION_108_9();
  }

  *&v410 = qword_1EDD76A50;
  v409[0] = v88;
  v90 = sub_1D4EC5794(&qword_1EDD53DF8, &qword_1EC7ECD50, &unk_1D5622F40);
  if (sub_1D5614D18())
  {
    v91 = v406;
    v92 = v406[1];
    if (!v92)
    {
      v94 = 0;
      v93 = 0;
      goto LABEL_21;
    }

LABEL_6:
    v93 = *v91;

    v94 = MEMORY[0x1E69E6158];
LABEL_21:
    OUTLINED_FUNCTION_45_23();
LABEL_22:

    OUTLINED_FUNCTION_30_6();
    *v114 = v93;
    v114[1] = v92;
    v114[2] = 0;
    v114[3] = v94;
    return;
  }

  v405[16] = v90;
  v95 = qword_1EDD541B8;

  if (v95 != -1)
  {
    OUTLINED_FUNCTION_107_9();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76978);
  v97 = *(v96 - 256);
  v98 = sub_1D5614D18();

  if (v98)
  {
    v99 = type metadata accessor for MusicMoviePropertyProvider();
    v100 = OUTLINED_FUNCTION_17_42(*(v99 + 20));
    sub_1D4F1C460(v100, v85, v101, v102);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v85);
    if (!v103)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7E9CA0;
    v105 = &unk_1D561A0C0;
    v106 = v85;
    goto LABEL_19;
  }

  v107 = qword_1EDD54330;

  if (v107 != -1)
  {
    OUTLINED_FUNCTION_106_9();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A30);
  v109 = *(v108 - 256);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v107)
  {
    v110 = type metadata accessor for MusicMoviePropertyProvider();
    v111 = OUTLINED_FUNCTION_17_42(*(v110 + 24));
    sub_1D4F1C460(v111, v79, v112, v113);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v79);
    if (v103)
    {

      v104 = &qword_1EC7EDB98;
      v105 = L"X\b\a";
      v106 = v79;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v115 = qword_1EDD54300;

  if (v115 != -1)
  {
    OUTLINED_FUNCTION_14_52();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A28);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v115)
  {
    v116 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v116 + 32));
    if (v73)
    {
      v117 = &qword_1EC7EA3D0;
      v118 = &unk_1D56223F0;
LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(v117, v118);
      OUTLINED_FUNCTION_82();

LABEL_76:

      OUTLINED_FUNCTION_30_6();
      *v153 = v73;
      v153[1] = 0;
      v153[2] = 0;
      v153[3] = v86;
      return;
    }

    goto LABEL_75;
  }

  v124 = qword_1EDD54198;

  if (v124 != -1)
  {
    OUTLINED_FUNCTION_104_13();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76968);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v124)
  {
    v125 = *(type metadata accessor for MusicMoviePropertyProvider() + 36);
    OUTLINED_FUNCTION_51_2();
    v128 = (v127 + v126);
    v92 = v128[1];
    if (v92)
    {
      v93 = *v128;
      v129 = v128[1];

      v94 = MEMORY[0x1E69E6158];
    }

    else
    {
      v94 = 0;
      v93 = 0;
    }

    goto LABEL_22;
  }

  v130 = qword_1EDD542F0;

  if (v130 != -1)
  {
    OUTLINED_FUNCTION_103_12();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A20);
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();
  if (v130)
  {
    v131 = type metadata accessor for MusicMoviePropertyProvider();
    v132 = OUTLINED_FUNCTION_17_42(*(v131 + 40));
    sub_1D4F1C460(v132, v73, v133, v134);
    sub_1D560C328();
    v135 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v135);
    if (v103)
    {

      v104 = &qword_1EC7EA3B8;
      v105 = &unk_1D561E370;
      v106 = v73;
      goto LABEL_19;
    }

    *(&v411 + 1) = v86;
    __swift_allocate_boxed_opaque_existential_0(&v410);
    v120 = *(*(v86 - 8) + 32);
LABEL_30:
    v120();
    goto LABEL_31;
  }

  v136 = qword_1EDD541A8;

  if (v136 != -1)
  {
    OUTLINED_FUNCTION_102_11();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76970);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v136)
  {
    v137 = 0;
    v138 = 0;
    v139 = *(type metadata accessor for MusicMoviePropertyProvider() + 44);
    OUTLINED_FUNCTION_51_2();
    v142 = (v141 + v140);
    if ((v142[1] & 1) == 0)
    {
      v138 = *v142;
      v137 = MEMORY[0x1E69E63B0];
    }

    OUTLINED_FUNCTION_30_6();
    *v143 = v138;
    v143[1] = 0;
    v143[2] = 0;
    v143[3] = v137;
    return;
  }

  v73 = qword_1EDD54250;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_22_44();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD769D0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v73)
  {
    v144 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v144 + 48));
    if (v73)
    {
      v117 = &qword_1EC7EC480;
      v118 = &unk_1D56222E0;
      goto LABEL_29;
    }

LABEL_75:
    v86 = 0;
    goto LABEL_76;
  }

  v73 = qword_1EDD542D8;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_21_47();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD542E0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v73)
  {
    v145 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v145 + 52));
    if (v73)
    {
      v117 = &qword_1EC7ED210;
      v118 = &unk_1D5637540;
      goto LABEL_29;
    }

    goto LABEL_75;
  }

  v146 = qword_1EDD542C8;

  if (v146 != -1)
  {
    OUTLINED_FUNCTION_101_7();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A18);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v146)
  {
    v147 = type metadata accessor for MusicMoviePropertyProvider();
    v148 = OUTLINED_FUNCTION_17_42(*(v147 + 56));
    sub_1D4F1C460(v148, v64, v149, v150);
    sub_1D5610978();
    OUTLINED_FUNCTION_1(v64);
    if (v103)
    {

      v104 = &qword_1EC7EAC98;
      v105 = &unk_1D561DA80;
      v106 = v64;
      goto LABEL_19;
    }

LABEL_17:
    OUTLINED_FUNCTION_134_4();
    OUTLINED_FUNCTION_15_1();
    v120 = *(v119 + 32);
    goto LABEL_30;
  }

  v73 = sub_1D4F84A28();
  *&v410 = v73;
  OUTLINED_FUNCTION_3_109();
  sub_1D5614D18();
  OUTLINED_FUNCTION_139_7();

  if (v130)
  {
    v151 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v151 + 60));
    if (v73)
    {
      v117 = &qword_1EC7EC9E8;
      v118 = &qword_1D562B870;
      goto LABEL_29;
    }

    goto LABEL_75;
  }

  v73 = qword_1EDD54360;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_100_9();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD76A48);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v73)
  {
    v152 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v152 + 64));
    if (v73)
    {
      v117 = &qword_1EC7EABD8;
      v118 = &unk_1D561D780;
      goto LABEL_29;
    }

    goto LABEL_75;
  }

  v154 = qword_1EDD54248;

  if (v154 != -1)
  {
    OUTLINED_FUNCTION_99_12();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD769C8);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v154)
  {
    v155 = *(type metadata accessor for MusicMoviePropertyProvider() + 68);
    OUTLINED_FUNCTION_51_2();
    v158 = *(v157 + v156);
LABEL_96:

    v176 = MEMORY[0x1E69E6370];
    if (v158 == 2)
    {
      v176 = 0;
    }

    v177 = v407;
    *v407 = v158 & 1;
    v177[1] = 0;
    v177[2] = 0;
    v177[3] = v176;
    return;
  }

  v159 = off_1EDD54320;

  if (v159 != -1)
  {
    OUTLINED_FUNCTION_20_55();
  }

  OUTLINED_FUNCTION_1_109(qword_1EDD54328);
  sub_1D5614D18();
  OUTLINED_FUNCTION_137_7();
  if (v159)
  {
    v160 = type metadata accessor for MusicMoviePropertyProvider();
    v161 = OUTLINED_FUNCTION_17_42(*(v160 + 72));
    sub_1D4F1C460(v161, v57, v162, v163);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1(v57);
    if (!v103)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &unk_1EC7E9CA8;
    v105 = &unk_1D561D1D0;
    v106 = v57;
    goto LABEL_19;
  }

  v164 = qword_1EDD542C0;

  if (v164 != -1)
  {
    OUTLINED_FUNCTION_98_12();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A10);
  v166 = *(v165 - 256);
  v167 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v167)
  {
    v168 = *(type metadata accessor for MusicMoviePropertyProvider() + 76);
LABEL_95:
    OUTLINED_FUNCTION_51_2();
    v158 = *(v175 + v174);
    OUTLINED_FUNCTION_45_23();
    goto LABEL_96;
  }

  v169 = qword_1EDD54218;
  OUTLINED_FUNCTION_45_23();

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_97_12();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769B8);
  v171 = *(v170 - 256);
  v172 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v172)
  {
    v173 = *(type metadata accessor for MusicMoviePropertyProvider() + 80);
    goto LABEL_95;
  }

  v178 = qword_1EDD54210;
  OUTLINED_FUNCTION_45_23();

  if (v178 != -1)
  {
    OUTLINED_FUNCTION_96_13();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769B0);
  v180 = *(v179 - 256);
  v181 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v181)
  {
    v182 = type metadata accessor for MusicMoviePropertyProvider();
    v183 = OUTLINED_FUNCTION_17_42(*(v182 + 84));
    sub_1D4F1C460(v183, v50, v184, v185);
    sub_1D5613178();
    OUTLINED_FUNCTION_1(v50);
    if (!v103)
    {
LABEL_103:
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v196 + 32);
LABEL_23:
      v197();
      OUTLINED_FUNCTION_45_23();
LABEL_31:

      goto LABEL_32;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EC538;
    v105 = &unk_1D5621080;
    v106 = v50;
LABEL_19:
    sub_1D4E50004(v106, v104, v105);
    v410 = 0u;
    v411 = 0u;
LABEL_32:
    OUTLINED_FUNCTION_30_6();
    *v121 = v122;
    v121[1] = v123;
    return;
  }

  v186 = qword_1EDD54208;
  OUTLINED_FUNCTION_45_23();

  if (v186 != -1)
  {
    OUTLINED_FUNCTION_95_13();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769A8);
  v188 = *(v187 - 256);
  v189 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v189)
  {
    v190 = type metadata accessor for MusicMoviePropertyProvider();
    v191 = OUTLINED_FUNCTION_17_42(*(v190 + 88));
    OUTLINED_FUNCTION_132_5(v191, v192, v193, &v422);
    v194 = sub_1D5613198();
    OUTLINED_FUNCTION_1_9(v194);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v207 + 32);
      v208 = &v422;
LABEL_141:
      v246 = *(v208 - 32);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EC530;
    v105 = &unk_1D5632150;
    v195 = &v422;
    goto LABEL_135;
  }

  v198 = qword_1EDD54200;
  OUTLINED_FUNCTION_45_23();

  if (v198 != -1)
  {
    OUTLINED_FUNCTION_94_14();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769A0);
  v200 = *(v199 - 256);
  v201 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v201)
  {
    v202 = type metadata accessor for MusicMoviePropertyProvider();
    v203 = OUTLINED_FUNCTION_17_42(*(v202 + 92));
    OUTLINED_FUNCTION_132_5(v203, v204, v205, &v421);
    v206 = sub_1D56134E8();
    OUTLINED_FUNCTION_1_9(v206);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v218 + 32);
      v208 = &v421;
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EC528;
    v105 = &unk_1D5621070;
    v195 = &v421;
LABEL_135:
    v106 = *(v195 - 32);
    goto LABEL_19;
  }

  v209 = qword_1EDD542B8;
  OUTLINED_FUNCTION_45_23();

  if (v209 != -1)
  {
    OUTLINED_FUNCTION_93_13();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A08);
  v211 = *(v210 - 256);
  v212 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v212)
  {
    v213 = type metadata accessor for MusicMoviePropertyProvider();
    v214 = OUTLINED_FUNCTION_17_42(*(v213 + 96));
    OUTLINED_FUNCTION_132_5(v214, v215, v216, &v420);
    v217 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v217);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v228 + 32);
      v208 = &v420;
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EA3B8;
    v105 = &unk_1D561E370;
    v195 = &v420;
    goto LABEL_135;
  }

  v219 = qword_1EDD54280;
  OUTLINED_FUNCTION_45_23();

  if (v219 != -1)
  {
    OUTLINED_FUNCTION_92_12();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769F0);
  v221 = *(v220 - 256);
  v222 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v222)
  {
    v223 = type metadata accessor for MusicMoviePropertyProvider();
    v224 = OUTLINED_FUNCTION_17_42(*(v223 + 100));
    OUTLINED_FUNCTION_132_5(v224, v225, v226, &v419);
    v227 = sub_1D560C328();
    OUTLINED_FUNCTION_1_9(v227);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v238 + 32);
      v208 = &v419;
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EA3B8;
    v105 = &unk_1D561E370;
    v195 = &v419;
    goto LABEL_135;
  }

  v229 = qword_1EDD542A8;
  OUTLINED_FUNCTION_45_23();

  if (v229 != -1)
  {
    OUTLINED_FUNCTION_90_15();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76A00);
  v231 = *(v230 - 256);
  v232 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v232)
  {
    v233 = type metadata accessor for MusicMoviePropertyProvider();
    v234 = OUTLINED_FUNCTION_17_42(*(v233 + 104));
    OUTLINED_FUNCTION_132_5(v234, v235, v236, v418);
    v237 = sub_1D5614A78();
    OUTLINED_FUNCTION_1_9(v237);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v245 + 32);
      v208 = v418;
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EF5D8;
    v105 = &unk_1D5632160;
    v195 = v418;
    goto LABEL_135;
  }

  v239 = qword_1EDD541E8;
  OUTLINED_FUNCTION_45_23();

  if (v239 != -1)
  {
    OUTLINED_FUNCTION_89_12();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76990);
  v241 = *(v240 - 256);
  v73 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v73)
  {
    v242 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v242 + 28));
    if (v73)
    {
      v243 = &qword_1EC7EF318;
      v244 = &qword_1D563DD60;
LABEL_147:
      __swift_instantiateConcreteTypeFromMangledNameV2(v243, v244);
      OUTLINED_FUNCTION_82();

LABEL_244:
      OUTLINED_FUNCTION_45_23();
      goto LABEL_76;
    }

    goto LABEL_243;
  }

  v247 = qword_1EDD541C0;
  OUTLINED_FUNCTION_45_23();

  if (v247 != -1)
  {
    OUTLINED_FUNCTION_87_13();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD76980);
  v249 = *(v248 - 256);
  v73 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v73)
  {
    v250 = type metadata accessor for MusicMoviePropertyProvider();
    OUTLINED_FUNCTION_43_6(*(v250 + 108));
    if (v73)
    {
      v243 = &qword_1EC7ECBC0;
      v244 = &qword_1D562BF20;
      goto LABEL_147;
    }

LABEL_243:
    v86 = 0;
    goto LABEL_244;
  }

  v251 = qword_1EDD54238;
  OUTLINED_FUNCTION_45_23();

  if (v251 != -1)
  {
    OUTLINED_FUNCTION_19_53();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD54240);
  v253 = *(v252 - 256);
  v254 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if (v254)
  {
    v255 = type metadata accessor for MusicMoviePropertyProvider();
    v256 = OUTLINED_FUNCTION_17_42(*(v255 + 112));
    OUTLINED_FUNCTION_132_5(v256, v257, v258, &v412 + 8);
    v259 = sub_1D5610978();
    OUTLINED_FUNCTION_1_9(v259);
    if (!v103)
    {
      OUTLINED_FUNCTION_134_4();
      OUTLINED_FUNCTION_15_1();
      v197 = *(v271 + 32);
      v208 = &v412 + 8;
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_45_23();

    v104 = &qword_1EC7EAC98;
    v105 = &unk_1D561DA80;
    v195 = &v412 + 8;
    goto LABEL_135;
  }

  v260 = qword_1EDD54278;
  OUTLINED_FUNCTION_45_23();

  if (v260 != -1)
  {
    OUTLINED_FUNCTION_18_58();
  }

  OUTLINED_FUNCTION_0_137(qword_1EDD769E8);
  v262 = *(v261 - 256);
  v263 = sub_1D5614D18();
  OUTLINED_FUNCTION_45_23();

  if ((v263 & 1) == 0)
  {
    v272 = qword_1EDD542A0;
    OUTLINED_FUNCTION_45_23();

    if (v272 != -1)
    {
      OUTLINED_FUNCTION_85_12();
    }

    OUTLINED_FUNCTION_0_137(qword_1EDD769F8);
    v274 = *(v273 - 256);
    v275 = sub_1D5614D18();
    OUTLINED_FUNCTION_45_23();

    if (v275)
    {
      v276 = type metadata accessor for MusicMoviePropertyProvider();
      v277 = OUTLINED_FUNCTION_17_42(*(v276 + 120));
      OUTLINED_FUNCTION_132_5(v277, v278, v279, &v413 + 8);
      v280 = sub_1D56109F8();
      OUTLINED_FUNCTION_1_9(v280);
      if (!v103)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v197 = *(v295 + 32);
        v208 = &v413 + 8;
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_45_23();

      v104 = &qword_1EC7EB5C0;
      v105 = &unk_1D56223C0;
      v195 = &v413 + 8;
      goto LABEL_135;
    }

    v286 = qword_1EDD54338;
    OUTLINED_FUNCTION_45_23();

    if (v286 != -1)
    {
      OUTLINED_FUNCTION_84_13();
    }

    OUTLINED_FUNCTION_0_137(qword_1EDD76A38);
    v288 = *(v287 - 256);
    v289 = sub_1D5614D18();
    OUTLINED_FUNCTION_45_23();

    if (v289)
    {
      v290 = type metadata accessor for MusicMoviePropertyProvider();
      v291 = OUTLINED_FUNCTION_17_42(*(v290 + 124));
      OUTLINED_FUNCTION_132_5(v291, v292, v293, &v413);
      v294 = sub_1D560C328();
      OUTLINED_FUNCTION_1_9(v294);
      if (!v103)
      {
        OUTLINED_FUNCTION_134_4();
        OUTLINED_FUNCTION_15_1();
        v197 = *(v301 + 32);
        v208 = &v413;
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_45_23();

      v104 = &qword_1EC7EA3B8;
      v105 = &unk_1D561E370;
      v195 = &v413;
      goto LABEL_135;
    }

    v296 = qword_1EDD54270;
    OUTLINED_FUNCTION_45_23();

    if (v296 != -1)
    {
      OUTLINED_FUNCTION_83_13();
    }

    OUTLINED_FUNCTION_0_137(qword_1EDD769E0);
    v298 = *(v297 - 256);
    v299 = sub_1D5614D18();
    OUTLINED_FUNCTION_45_23();

    if (v299)
    {
      v300 = *(type metadata accessor for MusicMoviePropertyProvider() + 128);
    }

    else
    {
      v302 = qword_1EDD54228;
      OUTLINED_FUNCTION_45_23();

      if (v302 != -1)
      {
        OUTLINED_FUNCTION_81_19();
      }

      OUTLINED_FUNCTION_0_137(qword_1EDD769C0);
      v304 = *(v303 - 256);
      v305 = sub_1D5614D18();
      OUTLINED_FUNCTION_45_23();

      if (v305)
      {
        v306 = *(type metadata accessor for MusicMoviePropertyProvider() + 132);
      }

      else
      {
        v307 = qword_1EDD54350;
        OUTLINED_FUNCTION_45_23();

        if (v307 != -1)
        {
          OUTLINED_FUNCTION_79_12();
        }

        OUTLINED_FUNCTION_0_137(qword_1EDD76A40);
        v309 = *(v308 - 256);
        v310 = sub_1D5614D18();
        OUTLINED_FUNCTION_45_23();

        if ((v310 & 1) == 0)
        {
          while (1)
          {
            v312 = qword_1EDD54268;
            OUTLINED_FUNCTION_45_23();

            if (v312 != -1)
            {
              OUTLINED_FUNCTION_78_16();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD769D8);
            v314 = *(v313 - 256);
            v315 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v315)
            {
              v316 = *(type metadata accessor for MusicMoviePropertyProvider() + 140);
              OUTLINED_FUNCTION_51_2();
              v319 = (v318 + v317);
              v321 = *(v318 + v317);
              v320 = *(v318 + v317 + 8);
              v322 = *(v318 + v317 + 32);
              v414 = *(v318 + v317 + 16);
              v415 = v322;
              v416 = *(v318 + v317 + 48);
              if (!v320)
              {
                goto LABEL_158;
              }

              v269 = swift_allocObject();
              *&v410 = v321;
              *(&v410 + 1) = v320;
              v323 = v319[2];
              v411 = v319[1];
              v412 = v323;
              v413 = v319[3];
              sub_1D5027EE0(&v410, v409);
              OUTLINED_FUNCTION_45_23();

              *(v269 + 16) = v321;
              *(v269 + 24) = v320;
              v324 = v415;
              *(v269 + 32) = v414;
              *(v269 + 48) = v324;
              *(v269 + 64) = v416;
              v270 = &type metadata for VideoSupportedLocales;
              goto LABEL_166;
            }

            v325 = qword_1EDD541E0;
            OUTLINED_FUNCTION_45_23();

            if (v325 != -1)
            {
              OUTLINED_FUNCTION_77_11();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD76988);
            v327 = *(v326 - 256);
            v328 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v328)
            {
              v329 = *(type metadata accessor for MusicMoviePropertyProvider() + 144);
              goto LABEL_196;
            }

            v332 = qword_1EDD541F8;
            OUTLINED_FUNCTION_45_23();

            if (v332 != -1)
            {
              OUTLINED_FUNCTION_31_30();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD76998);
            v334 = *(v333 - 256);
            v335 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v335)
            {
              v336 = type metadata accessor for MusicMoviePropertyProvider();
              v337 = OUTLINED_FUNCTION_17_42(*(v336 + 148));
              OUTLINED_FUNCTION_132_5(v337, v338, v339, &v414);
              v340 = sub_1D560C0A8();
              OUTLINED_FUNCTION_1_9(v340);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v350 + 32);
                v208 = &v414;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &unk_1EC7E9CA8;
              v105 = &unk_1D561D1D0;
              v195 = &v414;
              goto LABEL_135;
            }

            v341 = qword_1EDD541D0;
            OUTLINED_FUNCTION_45_23();

            if (v341 != -1)
            {
              OUTLINED_FUNCTION_34_31();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD541D8);
            v343 = *(v342 - 256);
            v344 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v344)
            {
              v345 = type metadata accessor for MusicMoviePropertyProvider();
              v346 = OUTLINED_FUNCTION_17_42(*(v345 + 152));
              OUTLINED_FUNCTION_132_5(v346, v347, v348, &v414 + 8);
              v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
              OUTLINED_FUNCTION_1_9(v349);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v360 + 32);
                v208 = &v414 + 8;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &qword_1EC7EA788;
              v105 = &unk_1D56223A0;
              v195 = &v414 + 8;
              goto LABEL_135;
            }

            v351 = qword_1EDD54288;
            OUTLINED_FUNCTION_45_23();

            if (v351 != -1)
            {
              OUTLINED_FUNCTION_36_32();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD54290);
            v353 = *(v352 - 256);
            v354 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v354)
            {
              v355 = type metadata accessor for MusicMoviePropertyProvider();
              v356 = OUTLINED_FUNCTION_17_42(*(v355 + 156));
              OUTLINED_FUNCTION_132_5(v356, v357, v358, &v415);
              v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
              OUTLINED_FUNCTION_1_9(v359);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v370 + 32);
                v208 = &v415;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &qword_1EC7EF308;
              v105 = &qword_1D5631048;
              v195 = &v415;
              goto LABEL_135;
            }

            v361 = qword_1EDD54340;
            OUTLINED_FUNCTION_45_23();

            if (v361 != -1)
            {
              OUTLINED_FUNCTION_35_36();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD54348);
            v363 = *(v362 - 256);
            v364 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v364)
            {
              v365 = type metadata accessor for MusicMoviePropertyProvider();
              v366 = OUTLINED_FUNCTION_17_42(*(v365 + 160));
              OUTLINED_FUNCTION_132_5(v366, v367, v368, &v415 + 8);
              v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
              OUTLINED_FUNCTION_1_9(v369);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v380 + 32);
                v208 = &v415 + 8;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &qword_1EC7EF308;
              v105 = &qword_1D5631048;
              v195 = &v415 + 8;
              goto LABEL_135;
            }

            v371 = qword_1EDD54308;
            OUTLINED_FUNCTION_45_23();

            if (v371 != -1)
            {
              OUTLINED_FUNCTION_34_39();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD54310);
            v373 = *(v372 - 256);
            v374 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v374)
            {
              v375 = type metadata accessor for MusicMoviePropertyProvider();
              v376 = OUTLINED_FUNCTION_17_42(*(v375 + 164));
              OUTLINED_FUNCTION_132_5(v376, v377, v378, &v416);
              v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
              OUTLINED_FUNCTION_1_9(v379);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v390 + 32);
                v208 = &v416;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &off_1EC7EB5B0;
              v105 = &unk_1D5632170;
              v195 = &v416;
              goto LABEL_135;
            }

            v381 = qword_1EDD54180;
            OUTLINED_FUNCTION_45_23();

            if (v381 != -1)
            {
              OUTLINED_FUNCTION_33_38();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD54188);
            v383 = *(v382 - 256);
            v384 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v384)
            {
              v385 = type metadata accessor for MusicMoviePropertyProvider();
              v386 = OUTLINED_FUNCTION_17_42(*(v385 + 168));
              OUTLINED_FUNCTION_132_5(v386, v387, v388, &v416 + 8);
              v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
              OUTLINED_FUNCTION_1_9(v389);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v400 + 32);
                v208 = &v416 + 8;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &qword_1EC7EB620;
              v105 = &unk_1D561E5B0;
              v195 = &v416 + 8;
              goto LABEL_135;
            }

            v391 = qword_1EDD54258;
            OUTLINED_FUNCTION_45_23();

            if (v391 != -1)
            {
              OUTLINED_FUNCTION_32_38();
            }

            OUTLINED_FUNCTION_0_137(qword_1EDD54260);
            v393 = *(v392 - 256);
            v394 = sub_1D5614D18();
            OUTLINED_FUNCTION_45_23();

            if (v394)
            {
              v395 = type metadata accessor for MusicMoviePropertyProvider();
              v396 = OUTLINED_FUNCTION_17_42(*(v395 + 172));
              OUTLINED_FUNCTION_132_5(v396, v397, v398, v417);
              v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
              OUTLINED_FUNCTION_1_9(v399);
              if (!v103)
              {
                OUTLINED_FUNCTION_134_4();
                OUTLINED_FUNCTION_15_1();
                v197 = *(v404 + 32);
                v208 = v417;
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_45_23();

              v104 = &qword_1EC7EF308;
              v105 = &qword_1D5631048;
              v195 = v417;
              goto LABEL_135;
            }

            OUTLINED_FUNCTION_11_75();
            sub_1D5218BD0(v401, v402);

            v73 = sub_1D560D198();
            *&v410 = v73;
            OUTLINED_FUNCTION_3_109();
            v86 = sub_1D5614D18();

            if (v86)
            {
              break;
            }

            *&v410 = 0;
            *(&v410 + 1) = 0xE000000000000000;
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
            v409[0] = v408;
            sub_1D560CDE8();
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
LABEL_186:
            OUTLINED_FUNCTION_117_9();
            __break(1u);
          }

          v403 = type metadata accessor for MusicMoviePropertyProvider();
          OUTLINED_FUNCTION_43_6(*(v403 + 176));
          if (!v73)
          {
            goto LABEL_243;
          }

          v243 = &qword_1EC7ED150;
          v244 = &unk_1D565B6C0;
          goto LABEL_147;
        }

        v311 = *(type metadata accessor for MusicMoviePropertyProvider() + 136);
      }
    }

LABEL_196:
    OUTLINED_FUNCTION_51_2();
    v91 = (v331 + v330);
    v92 = v91[1];
    if (!v92)
    {
      v93 = 0;
      v94 = 0;
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  v264 = *(type metadata accessor for MusicMoviePropertyProvider() + 116);
  OUTLINED_FUNCTION_51_2();
  v267 = (v266 + v265);
  v268 = v267[1];
  if (v268 == 2)
  {
LABEL_158:
    OUTLINED_FUNCTION_45_23();

    v269 = 0;
    v270 = 0;
  }

  else
  {
    v282 = v267[3];
    v281 = v267[4];
    v283 = v267[2];
    v284 = *v267;
    v269 = swift_allocObject();
    OUTLINED_FUNCTION_45_23();

    *(v269 + 16) = v284;
    *(v269 + 24) = v268 & 1;
    *(v269 + 25) = BYTE1(v268) & 1;
    *(v269 + 32) = v283;
    *(v269 + 40) = v282;
    *(v269 + 48) = v281;
    v270 = &type metadata for PlaybackPosition;
  }

LABEL_166:
  v285 = v407;
  *v407 = v269;
  v285[1] = 0;
  v285[2] = 0;
  v285[3] = v270;
}