uint64_t sub_1E48210E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - v12);
  sub_1E4773850(v2 + *(a1 + 40), &v18 - v12, &qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1E4877F9C();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_1E4878DDC();
    v17 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1E48212E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D438, &qword_1E4881598);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1E4877F9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  sub_1E4773850(v2, v8, &qword_1ECF7D438, &qword_1E4881598);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v31 = a2;
    v30 = *(v10 + 32);
    v30(v16, v8, v9);
    v29 = a1;
    sub_1E48210E0(a1, v14);
    v17 = sub_1E4877F8C();
    v18 = sub_1E48217E4(v14, v17);
    v20 = v19;

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_1E4877F8C();
    v23 = sub_1E48217E4(v16, v22);
    v25 = v24;

    v26 = *(v10 + 8);
    v26(v14, v9);
    if (v25)
    {
      if (v21 > 0)
      {
        return (v30)(v31, v16, v9);
      }
    }

    else if (v23 < v21)
    {
      return (v30)(v31, v16, v9);
    }

    v26(v16, v9);
    a2 = v31;
    a1 = v29;
    return sub_1E48210E0(a1, a2);
  }

  sub_1E4822368(v8);
  return sub_1E48210E0(a1, a2);
}

uint64_t sub_1E482155C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_1E4877F9C();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D430, &qword_1E4881560);
  v7 = sub_1E4877C9C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = *(a1 + 36);
  swift_getKeyPath();
  sub_1E48212E4(a1, v6);
  v16 = *(a1 + 24);
  sub_1E487850C();

  (*(v3 + 8))(v6, v22);
  v17 = sub_1E4822314(&qword_1EE2B4718, &qword_1ECF7D430, &qword_1E4881560);
  v24 = v16;
  v25 = v17;
  swift_getWitnessTable();
  v18 = v8[2];
  v18(v14, v12, v7);
  v19 = v8[1];
  v19(v12, v7);
  v18(v23, v14, v7);
  return (v19)(v14, v7);
}

