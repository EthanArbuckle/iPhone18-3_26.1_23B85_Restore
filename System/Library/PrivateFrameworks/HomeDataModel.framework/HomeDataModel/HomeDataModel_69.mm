unint64_t sub_1D1CC3ECC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1D1D6624C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1D1CC3F8C()
{
  result = qword_1EC64CEC8;
  if (!qword_1EC64CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CEC8);
  }

  return result;
}

unint64_t sub_1D1CC402C()
{
  result = qword_1EC64CED8;
  if (!qword_1EC64CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CED8);
  }

  return result;
}

unint64_t sub_1D1CC4084()
{
  result = qword_1EC64CEE0;
  if (!qword_1EC64CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CEE0);
  }

  return result;
}

unint64_t sub_1D1CC40DC()
{
  result = qword_1EC64CEE8;
  if (!qword_1EC64CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CEE8);
  }

  return result;
}

unint64_t sub_1D1CC4134()
{
  result = qword_1EC64CEF0;
  if (!qword_1EC64CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CEF0);
  }

  return result;
}

void sub_1D1CC41F8()
{
  sub_1D1CC4554();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StaticHome();
    if (v1 <= 0x3F)
    {
      sub_1D1CC4604(319, &qword_1EE07B740, type metadata accessor for StaticHome);
      if (v2 <= 0x3F)
      {
        sub_1D1CC4658(319, &qword_1EE07B7E8, type metadata accessor for StaticZone);
        if (v3 <= 0x3F)
        {
          sub_1D1CC4658(319, &qword_1EE07B7C8, type metadata accessor for StaticAccessory);
          if (v4 <= 0x3F)
          {
            sub_1D1CC4658(319, &qword_1EE07B7C0, type metadata accessor for StaticActionSet);
            if (v5 <= 0x3F)
            {
              sub_1D1CC4658(319, &qword_1EE07B798, type metadata accessor for StaticCameraProfile);
              if (v6 <= 0x3F)
              {
                sub_1D1CC4658(319, &qword_1EE07B7B0, type metadata accessor for StaticMediaSystem);
                if (v7 <= 0x3F)
                {
                  sub_1D1CC4658(319, &qword_1EE07B7A8, type metadata accessor for StaticMediaProfile);
                  if (v8 <= 0x3F)
                  {
                    sub_1D1CC4658(319, &qword_1EE07B7F8, type metadata accessor for StaticRoom);
                    if (v9 <= 0x3F)
                    {
                      sub_1D1CC4658(319, &qword_1EE07B7A0, type metadata accessor for StaticServiceGroup);
                      if (v10 <= 0x3F)
                      {
                        sub_1D1CC4658(319, &qword_1EE07B7D8, type metadata accessor for StaticService);
                        if (v11 <= 0x3F)
                        {
                          sub_1D1CC4658(319, &qword_1EE07B7F0, type metadata accessor for StaticUser);
                          if (v12 <= 0x3F)
                          {
                            sub_1D1CC4604(319, &qword_1EE07B710, type metadata accessor for StaticUserActionPrediction);
                            if (v13 <= 0x3F)
                            {
                              sub_1D1CC4658(319, &qword_1EE07B7B8, type metadata accessor for StaticHH2Update);
                              if (v14 <= 0x3F)
                              {
                                sub_1D1CC4658(319, &qword_1EE07B7D0, type metadata accessor for StaticResident);
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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
            }
          }
        }
      }
    }
  }
}

void sub_1D1CC4554()
{
  if (!qword_1EE07B6D8)
  {
    sub_1D1CC45B0();
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6D8);
    }
  }
}

unint64_t sub_1D1CC45B0()
{
  result = qword_1EE07CD88;
  if (!qword_1EE07CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CD88);
  }

  return result;
}

void sub_1D1CC4604(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E67D1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1CC4658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    a3(255);
    sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v5 = sub_1D1E6769C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StateSnapshot.ActionSetUpdateType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFE)
  {
    goto LABEL_17;
  }

  if (a2 + 61442 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61442 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61442;
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

      return (*a1 | (v4 << 16)) - 61442;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61442;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 2) & 0xF00) ^ 0xFFF;
  if (v6 >= 0xFFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for StateSnapshot.ActionSetUpdateType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFFD)
  {
    v5 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
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
    v6 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D1CC4884(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1D1CC48AC(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x303 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 2) << 6) & 0x300 | (a2 - 2) & 3 | 0x8000;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel13StateSnapshotV24CharacteristicUpdateTypeO05ValueH0O(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D1CC4928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1CC4970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1D1CC49B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1D1CC49DC()
{
  sub_1D1CC4BD8(319, &qword_1EE07B618, &qword_1EE07B620, 0x1E696CB98, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D1CC4C40();
    if (v1 <= 0x3F)
    {
      sub_1D1CC4BD8(319, &qword_1EE07B700, &qword_1EE07B650, 0x1E696CCA8, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D1CC4CF0(319);
        if (v3 <= 0x3F)
        {
          sub_1D1CC4E40();
          if (v4 <= 0x3F)
          {
            sub_1D1CC4EAC(319, &qword_1EE07D178, &qword_1EC6438F0, &qword_1D1E99360);
            if (v5 <= 0x3F)
            {
              sub_1D1CC4EAC(319, &qword_1EE07D180, &qword_1EC64A9C0, &qword_1D1E974E0);
              if (v6 <= 0x3F)
              {
                sub_1D186142C();
                if (v7 <= 0x3F)
                {
                  sub_1D1CC4F34();
                  if (v8 <= 0x3F)
                  {
                    sub_1D1CC4FB8(319, &qword_1EE079DF0);
                    if (v9 <= 0x3F)
                    {
                      sub_1D1CC4FB8(319, &qword_1EE079DE8);
                      if (v10 <= 0x3F)
                      {
                        sub_1D1CC5038();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
    }
  }
}

void sub_1D1CC4BD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1741B10(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1CC4C40()
{
  if (!qword_1EE07B770)
  {
    sub_1D1741B10(255, &qword_1EE07B680, 0x1E696CAF0);
    sub_1D174A5B8(&qword_1EE07B678, &qword_1EE07B680, 0x1E696CAF0);
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B770);
    }
  }
}

void sub_1D1CC4CF0(uint64_t a1)
{
  if (!qword_1EE07D188)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D1E66A7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CF00, &qword_1D1EA2DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CF08, &qword_1D1EA2DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6500D0, &unk_1D1EA2E00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE07D188);
    }
  }
}

void sub_1D1CC4E40()
{
  if (!qword_1EE07D190)
  {
    sub_1D1E66A7C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE07D190);
    }
  }
}

void sub_1D1CC4EAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D1CC4F34()
{
  if (!qword_1EE079DE0)
  {
    sub_1D1741B10(255, &qword_1EE07B690, 0x1E696CAC8);
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE079DE0);
    }
  }
}

void sub_1D1CC4FB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D1741B10(255, &qword_1EE07B690, 0x1E696CAC8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D1CC5038()
{
  if (!qword_1EE07A018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1E66A7C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE07A018);
    }
  }
}

uint64_t getEnumTagSinglePayload for StateSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1CC520C()
{
  result = qword_1EC64CF10;
  if (!qword_1EC64CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF10);
  }

  return result;
}

unint64_t sub_1D1CC5264()
{
  result = qword_1EC64CF18;
  if (!qword_1EC64CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF18);
  }

  return result;
}

unint64_t sub_1D1CC52BC()
{
  result = qword_1EC64CF20;
  if (!qword_1EC64CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF20);
  }

  return result;
}

uint64_t sub_1D1CC5310(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1D1CC536C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v250 = a4;
  v251 = a1;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v263 = &v245 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v245 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v245 - v18;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v20 = *(*(v283 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v283);
  v288 = &v245 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v265 = &v245 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v264 = &v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v245 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v278 = &v245 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v277 = &v245 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v253 = &v245 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v245 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v255 = &v245 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v254 = &v245 - v42;
  v291 = type metadata accessor for StaticResident();
  v268 = *(v291 - 8);
  v43 = *(v268 + 64);
  v44 = MEMORY[0x1EEE9AC00](v291);
  v257 = &v245 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v287 = &v245 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v284 = &v245 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v285 = &v245 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v275 = &v245 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v274 = &v245 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v247 = &v245 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v246 = &v245 - v58;
  v270 = a3;
  v59 = a3[1];
  v290 = a5;
  swift_bridgeObjectRetain_n();
  if (v59 < 1)
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v8 = *v251;
    if (!*v251)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v296 = v62;
      v233 = *(v62 + 2);
      if (v233 >= 2)
      {
        do
        {
          v234 = *v270;
          if (!*v270)
          {
            goto LABEL_185;
          }

          v235 = *&v62[16 * v233];
          v236 = *&v62[16 * v233 + 24];
          v237 = *(v268 + 72);
          v238 = v234 + v237 * v235;
          v239 = v234 + v237 * *&v62[16 * v233 + 16];
          v240 = v234 + v237 * v236;
          v241 = v290;

          v242 = v238;
          v243 = v276;
          sub_1D1CB4C4C(v242, v239, v240, v8, v241);
          v276 = v243;
          if (v243)
          {
            break;
          }

          if (v236 < v235)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_1D1E0BE44(v62);
          }

          if (v233 - 2 >= *(v62 + 2))
          {
            goto LABEL_175;
          }

          v244 = &v62[16 * v233];
          *v244 = v235;
          *(v244 + 1) = v236;
          v296 = v62;
          sub_1D1E0BDB8(v233 - 1);
          v62 = v296;
          v233 = *(v296 + 2);
        }

        while (v233 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v62 = sub_1D1E0BE44(v62);
    goto LABEL_150;
  }

  v252 = v39;
  v60 = 0;
  v280 = (v8 + 48);
  v281 = (v8 + 56);
  v266 = (v8 + 32);
  v273 = (v8 + 8);
  v61 = v12;
  v62 = MEMORY[0x1E69E7CC0];
  v282 = v7;
  v259 = v61;
  v248 = v17;
  v267 = v19;
  v279 = v30;
  v63 = v284;
  v64 = v285;
  v65 = v19;
  v66 = v30;
LABEL_4:
  v67 = v60;
  v269 = v62;
  if (v60 + 1 >= v59)
  {
    v117 = v60 + 1;
    v118 = v250;
    v119 = v276;
    goto LABEL_50;
  }

  v272 = v59;
  v68 = *v270;
  v69 = *(v268 + 72);
  v70 = v60;
  v71 = *v270 + v69 * (v60 + 1);
  v72 = v246;
  sub_1D1CB2110(v71, v246, type metadata accessor for StaticResident);
  v289 = v68;
  v73 = v68 + v69 * v70;
  v74 = v247;
  sub_1D1CB2110(v73, v247, type metadata accessor for StaticResident);
  v75 = v276;
  LODWORD(v286) = sub_1D1D0EC40(v72, v74, v290);
  v276 = v75;
  if (v75)
  {
    sub_1D1CB2248(v74, type metadata accessor for StaticResident);
    sub_1D1CB2248(v72, type metadata accessor for StaticResident);
    swift_bridgeObjectRelease_n();
  }

  sub_1D1CB2248(v74, type metadata accessor for StaticResident);
  sub_1D1CB2248(v72, type metadata accessor for StaticResident);
  v249 = v70;
  v76 = v70 + 2;
  v8 = v289 + v69 * v76;
  v77 = v69;
  v289 = v69;
  while (1)
  {
    v117 = v272;
    if (v272 == v76)
    {
      break;
    }

    v79 = v274;
    sub_1D1CB2110(v8, v274, type metadata accessor for StaticResident);
    v80 = v275;
    sub_1D1CB2110(v71, v275, type metadata accessor for StaticResident);
    v81 = v290;
    v82 = sub_1D18E4158(v79, v290);
    LOBYTE(v79) = v83;
    v84 = sub_1D18E4158(v80, v81);
    if (v79)
    {
      v86 = v265;
      if ((v85 & 1) == 0)
      {
        v78 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v86 = v265;
      if (v85)
      {
        v78 = 1;
        goto LABEL_9;
      }

      if (v82 != v84)
      {
        v78 = v82 < v84;
        goto LABEL_9;
      }
    }

    v87 = v282;
    v88 = *v281;
    v89 = v254;
    (*v281)(v254, 1, 1, v282);
    v90 = v255;
    v88(v255, 1, 1, v87);
    v91 = *(v283 + 48);
    sub_1D1741A90(v89, v86, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741A90(v90, v86 + v91, &qword_1EC642570, &qword_1D1E6C6A0);
    v92 = *v280;
    if ((*v280)(v86, 1, v87) != 1)
    {
      v94 = v252;
      sub_1D1741C08(v86, v252, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v92(v86 + v91, 1, v87) == 1)
      {
        (*v273)(v94, v87);
        sub_1D1741A30(v86 + v91, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v86, &qword_1EC642570, &qword_1D1E6C6A0);
        v78 = 1;
LABEL_33:
        v62 = v269;
        v63 = v284;
        v64 = v285;
        goto LABEL_10;
      }

      sub_1D1741C08(v86 + v91, v253, &qword_1EC642570, &qword_1D1E6C6A0);
      v95 = *v266;
      (*v266)(v267, v94, v87);
      v96 = v248;
      v95(v248, v253, v87);
      v97 = v267;
      sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if ((sub_1D1E6775C() & 1) == 0)
      {
        v78 = sub_1D1E6696C();
        v115 = v96;
        v116 = *v273;
        (*v273)(v115, v87);
        v116(v267, v87);
        sub_1D1741A30(v86 + v91, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v86, &qword_1EC642570, &qword_1D1E6C6A0);
        goto LABEL_33;
      }

      v98 = *v273;
      (*v273)(v96, v87);
      v98(v97, v87);
      v63 = v284;
      v64 = v285;
LABEL_25:
      sub_1D1741A30(v86, &qword_1EC642AC0, &qword_1D1E6E810);
      v99 = *(v291 + 20);
      v100 = (v274 + v99);
      v101 = *(v274 + v99);
      v102 = *(v274 + v99 + 8);
      v103 = (v275 + v99);
      v104 = *v103;
      v105 = v103[1];
      if (*v100 == *v103 && v102 == v105 || (v106 = *v100, v107 = v100[1], v108 = *v103, v109 = v103[1], (sub_1D1E6904C() & 1) != 0))
      {
        v110 = sub_1D1E66A1C();
        v112 = v111;
        v113 = sub_1D1E66A1C();
        v62 = v269;
        if (v110 == v113 && v112 == v114)
        {

          v78 = 0;
        }

        else
        {
          v78 = sub_1D1E6904C();
        }

        goto LABEL_10;
      }

      v294 = v101;
      v295 = v102;
      v292 = v104;
      v293 = v105;
      sub_1D17D8EF0();
      v78 = sub_1D1E685FC() == -1;
      goto LABEL_9;
    }

    v93 = v92(v86 + v91, 1, v87);
    v63 = v284;
    v64 = v285;
    if (v93 == 1)
    {
      goto LABEL_25;
    }

    sub_1D1741A30(v86 + v91, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741A30(v86, &qword_1EC642570, &qword_1D1E6C6A0);
    v78 = 0;
LABEL_9:
    v62 = v269;
LABEL_10:
    sub_1D1CB2248(v275, type metadata accessor for StaticResident);
    sub_1D1CB2248(v274, type metadata accessor for StaticResident);
    ++v76;
    v77 = v289;
    v8 += v289;
    v71 += v289;
    if ((v286 ^ v78))
    {
      v117 = v76 - 1;
      break;
    }
  }

  v118 = v250;
  v66 = v279;
  v119 = v276;
  v65 = v267;
  v67 = v249;
  if ((v286 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v117 < v249)
  {
    goto LABEL_180;
  }

  if (v249 < v117)
  {
    v120 = v77 * (v117 - 1);
    v121 = v117;
    v122 = v117 * v77;
    v272 = v117;
    v123 = v249;
    v124 = v249 * v77;
    do
    {
      if (v123 != --v121)
      {
        v125 = *v270;
        if (!*v270)
        {
          goto LABEL_184;
        }

        v8 = v125 + v124;
        sub_1D1CB2178(v125 + v124, v257, type metadata accessor for StaticResident);
        if (v124 < v120 || v8 >= v125 + v122)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v124 != v120)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1CB2178(v257, v125 + v120, type metadata accessor for StaticResident);
        v62 = v269;
        v77 = v289;
      }

      ++v123;
      v120 -= v77;
      v122 -= v77;
      v124 += v77;
    }

    while (v123 < v121);
    v118 = v250;
    v65 = v267;
    v66 = v279;
    v64 = v285;
    v117 = v272;
    v67 = v249;
  }

LABEL_50:
  v126 = v270[1];
  if (v117 >= v126)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(v117, v67))
  {
    goto LABEL_177;
  }

  if (v117 - v67 >= v118)
  {
LABEL_59:
    v128 = v117;
    if (v117 < v67)
    {
      goto LABEL_176;
    }

    goto LABEL_60;
  }

  if (__OFADD__(v67, v118))
  {
    goto LABEL_178;
  }

  if (v67 + v118 >= v126)
  {
    v127 = v270[1];
  }

  else
  {
    v127 = v67 + v118;
  }

  if (v127 < v67)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v117 == v127)
  {
    goto LABEL_59;
  }

  v276 = v119;
  v187 = *v270;
  v188 = *(v268 + 72);
  v8 = *v270 + v188 * (v117 - 1);
  v286 = -v188;
  v249 = v67;
  v189 = v67 - v117;
  v256 = v188;
  v190 = v187 + v117 * v188;
  v258 = v127;
  v271 = v187;
  while (2)
  {
    v272 = v117;
    v260 = v190;
    v261 = v189;
    v191 = v189;
    v262 = v8;
LABEL_113:
    sub_1D1CB2110(v190, v64, type metadata accessor for StaticResident);
    sub_1D1CB2110(v8, v63, type metadata accessor for StaticResident);
    v192 = v290;
    v193 = sub_1D18E4158(v64, v290);
    v195 = v194;
    v196 = sub_1D18E4158(v63, v192);
    if ((v195 & 1) == 0)
    {
      v198 = v288;
      if (v197)
      {
        goto LABEL_123;
      }

      if (v193 == v196)
      {
        goto LABEL_118;
      }

      v226 = v193 < v196;
      goto LABEL_136;
    }

    v198 = v288;
    if ((v197 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v289 = v191;
    v199 = v282;
    v200 = *v281;
    v201 = v277;
    (*v281)(v277, 1, 1, v282);
    v202 = v278;
    v200(v278, 1, 1, v199);
    v203 = *(v283 + 48);
    sub_1D1741A90(v201, v198, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741A90(v202, v198 + v203, &qword_1EC642570, &qword_1D1E6C6A0);
    v204 = *v280;
    if ((*v280)(v198, 1, v199) == 1)
    {
      if (v204(v198 + v203, 1, v199) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v198 + v203, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v198, &qword_1EC642570, &qword_1D1E6C6A0);
      v63 = v284;
      v64 = v285;
LABEL_110:
      sub_1D1CB2248(v63, type metadata accessor for StaticResident);
      sub_1D1CB2248(v64, type metadata accessor for StaticResident);
LABEL_111:
      v117 = v272 + 1;
      v8 = v262 + v256;
      v189 = v261 - 1;
      v190 = v260 + v256;
      v128 = v258;
      if (v272 + 1 != v258)
      {
        continue;
      }

      v119 = v276;
      v62 = v269;
      v65 = v267;
      v67 = v249;
      v66 = v279;
      if (v258 < v249)
      {
        goto LABEL_176;
      }

LABEL_60:
      v129 = v66;
      v130 = v65;
      v276 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v258 = v128;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = sub_1D177D070(0, *(v62 + 2) + 1, 1, v62);
      }

      v133 = *(v62 + 2);
      v132 = *(v62 + 3);
      v134 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v231 = sub_1D177D070((v132 > 1), v133 + 1, 1, v62);
        v66 = v129;
        v62 = v231;
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v66 = v129;
      }

      *(v62 + 2) = v134;
      v135 = &v62[16 * v133];
      v136 = v258;
      *(v135 + 4) = v67;
      *(v135 + 5) = v136;
      v8 = *v251;
      if (!*v251)
      {
        goto LABEL_186;
      }

      if (v133)
      {
        while (2)
        {
          v137 = v134 - 1;
          if (v134 >= 4)
          {
            v142 = &v62[16 * v134 + 32];
            v143 = *(v142 - 64);
            v144 = *(v142 - 56);
            v148 = __OFSUB__(v144, v143);
            v145 = v144 - v143;
            if (v148)
            {
              goto LABEL_163;
            }

            v147 = *(v142 - 48);
            v146 = *(v142 - 40);
            v148 = __OFSUB__(v146, v147);
            v140 = v146 - v147;
            v141 = v148;
            if (v148)
            {
              goto LABEL_164;
            }

            v149 = &v62[16 * v134];
            v151 = *v149;
            v150 = *(v149 + 1);
            v148 = __OFSUB__(v150, v151);
            v152 = v150 - v151;
            if (v148)
            {
              goto LABEL_166;
            }

            v148 = __OFADD__(v140, v152);
            v153 = v140 + v152;
            if (v148)
            {
              goto LABEL_169;
            }

            if (v153 >= v145)
            {
              v171 = &v62[16 * v137 + 32];
              v173 = *v171;
              v172 = *(v171 + 1);
              v148 = __OFSUB__(v172, v173);
              v174 = v172 - v173;
              if (v148)
              {
                goto LABEL_173;
              }

              if (v140 < v174)
              {
                v137 = v134 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v141)
              {
                goto LABEL_165;
              }

              v154 = &v62[16 * v134];
              v156 = *v154;
              v155 = *(v154 + 1);
              v157 = __OFSUB__(v155, v156);
              v158 = v155 - v156;
              v159 = v157;
              if (v157)
              {
                goto LABEL_168;
              }

              v160 = &v62[16 * v137 + 32];
              v162 = *v160;
              v161 = *(v160 + 1);
              v148 = __OFSUB__(v161, v162);
              v163 = v161 - v162;
              if (v148)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v158, v163))
              {
                goto LABEL_172;
              }

              if (v158 + v163 < v140)
              {
                goto LABEL_93;
              }

              if (v140 < v163)
              {
                v137 = v134 - 2;
              }
            }
          }

          else
          {
            if (v134 == 3)
            {
              v138 = *(v62 + 4);
              v139 = *(v62 + 5);
              v148 = __OFSUB__(v139, v138);
              v140 = v139 - v138;
              v141 = v148;
              goto LABEL_79;
            }

            v164 = &v62[16 * v134];
            v166 = *v164;
            v165 = *(v164 + 1);
            v148 = __OFSUB__(v165, v166);
            v158 = v165 - v166;
            v159 = v148;
LABEL_93:
            if (v159)
            {
              goto LABEL_167;
            }

            v167 = &v62[16 * v137];
            v169 = *(v167 + 4);
            v168 = *(v167 + 5);
            v148 = __OFSUB__(v168, v169);
            v170 = v168 - v169;
            if (v148)
            {
              goto LABEL_170;
            }

            if (v170 < v158)
            {
              break;
            }
          }

          v175 = v137 - 1;
          if (v137 - 1 >= v134)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v176 = *v270;
          if (!*v270)
          {
            goto LABEL_183;
          }

          v177 = v62;
          v178 = *&v62[16 * v175 + 32];
          v179 = *&v62[16 * v137 + 40];
          v180 = *(v268 + 72);
          v181 = v176 + v180 * v178;
          v182 = v176 + v180 * *&v62[16 * v137 + 32];
          v183 = v176 + v180 * v179;
          v62 = v290;

          v184 = v181;
          v185 = v276;
          sub_1D1CB4C4C(v184, v182, v183, v8, v62);
          v276 = v185;
          if (v185)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v179 < v178)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v177 = sub_1D1E0BE44(v177);
          }

          if (v175 >= *(v177 + 2))
          {
            goto LABEL_162;
          }

          v186 = &v177[16 * v175];
          *(v186 + 4) = v178;
          *(v186 + 5) = v179;
          v296 = v177;
          sub_1D1E0BDB8(v137);
          v62 = v296;
          v134 = *(v296 + 2);
          v65 = v267;
          v66 = v279;
          v63 = v284;
          v64 = v285;
          if (v134 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v59 = v270[1];
      v60 = v258;
      if (v258 >= v59)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v205 = v279;
  sub_1D1741C08(v198, v279, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v204(v198 + v203, 1, v199) != 1)
  {
    v206 = v264;
    sub_1D1741C08(v198 + v203, v264, &qword_1EC642570, &qword_1D1E6C6A0);
    v207 = *v266;
    v208 = v263;
    (*v266)(v263, v279, v199);
    v209 = v208;
    v210 = v259;
    v211 = v206;
    v212 = v209;
    v207(v259, v211, v199);
    sub_1D1CB21E0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v213 = *v273;
      (*v273)(v210, v199);
      v213(v212, v199);
      v187 = v271;
LABEL_126:
      sub_1D1741A30(v198, &qword_1EC642AC0, &qword_1D1E6E810);
      v214 = *(v291 + 20);
      v63 = v284;
      v64 = v285;
      v215 = *&v285[v214];
      v216 = *&v285[v214 + 8];
      v217 = &v284[v214];
      v218 = *v217;
      v219 = *(v217 + 1);
      if (v215 == *v217 && v216 == v219 || (v220 = *v217, v221 = *(v217 + 1), (sub_1D1E6904C() & 1) != 0))
      {
        v222 = sub_1D1E66A1C();
        v224 = v223;
        if (v222 == sub_1D1E66A1C() && v224 == v225)
        {

          goto LABEL_110;
        }

        v226 = sub_1D1E6904C();
      }

      else
      {
        v294 = v215;
        v295 = v216;
        v292 = v218;
        v293 = v219;
        sub_1D17D8EF0();
        v226 = sub_1D1E685FC() == -1;
      }
    }

    else
    {
      v226 = sub_1D1E6696C();
      v227 = *v273;
      (*v273)(v210, v199);
      v227(v212, v199);
      v228 = v288;
      sub_1D1741A30(&v288[v203], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v228, &qword_1EC642570, &qword_1D1E6C6A0);
      v63 = v284;
      v64 = v285;
      v187 = v271;
    }

    v191 = v289;
LABEL_136:
    sub_1D1CB2248(v63, type metadata accessor for StaticResident);
    sub_1D1CB2248(v64, type metadata accessor for StaticResident);
    if ((v226 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_137;
  }

  (*v273)(v205, v199);
  sub_1D1741A30(v198 + v203, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v198, &qword_1EC642570, &qword_1D1E6C6A0);
  v63 = v284;
  v64 = v285;
  v187 = v271;
  v191 = v289;
LABEL_123:
  sub_1D1CB2248(v63, type metadata accessor for StaticResident);
  sub_1D1CB2248(v64, type metadata accessor for StaticResident);
LABEL_137:
  if (v187)
  {
    v229 = v287;
    sub_1D1CB2178(v190, v287, type metadata accessor for StaticResident);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1CB2178(v229, v8, type metadata accessor for StaticResident);
    v8 += v286;
    v190 += v286;
    if (__CFADD__(v191++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1CC6C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v38 = type metadata accessor for StaticResident();
  v10 = *(*(v38 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = *a4;
    v30 = v20;
    v24 = v36 + v20 * a3;
LABEL_4:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v21;
    while (1)
    {
      sub_1D1CB2110(v24, v19, type metadata accessor for StaticResident);
      sub_1D1CB2110(v25, v15, type metadata accessor for StaticResident);
      v26 = sub_1D1D0EC40(v19, v15, v39);
      sub_1D1CB2248(v15, type metadata accessor for StaticResident);
      result = sub_1D1CB2248(v19, type metadata accessor for StaticResident);
      if (v5)
      {
        break;
      }

      if (v26)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v27 = v37;
        sub_1D1CB2178(v24, v37, type metadata accessor for StaticResident);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1CB2178(v27, v25, type metadata accessor for StaticResident);
        v25 += v22;
        v24 += v22;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1CC6E9C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a3(0);
        v13 = sub_1D1E67C8C();
        *(v13 + 16) = v10 / 2;
      }

      v14 = *((a3)(0) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v10 / 2;

      a4(v15, v16, a1, v12, a2);

      *(v13 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    a5(0, v10, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CC70C4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  return sub_1D1E684FC() & 1;
}

uint64_t sub_1D1CC7144(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticService(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D1E66A7C();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAF0, &unk_1D1EA1820);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_1D1AC07A4(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_1D1CB2178(&v20[v28], v57, type metadata accessor for StaticService);
    v30 = *a5;
    v32 = sub_1D1742188(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1735934();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_1D1CC76B8(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for StaticService);
      a4 = 1;
    }

    else
    {
      sub_1D1723194(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_1D1742188(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_1D1CB2178(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for StaticService);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1CC75C4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for StaticMediaProfile() + 56);
  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1;
}

uint64_t sub_1D1CC7614(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for StaticMediaSystem();
  return sub_1D1719534(v3, *(a1 + *(v4 + 92))) & 1;
}

uint64_t sub_1D1CC7684@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D1CB5B14(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D1CC76B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t static StateSnapshot.Coverage.all.getter()
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1CC77F0()
{
  v0 = sub_1D179B6E8(&unk_1F4D5F598);
  result = swift_arrayDestroy();
  qword_1EE07CD98 = v0;
  return result;
}

uint64_t sub_1D1CC7840(uint64_t a1)
{
  v2 = sub_1D1CC89EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CC787C(uint64_t a1)
{
  v2 = sub_1D1CC89EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CC78B8(uint64_t a1)
{
  v2 = sub_1D1CC8998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CC78F4(uint64_t a1)
{
  v2 = sub_1D1CC8998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CC7930()
{
  v1 = 0x65536E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x6574636172616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6968747972657665;
  }
}

uint64_t sub_1D1CC79A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CC91B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CC79D0(uint64_t a1)
{
  v2 = sub_1D1CC8944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CC7A0C(uint64_t a1)
{
  v2 = sub_1D1CC8944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CC7A48(uint64_t a1)
{
  v2 = sub_1D1CC8A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CC7A84(uint64_t a1)
{
  v2 = sub_1D1CC8A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateSnapshot.Coverage.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF58, &qword_1D1EA2FF0);
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF60, &qword_1D1EA2FF8);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF68, &qword_1D1EA3000);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF70, &unk_1D1EA3008);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *v1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CC8944();
  sub_1D1E6930C();
  if (v17 == 2)
  {
    v34 = 2;
    sub_1D1CC8998();
    v19 = v25;
    sub_1D1E68DFC();
    (*(v26 + 8))(v19, v28);
    return (*(v13 + 8))(v16, v12);
  }

  if (v17 == 1)
  {
    v32 = 0;
    sub_1D1CC8A40();
    sub_1D1E68DFC();
    (*(v23 + 8))(v11, v24);
    return (*(v13 + 8))(v16, v12);
  }

  v33 = 1;
  sub_1D1CC89EC();
  v21 = v27;
  sub_1D1E68DFC();
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1CC8A94(&qword_1EC646B10, &qword_1EE07B258);
  v22 = v30;
  sub_1D1E68E5C();
  (*(v29 + 8))(v21, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t StateSnapshot.Coverage.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 2)
  {
    v5 = 2;
    return MEMORY[0x1D3892850](v5);
  }

  if (v4 == 1)
  {
    v5 = 0;
    return MEMORY[0x1D3892850](v5);
  }

  MEMORY[0x1D3892850](1);
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D176D4E8(a1, v4);
}

uint64_t StateSnapshot.Coverage.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6926C();
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E6922C();
  if (v1)
  {
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StateSnapshot.Coverage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF98, &qword_1D1EA3018);
  v44 = *(v48 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CFA0, &qword_1D1EA3020);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CFA8, &qword_1D1EA3028);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CFB0, &unk_1D1EA3030);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1CC8944();
  v21 = v50;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v41 = v10;
  v42 = 0;
  v23 = v47;
  v22 = v48;
  v50 = v15;
  v24 = v49;
  v25 = v18;
  v26 = sub_1D1E68DDC();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1D18085C8();
  if (v28 == 3 || v54 != v55 >> 1)
  {
    v31 = sub_1D1E688EC();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v33 = &type metadata for StateSnapshot.Coverage;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
LABEL_9:
    (*(v50 + 8))(v25, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (!v28)
  {
    LOBYTE(v56) = 0;
    sub_1D1CC8A40();
    v36 = v42;
    sub_1D1E68C4C();
    if (!v36)
    {
      (*(v43 + 8))(v13, v41);
      (*(v50 + 8))(v18, v14);
      swift_unknownObjectRelease();
      *v24 = 1;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    goto LABEL_9;
  }

  if (v28 == 1)
  {
    LOBYTE(v56) = 1;
    sub_1D1CC89EC();
    v29 = v42;
    sub_1D1E68C4C();
    v30 = v50;
    if (!v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
      sub_1D1CC8A94(&qword_1EC646B78, &qword_1EC644B20);
      v39 = v45;
      sub_1D1E68CBC();
      (*(v46 + 8))(v9, v39);
      (*(v30 + 8))(v25, v14);
      swift_unknownObjectRelease();
      *v24 = v56;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }
  }

  else
  {
    LOBYTE(v56) = 2;
    sub_1D1CC8998();
    v37 = v42;
    sub_1D1E68C4C();
    v38 = v50;
    if (!v37)
    {
      (*(v44 + 8))(v23, v22);
      (*(v38 + 8))(v18, v14);
      swift_unknownObjectRelease();
      *v24 = 2;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }
  }

  (*(v50 + 8))(v18, v14);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1D1CC8660(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 2)
  {
    v5 = 2;
    return MEMORY[0x1D3892850](v5);
  }

  if (v4 == 1)
  {
    v5 = 0;
    return MEMORY[0x1D3892850](v5);
  }

  MEMORY[0x1D3892850](1);
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D176D4E8(a1, v4);
}

uint64_t sub_1D1CC86EC()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6926C();
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E6922C();
  if (v1)
  {
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t static Collection<>.all.getter()
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }
}

uint64_t _s13HomeDataModel13StateSnapshotV8CoverageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    if (v3 == 2)
    {
      sub_1D1771B10(2);
      sub_1D1771B10(2);
      return 1;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if ((v3 - 1) >= 2)
    {
      if (v2)
      {
        if (!v3)
        {
          sub_1D1771B24(0);
          v4 = 0;
          goto LABEL_9;
        }

        sub_1D1771B24(*a1);
        sub_1D1771B24(v3);
        sub_1D1771B24(v2);
        v6 = sub_1D17A6E98(v2, v3);
        sub_1D1771B10(v2);
        sub_1D1771B10(v3);
        sub_1D1771B10(v2);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v7 = *a2;

        sub_1D1771B24(v8);
        sub_1D1771B24(0);
        sub_1D1771B10(0);
        sub_1D1771B10(v3);
        if (v3)
        {
          goto LABEL_10;
        }
      }

      return 1;
    }

LABEL_8:
    v4 = *a2;
LABEL_9:
    sub_1D1771B24(v4);
    sub_1D1771B24(v2);
    sub_1D1771B10(v2);
LABEL_10:
    sub_1D1771B10(v3);
    return 0;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  sub_1D1771B10(1);
  sub_1D1771B10(1);
  return v3;
}

unint64_t sub_1D1CC8944()
{
  result = qword_1EC64CF78;
  if (!qword_1EC64CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF78);
  }

  return result;
}

unint64_t sub_1D1CC8998()
{
  result = qword_1EC64CF80;
  if (!qword_1EC64CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF80);
  }

  return result;
}

unint64_t sub_1D1CC89EC()
{
  result = qword_1EC64CF88;
  if (!qword_1EC64CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF88);
  }

  return result;
}

unint64_t sub_1D1CC8A40()
{
  result = qword_1EC64CF90;
  if (!qword_1EC64CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CF90);
  }

  return result;
}

uint64_t sub_1D1CC8A94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D174A5FC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CC8B20()
{
  result = qword_1EE07CD80;
  if (!qword_1EE07CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CD80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel13StateSnapshotV8CoverageO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D1CC8B98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D1CC8C50()
{
  result = qword_1EC64CFB8;
  if (!qword_1EC64CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFB8);
  }

  return result;
}

unint64_t sub_1D1CC8CA8()
{
  result = qword_1EC64CFC0;
  if (!qword_1EC64CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFC0);
  }

  return result;
}

unint64_t sub_1D1CC8D00()
{
  result = qword_1EC64CFC8;
  if (!qword_1EC64CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFC8);
  }

  return result;
}

unint64_t sub_1D1CC8D58()
{
  result = qword_1EC64CFD0;
  if (!qword_1EC64CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFD0);
  }

  return result;
}

unint64_t sub_1D1CC8DB0()
{
  result = qword_1EC64CFD8;
  if (!qword_1EC64CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFD8);
  }

  return result;
}

unint64_t sub_1D1CC8E08()
{
  result = qword_1EC64CFE0;
  if (!qword_1EC64CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFE0);
  }

  return result;
}

unint64_t sub_1D1CC8E60()
{
  result = qword_1EC64CFE8;
  if (!qword_1EC64CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFE8);
  }

  return result;
}

unint64_t sub_1D1CC8EB8()
{
  result = qword_1EC64CFF0;
  if (!qword_1EC64CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFF0);
  }

  return result;
}

unint64_t sub_1D1CC8F10()
{
  result = qword_1EC64CFF8;
  if (!qword_1EC64CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CFF8);
  }

  return result;
}

unint64_t sub_1D1CC8F68()
{
  result = qword_1EC64D000;
  if (!qword_1EC64D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D000);
  }

  return result;
}

uint64_t sub_1D1CC8FBC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if ((*(*(result + 48) + ((v6 << 9) | (8 * v7))) - 1) >= 2)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CC905C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = *(*(result + 48) + ((v6 << 9) | (8 * v7)));
    if ((v8 - 1) >= 2)
    {

      return v8;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CC911C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + ((v6 << 9) | (8 * v7))) == 2)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CC91B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6968747972657665 && a2 == 0xEE0065736C45676ELL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xEA00000000007374 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEF73636974736972)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

HMActionSet_optional __swiftcall StaticActionSet.get(from:)(HMHomeManager from)
{
  v2 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  v14 = v1;
  v4 = sub_1D174A6C4(sub_1D1CC9AA0, v13, v3);

  if (v4)
  {
    v6 = v4;
    v7 = [v6 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v8 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v1;
    v10 = sub_1D174A6C4(sub_1D1CCEDD4, v12, v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

HMHome_optional __swiftcall StaticHome.get(from:)(HMHomeManager from)
{
  v2 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D1CC9B68, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void *sub_1D1CC9510(void *a1)
{
  v2 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

HMAccessory_optional __swiftcall StaticAccessory.get(from:)(HMHomeManager from)
{
  v2 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  v14 = v1;
  v4 = sub_1D174A6C4(sub_1D1CC9B88, v13, v3);

  if (v4)
  {
    v6 = v4;
    v7 = [v6 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v8 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v1;
    v10 = sub_1D174A6C4(sub_1D1CCEDD4, v12, v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D1CC971C(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = *(type metadata accessor for StaticAccessory(0) + 48);
  v9 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

HMAccessory_optional __swiftcall StaticAccessory.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void *sub_1D1CC98E0(void *a1)
{
  v2 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

uint64_t sub_1D1CC9988(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = *(type metadata accessor for StaticActionSet() + 28);
  v9 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

HMActionSet_optional __swiftcall StaticActionSet.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void *sub_1D1CC9BAC(void *a1)
{
  v2 = [a1 actionSets];
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

HMService_optional __swiftcall StaticService.get(from:)(HMHomeManager from)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v11 = sub_1D1E67C1C();

  v33 = v9;
  sub_1D1CCE58C(v1, v9, type metadata accessor for StaticService);
  sub_1D1CCE58C(v1, v7, type metadata accessor for StaticService);
  v34 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_26:
    v36 = v11 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_1D1E6873C();
  }

  else
  {
    v36 = v11 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v35 = v11 & 0xC000000000000001;
  v32 = v11 + 32;
  while (v13 != v14)
  {
    if (v35)
    {
      v16 = MEMORY[0x1D3891EF0](v14, v11);
    }

    else
    {
      if (v14 >= *(v36 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = *(v11 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v19 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v20);
    *(&v32 - 2) = v7;
    v21 = sub_1D174A6C4(sub_1D1CCE56C, (&v32 - 4), v19);

    if (v21)
    {
      v22 = v21;
      v23 = [v22 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v24 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v25);
      *(&v32 - 2) = v7;
      v26 = sub_1D174A6C4(sub_1D1CCEDD4, (&v32 - 4), v24);

      if (v26)
      {
        v13 = v14;
        break;
      }
    }

    else
    {
    }

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_25;
    }
  }

  if (v34)
  {
    goto LABEL_21;
  }

  for (i = *(v36 + 16); v13 != i; i = sub_1D1E6873C())
  {
    if (v35)
    {
      v28 = MEMORY[0x1D3891EF0](v13, v11);
    }

    else
    {
      if (v13 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v28 = *(v32 + 8 * v13);
    }

    v29 = v28;
    v30 = v33;
    v31 = StaticService.get(from:)(v28);
    sub_1D1CCE610(v30, type metadata accessor for StaticService);

    if (v31)
    {
      goto LABEL_23;
    }

    sub_1D1CCE610(v7, type metadata accessor for StaticService);
    __break(1u);
LABEL_21:
    ;
  }

  sub_1D1CCE610(v33, type metadata accessor for StaticService);
  v31 = 0;
LABEL_23:

  sub_1D1CCE610(v7, type metadata accessor for StaticService);
  i = v31;
LABEL_29:
  result.value.super.isa = i;
  result.is_nil = v12;
  return result;
}

HMService_optional __swiftcall StaticService.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v14 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDF0, v13, v3);

  if (v4)
  {
    v6 = v4;
    v7 = [v6 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v8 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v9);
    v12[2] = v1;
    v10 = sub_1D174A6C4(sub_1D1CCEDD4, v12, v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D1CCA1EC(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = *(type metadata accessor for StaticService(0) + 44);
  v9 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

HMService_optional __swiftcall StaticService.get(from:)(HMAccessory from)
{
  v2 = [(objc_class *)from.super.isa services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D1CCA3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticService);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticService);
  v13[1] = v7;
  v13[2] = sub_1D1CCED24;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1716A30;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

void *sub_1D1CCA558(void *a1)
{
  v2 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

HMServiceGroup_optional __swiftcall StaticServiceGroup.get(from:)(HMHomeManager from)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v12 = sub_1D1E67C1C();

  v34 = v10;
  sub_1D1CCE58C(v2, v10, type metadata accessor for StaticServiceGroup);
  v36 = v8;
  sub_1D1CCE58C(v2, v8, type metadata accessor for StaticServiceGroup);
  v35 = v12 >> 62;
  v14 = (v12 & 0xFFFFFFFFFFFFFF8);
  if (v12 >> 62)
  {
LABEL_26:
    v15 = sub_1D1E6873C();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = v12 & 0xC000000000000001;
  v33 = v12 + 32;
  while (v15 != v16)
  {
    if (v17)
    {
      v18 = MEMORY[0x1D3891EF0](v16, v12);
    }

    else
    {
      if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v18 = *(v12 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v18 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v21 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v22);
    *(&v32 - 2) = v36;
    v23 = sub_1D174A6C4(sub_1D1CCEDD4, (&v32 - 4), v21);

    if (v23)
    {
      v15 = v16;
      break;
    }

    if (__OFADD__(v16++, 1))
    {
      goto LABEL_25;
    }
  }

  if (v35)
  {
    goto LABEL_21;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); v15 != i; i = sub_1D1E6873C())
  {
    if (v17)
    {
      v26 = MEMORY[0x1D3891EF0](v15, v12);
    }

    else
    {
      if (v15 >= v14[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v26 = *(v33 + 8 * v15);
    }

    v15 = v26;
    v27 = [v26 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v28 = sub_1D1E67C1C();

    v14 = &v32;
    MEMORY[0x1EEE9AC00](v29);
    v30 = v34;
    *(&v32 - 2) = v34;
    v31 = sub_1D174A6C4(sub_1D1CCEDD4, (&v32 - 4), v28);

    sub_1D1CCE610(v30, type metadata accessor for StaticServiceGroup);

    if (v31)
    {
      goto LABEL_23;
    }

    sub_1D1CCE610(v36, type metadata accessor for StaticServiceGroup);
    __break(1u);
LABEL_21:
    ;
  }

  sub_1D1CCE610(v34, type metadata accessor for StaticServiceGroup);
  v31 = 0;
LABEL_23:

  sub_1D1CCE610(v36, type metadata accessor for StaticServiceGroup);
  i = v31;
LABEL_29:
  result.value.super.isa = i;
  result.is_nil = v13;
  return result;
}

uint64_t sub_1D1CCA9F0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v6 = sub_1D1E67C1C();

  v9[2] = a2;
  v7 = sub_1D174A6C4(sub_1D1CCEDD4, v9, v6);

  *a3 = v7;
  return result;
}

HMServiceGroup_optional __swiftcall StaticServiceGroup.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D1CCAB4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticServiceGroup);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticServiceGroup);
  v13[1] = v7;
  v13[2] = sub_1D1CCEBF8;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1716A30;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

void *sub_1D1CCACF4(void *a1)
{
  v2 = [a1 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

uint64_t StaticMediaSystem.get(from:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystem();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v12 = sub_1D1E67C1C();

  v33 = v10;
  sub_1D1CCE58C(v2, v10, type metadata accessor for StaticMediaSystem);
  v35 = v8;
  sub_1D1CCE58C(v2, v8, type metadata accessor for StaticMediaSystem);
  v34 = v12 >> 62;
  v13 = (v12 & 0xFFFFFFFFFFFFFF8);
  if (v12 >> 62)
  {
LABEL_26:
    v14 = sub_1D1E6873C();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = v12 & 0xC000000000000001;
  v32 = v12 + 32;
  while (v14 != v15)
  {
    if (v16)
    {
      v17 = MEMORY[0x1D3891EF0](v15, v12);
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = [v17 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v20 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v21);
    *(&v31 - 2) = v35;
    v22 = sub_1D174A6C4(sub_1D1CCEDD4, (&v31 - 4), v20);

    if (v22)
    {
      v14 = v15;
      break;
    }

    if (__OFADD__(v15++, 1))
    {
      goto LABEL_25;
    }
  }

  if (v34)
  {
    goto LABEL_21;
  }

  for (result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); v14 != result; result = sub_1D1E6873C())
  {
    if (v16)
    {
      v25 = MEMORY[0x1D3891EF0](v14, v12);
    }

    else
    {
      if (v14 >= v13[2])
      {
        __break(1u);
        return result;
      }

      v25 = *(v32 + 8 * v14);
    }

    v14 = v25;
    v26 = [v25 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v27 = sub_1D1E67C1C();

    v13 = &v31;
    MEMORY[0x1EEE9AC00](v28);
    v29 = v33;
    *(&v31 - 2) = v33;
    v30 = sub_1D174A6C4(sub_1D1CCEDD4, (&v31 - 4), v27);

    sub_1D1CCE610(v29, type metadata accessor for StaticMediaSystem);

    if (v30)
    {
      goto LABEL_23;
    }

    sub_1D1CCE610(v35, type metadata accessor for StaticMediaSystem);
    __break(1u);
LABEL_21:
    ;
  }

  sub_1D1CCE610(v33, type metadata accessor for StaticMediaSystem);
  v30 = 0;
LABEL_23:

  sub_1D1CCE610(v35, type metadata accessor for StaticMediaSystem);
  return v30;
}

uint64_t sub_1D1CCB18C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v6 = sub_1D1E67C1C();

  v9[2] = a2;
  v7 = sub_1D174A6C4(sub_1D1CCEDD4, v9, v6);

  *a3 = v7;
  return result;
}

void *StaticMediaSystem.get(from:)(void *a1)
{
  v2 = [a1 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

uint64_t sub_1D1CCB2E8(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1D1CCB3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaSystem);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaSystem);
  v13[1] = v7;
  v13[2] = sub_1D1CCEBCC;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1A8D27C;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

void *sub_1D1CCB59C(void *a1)
{
  v2 = [a1 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

uint64_t StaticMediaProfile.get(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v127 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v127);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v99 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v112 = &v99 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v123 = &v99 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v120 = &v99 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v99 - v26);
  v28 = type metadata accessor for StaticMediaProfile();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v106 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v100 = &v99 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v130 = &v99 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v117 = &v99 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v99 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v99 - v41;
  v43 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v44 = sub_1D1E67C1C();

  v102 = v42;
  sub_1D1CCE58C(v2, v42, type metadata accessor for StaticMediaProfile);
  v110 = v40;
  sub_1D1CCE58C(v2, v40, type metadata accessor for StaticMediaProfile);
  v101 = v44 >> 62;
  if (v44 >> 62)
  {
    goto LABEL_91;
  }

  v113 = v44 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v45 = 0;
    v109 = v44 & 0xC000000000000001;
    v103 = v44;
    v108 = v44 + 32;
    v125 = (v5 + 16);
    v126 = (v5 + 56);
    v133 = (v5 + 48);
    v118 = (v5 + 32);
    v121 = (v5 + 8);
    v44 = v123;
    v131 = v4;
LABEL_4:
    if (v45 == i)
    {
      v49 = i;
      goto LABEL_45;
    }

    if (v109)
    {
      break;
    }

    if (v45 < *(v113 + 16))
    {
      v46 = *(v108 + 8 * v45);
      goto LABEL_8;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v113 = v44 & 0xFFFFFFFFFFFFFF8;
  }

  v46 = MEMORY[0x1D3891EF0](v45, v103);
LABEL_8:
  v114 = v46;
  v47 = [v46 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v40 = sub_1D1E67C1C();

  v48 = v110;
  sub_1D1CCE58C(v110, v117, type metadata accessor for StaticMediaProfile);
  sub_1D1CCE58C(v48, v130, type metadata accessor for StaticMediaProfile);
  v115 = v40 >> 62;
  v116 = v45;
  v129 = v40 & 0xFFFFFFFFFFFFFF8;
  if (v40 >> 62)
  {
    v5 = sub_1D1E6873C();
  }

  else
  {
    v5 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  v128 = v40 & 0xC000000000000001;
  v107 = v40 + 32;
  v122 = v40;
  v124 = v5;
  while (1)
  {
    if (v5 == v49)
    {
      goto LABEL_30;
    }

    if (v128)
    {
      v52 = MEMORY[0x1D3891EF0](v49, v40);
    }

    else
    {
      if (v49 >= *(v129 + 16))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v25 = v49;
LABEL_77:
        v5 = v103;
        if (v120)
        {
          v94 = sub_1D1E6873C();
        }

        else
        {
          v94 = *(v124 + 16);
        }

        if (v25 == v94)
        {
          goto LABEL_99;
        }

        if (v130)
        {
LABEL_95:
          v95 = MEMORY[0x1D3891EF0](v25, v40);
          goto LABEL_84;
        }

        if (v25 < *(v124 + 16))
        {
          v95 = *(v116 + 8 * v25);
LABEL_84:
          v96 = v95;
          v134 = v95;
          v97 = v100;
          sub_1D1CCD6A0(&v134, v100, &v135);
          sub_1D1CCE610(v97, type metadata accessor for StaticMediaProfile);

          v93 = v135;
          if (!v135)
          {
            goto LABEL_100;
          }

          sub_1D1CCE610(v106, type metadata accessor for StaticMediaProfile);
          sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);

          goto LABEL_86;
        }

        __break(1u);
        goto LABEL_97;
      }

      v52 = *(v40 + 8 * v49 + 32);
    }

    v132 = v52;
    v53 = [v52 mediaProfile];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 uniqueIdentifier];

      sub_1D1E66A5C();
      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v57 = *v126;
    (*v126)(v27, v56, 1, v4);
    (*v125)(v25, v130, v4);
    v57(v25, 0, 1, v4);
    v58 = *(v127 + 48);
    sub_1D17783E0(v27, v12);
    sub_1D17783E0(v25, &v12[v58]);
    v59 = *v133;
    if ((*v133)(v12, 1, v4) == 1)
    {
      break;
    }

    v61 = v120;
    sub_1D17783E0(v12, v120);
    if (v59(&v12[v58], 1, v4) == 1)
    {
      sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
      (*v121)(v61, v4);
      v40 = v122;
      v50 = v132;
LABEL_12:
      sub_1D1741A30(v12, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_13;
    }

    v62 = v119;
    (*v118)(v119, &v12[v58], v4);
    sub_1D1797998();
    v63 = sub_1D1E6775C();
    v64 = *v121;
    (*v121)(v62, v131);
    sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
    v64(v61, v131);
    v4 = v131;
    sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    v40 = v122;
    v50 = v132;
    if (v63)
    {
      goto LABEL_27;
    }

LABEL_13:

LABEL_14:
    v51 = __OFADD__(v49++, 1);
    v44 = v123;
    v5 = v124;
    if (v51)
    {
      goto LABEL_75;
    }
  }

  sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
  v60 = v59(&v12[v58], 1, v4);
  v50 = v132;
  if (v60 != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
LABEL_27:
  v65 = [v50 mediaProfile];

  if (!v65)
  {
    goto LABEL_14;
  }

  v5 = v49;
  v44 = v123;
LABEL_30:
  v49 = v116;
  if (v115)
  {
    if (v5 != sub_1D1E6873C())
    {
      goto LABEL_40;
    }

LABEL_34:
    v5 = type metadata accessor for StaticMediaProfile;
    sub_1D1CCE610(v117, type metadata accessor for StaticMediaProfile);

    sub_1D1CCE610(v130, type metadata accessor for StaticMediaProfile);

    v51 = __OFADD__(v49, 1);
    v45 = v49 + 1;
    if (v51)
    {
      goto LABEL_88;
    }

    goto LABEL_4;
  }

  if (v5 == *(v129 + 16))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v128)
  {
LABEL_97:
    v66 = MEMORY[0x1D3891EF0](v5, v40);
LABEL_43:
    v67 = v66;
    v134 = v66;
    v68 = v117;
    sub_1D1CCD6A0(&v134, v117, &v135);
    sub_1D1CCE610(v68, type metadata accessor for StaticMediaProfile);

    v25 = v135;
    if (!v135)
    {
      goto LABEL_101;
    }

    sub_1D1CCE610(v130, type metadata accessor for StaticMediaProfile);

LABEL_45:
    if (v101)
    {
      if (v49 != sub_1D1E6873C())
      {
        goto LABEL_47;
      }
    }

    else if (v49 != *(v113 + 16))
    {
LABEL_47:
      if (v109)
      {
        v69 = MEMORY[0x1D3891EF0](v49, v103);
        goto LABEL_50;
      }

      if (v49 < *(v113 + 16))
      {
        v69 = *(v108 + 8 * v49);
LABEL_50:
        v117 = v69;
        v70 = [v69 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v40 = sub_1D1E67C1C();

        v71 = v102;
        sub_1D1CCE58C(v102, v100, type metadata accessor for StaticMediaProfile);
        sub_1D1CCE58C(v71, v106, type metadata accessor for StaticMediaProfile);
        v120 = v40 >> 62;
        v12 = (v40 & 0xFFFFFFFFFFFFFF8);
        if (v40 >> 62)
        {
          v25 = sub_1D1E6873C();
        }

        else
        {
          v25 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v72 = v112;
        v49 = 0;
        v129 = v25;
        v130 = v40 & 0xC000000000000001;
        v116 = v40 + 32;
        v122 = v40;
        v124 = v40 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v25 == v49)
          {
            goto LABEL_77;
          }

          if (v130)
          {
            v75 = MEMORY[0x1D3891EF0](v49, v40);
          }

          else
          {
            if (v49 >= *(v12 + 2))
            {
              goto LABEL_89;
            }

            v75 = *(v40 + 8 * v49 + 32);
          }

          v76 = v75;
          v77 = [v75 mediaProfile];
          v132 = v76;
          if (v77)
          {
            v78 = v77;
            v79 = [v77 uniqueIdentifier];

            sub_1D1E66A5C();
            v80 = 0;
          }

          else
          {
            v80 = 1;
          }

          v81 = *v126;
          (*v126)(v44, v80, 1, v4);
          (*v125)(v72, v106, v4);
          v81(v72, 0, 1, v4);
          v82 = *(v127 + 48);
          v83 = v44;
          v84 = v44;
          v85 = v72;
          v86 = v105;
          sub_1D17783E0(v83, v105);
          sub_1D17783E0(v85, v86 + v82);
          v27 = *v133;
          if ((*v133)(v86, 1, v4) == 1)
          {
            sub_1D1741A30(v85, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v84, &qword_1EC642590, qword_1D1E71260);
            v44 = v84;
            if ((v27)(v86 + v82, 1, v4) != 1)
            {
              goto LABEL_54;
            }

            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
            v5 = v132;
          }

          else
          {
            v87 = v104;
            sub_1D17783E0(v86, v104);
            if ((v27)(v86 + v82, 1, v4) == 1)
            {
              sub_1D1741A30(v112, &qword_1EC642590, qword_1D1E71260);
              v73 = v123;
              sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
              v74 = v87;
              v44 = v73;
              (*v121)(v74, v4);
LABEL_54:
              sub_1D1741A30(v86, &qword_1EC642980, &unk_1D1E6E6E0);
              v5 = v132;
LABEL_55:

              goto LABEL_56;
            }

            v88 = v119;
            (*v118)(v119, (v86 + v82), v4);
            sub_1D1797998();
            v89 = sub_1D1E6775C();
            v4 = v131;
            LODWORD(v128) = v89;
            v27 = *v121;
            v12 = v124;
            (*v121)(v88, v131);
            sub_1D1741A30(v112, &qword_1EC642590, qword_1D1E71260);
            v90 = v123;
            sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
            v91 = v87;
            v44 = v90;
            v27(v91, v4);
            v40 = v122;
            sub_1D1741A30(v86, &qword_1EC642590, qword_1D1E71260);
            v5 = v132;
            if ((v128 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v92 = [v5 mediaProfile];

          if (v92)
          {
            goto LABEL_76;
          }

LABEL_56:
          v51 = __OFADD__(v49++, 1);
          v72 = v112;
          v25 = v129;
          if (v51)
          {
            goto LABEL_90;
          }
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);

    v93 = 0;
LABEL_86:
    sub_1D1CCE610(v110, type metadata accessor for StaticMediaProfile);
    return v93;
  }

  if (v5 < *(v129 + 16))
  {
    v66 = *(v107 + 8 * v5);
    goto LABEL_43;
  }

  __break(1u);
LABEL_99:
  sub_1D1CCE610(v100, type metadata accessor for StaticMediaProfile);

  sub_1D1CCE610(v106, type metadata accessor for StaticMediaProfile);
  sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);

  sub_1D1CCE610(v110, type metadata accessor for StaticMediaProfile);
  __break(1u);
LABEL_100:
  sub_1D1CCE610(v106, type metadata accessor for StaticMediaProfile);
  __break(1u);
LABEL_101:
  result = sub_1D1CCE610(v130, type metadata accessor for StaticMediaProfile);
  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = type metadata accessor for StaticMediaProfile();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v28 = sub_1D1E67C1C();

  v54 = v26;
  sub_1D1CCE58C(v2, v26, type metadata accessor for StaticMediaProfile);
  v67 = v24;
  sub_1D1CCE58C(v2, v24, type metadata accessor for StaticMediaProfile);
  v69 = v28;
  v55 = v28 >> 62;
  if (v28 >> 62)
  {
LABEL_35:
    v68 = v69 & 0xFFFFFFFFFFFFFF8;
    v29 = sub_1D1E6873C();
  }

  else
  {
    v68 = v69 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v66 = v69 & 0xC000000000000001;
  v53 = v69 + 32;
  v62 = (v5 + 2);
  v63 = (v5 + 7);
  v31 = (v5 + 6);
  v56 = (v5 + 6);
  v57 = (v5 + 4);
  v60 = (v5 + 1);
  v61 = v29;
  v70 = v17;
  while (v29 != v30)
  {
    if (v66)
    {
      v35 = MEMORY[0x1D3891EF0](v30, v69);
    }

    else
    {
      if (v30 >= *(v68 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v35 = *(v69 + 8 * v30 + 32);
    }

    v5 = v35;
    v36 = [v35 mediaProfile];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 uniqueIdentifier];

      sub_1D1E66A5C();
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = *v63;
    (*v63)(v19, v39, 1, v4);
    v41 = v19;
    v42 = v70;
    (*v62)(v70, v67, v4);
    v40(v42, 0, 1, v4);
    v43 = *(v64 + 48);
    sub_1D17783E0(v41, v10);
    sub_1D17783E0(v42, &v10[v43]);
    v17 = *v31;
    if ((*v31)(v10, 1, v4) == 1)
    {
      sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
      v19 = v41;
      if ((v17)(&v10[v43], 1, v4) == 1)
      {
        sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v46 = [v5 mediaProfile];

        if (v46)
        {
          v29 = v30;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v44 = v65;
    sub_1D17783E0(v10, v65);
    if ((v17)(&v10[v43], 1, v4) == 1)
    {
      sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
      v17 = v10;
      v32 = v44;
      v19 = v41;
      sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
      v33 = v32;
      v10 = v17;
      (*v60)(v33, v4);
LABEL_5:
      sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v45 = v58;
    (*v57)(v58, &v10[v43], v4);
    sub_1D1797998();
    v59 = sub_1D1E6775C();
    v17 = *v60;
    (*v60)(v45, v4);
    sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
    v19 = v41;
    sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
    (v17)(v65, v4);
    v31 = v56;
    sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
    if (v59)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    v34 = __OFADD__(v30++, 1);
    v29 = v61;
    if (v34)
    {
      goto LABEL_34;
    }
  }

  if (v55)
  {
    goto LABEL_30;
  }

  for (result = *(v68 + 16); v29 != result; result = sub_1D1E6873C())
  {
    if (v66)
    {
      v48 = MEMORY[0x1D3891EF0](v29, v69);
    }

    else
    {
      if (v29 >= *(v68 + 16))
      {
        __break(1u);
        return result;
      }

      v48 = *(v53 + 8 * v29);
    }

    v49 = v48;
    v71 = v48;
    v50 = v54;
    sub_1D1CCD6A0(&v71, v54, &v72);
    sub_1D1CCE610(v50, type metadata accessor for StaticMediaProfile);

    v51 = v72;
    if (v72)
    {
      goto LABEL_32;
    }

    sub_1D1CCE610(v67, type metadata accessor for StaticMediaProfile);
    __break(1u);
LABEL_30:
    ;
  }

  sub_1D1CCE610(v54, type metadata accessor for StaticMediaProfile);
  v51 = 0;
LABEL_32:

  sub_1D1CCE610(v67, type metadata accessor for StaticMediaProfile);
  return v51;
}

uint64_t sub_1D1CCC794@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v72 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v52 - v18;
  v19 = type metadata accessor for StaticMediaProfile();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  v26 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v27 = sub_1D1E67C1C();

  v55 = v25;
  sub_1D1CCE58C(a2, v25, type metadata accessor for StaticMediaProfile);
  v70 = v23;
  sub_1D1CCE58C(a2, v23, type metadata accessor for StaticMediaProfile);
  v56 = v27 >> 62;
  if (v27 >> 62)
  {
LABEL_35:
    v71 = v27 & 0xFFFFFFFFFFFFFF8;
    v28 = sub_1D1E6873C();
  }

  else
  {
    v71 = v27 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v69 = v27 & 0xC000000000000001;
  v53 = v27 + 32;
  v65 = (v6 + 2);
  v66 = (v6 + 7);
  v63 = v28;
  v64 = (v6 + 6);
  v57 = (v6 + 4);
  v60 = (v6 + 1);
  v30 = v62;
  v67 = v27;
  while (v28 != v29)
  {
    if (v69)
    {
      v32 = MEMORY[0x1D3891EF0](v29, v27);
    }

    else
    {
      if (v29 >= *(v71 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v32 = *(v27 + 8 * v29 + 32);
    }

    v6 = v32;
    v33 = [v32 mediaProfile];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 uniqueIdentifier];

      sub_1D1E66A5C();
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = *v66;
    (*v66)(v30, v36, 1, v5);
    v38 = v72;
    (*v65)(v72, v70, v5);
    v37(v38, 0, 1, v5);
    v39 = *(v68 + 48);
    sub_1D17783E0(v30, v11);
    sub_1D17783E0(v38, &v11[v39]);
    v40 = *v64;
    if ((*v64)(v11, 1, v5) == 1)
    {
      sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
      v41 = v40(&v11[v39], 1, v5);
      v27 = v67;
      if (v41 == 1)
      {
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v46 = [v6 mediaProfile];

        if (v46)
        {
          v28 = v29;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v42 = v72;
    v43 = v61;
    sub_1D17783E0(v11, v61);
    if (v40(&v11[v39], 1, v5) == 1)
    {
      sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
      v30 = v62;
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      (*v60)(v43, v5);
      v27 = v67;
LABEL_5:
      sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v44 = v58;
    (*v57)(v58, &v11[v39], v5);
    sub_1D1797998();
    v59 = sub_1D1E6775C();
    v45 = *v60;
    (*v60)(v44, v5);
    sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
    v30 = v62;
    sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
    v45(v43, v5);
    sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
    v27 = v67;
    if (v59)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    v31 = __OFADD__(v29++, 1);
    v28 = v63;
    if (v31)
    {
      goto LABEL_34;
    }
  }

  if (v56)
  {
    goto LABEL_30;
  }

  for (result = *(v71 + 16); v28 != result; result = sub_1D1E6873C())
  {
    if (v69)
    {
      v48 = MEMORY[0x1D3891EF0](v28, v27);
    }

    else
    {
      if (v28 >= *(v71 + 16))
      {
        __break(1u);
        return result;
      }

      v48 = *(v53 + 8 * v28);
    }

    v49 = v48;
    v73 = v48;
    v50 = v55;
    sub_1D1CCD6A0(&v73, v55, &v74);
    sub_1D1CCE610(v50, type metadata accessor for StaticMediaProfile);

    v51 = v74;
    if (v74)
    {
      goto LABEL_32;
    }

    sub_1D1CCE610(v70, type metadata accessor for StaticMediaProfile);
    __break(1u);
LABEL_30:
    ;
  }

  sub_1D1CCE610(v55, type metadata accessor for StaticMediaProfile);
  v51 = 0;
LABEL_32:

  result = sub_1D1CCE610(v70, type metadata accessor for StaticMediaProfile);
  *v54 = v51;
  return result;
}

id sub_1D1CCD6A0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v35 = *a1;
  v22 = [v35 mediaProfile];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 uniqueIdentifier];

    sub_1D1E66A5C();
    v25 = *(v6 + 56);
    v25(v21, 0, 1, v5);
  }

  else
  {
    v25 = *(v6 + 56);
    v25(v21, 1, 1, v5);
  }

  (*(v6 + 16))(v19, a2, v5);
  v25(v19, 0, 1, v5);
  v26 = *(v9 + 48);
  sub_1D17783E0(v21, v12);
  sub_1D17783E0(v19, &v12[v26]);
  v27 = *(v6 + 48);
  if (v27(v12, 1, v5) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    if (v27(&v12[v26], 1, v5) == 1)
    {
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
      result = [v35 mediaProfile];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v28 = v36;
  sub_1D17783E0(v12, v36);
  if (v27(&v12[v26], 1, v5) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    (*(v6 + 8))(v28, v5);
LABEL_9:
    sub_1D1741A30(v12, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  v30 = v34;
  (*(v6 + 32))(v34, &v12[v26], v5);
  sub_1D1797998();
  v31 = v28;
  v32 = sub_1D1E6775C();
  v33 = *(v6 + 8);
  v33(v30, v5);
  sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
  v33(v31, v5);
  sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = 0;
LABEL_13:
  *v37 = result;
  return result;
}

uint64_t sub_1D1CCDB40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaProfile);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaProfile);
  v13[1] = v7;
  v13[2] = sub_1D1CCEBA0;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1A8D27C;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

uint64_t sub_1D1CCDCE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaProfile);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaProfile);
  v13[1] = v7;
  v13[2] = sub_1D1CCE794;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1A8D27C;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMHomeManager from)
{
  v4 = type metadata accessor for StaticMatterDevice();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v12 = sub_1D1E67C1C();

  sub_1D1CCE58C(v1, v10, type metadata accessor for StaticMatterDevice);
  v33 = v8;
  sub_1D1CCE58C(v1, v8, type metadata accessor for StaticMatterDevice);
  v31 = v10;
  v32 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_28;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = 0;
  v16 = v12 & 0xC000000000000001;
  v30 = v12 + 32;
  while (1)
  {
    if (v14 == v15)
    {
      v15 = v14;
      if (v32)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v16)
    {
      v18 = MEMORY[0x1D3891EF0](v15, v12);
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = *(v12 + 8 * v15 + 32);
    }

    v2 = v18;
    v19 = [v18 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v20 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v21);
    *(&v29 - 2) = v33;
    v22 = sub_1D174A6C4(sub_1D1CCE5F4, (&v29 - 4), v20);

    if (!v22 || (v23 = HMAccessory.matterDevice.getter(), v22, !v23))
    {

      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_5:
    if (__OFADD__(v15++, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      v14 = sub_1D1E6873C();
      goto LABEL_3;
    }
  }

  while (2)
  {
    swift_unknownObjectRelease();

    if (v32)
    {
LABEL_23:
      v24 = sub_1D1E6873C();
      if (v15 == v24)
      {
LABEL_24:
        sub_1D1CCE610(v31, type metadata accessor for StaticMatterDevice);
        v28 = 0;
LABEL_25:

        sub_1D1CCE610(v33, type metadata accessor for StaticMatterDevice);
        v24 = v28;
        goto LABEL_31;
      }
    }

    else
    {
LABEL_16:
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 == v24)
      {
        goto LABEL_24;
      }
    }

    if (v16)
    {
      v25 = MEMORY[0x1D3891EF0](v15, v12);
      goto LABEL_20;
    }

    if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v30 + 8 * v15);
LABEL_20:
      v26 = v25;
      v27 = v31;
      v28 = StaticMatterDevice.get(from:)(v25);
      sub_1D1CCE610(v27, type metadata accessor for StaticMatterDevice);

      if (v28)
      {
        goto LABEL_25;
      }

      sub_1D1CCE610(v33, type metadata accessor for StaticMatterDevice);
      __break(1u);
      continue;
    }

    break;
  }

  __break(1u);
LABEL_31:
  result.value.super.isa = v24;
  result.is_nil = v13;
  return result;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v9 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEE0C, &v8, v3);

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = HMAccessory.matterDevice.getter();

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
  }

  result.value.super.isa = v7;
  result.is_nil = v5;
  return result;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMAccessory from)
{
  v1 = HMAccessory.matterDevice.getter();
  if (v1)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
      v1 = 0;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1D1CCE36C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMatterDevice);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = sub_1D1CCECBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMatterDevice);
  v13[1] = v7;
  v13[2] = sub_1D1CCE768;
  v13[3] = v9;
  v13[4] = sub_1D1CCEDD0;
  v13[5] = 0;
  v13[6] = sub_1D1716A30;
  v13[7] = 0;
  v11 = sub_1D1778964(v10);

  return v11;
}

uint64_t sub_1D1CCE518()
{
  result = HMAccessory.matterDevice.getter();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1CCE58C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CCE610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CCE670(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_1D1E682DC();
  return (v4 == *(v2 + *(type metadata accessor for StaticMatterDevice() + 20))) & ~v5;
}

uint64_t objectdestroy_21Tm_0()
{
  v1 = type metadata accessor for StaticMediaProfile();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v34 = (v2 + 16) & ~v2;
  v35 = v0;
  v3 = v0 + v34;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = *(v3 + v1[5] + 8);

  v7 = *(v3 + v1[6]);

  v8 = *(v3 + v1[7] + 8);

  v9 = v1[8];
  v10 = sub_1D1E669FC();
  v31 = *(*(v10 - 8) + 48);
  v32 = *(v10 - 8);
  if (!v31(v3 + v9, 1, v10))
  {
    (*(v32 + 8))(v3 + v9, v10);
  }

  v11 = *(v3 + v1[9] + 8);

  v5(v3 + v1[14], v4);
  v12 = *(v3 + v1[17]);

  v13 = v3 + v1[18];
  v14 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5(v13, v4);
    }

    else
    {
      v15 = *(v13 + 8);
    }
  }

  v16 = *(v3 + v1[21] + 8);

  v17 = *(v3 + v1[22] + 8);

  v18 = v3 + v1[23];
  v19 = *(v18 + 8);
  if (v19 != 255)
  {
    sub_1D1771B5C(*v18, v19);
  }

  v20 = *(v3 + v1[24]);

  v21 = v3 + v1[25];
  v22 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v5(v21, v4);
    v23 = v21 + *(v22 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v25 = *(v23 + 8);

      updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v27 = updated[5];
      if (!v31(v23 + v27, 1, v10))
      {
        (*(v32 + 8))(v23 + v27, v10);
      }

      v28 = *(v23 + updated[6] + 8);

      v29 = *(v23 + updated[7] + 8);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_19;
      }

      v5(v23, v4);
      if (*(v23 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:

  return MEMORY[0x1EEE6BDD0](v35, v34 + v33, v2 | 7);
}

uint64_t sub_1D1CCEC24(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D1CCECBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CCED50@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(a2(0) - 8) + 80);
  result = a3(*a1);
  *a4 = result;
  return result;
}

uint64_t StateSnapshot.tileInfoBearerCollection(nativeMatterDevices:)@<X0>(char *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = type metadata accessor for StateSnapshot(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D18CE730(v2, v8);

  return TileInfoBearerCollection.init(from:nativeMatterDevices:)(v8, a1, a2);
}

uint64_t StaticAccessory.showAsInteractiveWidget.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v45 - v6;
  v7 = type metadata accessor for StaticService(0);
  v50 = *(v7 - 1);
  v8 = *(v50 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for StaticAccessory(0);
  v14 = 0;
  v15 = (v0 + *(v13 + 92));
  v16 = *(v15 + 8);
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      return v14;
    }
  }

  else
  {
    if (v16 < 2)
    {
      return v14;
    }

    v14 = 0;
    v17 = *v15;
    if ((v17 & 0x100) != 0 || (v17 & 1) == 0)
    {
      return v14;
    }
  }

  v18 = v13;
  v19 = StaticAccessory.staticServicesExcludingComponents.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
  result = swift_initStackObject();
  v21 = result;
  *(result + 16) = xmmword_1D1E74700;
  v22 = 1;
  *(result + 32) = (*(v0 + v18[37]) & 1) == 0;
  *(result + 33) = (*(v0 + v18[15]) & 1) == 0;
  *(result + 34) = (*(v0 + v18[26]) & 1) == 0;
  if (*(v0 + v18[19]) == 1)
  {
    v23 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

    v22 = v23 < 2 || v19[2] == 0;
  }

  v45 = v21;
  *(v21 + 35) = v22;
  v49 = v19[2];
  if (!v49)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_30:

    v42 = *(v25 + 16);

    v43 = v45;
    v45[36] = v42 == 0;
    if ((v43[32] & 1) != 0 && v43[33] == 1 && v43[34] == 1)
    {
      if (v42)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43[35];
      }
    }

    else
    {
      v44 = 0;
    }

    return v44;
  }

  v46 = v5;
  v24 = 0;
  v51 = 0x80000001D1EB3580;
  v25 = MEMORY[0x1E69E7CC0];
  v47 = v19;
  while (v24 < v19[2])
  {
    v26 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v27 = *(v50 + 72);
    sub_1D1CD1AA4(v19 + v26 + v27 * v24, v12, type metadata accessor for StaticService);
    v54 = v12[v7[26]];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v51 == v28)
    {
    }

    else
    {
      v29 = sub_1D1E6904C();

      if ((v29 & 1) == 0)
      {
        result = sub_1D1CD1B0C(v12, type metadata accessor for StaticService);
        goto LABEL_14;
      }
    }

    v53 = v26;
    v30 = &v12[v7[29]];
    v31 = v12;
    v32 = v48;
    sub_1D17783E0(v30, v48);
    v33 = sub_1D1E66A7C();
    v34 = *(*(v33 - 8) + 48);
    v35 = v34(v32, 1, v33);
    v36 = v32;
    v12 = v31;
    sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
    if (v35 != 1)
    {
      goto LABEL_24;
    }

    v37 = v46;
    sub_1D17783E0(v31 + v7[37], v46);
    if (v34(v37, 1, v33) != 1)
    {
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
LABEL_24:
      sub_1D17978CC(v31, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v25 + 16) + 1, 1);
        v25 = v55;
      }

      v19 = v47;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      v41 = v53;
      if (v40 >= v39 >> 1)
      {
        sub_1D17915E0(v39 > 1, v40 + 1, 1);
        v25 = v55;
      }

      *(v25 + 16) = v40 + 1;
      result = sub_1D17978CC(v52, v25 + v41 + v40 * v27);
      goto LABEL_14;
    }

    sub_1D1CD1B0C(v31, type metadata accessor for StaticService);
    result = sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
    v19 = v47;
LABEL_14:
    if (v49 == ++v24)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t Set<>.interactiveWidgets.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v7 = v5 & 0x3F;
  v8 = ((1 << v5) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v25[1] = v25;
    v26 = v8;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v9);
    v27 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v9 = v16 | (v11 << 6);
      sub_1D1CD1AA4(*(a1 + 48) + *(v3 + 72) * v9, v6, type metadata accessor for StaticAccessory);
      v19 = StaticAccessory.showAsInteractiveWidget.getter();
      sub_1D1CD1B0C(v6, type metadata accessor for StaticAccessory);
      if (v19)
      {
        *(v8 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_1D19E073C(v8, v26, v27, a1);
          goto LABEL_17;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v23 = swift_slowAlloc();
  v24 = sub_1D1BCEE08(v23, v8, a1, sub_1D1CCF6F0, 0);
  MEMORY[0x1D3893640](v23, -1, -1);
  result = v24;
LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v51 = *MEMORY[0x1E69E9840];
  v41 = type metadata accessor for StaticService(0);
  v45 = *(v41 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v48 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = (8 * v5);

  if (v4 > 0xD)
  {
    goto LABEL_34;
  }

  do
  {
    v39 = v5;
    v38 = &v38;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v40 = &v38 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v6);
    v5 = 0;
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    v42 = 0;
    v43 = v12;
    v44 = a1;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_14:
      v16 = v13 | (v5 << 6);
      v17 = *(a1 + 48);
      v18 = *(v45 + 72);
      v46 = v16;
      sub_1D1CD1AA4(v17 + v18 * v16, v48, type metadata accessor for StaticService);
      if (qword_1EC6423A0 != -1)
      {
        swift_once();
      }

      v19 = qword_1EC6BE1B8;
      if (!*(qword_1EC6BE1B8 + 16))
      {
        goto LABEL_6;
      }

      v20 = *(v48 + *(v41 + 104));
      v21 = *(qword_1EC6BE1B8 + 40);
      sub_1D1E6920C();
      v49 = v20;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v6 = &v50;
      v22 = sub_1D1E6926C();
      v23 = -1 << *(v19 + 32);
      v24 = v22 & ~v23;
      if ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v50 = *(*(v19 + 48) + v24);
          v49 = v20;
          v26 = ServiceKind.rawValue.getter();
          v28 = v27;
          v29 = ServiceKind.rawValue.getter();
          v6 = v30;
          if (v26 == v29 && v28 == v30)
          {
            break;
          }

          v32 = sub_1D1E6904C();

          if (v32)
          {
            goto LABEL_27;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_27:
        sub_1D1CD1B0C(v48, type metadata accessor for StaticService);
        *&v40[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        v12 = v43;
        v33 = __OFADD__(v42++, 1);
        a1 = v44;
        v11 = v47;
        if (v33)
        {
          goto LABEL_33;
        }
      }

      else
      {
LABEL_6:
        sub_1D1CD1B0C(v48, type metadata accessor for StaticService);
        v12 = v43;
        a1 = v44;
        v11 = v47;
      }
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        result = sub_1D19E0ED0(v40, v39, v42, a1);
        goto LABEL_31;
      }

      v15 = *(v8 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v47 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v36 = swift_slowAlloc();
  v37 = sub_1D1CD1A04(v36, v5, a1, sub_1D1CCFE30, 0, sub_1D19FAD04);
  MEMORY[0x1D3893640](v36, -1, -1);
  result = v37;
LABEL_31:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = 0;
  v47[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for StaticServiceGroup();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v46 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = v33 - v8;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
LABEL_32:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v31 = swift_slowAlloc();
      v32 = sub_1D1CD1A04(v31, v11, a1, sub_1D1CD037C, 0, sub_1D19FACB0);
      MEMORY[0x1D3893640](v31, -1, -1);
      result = v32;
      goto LABEL_28;
    }
  }

  v34 = v11;
  v33[1] = v2;
  v33[2] = v33;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v35 = v33 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v35, v12);
  v36 = 0;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v11 = (v15 + 63) >> 6;
  v2 = v45;
  v44 = v4;
  while (1)
  {
    while (1)
    {
      if (!v17)
      {
        v19 = v14;
        while (1)
        {
          v14 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_27;
          }

          v20 = *(a1 + 56 + 8 * v14);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v17 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      v21 = v18 | (v14 << 6);
      sub_1D1CD1AA4(*(a1 + 48) + v4[9] * v21, v2, type metadata accessor for StaticServiceGroup);
      v12 = v2;
      if (StaticServiceGroup.canBeToggled.getter())
      {
        break;
      }

      sub_1D1CD1B0C(v2, type metadata accessor for StaticServiceGroup);
    }

    v37 = v21;
    v22 = v46;
    sub_1D1CD1AA4(v2, v46, type metadata accessor for StaticServiceGroup);
    v2 = *(*(v22 + *(v3 + 56)) + 16);
    if (v2)
    {
      v43 = *(v22 + *(v3 + 56));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v23 = *(type metadata accessor for StaticService(0) - 8);
      v12 = *(v23 + 72);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v4 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size(v4);
      if (!v12)
      {
        goto LABEL_30;
      }

      if (v25 - v24 == 0x8000000000000000 && v12 == -1)
      {
        __break(1u);
      }

      v4[2] = v2;
      v4[3] = 2 * ((v25 - v24) / v12);
      v27 = sub_1D1804A58(v47, v4 + v24, v2, v43);
      v12 = v47[0];
      v41 = v47[1];
      v42 = v27;
      v39 = v47[3];
      v40 = v47[2];
      v38 = v47[4];

      sub_1D1716918();
      if (v42 != v2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D1CD1B0C(v46, type metadata accessor for StaticServiceGroup);
    v12 = v4[2];

    v2 = v45;
    sub_1D1CD1B0C(v45, type metadata accessor for StaticServiceGroup);
    v4 = v44;
    if (v12)
    {
      *&v35[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_27:
  result = sub_1D19E0C6C(v35, v34, v36, a1);
LABEL_28:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StaticMatterDevice.showAsInteractiveWidget.getter()
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice() + 32));
  if (*(v1 + 16))
  {
    v2 = sub_1D1A46E30(qword_1EC648718, v1) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1D1CCF798(uint64_t a1)
{
  if (qword_1EC642270 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *(v1 + *(a1 + 32));
  if (*(v2 + 16))
  {
    v3 = sub_1D1A46E30(qword_1EC648718, v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t Collection<>.interactiveWidgets.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  return sub_1D1E67A8C();
}

uint64_t sub_1D1CCF904(uint64_t a1)
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + *(type metadata accessor for StaticMatterDevice() + 32));
  if (*(v2 + 16))
  {
    v3 = sub_1D1A46E30(qword_1EC648718, v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1D1CCFE30(uint64_t a1)
{
  if (qword_1EC6423A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC6BE1B8;
  v3 = type metadata accessor for StaticService(0);
  return sub_1D171951C(*(a1 + *(v3 + 104)), v2) & 1;
}

uint64_t sub_1D1CD037C(uint64_t a1)
{
  v3 = type metadata accessor for StaticServiceGroup();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((StaticServiceGroup.canBeToggled.getter() & 1) == 0)
  {
    return 0;
  }

  sub_1D1CD1AA4(a1, v6, type metadata accessor for StaticServiceGroup);
  v7 = *&v6[*(v3 + 56)];
  v8 = v7[2];
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_7:
    sub_1D1CD1B0C(v6, type metadata accessor for StaticServiceGroup);
    v13 = *(v9 + 16);

    return v13 != 0;
  }

  v15[6] = v1;
  v9 = sub_1D18042C8(v8, 0);
  v10 = *(type metadata accessor for StaticService(0) - 8);
  v11 = sub_1D1804A58(v15, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v7);

  result = sub_1D1716918();
  if (v11 == v8)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1D1CD0534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v46 = type metadata accessor for StaticService(0);
  v6 = *(*(v46 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v49 = *(a1 + 16);
  if (v49)
  {
    v43 = v5;
    v12 = 0;
    v13 = *(v9 + 80);
    v48 = *(v9 + 72);
    v38 = (v13 + 32) & ~v13;
    v47 = a1 + v38;
    v42 = "00-8000-0026BB765291";
    v41 = 0x80000001D1EB3130;
    v40 = MEMORY[0x1E69E7CC0];
    v44 = &v38 - v10;
    while (1)
    {
      sub_1D1CD1AA4(v47 + v48 * v12, v11, type metadata accessor for StaticService);
      if (qword_1EC642398 != -1)
      {
        swift_once();
      }

      v14 = qword_1EC6BE1B0;
      if (*(qword_1EC6BE1B0 + 16))
      {
        v45 = *(v46 + 104);
        v15 = v11[v45];
        v16 = *(qword_1EC6BE1B0 + 40);
        sub_1D1E6920C();
        v50 = v15;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v17 = sub_1D1E6926C();
        v18 = -1 << *(v14 + 32);
        v19 = v17 & ~v18;
        if ((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = "takeSnaphotsWhenBusy";
            switch(*(*(v14 + 48) + v19))
            {
              case 1:
                v22 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 2:
                v22 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 3:
                v22 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 4:
                v22 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 5:
                v22 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 6:
                v22 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 7:
                v22 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 8:
                v22 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 9:
                v22 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xA:
                v22 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xB:
                v22 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xC:
                v22 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xD:
                v22 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xE:
                v22 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xF:
                v22 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x10:
                v22 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x11:
                v22 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x12:
                v22 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x13:
                v22 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x14:
                v22 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x15:
                v22 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x16:
                v22 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x17:
                v22 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x18:
                v21 = v42;
                break;
              case 0x19:
                v22 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1A:
                v22 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1B:
                v22 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1C:
                v22 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1D:
                v22 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1E:
                v22 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1F:
                v22 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x20:
                v22 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x21:
                v22 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x22:
                v22 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x23:
                v22 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x24:
                v22 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x25:
                v22 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x26:
                v22 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x27:
                v22 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x28:
                v22 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x29:
                v22 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2A:
                v22 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2B:
                v22 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2C:
                v22 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2D:
                v22 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2E:
                v22 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2F:
                v22 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x30:
                v22 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x31:
                v22 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x32:
                v22 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x33:
                v22 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x34:
                v22 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                v21 = (v22 - 32);
                break;
              default:
                break;
            }

            v23 = v21 | 0x8000000000000000;
            v24 = "takeSnaphotsWhenBusy";
            switch(v15)
            {
              case 1:
                v25 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 2:
                v25 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 3:
                v25 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 4:
                v25 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 5:
                v25 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 6:
                v25 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 7:
                v25 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 8:
                v25 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 9:
                v25 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 10:
                v25 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 11:
                v25 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 12:
                v25 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 13:
                v25 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 14:
                v25 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 15:
                v25 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 16:
                v25 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 17:
                v25 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 18:
                v25 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 19:
                v25 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 20:
                v25 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 21:
                v25 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 22:
                v25 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 23:
                v25 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 24:
                v24 = v42;
                break;
              case 25:
                v25 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 26:
                v25 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 27:
                v25 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 28:
                v25 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 29:
                v25 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 30:
                v25 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 31:
                v25 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 32:
                v25 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 33:
                v25 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 34:
                v25 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 35:
                v25 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 36:
                v25 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 37:
                v25 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 38:
                v25 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 39:
                v25 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 40:
                v25 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 41:
                v25 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 42:
                v25 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 43:
                v25 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 44:
                v25 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 45:
                v25 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 46:
                v25 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 47:
                v25 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 48:
                v25 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 49:
                v25 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 50:
                v25 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 51:
                v25 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 52:
                v25 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                v24 = (v25 - 32);
                break;
              default:
                break;
            }

            if (v23 == (v24 | 0x8000000000000000))
            {
              break;
            }

            v26 = sub_1D1E6904C();

            if (v26)
            {
              goto LABEL_124;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v14 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_122;
            }
          }

LABEL_124:
          v27 = v43;
          v11 = v44;
          sub_1D17783E0(&v44[*(v46 + 116)], v43);
          v28 = sub_1D1E66A7C();
          if ((*(*(v28 - 8) + 48))(v27, 1, v28) != 1)
          {
            sub_1D1CD1B0C(v11, type metadata accessor for StaticService);
            sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
            goto LABEL_5;
          }

          sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
          if (StaticService.canBeToggled.getter())
          {
            v51 = v11[v45];
            if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v41 == v29)
            {
            }

            else
            {
              v30 = sub_1D1E6904C();

              if ((v30 & 1) == 0)
              {
                sub_1D17978CC(v11, v39);
                v31 = v40;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v33 = v31;
                v52 = v31;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D17915E0(0, *(v31 + 16) + 1, 1);
                  v33 = v52;
                }

                v35 = *(v33 + 16);
                v34 = *(v33 + 24);
                if (v35 >= v34 >> 1)
                {
                  sub_1D17915E0(v34 > 1, v35 + 1, 1);
                  v33 = v52;
                }

                *(v33 + 16) = v35 + 1;
                v40 = v33;
                sub_1D17978CC(v39, v33 + v38 + v35 * v48);
                goto LABEL_5;
              }
            }
          }
        }

        else
        {
LABEL_122:
          v11 = v44;
        }
      }

      sub_1D1CD1B0C(v11, type metadata accessor for StaticService);
LABEL_5:
      if (++v12 == v49)
      {
        v36 = *(v40 + 16);

        return v36 == 0;
      }
    }
  }

  return 1;
}

BOOL Collection<>.widgetBehavior.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1E6827C())
  {
    return 1;
  }

  (*(v5 + 16))(v8, v2, a1);
  v10 = *(a2 + 8);
  v11 = *(sub_1D1E67A8C() + 16);

  return v11 == 0;
}

{
  v2 = *(a2 + 8);
  return (sub_1D1E67A3C() & 1) == 0;
}

{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1E6827C())
  {
    return 1;
  }

  (*(v5 + 16))(v8, v2, a1);
  v10 = *(a2 + 8);
  v11 = sub_1D1E67A8C();
  if (v11 >> 62)
  {
    v12 = sub_1D1E6873C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 == 0;
}

uint64_t sub_1D1CD1084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC6BE1B0;
  v7 = type metadata accessor for StaticService(0);
  v8 = *(v7 + 104);
  if (sub_1D171951C(*(a1 + v8), v6))
  {
    sub_1D17783E0(a1 + *(v7 + 116), v5);
    v9 = sub_1D1E66A7C();
    v10 = (*(*(v9 - 8) + 48))(v5, 1, v9);
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    if (v10 == 1 && StaticService.canBeToggled.getter())
    {
      v15[15] = *(a1 + v8);
      if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3130 != v11)
      {
        v14 = sub_1D1E6904C();

        v12 = v14 ^ 1;
        return v12 & 1;
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

BOOL StaticAccessory.isTelevision.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 96));
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  v4 = v1[1];

  v5 = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v3, v2);
  if (v5 == 36)
  {
    return 0;
  }

  return sub_1D17C5F88(v5, &unk_1F4D64DD8);
}

uint64_t StaticAccessory.widgetBehavior.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28[-v3];
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StaticAccessory(0);
  v11 = v10;
  v12 = (v0 + *(v10 + 92));
  v13 = *(v12 + 8);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (*(v0 + *(v10 + 76)))
      {
        goto LABEL_18;
      }

      v15 = 1;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v13 < 2 || (v14 = *v12, (v14 & 1) == 0))
  {
LABEL_7:
    if (*(v0 + *(v10 + 76)))
    {
      goto LABEL_15;
    }

    v15 = 0;
LABEL_11:
    if (!StaticAccessory.hasVisibleServices(minCount:)(2))
    {
      goto LABEL_17;
    }

    v16 = (v0 + *(v11 + 96));
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v19 = v16[1];

      v20 = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v18, v17);
      if (v20 != 36 && (v15 & sub_1D17C5F88(v20, &unk_1F4D64DD8) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v21 = 1;
    return v21 & 1;
  }

  v15 = (v14 & 0x100) == 0;
  if ((*(v0 + *(v10 + 76)) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_18:
  StaticAccessory.primaryStaticService.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v23 = sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    v24 = *(v0 + *(v11 + 84));
    MEMORY[0x1EEE9AC00](v23);
    *&v28[-16] = v0;
    v26 = sub_1D17868B8(sub_1D1820ECC, &v28[-32], v25);
    v21 = sub_1D1CD0534(v26);
  }

  else
  {
    sub_1D17978CC(v4, v9);
    v27 = StaticService.canBeToggled.getter();
    sub_1D1CD1B0C(v9, type metadata accessor for StaticService);
    v21 = !v27;
  }

  return v21 & 1;
}

uint64_t StateSnapshot.WidgetTileBehavior.hashValue.getter(char a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1 & 1);
  return sub_1D1E6926C();
}

uint64_t StateSnapshot.allWidgetTileInfos(nativeMatterDevices:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileInfoBearerCollection(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  sub_1D1CD1AA4(v2, v7, type metadata accessor for StateSnapshot);

  TileInfoBearerCollection.init(from:nativeMatterDevices:)(v7, a1, v15);
  *&v15[*(v9 + 44)] = 86;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D178DCC4(0, 0, 0);
  v16 = v35;
  sub_1D1CD1AA4(v15, v13, type metadata accessor for TileInfoBearerCollection);
  v17 = sub_1D1C6406C();
  result = sub_1D1CD1B0C(v13, type metadata accessor for TileInfoBearerCollection);
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v17 + 32;
    while (v20 < *(v17 + 16))
    {
      sub_1D17419CC(v21, v33);
      v22 = v34;
      v23 = __swift_project_boxed_opaque_existential_1(v33, v34);
      v24 = *(v22[-1].Description + 8);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      AnyTileInfoBearer.init<A>(_:)(v26, v22, &v32);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      v28 = v32;
      v35 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = v32;
        result = sub_1D178DCC4((v29 > 1), v30 + 1, 1);
        v28 = v31;
        v16 = v35;
      }

      ++v20;
      *(v16 + 16) = v30 + 1;
      *(v16 + 16 * v30 + 32) = v28;
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1D1CD1B0C(v15, type metadata accessor for TileInfoBearerCollection);

    return v16;
  }

  return result;
}

void *sub_1D1CD1A04(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_1D1CD1AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CD1B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1CD1B70()
{
  result = qword_1EC64D008;
  if (!qword_1EC64D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D008);
  }

  return result;
}

uint64_t StaticCharacteristic.BOOLValue.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCharacteristic() + 24));
  v2 = *v1;
  v3 = *(v1 + 16);
  result = 2;
  if (v3 <= 2)
  {
    goto LABEL_6;
  }

  if (v3 > 4)
  {
    if (v3 != 5 && v3 != 6)
    {
      return result;
    }

    v2 = v2;
  }

  else if (v3 == 3)
  {
    v2 = v2;
  }

  else if (v2 < 0)
  {
    __break(1u);
LABEL_6:
    switch(v3)
    {
      case 0:
        return v2 & 1;
      case 1:
        v2 = v2;
        break;
      case 2:
        v2 = v2;
        break;
      default:
        return result;
    }
  }

  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticCharacteristic.intValue.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCharacteristic() + 24));
  result = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 3)
  {
    v4 = result;
    v5 = result;
    v6 = result;
    if (v3 != 3)
    {
      v6 = 0;
    }

    if (v3 != 2)
    {
      v5 = v6;
    }

    v7 = v3 == 1;
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    v4 = result;
    if (v3 == 5)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v7 = v3 == 6;
LABEL_12:
    if (v7)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t StaticCharacteristic.floatValue.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCharacteristic() + 24));
  if (v1[16] == 7)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

HomeDataModel::StaticCharacteristic::LoadingState::Error __swiftcall StaticCharacteristic.LoadingState.Error.init(code:domain:)(Swift::Int code, Swift::String domain)
{
  *v2 = code;
  *(v2 + 8) = domain;
  result.domain = domain;
  result.code = code;
  return result;
}

uint64_t StaticCharacteristic.init(from:value:loadingState:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v121 = sub_1D1E669FC();
  v118 = *(v121 - 8);
  v7 = *(v118 + 64);
  v8 = MEMORY[0x1EEE9AC00](v121);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v103 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v102 - v13;
  v15 = sub_1D1E66A7C();
  *&v120 = *(v15 - 8);
  v16 = *(v120 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v102 - v19;
  v21 = *a3;
  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  v24 = *(a3 + 24);
  v25 = [a1 service];
  if (v25)
  {
    v102 = v10;
    v108 = v25;
    v115 = v21;
    v116 = v22;
    v114 = v15;
    *&v117 = a2;
    static CharacteristicKind.Value.typedValue(for:value:)(a1, a2, &v123);
    v26 = v24;
    v27 = v20;
    v107 = v123;
    if (v124 == 255)
    {
      v28 = 0;
    }

    else
    {
      v28 = v123;
    }

    v106 = *(&v123 + 1);
    if (v124 == 255)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(&v123 + 1);
    }

    v30 = v23;
    v105 = v124;
    if (v124 == 255)
    {
      v31 = 11;
    }

    else
    {
      v31 = v124;
    }

    v32 = [a1 uniqueIdentifier];
    v110 = v27;
    sub_1D1E66A5C();

    v33 = [a1 characteristicType];
    v34 = sub_1D1E6781C();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    CharacteristicKind.init(rawValue:)(v37);
    v38 = v123;
    if (v123 == 174)
    {
      v38 = 0;
    }

    v104 = v38;
    v112 = v28;
    v111 = v29;
    v39 = v29;
    v40 = v30;
    v109 = v31;
    sub_1D1778244(v28, v39, v31);
    v41 = [a1 valueUpdatedTime];
    sub_1D1E669BC();

    v113 = v14;
    v42 = v122;
    v43 = v118;
    if (v26 == 255)
    {
      v44 = [a1 valueUpdatedTime];
      v45 = v103;
      sub_1D1E669BC();

      v46 = [a1 notificationEnabledTime];
      v47 = v102;
      sub_1D1E669BC();

      LOBYTE(v46) = sub_1D1E6695C();
      v48 = *(v43 + 8);
      v49 = v47;
      v50 = v121;
      v48(v49, v121);
      v48(v45, v50);
      v40 = 0;
      v115 = v46 & 1;
      v116 = 0;
      v26 = 3;
    }

    LODWORD(v118) = v26;
    v51 = [a1 properties];
    v52 = sub_1D1E67C1C();

    v126[0] = 0;
    v53 = *(v52 + 16);
    if (!v53)
    {
LABEL_20:

      v55 = v108;
      v56 = [v108 uniqueIdentifier];
      v57 = v119;
      sub_1D1E66A5C();

      v58 = [a1 metadata];
      LOBYTE(v126[0]) = 11;
      sub_1D1CDADF0(v58, v126, &v123);

      sub_1D1778270(v107, v106, v105);
      sub_1D1741A30(v117, &qword_1EC649700, &qword_1D1E6E910);
      v59 = v125;
      v60 = *(v120 + 32);
      v120 = v123;
      v117 = v124;
      v61 = v114;
      v60(v42, v110, v114);
      v62 = type metadata accessor for StaticCharacteristic();
      *(v42 + v62[5]) = v104;
      v63 = v42 + v62[6];
      v64 = v111;
      *v63 = v112;
      *(v63 + 8) = v64;
      *(v63 + 16) = v109;
      (*(v43 + 32))(v42 + v62[7], v113, v121);
      v65 = v42 + v62[8];
      v66 = v116;
      *v65 = v115;
      *(v65 + 8) = v66;
      *(v65 + 16) = v40;
      *(v65 + 24) = v118;
      *(v42 + v62[9]) = v53;
      v60(v42 + v62[10], v57, v61);
      v67 = v42 + v62[11];
      v68 = v117;
      *v67 = v120;
      *(v67 + 16) = v68;
      *(v67 + 32) = v59;
      return (*(*(v62 - 1) + 56))(v42, 0, 1, v62);
    }

    v15 = 0;
    a2 = (v52 + 40);
    while (v15 < *(v52 + 16))
    {
      ++v15;
      v54 = *a2;
      *&v123 = *(a2 - 1);
      *(&v123 + 1) = v54;
      sub_1D18C99CC(v126, &v123);
      a2 += 2;
      if (v53 == v15)
      {
        v53 = v126[0];
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_1D1B0C0CC(v21, v22, v23, v24);
  if (qword_1EE07B5D0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v70 = sub_1D1E6709C();
  __swift_project_value_buffer(v70, qword_1EE07B5D8);
  sub_1D1741C08(a2, &v123, &qword_1EC649700, &qword_1D1E6E910);
  v71 = a1;
  v72 = sub_1D1E6707C();
  v73 = sub_1D1E6833C();

  v74 = os_log_type_enabled(v72, v73);
  v75 = v122;
  if (v74)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v117 = a2;
    v78 = v77;
    v127 = v77;
    *v76 = 136315906;
    *(v76 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EC8240, &v127);
    *(v76 + 12) = 2080;
    sub_1D1741C08(&v123, v126, &qword_1EC649700, &qword_1D1E6E910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    v79 = sub_1D1E6789C();
    v81 = v80;
    sub_1D1741A30(&v123, &qword_1EC649700, &qword_1D1E6E910);
    v82 = sub_1D1B1312C(v79, v81, &v127);

    *(v76 + 14) = v82;
    *(v76 + 22) = 2080;
    v83 = [v71 characteristicType];
    v84 = sub_1D1E6781C();
    v85 = v15;
    v87 = v86;

    v88._countAndFlagsBits = v84;
    v88._object = v87;
    CharacteristicKind.init(rawValue:)(v88);
    v89 = v126[0];
    if (LOBYTE(v126[0]) == 174)
    {
      v89 = 0;
    }

    LOBYTE(v126[0]) = v89;
    v90 = sub_1D1E6789C();
    v92 = sub_1D1B1312C(v90, v91, &v127);

    *(v76 + 24) = v92;
    *(v76 + 32) = 2080;
    v93 = [v71 uniqueIdentifier];
    v94 = v119;
    sub_1D1E66A5C();

    sub_1D1CD94A0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v95 = sub_1D1E68FAC();
    v97 = v96;
    (*(v120 + 8))(v94, v85);
    v98 = sub_1D1B1312C(v95, v97, &v127);

    *(v76 + 34) = v98;
    _os_log_impl(&dword_1D16EC000, v72, v73, "%s unable to slurp value %s (missing service) for characteristic %s (%s)", v76, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v78, -1, -1);
    v99 = v76;
    v75 = v122;
    MEMORY[0x1D3893640](v99, -1, -1);

    v100 = v117;
  }

  else
  {

    sub_1D1741A30(a2, &qword_1EC649700, &qword_1D1E6E910);
    v100 = &v123;
  }

  sub_1D1741A30(v100, &qword_1EC649700, &qword_1D1E6E910);
  v101 = type metadata accessor for StaticCharacteristic();
  return (*(*(v101 - 8) + 56))(v75, 1, 1, v101);
}

uint64_t StaticCharacteristic.copyReplacing(id:characteristicKind:typedValue:lastValueUpdate:loadingState:properties:serviceId:metadata:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v99 = a4;
  v94 = a7;
  v95 = a1;
  v97 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v83[-v16];
  v18 = sub_1D1E669FC();
  v110 = *(v18 - 8);
  v111 = v18;
  v19 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v83[-v25];
  v27 = sub_1D1E66A7C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v108 = &v83[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v83[-v32];
  v34 = *a2;
  v35 = *(a3 + 8);
  v101 = *a3;
  v102 = v35;
  v36 = *(a3 + 16);
  v37 = *(a5 + 8);
  v89 = *a5;
  v90 = v37;
  v91 = *(a5 + 16);
  v92 = *(a5 + 24);
  v100 = *a6;
  v84 = *(a6 + 8);
  v38 = *a8;
  v106 = a8[1];
  v107 = v38;
  v39 = a8[2];
  v104 = a8[3];
  v105 = v39;
  v103 = a8[4];
  sub_1D1741C08(v95, v26, &qword_1EC642590, qword_1D1E71260);
  v40 = *(v28 + 48);
  v41 = v40(v26, 1, v27);
  v96 = v33;
  v85 = v40;
  if (v41 == 1)
  {
    v42 = v33;
    v43 = v98;
    (*(v28 + 16))(v42, v98, v27);
    if (v40(v26, 1, v27) != 1)
    {
      sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v28 + 32))(v33, v26, v27);
    v43 = v98;
  }

  if (v34 == 174)
  {
    v34 = *(v43 + *(type metadata accessor for StaticCharacteristic() + 20));
  }

  LODWORD(v95) = v34;
  v44 = v101;
  v45 = v102;
  v46 = v36;
  v47 = v110;
  if (v36 == 255)
  {
    v48 = v43 + *(type metadata accessor for StaticCharacteristic() + 24);
    v44 = *v48;
    v45 = *(v48 + 8);
    v46 = *(v48 + 16);
    sub_1D1778244(*v48, v45, *(v48 + 16));
  }

  v86 = v46;
  v87 = v45;
  v88 = v44;
  sub_1D1741C08(v99, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v49 = *(v47 + 48);
  v50 = v111;
  if (v49(v17, 1, v111) == 1)
  {
    v51 = type metadata accessor for StaticCharacteristic();
    v52 = *(v47 + 16);
    v53 = v43;
    v52(v109, v43 + *(v51 + 28), v50);
    v54 = v49(v17, 1, v50);
    sub_1D1CD8B4C(v101, v102, v36);
    v55 = v54 == 1;
    v56 = v85;
    if (!v55)
    {
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    (*(v47 + 32))(v109, v17, v50);
    sub_1D1CD8B4C(v101, v102, v36);
    v53 = v43;
    v56 = v85;
  }

  v57 = v89;
  v102 = v89;
  v58 = v90;
  v101 = v90;
  v59 = v91;
  v99 = v91;
  v60 = v92;
  LODWORD(v98) = v92;
  v61 = v93;
  if (v92 == 255)
  {
    v62 = v53 + *(type metadata accessor for StaticCharacteristic() + 32);
    v63 = *v62;
    v64 = *(v62 + 16);
    v65 = *(v62 + 24);
    v101 = *(v62 + 8);
    v102 = v63;
    v99 = v64;
    LODWORD(v98) = v65;
    sub_1D17418FC(v63, v101, v64, v65);
  }

  if (v84)
  {
    v100 = *(v53 + *(type metadata accessor for StaticCharacteristic() + 36));
  }

  sub_1D1741C08(v94, v61, &qword_1EC642590, qword_1D1E71260);
  if (v56(v61, 1, v27) == 1)
  {
    v66 = type metadata accessor for StaticCharacteristic();
    (*(v28 + 16))(v108, v53 + *(v66 + 40), v27);
    v67 = v56(v61, 1, v27);
    sub_1D1CD8B60(v57, v58, v59, v60);
    if (v67 != 1)
    {
      sub_1D1741A30(v61, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v28 + 32))(v108, v61, v27);
    sub_1D1CD8B60(v57, v58, v59, v60);
  }

  v69 = v104;
  v68 = v105;
  v71 = v106;
  v70 = v107;
  v72 = v103;
  if (v104 >> 8 == 0xFFFFFFFF)
  {
    v73 = (v53 + *(type metadata accessor for StaticCharacteristic() + 44));
    v70 = *v73;
    v71 = v73[1];
    v68 = v73[2];
    v69 = v73[3];
    v72 = v73[4];
    sub_1D18F323C(*v73, v71, v68, v69);
  }

  v74 = *(v28 + 32);
  v75 = v97;
  v74(v97, v96, v27);
  v76 = type metadata accessor for StaticCharacteristic();
  *(v75 + v76[5]) = v95;
  v77 = v75 + v76[6];
  v78 = v87;
  *v77 = v88;
  *(v77 + 8) = v78;
  *(v77 + 16) = v86;
  (*(v110 + 32))(v75 + v76[7], v109, v111);
  v79 = v75 + v76[8];
  v80 = v101;
  *v79 = v102;
  *(v79 + 8) = v80;
  *(v79 + 16) = v99;
  *(v79 + 24) = v98;
  *(v75 + v76[9]) = v100;
  v74(v75 + v76[10], v108, v27);
  v81 = (v75 + v76[11]);
  *v81 = v70;
  v81[1] = v71;
  v81[2] = v68;
  v81[3] = v69;
  v81[4] = v72;
  return sub_1D18F323C(v107, v106, v105, v104);
}

uint64_t StaticCharacteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCharacteristic.characteristicKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCharacteristic();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t StaticCharacteristic.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCharacteristic() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D1778244(v4, v5, v6);
}

uint64_t StaticCharacteristic.lastValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCharacteristic() + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticCharacteristic.loadingState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCharacteristic() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_1D17418FC(v4, v5, v6, v7);
}

uint64_t StaticCharacteristic.properties.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticCharacteristic();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StaticCharacteristic.serviceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCharacteristic() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticCharacteristic.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticCharacteristic() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D18F323C(v4, v5, v6, v7);
}

unint64_t sub_1D1CD31D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4965636976726573;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x53676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x69747265706F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C61566465707974;
  if (v1 != 2)
  {
    v5 = 0x756C61567473616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CD32F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CDA34C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CD3318(uint64_t a1)
{
  v2 = sub_1D1CD8B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD3354(uint64_t a1)
{
  v2 = sub_1D1CD8B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D028, &qword_1D1EA3998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8B74();
  sub_1D1E6930C();
  LOBYTE(v27) = 0;
  sub_1D1E66A7C();
  sub_1D1CD94A0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticCharacteristic();
    LOBYTE(v27) = *(v3 + v11[5]);
    v32 = 1;
    sub_1D1CD8BC8();
    sub_1D1E68F1C();
    v12 = v3 + v11[6];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v27 = *v12;
    v28 = v13;
    LOBYTE(v29) = v14;
    v32 = 2;
    sub_1D1778244(v27, v13, v14);
    sub_1D1CD8C1C();
    sub_1D1E68F1C();
    sub_1D1778284(v27, v28, v29);
    v26 = v11[7];
    LOBYTE(v27) = 3;
    sub_1D1E669FC();
    sub_1D1CD94A0(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68F1C();
    v15 = v3 + v11[8];
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v27 = *v15;
    v28 = v16;
    v29 = v17;
    LOBYTE(v30) = v18;
    v32 = 4;
    sub_1D17418FC(v27, v16, v17, v18);
    sub_1D1CD8C70();
    sub_1D1E68F1C();
    sub_1D1757A60(v27, v28, v29, v30);
    v27 = *(v3 + v11[9]);
    v32 = 5;
    sub_1D1CD8CC4();
    sub_1D1E68F1C();
    v19 = v11[10];
    LOBYTE(v27) = 6;
    sub_1D1E68F1C();
    v20 = (v3 + v11[11]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v27 = *v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = 7;
    sub_1D18F323C(v27, v21, v22, v23);
    sub_1D1CD8D18();
    sub_1D1E68E5C();
    sub_1D18F3260(v27, v28, v29, v30);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticCharacteristic.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D1CD94A0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for StaticCharacteristic();
  v23 = *(v1 + v4[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v5 = (v1 + v4[6]);
  v24 = *v5;
  v25 = *(v5 + 16);
  CharacteristicKind.Value.hash(into:)();
  v6 = v4[7];
  sub_1D1E669FC();
  sub_1D1CD94A0(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v7 = (v2 + v4[8]);
  v8 = *v7;
  if (*(v7 + 24) > 1u)
  {
    v10 = v7[1];
    v11 = v7[2];
    if (*(v7 + 24) == 2)
    {
      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v8);
      sub_1D1E678EC();
      goto LABEL_15;
    }

    if (v11 | v10 | v8)
    {
      if (v8 != 1 || v11 | v10)
      {
        v12 = 5;
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (*(v7 + 24))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    MEMORY[0x1D3892850](v9);
    v12 = v8 & 1;
  }

  MEMORY[0x1D3892850](v12);
LABEL_15:
  MEMORY[0x1D3892850](*(v2 + v4[9]));
  v13 = v2 + v4[10];
  sub_1D1E676EC();
  v14 = (v2 + v4[11]);
  v15 = v14[3];
  if (v15 >> 8 == 0xFFFFFFFF)
  {
    return sub_1D1E6922C();
  }

  v17 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  v20 = v14[4];
  sub_1D1E6922C();
  v21 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v21 == 2)
    {
      MEMORY[0x1D3892850](2);
      v22 = v17;
    }

    else
    {
      v22 = 3;
    }

    return MEMORY[0x1D3892850](v22);
  }

  else if (v21)
  {
    MEMORY[0x1D3892850](1);
    return StaticCharacteristicMetadata.FloatMetadata.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    return StaticCharacteristicMetadata.IntMetadata.hash(into:)();
  }
}

uint64_t StaticCharacteristic.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1D1E669FC();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E66A7C();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v45 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D060, &qword_1D1EA39A0);
  v53 = *(v56 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v14 = v45 - v13;
  v15 = type metadata accessor for StaticCharacteristic();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8B74();
  v55 = v14;
  v20 = v57;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v10;
  v21 = v15;
  v47 = v18;
  v22 = v52;
  LOBYTE(v58) = 0;
  v23 = sub_1D1CD94A0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v24 = v6;
  v25 = *(v22 + 32);
  v26 = v47;
  v27 = v54;
  v54 = v24;
  v25(v47, v27);
  v61 = 1;
  sub_1D1CD8D6C();
  sub_1D1E68D7C();
  v26[v21[5]] = v58;
  v61 = 2;
  sub_1D1CD8DC0();
  sub_1D1E68D7C();
  v45[1] = v23;
  v46 = a1;
  v28 = v59;
  v29 = &v26[v21[6]];
  *v29 = v58;
  v29[16] = v28;
  LOBYTE(v58) = 3;
  sub_1D1CD94A0(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  v30 = v49;
  v31 = v51;
  sub_1D1E68D7C();
  (*(v50 + 32))(&v47[v21[7]], v30, v31);
  v61 = 4;
  sub_1D1CD8E14();
  sub_1D1E68D7C();
  v32 = v59;
  v33 = BYTE8(v59);
  v34 = v47;
  v35 = &v47[v21[8]];
  *v35 = v58;
  *(v35 + 2) = v32;
  v35[24] = v33;
  v61 = 5;
  sub_1D1CD8E68();
  sub_1D1E68D7C();
  v36 = v53;
  v37 = v57;
  *&v34[v21[9]] = v58;
  LOBYTE(v58) = 6;
  v38 = v54;
  sub_1D1E68D7C();
  (v25)(&v47[v21[10]], v37, v38);
  v61 = 7;
  sub_1D1CD8EBC();
  sub_1D1E68CBC();
  (*(v36 + 8))(v55, v56);
  v39 = v60;
  v41 = v47;
  v40 = v48;
  v42 = &v47[v21[11]];
  v43 = v59;
  *v42 = v58;
  *(v42 + 1) = v43;
  *(v42 + 4) = v39;
  sub_1D18F3284(v41, v40);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_1D1CD8F10(v41);
}

uint64_t sub_1D1CD42B8()
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD42FC()
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.error.getter()
{
  if (*(v0 + 24) != 2)
  {
    return 0;
  }

  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *MEMORY[0x1E696CA80];
  if (v1 == sub_1D1E6781C() && v3 == v5)
  {
  }

  else
  {
    v7 = sub_1D1E6904C();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for HMError(0);
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1CD94A0(&qword_1EC6428A0, type metadata accessor for HMError);
  sub_1D1E6654C();
  return v9;
}

uint64_t sub_1D1CD44B0()
{
  if (*v0)
  {
    result = 0x6D617246656D6F68;
  }

  else
  {
    result = 0x65646F4D61746164;
  }

  *v0;
  return result;
}

uint64_t sub_1D1CD44FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F4D61746164 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617246656D6F68 && a2 == 0xED00006B726F7765)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1CD45E8(uint64_t a1)
{
  v2 = sub_1D1CD8F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD4624(uint64_t a1)
{
  v2 = sub_1D1CD8F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD4660(uint64_t a1)
{
  v2 = sub_1D1CD9014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD469C(uint64_t a1)
{
  v2 = sub_1D1CD9014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD46D8(uint64_t a1)
{
  v2 = sub_1D1CD8FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD4714(uint64_t a1)
{
  v2 = sub_1D1CD8FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D090, &qword_1D1EA39A8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D098, &qword_1D1EA39B0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0A0, &qword_1D1EA39B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8F6C();
  sub_1D1E6930C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D1CD8FC0();
    v18 = v22;
    sub_1D1E68DFC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D1CD9014();
    sub_1D1E68DFC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t StaticCharacteristic.LoadingState.Source.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.Source.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0C0, &qword_1D1EA39C0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0C8, &qword_1D1EA39C8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0D0, &unk_1D1EA39D0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8F6C();
  v16 = v36;
  sub_1D1E692FC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D18085D0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v26 = &type metadata for StaticCharacteristic.LoadingState.Source;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D1CD8FC0();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D1CD9014();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t static StaticCharacteristic.LoadingState.Error.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1CD4FA8()
{
  if (*v0)
  {
    result = 0x6E69616D6F64;
  }

  else
  {
    result = 1701080931;
  }

  *v0;
  return result;
}

uint64_t sub_1D1CD4FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1CD50B0(uint64_t a1)
{
  v2 = sub_1D1CD9068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD50EC(uint64_t a1)
{
  v2 = sub_1D1CD9068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.Error.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0D8, &qword_1D1EA39E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD9068();
  sub_1D1E6930C();
  v15 = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    v14 = 1;
    sub_1D1E68ECC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticCharacteristic.LoadingState.Error.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1D3892850](*v0);

  return sub_1D1E678EC();
}

uint64_t StaticCharacteristic.LoadingState.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.Error.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0E8, &qword_1D1EA39E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD9068();
  sub_1D1E692FC();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D1E68D5C();
    v17 = 1;
    v13 = sub_1D1E68D2C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CD5518(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1CD5560()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD55C4()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1D3892850](*v0);

  return sub_1D1E678EC();
}

uint64_t sub_1D1CD5618()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD56A8()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x726F727265;
  v4 = 0x7964616572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72506E4964616572;
  if (v1 != 1)
  {
    v5 = 0x506E496574697277;
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

uint64_t sub_1D1CD5778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CDA600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CD57A0(uint64_t a1)
{
  v2 = sub_1D1CD90BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD57DC(uint64_t a1)
{
  v2 = sub_1D1CD90BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5818(uint64_t a1)
{
  v2 = sub_1D1CD91B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5854(uint64_t a1)
{
  v2 = sub_1D1CD91B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5890(uint64_t a1)
{
  v2 = sub_1D1CD935C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD58CC(uint64_t a1)
{
  v2 = sub_1D1CD935C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5908(uint64_t a1)
{
  v2 = sub_1D1CD9308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5944(uint64_t a1)
{
  v2 = sub_1D1CD9308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5980(uint64_t a1)
{
  v2 = sub_1D1CD9164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD59BC(uint64_t a1)
{
  v2 = sub_1D1CD9164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD59F8(uint64_t a1)
{
  v2 = sub_1D1CD9110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5A34(uint64_t a1)
{
  v2 = sub_1D1CD9110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5A70(uint64_t a1)
{
  v2 = sub_1D1CD9260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5AAC(uint64_t a1)
{
  v2 = sub_1D1CD9260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0F0, &qword_1D1EA39F0);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0F8, &qword_1D1EA39F8);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D100, &qword_1D1EA3A00);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D108, &qword_1D1EA3A08);
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D110, &qword_1D1EA3A10);
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D118, &qword_1D1EA3A18);
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D120, &qword_1D1EA3A20);
  v63 = *(v23 - 8);
  v64 = v23;
  v24 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v1[1];
  v62 = *v1;
  v26 = v1[2];
  v27 = *(v1 + 24);
  v28 = a1[3];
  v29 = a1[4];
  v30 = a1;
  v32 = &v45 - v31;
  __swift_project_boxed_opaque_existential_1(v30, v28);
  sub_1D1CD90BC();
  sub_1D1E6930C();
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      LOBYTE(v65) = 3;
      sub_1D1CD91B8();
      v35 = v59;
      v36 = v32;
      v37 = v64;
      sub_1D1E68DFC();
      v65 = v62;
      v66 = v25;
      v67 = v26;
      sub_1D1CD920C();
      v38 = v61;
      sub_1D1E68F1C();
      (*(v60 + 8))(v35, v38);
      return (*(v63 + 8))(v36, v37);
    }

    if (v26 | v25 | v62)
    {
      if (v62 != 1 || v26 | v25)
      {
        LOBYTE(v65) = 5;
        sub_1D1CD9110();
        v42 = v49;
        v33 = v64;
        sub_1D1E68DFC();
        v44 = v50;
        v43 = v51;
      }

      else
      {
        LOBYTE(v65) = 4;
        sub_1D1CD9164();
        v42 = v46;
        v33 = v64;
        sub_1D1E68DFC();
        v44 = v47;
        v43 = v48;
      }

      (*(v44 + 8))(v42, v43);
    }

    else
    {
      LOBYTE(v65) = 0;
      sub_1D1CD935C();
      v33 = v64;
      sub_1D1E68DFC();
      (*(v52 + 8))(v22, v53);
    }
  }

  else if (v27)
  {
    LOBYTE(v65) = 2;
    sub_1D1CD9260();
    v40 = v56;
    v33 = v64;
    sub_1D1E68DFC();
    LOBYTE(v65) = v62 & 1;
    sub_1D1CD92B4();
    v41 = v58;
    sub_1D1E68F1C();
    (*(v57 + 8))(v40, v41);
  }

  else
  {
    LOBYTE(v65) = 1;
    sub_1D1CD9308();
    v33 = v64;
    sub_1D1E68DFC();
    LOBYTE(v65) = v62 & 1;
    sub_1D1CD92B4();
    v34 = v55;
    sub_1D1E68F1C();
    (*(v54 + 8))(v18, v34);
  }

  return (*(v63 + 8))(v32, v33);
}

uint64_t StaticCharacteristic.LoadingState.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 24) <= 1u)
  {
    if (*(v0 + 24))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    MEMORY[0x1D3892850](v2);
    v6 = v1 & 1;
    return MEMORY[0x1D3892850](v6);
  }

  v3 = v0[1];
  v4 = v0[2];
  if (*(v0 + 24) != 2)
  {
    if (v4 | v3 | v1)
    {
      if (v1 == 1 && (v4 | v3) == 0)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x1D3892850](v6);
  }

  MEMORY[0x1D3892850](3);
  MEMORY[0x1D3892850](v1);

  return sub_1D1E678EC();
}

uint64_t StaticCharacteristic.LoadingState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    MEMORY[0x1D3892850](v5);
    v6 = v1 & 1;
LABEL_8:
    MEMORY[0x1D3892850](v6);
    return sub_1D1E6926C();
  }

  if (v4 != 2)
  {
    if (v3 | v2 | v1)
    {
      if (v1 != 1 || v3 | v2)
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  MEMORY[0x1D3892850](3);
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D170, &qword_1D1EA3A28);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v56 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D178, &qword_1D1EA3A30);
  v67 = *(v62 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v73 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D180, &qword_1D1EA3A38);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D188, &qword_1D1EA3A40);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D190, &qword_1D1EA3A48);
  v60 = *(v61 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D198, &qword_1D1EA3A50);
  v59 = *(v18 - 8);
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D1A0, &qword_1D1EA3A58);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v56 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D1CD90BC();
  v29 = v75;
  sub_1D1E692FC();
  if (!v29)
  {
    v30 = v21;
    v57 = v18;
    v58 = v17;
    v32 = v72;
    v31 = v73;
    v33 = v74;
    v75 = v23;
    v34 = v26;
    v35 = sub_1D1E68DDC();
    v36 = (2 * *(v35 + 16)) | 1;
    v79 = v35;
    v80 = v35 + 32;
    v81 = 0;
    v82 = v36;
    v37 = sub_1D18085D8();
    if (v37 == 6 || v81 != v82 >> 1)
    {
      v40 = sub_1D1E688EC();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v42 = &type metadata for StaticCharacteristic.LoadingState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v75 + 8))(v26, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37 > 2u)
      {
        if (v37 == 3)
        {
          LOBYTE(v76) = 3;
          sub_1D1CD91B8();
          v45 = v26;
          sub_1D1E68C4C();
          v55 = v71;
          sub_1D1CD93B0();
          v46 = v65;
          sub_1D1E68D7C();
          (*(v66 + 8))(v32, v46);
          (*(v75 + 8))(v45, v22);
          swift_unknownObjectRelease();
          v54 = v76;
          v51 = v77;
          v53 = 2;
          v52 = v78;
        }

        else
        {
          v55 = v71;
          if (v37 == 4)
          {
            LOBYTE(v76) = 4;
            sub_1D1CD9164();
            sub_1D1E68C4C();
            (*(v67 + 8))(v31, v62);
            (*(v75 + 8))(v34, v22);
            swift_unknownObjectRelease();
            v51 = 0;
            v52 = 0;
            v53 = 3;
            v54 = 1;
          }

          else
          {
            LOBYTE(v76) = 5;
            sub_1D1CD9110();
            sub_1D1E68C4C();
            (*(v68 + 8))(v33, v69);
            (*(v75 + 8))(v34, v22);
            swift_unknownObjectRelease();
            v51 = 0;
            v52 = 0;
            v53 = 3;
            v54 = 2;
          }
        }
      }

      else if (v37)
      {
        if (v37 == 1)
        {
          LOBYTE(v76) = 1;
          sub_1D1CD9308();
          v38 = v58;
          sub_1D1E68C4C();
          v39 = v75;
          sub_1D1CD9404();
          v50 = v61;
          sub_1D1E68D7C();
          (*(v60 + 8))(v38, v50);
          (*(v39 + 8))(v26, v22);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = v76;
          v55 = v71;
        }

        else
        {
          LOBYTE(v76) = 2;
          sub_1D1CD9260();
          v47 = v70;
          v48 = v26;
          sub_1D1E68C4C();
          v55 = v71;
          sub_1D1CD9404();
          v49 = v64;
          sub_1D1E68D7C();
          (*(v63 + 8))(v47, v49);
          (*(v75 + 8))(v48, v22);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 0;
          v54 = v76;
          v53 = 1;
        }
      }

      else
      {
        LOBYTE(v76) = 0;
        sub_1D1CD935C();
        sub_1D1E68C4C();
        (*(v59 + 8))(v30, v57);
        (*(v75 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v54 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 3;
        v55 = v71;
      }

      *v55 = v54;
      *(v55 + 8) = v51;
      *(v55 + 16) = v52;
      *(v55 + 24) = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_1D1CD6DC8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  StaticCharacteristic.LoadingState.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.characteristic.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD6F1C, 0, 0);
}

uint64_t sub_1D1CD6F1C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1CD700C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1CD7330;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1CD700C()
{
  v33 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v32[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v32);

    v5 = v32[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[9], v8, v7);
  v9(v6, v8, v7);
  if (v5 >> 62)
  {
LABEL_31:
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = v5 & 0xC000000000000001;
  v13 = (v5 + 32);
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1D3891EF0](v11, v5);
    }

    else
    {
      if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = *(v5 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v0[8];
    v32[0] = v14;
    sub_1D1A8A054(v32, v16, &v31);

    v17 = v31;
    if (v17)
    {
      v10 = v11;
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_30;
    }
  }

  if (!(v5 >> 62))
  {
    if (v10 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v13 = *(v0[7] + 8);
    (v13)(v0[9], v0[6]);
    v24 = 0;
    goto LABEL_26;
  }

  if (v10 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v12)
  {
    v19 = MEMORY[0x1D3891EF0](v10, v5);
  }

  else
  {
    if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v19 = v13[v10];
  }

  v20 = v19;
  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  v32[0] = v19;
  sub_1D1A8A054(v32, v21, &v31);
  v13 = *(v23 + 8);
  (v13)(v21, v22);

  v24 = v31;
  if (!v31)
  {
LABEL_34:
    v27 = (v13)(v0[8], v0[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }

LABEL_26:
  v0[11] = v24;
  v25 = v0[8];
  v26 = v0[6];

  (v13)(v25, v26);
  v27 = sub_1D1B9A998;
  v28 = 0;
  v29 = 0;

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D1CD7330()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1CD73C8, 0, 0);
}

uint64_t sub_1D1CD73C8()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD7454, v3, v2);
}

uint64_t sub_1D1CD7454()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1CD74C8, 0, 0);
}

uint64_t sub_1D1CD74C8()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD7560, v4, v3);
}

uint64_t sub_1D1CD7560()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 characteristicFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

uint64_t StaticCharacteristic.stringValue.getter()
{
  v1 = 0;
  v2 = (v0 + *(type metadata accessor for StaticCharacteristic() + 24));
  if (*(v2 + 16) == 8)
  {
    v1 = *v2;
    v3 = v2[1];
  }

  return v1;
}

uint64_t StaticCharacteristic.dataValue.getter()
{
  v1 = v0 + *(type metadata accessor for StaticCharacteristic() + 24);
  if (*(v1 + 16) != 10)
  {
    return 0;
  }

  v2 = *v1;
  sub_1D1741854(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticCharacteristic.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](656434281, 0xE400000000000000);
  sub_1D1E66A7C();
  sub_1D1CD94A0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EC8260);
  v2 = type metadata accessor for StaticCharacteristic();
  v6 = *(v0 + *(v2 + 20));
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC8280);
  v3 = (v0 + *(v2 + 24));
  v7 = *v3;
  v8 = *(v3 + 16);
  v4 = CharacteristicKind.Value.description.getter();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0;
}

uint64_t StaticCharacteristic.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = type metadata accessor for StaticCharacteristic();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_1D18F3284(v0, boxed_opaque_existential_1);
  sub_1D1E6927C();
  v7 = sub_1D1E6928C();
  (*(v2 + 8))(v5, v1);
  v18[1] = v7;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v27 + 1))
  {
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D1741C08(v24, &v19, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v20)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0x206E776F6E6B6E55;
      }

      if (v20)
      {
        v10 = v20;
      }

      else
      {
        v10 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3890F70](v9, v10);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v11 = v22;
      v12 = v23;
      sub_1D1741A30(v24, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D177CF00(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1D177CF00((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      sub_1D1E68BFC();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v16 = sub_1D1E6770C();

  return v16;
}

uint64_t sub_1D1CD7B54()
{
  v0 = sub_1D1E669FC();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for StaticCharacteristic();
  __swift_allocate_value_buffer(v11, qword_1EC64D010);
  v12 = __swift_project_value_buffer(v11, qword_1EC64D010);
  sub_1D1E66A0C();
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  result = v15(v10, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6698C();
    sub_1D1E66A0C();
    result = v15(v8, 1, v13);
    if (result != 1)
    {
      v17 = *(v14 + 32);
      v17(v12, v10, v13);
      *(v12 + v11[5]) = 105;
      v18 = v12 + v11[6];
      *v18 = xmmword_1D1E85870;
      *(v18 + 16) = 0;
      (*(v21 + 32))(v12 + v11[7], v3, v22);
      v19 = v12 + v11[8];
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = 1;
      *(v19 + 24) = 3;
      *(v12 + v11[9]) = 7;
      result = (v17)(v12 + v11[10], v8, v13);
      v20 = v12 + v11[11];
      *v20 = 0;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = xmmword_1D1EA3980;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static StaticCharacteristic.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticCharacteristic();
  v3 = __swift_project_value_buffer(v2, qword_1EC64D010);

  return sub_1D18F3284(v3, a1);
}

uint64_t _s13HomeDataModel20StaticCharacteristicV12LoadingStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v19[0] = *a1;
  v19[1] = v4;
  v19[2] = v5;
  v20 = v6;
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v10 == 1)
      {
LABEL_12:
        sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
        return ((v8 ^ v3) & 1) == 0;
      }
    }

    else if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (v6 != 2)
  {
    if (v5 | v4 | v3)
    {
      if (v3 != 1 || v5 | v4)
      {
        if (v10 != 3 || v8 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v10 != 3 || v8 != 1)
      {
        goto LABEL_27;
      }

      if (!(v9 | v7))
      {
        goto LABEL_26;
      }
    }

    else if (v10 == 3 && !(v9 | v7 | v8))
    {
      goto LABEL_26;
    }

LABEL_27:
    v15 = v8;
LABEL_28:
    sub_1D17418FC(v15, v7, v9, v10);
    sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
    return 0;
  }

  if (v10 != 2)
  {
    v12 = v9;
    v13 = v7;
    v14 = v10;

    LOBYTE(v10) = v14;
    v7 = v13;
    v9 = v12;
    goto LABEL_27;
  }

  if (v3 != v8)
  {
    sub_1D17418FC(v8, v7, v9, 2);
    v15 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 2;
    goto LABEL_28;
  }

  if (v4 == v7 && v5 == v9)
  {
    sub_1D17418FC(v3, v4, v5, 2);
    sub_1D17418FC(v3, v4, v5, 2);
LABEL_26:
    sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
    return 1;
  }

  v16 = v7;
  v17 = v9;
  v18 = sub_1D1E6904C();
  sub_1D17418FC(v3, v16, v17, 2);
  sub_1D17418FC(v3, v4, v5, 2);
  sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
  return (v18 & 1) != 0;
}

BOOL _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticCharacteristic();
  v5 = v4[5];
  v6 = *(a1 + v5);
  LOBYTE(v5) = *(a2 + v5);
  LOBYTE(v51) = v6;
  LOBYTE(v46) = v5;
  v7 = CharacteristicKind.rawValue.getter();
  v9 = v8;
  if (v7 == CharacteristicKind.rawValue.getter() && v9 == v10)
  {
  }

  else
  {
    v11 = sub_1D1E6904C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v13 = *(a1 + v12 + 8);
  v14 = *(a1 + v12 + 16);
  v51 = *(a1 + v12);
  v52 = v13;
  LOBYTE(v53) = v14;
  v15 = a2 + v12;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v46 = *v15;
  v47 = v16;
  LOBYTE(v48) = v17;
  sub_1D1778244(v51, v13, v14);
  sub_1D1778244(v46, v16, v17);
  v18 = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v51, &v46);
  sub_1D1778284(v46, v47, v48);
  sub_1D1778284(v51, v52, v53);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = v4[7];
  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[8];
  v21 = *(a1 + v20 + 8);
  v22 = *(a1 + v20 + 16);
  v23 = *(a1 + v20 + 24);
  v51 = *(a1 + v20);
  v52 = v21;
  v53 = v22;
  LOBYTE(v54) = v23;
  v24 = a2 + v20;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v46 = *v24;
  v25 = v46;
  v47 = v26;
  v48 = v27;
  LOBYTE(v49) = v28;
  sub_1D17418FC(v51, v21, v22, v23);
  sub_1D17418FC(v25, v26, v27, v28);
  LOBYTE(v25) = _s13HomeDataModel20StaticCharacteristicV12LoadingStateO2eeoiySbAE_AEtFZ_0(&v51, &v46);
  sub_1D1757A60(v46, v47, v48, v49);
  sub_1D1757A60(v51, v52, v53, v54);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v29 = v4[10];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v30 = v4[11];
  v31 = a1 + v30;
  v33 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v35 = *(a1 + v30 + 16);
  v34 = *(a1 + v30 + 24);
  v36 = *(v31 + 32);
  v37 = (a2 + v30);
  v39 = *v37;
  v38 = v37[1];
  v41 = v37[2];
  v40 = v37[3];
  v42 = v37[4];
  if (v34 >> 8 == 0xFFFFFFFF)
  {
    v43 = *(v31 + 32);
    sub_1D18F323C(v33, v32, v35, v34);
    sub_1D18F323C(v39, v38, v41, v40);
    if (v40 >> 8 == 0xFFFFFFFF)
    {
      sub_1D18F3260(v33, v32, v35, v34);
      return 1;
    }

    goto LABEL_16;
  }

  v51 = v33;
  v52 = v32;
  v53 = v35;
  v54 = v34;
  v55 = v36;
  if (v40 >> 8 == 0xFFFFFFFF)
  {
    sub_1D18F323C(v33, v32, v35, v34);
    sub_1D18F323C(v39, v38, v41, v40);
    sub_1D18F323C(v33, v32, v35, v34);
    sub_1D18F3274(v33, v32, v35, v34);
LABEL_16:
    sub_1D18F3260(v33, v32, v35, v34);
    sub_1D18F3260(v39, v38, v41, v40);
    return 0;
  }

  v46 = v39;
  v47 = v38;
  v48 = v41;
  v49 = v40;
  v50 = v42;
  sub_1D18F323C(v33, v32, v35, v34);
  sub_1D18F323C(v39, v38, v41, v40);
  sub_1D18F323C(v33, v32, v35, v34);
  v45 = _s13HomeDataModel28StaticCharacteristicMetadataO2eeoiySbAC_ACtFZ_0(&v51, &v46);
  sub_1D18F3274(v46, v47, v48, v49);
  sub_1D18F3274(v51, v52, v53, v54);
  sub_1D18F3260(v33, v32, v35, v34);
  return v45;
}