uint64_t sub_1E48217E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1E4877F9C() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1E4821AC8();
  v7 = 0;
  while ((sub_1E4878AFC() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1E48218D4()
{
  result = qword_1EE2B3B68;
  if (!qword_1EE2B3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3B68);
  }

  return result;
}

uint64_t type metadata accessor for ViewMetrics()
{
  result = qword_1EE2B41C8;
  if (!qword_1EE2B41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E482197C()
{
  result = sub_1E487759C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1E4821AC8()
{
  result = qword_1EE2B4728;
  if (!qword_1EE2B4728)
  {
    sub_1E4877F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4728);
  }

  return result;
}

void sub_1E4821B20(uint64_t a1)
{
  sub_1E4822270(319, &qword_1EE2B4720, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1E4822270(319, &qword_1EE2B1678, MEMORY[0x1E697DCC8]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4821BF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E4877F9C() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v6 + 64);
  }

  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v18 + v14;
  v20 = *(v7 + 80) & 0xF8 | 7;
  if (a2 > v17)
  {
    v21 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) == -1)
      {
        v27 = 0;
      }

      else
      {
        if (v21 <= 3)
        {
          v26 = v16 + ((v15 + v20 + (v19 & ~v14)) & ~v20) + 1;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      return v17 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v17)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v14;
    if (v11 == v17)
    {
      v30 = *(*(*(a3 + 16) - 8) + 48);

      return v30(v29, v11);
    }

    else
    {
      v32 = *(((v29 + v15 + v20) & ~v20) + v16);
      if (v32 >= 2)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1E4821EA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1E4877F9C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  v17 = *(v13 + 64);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = 8;
  if (v15 > 8)
  {
    v19 = v15;
  }

  if (v18 <= 0xFE)
  {
    v18 = 254;
  }

  if (!v11)
  {
    ++v15;
  }

  v20 = v15 + v16;
  v21 = (v15 + v16) & ~v16;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = v19 + 1;
  v24 = ((v17 + v22 + v21) & ~v22) + v19 + 1;
  if (a3 <= v18)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v18 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v12 == v18)
      {
        v30 = *(v10 + 56);

        v30(a1, (a2 + 1));
      }

      else
      {
        v31 = &a1[v20] & ~v16;
        if (v14 == v18)
        {
          v32 = *(v13 + 56);

          v32(v31, a2, v14);
        }

        else
        {
          v33 = (v31 + v17 + v22) & ~v22;
          if (a2 > 0xFE)
          {
            if (v23 <= 3)
            {
              v34 = ~(-1 << (8 * v23));
            }

            else
            {
              v34 = -1;
            }

            if (v19 != -1)
            {
              v35 = v34 & (a2 - 255);
              if (v23 <= 3)
              {
                v36 = v19 + 1;
              }

              else
              {
                v36 = 4;
              }

              bzero(((v31 + v17 + v22) & ~v22), v23);
              if (v36 > 2)
              {
                if (v36 == 3)
                {
                  *v33 = v35;
                  *(v33 + 2) = BYTE2(v35);
                }

                else
                {
                  *v33 = v35;
                }
              }

              else if (v36 == 1)
              {
                *v33 = v35;
              }

              else
              {
                *v33 = v35;
              }
            }
          }

          else
          {
            *(v33 + v19) = -a2;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = ~v18 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_54:
    if (v8 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_58:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v8)
  {
    a1[v24] = v28;
  }
}

void sub_1E4822270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4877F9C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E4822314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4822368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D438, &qword_1E4881598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy14CalendarWidget0C7MetricsCGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1E4877C9C();
  sub_1E4822314(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t type metadata accessor for MediumListContentView()
{
  result = qword_1EE2B26D0;
  if (!qword_1EE2B26D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48224E0()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E4822700(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E482269C();
      if (v2 <= 0x3F)
      {
        sub_1E4822700(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E478305C();
          if (v4 <= 0x3F)
          {
            sub_1E4822700(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E4822700(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
              if (v6 <= 0x3F)
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

void sub_1E482269C()
{
  if (!qword_1EE2B1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D440, &qword_1E48815B8);
    v0 = sub_1E487882C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1030);
    }
  }
}

void sub_1E4822700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E4822780(uint64_t a1, uint64_t a2)
{
  sub_1E4878D1C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1E4824EF8();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD00000000000003FLL, 0x80000001E48A9910);
    v8 = sub_1E487918C();
    MEMORY[0x1E69192D0](v8);

    MEMORY[0x1E69192D0](46, 0xE100000000000000);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4822908()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MediumListContentView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E4822A60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MediumListContentView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4822C68()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MediumListContentView() + 40));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4822DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a1;
  v196 = a2;
  v160 = type metadata accessor for NarrowMultidayEventsView();
  v2 = *(*(v160 - 8) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D458, &qword_1E4881658);
  v4 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v159 - v5;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D460, &qword_1E4881660);
  v6 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v159 - v7;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D468, &qword_1E4881668);
  v8 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v166 = &v159 - v9;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D470, &qword_1E4881670);
  v10 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v159 - v11;
  v183 = sub_1E4877A1C();
  v182 = *(v183 - 8);
  v12 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v180 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1E48782AC();
  v169 = *(v170 - 8);
  v14 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1E487893C();
  v179 = *(v181 - 8);
  v16 = *(v179 + 64);
  v17 = MEMORY[0x1EEE9AC00](v181);
  v167 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v159 - v19;
  v20 = sub_1E48779BC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v173 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1E487732C();
  v23 = *(v207 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v204 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1E48779CC();
  v174 = *(v176 - 8);
  v26 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v172 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D478, &qword_1E4881678);
  v28 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v177 = &v159 - v29;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D480, &qword_1E4881680);
  v30 = *(*(v190 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v190);
  v178 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v159 - v33;
  v210 = type metadata accessor for DayEvents();
  v34 = *(v210 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v37 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D488, &qword_1E4881688);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v192 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v191 = &v159 - v42;
  v43 = type metadata accessor for MediumListContentView();
  v201 = *(v43 - 8);
  v44 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v202 = v45;
  v203 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SmallListContentView();
  v47 = *(*(v46 - 1) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v159 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D490, &qword_1E4881690);
  v50 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v159 - v51;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D498, &qword_1E4881698);
  v52 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v54 = &v159 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4A0, &unk_1E48816A0);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v189 = &v159 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v206 = &v159 - v59;
  sub_1E4878D2C();
  v188 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = *(v23 + 16);
  v61 = v23 + 16;
  v62 = v208;
  v187 = v61;
  v60(v49, v208, v207);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v63 = *(v34 + 72);
  v64 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v209 = v63;
  result = swift_allocObject();
  *(result + 16) = xmmword_1E487A7E0;
  v66 = *(v62 + *(v43 + 20));
  if (*(v66 + 16))
  {
    v67 = result;
    v186 = v60;
    v197 = v43;
    v205 = v66;
    v185 = v64;
    sub_1E48248A0(v66 + v64, result + v64, type metadata accessor for DayEvents);
    *&v49[v46[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v49[v46[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v69 = swift_getKeyPath();
    v70 = swift_getKeyPath();
    *&v49[v46[5]] = v67;
    v49[v46[6]] = 0;
    v49[v46[7]] = 1;
    v49[v46[8]] = 1;
    v71 = &v49[v46[11]];
    *v71 = KeyPath;
    v71[8] = 0;
    v72 = &v49[v46[12]];
    *v72 = v69;
    v72[8] = 0;
    v73 = &v49[v46[13]];
    *v73 = v70;
    v73[8] = 0;
    sub_1E487889C();
    sub_1E4877CEC();
    v74 = v199;
    sub_1E4824B48(v49, v199, type metadata accessor for SmallListContentView);
    v75 = (v74 + *(v198 + 36));
    v76 = v217;
    v75[4] = v216;
    v75[5] = v76;
    v75[6] = v218;
    v77 = v213;
    *v75 = v212;
    v75[1] = v77;
    v78 = v215;
    v75[2] = v214;
    v75[3] = v78;
    v79 = v203;
    sub_1E48248A0(v62, v203, type metadata accessor for MediumListContentView);
    v80 = (*(v201 + 80) + 16) & ~*(v201 + 80);
    v81 = swift_allocObject();
    sub_1E4824B48(v79, v81 + v80, type metadata accessor for MediumListContentView);
    sub_1E477372C(v74, v54, &qword_1ECF7D490, &qword_1E4881690);
    v82 = &v54[*(v200 + 36)];
    *v82 = sub_1E4824908;
    v82[1] = v81;
    sub_1E4824978();
    sub_1E48785BC();
    sub_1E47738B8(v54, &qword_1ECF7D498, &qword_1E4881698);
    v83 = (v62 + *(v197 + 24));
    v85 = *v83;
    v84 = v83[1];
    v203 = v85;
    *&v219 = v85;
    *(&v219 + 1) = v84;
    v202 = v84;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B0, &qword_1E4881770);
    sub_1E487880C();
    v86 = sub_1E486E95C(v205, v211);

    v87 = v86[2];
    if (v87)
    {
      v88 = 0;
      v89 = *(v210 + 20);
      v90 = v86 + v185;
      while (1)
      {
        if (v88 >= v86[2])
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1E48248A0(v90, v37, type metadata accessor for DayEvents);
        sub_1E4878D1C();
        sub_1E4878D0C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (*(*&v37[v89] + 16))
        {

          sub_1E4824AEC(v37);
          goto LABEL_17;
        }

        v91 = *(*&v37[*(v210 + 24)] + 16);

        result = sub_1E4824AEC(v37);
        if (v91)
        {
          break;
        }

        ++v88;
        v90 += v209;
        if (v87 == v88)
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      v124 = v192;
      v125 = v189;
      v126 = v162;
      v186(v162, v208, v207);
      *&v219 = v203;
      *(&v219 + 1) = v202;
      sub_1E487880C();
      v127 = sub_1E486E95C(v205, v211);

      v128 = swift_getKeyPath();
      v129 = swift_getKeyPath();
      v130 = v160;
      *(v126 + *(v160 + 40)) = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      *(v126 + v130[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v131 = swift_getKeyPath();
      *(v126 + v130[5]) = v127;
      *(v126 + v130[6]) = 0;
      *(v126 + v130[7]) = 0;
      *(v126 + v130[8]) = 0;
      v132 = v126 + v130[9];
      *v132 = v128;
      *(v132 + 8) = 0;
      v133 = v126 + v130[12];
      *v133 = v131;
      *(v133 + 8) = 0;
      *(v126 + v130[13]) = 0x4020000000000000;
      v134 = v126 + v130[14];
      sub_1E48783CC();
      v135 = sub_1E487818C();
      v136 = sub_1E4822908();
      v123 = v191;
      if (v136)
      {
        v137 = *(sub_1E4822C68() + 16);
      }

      sub_1E4877B0C();
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v146 = v163;
      sub_1E4824B48(v126, v163, type metadata accessor for NarrowMultidayEventsView);
      v147 = v146 + *(v161 + 36);
      *v147 = v135;
      *(v147 + 8) = v139;
      *(v147 + 16) = v141;
      *(v147 + 24) = v143;
      *(v147 + 32) = v145;
      *(v147 + 40) = 0;
      sub_1E487889C();
      sub_1E4877CEC();
      v148 = v164;
      sub_1E477372C(v146, v164, &qword_1ECF7D458, &qword_1E4881658);
      v149 = (v148 + *(v165 + 36));
      v150 = v222;
      v151 = v224;
      v152 = v225;
      v149[4] = v223;
      v149[5] = v151;
      v149[6] = v152;
      v153 = v220;
      v154 = v221;
      *v149 = v219;
      v149[1] = v153;
      v149[2] = v154;
      v149[3] = v150;
      sub_1E4824BB0(&qword_1EE2B1430, &qword_1ECF7D460, &qword_1E4881660, sub_1E4824C34);
      v155 = v166;
      sub_1E48785BC();
      sub_1E47738B8(v148, &qword_1ECF7D460, &qword_1E4881660);
      sub_1E4773850(v155, v194, &qword_1ECF7D468, &qword_1E4881668);
      swift_storeEnumTagMultiPayload();
      sub_1E4824BB0(&qword_1EE2B1450, &qword_1ECF7D480, &qword_1E4881680, sub_1E4824CF0);
      sub_1E4824DAC();
      sub_1E487803C();
      sub_1E47738B8(v155, &qword_1ECF7D468, &qword_1E4881668);
    }

    else
    {
LABEL_12:

      v186(v204, v208, v207);
      v92 = v175;
      sub_1E4822A60(v175);
      v210 = sub_1E4877A5C();
      v209 = v93;
      v94 = v167;
      sub_1E487892C();
      LODWORD(v207) = sub_1E48788FC();
      v95 = *(v179 + 8);
      v96 = v181;
      v95(v94, v181);
      sub_1E48782DC();
      v97 = v169;
      v98 = v168;
      v99 = v170;
      (*(v169 + 104))(v168, *MEMORY[0x1E6980EA0], v170);
      sub_1E48782CC();

      (*(v97 + 8))(v98, v99);
      sub_1E48781FC();

      sub_1E48782DC();
      sub_1E487827C();
      sub_1E487829C();

      (*(v182 + 104))(v180, *MEMORY[0x1E6993280], v183);
      sub_1E48779AC();
      v95(v92, v96);
      v100 = v172;
      sub_1E487799C();
      v101 = sub_1E487818C();
      if (sub_1E4822908())
      {
        v102 = sub_1E4822C68();
        v103 = *(v102 + 16);
        v104 = *(v102 + 40);
      }

      sub_1E4877B0C();
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v113 = v177;
      (*(v174 + 32))(v177, v100, v176);
      v114 = v113 + *(v171 + 36);
      *v114 = v101;
      *(v114 + 8) = v106;
      *(v114 + 16) = v108;
      *(v114 + 24) = v110;
      *(v114 + 32) = v112;
      *(v114 + 40) = 0;
      sub_1E487889C();
      sub_1E4877CEC();
      v115 = v178;
      sub_1E477372C(v113, v178, &qword_1ECF7D478, &qword_1E4881678);
      v116 = (v115 + *(v190 + 36));
      v117 = v222;
      v118 = v224;
      v119 = v225;
      v116[4] = v223;
      v116[5] = v118;
      v116[6] = v119;
      v120 = v220;
      v121 = v221;
      *v116 = v219;
      v116[1] = v120;
      v116[2] = v121;
      v116[3] = v117;
      v122 = v184;
      sub_1E477372C(v115, v184, &qword_1ECF7D480, &qword_1E4881680);
      sub_1E4773850(v122, v194, &qword_1ECF7D480, &qword_1E4881680);
      swift_storeEnumTagMultiPayload();
      sub_1E4824BB0(&qword_1EE2B1450, &qword_1ECF7D480, &qword_1E4881680, sub_1E4824CF0);
      sub_1E4824DAC();
      v123 = v191;
      sub_1E487803C();
      sub_1E47738B8(v122, &qword_1ECF7D480, &qword_1E4881680);
      v124 = v192;
      v125 = v189;
    }

    v156 = v206;
    sub_1E4773850(v206, v125, &qword_1ECF7D4A0, &unk_1E48816A0);
    sub_1E4773850(v123, v124, &qword_1ECF7D488, &qword_1E4881688);
    v157 = v196;
    sub_1E4773850(v125, v196, &qword_1ECF7D4A0, &unk_1E48816A0);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B8, qword_1E48817E0);
    sub_1E4773850(v124, v157 + *(v158 + 48), &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v123, &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v156, &qword_1ECF7D4A0, &unk_1E48816A0);
    sub_1E47738B8(v124, &qword_1ECF7D488, &qword_1E4881688);
    sub_1E47738B8(v125, &qword_1ECF7D4A0, &unk_1E48816A0);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4824568(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v6[2] = a2;
  v6[3] = v3;
  sub_1E4822780(sub_1E4824EDC, v6);
}

uint64_t sub_1E4824660(uint64_t a1)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for MediumListContentView() + 24));
  v4 = *v2;
  v5 = v2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4B0, &qword_1E4881770);
  sub_1E487881C();
}

uint64_t sub_1E4824750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F6C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D448, &qword_1E4881610);
  v6 = a1 + *(v5 + 36);
  *v6 = v4;
  *(v6 + 8) = 0x4030000000000000;
  *(v6 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D450, &qword_1E4881618);
  sub_1E4822DB8(v2, v6 + *(v7 + 44));
  v8 = *MEMORY[0x1E697F638];
  v9 = sub_1E4877F9C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1, v8, v9);
  (*(v10 + 56))(a1, 0, 1, v9);
  *(a1 + *(v5 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E48248A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4824908(uint64_t *a1)
{
  v3 = *(type metadata accessor for MediumListContentView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E4824568(a1, v4);
}

unint64_t sub_1E4824978()
{
  result = qword_1EE2B1448;
  if (!qword_1EE2B1448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D498, &qword_1E4881698);
    sub_1E4824A30();
    sub_1E4773680(&qword_1EE2B10D8, &qword_1ECF7D4A8, &qword_1E4881768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1448);
  }

  return result;
}

unint64_t sub_1E4824A30()
{
  result = qword_1EE2B15E0;
  if (!qword_1EE2B15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D490, &qword_1E4881690);
    sub_1E4824E94(qword_1EE2B2840, type metadata accessor for SmallListContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15E0);
  }

  return result;
}

uint64_t sub_1E4824AEC(uint64_t a1)
{
  v2 = type metadata accessor for DayEvents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4824B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4824BB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4824C34()
{
  result = qword_1EE2B15B8;
  if (!qword_1EE2B15B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D458, &qword_1E4881658);
    sub_1E4824E94(&qword_1EE2B2328, type metadata accessor for NarrowMultidayEventsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15B8);
  }

  return result;
}

unint64_t sub_1E4824CF0()
{
  result = qword_1EE2B15F8;
  if (!qword_1EE2B15F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D478, &qword_1E4881678);
    sub_1E4824E94(&qword_1EE2B4620, MEMORY[0x1E6993268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15F8);
  }

  return result;
}

unint64_t sub_1E4824DAC()
{
  result = qword_1EE2B1330;
  if (!qword_1EE2B1330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D468, &qword_1E4881668);
    sub_1E4824BB0(&qword_1EE2B1430, &qword_1ECF7D460, &qword_1E4881660, sub_1E4824C34);
    sub_1E4824E94(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1330);
  }

  return result;
}

uint64_t sub_1E4824E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4824EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1E4824F68()
{
  sub_1E482B8E4(319, &qword_1EE2B48A8, type metadata accessor for Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E482B8E4(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      sub_1E478305C();
      if (v2 <= 0x3F)
      {
        sub_1E482B8E4(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E482B8E4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E4825108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4825150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1E48251F0()
{
  sub_1E482B8E4(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E482B8E4(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E478305C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4825320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1E48782AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E4877F1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E487A7E0;
  if ((a4 & 1) == 0)
  {

    sub_1E4878DDC();
    v18 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a3, 0);
    (*(v12 + 8))(v15, v11);
    if (v20[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    (*(v7 + 104))(v10, *MEMORY[0x1E6980EA0], v6);
    sub_1E48782CC();

    (*(v7 + 8))(v10, v6);
    v17 = sub_1E48781FC();

    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EA0], v6);
  v17 = sub_1E48782CC();

  (*(v7 + 8))(v10, v6);
LABEL_6:
  *(v16 + 32) = v17;
  return v16;
}

uint64_t sub_1E482565C(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = sub_1E48782AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  if (a1())
  {
    sub_1E48782BC();
  }

  else
  {
    a2();
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E6980EA0], v4);
  v10 = sub_1E48782CC();

  (*(v5 + 8))(v8, v4);
  *(v9 + 32) = v10;
  return v9;
}

double sub_1E48257C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1E48782AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1E4877F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    sub_1E4878DDC();
    v19 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a4, 0);
    (*(v14 + 8))(v17, v13);
    if (v23[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    (*(v9 + 104))(v12, *MEMORY[0x1E6980EA0], v8);
    sub_1E48782CC();

    (*(v9 + 8))(v12, v8);
    v18 = sub_1E48781FC();

    goto LABEL_6;
  }

  if (a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  (*(v9 + 104))(v12, *MEMORY[0x1E6980EA0], v8);
  v18 = sub_1E48782CC();

  (*(v9 + 8))(v12, v8);
LABEL_6:
  sub_1E487201C(v18, a1);
  v21 = v20;

  return v21;
}

uint64_t sub_1E4825A98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4825CA0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NarrowConflictsView(0) + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E4825DF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4826000()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NarrowConflictsView(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4826150@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowConflictsView(0);
  sub_1E4773850(v1 + *(v12 + 48), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4826358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D530, &qword_1E4881B98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  sub_1E4878D2C();
  v24[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(sub_1E4826000() + 104);

  *v17 = sub_1E4877F6C();
  *(v17 + 1) = v18;
  v17[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0);
  sub_1E4826638(a1, &v17[*(v19 + 44)]);
  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0x3FF0000000000000;
  v10[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D538, &qword_1E4881BB0);
  sub_1E4826D18(a1, &v10[*(v20 + 44)]);
  sub_1E4773850(v17, v15, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E4773850(v10, v8, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E4773850(v15, a2, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D540, &unk_1E4881BB8);
  sub_1E4773850(v8, a2 + *(v21 + 48), &qword_1ECF7D530, &qword_1E4881B98);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E47738B8(v17, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E47738B8(v8, &qword_1ECF7D530, &qword_1E4881B98);
  sub_1E47738B8(v15, &qword_1ECF7B9A8, &unk_1E4881BA0);
}

uint64_t sub_1E4826638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v3 = type metadata accessor for NarrowConflictsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *a1;
  sub_1E4826150(v10);
  v12 = sub_1E486B590(v11, 3, v10);
  (*(v7 + 8))(v10, v6);
  v16[1] = v12;
  sub_1E482B2EC(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowConflictsView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1E482B284(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NarrowConflictsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E482B964(qword_1EE2B58D8, type metadata accessor for ColorBarView);
  sub_1E482B964(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling);
  sub_1E487886C();
}

uint64_t sub_1E4826984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v39 = a3;
  v3 = sub_1E487893C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v35 = type metadata accessor for ColorBarView.Styling(0);
  v11 = *(*(v35 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ColorBarView(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v38 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4825DF8(v10);
  sub_1E487892C();
  v21 = sub_1E48788FC();
  v22 = *(v4 + 8);
  v22(v8, v3);
  v22(v10, v3);
  if (v21)
  {
    sub_1E482B2EC(v37, v16, type metadata accessor for ColorBarView.Styling);
  }

  else
  {
    sub_1E482B2EC(v37, v14, type metadata accessor for ColorBarView.Styling);
    v23 = sub_1E48786EC();
    v24 = v14[48];
    v25 = *(v14 + 1);
    v26 = v14[16];
    v27 = *(v14 + 3);
    v28 = *(v14 + 4);
    v29 = *(v14 + 5);
    v30 = &v16[*(v35 + 40)];
    sub_1E487735C();
    sub_1E482BB78(v14, type metadata accessor for ColorBarView.Styling);
    v16[48] = v24;
    *v16 = v23;
    *(v16 + 1) = v25;
    v16[16] = v26;
    *(v16 + 3) = v27;
    *(v16 + 4) = v28;
    *(v16 + 5) = v29;
  }

  *&v20[*(v17 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_1E482B284(v16, v20, type metadata accessor for ColorBarView.Styling);
  v32 = &v20[*(v17 + 24)];
  *v32 = KeyPath;
  v32[8] = 0;
  sub_1E482B284(v20, v39, type metadata accessor for ColorBarView);
}

uint64_t sub_1E4826D18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = type metadata accessor for ConflictEventTitleText(0);
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E8, &unk_1E487E2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v95 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D548, &qword_1E4881BC8);
  v101 = *(v102 - 8);
  v13 = *(v101 + 64);
  v14 = MEMORY[0x1EEE9AC00](v102);
  v109 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v95 - v16;
  v17 = type metadata accessor for Event();
  v118 = *(v17 - 8);
  v119 = v17;
  v18 = *(v118 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v117 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v95 - v21;
  v23 = type metadata accessor for ConflictTimeText(0);
  v112 = *(v23 - 8);
  v113 = v23;
  v24 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E0, &qword_1E4881BD0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v100 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v108 = &v95 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v111 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v115 = &v95 - v34;
  sub_1E4878D2C();
  v99 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = sub_1E4825CA0();
  v103 = a2;
  v110 = v10;
  if (v35)
  {
    v104 = *(v112 + 56);
    result = v104(v115, 1, 1, v113);
  }

  else
  {
    v37 = *a1;
    v38 = *(type metadata accessor for NarrowConflictsView(0) + 20);
    v39 = v113;
    v40 = *(v113 + 20);
    v41 = sub_1E487732C();
    v42 = v105;
    (*(*(v41 - 8) + 16))(&v105[v40], a1 + v38, v41);
    *(v42 + *(v39 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v42 = v37;
    v44 = v42 + *(v39 + 28);
    *v44 = KeyPath;
    v44[8] = 0;
    v45 = v115;
    sub_1E482B284(v42, v115, type metadata accessor for ConflictTimeText);
    v104 = *(v112 + 56);
    v104(v45, 0, 1, v39);
  }

  v106 = v12;
  v107 = a1;
  v46 = *a1;
  v116 = *(*a1 + 16);
  if (v116)
  {
    v47 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    while (v47 < *(v46 + 16))
    {
      v49 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v50 = *(v118 + 72);
      v51 = v46;
      sub_1E482B2EC(v46 + v49 + v50 * v47, v22, type metadata accessor for Event);
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v52 = v22[*(v119 + 56)];

      if ((v52 & 0xFE) == 6)
      {
        sub_1E482B284(v22, v117, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v48 + 16) + 1, 1);
          v48 = v120;
        }

        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1E4858038(v54 > 1, v55 + 1, 1);
          v48 = v120;
        }

        *(v48 + 16) = v55 + 1;
        result = sub_1E482B284(v117, v48 + v49 + v55 * v50, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E482BB78(v22, type metadata accessor for Event);
      }

      v46 = v51;
      if (v116 == ++v47)
      {
        v116 = *(v51 + 16);
        v12 = v106;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v116 = 0;
    v48 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v56 = *(v48 + 16);

    v117 = swift_getKeyPath();
    v57 = type metadata accessor for NarrowConflictsView(0);
    v58 = *(v107 + *(v57 + 24));
    v120 = sub_1E47F8CE4(v58, v46);
    v121 = v59;
    v122 = v60;
    v123 = v61;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C540, &qword_1E4881C50);
    sub_1E4773680(&qword_1EE2B46B0, &qword_1ECF7C540, &qword_1E4881C50);
    sub_1E482B964(qword_1EE2B48C8, type metadata accessor for Event);
    sub_1E482B964(qword_1EE2B4A10, type metadata accessor for ConflictEventTitleText);
    v62 = v98;
    sub_1E487885C();
    v63 = 1;
    if (v58 < 1)
    {
      v64 = v46;
    }

    else
    {
      v64 = v46;
      if (v58 < *(v46 + 16))
      {
        v65 = v95;
        (*(v118 + 56))(v95, 1, 1, v119);
        v66 = v62[5];
        *(v65 + v66) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
        swift_storeEnumTagMultiPayload();
        v67 = v65 + v62[6];
        *v67 = swift_getKeyPath();
        *(v67 + 8) = 0;
        v68 = v62[7];
        *(v65 + v68) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
        swift_storeEnumTagMultiPayload();
        v69 = v65 + v62[8];
        *v69 = swift_getKeyPath();
        *(v69 + 8) = 0;
        sub_1E482B284(v65, v12, type metadata accessor for ConflictEventTitleText);
        v63 = 0;
      }
    }

    (*(v97 + 56))(v12, v63, 1, v62);
    v70 = v107;
    if (sub_1E4825CA0())
    {
      v71 = *(v57 + 20);
      v72 = v56;
      v73 = v113;
      v74 = *(v113 + 20);
      v75 = sub_1E487732C();
      v76 = v105;
      (*(*(v75 - 8) + 16))(&v105[v74], v70 + v71, v75);
      *(v76 + *(v73 + 24)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      v77 = swift_getKeyPath();
      *v76 = v64;
      v78 = v76 + *(v73 + 28);
      *v78 = v77;
      v78[8] = 0;
      v79 = v111;
      sub_1E482B284(v76, v111, type metadata accessor for ConflictTimeText);
      v80 = v73;
      v56 = v72;
      v104(v79, 0, 1, v80);
    }

    else
    {
      v79 = v111;
      v104(v111, 1, 1, v113);
    }

    v96 = v56;
    v119 = v116 - v56;
    v81 = v108;
    sub_1E4773850(v115, v108, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v82 = v101;
    v83 = *(v101 + 16);
    v84 = v109;
    v85 = v102;
    v83(v109, v114, v102);
    sub_1E4773850(v12, v110, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v86 = v79;
    v87 = v100;
    sub_1E4773850(v86, v100, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v88 = v103;
    sub_1E4773850(v81, v103, &qword_1ECF7C7E0, &qword_1E4881BD0);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D550, &qword_1E4881C58);
    v90 = v88 + v89[12];
    v91 = v96;
    *v90 = v119;
    *(v90 + 8) = v91;
    v92 = v117;
    *(v90 + 16) = v117;
    *(v90 + 24) = 0;
    v83((v88 + v89[16]), v84, v85);
    v93 = v110;
    sub_1E4773850(v110, v88 + v89[20], &qword_1ECF7C7E8, &unk_1E487E2D0);
    sub_1E4773850(v87, v88 + v89[24], &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47CC10C(v92, 0);
    sub_1E47738B8(v111, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v106, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v94 = *(v82 + 8);
    v94(v114, v85);
    sub_1E47738B8(v115, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v87, &qword_1ECF7C7E0, &qword_1E4881BD0);
    sub_1E47738B8(v93, &qword_1ECF7C7E8, &unk_1E487E2D0);
    v94(v109, v85);
    sub_1E477A484(v92, 0);
    sub_1E47738B8(v108, &qword_1ECF7C7E0, &qword_1E4881BD0);
  }

  return result;
}

uint64_t sub_1E4827A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E482B2EC(a1, a2, type metadata accessor for Event);
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for ConflictEventTitleText(0);
  *(a2 + v6[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();
  *(a2 + v6[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v8 = swift_getKeyPath();

  v10 = a2 + v6[6];
  *v10 = v7;
  *(v10 + 8) = 0;
  v11 = a2 + v6[8];
  *v11 = v8;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_1E4827BFC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_1E487732C();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55[0] = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487725C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55[1] = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D500, &qword_1E4881B68);
  v59 = *(v62 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = v55 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D508, &qword_1E4881B70);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D510, &qword_1E4881B78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v55 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D518, &qword_1E4881B80);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = v55 - v18;
  v20 = sub_1E4877CCC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v55 - v26;
  v28 = v1;
  sub_1E4825A98(v55 - v26);
  sub_1E4877CAC();
  sub_1E482B964(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v29 = sub_1E4878EAC();
  v30 = *(v21 + 8);
  v30(v25, v20);
  result = (v30)(v27, v20);
  if (v29)
  {
    *v16 = sub_1E4877F6C();
    *(v16 + 1) = 0x4014000000000000;
    v16[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D528, &qword_1E4881B90);
    sub_1E4826358(v28, &v16[*(v32 + 44)]);
    v33 = sub_1E487813C();
    if (sub_1E4825CA0())
    {
      v34 = *(sub_1E4826000() + 48);
    }

    sub_1E4877B0C();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_1E477372C(v16, v19, &qword_1ECF7D510, &qword_1E4881B78);
    v43 = &v19[*(v61 + 36)];
    *v43 = v33;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    sub_1E4773850(v19, v12, &qword_1ECF7D518, &qword_1E4881B80);
    swift_storeEnumTagMultiPayload();
    sub_1E482B9B4();
    sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68);
    sub_1E487803C();
    return sub_1E47738B8(v19, &qword_1ECF7D518, &qword_1E4881B80);
  }

  else
  {
    v44 = *v28;
    if (*(*v28 + 16))
    {
      v45 = v28;
      v46 = type metadata accessor for Event();
      v47 = v44 + *(v46 + 20);
      v49 = v56;
      v48 = v57;
      v50 = v55[0];
      (*(v56 + 16))(v55[0], v47 + ((*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80)), v57);
      sub_1E4877A6C();
      v51 = (*(v49 + 8))(v50, v48);
      MEMORY[0x1EEE9AC00](v51);
      v55[-2] = v45;
      sub_1E482B9B4();
      v52 = v58;
      sub_1E487831C();
      v53 = v59;
      v54 = v62;
      (*(v59 + 16))(v12, v52, v62);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68);
      sub_1E487803C();
      return (*(v53 + 8))(v52, v54);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E482829C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D510, &qword_1E4881B78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_1E4877F6C();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D528, &qword_1E4881B90);
  sub_1E4826358(a1, &v7[*(v8 + 44)]);
  v9 = sub_1E487813C();
  if (sub_1E4825CA0())
  {
    v10 = *(sub_1E4826000() + 48);
  }

  sub_1E4877B0C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1E477372C(v7, a2, &qword_1ECF7D510, &qword_1E4881B78);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D518, &qword_1E4881B80);
  v20 = a2 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1E4828454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ConflictEventTitleText(0);
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E482865C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ConflictEventTitleText(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E48287B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ConflictEventTitleText(0);
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48289BC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ConflictEventTitleText(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4828B0C()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E482865C())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781EC();
  }

  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v4, v0);
  v5 = sub_1E48781FC();

  return v5;
}

uint64_t sub_1E4828C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4D0, &qword_1E48819D0);
  v2 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v4 = &v63 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4D8, &qword_1E48819D8);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v63 - v6;
  v8 = sub_1E487893C();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v63 - v12;
  v13 = sub_1E48782AC();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for Event();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4E0, &qword_1E48819E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v70 = &v63 - v28;
  sub_1E4878D2C();
  v69 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v74;
  sub_1E4773850(v74, v20, &qword_1ECF7B950, &unk_1E487AE90);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1E47738B8(v20, &qword_1ECF7B950, &unk_1E487AE90);
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v75 = sub_1E48771EC();
    v76 = v30;
    sub_1E477A374();
    v31 = sub_1E487848C();
    v33 = v32;
    v35 = v34;
    v36 = sub_1E482865C();
    v37 = (v64 + 104);
    v38 = (v64 + 8);
    if (v36)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781EC();
    }

    (*v37)(v16, *MEMORY[0x1E6980EA0], v13);
    sub_1E48782CC();

    (*v38)(v16, v13);
    v42 = sub_1E487842C();
    v44 = v43;
    v46 = v45;
    v64 = v47;

    sub_1E477A3C8(v31, v33, v35 & 1);

    v48 = v65;
    sub_1E4828454(v65);
    v49 = v66;
    sub_1E487892C();
    v50 = sub_1E48788FC();
    v51 = *(v67 + 8);
    v52 = v49;
    v53 = v68;
    v51(v52, v68);
    v51(v48, v53);
    if (v50)
    {
      sub_1E48786EC();
    }

    else
    {
      sub_1E48786FC();
    }

    v54 = sub_1E48783FC();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_1E477A3C8(v42, v44, v46 & 1);

    KeyPath = swift_getKeyPath();
    *v4 = v54;
    *(v4 + 1) = v56;
    v4[16] = v58 & 1;
    *(v4 + 3) = v60;
    *(v4 + 4) = KeyPath;
    *(v4 + 5) = 1;
    v4[48] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B0FD8, &qword_1ECF7D4D8, &qword_1E48819D8);
    sub_1E477A490();
    v41 = v70;
    sub_1E487803C();
  }

  else
  {
    sub_1E482B284(v20, v25, type metadata accessor for Event);
    v39 = *(sub_1E48289BC() + 72);

    *v7 = sub_1E4877F6C();
    *(v7 + 1) = v39;
    v7[16] = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4E8, &qword_1E4881A18);
    sub_1E4829424(v25, v29, &v7[*(v40 + 44)]);
    sub_1E4773850(v7, v4, &qword_1ECF7D4D8, &qword_1E48819D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B0FD8, &qword_1ECF7D4D8, &qword_1E48819D8);
    sub_1E477A490();
    v41 = v70;
    sub_1E487803C();
    sub_1E47738B8(v7, &qword_1ECF7D4D8, &qword_1E48819D8);
    sub_1E482BB78(v25, type metadata accessor for Event);
  }

  sub_1E477372C(v41, v73, &qword_1ECF7D4E0, &qword_1E48819E0);
}

uint64_t sub_1E4829424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v109 = a1;
  v104 = a3;
  v99 = sub_1E48782AC();
  v97 = *(v99 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Event();
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v100 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for NarrowEventTitleText();
  v7 = *(*(v101 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v101);
  v103 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v87 - v13;
  v89 = sub_1E4877B3C();
  v88 = *(v89 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E487893C();
  v105 = *(v17 - 8);
  v106 = v17;
  v18 = *(v105 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v87 - v26);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v28 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v30 = &v87 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v93 = *(v31 - 8);
  v94 = v31;
  v32 = *(v93 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v91 = &v87 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v96 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v108 = &v87 - v41;
  sub_1E4878D2C();
  v95 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = *(v109 + *(v92 + 56));
  v102 = v14;
  if (v42 == 6)
  {
    v43 = MEMORY[0x1E69932E0];
  }

  else
  {
    if (v42 != 7)
    {
      (*(v93 + 56))(v108, 1, 1, v94);
      v57 = v97;
      goto LABEL_12;
    }

    v43 = MEMORY[0x1E69932F8];
  }

  v44 = *v43;
  sub_1E4878BDC();
  v45 = sub_1E487874C();
  v46 = (v27 + *(v24 + 36));
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v48 = *MEMORY[0x1E69816D0];
  v49 = sub_1E487877C();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = swift_getKeyPath();
  *v27 = v45;
  v50 = sub_1E4828B0C();
  KeyPath = swift_getKeyPath();
  sub_1E477372C(v27, v30, &qword_1ECF7B910, &unk_1E487E050);
  v52 = &v30[*(v90 + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  sub_1E4828454(v23);
  sub_1E487892C();
  LOBYTE(KeyPath) = sub_1E48788FC();
  v53 = v106;
  v54 = *(v105 + 8);
  v54(v21, v106);
  v54(v23, v53);
  if (KeyPath)
  {
    v55 = v87;
    sub_1E48287B4(v87);
    v56 = sub_1E476EA20(v109, v55);
    (*(v88 + 8))(v55, v89);
  }

  else
  {
    v56 = sub_1E48786FC();
  }

  v57 = v97;
  v59 = v93;
  v58 = v94;
  v60 = swift_getKeyPath();
  sub_1E477372C(v30, v35, &qword_1ECF7B918, &unk_1E487AA60);
  v61 = &v35[*(v58 + 36)];
  *v61 = v60;
  v61[1] = v56;
  v62 = v35;
  v63 = v91;
  sub_1E477372C(v62, v91, &qword_1ECF7B920, &unk_1E487DCF0);
  v64 = v63;
  v65 = v108;
  sub_1E477372C(v64, v108, &qword_1ECF7B920, &unk_1E487DCF0);
  (*(v59 + 56))(v65, 0, 1, v58);
LABEL_12:
  v66 = v100;
  sub_1E482B2EC(v109, v100, type metadata accessor for Event);
  v67 = (v57 + 104);
  v68 = (v57 + 8);
  if (sub_1E482865C())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781EC();
  }

  v70 = v98;
  v69 = v99;
  (*v67)(v98, *MEMORY[0x1E6980EA0], v99);
  v71 = sub_1E48782CC();

  (*v68)(v70, v69);
  sub_1E4828454(v23);
  sub_1E487892C();
  v72 = sub_1E48788FC();
  v73 = *(v105 + 8);
  v74 = v21;
  v75 = v106;
  v73(v74, v106);
  v73(v23, v75);
  if (v72)
  {
    v76 = 0;
  }

  else
  {
    v76 = sub_1E48786FC();
  }

  v77 = v102;
  v78 = swift_getKeyPath();
  v79 = v101;
  *&v12[*(v101 + 32)] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  sub_1E482B284(v66, v12, type metadata accessor for Event);
  *&v12[v79[5]] = v71;
  v80 = &v12[v79[6]];
  *v80 = 1;
  v80[8] = 0;
  *&v12[v79[7]] = v76;
  sub_1E482B284(v12, v77, type metadata accessor for NarrowEventTitleText);
  v81 = v108;
  v82 = v96;
  sub_1E4773850(v108, v96, &qword_1ECF7B9D0, &qword_1E487AC00);
  v83 = v103;
  sub_1E482B2EC(v77, v103, type metadata accessor for NarrowEventTitleText);
  v84 = v104;
  sub_1E4773850(v82, v104, &qword_1ECF7B9D0, &qword_1E487AC00);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4F0, &unk_1E4881A58);
  sub_1E482B2EC(v83, v84 + *(v85 + 48), type metadata accessor for NarrowEventTitleText);
  sub_1E482BB78(v77, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v81, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E482BB78(v83, type metadata accessor for NarrowEventTitleText);
  sub_1E47738B8(v82, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E4829E10@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877FBC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D4C8, &qword_1E48819C8);
  return sub_1E4828C3C(v1, a1 + *(v3 + 44));
}

uint64_t sub_1E4829E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v45 = sub_1E48782AC();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4877F1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E482B354(a1, a2);
  v47 = v19;
  sub_1E477A374();
  v20 = sub_1E487848C();
  v42 = v21;
  v43 = v20;
  v23 = v22;
  v44 = v24;
  if ((a4 & 1) == 0)
  {

    sub_1E4878DDC();
    v26 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a3, 0);
    (*(v15 + 8))(v18, v14);
    if (v46 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48782EC();
    v27 = v45;
    (*(v10 + 104))(v13, *MEMORY[0x1E6980EA0], v45);
    sub_1E48782CC();

    (*(v10 + 8))(v13, v27);
    sub_1E48781FC();

    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
  v25 = v45;
  (*(v10 + 104))(v13, *MEMORY[0x1E6980EA0], v45);
  sub_1E48782CC();

  (*(v10 + 8))(v13, v25);
LABEL_6:
  v29 = v42;
  v28 = v43;
  v30 = sub_1E487842C();
  v32 = v31;
  v34 = v33;

  sub_1E477A3C8(v28, v29, v23 & 1);

  sub_1E48786EC();
  v35 = sub_1E48783FC();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;

  sub_1E477A3C8(v30, v32, v34 & 1);

  result = swift_getKeyPath();
  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v28 & 1;
  *(a5 + 24) = v40;
  *(a5 + 32) = result;
  *(a5 + 40) = 1;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_1E482A218@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ConflictTimeText(0);
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E482A420()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ConflictTimeText(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E482A588@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_1E48782AC();
  v54 = *(v57 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E487753C();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v53 - v16;
  v61 = sub_1E487732C();
  v18 = *(v61 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v61);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v53 - v23;
  v25 = type metadata accessor for Utils();
  v26 = *v1;
  result = sub_1E4870504(*v1);
  v28 = *(v26 + 16);
  v55 = v18;
  if (result)
  {
    if (v28)
    {
      v53[1] = v25;
      v29 = type metadata accessor for Event();
      v30 = v29 - 8;
      v31 = v26 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80));
      v32 = *(v18 + 16);
      v33 = v18;
      v34 = v61;
      v32(v24, v31 + *(v29 + 20), v61);
      v32(v17, v31 + *(v30 + 32), v34);
      (*(v33 + 56))(v17, 0, 1, v34);
      sub_1E482A218(v10);
      v35 = sub_1E482A420();
      v36 = (v54 + 104);
      v37 = (v54 + 8);
      if (v35)
      {
        sub_1E48782BC();
      }

      else
      {
        sub_1E48782FC();
      }

      v46 = v56;
      v45 = v57;
      (*v36)(v56, *MEMORY[0x1E6980EA0], v57);
      v47 = sub_1E48782CC();

      (*v37)(v46, v45);
      v48 = type metadata accessor for ConflictTimeText(0);
      sub_1E485CFF8(v24, v17, v1 + *(v48 + 20), v47, v58);
LABEL_12:

      (*(v59 + 8))(v10, v60);
      sub_1E47738B8(v17, &unk_1ECF7C880, &qword_1E4882710);
      return (*(v55 + 8))(v24, v61);
    }

    __break(1u);
  }

  else if (v28)
  {
    v38 = type metadata accessor for Event();
    v39 = *(v18 + 16);
    v40 = v18;
    v41 = v61;
    v39(v22, v26 + *(v38 + 20) + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)), v61);
    (*(v40 + 56))(v15, 1, 1, v41);
    sub_1E482A218(v8);
    v42 = sub_1E482A420();
    v43 = (v54 + 104);
    v44 = (v54 + 8);
    if (v42)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48782FC();
    }

    v50 = v56;
    v49 = v57;
    (*v43)(v56, *MEMORY[0x1E6980EA0], v57);
    v51 = sub_1E48782CC();

    (*v44)(v50, v49);
    v52 = type metadata accessor for ConflictTimeText(0);
    sub_1E485CFF8(v22, v15, v1 + *(v52 + 20), v51, v58);
    v10 = v8;
    v17 = v15;
    v24 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E482AB1C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v37 - v11);
  v13 = sub_1E487732C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v0;
  result = sub_1E4870504(*v0);
  v20 = *(v18 + 16);
  v39 = v2;
  v40 = v1;
  v38 = v17;
  if (result)
  {
    if (v20)
    {
      v21 = type metadata accessor for Event();
      v22 = v21 - 8;
      v23 = v18 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80));
      v24 = *(v21 + 20);
      v25 = v17;
      v26 = v12;
      v27 = *(v14 + 16);
      v27(v25, v23 + v24, v13);
      v27(v12, v23 + *(v22 + 32), v13);
      v28 = *(v14 + 56);
      v28(v12, 0, 1, v13);
      v29 = type metadata accessor for ConflictTimeText(0);
      v27(v10, v0 + *(v29 + 20), v13);
      v28(v10, 0, 1, v13);
LABEL_6:
      sub_1E482A218(v5);
      v35 = v38;
      v36 = sub_1E486D148(v38, v26, v10, v5);
      (*(v39 + 8))(v5, v40);
      sub_1E47738B8(v10, &unk_1ECF7C880, &qword_1E4882710);
      sub_1E47738B8(v26, &unk_1ECF7C880, &qword_1E4882710);
      (*(v14 + 8))(v35, v13);
      return v36;
    }

    __break(1u);
  }

  else if (v20)
  {
    v30 = type metadata accessor for Event();
    v31 = v18 + *(v30 + 20);
    v32 = *(v14 + 16);
    v32(v17, v31 + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80)), v13);
    v26 = v12;
    v33 = *(v14 + 56);
    v33(v26, 1, 1, v13);
    v34 = type metadata accessor for ConflictTimeText(0);
    v32(v10, v0 + *(v34 + 20), v13);
    v33(v10, 0, 1, v13);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E482AF30@<X0>(uint64_t a1@<X8>)
{
  v34[1] = a1;
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487719C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E482A588(v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E487847C();
  v11 = v10;
  v13 = v12;
  if (sub_1E482A420())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48782FC();
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E6980EA0], v1);
  sub_1E48782CC();

  (*(v2 + 8))(v5, v1);
  v14 = sub_1E487842C();
  v16 = v15;
  v18 = v17;

  sub_1E477A3C8(v9, v11, v13 & 1);

  if (sub_1E482A420())
  {
    sub_1E48786FC();
  }

  else
  {
    sub_1E48786EC();
  }

  v19 = sub_1E48783FC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v34[0] = v24;

  sub_1E477A3C8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v34[5] = v19;
  v34[6] = v21;
  v23 &= 1u;
  v35 = v23;
  v36 = v25;
  v37 = KeyPath;
  v38 = 1;
  v39 = 0;
  v34[3] = sub_1E482AB1C();
  v34[4] = v27;
  sub_1E477A374();
  v28 = sub_1E487848C();
  v30 = v29;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v28, v30, v32 & 1);

  sub_1E477A3C8(v19, v21, v23);
}

uint64_t sub_1E482B284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E482B2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E482B354(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 >= 1)
  {
    if (qword_1EE2B4848 == -1)
    {
LABEL_4:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v4 = swift_allocObject();
      v5 = MEMORY[0x1E69E6530];
      *(v4 + 16) = xmmword_1E487A7E0;
      v6 = MEMORY[0x1E69E65A8];
      *(v4 + 56) = v5;
      *(v4 + 64) = v6;
      *(v4 + 32) = a2;
      v7 = sub_1E4878BAC();

      return v7;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v10;
  *(v9 + 32) = a1 + a2;
  v11 = sub_1E4878BAC();

  return v11;
}

unint64_t sub_1E482B5A4()
{
  result = qword_1EE2B4738;
  if (!qword_1EE2B4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C670, &qword_1E487F240);
    sub_1E477A490();
    sub_1E482B964(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4738);
  }

  return result;
}

void sub_1E482B6A8()
{
  sub_1E482B8E4(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E482B8E4(319, &qword_1EE2B1690, MEMORY[0x1E6985840], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E482B8E4(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E478305C();
          if (v4 <= 0x3F)
          {
            sub_1E482B8E4(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E482B8E4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
              if (v6 <= 0x3F)
              {
                sub_1E482B8E4(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
                if (v7 <= 0x3F)
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

void sub_1E482B8E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E482B964(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E482B9B4()
{
  result = qword_1EE2B1368;
  if (!qword_1EE2B1368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D518, &qword_1E4881B80);
    sub_1E482BA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1368);
  }

  return result;
}

unint64_t sub_1E482BA40()
{
  result = qword_1EE2B1480;
  if (!qword_1EE2B1480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D510, &qword_1E4881B78);
    sub_1E4773680(&qword_1EE2B0F70, &qword_1ECF7D520, &qword_1E4881B88);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1480);
  }

  return result;
}

uint64_t sub_1E482BAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NarrowConflictsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4826984(a1, v6, a2);
}

uint64_t sub_1E482BB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E482BBD8()
{
  result = qword_1EE2B11E8;
  if (!qword_1EE2B11E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D558, &unk_1E4881CF0);
    sub_1E482B9B4();
    sub_1E4773680(&qword_1EE2B1090, &qword_1ECF7D500, &qword_1E4881B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11E8);
  }

  return result;
}

uint64_t type metadata accessor for PlatterEventTimeText()
{
  result = qword_1ECF7D560;
  if (!qword_1ECF7D560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E482BD04()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E47F5B1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E482BDBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PlatterEventTimeText();
  sub_1E482CB38(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E482BFAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = v60 - v5;
  v6 = sub_1E487757C();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487719C();
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = v60 - v13;
  v14 = sub_1E487720C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E487753C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Event();
  v24 = *(v2 + v23[12]);
  v25 = v23[5];
  v26 = v23[6];
  v27 = v22;
  sub_1E482BDBC(v22);
  v28 = type metadata accessor for PlatterEventTimeText();
  if (v24 == 1)
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    sub_1E48771FC();
    sub_1E48771AC();
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v61 = v19;
    v62 = v18;
    v63 = v9;
    v30 = *(v2 + *(v28 + 20));
    v60[1] = v26;
    v31 = sub_1E48774CC();
    v32 = objc_opt_self();
    v33 = sub_1E48772BC();
    v60[3] = v2;
    v34 = sub_1E48772BC();
    v35 = sub_1E487748C();
    v36 = v31;
    v37 = [v32 timeIntervalAttributedTextWithStartDate:v33 endDate:v34 calendar:v35 keepRedundantDesignator:(v31 & 1) == 0];

    v38 = [v37 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v39 = v71;
    v60[2] = v17;
    sub_1E48771AC();
    aBlock[0] = v30;
    sub_1E47C4180();

    sub_1E48771BC();
    v40 = *MEMORY[0x1E6993360];
    v41 = [v37 length];
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    *(v42 + 24) = v30;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1E47C41D4;
    *(v43 + 24) = v42;
    aBlock[4] = sub_1E47C41DC;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_2;
    v44 = _Block_copy(aBlock);

    [v37 enumerateAttribute:v40 inRange:0 options:v41 usingBlock:{0, v44}];

    _Block_release(v44);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v45 = v63;
      v46 = v69;
      if ((v36 & 1) == 0)
      {
        v47 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v48 = sub_1E487748C();
        [v47 setCalendar_];

        v49 = v64;
        sub_1E487750C();
        v50 = sub_1E487756C();
        (*(v65 + 8))(v49, v66);
        [v47 setTimeZone_];

        v51 = v67;
        v66 = v27;
        sub_1E48774EC();
        v52 = sub_1E487744C();
        v53 = *(v52 - 8);
        v54 = 0;
        if ((*(v53 + 48))(v51, 1, v52) != 1)
        {
          v54 = sub_1E48773DC();
          (*(v53 + 8))(v51, v52);
        }

        [v47 setLocale_];

        v55 = sub_1E4878B9C();
        [v47 setLocalizedDateFormatFromTemplate_];

        v56 = v68;
        sub_1E487712C();
        sub_1E482CBC0(&qword_1EE2B4670, MEMORY[0x1E6968848]);
        sub_1E487716C();
        v57 = *(v46 + 8);
        v57(v56, v45);
        v58 = sub_1E48772BC();
        v59 = [v47 stringFromDate_];

        sub_1E4878BDC();
        sub_1E48771FC();
        sub_1E48771AC();
        sub_1E487716C();

        v57(v56, v45);
        v27 = v66;
      }

      (*(v61 + 8))(v27, v62);
      return (*(v46 + 32))(v70, v71, v45);
    }
  }

  return result;
}

uint64_t sub_1E482C854@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1E487753C();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487719C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E482BFAC(v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E487847C();
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PlatterEventTimeText();
  v14 = *(v1 + *(v13 + 24));
  v15 = sub_1E48783FC();
  v17 = v16;
  v19 = v18;
  sub_1E477A3C8(v8, v10, v12 & 1);

  v20 = *(v1 + *(v13 + 20));
  v21 = sub_1E487842C();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;
  v40[1] = v25;
  sub_1E477A3C8(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v47 = v21;
  v48 = v23;
  LOBYTE(v13) = v13 & 1;
  v49 = v13;
  v50 = v26;
  v51 = KeyPath;
  v52 = 1;
  v53 = 0;
  v28 = type metadata accessor for Event();
  v29 = v28[5];
  v30 = v28[6];
  LOBYTE(v17) = *(v1 + v28[12]);
  v31 = v41;
  sub_1E482BDBC(v41);
  v32 = sub_1E4870800(v1 + v29, v1 + v30, v17);
  v34 = v33;
  (*(v42 + 8))(v31, v43);
  v45 = v32;
  v46 = v34;
  sub_1E477A374();
  v35 = sub_1E487848C();
  v37 = v36;
  LOBYTE(v30) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v35, v37, v30 & 1);

  sub_1E477A3C8(v21, v23, v13);
}

uint64_t sub_1E482CB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E482CBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E482CC08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  sub_1E4878A3C();
  v10 = (*(v3 + 88))(v9, v2);
  if (v10 == *MEMORY[0x1E69857F0])
  {
    type metadata accessor for FakeEvents();
    v11 = sub_1E4806FA8();
LABEL_9:
    v12 = v11;
    sub_1E4806788(a1);
    v13 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v13[5]);
    *(a1 + v13[6]) = v12;
    *(a1 + v13[7]) = 0;
    return result;
  }

  if (v10 == *MEMORY[0x1E69857F8])
  {
    type metadata accessor for FakeEvents();
    v11 = sub_1E480774C();
    goto LABEL_9;
  }

  if (v10 == *MEMORY[0x1E69857E0])
  {
    type metadata accessor for FakeEvents();
    v11 = sub_1E4808A90();
    goto LABEL_9;
  }

  if (v10 == *MEMORY[0x1E6985810])
  {
    type metadata accessor for FakeEvents();
    v11 = sub_1E480AA84();
    goto LABEL_9;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1E4878F9C();

  v16 = 0xD00000000000001BLL;
  v17 = 0x80000001E48A64A0;
  sub_1E4878A3C();
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v15 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v15);

  (*(v3 + 8))(v7, v2);
  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

id sub_1E482CEF0(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v64 = a1;
  v67 = a4;
  v68 = a3;
  v5 = sub_1E4878A1C();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487894C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487732C();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v54 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v23 = result;
    sub_1E48772FC();

    v24 = [objc_opt_self() shared];
    v59 = [v24 stopTimeDemoModeActive];

    sub_1E4878A3C();
    v25 = sub_1E4830F08(v15);
    v57 = v25;
    v55 = *(v12 + 8);
    v55(v15, v11);
    v26 = sub_1E4878DEC();
    v70 = v21;
    v56 = v26;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E487AC40;
    sub_1E4831220(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v69 = v16;
    v28 = sub_1E48790CC();
    v30 = v29;
    v31 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v32 = sub_1E478B950();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v33 = MEMORY[0x1E69E65A8];
    *(v27 + 96) = MEMORY[0x1E69E6530];
    *(v27 + 104) = v33;
    *(v27 + 64) = v32;
    *(v27 + 72) = v25;
    sub_1E4878A3C();
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v34 = sub_1E48790CC();
    v36 = v35;
    v37 = v55;
    v55(v15, v11);
    *(v27 + 136) = v31;
    *(v27 + 144) = v32;
    v38 = v32;
    *(v27 + 112) = v34;
    *(v27 + 120) = v36;
    sub_1E478E80C();
    v39 = sub_1E4878E4C();
    v40 = v70;
    sub_1E4877AAC();

    sub_1E4878A3C();
    v41 = v60;
    sub_1E4878A2C();
    swift_getKeyPath();
    v42 = MEMORY[0x1E69190B0]();

    (*(v61 + 8))(v41, v62);
    sub_1E482D56C(v15, v42, v63, v72);

    v37(v15, v11);
    v43 = v73;
    v44 = v74;
    __swift_project_boxed_opaque_existential_0(v72, v73);
    v71[3] = type metadata accessor for EKUICalendarsIntent();
    v71[4] = &off_1F5E7C9D8;
    v71[0] = v64;
    v45 = *(v44 + 8);
    v46 = v64;
    v47 = v66;
    v45(v40, v57, v71, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v48 = v65;
    if (v59)
    {
      v49 = v54;
      sub_1E487731C();
      (*(v48 + 40))(v47, v49, v69);
    }

    sub_1E4878DBC();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1E487A7E0;
    v51 = CalendarEventsTimelineEntry.description.getter();
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = v38;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    v53 = sub_1E4878E4C();
    sub_1E4877AAC();

    v68(v47);
    (*(v48 + 8))(v40, v69);
    return sub_1E4831268(v47, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E482D56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a2;
  v7 = sub_1E4877CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v42 - v13;
  v15 = sub_1E487894C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x1E69857F0] || v20 == *MEMORY[0x1E69857F8])
  {
    a4[3] = type metadata accessor for ListTimeline();
    a4[4] = &off_1F5E7C178;
    *a4 = a3;
  }

  else if (v20 == *MEMORY[0x1E69857E0] || v20 == *MEMORY[0x1E6985810])
  {
    v42[0] = a4;
    if (v43)
    {
      v24 = 0;
      v25 = *(v43 + 16);
      v42[1] = v8 + 16;
      do
      {
        v26 = v25 != v24;
        if (v25 == v24)
        {
          break;
        }

        (*(v8 + 16))(v14, v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24++, v7);
        sub_1E4877CBC();
        sub_1E4831220(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
        v27 = sub_1E4878EAC();
        v28 = *(v8 + 8);
        v28(v12, v7);
        v28(v14, v7);
      }

      while ((v27 & 1) == 0);
    }

    else
    {
      v26 = 0;
    }

    v29 = type metadata accessor for EventKitDataSource();
    v30 = swift_allocObject();
    v31 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
    if (!v31)
    {
      v31 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
    }

    *(v30 + 16) = v31;
    v46 = v29;
    v47 = &off_1F5E7D4F8;
    v44 = v30;
    v32 = type metadata accessor for SpatialTimeline();
    v33 = swift_allocObject();
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v44, v29);
    v35 = *(*(v29 - 8) + 64);
    MEMORY[0x1EEE9AC00](v34);
    v37 = (v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    *(v33 + 40) = v29;
    *(v33 + 48) = &off_1F5E7D4F8;
    *(v33 + 16) = v39;
    *(v33 + 64) = MEMORY[0x1E69E7CC0];
    *(v33 + 56) = v26;
    result = __swift_destroy_boxed_opaque_existential_1(&v44);
    v40 = v42[0];
    *(v42[0] + 24) = v32;
    v40[4] = &off_1F5E7CD28;
    *v40 = v33;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1E4878F9C();

    v44 = 0xD00000000000001BLL;
    v45 = 0x80000001E48A64A0;
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v41 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v41);

    MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id sub_1E482DAA8(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v95 = a5;
  v99 = a4;
  v100 = a3;
  v97 = a2;
  v96 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v79 - v8;
  v94 = sub_1E4878A1C();
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487894C();
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E48789CC();
  v102 = *(v17 - 8);
  v103 = v17;
  v18 = *(v102 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - v21;
  v105 = sub_1E487732C();
  v98 = *(v105 - 8);
  v23 = *(v98 + 64);
  v24 = MEMORY[0x1EEE9AC00](v105);
  v80 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v29 = result;
    v106 = v27;
    sub_1E48772FC();

    v30 = [objc_opt_self() shared];
    v31 = [v30 stopTimeDemoModeActive];

    sub_1E48789AC();
    v86 = v31;
    v91 = v5;
    v90 = v6;
    v89 = v9;
    v88 = v22;
    v87 = v12;
    if (v31)
    {
      v32 = v22;
      v33 = v101;
      sub_1E48789BC();
      v34 = v102;
      v35 = v32;
      v36 = v32;
      v37 = v103;
      (*(v102 + 8))(v35, v103);
      (*(v34 + 32))(v36, v33, v37);
      v38 = 1;
    }

    else
    {
      v38 = 20;
    }

    v104 = v38;
    sub_1E4878A3C();
    v39 = sub_1E4830F08(v16);
    v83 = v39;
    v81 = *(v92 + 8);
    v81(v16, v13);
    v82 = sub_1E4878DEC();
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E487BC70;
    sub_1E4831220(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v41 = sub_1E48790CC();
    v43 = v42;
    v44 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v45 = sub_1E478B950();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    v46 = MEMORY[0x1E69E6530];
    v47 = MEMORY[0x1E69E65A8];
    *(v40 + 96) = MEMORY[0x1E69E6530];
    *(v40 + 104) = v47;
    v48 = v104;
    *(v40 + 64) = v45;
    *(v40 + 72) = v48;
    *(v40 + 136) = v46;
    *(v40 + 144) = v47;
    *(v40 + 112) = v39;
    sub_1E4878A3C();
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v49 = sub_1E48790CC();
    v51 = v50;
    v52 = v81;
    v81(v16, v13);
    *(v40 + 176) = v44;
    *(v40 + 184) = v45;
    v92 = v45;
    *(v40 + 152) = v49;
    *(v40 + 160) = v51;
    v84 = sub_1E478E80C();
    v53 = sub_1E4878E4C();
    sub_1E4877AAC();

    sub_1E4878A3C();
    v54 = v87;
    sub_1E4878A2C();
    swift_getKeyPath();
    v55 = MEMORY[0x1E69190B0]();

    (*(v93 + 8))(v54, v94);
    sub_1E482D56C(v16, v55, v95, &v108);

    v52(v16, v13);
    v56 = v109;
    v57 = v110;
    __swift_project_boxed_opaque_existential_0(&v108, v109);
    v107[3] = type metadata accessor for EKUICalendarsIntent();
    v107[4] = &off_1F5E7C9D8;
    v107[0] = v96;
    v58 = v96;
    sub_1E4878A3C();
    v59 = (*(v57 + 16))(v106, v104, v83, v107, v16, v56, v57);
    v52(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(&v108);
    if (v86)
    {
      v60 = v80;
      v61 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v61);
      *(&v79 - 2) = v60;
      v62 = sub_1E48566E0(sub_1E483112C, (&v79 - 4), v59);

      v63 = v98;
      v64 = v105;
      (*(v98 + 8))(v60, v105);
      v59 = v62;
      v65 = v91;
      v66 = v89;
    }

    else
    {
      v65 = v91;
      v66 = v89;
      v64 = v105;
      v63 = v98;
    }

    sub_1E4878DEC();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E487A7F0;
    v68 = *(v59 + 16);
    *(v67 + 56) = MEMORY[0x1E69E6530];
    *(v67 + 64) = MEMORY[0x1E69E65A8];
    *(v67 + 32) = v68;
    v69 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);

    v71 = sub_1E4878E9C();
    v73 = v72;

    v74 = v92;
    *(v67 + 96) = MEMORY[0x1E69E6158];
    *(v67 + 104) = v74;
    *(v67 + 72) = v71;
    *(v67 + 80) = v73;
    v75 = sub_1E4878E4C();
    sub_1E4877AAC();

    v76 = v102;
    v77 = v88;
    v78 = v103;
    (*(v102 + 16))(v101, v88, v103);
    sub_1E4831220(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry);
    sub_1E4878A5C();
    v100(v66);
    (*(v90 + 8))(v66, v65);
    (*(v76 + 8))(v77, v78);
    return (*(v63 + 8))(v106, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CalendarUpNextWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D570, &qword_1E4881DA0);
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v45 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D578, &qword_1E4881DA8);
  v47 = *(v50 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D580, &qword_1E4881DB0);
  v49 = *(v52 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D588, &unk_1E4881DB8);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v45 - v12;
  v13 = type metadata accessor for EventKitDataSource();
  v14 = swift_allocObject();
  v15 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v15)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for EKUICalendarsIntent();
  *(v14 + 16) = v15;
  v61 = v13;
  v62 = &off_1F5E7D4F8;
  v58 = v14;
  type metadata accessor for ListTimeline();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(&v58, v13);
  v18 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v16[5] = v13;
  v16[6] = &off_1F5E7D4F8;
  v16[2] = v22;
  v23 = MEMORY[0x1E69E7CC0];
  v16[7] = MEMORY[0x1E69E7CC0];
  v16[8] = v23;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  v58 = v16;
  type metadata accessor for CalendarUpNextWidget.WidgetView();
  sub_1E4831220(qword_1EE2B4290, type metadata accessor for CalendarUpNextWidget.WidgetView);
  sub_1E482EE3C();
  sub_1E487898C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v45[1] = qword_1EE2BAF40;
  v58 = sub_1E48771EC();
  v59 = v24;
  v25 = sub_1E4773680(&qword_1EE2B0E58, &qword_1ECF7D570, &qword_1E4881DA0);
  v26 = sub_1E477A374();
  v27 = MEMORY[0x1E69E6158];
  v28 = v26;
  v45[0] = v26;
  sub_1E487800C();

  (*(v46 + 8))(v4, v1);
  v58 = v1;
  v59 = v27;
  v60 = v25;
  v61 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v48;
  v31 = v50;
  sub_1E487801C();
  (*(v47 + 8))(v7, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v32 = sub_1E487894C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E487BC70;
  v37 = v36 + v35;
  v38 = *(v33 + 104);
  v38(v36 + v35, *MEMORY[0x1E69857F0], v32);
  v38(v37 + v34, *MEMORY[0x1E69857F8], v32);
  v38(v37 + 2 * v34, *MEMORY[0x1E69857E0], v32);
  v38(v37 + 3 * v34, *MEMORY[0x1E6985810], v32);
  v58 = v31;
  v59 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v41 = v51;
  v40 = v52;
  sub_1E4877FFC();

  (*(v49 + 8))(v30, v40);
  v58 = sub_1E48771EC();
  v59 = v42;
  v56 = v40;
  v57 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v54;
  sub_1E4877FEC();

  return (*(v53 + 8))(v41, v43);
}

uint64_t sub_1E482ECEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E48311B8(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarUpNextWidget.WidgetView() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarUpNextWidget.WidgetView()
{
  result = qword_1EE2B4280;
  if (!qword_1EE2B4280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E482EE3C()
{
  result = qword_1EE2B2148[0];
  if (!qword_1EE2B2148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2148);
  }

  return result;
}

uint64_t sub_1E482EE90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CalendarUpNextWidget.WidgetView();
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487894C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E482F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a1;
  v164 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5C0, &qword_1E4881F90);
  v2 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v141 = &v139 - v3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5D8, &qword_1E4882008);
  v4 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v139 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5B0, &qword_1E4881F78);
  v6 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v149 = &v139 - v7;
  v144 = sub_1E48782AC();
  v143 = *(v144 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5B8, &unk_1E4881F80);
  v10 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v140 = &v139 - v11;
  v152 = type metadata accessor for MediumListContentView();
  v12 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5E0, &qword_1E4882010);
  v15 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v139 - v16;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5E8, &qword_1E4882018);
  v17 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v139 - v18;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5F0, &qword_1E4882020);
  v19 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v21 = &v139 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5A8, &qword_1E4881F70);
  v22 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v139 - v23;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5A0, &qword_1E4881F68);
  v24 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v139 - v25;
  v26 = type metadata accessor for SmallListContentView();
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E487894C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v139 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D598, &qword_1E4881F60);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v158 = &v139 - v40;
  sub_1E4878D2C();
  v157 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = v153;
  sub_1E482EE90(v37);
  v42 = (*(v31 + 88))(v37, v30);
  if (v42 == *MEMORY[0x1E69857F0])
  {
    v43 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v44 = *(v43 + 20);
    v45 = sub_1E487732C();
    (*(*(v45 - 8) + 16))(v29, v41 + v44, v45);
    v46 = *(v41 + *(v43 + 24));
    *&v29[v26[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v29[v26[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    v49 = swift_getKeyPath();
    *&v29[v26[5]] = v46;
    v29[v26[6]] = 1;
    v29[v26[7]] = 2;
    v29[v26[8]] = 0;
    v50 = &v29[v26[11]];
    *v50 = KeyPath;
    v50[8] = 0;
    v51 = &v29[v26[12]];
    *v51 = v48;
    v51[8] = 0;
    v52 = &v29[v26[13]];
    *v52 = v49;
    v52[8] = 0;
    sub_1E48311B8(v29, v21, type metadata accessor for SmallListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView);

    v53 = v151;
    sub_1E487803C();
    sub_1E4773850(v53, v156, &qword_1ECF7D5A8, &qword_1E4881F70);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v54 = v160;
    sub_1E487803C();
    sub_1E47738B8(v53, &qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4773850(v54, v163, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v55 = v158;
    sub_1E487803C();
    sub_1E47738B8(v54, &qword_1ECF7D5A0, &qword_1E4881F68);
    v56 = v29;
    v57 = type metadata accessor for SmallListContentView;
LABEL_7:
    sub_1E4831268(v56, v57);
LABEL_13:
    sub_1E4830E98(v55, v164);
  }

  if (v42 == *MEMORY[0x1E69857F8])
  {
    v58 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v59 = *(v58 + 20);
    v60 = sub_1E487732C();
    (*(*(v60 - 8) + 16))(v14, v41 + v59, v60);
    v61 = *(v41 + *(v58 + 24));
    v62 = swift_getKeyPath();
    v63 = v152;
    *&v14[*(v152 + 28)] = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v64 = swift_getKeyPath();
    *&v14[v63[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v65 = swift_getKeyPath();
    *&v14[v63[5]] = v61;
    v66 = &v14[v63[6]];
    v165 = MEMORY[0x1E69E7CC0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D440, &qword_1E48815B8);
    sub_1E48787FC();
    v67 = v167;
    *v66 = v166;
    v66[1] = v67;
    v68 = &v14[v63[8]];
    *v68 = v64;
    v68[8] = 0;
    v69 = &v14[v63[10]];
    *v69 = v65;
    v69[8] = 0;
    sub_1E48311B8(v14, v21, type metadata accessor for MediumListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView);
    v70 = v151;
    sub_1E487803C();
    sub_1E4773850(v70, v156, &qword_1ECF7D5A8, &qword_1E4881F70);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v71 = v160;
    sub_1E487803C();
    sub_1E47738B8(v70, &qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4773850(v71, v163, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v55 = v158;
    sub_1E487803C();
    sub_1E47738B8(v71, &qword_1ECF7D5A0, &qword_1E4881F68);
    v56 = v14;
    v57 = type metadata accessor for MediumListContentView;
    goto LABEL_7;
  }

  if (v42 == *MEMORY[0x1E69857E0])
  {
    v72 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v73 = *(v72 + 20);
    v74 = sub_1E487732C();
    v75 = v140;
    (*(*(v74 - 8) + 16))(v140, v41 + v73, v74);
    v76 = *(v41 + *(v72 + 24));
    v77 = swift_getKeyPath();
    v78 = type metadata accessor for LargeSpatialContentView();
    *(v75 + v78[6]) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v79 = swift_getKeyPath();
    v80 = swift_getKeyPath();
    *(v75 + v78[5]) = v76;
    v81 = v75 + v78[7];
    *v81 = v79;
    *(v81 + 8) = 0;
    v82 = v75 + v78[8];
    *v82 = v80;
    *(v82 + 8) = 0;

    sub_1E48782EC();
    v83 = *MEMORY[0x1E6980EA0];
    v84 = v143;
    v85 = *(v143 + 104);
    v86 = v142;
    v87 = v144;
    v85(v142, v83, v144);
    sub_1E48782CC();

    v88 = *(v84 + 8);
    v88(v86, v87);
    v89 = sub_1E48781FC();

    sub_1E48782EC();
    v85(v86, v83, v87);
    v90 = sub_1E48782CC();

    v88(v86, v87);
    v91 = type metadata accessor for ViewMetrics();
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    v94 = swift_allocObject();
    sub_1E487758C();
    *(v94 + 16) = xmmword_1E487BC80;
    *(v94 + 32) = xmmword_1E487BC90;
    __asm { FMOV            V0.2D, #3.0 }

    *(v94 + 48) = _Q0;
    *(v94 + 64) = xmmword_1E4881300;
    *(v94 + 112) = 0x3FF0000000000000;
    *(v94 + 120) = 1;
    *(v94 + 128) = v89;
    *(v94 + 136) = v90;
    *(v94 + 144) = 1;
    *(v94 + 146) = 1;
    *(v94 + 80) = xmmword_1E487BCC0;
    *(v94 + 96) = _Q0;
    v100 = swift_getKeyPath();
    v101 = (v75 + *(v145 + 36));
    *v101 = v100;
    v101[1] = v94;
    v102 = &unk_1E4881F80;
    sub_1E4773850(v75, v147, &qword_1ECF7D5B8, &unk_1E4881F80);
    swift_storeEnumTagMultiPayload();
    sub_1E4830CA4();
    sub_1E4830D8C();
    v103 = v149;
    sub_1E487803C();
    sub_1E4773850(v103, v156, &qword_1ECF7D5B0, &qword_1E4881F78);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v104 = v160;
    sub_1E487803C();
    sub_1E47738B8(v103, &qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4773850(v104, v163, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v55 = v158;
    sub_1E487803C();
    sub_1E47738B8(v104, &qword_1ECF7D5A0, &qword_1E4881F68);
    v105 = v75;
    v106 = &qword_1ECF7D5B8;
LABEL_12:
    sub_1E47738B8(v105, v106, v102);
    goto LABEL_13;
  }

  if (v42 == *MEMORY[0x1E6985810])
  {
    v107 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v108 = *(v107 + 20);
    v109 = sub_1E487732C();
    v110 = v41 + v108;
    v111 = v41;
    v112 = v141;
    (*(*(v109 - 8) + 16))(v141, v110, v109);
    v113 = *(v111 + *(v107 + 24));
    v114 = swift_getKeyPath();
    v115 = type metadata accessor for ExtraLargeSpatialContentView();
    *(v112 + v115[6]) = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v116 = swift_getKeyPath();
    v117 = swift_getKeyPath();
    *(v112 + v115[5]) = v113;
    v118 = v112 + v115[7];
    *v118 = v116;
    *(v118 + 8) = 0;
    v119 = v112 + v115[8];
    *v119 = v117;
    *(v119 + 8) = 0;

    sub_1E48782EC();
    v120 = *MEMORY[0x1E6980EA0];
    v121 = v143;
    v122 = *(v143 + 104);
    v123 = v142;
    v124 = v144;
    v122(v142, v120, v144);
    sub_1E48782CC();

    v125 = *(v121 + 8);
    v125(v123, v124);
    v126 = sub_1E48781FC();

    sub_1E48782EC();
    v122(v123, v120, v124);
    v127 = sub_1E48782CC();

    v125(v123, v124);
    v128 = type metadata accessor for ViewMetrics();
    v129 = *(v128 + 48);
    v130 = *(v128 + 52);
    v131 = swift_allocObject();
    sub_1E487758C();
    *(v131 + 16) = xmmword_1E487BC80;
    *(v131 + 32) = xmmword_1E487BC90;
    __asm { FMOV            V0.2D, #3.0 }

    *(v131 + 48) = _Q0;
    *(v131 + 64) = xmmword_1E4881300;
    *(v131 + 112) = 0x3FF0000000000000;
    *(v131 + 120) = 1;
    *(v131 + 128) = v126;
    *(v131 + 136) = v127;
    *(v131 + 144) = 1;
    *(v131 + 146) = 1;
    *(v131 + 80) = xmmword_1E487BCC0;
    *(v131 + 96) = _Q0;
    v133 = swift_getKeyPath();
    v134 = (v112 + *(v148 + 36));
    *v134 = v133;
    v134[1] = v131;
    v102 = &qword_1E4881F90;
    sub_1E4773850(v112, v147, &qword_1ECF7D5C0, &qword_1E4881F90);
    swift_storeEnumTagMultiPayload();
    sub_1E4830CA4();
    sub_1E4830D8C();
    v135 = v149;
    sub_1E487803C();
    sub_1E4773850(v135, v156, &qword_1ECF7D5B0, &qword_1E4881F78);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v136 = v160;
    sub_1E487803C();
    sub_1E47738B8(v135, &qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4773850(v136, v163, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v55 = v158;
    sub_1E487803C();
    sub_1E47738B8(v136, &qword_1ECF7D5A0, &qword_1E4881F68);
    v105 = v112;
    v106 = &qword_1ECF7D5C0;
    goto LABEL_12;
  }

  v166 = 0;
  v167 = 0xE000000000000000;
  sub_1E4878F9C();

  v166 = 0xD00000000000001BLL;
  v167 = 0x80000001E48A64A0;
  sub_1E482EE90(v35);
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v138 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v138);

  (*(v31 + 8))(v35, v30);
  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E4830584@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_1E4830614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v20 = sub_1E48780DC();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D590, &unk_1E4881F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  sub_1E482F098(v2, &v18 - v9);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E4830990();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
  v11 = v19;
  sub_1E487859C();
  (*(v3 + 8))(v6, v20);
  sub_1E47738B8(v10, &qword_1ECF7D590, &unk_1E4881F50);
  KeyPath = swift_getKeyPath();
  v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5C8, &unk_1E4881FC8) + 36));
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80) + 28);
  sub_1E4877A7C();
  *v13 = KeyPath;
  v15 = swift_getKeyPath();
  LOBYTE(v13) = *(v21 + *(type metadata accessor for CalendarEventsTimelineEntry(0) + 28));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5D0, &qword_1E4882000);
  v17 = v11 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v13;
  return result;
}

unint64_t sub_1E4830990()
{
  result = qword_1EE2B1038;
  if (!qword_1EE2B1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D590, &unk_1E4881F50);
    sub_1E4830A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1038);
  }

  return result;
}

unint64_t sub_1E4830A14()
{
  result = qword_1EE2B1120;
  if (!qword_1EE2B1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D598, &qword_1E4881F60);
    sub_1E4830AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1120);
  }

  return result;
}

unint64_t sub_1E4830AA0()
{
  result = qword_1EE2B1160;
  if (!qword_1EE2B1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5A0, &qword_1E4881F68);
    sub_1E4830B2C();
    sub_1E4830C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1160);
  }

  return result;
}

unint64_t sub_1E4830B2C()
{
  result = qword_1EE2B1240;
  if (!qword_1EE2B1240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1240);
  }

  return result;
}

unint64_t sub_1E4830C18()
{
  result = qword_1EE2B1210;
  if (!qword_1EE2B1210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4830CA4();
    sub_1E4830D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1210);
  }

  return result;
}

unint64_t sub_1E4830CA4()
{
  result = qword_1EE2B15F0;
  if (!qword_1EE2B15F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5B8, &unk_1E4881F80);
    sub_1E4831220(qword_1EE2B2480, type metadata accessor for LargeSpatialContentView);
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15F0);
  }

  return result;
}

unint64_t sub_1E4830D8C()
{
  result = qword_1EE2B15E8;
  if (!qword_1EE2B15E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5C0, &qword_1E4881F90);
    sub_1E4831220(qword_1EE2B1F40, type metadata accessor for ExtraLargeSpatialContentView);
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15E8);
  }

  return result;
}

uint64_t sub_1E4830E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D598, &qword_1E4881F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4830F08(uint64_t a1)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69857F0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E69857F8] || v7 == *MEMORY[0x1E69857E0] || v7 == *MEMORY[0x1E6985810])
  {
    return 8;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1E4878F9C();

  v12 = 0xD00000000000001BLL;
  v13 = 0x80000001E48A64A0;
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v11 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v11);

  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E483112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E48311B8(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

uint64_t sub_1E48311B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4831220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4831268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E48312C8()
{
  result = qword_1EE2B13D8;
  if (!qword_1EE2B13D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5D0, &qword_1E4882000);
    sub_1E4831380();
    sub_1E4773680(&qword_1EE2B10B0, &qword_1ECF7BED8, &unk_1E4882140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13D8);
  }

  return result;
}

unint64_t sub_1E4831380()
{
  result = qword_1EE2B1530;
  if (!qword_1EE2B1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5C8, &unk_1E4881FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D590, &unk_1E4881F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E4830990();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1530);
  }

  return result;
}

uint64_t type metadata accessor for ConflictColorBarView()
{
  result = qword_1EE2B2B48;
  if (!qword_1EE2B2B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4831548()
{
  sub_1E483163C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1E483163C(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E483163C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E48316BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1E4832160(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E48318A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConflictColorBarView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1E4831EB4(v1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1E4831F18(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = *(v1 + *(v4 + 32)) + *(v1 + *(v4 + 32));
  sub_1E487889C();
  sub_1E4877BCC();
  v10 = v22[2];
  v11 = v24;
  v12 = v26;
  v13 = v27;
  v29 = v23;
  v28 = v25;
  LOBYTE(v9) = sub_1E487819C();
  v14 = *(v1 + *(v4 + 36));
  result = sub_1E4877B0C();
  v16 = v29;
  v17 = v28;
  *a1 = sub_1E4831F7C;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v16;
  *(a1 + 32) = v11;
  *(a1 + 40) = v17;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = LOBYTE(v9);
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1E4831A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a1;
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v22[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877FAC();
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5F8, &unk_1E48821C0) + 44);
  v11 = type metadata accessor for ConflictColorBarView();
  v12 = *(a2 + *(v11 + 20));
  sub_1E48316BC(v9);
  v13 = sub_1E486B590(v12, 3, v9);
  (*(v6 + 8))(v9, v5);
  *&v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D600, &unk_1E48821D0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E4831FFC();
  sub_1E4832108();
  sub_1E487886C();

  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D610, &qword_1E48821E0) + 36));
  v15 = v24;
  *v14 = v23;
  v14[1] = v15;
  v14[2] = v25;
  v16 = *(a2 + *(v11 + 24));
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D618, &qword_1E48821E8) + 36));
  v18 = *(sub_1E4877CDC() + 20);
  v19 = *MEMORY[0x1E697F470];
  v20 = sub_1E4877F7C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);

  *v17 = v16;
  *(v17 + 1) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D620, &qword_1E48821F0);
  *&v17[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1E4831DFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  KeyPath = swift_getKeyPath();

  *a2 = KeyPath;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E4831EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConflictColorBarView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4831F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConflictColorBarView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4831F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ConflictColorBarView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4831A44(a1, v6, a2);
}

unint64_t sub_1E4831FFC()
{
  result = qword_1ECF7D608;
  if (!qword_1ECF7D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D600, &unk_1E48821D0);
    sub_1E48320B4();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D608);
  }

  return result;
}

unint64_t sub_1E48320B4()
{
  result = qword_1EE2B0EA8;
  if (!qword_1EE2B0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EA8);
  }

  return result;
}

unint64_t sub_1E4832108()
{
  result = qword_1EE2B4080;
  if (!qword_1EE2B4080)
  {
    type metadata accessor for ColorBarView.Styling(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4080);
  }

  return result;
}

uint64_t sub_1E4832160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E48321D0()
{
  result = qword_1ECF7D628;
  if (!qword_1ECF7D628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D630, &qword_1E4882228);
    sub_1E483225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D628);
  }

  return result;
}

unint64_t sub_1E483225C()
{
  result = qword_1ECF7D638;
  if (!qword_1ECF7D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D640, &qword_1E4882230);
    sub_1E4773680(&qword_1ECF7D648, &qword_1ECF7D650, qword_1E4882238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D638);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4832328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4832370(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1E48323DC@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4877F6C();
  if ((a1 & 0x100) != 0)
  {
    LOBYTE(v28) = 0;
    sub_1E4832800(a1 & 1, v19);
    *&v36[7] = v19[0];
    *&v36[23] = v19[1];
    *&v36[39] = v20[0];
    *&v36[48] = *(v20 + 9);
    v21[0] = v6;
    v21[1] = 0;
    v22[0] = v28;
    *&v22[1] = *v36;
    *&v22[17] = *&v36[16];
    *&v22[33] = *&v36[32];
    *&v22[49] = *(v20 + 9);
    v25[0] = v6;
    v25[1] = *v22;
    v25[3] = *&v22[32];
    v25[4] = *&v22[48];
    v25[2] = *&v22[16];
    v23[0] = v6;
    v23[1] = *v22;
    v23[3] = *&v22[32];
    v23[4] = *&v22[48];
    v23[2] = *&v22[16];
    *&v18[23] = *v22;
    v26 = BYTE8(v20[1]);
    v24 = BYTE8(v20[1]);
    *&v18[7] = v6;
    v18[87] = BYTE8(v20[1]);
    *&v18[71] = *&v22[48];
    *&v18[55] = *&v22[32];
    *&v18[39] = *&v22[16];
    sub_1E4773850(v21, v36, &qword_1ECF7D690, &qword_1E48822F8);
    sub_1E4773850(v23, v36, &qword_1ECF7D690, &qword_1E48822F8);
    sub_1E47738B8(v25, &qword_1ECF7D690, &qword_1E48822F8);
    *v36 = a3;
    *&v36[41] = *&v18[32];
    *&v36[57] = *&v18[48];
    *v37 = *&v18[64];
    *&v36[9] = *v18;
    v27 = 0;
    v36[8] = 0;
    *&v37[16] = *&v18[80];
    *&v36[25] = *&v18[16];
    *&v37[31] = 0;
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D660, &qword_1E48822E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D670, &qword_1ECF7D660, &qword_1E48822E0);
    sub_1E4832D7C();
    sub_1E487803C();
    sub_1E47738B8(v21, &qword_1ECF7D690, &qword_1E48822F8);
  }

  else
  {
    sub_1E4832A00(a1 & 1, v36);
    v7 = *v36;
    v8 = v36[16];
    v9 = *&v36[24];
    v10 = *&v36[32];
    v11 = v36[40];
    LOBYTE(v23[0]) = 0;
    LOBYTE(v21[0]) = v36[16];
    LOBYTE(v19[0]) = v36[40];
    v12 = sub_1E487814C();
    LOBYTE(v25[0]) = 1;
    *v36 = v6;
    v36[16] = 0;
    *&v36[24] = v7;
    v36[40] = v8;
    *&v36[48] = v9;
    *&v36[56] = v10;
    v36[64] = v11;
    v36[72] = v12;
    *&v37[7] = a3;
    *&v37[15] = xmmword_1E487BFD0;
    *&v37[31] = 0;
    v38 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D660, &qword_1E48822E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D670, &qword_1ECF7D660, &qword_1E48822E0);
    sub_1E4832D7C();
    sub_1E487803C();
  }

  *&v37[23] = v34;
  v13 = v35;
  *v36 = v28;
  *&v36[16] = v29;
  *&v36[32] = v30;
  *&v36[48] = v31;
  v14 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v14;
  *(a2 + 96) = *&v37[23];
  *(a2 + 112) = v13;
  v15 = *&v36[16];
  *a2 = *v36;
  *(a2 + 16) = v15;
  result = *&v36[32];
  v17 = *&v36[48];
  *(a2 + 32) = *&v36[32];
  *(a2 + 48) = v17;
  return result;
}

void sub_1E4832800(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];

    sub_1E477A374();
    v7 = sub_1E487848C();
    v9 = v8;
    v11 = v10;
    sub_1E48786FC();
    v12 = sub_1E48783FC();
    v14 = v13;
    v16 = v15;

    sub_1E477A3C8(v7, v9, v11 & 1);

    v17 = sub_1E487842C();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1E477A3C8(v12, v14, v16 & 1);

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
    *(a2 + 32) = v21 & 1;
    *(a2 + 40) = v23;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    sub_1E478B8E0(v17, v19, v21 & 1);

    sub_1E477A3C8(v17, v19, v21 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E4832A00(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];

    sub_1E477A374();
    v7 = sub_1E487848C();
    v9 = v8;
    v11 = v10;
    sub_1E48786FC();
    v12 = sub_1E48783FC();
    v14 = v13;
    v16 = v15;

    sub_1E477A3C8(v7, v9, v11 & 1);

    v17 = sub_1E487842C();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1E477A3C8(v12, v14, v16 & 1);

    *a2 = v17;
    *(a2 + 8) = v19;
    *(a2 + 16) = v21 & 1;
    *(a2 + 24) = v23;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    sub_1E478B8E0(v17, v19, v21 & 1);

    sub_1E477A3C8(v17, v19, v21 & 1);
  }

  else
  {
    __break(1u);
  }
}

double sub_1E4832BEC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[1];
  v6 = *(v1 + 2);
  v7 = sub_1E4877FBC();
  v24 = 0;
  if (v4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_1E48323DC(v8 | v3, &v15, v5);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[6] = v21;
  v34 = v22;
  sub_1E4773850(&v25, &v14, &qword_1ECF7D658, &qword_1E48822D8);
  sub_1E47738B8(v33, &qword_1ECF7D658, &qword_1E48822D8);
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  *(&v23[3] + 7) = v28;
  v9 = v23[5];
  *(a1 + 81) = v23[4];
  *(a1 + 97) = v9;
  *(a1 + 113) = v23[6];
  *(a1 + 122) = *(&v23[6] + 9);
  v10 = v23[1];
  *(a1 + 17) = v23[0];
  *(a1 + 33) = v10;
  result = *&v23[2];
  v12 = v23[3];
  *(a1 + 49) = v23[2];
  v13 = v24;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 65) = v12;
  return result;
}

unint64_t sub_1E4832D7C()
{
  result = qword_1ECF7D678;
  if (!qword_1ECF7D678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D680, &qword_1ECF7D688, &qword_1E48822F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D678);
  }

  return result;
}

uint64_t type metadata accessor for WideReminderView()
{
  result = qword_1EE2B3670;
  if (!qword_1EE2B3670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4832EA8()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v1 <= 0x3F)
    {
      sub_1E4833030(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v2 <= 0x3F)
      {
        sub_1E4833030(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          sub_1E4833030(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v4 <= 0x3F)
          {
            sub_1E4833030(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
            if (v5 <= 0x3F)
            {
              sub_1E4833030(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v6 <= 0x3F)
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

void sub_1E4833030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E48330A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideReminderView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48332A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideReminderView();
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48334B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideReminderView();
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48336B8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideReminderView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4833808@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WideReminderView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4833A10()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideReminderView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 128);

  return v10;
}

uint64_t sub_1E4833B74()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for WideReminderView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 136);

  return v10;
}

void sub_1E4833CD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v59 - v6;
  v8 = sub_1E487757C();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487753C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v20 = sub_1E487720C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v62 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CellDisplayContext(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WideReminderView();
  sub_1E483786C(v2 + *(v27 + 20), v26, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = a1;
    v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E48330A0(v19);
    v29 = sub_1E487748C();
    v30 = *(v13 + 8);
    v30(v19, v12);
    [v28 setCalendar_];

    sub_1E48330A0(v19);
    sub_1E487750C();
    v30(v19, v12);
    v31 = sub_1E487756C();
    (*(v60 + 8))(v11, v61);
    [v28 setTimeZone_];

    sub_1E48330A0(v17);
    sub_1E48774EC();
    v30(v17, v12);
    v32 = sub_1E487744C();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v7, 1, v32) != 1)
    {
      v34 = sub_1E48773DC();
      (*(v33 + 8))(v7, v32);
    }

    [v28 setLocale_];

    v35 = type metadata accessor for Event();
    v36 = sub_1E4878B9C();
    [v28 setLocalizedDateFormatFromTemplate_];

    v37 = v2 + *(v35 + 20);
    v38 = sub_1E48772BC();
    v43 = [v28 stringFromDate_];

    sub_1E4878BDC();
    sub_1E48771FC();
    sub_1E48771AC();
    v44 = *(sub_1E48336B8() + 136);

    v45 = sub_1E48781CC();

    aBlock[0] = v45;
    sub_1E47C4180();
    sub_1E48771BC();
  }

  else
  {
    v60 = v13;
    v61 = v12;
    v39 = sub_1E487732C();
    (*(*(v39 - 8) + 8))(v26, v39);
    v40 = type metadata accessor for Event();
    if (*(v2 + *(v40 + 48)) == 1)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      sub_1E48771FC();
      sub_1E48771AC();
      v41 = *(sub_1E48336B8() + 136);

      v42 = sub_1E48781CC();

      aBlock[0] = v42;
      sub_1E47C4180();
      sub_1E48771BC();
    }

    else
    {
      v46 = a1;
      v47 = *(v40 + 20);
      sub_1E48330A0(v19);
      v48 = *(sub_1E48336B8() + 136);

      v49 = sub_1E48781CC();

      v50 = objc_opt_self();
      v51 = sub_1E48772BC();
      v52 = sub_1E487748C();
      v53 = [v50 timeAttributedTextWithDate:v51 calendar:v52 font:0 options:16];

      v54 = [v53 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      sub_1E48771AC();
      aBlock[0] = v49;
      sub_1E47C4180();

      sub_1E48771BC();
      v62 = *MEMORY[0x1E6993360];
      v55 = [v53 length];
      v56 = swift_allocObject();
      *(v56 + 16) = v46;
      *(v56 + 24) = v49;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1E47C41D4;
      *(v57 + 24) = v56;
      aBlock[4] = sub_1E48378D4;
      aBlock[5] = v57;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E48373C0;
      aBlock[3] = &block_descriptor_3;
      v58 = _Block_copy(aBlock);

      [v53 enumerateAttribute:v62 inRange:0 options:v55 usingBlock:{0, v58}];

      _Block_release(v58);

      (*(v60 + 8))(v19, v61);
      LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

      if (v53)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1E4834648@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v39 - v4;
  v5 = sub_1E487725C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CellDisplayContext(0);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4877CCC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = v1;
  sub_1E48332A8(&v39 - v18);
  sub_1E4877CAC();
  sub_1E47C42C4(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v21 = sub_1E4878EAC();
  v22 = *(v13 + 8);
  v22(v17, v12);
  v22(v19, v12);
  if (v21)
  {
    return (*(v6 + 56))(v42, 1, 1, v5);
  }

  v24 = v6;
  v25 = v42;
  v26 = type metadata accessor for WideReminderView();
  sub_1E483786C(v20 + *(v26 + 20), v11, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v20;
  if (EnumCaseMultiPayload)
  {
    v29 = v41;
    if (EnumCaseMultiPayload != 1)
    {
      v37 = type metadata accessor for Event();
      sub_1E4773850(v28 + *(v37 + 44), v25, &unk_1ECF7B688, &qword_1E487C160);
      v38 = sub_1E487732C();
      return (*(*(v38 - 8) + 8))(v11, v38);
    }

    v30 = *v11;
  }

  else
  {
    v30 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    v31 = sub_1E487732C();
    (*(*(v31 - 8) + 8))(v11, v31);
    v29 = v41;
  }

  v32 = type metadata accessor for Event();
  sub_1E4773850(v28 + *(v32 + 44), v29, &unk_1ECF7B688, &qword_1E487C160);
  v33 = v24;
  v34 = v5;
  if ((*(v24 + 48))(v29, 1, v5) == 1)
  {
    sub_1E47738B8(v29, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v35 = *(v24 + 32);
    v36 = v39;
    v35(v39, v29, v34);
    if (v30)
    {
      v35(v25, v36, v34);
      return (*(v33 + 56))(v25, 0, 1, v34);
    }

    (*(v33 + 8))(v36, v34);
  }

  return (*(v33 + 56))(v25, 1, 1, v34);
}

uint64_t sub_1E4834B0C()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487893C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1E4833808(&v19 - v12);
  sub_1E487892C();
  v14 = sub_1E48788FC();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if ((v14 & 1) == 0)
  {
    sub_1E4833808(v13);
    sub_1E487890C();
    v16 = sub_1E48788FC();
    v15(v11, v6);
    v15(v13, v6);
    if ((v16 & 1) == 0)
    {
      return sub_1E48786EC();
    }
  }

  sub_1E48334B0(v5);
  sub_1E476F0D0(v0, v5);
  v17 = sub_1E48785FC();
  (*(v2 + 8))(v5, v1);
  return v17;
}

uint64_t sub_1E4834D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D708, &qword_1E48824E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v39 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event() + 56)) == 6)
  {
    v15 = MEMORY[0x1E69932E0];
  }

  else
  {
    v15 = MEMORY[0x1E69932F8];
  }

  v16 = *v15;
  sub_1E4878BDC();
  v17 = sub_1E487874C();
  v18 = sub_1E4833A10();
  KeyPath = swift_getKeyPath();
  v32 = KeyPath;
  sub_1E48334B0(v14);
  v38 = sub_1E4770A7C(a1, v14);
  (*(v11 + 8))(v14, v10);
  v37 = swift_getKeyPath();
  v20 = *(sub_1E48336B8() + 80);

  sub_1E487889C();
  sub_1E4877BCC();
  v35 = v46;
  v36 = v44;
  v33 = v49;
  v34 = v48;
  v43 = 1;
  v42 = v45;
  v41 = v47;
  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D710, &qword_1E4882548);
  sub_1E4835120(a1, &v9[*(v21 + 44)]);
  v22 = v43;
  v23 = v42;
  v24 = v9;
  v25 = v41;
  v26 = v40;
  sub_1E4773850(v24, v40, &qword_1ECF7D708, &qword_1E48824E0);
  *a2 = v17;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v18;
  v27 = v38;
  *(a2 + 24) = v37;
  *(a2 + 32) = v27;
  *(a2 + 40) = 0;
  *(a2 + 48) = v22;
  v28 = v35;
  *(a2 + 56) = v36;
  *(a2 + 64) = v23;
  *(a2 + 72) = v28;
  *(a2 + 80) = v25;
  v29 = v33;
  *(a2 + 88) = v34;
  *(a2 + 96) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D718, &qword_1E4882550);
  sub_1E4773850(v26, a2 + *(v30 + 64), &qword_1ECF7D708, &qword_1E48824E0);

  sub_1E47738B8(v24, &qword_1ECF7D708, &qword_1E48824E0);
  sub_1E47738B8(v26, &qword_1ECF7D708, &qword_1E48824E0);
}

uint64_t sub_1E4835120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D720, &qword_1E4882558);
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v32 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D728, &qword_1E4882560);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D730, &qword_1E4882568);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D738, &qword_1E4882570);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  sub_1E4878D2C();
  v34 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_1E4877F6C();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D740, &qword_1E4882578);
  sub_1E4835588(a1, &v23[*(v24 + 44)]);
  if (*(a1 + *(type metadata accessor for Event() + 48)))
  {
    v25 = 1;
    v26 = v33;
  }

  else
  {
    v27 = *(sub_1E48336B8() + 96);

    *v5 = sub_1E4877F6C();
    *(v5 + 1) = v27;
    v5[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D748, &qword_1E4882580);
    sub_1E4835DD8(a1, &v5[*(v28 + 44)]);
    sub_1E4773680(&qword_1ECF7D750, &qword_1ECF7D720, &qword_1E4882558);
    sub_1E48784AC();
    sub_1E47738B8(v5, &qword_1ECF7D720, &qword_1E4882558);
    v26 = v33;
    (*(v6 + 32))(v16, v9, v33);
    v25 = 0;
  }

  (*(v6 + 56))(v16, v25, 1, v26);
  sub_1E4773850(v23, v21, &qword_1ECF7D738, &qword_1E4882570);
  sub_1E4773850(v16, v14, &qword_1ECF7D730, &qword_1E4882568);
  v29 = v35;
  sub_1E4773850(v21, v35, &qword_1ECF7D738, &qword_1E4882570);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D758, &qword_1E4882588);
  sub_1E4773850(v14, v29 + *(v30 + 48), &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v16, &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v23, &qword_1ECF7D738, &qword_1E4882570);
  sub_1E47738B8(v14, &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v21, &qword_1ECF7D738, &qword_1E4882570);
}

uint64_t sub_1E4835588@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1E487719C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v68 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D760, &qword_1E4882598);
  v79 = *(v80 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D778, &unk_1E4882618);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v68 - v14;
  v74 = sub_1E4877B3C();
  v73 = *(v74 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v77 = *(v78 - 8);
  v17 = *(v77 + 64);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v68 - v20;
  sub_1E4878D2C();
  v75 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v92 = sub_1E47CC708();
  *(&v92 + 1) = v21;
  sub_1E477A374();
  v22 = sub_1E487848C();
  v24 = v23;
  v26 = v25;
  sub_1E4833A10();
  v27 = sub_1E487842C();
  v29 = v28;
  v31 = v30;

  sub_1E477A3C8(v22, v24, v26 & 1);

  v32 = v72;
  sub_1E48334B0(v72);
  sub_1E476EA20(a1, v32);
  (*(v73 + 8))(v32, v74);
  v33 = sub_1E48783FC();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_1E477A3C8(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  *&v92 = v33;
  *(&v92 + 1) = v35;
  LOBYTE(v93) = v37 & 1;
  *(&v93 + 1) = v39;
  *&v94 = KeyPath;
  *(&v94 + 1) = 1;
  LOBYTE(v95) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v33, v35, v37 & 1);

  if (*(a1 + *(type metadata accessor for Event() + 48)) == 1)
  {
    sub_1E4833CD8(v68);
    v41 = sub_1E487847C();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = swift_getKeyPath();
    v49 = sub_1E4834B0C();
    v50 = swift_getKeyPath();
    v91 = v45 & 1;
    v90 = 0;
    *&v85 = v41;
    *(&v85 + 1) = v43;
    LOBYTE(v86) = v45 & 1;
    *(&v86 + 1) = v47;
    *&v87 = v48;
    *(&v87 + 1) = 1;
    LOBYTE(v88) = 0;
    *(&v88 + 1) = v50;
    v89 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E479A240();
    v51 = v70;
    sub_1E487852C();
    v94 = v87;
    v95 = v88;
    v96 = v89;
    v92 = v85;
    v93 = v86;
    sub_1E47738B8(&v92, &qword_1ECF7C000, &unk_1E48825D0);
    sub_1E48377B0();
    v52 = v69;
    sub_1E48784AC();
    sub_1E47738B8(v51, &qword_1ECF7C680, &qword_1E4882590);
    v53 = v79;
    v54 = v81;
    v55 = v52;
    v56 = v80;
    (*(v79 + 32))(v81, v55, v80);
    (*(v53 + 56))(v54, 0, 1, v56);
  }

  else
  {
    v54 = v81;
    (*(v79 + 56))(v81, 1, 1, v80);
  }

  v57 = v77;
  v58 = *(v77 + 16);
  v59 = v76;
  v60 = v84;
  v61 = v78;
  v58(v76, v84, v78);
  v62 = v82;
  sub_1E4773850(v54, v82, &qword_1ECF7D778, &unk_1E4882618);
  v63 = v83;
  v58(v83, v59, v61);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D780, &unk_1E4882628);
  v65 = &v63[*(v64 + 48)];
  *v65 = 0;
  v65[8] = 1;
  sub_1E4773850(v62, &v63[*(v64 + 64)], &qword_1ECF7D778, &unk_1E4882618);
  sub_1E47738B8(v54, &qword_1ECF7D778, &unk_1E4882618);
  v66 = *(v57 + 8);
  v66(v60, v61);
  sub_1E47738B8(v62, &qword_1ECF7D778, &unk_1E4882618);
  v66(v59, v61);
}

uint64_t sub_1E4835DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_1E487719C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v68 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D760, &qword_1E4882598);
  v78 = *(v79 - 8);
  v9 = *(v78 + 64);
  v10 = MEMORY[0x1EEE9AC00](v79);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68 - v12;
  v13 = sub_1E4877B3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v68 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v72 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v68 - v26;
  sub_1E4878D2C();
  v73 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(sub_1E48336B8() + 146);

  v71 = v27;
  if (v28 == 1)
  {
    v68 = sub_1E487876C();
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36);
    v69 = v18;
    v30 = v27;
    v31 = (v21 + v29);
    v32 = v14;
    v33 = v13;
    v34 = v6;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v36 = *MEMORY[0x1E69816D0];
    v37 = sub_1E487877C();
    v38 = v31 + v35;
    v6 = v34;
    v13 = v33;
    v14 = v32;
    (*(*(v37 - 8) + 104))(v38, v36, v37);
    *v31 = swift_getKeyPath();
    *v21 = v68;
    v39 = sub_1E4833B74();
    KeyPath = swift_getKeyPath();
    v41 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v41 = KeyPath;
    v41[1] = v39;
    sub_1E48334B0(v17);
    sub_1E476F0D0(a1, v17);
    v42 = sub_1E48785FC();
    (*(v14 + 8))(v17, v13);
    v43 = swift_getKeyPath();
    v44 = v69;
    v45 = (v21 + *(v69 + 36));
    *v45 = v43;
    v45[1] = v42;
    sub_1E47811C4(v21, v30);
    (*(v70 + 56))(v30, 0, 1, v44);
  }

  else
  {
    (*(v70 + 56))(v27, 1, 1, v18);
  }

  sub_1E4833CD8(v6);
  v46 = sub_1E487847C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = swift_getKeyPath();
  sub_1E48334B0(v17);
  sub_1E476F0D0(a1, v17);
  v54 = sub_1E48785FC();
  (*(v14 + 8))(v17, v13);
  v55 = swift_getKeyPath();
  v87 = v50 & 1;
  v86 = 0;
  *&v81 = v46;
  *(&v81 + 1) = v48;
  LOBYTE(v82) = v50 & 1;
  *(&v82 + 1) = v52;
  *&v83 = v53;
  *(&v83 + 1) = 1;
  LOBYTE(v84) = 0;
  *(&v84 + 1) = v55;
  v85 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  v56 = v74;
  sub_1E487852C();
  v88[2] = v83;
  v88[3] = v84;
  v89 = v85;
  v88[0] = v81;
  v88[1] = v82;
  sub_1E47738B8(v88, &qword_1ECF7C000, &unk_1E48825D0);
  sub_1E48377B0();
  v57 = v76;
  sub_1E48784AC();
  sub_1E47738B8(v56, &qword_1ECF7C680, &qword_1E4882590);
  v58 = v71;
  v59 = v72;
  sub_1E4773850(v71, v72, &qword_1ECF7B9D0, &qword_1E487AC00);
  v60 = v78;
  v61 = *(v78 + 16);
  v62 = v77;
  v63 = v79;
  v61(v77, v57, v79);
  v64 = v80;
  sub_1E4773850(v59, v80, &qword_1ECF7B9D0, &qword_1E487AC00);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D770, &qword_1E48825E0);
  v61((v64 + *(v65 + 48)), v62, v63);
  v66 = *(v60 + 8);
  v66(v57, v63);
  sub_1E47738B8(v58, &qword_1ECF7B9D0, &qword_1E487AC00);
  v66(v62, v63);
  sub_1E47738B8(v59, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E48365B4@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6A8, &qword_1E4882388);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v72 - v3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6B0, &qword_1E4882390);
  v5 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = (&v72 - v6);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6B8, &qword_1E4882398);
  v7 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C0, &unk_1E48823A0);
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - v15;
  v17 = sub_1E487725C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v72 - v23;
  sub_1E4834648(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v25 = v1;
    v72 = v9;
    v73 = v10;
    sub_1E47738B8(v16, &unk_1ECF7B688, &qword_1E487C160);
    *v4 = sub_1E4877FBC();
    *(v4 + 1) = 0;
    v4[16] = 0;
    sub_1E4878D2C();
    sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v26 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C8, &qword_1E48823B0) + 44)];
    *v26 = sub_1E4877F5C();
    *(v26 + 1) = 0;
    v26[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D0, &qword_1E48823B8);
    sub_1E4834D3C(v1, &v26[*(v27 + 44)]);
    v28 = *(sub_1E48336B8() + 48);

    v29 = sub_1E487814C();
    sub_1E4877B0C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D8, &qword_1E48823C0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = sub_1E487818C();
    v40 = *(sub_1E48336B8() + 48);

    sub_1E4877B0C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E0, &qword_1E48823C8) + 36)];
    *v49 = v39;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E8, &qword_1E48823D0) + 36)];
    sub_1E483786C(v25, v50, type metadata accessor for Event);
    v51 = type metadata accessor for Event();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    KeyPath = swift_getKeyPath();
    v53 = swift_getKeyPath();
    v54 = type metadata accessor for EventBackgroundView();
    *(v50 + v54[8]) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v50 + v54[9]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v50 + v54[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v55 = swift_getKeyPath();
    *(v50 + v54[5]) = 3;
    *(v50 + v54[6]) = 1;
    v56 = v50 + v54[7];
    *v56 = KeyPath;
    *(v56 + 8) = 0;
    v57 = v50 + v54[11];
    *v57 = v55;
    *(v57 + 8) = 0;
    v58 = sub_1E487889C();
    v60 = v59;

    v61 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v61 = v58;
    v61[1] = v60;
    v79 = sub_1E47CC9E8(*(v25 + *(v51 + 56)));
    v80 = v62;
    sub_1E477A374();
    v63 = sub_1E487848C();
    v65 = v64;
    LOBYTE(KeyPath) = v66;
    sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388);
    v67 = v75;
    sub_1E487857C();
    sub_1E477A3C8(v63, v65, KeyPath & 1);

    sub_1E47738B8(v4, &qword_1ECF7D6A8, &qword_1E4882388);
    sub_1E4773850(v67, v72, &qword_1ECF7D6B0, &qword_1E4882390);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0);
    sub_1E48374C0();
    sub_1E487803C();
    return sub_1E47738B8(v67, &qword_1ECF7D6B0, &qword_1E4882390);
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    v69 = (*(v18 + 16))(v22, v24, v17);
    v75 = &v72;
    MEMORY[0x1EEE9AC00](v69);
    *(&v72 - 2) = v1;
    sub_1E48374C0();
    v70 = v72;
    sub_1E487831C();
    v71 = v73;
    (*(v73 + 16))(v9, v70, v10);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0);
    sub_1E487803C();
    (*(v71 + 8))(v70, v10);
    return (*(v18 + 8))(v24, v17);
  }
}

uint64_t sub_1E4836EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6A8, &qword_1E4882388);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v49 - v4;
  sub_1E4878D2C();
  v49 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_1E4877FBC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C8, &qword_1E48823B0) + 44)];
  *v6 = sub_1E4877F5C();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D0, &qword_1E48823B8);
  sub_1E4834D3C(a1, &v6[*(v7 + 44)]);
  v8 = *(sub_1E48336B8() + 48);

  v9 = sub_1E487814C();
  sub_1E4877B0C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D8, &qword_1E48823C0) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = sub_1E487818C();
  v20 = *(sub_1E48336B8() + 48);

  sub_1E4877B0C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E0, &qword_1E48823C8) + 36)];
  *v29 = v19;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E8, &qword_1E48823D0) + 36)];
  sub_1E483786C(a1, v30, type metadata accessor for Event);
  v31 = type metadata accessor for Event();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = type metadata accessor for EventBackgroundView();
  *(v30 + v34[8]) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *(v30 + v34[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *(v30 + v34[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v35 = swift_getKeyPath();
  *(v30 + v34[5]) = 3;
  *(v30 + v34[6]) = 1;
  v36 = v30 + v34[7];
  *v36 = KeyPath;
  *(v36 + 8) = 0;
  v37 = v30 + v34[11];
  *v37 = v35;
  *(v37 + 8) = 0;
  v38 = sub_1E487889C();
  v40 = v39;

  v41 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v41 = v38;
  v41[1] = v40;
  v52 = sub_1E47CC9E8(*(a1 + *(v31 + 56)));
  v53 = v42;
  sub_1E477A374();
  v43 = sub_1E487848C();
  v45 = v44;
  v47 = v46;
  sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388);
  sub_1E487857C();
  sub_1E477A3C8(v43, v45, v47 & 1);

  sub_1E47738B8(v5, &qword_1ECF7D6A8, &qword_1E4882388);
}

uint64_t sub_1E48373C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_1E479B278(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_1E47738B8(v14, &qword_1ECF7C1B8, &unk_1E487C760);
}

uint64_t sub_1E483746C@<X0>(void *a1@<X8>)
{
  result = sub_1E4877D7C();
  *a1 = v3;
  return result;
}

unint64_t sub_1E48374C0()
{
  result = qword_1ECF7D700;
  if (!qword_1ECF7D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D6B0, &qword_1E4882390);
    sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388);
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D700);
  }

  return result;
}

uint64_t sub_1E48375D4(uint64_t a1)
{
  v2 = sub_1E487877C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877D2C();
}

uint64_t sub_1E483769C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48376C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4877E5C();
}

uint64_t sub_1E48376F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1E4837720(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4877DCC();
}

uint64_t sub_1E483774C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4877EEC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E4837780(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E4877EFC();
}

unint64_t sub_1E48377B0()
{
  result = qword_1ECF7D768;
  if (!qword_1ECF7D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C680, &qword_1E4882590);
    sub_1E479A240();
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D768);
  }

  return result;
}

uint64_t sub_1E483786C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48378D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4837914()
{
  result = qword_1ECF7D788;
  if (!qword_1ECF7D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D790, &qword_1E4882638);
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0);
    sub_1E48374C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D788);
  }

  return result;
}

void sub_1E4837A14()
{
  sub_1E477D33C();
  if (v0 <= 0x3F)
  {
    sub_1E483AC4C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v1 <= 0x3F)
    {
      sub_1E483AC4C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4837B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SpatialGridView(0);
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4837D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D818, &qword_1E48827B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D820, &qword_1E48827C8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D828, &qword_1E48827D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  sub_1E4878D2C();
  v48 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for SpatialGridView(0) + 28)) == 1)
  {
    v25 = *a1;
    v44 = a1[1];
    v45 = v25;
    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v28 = type metadata accessor for TimelineHoursView(0);
    v46 = v13;
    v47 = a1;
    v29 = v28;
    *&v17[*(v28 + 28)] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v17[*(v29 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v30 = v44;
    *v17 = v45;
    *(v17 + 1) = v30;
    *(v17 + 2) = KeyPath;
    v17[24] = 0;
    v31 = *(v29 + 36);
    v32 = sub_1E487821C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1E487828C();
    sub_1E47738B8(v12, &qword_1ECF7BD38, &qword_1E48827C0);
    v33 = sub_1E48781FC();

    *&v17[v31] = v33;
    a1 = v47;
    v34 = sub_1E487889C();
    v35 = v46;
    v36 = &v17[*(v46 + 36)];
    *v36 = sub_1E4838244;
    v36[1] = 0;
    v36[2] = v34;
    v36[3] = v37;
    sub_1E483AFC0(v17, v24);
    (*(v14 + 56))(v24, 0, 1, v35);
  }

  else
  {
    (*(v14 + 56))(v24, 1, 1, v13);
  }

  *v8 = sub_1E4877FAC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v38 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D830, &qword_1E48827D8) + 44)];
  sub_1E4838300(a1);
  sub_1E4773850(v24, v22, &qword_1ECF7D828, &qword_1E48827D0);
  v39 = v50;
  sub_1E4773850(v8, v50, &qword_1ECF7D818, &qword_1E48827B8);
  v40 = v49;
  sub_1E4773850(v22, v49, &qword_1ECF7D828, &qword_1E48827D0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D838, &qword_1E48827E0);
  sub_1E4773850(v39, v40 + *(v41 + 48), &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v8, &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v24, &qword_1ECF7D828, &qword_1E48827D0);
  sub_1E47738B8(v39, &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v22, &qword_1ECF7D828, &qword_1E48827D0);
}

uint64_t sub_1E4838244@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487867C();
  sub_1E4877BEC();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4838300(void *a1)
{
  v2 = type metadata accessor for SpatialGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if (v6 < *a1)
  {
    __break(1u);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = v6;
    swift_getKeyPath();
    sub_1E483B030(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialGridView);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1E483B098(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SpatialGridView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D840, &qword_1E4882880);
    sub_1E483AA04();
    sub_1E4773680(&qword_1EE2B0E70, &qword_1ECF7D840, &qword_1E4882880);
    sub_1E487885C();
  }

  return result;
}

uint64_t sub_1E4838544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E487884C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-v12];
  v14 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E487883C();
  v15 = *(a2 + 8);
  v16 = v14 != v15;
  v17 = v14 == v15;
  v18 = v7[2];
  v18(v11, v13, v6);
  v24 = v17;
  v18(a3, v11, v6);
  v19 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D848, &qword_1E4882888) + 48)];
  v20 = v24;
  *v19 = 0;
  v19[8] = v16;
  v19[9] = v20;
  v21 = v7[1];
  v21(v13, v6);
  v21(v11, v6);
}

uint64_t sub_1E483873C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E487805C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1E487867C();
  v17[0] = 0xD00000000000001DLL;
  v17[1] = 0x80000001E48A7CC0;
  sub_1E487808C();
  sub_1E4877BFC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v3 + 8))(v6, v2);

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v15;
  return result;
}

uint64_t sub_1E48388F8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E0, &qword_1E4882780);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v4 = &v45 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E8, &qword_1E4882788);
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7F0, &qword_1E4882790);
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7F8, &qword_1E4882798);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v45 - v10;
  v11 = sub_1E4877CCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = sub_1E487725C();
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = *(v46 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v45 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v45 - v27;
  v28 = v1;
  sub_1E4837B1C(v18);
  sub_1E4877CAC();
  sub_1E483AD88(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v29 = sub_1E4878EAC();
  v30 = *(v12 + 8);
  v30(v16, v11);
  v30(v18, v11);
  if (v29)
  {
    *v4 = sub_1E4877F6C();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D810, &qword_1E48827B0);
    sub_1E4837D24(v28, &v4[*(v31 + 44)]);
    v32 = sub_1E487889C();
    v33 = v54;
    v34 = &v4[*(v55 + 36)];
    *v34 = sub_1E483873C;
    v34[1] = 0;
    v34[2] = v32;
    v34[3] = v35;
    sub_1E4773850(v4, v33, &qword_1ECF7D7E0, &qword_1E4882780);
    swift_storeEnumTagMultiPayload();
    sub_1E483AED8();
    sub_1E483ADF4();
    sub_1E487803C();
    return sub_1E47738B8(v4, &qword_1ECF7D7E0, &qword_1E4882780);
  }

  else
  {
    v37 = &v28[*(type metadata accessor for SpatialGridView(0) + 24)];
    sub_1E4877A6C();
    v39 = v45;
    v38 = v46;
    v40 = v47;
    (*(v46 + 32))(v45, v26, v47);
    v41 = (*(v38 + 16))(v23, v39, v40);
    MEMORY[0x1EEE9AC00](v41);
    *(&v45 - 2) = v28;
    sub_1E483ADF4();
    v42 = v48;
    sub_1E487831C();
    sub_1E4773680(&qword_1EE2B1098, &qword_1ECF7D7F0, &qword_1E4882790);
    v44 = v50;
    v43 = v51;
    sub_1E487852C();
    (*(v49 + 8))(v42, v43);
    sub_1E4773850(v44, v54, &qword_1ECF7D7F8, &qword_1E4882798);
    swift_storeEnumTagMultiPayload();
    sub_1E483AED8();
    sub_1E487803C();
    sub_1E47738B8(v44, &qword_1ECF7D7F8, &qword_1E4882798);
    return (*(v38 + 8))(v39, v40);
  }
}

uint64_t sub_1E4838F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_1E4877F6C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D810, &qword_1E48827B0);
  sub_1E4837D24(a1, a2 + *(v4 + 44));
  v5 = sub_1E487889C();
  v7 = v6;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E0, &qword_1E4882780);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1E483873C;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v7;
  return result;
}

double sub_1E4839024()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v8 = *(v0 + 16);

  sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC();

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1E4839170@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TimelineHoursView(0);
  sub_1E4773850(v1 + *(v12 + 28), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4839378@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TimelineHoursView(0);
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4839584(void (*a1)(char *, uint64_t))
{
  v96 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v90 = &v78 - v3;
  v4 = sub_1E487757C();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v95 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - v20;
  v22 = sub_1E487732C();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v89 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v78 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v78 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v78 - v34;
  v97 = sub_1E48770FC();
  v101 = *(v97 - 8);
  v36 = *(v101 + 64);
  v37 = MEMORY[0x1EEE9AC00](v97);
  v93 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v78 - v39;
  (*(v8 + 56))(v35, 1, 1, v7);
  (*(v99 + 56))(v31, 1, 1, v100);
  sub_1E48770EC();
  sub_1E4839170(v15);
  v84 = v40;
  sub_1E48774AC();
  v41 = *(v8 + 8);
  v82 = v15;
  v83 = v41;
  v87 = v8 + 8;
  v88 = v7;
  v41(v15, v7);
  v91 = v23[6];
  result = v91(v21, 1, v22);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v81 = v23;
  v43 = v23[4];
  v92 = v22;
  v80 = v23 + 4;
  v79 = v43;
  v43(v98, v21, v22);
  v44 = v94;
  sub_1E4839170(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v45 = sub_1E487751C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1E487BC70;
  v50 = v49 + v48;
  v51 = *(v46 + 104);
  v51(v50, *MEMORY[0x1E6969A50], v45);
  v51(v50 + v47, *MEMORY[0x1E6969A68], v45);
  v51(v50 + 2 * v47, *MEMORY[0x1E6969A78], v45);
  v51(v50 + 3 * v47, *MEMORY[0x1E6969A48], v45);
  sub_1E486B81C(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v93;
  sub_1E487747C();

  v53 = v52;
  if (v96 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v54 = v95;
    if (v55)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v56 = __OFADD__(result++, 1);
    v57 = v92;
    if (!v56)
    {
      sub_1E487709C();
      goto LABEL_7;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1E48770BC();
  v57 = v92;
  v54 = v95;
LABEL_7:
  sub_1E48774AC();
  result = v91(v54, 1, v57);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v58 = *(v101 + 8);
  v101 += 8;
  v96 = v58;
  v58(v53, v97);
  v59 = v44;
  v60 = v88;
  v61 = v83;
  v83(v59, v88);
  v62 = v89;
  v79(v89, v54, v57);
  v63 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v64 = v82;
  sub_1E4839170(v82);
  v65 = sub_1E487748C();
  v61(v64, v60);
  [v63 setCalendar_];

  sub_1E4839170(v64);
  v66 = v85;
  sub_1E487750C();
  v61(v64, v60);
  v67 = sub_1E487756C();
  (*(v99 + 8))(v66, v100);
  [v63 setTimeZone_];

  v68 = v86;
  sub_1E4839170(v86);
  v69 = v90;
  sub_1E48774EC();
  v61(v68, v60);
  v70 = sub_1E487744C();
  v71 = *(v70 - 8);
  v72 = 0;
  if ((*(v71 + 48))(v69, 1, v70) != 1)
  {
    v72 = sub_1E48773DC();
    (*(v71 + 8))(v69, v70);
  }

  [v63 setLocale_];

  v73 = sub_1E4878B9C();
  [v63 setLocalizedDateFormatFromTemplate_];

  v74 = sub_1E48772BC();
  v75 = [v63 stringFromDate_];

  v76 = sub_1E4878BDC();
  v77 = v81[1];
  v77(v62, v57);
  v77(v98, v57);
  v96(v84, v97);
  return v76;
}

uint64_t sub_1E483A020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7A8, &qword_1E48826B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  sub_1E4878D2C();
  v23 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FCC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7B0, &qword_1E48826C0) + 44)];
  sub_1E483A260(a1);
  sub_1E487889C();
  sub_1E4877BCC();
  v21 = v30;
  v22 = v28;
  v11 = v32;
  v12 = v33;
  v27 = 1;
  v26 = v29;
  v25 = v31;
  sub_1E4773850(v9, v7, &qword_1ECF7D7A8, &qword_1E48826B8);
  v13 = v27;
  v14 = v26;
  v15 = v25;
  v16 = v24;
  sub_1E4773850(v7, v24, &qword_1ECF7D7A8, &qword_1E48826B8);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7B8, &unk_1E48826C8) + 48);
  *v17 = 0;
  *(v17 + 8) = v13;
  v18 = v21;
  *(v17 + 16) = v22;
  *(v17 + 24) = v14;
  *(v17 + 32) = v18;
  *(v17 + 40) = v15;
  *(v17 + 48) = v11;
  *(v17 + 56) = v12;
  sub_1E47738B8(v9, &qword_1ECF7D7A8, &qword_1E48826B8);
  sub_1E47738B8(v7, &qword_1ECF7D7A8, &qword_1E48826B8);
}

uint64_t sub_1E483A260(void *a1)
{
  v2 = type metadata accessor for TimelineHoursView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if (v6 < *a1)
  {
    __break(1u);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = v6;
    swift_getKeyPath();
    sub_1E483B030(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineHoursView);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1E483B098(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TimelineHoursView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C8, &qword_1E48826F8);
    sub_1E483AA04();
    sub_1E4773680(&qword_1EE2B0E90, &qword_1ECF7D7C8, &qword_1E48826F8);
    sub_1E487885C();
  }

  return result;
}

uint64_t sub_1E483A4A4@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_1E4877CCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = *a1;
  sub_1E4878D2C();
  v53 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4839378(v12);
  sub_1E4877CAC();
  sub_1E483AD88(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v14 = sub_1E4878EAC();
  v15 = *(v6 + 8);
  v15(v10, v5);
  v15(v12, v5);
  v52 = v13;
  if (v14)
  {
    v16 = 0xE200000000000000;
    v17 = 12336;
  }

  else
  {
    v17 = sub_1E4839584(v13);
  }

  v64 = v17;
  v65 = v16;
  sub_1E477A374();
  v18 = sub_1E487848C();
  v20 = v19;
  v22 = v21;
  v23 = *(a2 + *(type metadata accessor for TimelineHoursView(0) + 36));
  v24 = sub_1E487842C();
  v26 = v25;
  v27 = a2;
  v29 = v28;
  sub_1E477A3C8(v18, v20, v22 & 1);

  sub_1E48786FC();
  v30 = sub_1E48783FC();
  v32 = v31;
  v34 = v33;
  v51 = v35;

  sub_1E477A3C8(v24, v26, v29 & 1);

  sub_1E4839024();
  sub_1E487889C();
  sub_1E4877BCC();
  v73 = v34 & 1;
  v36 = *(v27 + 8);
  v37 = v52 == v36;
  v38 = v52 != v36;
  v39 = v37;
  *&v59 = v30;
  *(&v59 + 1) = v32;
  v40 = v32;
  LOBYTE(v60) = v34 & 1;
  *(&v60 + 1) = *v72;
  DWORD1(v60) = *&v72[3];
  v41 = v51;
  *(&v60 + 1) = v51;
  v42 = v58;
  v44 = v57;
  v43 = v58;
  v62 = v57;
  v63 = v58;
  v45 = v54;
  *(v54 + 48) = v57;
  *(v45 + 64) = v42;
  v46 = v56;
  v47 = v56;
  v61 = v56;
  v55[87] = v39;
  v48 = v60;
  *v45 = v59;
  *(v45 + 16) = v48;
  *(v45 + 32) = v46;
  *(v45 + 80) = 0;
  *(v45 + 88) = v38;
  *(v45 + 89) = v39;
  v64 = v30;
  v65 = v40;
  v66 = v34 & 1;
  *&v67[3] = *&v72[3];
  *v67 = *v72;
  v68 = v41;
  v70 = v44;
  v71 = v43;
  v69 = v47;
  sub_1E4773850(&v59, v55, &qword_1ECF7D7D0, &unk_1E4882700);
  sub_1E47738B8(&v64, &qword_1ECF7D7D0, &unk_1E4882700);
}

uint64_t sub_1E483A874()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D798, &qword_1E48826A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  *v4 = sub_1E4877F6C();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7A0, &qword_1E48826B0);
  sub_1E483A020(v0, &v4[*(v5 + 44)]);
  sub_1E4773680(&qword_1EE2B0F90, &qword_1ECF7D798, &qword_1E48826A8);
  sub_1E487852C();
  return sub_1E47738B8(v4, &qword_1ECF7D798, &qword_1E48826A8);
}

uint64_t sub_1E483A984@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimelineHoursView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E483A4A4(a1, v6, a2);
}

unint64_t sub_1E483AA04()
{
  result = qword_1EE2B0E28;
  if (!qword_1EE2B0E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    sub_1E483AA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E28);
  }

  return result;
}

unint64_t sub_1E483AA90()
{
  result = qword_1EE2B0E30;
  if (!qword_1EE2B0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E30);
  }

  return result;
}

void sub_1E483AB2C()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E483AC4C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v1 <= 0x3F)
    {
      sub_1E483AC4C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v2 <= 0x3F)
      {
        sub_1E483AC4C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E483AC4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E483ACA0()
{
  result = qword_1EE2B14B0;
  if (!qword_1EE2B14B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7D8, qword_1E4882728);
    sub_1E4773680(&qword_1EE2B0F90, &qword_1ECF7D798, &qword_1E48826A8);
    sub_1E483AD88(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14B0);
  }

  return result;
}

uint64_t sub_1E483AD88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E483ADF4()
{
  result = qword_1EE2B1498;
  if (!qword_1EE2B1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7E0, &qword_1E4882780);
    sub_1E4773680(&qword_1EE2B0FF0, &qword_1ECF7D800, &qword_1E48827A0);
    sub_1E4773680(&qword_1EE2B1290, &qword_1ECF7D808, &qword_1E48827A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1498);
  }

  return result;
}

unint64_t sub_1E483AED8()
{
  result = qword_1EE2B1570;
  if (!qword_1EE2B1570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7F8, &qword_1E4882798);
    sub_1E4773680(&qword_1EE2B1098, &qword_1ECF7D7F0, &qword_1E4882790);
    sub_1E483AD88(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1570);
  }

  return result;
}

uint64_t sub_1E483AFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D820, &qword_1E48827C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E483B030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E483B098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E483B100@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4838544(a1, v6, a2);
}

unint64_t sub_1E483B180()
{
  result = qword_1EE2B1208;
  if (!qword_1EE2B1208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D850, &unk_1E4882890);
    sub_1E483AED8();
    sub_1E483ADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1208);
  }

  return result;
}

uint64_t type metadata accessor for SpatialReminderView()
{
  result = qword_1EE2B2BF8;
  if (!qword_1EE2B2BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E483B280()
{
  type metadata accessor for SpatialEventViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v1 <= 0x3F)
    {
      sub_1E477D33C();
      if (v2 <= 0x3F)
      {
        sub_1E47BD3A0(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v3 <= 0x3F)
        {
          sub_1E47BD3A0(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v4 <= 0x3F)
          {
            sub_1E47BD3A0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E483B404()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782DC();
  (*(v1 + 104))(v4, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v4, v0);
  v5 = sub_1E48781FC();

  qword_1ECF7EAB0 = v5;
  return result;
}

double sub_1E483B528()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialReminderView() + 36));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC();

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1E483B684@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SpatialReminderView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E483B88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SpatialReminderView();
  sub_1E4773850(v1 + *(v12 + 44), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E483BA94()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialReminderView() + 48));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

double sub_1E483BBE4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SpatialReminderView() + 48));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 48);

  return v10 + v10 + 2.0;
}

void sub_1E483BD50()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate);
  v2 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v3 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame;
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v10 = *v6;
    v9 = *(v6 + 8);
    r2 = vmulq_n_f64(vcvtq_f64_s64(*(v0 + 8)), *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v5);
    v16.origin.x = *v6;
    v16.origin.y = v9;
    v16.size.width = v8;
    v16.size.height = v7;
    v20.size.width = CGRectGetWidth(v16);
    *&v20.size.height = *&vsubq_f64(vdupq_laneq_s64(r2, 1), r2);
    v20.origin.y = r2.f64[0];
    v17.origin.x = v10;
    v17.origin.y = v9;
    v17.size.width = v8;
    v17.size.height = v7;
    v20.origin.x = v10;
    v18 = CGRectIntersection(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGRectGetHeight(v19);
    sub_1E483B528();
  }
}

uint64_t sub_1E483BEE8@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = sub_1E487732C();
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v76 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v73 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v73 - v14;
  v79 = type metadata accessor for EventBackgroundView();
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D898, &qword_1E4882950);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v73 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D890, &qword_1E4882948);
  v24 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v73 - v25;
  *v23 = sub_1E4877F6C();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8A8, &qword_1E4882960);
  sub_1E483C620(v1, &v23[*(v26 + 44)]);
  v27 = sub_1E487817C();
  v28 = *(sub_1E483BA94() + 48);

  sub_1E4877B0C();
  v29 = *(v20 + 44);
  v78 = v23;
  v30 = &v23[v29];
  *v30 = v27;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = *v1;
  v36 = *v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v36, v15);
  v37 = type metadata accessor for Event();
  v38 = *(*(v37 - 8) + 56);
  v77 = v15;
  v38(v15, 0, 1, v37);
  v39 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v40 = *(v37 + 20);
  v84 = v37;
  v41 = -*(v36 + *(v37 + 28));
  sub_1E48772AC();
  v73 = sub_1E483E240(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  if (sub_1E4878ADC())
  {
    (*(v85 + 32))(v83, v10, v2);
  }

  else
  {
    v42 = v85;
    (*(v85 + 8))(v10, v2);
    (*(v42 + 16))(v83, v35 + v39, v2);
  }

  v43 = v75;
  sub_1E48772AC();
  v44 = v83;
  v45 = sub_1E48772EC();
  v46 = v85;
  v74 = v36;
  v47 = *(v85 + 8);
  v47(v43, v2);
  v47(v44, v2);
  v48 = v35 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v49 = v36 + *(v84 + 24);
  if (sub_1E4878ACC())
  {
    v50 = v49;
  }

  else
  {
    v50 = v48;
  }

  v51 = v76;
  (*(v46 + 16))(v76, v50, v2);
  v52 = sub_1E48772EC();
  v47(v51, v2);
  if (v52)
  {
    v53 = v45 & 1 | 2;
  }

  else
  {
    v53 = v45 & 1;
  }

  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v56 = v79;
  *&v18[*(v79 + 32)] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v18[v56[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v18[v56[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v57 = swift_getKeyPath();
  sub_1E477372C(v77, v18, &qword_1ECF7B950, &unk_1E487AE90);
  *&v18[v56[5]] = v53;
  v18[v56[6]] = 1;
  v58 = &v18[v56[7]];
  *v58 = KeyPath;
  v58[8] = 0;
  v59 = &v18[v56[11]];
  *v59 = v57;
  v59[8] = 0;
  v60 = sub_1E487889C();
  v62 = v61;
  v63 = v81;
  v64 = &v81[*(v80 + 36)];
  sub_1E47C411C(v18, v64);
  v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v65 = v60;
  v65[1] = v62;
  sub_1E477372C(v78, v63, &qword_1ECF7D898, &qword_1E4882950);
  v86 = sub_1E47CC9E8(*(v74 + *(v84 + 56)));
  v87 = v66;
  sub_1E477A374();
  v67 = sub_1E487848C();
  v69 = v68;
  v71 = v70;
  sub_1E483E0C8();
  sub_1E487857C();
  sub_1E477A3C8(v67, v69, v71 & 1);

  return sub_1E47738B8(v63, &qword_1ECF7D890, &qword_1E4882948);
}

uint64_t sub_1E483C620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8B0, &qword_1E4882A68);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8B8, &qword_1E4882A70);
  sub_1E483C7DC(a1, &v10[*(v11 + 44)]);
  sub_1E4773850(v10, v8, &qword_1ECF7D8B0, &qword_1E4882A68);
  sub_1E4773850(v8, a2, &qword_1ECF7D8B0, &qword_1E4882A68);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8C0, &qword_1E4882A78) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7D8B0, &qword_1E4882A68);
  sub_1E47738B8(v8, &qword_1ECF7D8B0, &qword_1E4882A68);
}

uint64_t sub_1E483C7DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8C8, &qword_1E4882A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8D0, &qword_1E4882A88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v6 = sub_1E4877FBC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8D8, &qword_1E4882A90);
  sub_1E483CB70(a1, &v6[*(v17 + 44)]);
  v18 = sub_1E487819C();
  v19 = *(sub_1E483BA94() + 48);

  sub_1E4877B0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8E0, &qword_1E4882A98) + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_1E487818C();
  v30 = *(sub_1E483BA94() + 48);

  sub_1E4877B0C();
  v31 = &v6[*(v3 + 36)];
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E483BD50();
  CGRectGetHeight(v47);
  sub_1E487889C();
  sub_1E4877BCC();
  sub_1E477372C(v6, v14, &qword_1ECF7D8C8, &qword_1E4882A80);
  v37 = &v14[*(v7 + 36)];
  v38 = v45;
  *v37 = v44;
  *(v37 + 1) = v38;
  *(v37 + 2) = v46;
  sub_1E477372C(v14, v16, &qword_1ECF7D8D0, &qword_1E4882A88);
  sub_1E4773850(v16, v11, &qword_1ECF7D8D0, &qword_1E4882A88);
  v39 = v43;
  sub_1E4773850(v11, v43, &qword_1ECF7D8D0, &qword_1E4882A88);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8E8, &qword_1E4882AA0) + 48);
  *v40 = 0;
  *(v40 + 8) = 0;
  sub_1E47738B8(v16, &qword_1ECF7D8D0, &qword_1E4882A88);
  sub_1E47738B8(v11, &qword_1ECF7D8D0, &qword_1E4882A88);
}

uint64_t sub_1E483CB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8F0, &qword_1E4882AA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8F8, &qword_1E4882AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a1 + 24);
  v17 = v16 + sub_1E483BBE4();
  v18 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E483BD50();
  Height = CGRectGetHeight(v27);
  if (Height >= v18)
  {
    Height = v18;
  }

  v21 = v17 > Height;
  v20 = vabdd_f64(Height, v17);
  v21 = v21 && v20 > 1.0;
  if (v21)
  {
    (*(v5 + 56))(v15, 1, 1, v4);
  }

  else
  {
    v22 = *(sub_1E483BA94() + 72);

    *v8 = sub_1E4877F6C();
    *(v8 + 1) = v22;
    v8[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D908, &unk_1E4882AC0);
    sub_1E483CE64(a1, &v8[*(v23 + 44)]);
    sub_1E477372C(v8, v15, &qword_1ECF7D8F0, &qword_1E4882AA8);
    (*(v5 + 56))(v15, 0, 1, v4);
  }

  sub_1E4773850(v15, v13, &qword_1ECF7D8F8, &qword_1E4882AB0);
  sub_1E4773850(v13, a2, &qword_1ECF7D8F8, &qword_1E4882AB0);
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D900, &qword_1E4882AB8) + 48);
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_1E47738B8(v15, &qword_1ECF7D8F8, &qword_1E4882AB0);
  sub_1E47738B8(v13, &qword_1ECF7D8F8, &qword_1E4882AB0);
}

uint64_t sub_1E483CE64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v71 = type metadata accessor for NarrowEventTitleText();
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D260, &qword_1E48804D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v61 - v10;
  v11 = sub_1E4877B3C();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Event();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v61 - v22);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v24 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v26 = &v61 - v25;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v27 = *(*(v63 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v63);
  v70 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v61 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v68 = &v61 - v33;
  sub_1E4878D2C();
  v69 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = *a1;
  v61 = a1;
  v35 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v34 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v19);
  if (v19[*(v14 + 56)] == 6)
  {
    v36 = MEMORY[0x1E69932E0];
  }

  else
  {
    v36 = MEMORY[0x1E69932F8];
  }

  v37 = *v36;
  sub_1E4878BDC();
  sub_1E47E340C(v19, type metadata accessor for Event);
  v38 = sub_1E487874C();
  v39 = (v23 + *(v20 + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v41 = *MEMORY[0x1E69816D8];
  v42 = sub_1E487877C();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  *v23 = v38;
  if (qword_1ECF7B670 != -1)
  {
    swift_once();
  }

  v43 = qword_1ECF7EAB0;
  KeyPath = swift_getKeyPath();
  sub_1E477372C(v23, v26, &qword_1ECF7B910, &unk_1E487E050);
  v45 = &v26[*(v62 + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = v64;
  sub_1E47707EC(v34 + v35, v64);

  v47 = v65;
  sub_1E483B88C(v65);
  v48 = sub_1E4770A7C(v46, v47);
  (*(v66 + 8))(v47, v67);
  sub_1E47E340C(v46, type metadata accessor for Event);
  v49 = swift_getKeyPath();
  sub_1E477372C(v26, v32, &qword_1ECF7B918, &unk_1E487AA60);
  v50 = &v32[*(v63 + 36)];
  *v50 = v49;
  v50[1] = v48;
  v51 = v68;
  sub_1E477372C(v32, v68, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47707EC(v34 + v35, v5);
  v52 = swift_getKeyPath();
  v53 = v71;
  *&v5[*(v71 + 32)] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v5[v53[5]] = v43;
  v54 = &v5[v53[6]];
  *v54 = 0;
  v54[8] = 1;
  *&v5[v53[7]] = 0;
  sub_1E483E240(&qword_1EE2B2A10, type metadata accessor for NarrowEventTitleText);

  v55 = v72;
  sub_1E48785BC();
  sub_1E47E340C(v5, type metadata accessor for NarrowEventTitleText);
  v56 = v70;
  sub_1E4773850(v51, v70, &qword_1ECF7B920, &unk_1E487DCF0);
  v57 = v73;
  sub_1E4773850(v55, v73, &qword_1ECF7D260, &qword_1E48804D0);
  v58 = v74;
  sub_1E4773850(v56, v74, &qword_1ECF7B920, &unk_1E487DCF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D910, qword_1E4882B60);
  sub_1E4773850(v57, v58 + *(v59 + 48), &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v55, &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v51, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47738B8(v57, &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v56, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E483D5EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D858, &qword_1E4882908);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D860, &qword_1E4882910);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - v10;
  sub_1E483D864(v1, v6);
  sub_1E483BD50();
  CGRectGetWidth(v28);
  sub_1E483BD50();
  CGRectGetMaxX(v29);
  v12 = *v1;
  v13 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate;
  CGRectGetMaxX(*(*(*v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect));
  sub_1E483BD50();
  CGRectGetHeight(v30);
  sub_1E487887C();
  sub_1E4877BCC();
  sub_1E477372C(v6, v11, &qword_1ECF7D858, &qword_1E4882908);
  v14 = &v11[*(v8 + 44)];
  v15 = v27[1];
  *v14 = v27[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v27[2];
  sub_1E483BD50();
  v17 = v16;
  sub_1E483BD50();
  Width = CGRectGetWidth(v31);
  sub_1E483BD50();
  MaxX = CGRectGetMaxX(v32);
  if (MaxX == CGRectGetMaxX(*(*(v12 + v13) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 2.0;
  }

  v21 = v17 + (Width - v20) * 0.5;
  sub_1E483BD50();
  v23 = v22;
  sub_1E483BD50();
  v24 = v23 + CGRectGetHeight(v33) * 0.5;
  sub_1E477372C(v11, a1, &qword_1ECF7D860, &qword_1E4882910);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D868, &qword_1E4882918);
  v26 = (a1 + *(result + 36));
  *v26 = v21;
  v26[1] = v24;
  return result;
}

uint64_t sub_1E483D864@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D870, &qword_1E4882920);
  v2 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v45 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D878, &qword_1E4882928);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v45 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D880, &unk_1E4882930);
  v48 = *(v56 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v47 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_1E487725C();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v45 - v16;
  v17 = sub_1E4877CCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D888, &qword_1E4882940);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v45 - v27;
  sub_1E4878D2C();
  v52 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v54;
  sub_1E483B684(v24);
  sub_1E4877CAC();
  sub_1E483E240(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v30 = sub_1E4878EAC();
  v31 = *(v18 + 8);
  v31(v22, v17);
  v32 = v29;
  v31(v24, v17);
  if ((v30 & 1) == 0)
  {
    v33 = *v29;
    v34 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v35 = type metadata accessor for Event();
    sub_1E4773850(v33 + *(v35 + 44) + v34, v11, &unk_1ECF7B688, &qword_1E487C160);
    v37 = v49;
    v36 = v50;
    if ((*(v49 + 48))(v11, 1, v50) != 1)
    {
      v39 = v46;
      (*(v37 + 32))(v46, v11, v36);
      v40 = (*(v37 + 16))(v45, v39, v36);
      MEMORY[0x1EEE9AC00](v40);
      *(&v45 - 2) = v32;
      sub_1E483E00C();
      v41 = v47;
      sub_1E487831C();
      v42 = v48;
      v43 = v56;
      (*(v48 + 16))(v53, v41, v56);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930);
      sub_1E487803C();
      (*(v42 + 8))(v41, v43);
      (*(v37 + 8))(v39, v36);
      goto LABEL_8;
    }

    sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
  }

  v38 = v51;
  sub_1E483BEE8(v51);
  sub_1E4773850(v38, v53, &qword_1ECF7D870, &qword_1E4882920);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930);
  sub_1E483E00C();
  sub_1E487803C();
  sub_1E47738B8(v38, &qword_1ECF7D870, &qword_1E4882920);
LABEL_8:
  sub_1E477372C(v28, v58, &qword_1ECF7D888, &qword_1E4882940);
}

uint64_t sub_1E483DF58@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E483BEE8(a1);
}

unint64_t sub_1E483E00C()
{
  result = qword_1EE2B12F8;
  if (!qword_1EE2B12F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D870, &qword_1E4882920);
    sub_1E483E0C8();
    sub_1E483E240(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12F8);
  }

  return result;
}

unint64_t sub_1E483E0C8()
{
  result = qword_1EE2B1380;
  if (!qword_1EE2B1380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D890, &qword_1E4882948);
    sub_1E483E180();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1380);
  }

  return result;
}

unint64_t sub_1E483E180()
{
  result = qword_1EE2B14A0;
  if (!qword_1EE2B14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D898, &qword_1E4882950);
    sub_1E4773680(&qword_1EE2B0F80, &qword_1ECF7D8A0, &qword_1E4882958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14A0);
  }

  return result;
}

uint64_t sub_1E483E240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E483E288()
{
  result = qword_1EE2B13C8;
  if (!qword_1EE2B13C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D868, &qword_1E4882918);
    sub_1E483E314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13C8);
  }

  return result;
}

unint64_t sub_1E483E314()
{
  result = qword_1EE2B1500;
  if (!qword_1EE2B1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D860, &qword_1E4882910);
    sub_1E483E3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1500);
  }

  return result;
}

unint64_t sub_1E483E3A0()
{
  result = qword_1EE2B1050;
  if (!qword_1EE2B1050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D858, &qword_1E4882908);
    sub_1E483E424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1050);
  }

  return result;
}

unint64_t sub_1E483E424()
{
  result = qword_1EE2B11B0;
  if (!qword_1EE2B11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D888, &qword_1E4882940);
    sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930);
    sub_1E483E00C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11B0);
  }

  return result;
}

uint64_t type metadata accessor for NarrowTextHeaderView()
{
  result = qword_1EE2B4A70;
  if (!qword_1EE2B4A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E483E550()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47F5B1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E483E61C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowTextHeaderView();
  sub_1E482CB38(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E483E80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - v6;
  v37 = sub_1E487757C();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487753C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E483E61C(v18);
  v20 = sub_1E487748C();
  v21 = *(v12 + 8);
  v21(v18, v11);
  [v19 setCalendar_];

  sub_1E483E61C(v18);
  sub_1E487750C();
  v21(v18, v11);
  v22 = sub_1E487756C();
  (*(v7 + 8))(v10, v37);
  [v19 setTimeZone_];

  sub_1E483E61C(v16);
  v23 = v38;
  sub_1E48774EC();
  v21(v16, v11);
  v24 = v23;
  v25 = sub_1E487744C();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    v27 = sub_1E48773DC();
    (*(v26 + 8))(v24, v25);
  }

  [v19 setLocale_];

  v28 = sub_1E4878B9C();
  [v19 setLocalizedDateFormatFromTemplate_];

  v29 = v3 + *(type metadata accessor for NarrowTextHeaderView() + 20);
  v30 = sub_1E48772BC();
  v31 = [v19 stringFromDate_];

  v32 = sub_1E4878BDC();
  v34 = v33;

  v41 = v32;
  v42 = v34;
  sub_1E477A374();
  v35 = sub_1E4878E8C();

  return v35;
}

uint64_t sub_1E483EBFC()
{
  v1 = type metadata accessor for NarrowTextHeaderView();
  v2 = v1;
  if (*(v0 + v1[6]))
  {
    v3 = v1[10];
LABEL_8:
    v7 = (v0 + v3);
    v8 = *v7;
    v9 = v7[1];

    return sub_1E483E80C(v8, v9);
  }

  v4 = v1[5];
  if ((sub_1E4871B7C() & 1) == 0)
  {
    v3 = v2[8];
    goto LABEL_8;
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  sub_1E477A374();
  v5 = sub_1E4878E8C();

  return v5;
}

uint64_t sub_1E483ED40@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v48 = sub_1E48780BC();
  v46 = *(v48 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v51 = *(v49 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v40 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v40 - v7;
  v8 = v1;
  v41 = v1;
  v53 = sub_1E483EBFC();
  v54 = v9;
  v45 = sub_1E477A374();
  v10 = sub_1E487848C();
  v12 = v11;
  v14 = v13;
  sub_1E48786FC();
  v15 = sub_1E48783FC();
  v17 = v16;
  v19 = v18;

  sub_1E477A3C8(v10, v12, v14 & 1);

  v42 = type metadata accessor for NarrowTextHeaderView();
  v20 = *(v8 + *(v42 + 44));
  v21 = sub_1E487842C();
  v23 = v22;
  LOBYTE(v12) = v24;
  v26 = v25;
  sub_1E477A3C8(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v53 = v21;
  v54 = v23;
  v55 = v12 & 1;
  v56 = v26;
  v57 = KeyPath;
  v58 = 1;
  v59 = 0;
  v28 = v44;
  sub_1E487809C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v30 = sub_1E477A490();
  v31 = v43;
  sub_1E48785AC();
  (*(v46 + 8))(v28, v48);
  sub_1E477A3C8(v21, v23, v12 & 1);

  v53 = sub_1E483E80C(*(v41 + *(v42 + 36)), *(v41 + *(v42 + 36) + 8));
  v54 = v32;
  v33 = sub_1E487848C();
  v35 = v34;
  LOBYTE(v26) = v36;
  v53 = v29;
  v54 = v30;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  v38 = v49;
  sub_1E487856C();
  sub_1E477A3C8(v33, v35, v26 & 1);

  (*(v51 + 8))(v31, v38);
  sub_1E4877C7C();
  return sub_1E476C4B8(v37);
}

uint64_t sub_1E483F168(uint64_t a1, uint64_t a2)
{
  v262 = a2;
  v3 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  v269 = *(v3 - 8);
  v270 = v3;
  v4 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v238 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v237 = &v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v234 - v10;
  v260 = sub_1E487751C();
  v263 = *(v260 - 8);
  v12 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for Event();
  v243 = *(v276 - 8);
  v14 = *(v243 + 64);
  v15 = MEMORY[0x1EEE9AC00](v276);
  v245 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v242 = &v234 - v17;
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v239 = &v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v241 = &v234 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v234 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v252 = &v234 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v240 = &v234 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v268 = &v234 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v244 = &v234 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v275 = &v234 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v267 = &v234 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v234 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v250 = &v234 - v43;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D918, &qword_1E4882C18);
  v44 = *(*(v247 - 8) + 64);
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v234 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v236 = &v234 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v249 = &v234 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v258 = &v234 - v52;
  v273 = type metadata accessor for DayEvents();
  v53 = *(v273 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](v273);
  v235 = &v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v265 = &v234 - v57;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D920, &qword_1E4882C28);
  v255 = *(v272 - 8);
  v58 = *(v255 + 64);
  v59 = MEMORY[0x1EEE9AC00](v272);
  v251 = &v234 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v271 = (&v234 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v234 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = (&v234 - v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D928, &unk_1E4882C30);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v68 - 8);
  v254 = (&v234 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v234 - v73;
  v75 = *(a1 + 16);
  v277 = v18;
  v274 = v75;
  v257 = v72;
  v266 = v19;
  v264 = v42;
  v261 = &v234 - v73;
  v256 = v53;
  v246 = v11;
  v253 = v27;
  if (v75)
  {
    v76 = 0;
    v77 = v72 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v78 = *(v53 + 72);
    while (1)
    {
      v79 = v272;
      v80 = *(v272 + 48);
      *v67 = v76;
      sub_1E479B13C(v77, v67 + v80, type metadata accessor for DayEvents);
      sub_1E48426E0(v67, v65);
      v81 = v271;
      sub_1E4773850(v65, v271, &qword_1ECF7D920, &qword_1E4882C28);
      v82 = v81 + *(v79 + 48);
      v83 = *(v82 + *(v273 + 20));

      sub_1E4842750(v82, type metadata accessor for DayEvents);
      v84 = *(v83 + 16);

      if (v84)
      {
        break;
      }

      ++v76;
      sub_1E47738B8(v65, &qword_1ECF7D920, &qword_1E4882C28);
      v77 += v78;
      v75 = v274;
      if (v274 == v76)
      {
        v85 = 1;
        v74 = v261;
        v53 = v256;
        goto LABEL_8;
      }
    }

    v74 = v261;
    sub_1E48426E0(v65, v261);
    v85 = 0;
    v53 = v256;
    v75 = v274;
  }

  else
  {
    v85 = 1;
  }

LABEL_8:
  v86 = v255;
  v87 = v272;
  (*(v255 + 56))(v74, v85, 1, v272);
  v88 = v254;
  sub_1E4773850(v74, v254, &qword_1ECF7D928, &unk_1E4882C30);
  if ((*(v86 + 48))(v88, 1, v87) == 1)
  {
    sub_1E47738B8(v88, &qword_1ECF7D928, &unk_1E4882C30);
    if (v75)
    {
      v279 = MEMORY[0x1E69E7CC0];
      sub_1E4858124(0, v274, 0);
      v89 = v274;
      v90 = v279;
      v91 = v257 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v92 = *(v53 + 72);
      v93 = v238;
      do
      {
        sub_1E479B13C(v91, v93, type metadata accessor for DayEvents);
        v94 = v270;
        *(v93 + v270[5]) = 9;
        *(v93 + v94[6]) = 16;
        *(v93 + v94[7]) = MEMORY[0x1E69E7CC0];
        *(v93 + v94[8]) = 1;
        v279 = v90;
        v96 = *(v90 + 16);
        v95 = *(v90 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1E4858124(v95 > 1, v96 + 1, 1);
          v90 = v279;
        }

        *(v90 + 16) = v96 + 1;
        sub_1E4844C2C(v93, v90 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v96, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
        v91 += v92;
        --v89;
      }

      while (v89);
      sub_1E47738B8(v261, &qword_1ECF7D928, &unk_1E4882C30);
    }

    else
    {
      sub_1E47738B8(v74, &qword_1ECF7D928, &unk_1E4882C30);
      return MEMORY[0x1E69E7CC0];
    }

    return v90;
  }

  v97 = v251;
  sub_1E48426E0(v88, v251);
  v98 = v271;
  sub_1E4773850(v97, v271, &qword_1ECF7D920, &qword_1E4882C28);
  v99 = v265;
  sub_1E4844C2C(v98 + *(v87 + 48), v265, type metadata accessor for DayEvents);
  sub_1E4773850(v97, v98, &qword_1ECF7D920, &qword_1E4882C28);
  v238 = *v98;
  sub_1E4842750(v98 + *(v87 + 48), type metadata accessor for DayEvents);
  v100 = v258;
  sub_1E479B13C(v99, v258, type metadata accessor for DayEvents);
  v101 = *(v53 + 56);
  v102 = 1;
  v101(v100, 0, 1, v273);
  v103 = v249;
  if (v75)
  {
    sub_1E479B13C(v257 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * (v75 - 1), v249, type metadata accessor for DayEvents);
    v102 = 0;
  }

  v104 = v273;
  v101(v103, v102, 1, v273);
  v105 = *(v247 + 48);
  v106 = v258;
  v107 = v248;
  sub_1E4773850(v258, v248, &qword_1ECF7C380, &qword_1E4882C20);
  v108 = v104;
  sub_1E4773850(v103, &v107[v105], &qword_1ECF7C380, &qword_1E4882C20);
  v109 = *(v53 + 48);
  if (v109(v107, 1, v104) == 1)
  {
    sub_1E47738B8(v103, &qword_1ECF7C380, &qword_1E4882C20);
    v108 = v273;
    sub_1E47738B8(v106, &qword_1ECF7C380, &qword_1E4882C20);
    v110 = v109(&v107[v105], 1, v108);
    v111 = v277;
    v112 = v266;
    if (v110 == 1)
    {
      result = sub_1E47738B8(v107, &qword_1ECF7C380, &qword_1E4882C20);
      LODWORD(v258) = 1;
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v114 = v236;
  sub_1E4773850(v107, v236, &qword_1ECF7C380, &qword_1E4882C20);
  if (v109(&v107[v105], 1, v104) == 1)
  {
    sub_1E47738B8(v249, &qword_1ECF7C380, &qword_1E4882C20);
    v108 = v273;
    sub_1E47738B8(v258, &qword_1ECF7C380, &qword_1E4882C20);
    sub_1E4842750(v114, type metadata accessor for DayEvents);
    v112 = v266;
    v111 = v277;
LABEL_23:
    result = sub_1E47738B8(v107, &qword_1ECF7D918, &qword_1E4882C18);
    LODWORD(v258) = 0;
    goto LABEL_33;
  }

  v115 = v235;
  sub_1E4844C2C(&v107[v105], v235, type metadata accessor for DayEvents);
  v116 = sub_1E48772EC();
  v117 = v114;
  v118 = v258;
  v111 = v277;
  if (v116)
  {
    v119 = sub_1E47F35E8(*(v114 + v108[5]), *(v115 + v108[5]));
    v112 = v266;
    if (v119)
    {
      v120 = sub_1E47F35E8(*(v117 + v108[6]), *(v115 + v108[6]));
      sub_1E47738B8(v249, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E47738B8(v118, &qword_1ECF7C380, &qword_1E4882C20);
      if (v120)
      {
        LODWORD(v258) = *(v117 + v108[7]) ^ *(v115 + v108[7]) ^ 1;
      }

      else
      {
        LODWORD(v258) = 0;
      }

      v111 = v277;
    }

    else
    {
      sub_1E47738B8(v249, &qword_1ECF7C380, &qword_1E4882C20);
      v108 = v273;
      sub_1E47738B8(v118, &qword_1ECF7C380, &qword_1E4882C20);
      LODWORD(v258) = 0;
    }
  }

  else
  {
    sub_1E47738B8(v249, &qword_1ECF7C380, &qword_1E4882C20);
    v108 = v273;
    sub_1E47738B8(v118, &qword_1ECF7C380, &qword_1E4882C20);
    LODWORD(v258) = 0;
    v112 = v266;
  }

  sub_1E4842750(v115, type metadata accessor for DayEvents);
  sub_1E4842750(v117, type metadata accessor for DayEvents);
  result = sub_1E47738B8(v107, &qword_1ECF7C380, &qword_1E4882C20);
LABEL_33:
  v121 = *(v265 + v108[5]);
  if (!*(v121 + 16))
  {
    goto LABEL_126;
  }

  v122 = v243;
  v123 = v121 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
  v124 = v242;
  sub_1E479B13C(v123, v242, type metadata accessor for Event);
  v125 = v276;
  v126 = -*(v124 + *(v276 + 28));
  v127 = v124 + *(v276 + 20);
  v128 = v267;
  sub_1E48772AC();
  sub_1E4842750(v124, type metadata accessor for Event);
  v129 = *(v125 + 24);
  v273 = *(v112 + 16);
  (v273)(v275, v123 + v129, v111);
  v130 = *(v121 + 16);
  v131 = v245;
  if (v130)
  {
    v132 = *(v122 + 72);
    v133 = (v266 + 8);
    do
    {
      sub_1E479B13C(v123, v131, type metadata accessor for Event);
      v134 = -*(v131 + *(v276 + 28));
      v135 = v131 + *(v276 + 20);
      v136 = v268;
      sub_1E48772AC();
      if (sub_1E48772DC())
      {
        v137 = v277;
        (*v133)(v128, v277);
        (v273)(v128, v136, v137);
      }

      v138 = *(v276 + 24);
      v139 = sub_1E48772CC();
      v140 = v136;
      v141 = v131;
      v142 = *v133;
      (*v133)(v140, v277);
      if (v139)
      {
        v143 = v275;
        v144 = v277;
        v142(v275, v277);
        v145 = v143;
        v128 = v267;
        (v273)(v145, v141 + v138, v144);
      }

      sub_1E4842750(v141, type metadata accessor for Event);
      v123 += v132;
      --v130;
      v131 = v141;
    }

    while (v130);
  }

  v146 = v266;
  v148 = (v266 + 32);
  v147 = *(v266 + 32);
  v149 = v250;
  v150 = v277;
  v147(v250, v128, v277);
  v272 = v147;
  v270 = v148;
  v147(v264, v275, v150);
  v151 = sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530]);
  v152 = v265;
  v267 = v151;
  if (sub_1E4878ADC())
  {
    v153 = v149;
  }

  else
  {
    v153 = v152;
  }

  v154 = v244;
  (v273)(v244, v153, v150);
  v155 = *(v146 + 40);
  v255 = v146 + 40;
  v254 = v155;
  (v155)(v149, v154, v150);
  v156 = v263;
  v157 = v263 + 104;
  v158 = *(v263 + 104);
  v159 = v259;
  LODWORD(v268) = *MEMORY[0x1E6969A58];
  v160 = v260;
  v158(v259);
  v161 = sub_1E487752C();
  v163 = *(v156 + 8);
  v162 = v156 + 8;
  v276 = v163;
  v163(v159, v160);
  sub_1E487745C();
  v164 = *MEMORY[0x1E6969A48];
  v269 = v157;
  v271 = v158;
  (v158)(v159, v164, v160);
  v165 = v160;
  v166 = v266;
  v167 = v246;
  sub_1E48774BC();
  (v276)(v159, v165);
  v168 = *(v166 + 48);
  v169 = v150;
  v249 = v166 + 48;
  v248 = v168;
  result = (v168)(v167, 1, v150);
  if (result == 1)
  {
    goto LABEL_141;
  }

  v170 = *(v166 + 8);
  v266 = v166 + 8;
  v275 = v170;
  (v170)(v253, v150);
  v171 = v150;
  v172 = v272;
  (v272)(v252, v167, v171);
  v173 = v241;
  (v273)(v241, v264, v169);
  (v271)(v159, *MEMORY[0x1E6969A88], v165);
  v174 = sub_1E487752C();
  v263 = v162;
  (v276)(v159, v165);
  v175 = v169;
  if (v174)
  {
    v176 = v259;
    v177 = v260;
    (v271)(v259, v268, v260);
    v178 = v237;
    sub_1E48774BC();
    (v276)(v176, v177);
    result = (v248)(v178, 1, v175);
    if (result == 1)
    {
      goto LABEL_142;
    }

    (v275)(v173, v175);
    v172(v173, v178, v175);
  }

  v179 = v252;
  if (sub_1E4878ACC())
  {
    (v275)(v173, v175);
    v180 = v239;
    (v273)(v239, v179, v175);
    v181 = v260;
    v182 = v259;
    (v272)(v173, v180, v175);
  }

  else
  {
    v183 = v239;
    v184 = v272;
    (v272)(v239, v173, v175);
    v181 = v260;
    v182 = v259;
    v184(v173, v183, v175);
  }

  (v271)(v182, v268, v181);
  v185 = sub_1E487752C();
  (v276)(v182, v181);
  if (v185)
  {
    (v275)(v179, v175);
  }

  else
  {
    v186 = sub_1E48772EC();
    (v275)(v179, v175);
    if (v186)
    {
      v185 = 24;
    }

    else
    {
      v185 = 0;
    }
  }

  v187 = v254;
  v188 = v264;
  v189 = v240;
  (v272)(v240, v173, v175);
  result = v187(v188, v189, v175);
  if (__OFSUB__(v185, v161))
  {
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
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if ((v185 - v161 > 7) | v258 & 1)
  {
    v190 = v161;
    v191 = v257;
    v192 = v262;
    goto LABEL_78;
  }

  v193 = (v238 + 1);
  v191 = v257;
  v192 = v262;
  if (__OFADD__(v238, 1))
  {
    goto LABEL_132;
  }

  if (v274 < v193)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v193 < 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v194 = (2 * v274) | 1;
  v195 = (*(v256 + 80) + 32) & ~*(v256 + 80);
  while (1)
  {
    v190 = v161;
    MEMORY[0x1EEE9AC00](result);
    *(&v234 - 2) = v192;
    *(&v234 - 1) = v161;
    v196 = sub_1E4844968(sub_1E4844BCC, (&v234 - 4), v191 + v195, v193, v194);
    v197 = *(v196 + 2);
    if (!v197)
    {
      break;
    }

    v161 = *(v196 + 4);
    v198 = v197 - 1;
    if (v197 == 1)
    {
      goto LABEL_74;
    }

    if (v197 > 4)
    {
      v199 = v198 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v200 = vdupq_n_s64(v161);
      v201 = (v196 + 56);
      v202 = v198 & 0xFFFFFFFFFFFFFFFCLL;
      v203 = v200;
      do
      {
        v200 = vbslq_s8(vcgtq_s64(v200, v201[-1]), v200, v201[-1]);
        v203 = vbslq_s8(vcgtq_s64(v203, *v201), v203, *v201);
        v201 += 2;
        v202 -= 4;
      }

      while (v202);
      v204 = vbslq_s8(vcgtq_s64(v200, v203), v200, v203);
      v205 = vextq_s8(v204, v204, 8uLL).u64[0];
      v161 = vbsl_s8(vcgtd_s64(v204.i64[0], v205), *v204.i8, v205);
      if (v198 == (v198 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v199 = 1;
    }

    v206 = v197 - v199;
    v207 = &v196[8 * v199 + 32];
    do
    {
      v209 = *v207++;
      v208 = v209;
      if (v161 <= v209)
      {
        v161 = v208;
      }

      --v206;
    }

    while (v206);
LABEL_74:

    if (__OFSUB__(v185, v161))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v185 - v161 >= 8)
    {
      goto LABEL_78;
    }
  }

LABEL_78:
  if (__OFSUB__(v185, v190))
  {
    goto LABEL_128;
  }

  if ((v185 - v190 > 7) | v258 & 1)
  {
    v210 = v185;
    goto LABEL_100;
  }

  v211 = (v238 + 1);
  if (__OFADD__(v238, 1))
  {
    goto LABEL_135;
  }

  if (v274 < v211)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v211 < 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v212 = (2 * v274) | 1;
  v213 = (*(v256 + 80) + 32) & ~*(v256 + 80);
  while (1)
  {
    v210 = v185;
    MEMORY[0x1EEE9AC00](result);
    *(&v234 - 2) = v192;
    *(&v234 - 1) = v185;
    v214 = sub_1E4844968(sub_1E4844BE8, (&v234 - 4), v191 + v213, v211, v212);
    v215 = *(v214 + 2);
    if (!v215)
    {
      break;
    }

    v185 = *(v214 + 4);
    v216 = v215 - 1;
    if (v215 != 1)
    {
      if (v215 <= 4)
      {
        v217 = 1;
LABEL_92:
        v224 = v215 - v217;
        v225 = &v214[8 * v217 + 32];
        do
        {
          v227 = *v225;
          v225 += 8;
          v226 = v227;
          if (v227 < v185)
          {
            v185 = v226;
          }

          --v224;
        }

        while (v224);
        goto LABEL_96;
      }

      v217 = v216 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v218 = vdupq_n_s64(v185);
      v219 = (v214 + 56);
      v220 = v216 & 0xFFFFFFFFFFFFFFFCLL;
      v221 = v218;
      do
      {
        v218 = vbslq_s8(vcgtq_s64(v218, v219[-1]), v219[-1], v218);
        v221 = vbslq_s8(vcgtq_s64(v221, *v219), *v219, v221);
        v219 += 2;
        v220 -= 4;
      }

      while (v220);
      v222 = vbslq_s8(vcgtq_s64(v221, v218), v218, v221);
      v223 = vextq_s8(v222, v222, 8uLL).u64[0];
      v185 = vbsl_s8(vcgtd_s64(v223, v222.i64[0]), *v222.i8, v223);
      if (v216 != (v216 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_92;
      }
    }

LABEL_96:

    if (__OFSUB__(v185, v190))
    {
      goto LABEL_125;
    }

    if (v185 - v190 >= 8)
    {
      goto LABEL_100;
    }
  }

LABEL_100:
  v228 = v210 - v190;
  v229 = __OFSUB__(v210, v190);
  if (__OFSUB__(v210, v190))
  {
    goto LABEL_129;
  }

  if (v228 > 3)
  {
    v230 = v277;
    goto LABEL_113;
  }

  v230 = v277;
  if (__OFADD__(v190, 4))
  {
    goto LABEL_138;
  }

  if (v190 + 4 >= 24)
  {
    v210 = 24;
  }

  else
  {
    v210 = v190 + 4;
  }

  v228 = v210 - v190;
  v229 = __OFSUB__(v210, v190);
LABEL_113:
  if (v229)
  {
    goto LABEL_130;
  }

  if (v228 > 3)
  {
    goto LABEL_119;
  }

  v190 = v210 - 4;
  if (__OFSUB__(v210, 4))
  {
    goto LABEL_139;
  }

  v228 = 4;
  v229 = __OFSUB__(v210, v190);
LABEL_119:
  v279 = v190;
  if (v229)
  {
    goto LABEL_131;
  }

  if (v228 < 8 || (v210 = v190 + 7, !__OFADD__(v190, 7)))
  {
    v278 = v210;
    MEMORY[0x1EEE9AC00](result);
    v231 = v250;
    *(&v234 - 6) = v250;
    *(&v234 - 5) = &v279;
    v232 = v264;
    *(&v234 - 4) = v192;
    *(&v234 - 3) = v232;
    *(&v234 - 2) = &v278;
    v90 = sub_1E48564E4(sub_1E4844C04, (&v234 - 8), v191);
    sub_1E47738B8(v251, &qword_1ECF7D920, &qword_1E4882C28);
    sub_1E47738B8(v261, &qword_1ECF7D928, &unk_1E4882C30);
    sub_1E4842750(v265, type metadata accessor for DayEvents);
    v233 = v275;
    (v275)(v232, v230);
    v233(v231, v230);
    return v90;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}