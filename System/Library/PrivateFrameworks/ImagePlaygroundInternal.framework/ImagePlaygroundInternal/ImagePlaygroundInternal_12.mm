void *sub_1D23D9FF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D23DA150(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D23DA32C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          if (a1 == a4 && a2 == a5)
          {
            return 1;
          }

          return sub_1D2879618();
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D2879618();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D2879618();
    }

    return 0;
  }

  if (a3 <= 4u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1D2879618();
      }
    }

    else if (a6 == 4)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D2879618();
    }

    return 0;
  }

  if (a3 == 5)
  {
    if (a6 == 5)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1D2879618();
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 6 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 6 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 6 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 6 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 6 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 6 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 6 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 6 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 6 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 6 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 6 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 6 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 6 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 6 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 6 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 6 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 6 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 18:
      if (a6 != 6 || a4 != 18 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 19:
      if (a6 != 6 || a4 != 19 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 20:
      if (a6 != 6 || a4 != 20 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 21:
      if (a6 != 6 || a4 != 21 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 22:
      if (a6 != 6 || a4 != 22 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 23:
      if (a6 != 6 || a4 != 23 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 24:
      if (a6 != 6 || a4 != 24 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 25:
      if (a6 != 6 || a4 != 25 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 26:
      if (a6 != 6 || a4 != 26 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 6 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal0A10GenerationV13PreviewStatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28785F8();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v17 = (&v28 + *(v16 + 56) - v14);
  sub_1D23DAB54(a1, &v28 - v14, type metadata accessor for ImageGeneration.PreviewStatus);
  sub_1D23DAB54(a2, v17, type metadata accessor for ImageGeneration.PreviewStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && swift_getEnumCaseMultiPayload() == 3)
    {
      v19 = v15;
      goto LABEL_8;
    }

LABEL_13:
    sub_1D22BD238(v15, &qword_1EC6DACD0);
    v20 = 0;
    return v20 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D23DABDC(v17, type metadata accessor for ImageGeneration.PreviewStatus);
      v19 = v15;
LABEL_8:
      sub_1D23DABDC(v19, type metadata accessor for ImageGeneration.PreviewStatus);
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_13;
  }

  sub_1D23DAB54(v15, v12, type metadata accessor for ImageGeneration.PreviewStatus);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA50) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v29 + 8))(v12 + v21, v4);
    goto LABEL_13;
  }

  v22 = *v12;
  v23 = *v17;
  v24 = v29;
  v25 = *(v29 + 32);
  v25(v9, v12 + v21, v4);
  v25(v6, v17 + v21, v4);
  if (v22 == v23)
  {
    v20 = sub_1D28785A8();
  }

  else
  {
    v20 = 0;
  }

  v27 = *(v24 + 8);
  v27(v6, v4);
  v27(v9, v4);
  sub_1D23DABDC(v15, type metadata accessor for ImageGeneration.PreviewStatus);
  return v20 & 1;
}

uint64_t sub_1D23DAB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23DABDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D23DAC40()
{
  result = qword_1EC6DAB50;
  if (!qword_1EC6DAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAB50);
  }

  return result;
}

uint64_t sub_1D23DAD34(uint64_t a1, int a2)
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

uint64_t sub_1D23DAD7C(uint64_t result, int a2, int a3)
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

void sub_1D23DADF4()
{
  sub_1D2871818();
  if (v0 <= 0x3F)
  {
    sub_1D23DAEB0();
    if (v1 <= 0x3F)
    {
      sub_1D23DAF14();
      if (v2 <= 0x3F)
      {
        sub_1D239A560();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D23DAEB0()
{
  result = qword_1ED8A5F90;
  if (!qword_1ED8A5F90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8A5F90);
  }

  return result;
}

void sub_1D23DAF14()
{
  if (!qword_1ED89CF28)
  {
    type metadata accessor for PlaygroundImage();
    v0 = sub_1D28784C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF28);
    }
  }
}

void sub_1D23DAF9C()
{
  type metadata accessor for ImageGeneration.PreviewImage(319);
  if (v0 <= 0x3F)
  {
    sub_1D23DB044(319, &qword_1ED89CE18);
    if (v1 <= 0x3F)
    {
      sub_1D23DB044(319, &unk_1ED8A5DD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D23DB044(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D28785F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D23DB0AC()
{
  result = type metadata accessor for PlaygroundImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0A10GenerationV10LimitationO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D23DB130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D23DB178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1D23DB1BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D23DB1E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v6 >> 4;
  if (v6 >> 4 <= 6)
  {
    switch(v7)
    {
      case 3u:

        if (a2)
        {
          sub_1D22BCDC4(v5, v4, v6);
          return 18;
        }

        v9 = sub_1D27D8C8C();
        sub_1D22BCDC4(v5, v4, v6);
        v10 = (v9 & 1) == 0;
        v11 = 13;
        goto LABEL_23;
      case 5u:

        sub_1D22BCDC4(v5, v4, v6);
        return 12;
      case 6u:

        sub_1D22BCDC4(v5, v4, v6);
        return qword_1D28853C0[v6 & 0xF];
    }

LABEL_84:
    sub_1D22BCDC4(v5, *(a1 + 8), *(a1 + 16));
    if (a4)
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  if (v6 >> 4 <= 8)
  {
    if (v7 == 7 || v7 == 8)
    {
      goto LABEL_5;
    }

    goto LABEL_84;
  }

  if (v7 == 9)
  {
LABEL_5:

    return v5;
  }

  if (v7 != 10)
  {
    goto LABEL_84;
  }

  if (v5 == 2 && !v4 && v6 == 160)
  {

    return 0;
  }

  if (v5 == 3 && !v4 && v6 == 160)
  {

    if (a2 & 1) == 0 && (sub_1D27D8C8C())
    {
      return 13;
    }

    return 0;
  }

  if (v5 == 5 && !v4 && v6 == 160)
  {

    if (a2)
    {
      return 9;
    }

    else
    {
      return 13;
    }
  }

  if (v5 == 6 && !v4 && v6 == 160)
  {

    return 14;
  }

  if (v5 != 7 || v4 || v6 != 160)
  {
    if (v5 == 8 && !v4 && v6 == 160)
    {

      return 17;
    }

    if (v5 == 10 && !v4 && v6 == 160)
    {

      return 19;
    }

    if (v5 == 12 && !v4 && v6 == 160)
    {

      return 20;
    }

    if (v5 == 13 && !v4 && v6 == 160)
    {

      return 21;
    }

    if (v5 == 15 && !v4 && v6 == 160)
    {

      return 22;
    }

    if (v5 == 16 && !v4 && v6 == 160)
    {

      return 23;
    }

    if (v5 == 17 && !v4 && v6 == 160)
    {

      return 24;
    }

    if (v5 == 18 && !v4 && v6 == 160)
    {

      return 25;
    }

    if (v5 == 20 && !v4 && v6 == 160)
    {

      return 26;
    }

    goto LABEL_84;
  }

  if (a2)
  {
    return 11;
  }

  v10 = (sub_1D27D8C8C() & 1) == 0;
  v11 = 11;
LABEL_23:
  if (v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

char *sub_1D23DB630(char *result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    for (i = result; i; --i)
    {
      v6 = 0;
      MEMORY[0x1D38A3540](&v6, 8);
      v3 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D27CCD74(0, *(v1 + 2) + 1, 1, v1);
      }

      v5 = *(v1 + 2);
      v4 = *(v1 + 3);
      if (v5 >= v4 >> 1)
      {
        v1 = sub_1D27CCD74((v4 > 1), v5 + 1, 1, v1);
      }

      *(v1 + 2) = v5 + 1;
      *&v1[8 * v5 + 32] = v3 >> 1;
    }

    return v1;
  }

  return result;
}

unint64_t sub_1D23DB71C()
{
  type metadata accessor for ServicesFetcher();
  v0 = swift_allocObject();
  result = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  qword_1EC6DAD20 = v0;
  return result;
}

id sub_1D23DB768()
{
  if (qword_1EC6D8AB0 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for _PeopleRetrieval());
  sub_1D2870F78();
  result = sub_1D2557E9C();
  qword_1EC6DAD28 = result;
  return result;
}

uint64_t static ImageGenerationPersonFetcher.person(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_1D2878568();
  v3[12] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D23DB8C0, v5, v4);
}

uint64_t sub_1D23DB8C0()
{
  if (qword_1EC6D8C18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1D23DB990;
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  return sub_1D2553994(v2, v3, v4);
}

uint64_t sub_1D23DB990()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D23DBAB0, v3, v2);
}

uint64_t sub_1D23DBAB0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  sub_1D22BD1D0(v1, v2, &unk_1EC6DDDC0);
  v3 = type metadata accessor for PhotosPersonAsset();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_1D22BD238(*(v0 + 80), &unk_1EC6DDDC0);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    *(v0 + 40) = v3;
    *(v0 + 48) = sub_1D23DBC04();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1D23DBC5C(v5, boxed_opaque_existential_1);
  }

  v7 = *(v0 + 88);
  sub_1D2352940(v0 + 16, *(v0 + 56));
  sub_1D22BD238(v7, &unk_1EC6DDDC0);

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1D23DBC04()
{
  result = qword_1EC6D8780;
  if (!qword_1EC6D8780)
  {
    type metadata accessor for PhotosPersonAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8780);
  }

  return result;
}

uint64_t sub_1D23DBC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ImageGenerationPersonFetcher.preferredPersonForImplicitPersonalization()(uint64_t a1)
{
  v1[22] = a1;
  sub_1D2878568();
  v1[23] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D23DBD58, v3, v2);
}

uint64_t sub_1D23DBD58()
{
  if (qword_1EC6D8C18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1D23DBE24;

  return sub_1D2554484(v0 + 56);
}

uint64_t sub_1D23DBE24()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D23DBF44, v3, v2);
}

uint64_t sub_1D23DBF44()
{

  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_1D22BD238(v0 + 56, &qword_1EC6DAD30);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  sub_1D22BD1D0(v0 + 16, v0 + 136, &qword_1EC6D9A58);
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    *(v0 + 120) = v1;
    *(v0 + 128) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  }

  else
  {
    sub_1D22BD238(v0 + 136, &qword_1EC6D9A58);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
  }

  sub_1D2352940(v0 + 96, *(v0 + 176));
  sub_1D22BD238(v0 + 16, &qword_1EC6D9A58);
  v5 = *(v0 + 8);

  return v5();
}

void static ImageGenerationPersonFetcher.resetPreferredPersonForImplicitPersonalization()()
{
  if (qword_1EC6D8C18 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x1E69E7CC0];

  sub_1D2612BDC(v1);
}

uint64_t static ImageGenerationPersonFetcher.resetAppearanceCharacter()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v16 - v2;
  if (qword_1ED8A4928 != -1)
  {
    v1 = swift_once();
  }

  v4 = off_1ED8A4930;
  if (qword_1EC6D8AB0 != -1)
  {
    v1 = swift_once();
  }

  v5 = qword_1EC6DAD20;
  v6 = *(v4 + 2);
  MEMORY[0x1EEE9AC00](v1);
  v16[-2] = v5;
  sub_1D2870F78();
  os_unfair_lock_lock((v6 + 28));
  sub_1D23DC400((v6 + 16));
  os_unfair_lock_unlock((v6 + 28));

  v7 = *(v4 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v16[-2] = sub_1D23CEC58;
  v16[-1] = v9;
  sub_1D2870F78();
  os_unfair_lock_lock(v7 + 7);
  sub_1D23DC41C(&v7[4], v16);
  os_unfair_lock_unlock(v7 + 7);

  v11 = v16[0];
  if (v16[0])
  {
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_1D2878568();
    sub_1D2870F78();
    v13 = sub_1D2878558();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    sub_1D22AE01C(0, 0, v3, &unk_1D2884920, v14);
  }

  return result;
}

uint64_t static ImageGenerationImplicitPersonalization.preferredPersonForImplicitPersonalization()(uint64_t a1)
{
  v1[22] = a1;
  sub_1D2878568();
  v1[23] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D23DC50C, v3, v2);
}

uint64_t sub_1D23DC50C()
{
  type metadata accessor for ServicesFetcher();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  v2 = objc_allocWithZone(type metadata accessor for _PeopleRetrieval());
  *(v0 + 208) = sub_1D2557E9C();
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_1D23DC5EC;

  return sub_1D2554484(v0 + 56);
}

uint64_t sub_1D23DC5EC()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D23DC70C, v3, v2);
}

uint64_t sub_1D23DC70C()
{

  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_1D22BD238(v0 + 56, &qword_1EC6DAD30);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  sub_1D23DC8D8(v0 + 16, v0 + 136);
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    *(v0 + 120) = v1;
    *(v0 + 128) = *(v2 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
    __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  }

  else
  {
    sub_1D22BD238(v0 + 136, &qword_1EC6D9A58);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
  }

  v5 = *(v0 + 208);
  sub_1D2352940(v0 + 96, *(v0 + 176));

  sub_1D22BD238(v0 + 16, &qword_1EC6D9A58);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D23DC8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23DC984(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = v4;
  *(v5 + 528) = a3;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v6 = sub_1D2873CB8();
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v5 + 224) = swift_task_alloc();
  v7 = sub_1D2871818();
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  v8 = type metadata accessor for PlaygroundImage();
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v9 = sub_1D28716B8();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = sub_1D2878568();
  *(v5 + 344) = sub_1D2878558();
  v11 = sub_1D28784F8();
  *(v5 + 352) = v11;
  *(v5 + 360) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D23DCC70, v11, v10);
}

uint64_t sub_1D23DCC70()
{
  v1 = v0[41];
  v2 = sub_1D2873AA8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v1);
  v5 = v4;
  v0[46] = v3;
  v0[47] = v4;
  sub_1D22BD238(v1, &qword_1EC6DAE70);
  if (v5 >> 60 == 15)
  {

    sub_1D23ED0E0();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[48] = v9;
    *v9 = v0;
    v9[1] = sub_1D23DCE90;
    v10 = v0[40];
    v11 = v0[20];

    return sub_1D23E0B14(v10, v11);
  }
}

uint64_t sub_1D23DCE90()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_1D23DE00C;
  }

  else
  {
    v5 = sub_1D23DCFCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23DCFCC()
{
  sub_1D23E0060();
  v0[50] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[51] = v2;
  v0[52] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D23DD060, v2, v1);
}

uint64_t sub_1D23DD060()
{
  v10 = *(v0 + 368);
  v1 = *(v0 + 320);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 528);
  v5 = sub_1D2878558();
  *(v0 + 424) = v5;
  v6 = swift_task_alloc();
  *(v0 + 432) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v10;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  v7 = swift_task_alloc();
  *(v0 + 440) = v7;
  *v7 = v0;
  v7[1] = sub_1D23DD19C;
  v8 = MEMORY[0x1E69E85E0];

  return sub_1D23E26E0(v5, v8, 0xD000000000000053, 0x80000001D28B5000, sub_1D23EFBD0, v6);
}

uint64_t sub_1D23DD19C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[56] = a1;
  v5[57] = v2;

  v6 = v4[52];
  v7 = v4[51];
  if (v2)
  {
    v8 = sub_1D23DDD38;
  }

  else
  {
    v8 = sub_1D23DD31C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D23DD31C()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D23DD380, v1, v2);
}

uint64_t sub_1D23DD380()
{
  v91 = v0;
  v1 = v0[56];
  v87 = v0[57];
  v2 = v0[4];
  v3 = v0[37];
  v4 = v0[29];
  v5 = v0[30];

  v6 = *(v5 + 56);
  sub_1D2870F68();
  v6(v3, 1, 1, v4);
  v7 = objc_opt_self();
  v89 = v1;
  v8 = v2;
  v9 = sub_1D2878068();
  v10 = [v7 uuidFromLocalIdentifier_];

  if (v10)
  {
    v11 = v0[36];
    v12 = v0[29];
    v13 = v0[30];
    sub_1D28780A8();

    sub_1D28717A8();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1D22BD238(v0[36], &qword_1EC6D8F70);
    }

    else
    {
      v14 = v0[36];
      v15 = v0[37];
      v16 = v0[29];
      v17 = v0[30];
      sub_1D22BD238(v15, &qword_1EC6D8F70);
      (*(v17 + 32))(v15, v14, v16);
      v6(v15, 0, 1, v16);
    }
  }

  v18 = v0[37];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[22];
  v22 = *&v21[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoAssetCache];
  sub_1D239A330(v0[19], v20);
  sub_1D22BD1D0(v18, v19, &qword_1EC6D8F70);
  sub_1D2870F78();
  v23 = v21;
  v24 = sub_1D23EE348(v23, v22, v20, v19);

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_placeholderAssets;
  swift_beginAccess();
  sub_1D2870F78();
  v26 = v8;
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *&v23[v25];
  *&v23[v25] = 0x8000000000000000;
  sub_1D24E8BE8(v24, v89, v8, isUniquelyReferenced_nonNull_native);

  v86 = v25;
  *&v23[v25] = v90;
  swift_endAccess();
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D287F500;
  *(v29 + 32) = v89;
  *(v29 + 40) = v8;
  v30 = sub_1D28783C8();

  v31 = sub_1D23E99AC();
  v32 = [v28 fetchAssetsWithLocalIdentifiers:v30 options:v31];

  v33 = [v32 firstObject];
  if (!v33)
  {
    sub_1D2872528();
    sub_1D2870F68();
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A18();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[26];
    v39 = v0[23];
    v52 = v0[24];
    if (v50)
    {
      v88 = v0[26];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v90 = v54;
      *v53 = 136315138;
      v55 = sub_1D23D7C84(v89, v8, &v90);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1D226E000, v48, v49, "Failed to fetch asset with local identifier: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      (*(v52 + 8))(v88, v39);
LABEL_19:
      v66 = v0[46];
      v65 = v0[47];
      v67 = v0[39];
      v68 = v0[40];
      v70 = v0[37];
      v69 = v0[38];
      sub_1D23ED0E0();
      swift_allocError();
      *v71 = 2;
      swift_willThrow();

      sub_1D22BD238(v70, &qword_1EC6D8F70);
      sub_1D23E1758();
      sub_1D22D6D4C(v66, v65);
      (*(v67 + 8))(v68, v69);

      v72 = v0[1];

      return v72();
    }

LABEL_18:

    (*(v52 + 8))(v51, v39);
    goto LABEL_19;
  }

  v34 = v24;
  v35 = v0[33];
  v84 = v0[32];
  v85 = v23;
  v36 = v0[30];
  v37 = v0[31];
  v38 = v0[28];
  v82 = v0[29];
  v83 = v0[19];
  *(v34 + 88) = 0;
  swift_beginAccess();
  v39 = *(v34 + 80);
  *(v34 + 80) = v33;
  v80 = v33;

  sub_1D23EBDC8(1);
  v81 = v34;
  (*(v36 + 16))(v37, v34 + *(*v34 + 160), v82);
  sub_1D239A330(v83, v38);
  (*(v35 + 56))(v38, 0, 1, v84);
  sub_1D270BBA0(v38, v37, 1);
  sub_1D2872528();
  sub_1D2870F68();
  v40 = sub_1D2873CA8();
  v41 = sub_1D2878A08();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[27];
  v44 = v0[23];
  v45 = v0[24];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v90 = v47;
    *v46 = 136315138;
    v39 = sub_1D23D7C84(v89, v26, &v90);

    *(v46 + 4) = v39;
    _os_log_impl(&dword_1D226E000, v40, v41, "Asset creation sucessfull for local identifier: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1D38A3520](v47, -1, -1);
    MEMORY[0x1D38A3520](v46, -1, -1);
  }

  else
  {
  }

  v56 = *(v45 + 8);
  v52 = v45 + 8;
  v56(v43, v44);
  v57 = v0[22];
  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assetMap;
  swift_beginAccess();
  v48 = *(v57 + v58);
  v59 = *&v85[v86];
  sub_1D2870F68();
  sub_1D2870F68();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v48;
  sub_1D23EDB8C(v59, sub_1D23ECBB0, 0, v60, &v90);

  if (v87)
  {
  }

  v62 = *(v90 + 16);
  if (v62)
  {
    v63 = v90;
    v64 = sub_1D27D3200(*(v90 + 16), 0);
    v51 = sub_1D260D1A8(&v90, (v64 + 32), v62, v63);
    sub_1D23EEDB0();
    if (v51 != v62)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
  }

  v74 = v0[46];
  v73 = v0[47];
  v75 = v0[40];
  v77 = v0[38];
  v76 = v0[39];
  v78 = v0[37];
  *(v0[22] + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets) = v64;

  sub_1D23DFBEC();

  sub_1D22BD238(v78, &qword_1EC6D8F70);
  sub_1D23E1758();
  sub_1D22D6D4C(v74, v73);
  (*(v76 + 8))(v75, v77);

  v79 = v0[1];

  return v79(v81);
}

uint64_t sub_1D23DDD38()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D23DDD9C, v1, v2);
}

uint64_t sub_1D23DDD9C()
{
  v1 = v0[56];
  if ((v1 & 0x100) != 0)
  {
    sub_1D2872528();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A38();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "Failed to create new asset, retrying once.", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];

    (*(v14 + 8))(v13, v15);
    v0[58] = sub_1D2878558();
    v17 = sub_1D28784F8();
    v0[59] = v17;
    v0[60] = v16;

    return MEMORY[0x1EEE6DFA0](sub_1D23DE110, v17, v16);
  }

  else
  {
    v3 = v0[46];
    v2 = v0[47];
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[38];

    sub_1D23ED0E0();
    swift_allocError();
    *v7 = v1;
    v7[1] = 0;
    swift_willThrow();
    sub_1D23E1758();
    sub_1D22D6D4C(v3, v2);
    (*(v5 + 8))(v4, v6);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D23DE00C()
{
  sub_1D22D6D4C(v0[46], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D23DE110()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 320);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 528);
  v7 = sub_1D2878558();
  *(v0 + 488) = v7;
  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v2;
  *(v8 + 32) = v1;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 504) = v9;
  *v9 = v0;
  v9[1] = sub_1D23DE248;
  v10 = MEMORY[0x1E69E85E0];

  return (sub_1D23E26E0)(v7, v10, 0xD000000000000053, 0x80000001D28B5000, sub_1D23EFFC4, v8);
}

uint64_t sub_1D23DE248(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v5[64] = a1;
  v5[65] = v2;

  v6 = v4[60];
  v7 = v4[59];
  if (v2)
  {
    v8 = sub_1D23DEDEC;
  }

  else
  {
    v8 = sub_1D23DE3CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D23DE3CC()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D23DE430, v1, v2);
}

uint64_t sub_1D23DE430()
{
  v91 = v0;
  v87 = v0[65];
  v1 = v0[64];
  v2 = v0[8];
  v3 = v0[37];
  v4 = v0[29];
  v5 = v0[30];

  v6 = *(v5 + 56);
  sub_1D2870F68();
  v6(v3, 1, 1, v4);
  v7 = objc_opt_self();
  v89 = v1;
  v8 = v2;
  v9 = sub_1D2878068();
  v10 = [v7 uuidFromLocalIdentifier_];

  if (v10)
  {
    v11 = v0[36];
    v12 = v0[29];
    v13 = v0[30];
    sub_1D28780A8();

    sub_1D28717A8();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1D22BD238(v0[36], &qword_1EC6D8F70);
    }

    else
    {
      v14 = v0[36];
      v15 = v0[37];
      v16 = v0[29];
      v17 = v0[30];
      sub_1D22BD238(v15, &qword_1EC6D8F70);
      (*(v17 + 32))(v15, v14, v16);
      v6(v15, 0, 1, v16);
    }
  }

  v18 = v0[37];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[22];
  v22 = *&v21[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoAssetCache];
  sub_1D239A330(v0[19], v20);
  sub_1D22BD1D0(v18, v19, &qword_1EC6D8F70);
  sub_1D2870F78();
  v23 = v21;
  v24 = sub_1D23EE348(v23, v22, v20, v19);

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_placeholderAssets;
  swift_beginAccess();
  sub_1D2870F78();
  v26 = v8;
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *&v23[v25];
  *&v23[v25] = 0x8000000000000000;
  sub_1D24E8BE8(v24, v89, v8, isUniquelyReferenced_nonNull_native);

  v86 = v25;
  *&v23[v25] = v90;
  swift_endAccess();
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D287F500;
  *(v29 + 32) = v89;
  *(v29 + 40) = v8;
  v30 = sub_1D28783C8();

  v31 = sub_1D23E99AC();
  v32 = [v28 fetchAssetsWithLocalIdentifiers:v30 options:v31];

  v33 = [v32 firstObject];
  if (!v33)
  {
    sub_1D2872528();
    sub_1D2870F68();
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A18();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[26];
    v39 = v0[23];
    v52 = v0[24];
    if (v50)
    {
      v88 = v0[26];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v90 = v54;
      *v53 = 136315138;
      v55 = sub_1D23D7C84(v89, v8, &v90);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1D226E000, v48, v49, "Failed to fetch asset with local identifier: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      (*(v52 + 8))(v88, v39);
LABEL_19:
      v66 = v0[46];
      v65 = v0[47];
      v67 = v0[39];
      v68 = v0[40];
      v70 = v0[37];
      v69 = v0[38];
      sub_1D23ED0E0();
      swift_allocError();
      *v71 = 2;
      swift_willThrow();

      sub_1D22BD238(v70, &qword_1EC6D8F70);
      sub_1D23E1758();
      sub_1D22D6D4C(v66, v65);
      (*(v67 + 8))(v68, v69);

      v72 = v0[1];

      return v72();
    }

LABEL_18:

    (*(v52 + 8))(v51, v39);
    goto LABEL_19;
  }

  v34 = v24;
  v35 = v0[33];
  v84 = v0[32];
  v85 = v23;
  v36 = v0[30];
  v37 = v0[31];
  v38 = v0[28];
  v82 = v0[29];
  v83 = v0[19];
  *(v34 + 88) = 0;
  swift_beginAccess();
  v39 = *(v34 + 80);
  *(v34 + 80) = v33;
  v80 = v33;

  sub_1D23EBDC8(1);
  v81 = v34;
  (*(v36 + 16))(v37, v34 + *(*v34 + 160), v82);
  sub_1D239A330(v83, v38);
  (*(v35 + 56))(v38, 0, 1, v84);
  sub_1D270BBA0(v38, v37, 1);
  sub_1D2872528();
  sub_1D2870F68();
  v40 = sub_1D2873CA8();
  v41 = sub_1D2878A08();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[27];
  v44 = v0[23];
  v45 = v0[24];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v90 = v47;
    *v46 = 136315138;
    v39 = sub_1D23D7C84(v89, v26, &v90);

    *(v46 + 4) = v39;
    _os_log_impl(&dword_1D226E000, v40, v41, "Asset creation sucessfull for local identifier: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1D38A3520](v47, -1, -1);
    MEMORY[0x1D38A3520](v46, -1, -1);
  }

  else
  {
  }

  v56 = *(v45 + 8);
  v52 = v45 + 8;
  v56(v43, v44);
  v57 = v0[22];
  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assetMap;
  swift_beginAccess();
  v48 = *(v57 + v58);
  v59 = *&v85[v86];
  sub_1D2870F68();
  sub_1D2870F68();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v48;
  sub_1D23EDB8C(v59, sub_1D23ECBB0, 0, v60, &v90);

  if (v87)
  {
  }

  v62 = *(v90 + 16);
  if (v62)
  {
    v63 = v90;
    v64 = sub_1D27D3200(*(v90 + 16), 0);
    v51 = sub_1D260D1A8(&v90, (v64 + 32), v62, v63);
    sub_1D23EEDB0();
    if (v51 != v62)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
  }

  v74 = v0[46];
  v73 = v0[47];
  v75 = v0[40];
  v77 = v0[38];
  v76 = v0[39];
  v78 = v0[37];
  *(v0[22] + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets) = v64;

  sub_1D23DFBEC();

  sub_1D22BD238(v78, &qword_1EC6D8F70);
  sub_1D23E1758();
  sub_1D22D6D4C(v74, v73);
  (*(v76 + 8))(v75, v77);

  v79 = v0[1];

  return v79(v81);
}

uint64_t sub_1D23DEDEC()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x1EEE6DFA0](sub_1D23DEE50, v1, v2);
}

uint64_t sub_1D23DEE50()
{
  v1 = v0[64];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];

  sub_1D23ED0E0();
  swift_allocError();
  *v7 = v1;
  v7[1] = BYTE1(v1) & 1;
  sub_1D23E1758();
  sub_1D22D6D4C(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t GenerativePlaygroundPhotoLibrary.deleteAllAssets()()
{
  v1[21] = v0;
  sub_1D2878568();
  v1[22] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D23DF044, v3, v2);
}

uint64_t sub_1D23DF044()
{
  v1 = v0[21];
  sub_1D23E0060();
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  v18 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v4 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D38A1C30](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v4 + 32);
      sub_1D2870F78();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    swift_beginAccess();
    v7 = *(v5 + 80);
    v8 = v7;

    ++v4;
    if (v7)
    {
      MEMORY[0x1D38A0E30](v9);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();
      v17 = v18;
      v4 = v6;
    }
  }

  v10 = v0[21];

  v11 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary);
  v12 = swift_allocObject();
  *(v12 + 16) = v17;
  v0[14] = sub_1D23EFFA8;
  v0[15] = v12;
  v13 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFBA8;
  v0[13] = &block_descriptor_7;
  v14 = _Block_copy(v0 + 10);
  v0[25] = v14;

  v0[2] = v0;
  v0[3] = sub_1D23DF33C;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
  v0[10] = v13;
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFFA8;
  v0[13] = &block_descriptor_3;
  v0[14] = v15;
  [v11 performChanges:v14 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D23DF33C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1D23EFF84;
  }

  else
  {
    v5 = sub_1D23EFF80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

id sub_1D23DF46C()
{
  result = sub_1D23DF48C();
  qword_1EC6D8B50 = result;
  return result;
}

id sub_1D23DF48C()
{
  v0 = sub_1D2873CB8();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v9[2] = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v9[1] = v9 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v6 = [objc_allocWithZone(MEMORY[0x1E69789E0]) init];
  v7 = sub_1D23ED5DC(0xD00000000000001ELL, 0x80000001D28B5080, v6);

  return v7;
}

id static GenerativePlaygroundPhotoLibrary.shared.getter()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6D8B50;

  return v1;
}

void sub_1D23DFB38()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69789B8]) init];
  [v0 setEnableCloudSync_];
  [v0 setCloudResourcePrefetchMode_];
}

uint64_t sub_1D23DFBA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1D2870F78();
  v1(v2);
}

uint64_t sub_1D23DFBEC()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  swift_beginAccess();
  v18 = v0;
  v2 = *(v0 + v1);
  v20 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_35:
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = v4;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D38A1C30](v6, v2);
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          sub_1D2870F78();
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          break;
        }

        ++v6;
        if (v4 == v3)
        {
          goto LABEL_20;
        }
      }

      v7 = swift_unknownObjectRelease();
      MEMORY[0x1D38A0E30](v7);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();
      v5 = v20;
    }

    while (v4 != v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  *(v18 + v1) = v5;

  v9 = *(v18 + v1);
  if (v9 >> 62)
  {
    result = sub_1D2879368();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v9 & 0xC000000000000001;
    sub_1D2870F68();
    for (i = 0; i != v10; ++i)
    {
      if (v19)
      {
        v17 = MEMORY[0x1D38A1C30](i, v9);
      }

      else
      {
        v17 = *(v9 + 8 * i + 32);
        sub_1D2870F78();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        v14 = v9;
        v15 = *(v12 + 8);
        v16 = sub_1D2870F68();
        v15(v16, ObjectType, v12);
        v9 = v14;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t GenerativePlaygroundPhotoLibrary.shouldFetchAssets.getter()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GenerativePlaygroundPhotoLibrary.shouldFetchAssets.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D23DFFA8(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x1EEE6DEE8](v6, v7);
}

uint64_t sub_1D23E0060()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibraryStatus;
  if (!v1[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibraryStatus])
  {
    sub_1D2872528();
    v11 = sub_1D2873CA8();
    v12 = sub_1D28789F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "Initializing photo library", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    v14 = *(v3 + 8);
    v14(v9, v2);
    v1[v10] = 1;
    [*&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary] registerChangeObserver_];
    sub_1D23E02F0();
    v1[v10] = 2;
    sub_1D2872528();
    v15 = v1;
    v16 = sub_1D2873CA8();
    v17 = sub_1D28789F8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(&v15->isa + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
      if (v19 >> 62)
      {
        v20 = sub_1D2879368();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v20;

      _os_log_impl(&dword_1D226E000, v16, v17, "Photo library is ready with %ld assets", v18, 0xCu);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    return (v14)(v6, v2);
  }

  return result;
}

void sub_1D23E02F0()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = sub_1D23E99AC();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC8];
    v4 = [objc_opt_self() fetchAssetsWithOptions_];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v0;
    aBlock[4] = sub_1D23EEDC0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23E9EDC;
    aBlock[3] = &block_descriptor_115;
    v6 = _Block_copy(aBlock);
    sub_1D2870F78();
    v7 = v0;

    [v4 enumerateObjectsUsingBlock_];
    _Block_release(v6);
    swift_beginAccess();
    v8 = *(v3 + 16);
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assetMap;
    swift_beginAccess();
    *&v7[v9] = v8;
    swift_bridgeObjectRetain_n();

    v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_placeholderAssets;
    swift_beginAccess();
    v11 = *&v7[v10];
    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v8;
    sub_1D23EDB8C(v11, sub_1D23ECBB0, 0, isUniquelyReferenced_nonNull_native, aBlock);

    v13 = aBlock[0];
    v14 = *(aBlock[0] + 16);
    if (v14)
    {
      v15 = sub_1D27D3200(*(aBlock[0] + 16), 0);
      v16 = sub_1D260D1A8(aBlock, (v15 + 32), v14, v13);
      sub_1D23EEDB0();
      if (v16 == v14)
      {
LABEL_6:
        *&v7[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets] = v15;

        sub_1D23DFBEC();

        return;
      }

      __break(1u);
    }

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }
}

uint64_t GenerativePlaygroundPhotoLibrary.subscribeToAssetsUpdates(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1D23ECBF8(a1, v2, ObjectType, a2);
}

uint64_t GenerativePlaygroundPhotoLibrary.createNewAsset(with:context:shouldHide:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1D2871798();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_1D2872438();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  sub_1D2878568();
  *(v4 + 88) = sub_1D2878558();
  v8 = sub_1D28784F8();
  *(v4 + 96) = v8;
  *(v4 + 104) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D23E0758, v8, v7);
}

uint64_t sub_1D23E0758()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  type metadata accessor for GenerationRecipeFactory();
  sub_1D2461838(v2, 1, v1);
  sub_1D2871778();
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1D23E0838;
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 128);
  v7 = *(v0 + 16);

  return sub_1D23DC984(v7, v4, v6, v5);
}

uint64_t sub_1D23E0838()
{
  v2 = *v1;
  v2[15] = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[12];
    v7 = v2[13];
    v8 = sub_1D23E0A78;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[12];
    v7 = v2[13];
    v8 = sub_1D23E09DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D23E09DC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23E0A78()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23E0B14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D2873CB8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1D2871538();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_1D2871818();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_1D28716B8();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = sub_1D2878568();
  v3[21] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v3[22] = v8;
  v3[23] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D23E0D58, v8, v9);
}

uint64_t sub_1D23E0D58()
{
  sub_1D2871428();
  swift_allocObject();
  *(v0 + 192) = sub_1D2871418();
  sub_1D2872438();
  sub_1D23EFEE0(&qword_1EC6DA838, MEMORY[0x1E696E4A0]);
  v1 = sub_1D2871408();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = v1;
  v6 = v2;
  v7 = NSTemporaryDirectory();
  sub_1D28780A8();

  sub_1D2871578();

  sub_1D2872318();
  v8 = objc_allocWithZone(MEMORY[0x1E6978608]);
  sub_1D22D6CF8(v5, v6);
  v9 = sub_1D2878068();
  v10 = sub_1D2878068();

  v11 = sub_1D28716D8();
  v12 = [v8 initWithFormatIdentifier:v9 formatVersion:v10 data:v11];
  *(v0 + 216) = v12;

  sub_1D22D6D60(v5, v6);
  *(v0 + 32) = 0;
  v13 = [v12 dataUsingAssetResourceEncoding_];
  v14 = *(v0 + 32);
  if (v13)
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v37 = *(v0 + 56);
    v35 = *(v0 + 40);
    v36 = sub_1D28716E8();
    v22 = v21;

    *(v0 + 224) = v36;
    *(v0 + 232) = v22;
    sub_1D2871808();
    v23 = sub_1D28717B8();
    v25 = v24;
    (*(v15 + 8))(v16, v17);
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](1700880686, 0xE400000000000000);

    *(v0 + 16) = v23;
    *(v0 + 24) = v25;
    (*(v19 + 104))(v18, *MEMORY[0x1E6968F70], v20);
    sub_1D22BD06C();
    sub_1D28716A8();
    (*(v19 + 8))(v18, v20);

    v26 = sub_1D2878558();
    *(v0 + 240) = v26;
    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    v27[2] = v37;
    v27[3] = v36;
    v27[4] = v22;
    v27[5] = v35;
    v28 = swift_task_alloc();
    *(v0 + 256) = v28;
    *v28 = v0;
    v28[1] = sub_1D23E134C;
    v29 = MEMORY[0x1E69E85E0];
    v30 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v28, v26, v29, 0xD00000000000001ALL, 0x80000001D28B5060, sub_1D23EFDF0, v27, v30);
  }

  else
  {
    v31 = v14;
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 136);

    sub_1D28714B8();

    swift_willThrow();

    sub_1D22D6D60(v5, v6);
    (*(v33 + 8))(v32, v34);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D23E134C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D23E1618;
  }

  else
  {
    v5 = sub_1D23E14F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E14F0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  sub_1D22D6D60(v0[28], v0[29]);

  sub_1D22D6D60(v3, v1);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D23E1618()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[5];
  sub_1D22D6D60(v0[28], v0[29]);

  sub_1D22D6D60(v3, v1);
  v8 = *(v5 + 8);
  v8(v4, v6);
  v8(v7, v6);

  v9 = v0[1];

  return v9();
}

id sub_1D23E1758()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1D28715B8();
  v19[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v19];

  v7 = v19[0];
  if (v6)
  {

    return v7;
  }

  else
  {
    v18 = v19[0];
    v9 = v19[0];
    v10 = sub_1D28714B8();

    swift_willThrow();
    sub_1D2872528();
    v11 = v10;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D226E000, v12, v13, "Failed to remove adjustement file: %@.", v14, 0xCu);
      sub_1D22BD238(v15, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1D23E1A10(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v41 = a7;
  v37 = a6;
  v38 = a4;
  v35 = a5;
  v36 = a3;
  v9 = sub_1D2871798();
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D28716B8();
  v31 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v39 = a1[1];
  v40 = v16;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v42 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary);
  (*(v13 + 16))(v15, v35, v12);
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v9);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  v21 = v36;
  v22 = v38;
  *(v20 + 16) = v36;
  *(v20 + 24) = v22;
  (*(v13 + 32))(v20 + v17, v15, v31);
  (*(v10 + 32))(v20 + v18, v33, v32);
  *(v20 + v19) = v41;
  v23 = v34;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = v34;
  v47 = sub_1D23EFCE4;
  v48 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D23DFBA8;
  v46 = &block_descriptor_165;
  v24 = _Block_copy(&aBlock);
  sub_1D22D6CF8(v21, v22);
  v25 = v23;
  sub_1D2870F78();

  v26 = swift_allocObject();
  v27 = v39;
  v26[2] = v40;
  v26[3] = v27;
  v26[4] = v25;
  v47 = sub_1D23EFDE4;
  v48 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D24936B8;
  v46 = &block_descriptor_171;
  v28 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();

  [v42 performChanges:v24 completionHandler:v28];
  _Block_release(v28);
  _Block_release(v24);
}

void sub_1D23E1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v38 = a6;
  v37 = a5;
  v36 = a4;
  v6 = sub_1D2871798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873CB8();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E6978690]) init];
  [v16 setUseRecoverableStagingDirectory_];
  v17 = [objc_opt_self() creationRequestForAssetWithOptions_];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D28716D8();
    [v18 addResourceWithType:1 data:v19 options:0];

    v20 = sub_1D28715B8();
    [v18 addResourceWithType:16 fileURL:v20 options:0];

    v21 = v18;
    v22 = sub_1D2871728();
    [v21 setCreationDate_];

    sub_1D2871778();
    v23 = sub_1D2871728();
    (*(v7 + 8))(v9, v6);
    [v21 setAddedDate_];

    [v21 setHidden_];
    v24 = [v21 placeholderForCreatedAsset];
    if (v24)
    {
    }

    else
    {
      sub_1D2872528();
      v28 = sub_1D2873CA8();
      v29 = sub_1D2878A18();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1D226E000, v28, v29, "PHAssetCreationRequest placeholder is nil in change block", v30, 2u);
        MEMORY[0x1D38A3520](v30, -1, -1);
      }

      (*(v34 + 8))(v12, v35);
    }

    v31 = [v21 placeholderForCreatedAsset];

    v32 = v38;
    swift_beginAccess();
    v33 = *(v32 + 16);
    *(v32 + 16) = v31;
  }

  else
  {
    sub_1D2872528();
    v25 = sub_1D2873CA8();
    v26 = sub_1D2878A18();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "Asset creation request failed", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    else
    {
    }

    (*(v34 + 8))(v15, v35);
  }
}

void sub_1D23E21FC(char a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  if (a1)
  {
    swift_beginAccess();
    v16 = *(a5 + 16);
    if (v16)
    {
      v17 = [v16 localIdentifier];
      v18 = sub_1D28780A8();
      v20 = v19;

      v45[0] = v18;
      v45[1] = v20;
      v46 = 0;
      v21 = v45;
    }

    else
    {
      sub_1D2872528();
      sub_1D2870F78();
      v30 = sub_1D2873CA8();
      v31 = sub_1D2878A18();

      if (os_log_type_enabled(v30, v31))
      {
        v44 = a3;
        v32 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v47 = v43;
        *v32 = 136315138;
        swift_beginAccess();
        v33 = *(a5 + 16);
        if (v33)
        {
          v34 = [v33 localIdentifier];
          v35 = sub_1D28780A8();
          v37 = v36;
        }

        else
        {
          v37 = 0xE500000000000000;
          v35 = 0x296C696E28;
        }

        v40 = sub_1D23D7C84(v35, v37, &v47);

        *(v32 + 4) = v40;
        _os_log_impl(&dword_1D226E000, v30, v31, "Failed to fetch asset with local identifier in completion block: %s", v32, 0xCu);
        v41 = v43;
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1D38A3520](v41, -1, -1);
        MEMORY[0x1D38A3520](v32, -1, -1);

        (*(v10 + 8))(v15, v9);
        a3 = v44;
      }

      else
      {

        (*(v10 + 8))(v15, v9);
      }

      v47 = xmmword_1D28854B0;
      v48 = 1;
      v21 = &v47;
    }
  }

  else
  {
    sub_1D2872528();
    v22 = a2;
    v23 = sub_1D2873CA8();
    v24 = sub_1D2878A18();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      if (a2)
      {
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v25 + 4) = v28;
      *v26 = v29;
      _os_log_impl(&dword_1D226E000, v23, v24, "Asset creation failed with error: %@", v25, 0xCu);
      sub_1D22BD238(v26, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v26, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    if (a2)
    {
      *&v49 = a2;
      v38 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      type metadata accessor for PHPhotosError(0);
      if (swift_dynamicCast())
      {
        v39 = v45[0];
        *&v49 = v45[0];
        sub_1D23EFEE0(&unk_1EC6D9640, type metadata accessor for PHPhotosError);
        sub_1D2871478();
        if (v45[0] == 3301)
        {
          v49 = xmmword_1D28854A0;
          v50 = 1;
          a3(&v49);

          return;
        }
      }
    }

    v49 = xmmword_1D2883090;
    v50 = 1;
    v21 = &v49;
  }

  a3(v21);
}

uint64_t sub_1D23E26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_1D28784F8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6[11] = v7;
  v6[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D23E2778, v7, v9);
}

uint64_t sub_1D23E2778()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D23E2850;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 16, v5, v6, v3, v4, sub_1D23EFBE8, v1, v7);
}

uint64_t sub_1D23E2850()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1D23E29AC;
  }

  else
  {
    v6 = v2[3];
    v2[16] = v2[2];
    v2[17] = v6;

    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1D23E2990;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23E29AC()
{
  v1 = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  swift_dynamicCast();
  v3 = *(v0 + 145);
  *(v0 + 146) = *(v0 + 144);
  *(v0 + 147) = v3;
  sub_1D23ED0E0();
  swift_willThrowTypedImpl();

  v4 = *(v0 + 144);
  v5 = 256;
  if (!*(v0 + 145))
  {
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v5 | v4);
}

uint64_t sub_1D23E2AA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a5;
  v31 = a4;
  v32 = a2;
  v35 = sub_1D2877B48();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2877B68();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = sub_1D28716B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v32 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_writeQueue);
  (*(v14 + 16))(v17, v29, v13, v16);
  (*(v10 + 16))(v12, a1, v9);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = (v15 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = v31;
  *(v20 + 24) = v31;
  (*(v14 + 32))(v20 + v18, v17, v13);
  (*(v10 + 32))(v20 + v19, v12, v9);
  aBlock[4] = sub_1D23EFDFC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_179;
  v22 = _Block_copy(aBlock);
  sub_1D22D6CF8(v28, v21);
  v23 = v30;
  sub_1D2877B58();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D23EFEE0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v24 = v33;
  v25 = v35;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v23, v24, v22);
  _Block_release(v22);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v23, v36);
}

uint64_t sub_1D23E2F48()
{
  sub_1D28716F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  return sub_1D2878518();
}

uint64_t sub_1D23E2FDC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1D2871798();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_1D2872438();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v2[18] = swift_task_alloc();
  sub_1D2878568();
  v2[19] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23E3158, v6, v5);
}

uint64_t sub_1D23E3158()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[22] = v2;
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E6978868]);
    v4 = v2;
    v5 = [v3 init];
    v0[23] = v5;
    [v5 setNetworkAccessAllowed_];
    [v5 setDeliveryMode_];
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_1D23E32FC;
    v7 = v0[18];

    return sub_1D23E3EFC(v7, v4, v5);
  }

  else
  {

    sub_1D23ED0E0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D23E32FC()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[21];

    return MEMORY[0x1EEE6DFA0](sub_1D23E3CFC, v3, v4);
  }

  else
  {
    v5 = v2[22];
    v6 = swift_task_alloc();
    v2[26] = v6;
    *v6 = v2;
    v6[1] = sub_1D23E3470;
    v7 = v2[17];

    return sub_1D23E4308(v7, v5);
  }
}

uint64_t sub_1D23E3470()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1D23E3D94;
  }

  else
  {
    v5 = sub_1D23E35AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E35AC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v0[28] = v6;
  *v5 = v6;
  v5[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  v0[29] = *(*v4 + 224);
  v0[8] = v4;
  v0[30] = sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v7 = *(*v4 + 184);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v7, v3);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_1D23E3774;
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[14];

  return sub_1D23DC984(v10, v9, 0, v11);
}

uint64_t sub_1D23E3774(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  (*(v3[13] + 8))(v3[14], v3[12]);
  v5 = v3[21];
  v6 = v3[20];
  if (v1)
  {
    v7 = sub_1D23E3E34;
  }

  else
  {
    v7 = sub_1D23E3904;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D23E3904()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *v3 = v1;
  v3[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 72) = v2;
  sub_1D28719E8();

  v4 = (v2 + *(*v2 + 216));
  v5 = v4[1];
  *(v0 + 272) = v5;
  if (v5)
  {
    v6 = *v4;
    sub_1D2870F68();
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_1D23E3AF8;

    return sub_1D23E53F4(v6, v5);
  }

  else
  {
    v9 = *(v0 + 176);

    v10 = *(v0 + 144);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    sub_1D23D4DFC(v10);

    v11 = *(v0 + 8);
    v12 = *(v0 + 256);

    return v11(v12);
  }
}

uint64_t sub_1D23E3AF8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D23E3C3C, v3, v2);
}

uint64_t sub_1D23E3C3C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_1D23D4DFC(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 256);

  return v3(v4);
}

uint64_t sub_1D23E3CFC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23E3D94()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  sub_1D23D4DFC(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D23E3E34()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);

  (*(v4 + 8))(v3, v5);
  sub_1D23D4DFC(v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D23E3EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = sub_1D2878568();
  v4[9] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23E3F9C, v6, v5);
}

uint64_t sub_1D23E3F9C()
{
  v1 = *(v0 + 56);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *(v4 + 16) = v0 + 16;
  v5 = sub_1D2878558();
  *(v0 + 112) = v5;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = type metadata accessor for PlaygroundImage();
  *v6 = v0;
  v6[1] = sub_1D23E40D0;
  v8 = *(v0 + 32);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v8, &unk_1D2885700, v2, sub_1D23EDFB0, v4, v5, v9, v7);
}

uint64_t sub_1D23E40D0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D23E4274;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D23E4208;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23E4208()
{

  sub_1D22D7900(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D23E4274()
{

  sub_1D22D7900(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D23E4308(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_1D2872438();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DADF0);
  v2[25] = swift_task_alloc();
  v4 = sub_1D2871538();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1D2871818();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1D28716B8();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  if (qword_1EC6D8C28 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC6DAD38;
  v2[37] = qword_1EC6DAD38;

  return MEMORY[0x1EEE6DFA0](sub_1D23E4564, v7, 0);
}

uint64_t sub_1D23E4564()
{
  v1 = [objc_opt_self() assetResourcesForAsset_];
  sub_1D22BCFD0(0, &unk_1EC6DADF8);
  v2 = sub_1D28783E8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    sub_1D23ED0E0();
    swift_allocError();
    *v42 = 8;
    swift_willThrow();

    v41 = *(v0 + 8);
LABEL_21:

    return v41();
  }

LABEL_19:
  v3 = sub_1D2879368();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D38A1C30](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 304) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v5 type] == 16)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  *(v0 + 344) = 0;
  v8 = [v6 privateFileURL];
  if (v8)
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = v8;
    sub_1D2871638();

    (*(v12 + 32))(v10, v9, v11);
    v27 = sub_1D28716C8();
    v29 = v28;
    v30 = objc_allocWithZone(MEMORY[0x1E6978608]);
    sub_1D22D6CF8(v27, v29);
    v31 = sub_1D23EDE30();
    sub_1D22D6D60(v27, v29);
    v32 = [v31 formatVersion];
    sub_1D28780A8();

    sub_1D2872308();
    v33 = [v31 data];
    v34 = sub_1D28716E8();
    v36 = v35;

    sub_1D2872458();
    v49 = *(v0 + 304);
    v50 = *(v0 + 288);
    v37 = *(v0 + 264);
    v45 = *(v0 + 256);
    v44 = *(v0 + 192);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 160);
    sub_1D22BD238(*(v0 + 200), &qword_1EC6DADF0);
    sub_1D22D6D60(v27, v29);
    sub_1D22D6D60(v34, v36);

    (*(v38 + 32))(v40, v44, v39);
    sub_1D23E5A48((v0 + 344), v50);

    (*(v37 + 8))(v50, v45);

    v41 = *(v0 + 8);
    goto LABEL_21;
  }

  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v16 = *(v0 + 224);
  v46 = *(v0 + 232);
  v17 = *(v0 + 216);
  v47 = *(v0 + 208);
  v48 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
  *(v0 + 312) = v48;
  [v48 setNetworkAccessAllowed_];
  v18 = NSTemporaryDirectory();
  sub_1D28780A8();

  sub_1D2871578();

  sub_1D2871808();
  v19 = sub_1D28717B8();
  v21 = v20;
  (*(v15 + 8))(v14, v46);
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](1700880686, 0xE400000000000000);

  *(v0 + 144) = v19;
  *(v0 + 152) = v21;
  (*(v17 + 104))(v16, *MEMORY[0x1E6968F70], v47);
  sub_1D22BD06C();
  sub_1D28716A8();
  (*(v17 + 8))(v16, v47);

  v22 = objc_opt_self();
  v23 = v6;
  v24 = [v22 defaultManager];
  *(v0 + 320) = v24;
  v25 = sub_1D28715B8();
  *(v0 + 328) = v25;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D23E4D9C;
  v26 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
  *(v0 + 112) = v26;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D23E5DC4;
  *(v0 + 104) = &block_descriptor_44;
  [v24 writeDataForAssetResource:v23 toFile:v25 options:v48 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D23E4D9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = *(v1 + 296);

    v4 = sub_1D23E52D4;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 296);
    v4 = sub_1D23E4EC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D23E4EC0()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);

  (*(v5 + 8))(v4, v6);
  *(v0 + 344) = 1;
  v7 = sub_1D28716C8();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E6978608]);
  sub_1D22D6CF8(v7, v9);
  v11 = sub_1D23EDE30();
  sub_1D22D6D60(v7, v9);
  v12 = [v11 formatVersion];
  sub_1D28780A8();

  sub_1D2872308();
  v13 = [v11 data];
  v14 = sub_1D28716E8();
  v16 = v15;

  sub_1D2872458();
  v26 = *(v0 + 304);
  v17 = *(v0 + 288);
  v19 = *(v0 + 264);
  v25 = *(v0 + 256);
  v20 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 192);
  v21 = *(v0 + 160);
  sub_1D22BD238(*(v0 + 200), &qword_1EC6DADF0);
  sub_1D22D6D60(v7, v9);
  sub_1D22D6D60(v14, v16);

  (*(v20 + 32))(v21, v24, v23);
  sub_1D23E5A48((v0 + 344), v17);

  (*(v19 + 8))(v17, v25);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D23E52D4()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  swift_willThrow();

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D23E53F4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D2873CB8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_1D2878568();
  v3[11] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23E54EC, v6, v5);
}

uint64_t sub_1D23E54EC()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[14] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1D23E5610;
    v5 = v0[5];
    v6 = v0[6];

    return sub_1D23E9498(v3, v5, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D23E5610()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1D23E57E0;
  }

  else
  {
    v5 = sub_1D23E574C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E574C()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[5];

  sub_1D2870F68();
  sub_1D23EBBE8(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23E57E0()
{
  v24 = v0;
  v1 = v0[16];

  sub_1D28724F8();
  sub_1D2870F68();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[9];
    v21 = v0[8];
    v22 = v0[10];
    v7 = v0[5];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D23D7C84(v7, v8, &v23);
    *(v9 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D226E000, v3, v4, "Cannot set asset accessibility description : %s with error: %@", v9, 0x16u);
    sub_1D22BD238(v10, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v6 + 8))(v22, v21);
  }

  else
  {
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];

    (*(v15 + 8))(v14, v16);
  }

  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v17 = v0[16];
  v18 = v0[14];
  sub_1D25428EC(v17);

  v19 = v0[1];

  return v19();
}

void sub_1D23E5A48(_BYTE *a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28716B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v12 = [objc_opt_self() defaultManager];
    (*(v9 + 16))(v11, a2, v8);
    v13 = sub_1D28715B8();
    (*(v9 + 8))(v11, v8);
    v27[0] = 0;
    v14 = [v12 removeItemAtURL:v13 error:v27];

    v15 = v27[0];
    if (v14)
    {

      v16 = v15;
    }

    else
    {
      v26[0] = v27[0];
      v17 = v27[0];
      v18 = sub_1D28714B8();

      swift_willThrow();
      sub_1D2872528();
      v19 = v18;
      v20 = sub_1D2873CA8();
      v21 = sub_1D2878A18();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v18;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_1D226E000, v20, v21, "Failed to remove adjustement file: %@.", v22, 0xCu);
        sub_1D22BD238(v23, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v23, -1, -1);
        MEMORY[0x1D38A3520](v22, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1D23E5DC4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1D23E5E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1D2878568();
  v5[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23E5F14, v7, v6);
}

uint64_t sub_1D23E5F14()
{
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v1 = sub_1D2878558();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = type metadata accessor for PlaygroundImage();
  *v3 = v0;
  v3[1] = sub_1D23E6038;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v5, v1, v6, 0xD00000000000001ALL, 0x80000001D28B4F60, sub_1D23EDFB8, v2, v4);
}

uint64_t sub_1D23E6038()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D23E615C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D23D2F60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23E615C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23E61D4(uint64_t a1, void (**a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = [objc_opt_self() defaultManager];
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D23EDFC4;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1D23EE040;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23E6AAC;
  aBlock[3] = &block_descriptor_59;
  v18 = _Block_copy(aBlock);
  sub_1D2870F78();

  LODWORD(a5) = [v16 requestImageDataAndOrientationForAsset:a4 options:a5 resultHandler:v18];

  _Block_release(v18);

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  v21 = *a2;
  v20 = a2[1];
  *a2 = sub_1D23EE048;
  a2[1] = v19;
  return sub_1D22D7900(v21, v20);
}

uint64_t sub_1D23E643C(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v9 - v6);
  sub_1D22BD1D0(a1, v9 - v6, &qword_1EC6DAE08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
    return sub_1D2878508();
  }

  else
  {
    sub_1D23EEBD4(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
    return sub_1D2878518();
  }
}

uint64_t sub_1D23E65A0(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(result + 8);
    v3 = sub_1D2870F78();
    v1(v3);

    return sub_1D22D7900(v1, v2);
  }

  return result;
}

uint64_t sub_1D23E65FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v43 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v43 - v21);
  if (a2 >> 60 == 15)
  {
    if (a6)
    {
      v43[3] = sub_1D28780A8();
      v43[4] = v23;
      sub_1D28790D8();
      if (*(a6 + 16))
      {
        v24 = sub_1D25D0A38(v44);
        if (v25)
        {
          sub_1D23C3EE4(*(a6 + 56) + 32 * v24, &v45);
          sub_1D23ED134(v44);
          if (*(&v46 + 1))
          {
            sub_1D23C3FAC(&v45, &v47);
            sub_1D22BCFD0(0, &qword_1ED89CC58);
            swift_dynamicCast();
            v26 = v44[0];
            if ([v44[0] BOOLValue])
            {
              sub_1D23ED0E0();
              v27 = swift_allocError();
              v29 = 11;
LABEL_14:
              *v28 = v29;
              *v13 = v27;
              swift_storeEnumTagMultiPayload();
              a7(v13);

              v22 = v13;
              return sub_1D22BD238(v22, &qword_1EC6DAE08);
            }

LABEL_13:
            sub_1D23ED0E0();
            v27 = swift_allocError();
            v29 = 5;
            goto LABEL_14;
          }

LABEL_12:
          sub_1D22BD238(&v45, &qword_1EC6E1900);
          v26 = 0;
          goto LABEL_13;
        }
      }

      sub_1D23ED134(v44);
    }

    v45 = 0u;
    v46 = 0u;
    goto LABEL_12;
  }

  v43[1] = v11;
  v30 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(a1, a2);
  sub_1D22D6CF8(a1, a2);
  sub_1D22D6CF8(a1, a2);
  v31 = sub_1D28716D8();
  v32 = [v30 initWithData_];

  sub_1D22D6D4C(a1, a2);
  if (v32)
  {
    v43[0] = sub_1D2630BC0();
    v33 = type metadata accessor for PlaygroundImage();
    v34 = &v16[v33[9]];
    *v34 = 0u;
    *(v34 + 1) = 0u;
    *&v16[v33[10]] = xmmword_1D28809A0;
    v35 = a7;
    v36 = v33[11];
    v37 = sub_1D2873AA8();
    v38 = &v16[v36];
    a7 = v35;
    (*(*(v37 - 8) + 56))(v38, 1, 1, v37);
    *v16 = v32;
    v16[8] = 2;
    v39 = v32;
    [v39 imageOrientation];
    *(v16 + 6) = sub_1D2878C88();
    *(v16 + 2) = v43[0];
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    v16[v33[12]] = 0;
    sub_1D2871808();

    sub_1D22D6D4C(a1, a2);
    swift_storeEnumTagMultiPayload();
    sub_1D22EC9BC(v16, v19, &qword_1EC6DAE08);
  }

  else
  {
    sub_1D23EE050();
    v40 = swift_allocError();
    *v41 = 0;
    swift_willThrow();
    sub_1D22D6D4C(a1, a2);
    *v19 = v40;
    swift_storeEnumTagMultiPayload();
  }

  sub_1D22EC9BC(v19, v22, &qword_1EC6DAE08);
  a7(v22);
  sub_1D22D6D4C(a1, a2);
  return sub_1D22BD238(v22, &qword_1EC6DAE08);
}

uint64_t sub_1D23E6AAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1D2870F78();
    v10 = v8;
    v8 = sub_1D28716E8();
    v12 = v11;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D2870F78();
    v12 = 0xF000000000000000;
    if (a3)
    {
LABEL_3:
      v13 = sub_1D28780A8();
      a3 = v14;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_1D2877E98();
  }

LABEL_5:
  v9(v8, v12, v13, a3, a4, a5);

  sub_1D22D6D4C(v8, v12);
}

void sub_1D23E6BC4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  [v2 cancelImageRequest_];
}

uint64_t sub_1D23E6C34(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v113 = a1;
  v114[3] = *MEMORY[0x1E69E9840];
  v7 = sub_1D2871818();
  v112 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2871078();
  v111 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v87 - v14);
  v16 = sub_1D28716B8();
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v24);
  if (a2)
  {
    *v15 = a2;
    swift_storeEnumTagMultiPayload();
    v33 = a2;
    a3(v15);
    v34 = v15;
    return sub_1D22BD238(v34, &qword_1EC6DAE30);
  }

  v99 = v12;
  v100 = v10;
  v107 = a4;
  v108 = v15;
  v101 = v9;
  v102 = v7;
  v109 = v13;
  v110 = a3;
  v106 = v31;
  if (!v113 || !v113[2] || (v35 = v25, v36 = *MEMORY[0x1E6978B98], v37 = v30, v95 = &v87 - v29, v104 = v26, v105 = v32, v91 = v27, v103 = v28, v38 = sub_1D25DB1C0(v36), v39 = v104, v40 = v105, (v41 & 1) == 0))
  {
    sub_1D23ED0E0();
    v55 = swift_allocError();
    *v56 = 10;
    v57 = v108;
    *v108 = v55;
    swift_storeEnumTagMultiPayload();
    v110(v57);
    v34 = v57;
    return sub_1D22BD238(v34, &qword_1EC6DAE30);
  }

  v42 = v95;
  v43 = v113[7] + v37[9] * v38;
  v44 = v37[2];
  v98 = v35;
  v89 = v37 + 2;
  v88 = v44;
  v44(v23, v43, v35);
  v45 = v37[4];
  v45(v42, v23, v35);
  v46 = sub_1D2871548();
  v48 = v47;
  v90 = objc_opt_self();
  v49 = [v90 defaultManager];
  v50 = [v49 temporaryDirectory];

  sub_1D2871638();
  sub_1D28715F8();

  v51 = v37[1];
  v51(v39, v35);
  v52 = v103;
  v92 = v46;
  v96 = v48;
  sub_1D2871608();
  v113 = v37 + 1;
  v97 = v51;
  v51(v40, v35);
  v53 = v106;
  v94 = v37 + 4;
  v93 = v45;
  v45(v106, v52, v35);
  v54 = sub_1D2871618();
  v59 = v90;
  if (v54)
  {
    v60 = 1;
    do
    {
      v114[0] = v60;
      v61 = sub_1D28795C8();
      v114[0] = 0x756F726779616C50;
      v114[1] = 0xEF6567616D49646ELL;
      MEMORY[0x1D38A0C50](v61);

      v62 = v59;
      v63 = [v59 defaultManager];
      v64 = [v63 temporaryDirectory];

      v65 = v106;
      v66 = v104;
      sub_1D2871638();

      v67 = v105;
      sub_1D28715F8();

      v69 = v97;
      v68 = v98;
      v97(v66, v98);
      v70 = v103;
      sub_1D2871608();
      v71 = v67;
      v53 = v65;
      v69(v71, v68);
      v69(v65, v68);
      v93(v65, v70, v68);
      if (__OFADD__(v60, 1))
      {
        __break(1u);
      }

      ++v60;
      v59 = v62;
    }

    while ((sub_1D2871618() & 1) != 0);
  }

  v72 = [v59 defaultManager];
  v73 = v95;
  v74 = sub_1D28715B8();
  v75 = sub_1D28715B8();
  v114[0] = 0;
  v76 = [v72 copyItemAtURL:v74 toURL:v75 error:v114];

  v77 = v114[0];
  v78 = v108;
  if (v76)
  {
    v79 = v98;
    v88(v108, v53, v98);
    swift_storeEnumTagMultiPayload();
    v80 = v77;
    v110(v78);
    sub_1D22BD238(v78, &qword_1EC6DAE30);
    v81 = v97;
    v97(v53, v79);
    return v81(v73, v79);
  }

  else
  {
    v82 = v114[0];
    v83 = sub_1D28714B8();

    swift_willThrow();
    *v78 = v83;
    swift_storeEnumTagMultiPayload();
    v84 = v83;
    v110(v78);

    sub_1D22BD238(v78, &qword_1EC6DAE30);
    v86 = v97;
    v85 = v98;
    v97(v53, v98);
    return v86(v73, v85);
  }
}

uint64_t sub_1D23E77CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  *(v7 + 128) = a5;
  *(v7 + 56) = a4;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  *(v7 + 64) = sub_1D2878568();
  *(v7 + 72) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D23E7878, v9, v8);
}

uint64_t sub_1D23E7878()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v12 = *(v0 + 24);
  v5 = sub_1D2878558();
  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v12;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v8 = type metadata accessor for PlaygroundImage();
  *v7 = v0;
  v7[1] = sub_1D23E79B4;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v5, v10, 0xD00000000000002CLL, 0x80000001D28B4EE0, sub_1D23ED020, v6, v8);
}

uint64_t sub_1D23E79B4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D23E7B3C;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D23E7AD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23E7AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23E7B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D23E7BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v23 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = [objc_opt_self() defaultManager];
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  *(v20 + v19 + v15) = a5;
  aBlock[4] = sub_1D23ED034;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23E80E0;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);

  LODWORD(v19) = [v18 requestImageForAsset:a3 targetSize:0 contentMode:v23 options:v21 resultHandler:{a6, a7}];
  _Block_release(v21);

  *a2 = v19;
  *(a2 + 4) = 0;
}

void sub_1D23E7DD8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - v12;
  if (a1)
  {
    v14 = &v13[v11[9]];
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *&v13[v11[10]] = xmmword_1D28809A0;
    v15 = v11[11];
    v16 = v11;
    v17 = sub_1D2873AA8();
    (*(*(v17 - 8) + 56))(&v13[v15], 1, 1, v17);
    *v13 = a1;
    v13[8] = 2;
    [a1 imageOrientation];
    *(v13 + 6) = sub_1D2878C88();
    *(v13 + 2) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    v13[v16[12]] = a4 & 1;
    sub_1D2871808();
    sub_1D239A330(v13, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
    sub_1D2878518();
    sub_1D23D4DFC(v13);
    return;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v25[1] = sub_1D28780A8();
  v25[2] = v18;
  sub_1D28790D8();
  if (!*(a2 + 16) || (v19 = sub_1D25D0A38(v26), (v20 & 1) == 0))
  {
    sub_1D23ED134(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_1D23C3EE4(*(a2 + 56) + 32 * v19, &v27);
  sub_1D23ED134(v26);
  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_1D22BD238(&v27, &qword_1EC6E1900);
    v21 = 0;
    goto LABEL_12;
  }

  sub_1D23C3FAC(&v27, &v29);
  sub_1D22BCFD0(0, &qword_1ED89CC58);
  swift_dynamicCast();
  v21 = v26[0];
  if (([v26[0] BOOLValue] & 1) == 0)
  {
LABEL_12:
    sub_1D23ED0E0();
    v22 = swift_allocError();
    v24 = 6;
    goto LABEL_13;
  }

  sub_1D23ED0E0();
  v22 = swift_allocError();
  v24 = 11;
LABEL_13:
  *v23 = v24;
  v26[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  sub_1D2878508();
}

uint64_t sub_1D23E80E0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1D2877E98();
  }

  else
  {
    v5 = 0;
  }

  sub_1D2870F78();
  v6 = a2;
  v4(a2, v5);
}

void sub_1D23E818C(unsigned int *a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = [objc_opt_self() defaultManager];
    [v3 cancelImageRequest_];
  }
}

uint64_t GenerativePlaygroundPhotoLibrary.deleteAssets(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1D2878568();
  v2[7] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D23E82A0, v4, v3);
}

uint64_t sub_1D23E82A0()
{
  v17 = v0;
  v1 = v0[5];
  v16 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_22:
    v3 = sub_1D2879368();
    v4 = v0[5];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v15 = v8;
  v0[10] = v8;
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x1D38A1C30](v5, v0[5]);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(v7 + 8 * v5);
      sub_1D2870F78();
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    swift_beginAccess();
    v1 = *(v9 + 80);
    v11 = v1;

    ++v5;
    if (v1)
    {
      MEMORY[0x1D38A0E30](v12);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      v1 = &v16;
      sub_1D2878488();
      v8 = v16;
      v5 = v10;
      goto LABEL_4;
    }
  }

  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1D23E848C;

  return sub_1D23E867C(v15);
}

uint64_t sub_1D23E848C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D23E860C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D23E85A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23E85A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23E860C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23E867C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  sub_1D2878568();
  v2[28] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D23E8714, v4, v3);
}

uint64_t sub_1D23E8714()
{
  v2 = v0[26];
  v1 = v0[27];
  sub_1D23E0060();
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary);
  v0[31] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[22] = sub_1D23EFB98;
  v0[23] = v4;
  v5 = MEMORY[0x1E69E9820];
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D23DFBA8;
  v0[21] = &block_descriptor_136;
  v6 = _Block_copy(v0 + 18);
  v0[32] = v6;
  sub_1D2870F68();

  v0[2] = v0;
  v0[3] = sub_1D23E88CC;
  v7 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
  v0[18] = v5;
  v0[19] = 1107296256;
  v0[20] = sub_1D23DFFA8;
  v0[21] = &block_descriptor_139;
  v0[22] = v7;
  [v3 performChanges:v6 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D23E88CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1D23E8D5C;
  }

  else
  {
    v5 = sub_1D23E89FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E89FC()
{
  v1 = *(v0 + 248);
  _Block_release(*(v0 + 256));
  v2 = [objc_allocWithZone(MEMORY[0x1E69786A0]) init];
  *(v0 + 272) = v2;
  [v2 setExpungeSource_];
  v3 = objc_opt_self();
  sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v4 = sub_1D28783C8();
  *(v0 + 280) = v4;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 296;
  *(v0 + 88) = sub_1D23E8BAC;
  v5 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE68);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1D23E8EE4;
  *(v0 + 168) = &block_descriptor_142;
  *(v0 + 176) = v5;
  [v3 performBatchExpungeWithAssets:v4 deleteOptions:v2 photoLibrary:v1 completionHandler:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1D23E8BAC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1D23E8DD8;
  }

  else
  {
    v5 = sub_1D23E8CDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E8CDC()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D23E8D5C()
{
  v1 = *(v0 + 256);

  swift_willThrow();
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23E8DD8()
{
  v1 = v0[35];
  v2 = v0[34];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_1D23E8E5C()
{
  v0 = objc_opt_self();
  sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v1 = sub_1D28783C8();
  [v0 deleteAssets_];
}

uint64_t sub_1D23E8EE4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D23E8FB0(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  sub_1D2878568();
  *(v3 + 160) = sub_1D2878558();
  v5 = sub_1D28784F8();
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D23E904C, v5, v4);
}

uint64_t sub_1D23E904C()
{
  v1 = *(v0 + 200);
  v3 = v0[18];
  v2 = v0[19];
  sub_1D23E0060();
  v4 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v0[14] = sub_1D23EEC38;
  v0[15] = v5;
  v6 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFBA8;
  v0[13] = &block_descriptor_68;
  v7 = _Block_copy(v0 + 10);
  v0[23] = v7;
  v8 = v3;

  v0[2] = v0;
  v0[3] = sub_1D23E9204;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
  v0[10] = v6;
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFFA8;
  v0[13] = &block_descriptor_71;
  v0[14] = v9;
  [v4 performChanges:v7 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D23E9204()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1D23E93A4;
  }

  else
  {
    v5 = sub_1D23E9334;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E9334()
{
  v1 = *(v0 + 184);

  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23E93A4()
{
  v1 = *(v0 + 184);

  swift_willThrow();
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D23E9420(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() changeRequestForAsset_];
  [v3 setFavorite_];
}

uint64_t sub_1D23E9498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  sub_1D2878568();
  v4[22] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23E9534, v6, v5);
}

uint64_t sub_1D23E9534()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  sub_1D23E0060();
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v0[14] = sub_1D23EEC9C;
  v0[15] = v6;
  v7 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFBA8;
  v0[13] = &block_descriptor_89;
  v8 = _Block_copy(v0 + 10);
  v0[25] = v8;
  v9 = v4;
  sub_1D2870F68();

  v0[2] = v0;
  v0[3] = sub_1D23E96F4;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
  v0[10] = v7;
  v0[11] = 1107296256;
  v0[12] = sub_1D23DFFA8;
  v0[13] = &block_descriptor_92;
  v0[14] = v10;
  [v5 performChanges:v8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D23E96F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1D23E9894;
  }

  else
  {
    v5 = sub_1D23E9824;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23E9824()
{
  v1 = *(v0 + 200);

  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23E9894()
{
  v1 = *(v0 + 200);

  swift_willThrow();
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D23E9910(uint64_t a1)
{
  v1 = [objc_opt_self() changeRequestForAsset_];
  v2 = sub_1D2878068();
  [v1 setAssetDescription_];
}

id sub_1D23E99AC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D287F550;
  *(v2 + 32) = sub_1D28780A8();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_1D28780A8();
  *(v2 + 56) = v4;
  v5 = sub_1D28783C8();

  [v1 setFetchPropertySets_];

  return v1;
}

uint64_t sub_1D23E9A84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = [a1 localIdentifier];
  v9 = sub_1D28780A8();
  v11 = v10;

  swift_beginAccess();
  if (*(*(a4 + 16) + 16))
  {
    sub_1D25D0410(v9, v11);
    v13 = v12;

    if (v13)
    {
      return swift_endAccess();
    }
  }

  else
  {
  }

  swift_endAccess();
  v14 = [a1 localIdentifier];
  v15 = sub_1D28780A8();
  v17 = v16;

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_placeholderAssets;
  swift_beginAccess();
  v19 = *&a5[v18];
  if (*(v19 + 16))
  {
    v20 = sub_1D25D0410(v15, v17);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      sub_1D2870F78();
      v24 = [a1 localIdentifier];
      v25 = sub_1D28780A8();
      v27 = v26;

      swift_beginAccess();
      sub_1D2870F78();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1D24E8BE8(v23, v25, v27, isUniquelyReferenced_nonNull_native);

      *(a4 + 16) = v58;
      swift_endAccess();
      v29 = [a1 localIdentifier];
      v30 = sub_1D28780A8();
      v32 = v31;

      swift_beginAccess();
      sub_1D25D2BA0(v30, v32);
      swift_endAccess();
    }
  }

  else
  {
  }

  swift_endAccess();
  v34 = [a1 localIdentifier];
  v35 = sub_1D28780A8();
  v37 = v36;

  v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assetMap;
  swift_beginAccess();
  v39 = *&a5[v38];
  if (*(v39 + 16))
  {
    v40 = sub_1D25D0410(v35, v37);
    v42 = v41;

    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v40);
      swift_endAccess();
      sub_1D2870F78();
      v44 = [a1 localIdentifier];
      v45 = sub_1D28780A8();
      v47 = v46;

      swift_beginAccess();
      sub_1D2870F78();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1D24E8BE8(v43, v45, v47, v48);

      *(a4 + 16) = v59;
      swift_endAccess();
    }
  }

  else
  {
  }

  swift_endAccess();
  v49 = [a1 localIdentifier];
  v50 = sub_1D28780A8();
  v52 = v51;

  v53 = *&a5[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoAssetCache];
  v54 = a5;
  sub_1D2870F78();
  v55 = a1;
  v56 = sub_1D23EEDC8(v54, v53, v55);

  swift_beginAccess();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1D24E8BE8(v56, v50, v52, v57);

  *(a4 + 16) = v60;
  return swift_endAccess();
}

void sub_1D23E9EDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v4 = a2;
  v3();
}

id GenerativePlaygroundPhotoLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativePlaygroundPhotoLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D23EA11C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BC8FC;

  return sub_1D23E867C(a1);
}

Swift::Void __swiftcall GenerativePlaygroundPhotoLibrary.photoLibraryDidChange(_:)(PHChange a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D2878568();
  v7 = v1;
  v8 = a1.super.isa;
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;
  sub_1D22AE01C(0, 0, v5, &unk_1D2885500, v10);
}

uint64_t sub_1D23EA2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_1D2878568();
  v5[13] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23EA384, v7, v6);
}

uint64_t sub_1D23EA384()
{
  v49 = v0;
  v1 = *(v0 + 88);

  result = swift_allocObject();
  v3 = result;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets);
  if (v4 >> 62)
  {
LABEL_33:
    result = sub_1D2879368();
    v5 = result;
    v44 = v3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_34:
    v31 = MEMORY[0x1E69E7CC8];
    v32 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v32)
    {
      goto LABEL_26;
    }

LABEL_35:
    v35 = objc_opt_self();
    v36 = sub_1D28783C8();

    v37 = sub_1D23E99AC();
    v38 = [v35 fetchAssetsWithLocalIdentifiers:v36 options:v37];

    *(v0 + 48) = sub_1D23EEDB8;
    *(v0 + 56) = v44;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D23E9EDC;
    *(v0 + 40) = &block_descriptor_106;
    v39 = _Block_copy((v0 + 16));
    sub_1D2870F78();

    [v38 enumerateObjectsUsingBlock_];
    _Block_release(v39);
    sub_1D23E02F0();

    v40 = *(v0 + 8);

    return v40();
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = result;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v46 = v4 & 0xC000000000000001;
  sub_1D2870F68();
  v6 = 0;
  v41 = v4;
  v42 = v0;
  v43 = v5;
  do
  {
    if (v46)
    {
      v8 = MEMORY[0x1D38A1C30](v6, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v6 + 32);
      sub_1D2870F78();
    }

    v7 = MEMORY[0x1D38A2A00]();
    swift_beginAccess();
    v9 = *(v8 + 80);
    if (v9)
    {
      v47 = v7;
      sub_1D22BCFD0(0, &qword_1EC6D74E0);
      v10 = v9;
      v11 = sub_1D2878DC8();
      if (!v11)
      {

LABEL_6:
        v7 = v47;
        goto LABEL_7;
      }

      v12 = v11;
      v13 = [v10 localIdentifier];
      v4 = sub_1D28780A8();
      v15 = v14;

      sub_1D2870F78();
      v45 = v12;
      v16 = [v12 assetContentChanged];
      v17 = *(v3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v17;
      *(v3 + 16) = 0x8000000000000000;
      v0 = sub_1D25D0410(v4, v15);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v3 = v19;
      if (v17[3] < v22)
      {
        sub_1D24E2B10(v22, isUniquelyReferenced_nonNull_native);
        v17 = v48;
        v23 = sub_1D25D0410(v4, v15);
        if ((v3 & 1) != (v24 & 1))
        {
          goto LABEL_28;
        }

        v0 = v23;
        v5 = v43;
        if ((v3 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v25 = v17[7] + 16 * v0;
        *v25 = v8;
        *(v25 + 8) = v16;

LABEL_24:
        v3 = v44;
        *(v44 + 16) = v17;

        v4 = v41;
        v0 = v42;
        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v43;
        if (v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D24ED898();
        v17 = v48;
        v5 = v43;
        if (v3)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v17[(v0 >> 6) + 8] |= 1 << v0;
      v26 = (v17[6] + 16 * v0);
      *v26 = v4;
      v26[1] = v15;
      v27 = v17[7] + 16 * v0;
      *v27 = v8;
      *(v27 + 8) = v16;
      v28 = v17[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_32;
      }

      v17[2] = v30;
      goto LABEL_24;
    }

LABEL_7:
    ++v6;
    objc_autoreleasePoolPop(v7);
  }

  while (v5 != v6);

  v31 = *(v3 + 16);
  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_26:
  v33 = sub_1D27CE804(v32, 0);
  v34 = sub_1D260D2FC(&v48, v33 + 4, v32, v31);
  sub_1D2870F68();
  sub_1D23EEDB0();
  if (v34 == v32)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_28:

  return sub_1D28796E8();
}

uint64_t sub_1D23EA8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 localIdentifier];
  v7 = sub_1D28780A8();
  v9 = v8;

  swift_beginAccess();
  v10 = *(a4 + 16);
  if (*(v10 + 16))
  {
    v11 = sub_1D25D0410(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(v10 + 56) + 16 * v11;
      v15 = *v14;
      v16 = *(v14 + 8);
      swift_endAccess();
      *(v15 + 88) = 0;
      swift_beginAccess();
      v17 = *(v15 + 80);
      *(v15 + 80) = a1;
      sub_1D2870F78();
      v18 = a1;

      sub_1D23EBDC8(v16);
    }
  }

  else
  {
  }

  return swift_endAccess();
}

uint64_t sub_1D23EAB04()
{
  type metadata accessor for GetRecipeActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC6DAD38 = v0;
  return result;
}

uint64_t sub_1D23EAB44()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D23EAB80()
{
  if (qword_1EC6D8C28 != -1)
  {
    swift_once();
  }

  return sub_1D2870F78();
}

uint64_t sub_1D23EABDC(uint64_t a1, uint64_t a2)
{
  RecipeActor = type metadata accessor for GetRecipeActor();

  return MEMORY[0x1EEE6DBF0](RecipeActor, a2);
}

uint64_t sub_1D23EAC18(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  (*(v5 + 16))(v13 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D23EFBF0;
  *(v11 + 24) = v10;
  v13[0] = sub_1D23EFC6C;
  v13[1] = v11;
  a2(v13);
}

uint64_t sub_1D23EAD94()
{
  v1 = v0;
  v2 = sub_1D2877B48();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2877B68();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878B58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE98);
  v12 = swift_allocObject();
  v12[2] = sub_1D25D9020(MEMORY[0x1E69E7CC0]);
  v12[3] = 0;
  v12[6] = 0;
  v12[7] = 0;
  v12[4] = 0;
  v12[5] = 200;
  *(v1 + 16) = v12;
  sub_1D22BCFD0(0, &unk_1ED89CD20);
  sub_1D2878B18();
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v13 = sub_1D2878AB8();
  v14 = sub_1D2878B68();

  (*(v9 + 8))(v11, v8);
  *(v1 + 24) = v14;
  swift_getObjectType();
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D23EFED8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_188;
  v16 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D27A17E4();
  sub_1D27A17E8();
  sub_1D2878B78();
  _Block_release(v16);
  (*(v20 + 8))(v4, v21);
  (*(v5 + 8))(v7, v19);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D2878B98();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D23EB140()
{
  v0 = sub_1D2878B58();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getObjectType();
    sub_1D2878C98();
    sub_1D2878B28();
    sub_1D23EFEE0(&qword_1EC6D7528, MEMORY[0x1E69E80E0]);
    sub_1D2878368();
    sub_1D2878368();
    v9 = *(v1 + 8);
    v9(v4, v0);
    v9(v6, v0);
    if (v14 == v13)
    {
      v10 = *(v8 + 16);
      sub_1D2870F78();

      v11 = 200;
    }

    else
    {
      swift_getObjectType();
      sub_1D2878C98();
      sub_1D2878B38();
      sub_1D2878368();
      sub_1D2878368();
      v9(v4, v0);
      v9(v6, v0);
      if (v14 == v13)
      {
        v10 = *(v8 + 16);
        sub_1D2870F78();

        v11 = 100;
      }

      else
      {
        swift_getObjectType();
        sub_1D2878C98();
        sub_1D2878B48();
        sub_1D2878368();
        sub_1D2878368();
        v9(v4, v0);
        v9(v6, v0);
        if (v14 != v13)
        {
        }

        v10 = *(v8 + 16);
        sub_1D2870F78();

        v11 = 50;
      }
    }

    *(v10 + 40) = v11;
  }

  return result;
}

uint64_t sub_1D23EB444(char *a1)
{
  v2 = v1;
  v4 = sub_1D2871798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D23EFEE0(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v14[-2] = sub_1D22BCFD0(0, &qword_1EC6D74E0);
    v14[-1] = &protocol witness table for PHAsset;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
    sub_1D28719D8();
  }

  return v10(a1, v4);
}

uint64_t sub_1D23EB728(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  v5 = sub_1D2871798();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D23EB7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6DE5A0);
  return sub_1D263E210(v4);
}

uint64_t sub_1D23EB8A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  v6 = *(*v1 + 200);
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0);
  v7 = sub_1D23EE0A4(v5, a1);
  v8 = sub_1D22BD238(v5, &unk_1EC6DE5A0);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11[-2] = sub_1D22BCFD0(0, &qword_1EC6D74E0);
    v11[-1] = &protocol witness table for PHAsset;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D23EFB0C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D23EBAF0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 200);
  swift_beginAccess();
  sub_1D23EFB0C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D23EBB68@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D2642160();
  a1[1] = v2;

  return sub_1D2870F68();
}

uint64_t sub_1D23EBBA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D263E5A0(v1, v2);
}

uint64_t sub_1D23EBBE8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = (v2 + *(*v2 + 216));
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      a1 = sub_1D2879618();
      if (a1)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    MEMORY[0x1EEE9AC00](a1);
    sub_1D22BCFD0(0, &qword_1EC6D74E0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = v4;
  v5[1] = a2;
}

void sub_1D23EBDC8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1D2873CB8();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  v16 = sub_1D2871798();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  swift_beginAccess();
  v23 = *(v2 + 80);
  if (v23)
  {
    v46 = v6;
    v24 = v23;
    if (a1)
    {
      sub_1D23EC468(0);
      sub_1D23EC468(1);
    }

    *(v2 + *(*v2 + 168)) = [v24 pixelWidth];
    *(v2 + *(*v2 + 176)) = [v24 pixelHeight];
    v25 = [v24 creationDate];
    if (v25)
    {
      v26 = v25;
      sub_1D2871768();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    (*(v17 + 56))(v13, v27, 1, v16);
    sub_1D22EC9BC(v13, v15, &unk_1EC6DAE40);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1D22BD238(v15, &unk_1EC6DAE40);
      sub_1D28724F8();
      v28 = v24;
      v29 = sub_1D2873CA8();
      v30 = sub_1D2878A18();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v31 = 136315138;
        v32 = [v28 localIdentifier];
        v33 = sub_1D28780A8();
        v35 = v34;

        v36 = sub_1D23D7C84(v33, v35, &v49);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1D226E000, v29, v30, "Asset %s has no creation date, fallback on .now", v31, 0xCu);
        v37 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1D38A3520](v37, -1, -1);
        MEMORY[0x1D38A3520](v31, -1, -1);
      }

      else
      {
      }

      (*(v47 + 8))(v9, v48);
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
      (*(v17 + 16))(v20, v22, v16);
      sub_1D23EB444(v20);
      (*(v17 + 8))(v22, v16);
    }

    v38 = [v24 isFavorite];
    v39 = v38;
    v40 = *(*v2 + 208);
    if (v38 == *(v2 + v40))
    {
      *(v2 + v40) = v38;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v38);
      *(&v44 - 2) = sub_1D22BCFD0(0, &qword_1EC6D74E0);
      *(&v44 - 1) = &protocol witness table for PHAsset;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v44 - 2) = v2;
      *(&v44 - 8) = v39;
      v49 = v2;
      sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
      sub_1D28719D8();
    }

    v42 = type metadata accessor for PlaygroundImage();
    v43 = v46;
    (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
    sub_1D23EB8A0(v43);

    *(v2 + 88) = 1;
  }
}

uint64_t sub_1D23EC468(char a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8;
  v10 = sub_1D2871818();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v34[0] = *(*v1 + 160);
  v34[1] = v15;
  v14(v12, v1 + v34[0]);
  v16 = type metadata accessor for PlaygroundImage();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_1D270BBA0(v9, v12, a1 & 1);
  v17 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v39 = v17;
  v40 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v42[0] = v1;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v42[0] = v1;
  v37 = v17;
  v38 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  sub_1D2871A08();

  v18 = *(*v1 + 192);
  swift_beginAccess();
  v19 = sub_1D25D0C1C(a1 & 1);
  if (v20)
  {
    v21 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v1 + v18);
    v41 = *(v2 + v18);
    *(v2 + v18) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24ED4A4();
      v23 = v41;
    }

    sub_1D25D47C4(v21, v23);
    *(v2 + v18) = v23;
  }

  v24 = swift_endAccess();
  v42[0] = v2;
  MEMORY[0x1EEE9AC00](v24);
  v34[-2] = v17;
  v34[-1] = &protocol witness table for PHAsset;
  swift_getKeyPath();
  sub_1D28719F8();

  sub_1D28724F8();
  sub_1D2870F78();
  v25 = sub_1D2873CA8();
  v26 = sub_1D2878A08();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42[0] = v28;
    *v27 = 136315138;
    sub_1D23EFEE0(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v29 = sub_1D28795C8();
    v31 = v30;

    v32 = sub_1D23D7C84(v29, v31, v42);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1D226E000, v25, v26, "Did unload asset with id: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1D38A3520](v28, -1, -1);
    MEMORY[0x1D38A3520](v27, -1, -1);
  }

  else
  {
  }

  return (*(v35 + 8))(v6, v36);
}

void (*sub_1D23EC978(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38A1C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D23EC9F8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D23ECA00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38A1C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_1D2870F78();
LABEL_5:
    *v3 = v4;
    return sub_1D23EFF88;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t (*sub_1D23ECAA8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38A1C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_1D2870F78();
LABEL_5:
    *v3 = v4;
    return sub_1D23ECB28;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D23ECB30(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38A1C30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D23EFF8C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D23ECBB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  sub_1D2870F68();

  return sub_1D2870F78();
}

uint64_t sub_1D23ECBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakPhotoLibraryUpdatingDelegate();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 24) = a4;
  swift_unknownObjectWeakAssign();
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates;
  v9 = swift_beginAccess();
  MEMORY[0x1D38A0E30](v9);
  if (*((*(a2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
  sub_1D23E0060();
  v10 = *(a4 + 8);
  v11 = sub_1D2870F68();
  v10(v11, a3, a4);
}

uint64_t sub_1D23ECD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D23EA2EC(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for GenerativePlaygroundPhotoLibrary()
{
  result = qword_1ED8A6B10;
  if (!qword_1ED8A6B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D23ECE54()
{
  result = sub_1D2872328();
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

unint64_t sub_1D23ECF84()
{
  result = qword_1EC6DADC0;
  if (!qword_1EC6DADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DADC0);
  }

  return result;
}

void sub_1D23ED034(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  sub_1D23E7DD8(a1, a2, v6, v7);
}

unint64_t sub_1D23ED0E0()
{
  result = qword_1EC6DADE0;
  if (!qword_1EC6DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DADE0);
  }

  return result;
}

uint64_t sub_1D23ED188(uint64_t *a1)
{
  v1 = *a1;
  if (a1[2])
  {
    sub_1D23ED0E0();
    swift_allocError();
    *v2 = v1;
    v2[1] = BYTE1(v1) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
    return sub_1D2878508();
  }

  else
  {
    sub_1D2870F68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
    return sub_1D2878518();
  }
}

id sub_1D23ED238(void *a1)
{
  v2 = v1;
  v22 = a1;
  ObjectType = swift_getObjectType();
  v21 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v21);
  v20 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_formatIdentifier];
  *v9 = 0xD00000000000001ELL;
  v9[1] = 0x80000001D28B5080;
  sub_1D28722F8();
  v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibraryStatus] = 0;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets;
  v11 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assets] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_placeholderAssets;
  *&v2[v12] = sub_1D25D8F1C(v11);
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_assetMap;
  *&v2[v13] = sub_1D25D8F1C(v11);
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_updatingDelegates] = v11;
  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_writeQueue;
  v18[1] = sub_1D22BCFD0(0, &qword_1ED89CD50);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8098], v5);
  sub_1D2877B58();
  v25 = v11;
  sub_1D23EFEE0(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  *&v2[v19] = sub_1D2878AD8();
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoAssetCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE90);
  swift_allocObject();
  *&v2[v14] = sub_1D23EAD94();
  v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets] = 1;
  v15 = v22;
  *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_photoLibrary] = v22;
  *&v2[v10] = v11;
  v16 = v15;

  v24.receiver = v2;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

id sub_1D23ED5DC(uint64_t a1, uint64_t a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_1D2878068();
  v10 = [v8 defaultApplicationLibraryIdentifierWithContainerIdentifier_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69789E8]) init];
  [v11 setAllowsUpgrade_];
  v24[0] = 0;
  v12 = [a3 openPhotoLibraryWithIdentifier:v10 options:v11 error:v24];
  if (v12)
  {
    v13 = v12;
    v14 = v24[0];
    sub_1D2872528();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A08();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = v4;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "GP Photo Library already exists", v17, 2u);
      v4 = v23;
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = objc_allocWithZone(type metadata accessor for GenerativePlaygroundPhotoLibrary());
    v20 = sub_1D23ED238(v13);
  }

  else
  {
    v20 = v24[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v20;
}

id sub_1D23ED874(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2878068();
  v3 = [objc_opt_self() creationOptionsForDefaultApplicationLibraryWithContainerIdentifier_];

  v4 = sub_1D2878068();
  aBlock[0] = 0;
  v5 = [a1 createPhotoLibraryWithName:v4 options:v3 error:aBlock];

  v6 = aBlock[0];
  if (v5)
  {
    aBlock[4] = sub_1D23DFB38;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_182;
    v7 = _Block_copy(aBlock);
    v8 = v6;
    [v5 performChanges:v7 completionHandler:0];
    _Block_release(v7);
    v9 = objc_allocWithZone(type metadata accessor for GenerativePlaygroundPhotoLibrary());
    v6 = sub_1D23ED238(v5);
  }

  else
  {
    v10 = aBlock[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v6;
}

void sub_1D23EDA60(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = sub_1D2878068();
  v6 = [v4 defaultApplicationLibraryIdentifierWithContainerIdentifier_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69789C8]) init];
  v10[0] = 0;
  if ([a3 deletePhotoLibraryWithIdentifier:v6 options:v7 error:v10])
  {
    v8 = v10[0];
  }

  else
  {
    v9 = v10[0];
    sub_1D28714B8();

    swift_willThrow();
  }
}

uint64_t sub_1D23EDB8C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;
  sub_1D2870F68();
  sub_1D2870F78();
  v12 = 0;
  v39 = a5;
  v40 = v7;
  v38 = v11;
  while (v10)
  {
    v47 = a4;
    v14 = v12;
LABEL_14:
    v16 = __clz(__rbit64(v10)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;
    sub_1D2870F68();
    sub_1D2870F78();
    a2(&v43, v46);

    v21 = v43;
    v20 = v44;
    v22 = v45;
    v23 = *a5;
    v25 = sub_1D25D0410(v43, v44);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v47 & 1) == 0)
      {
        sub_1D24ECCAC();
      }
    }

    else
    {
      sub_1D24E1370(v28, v47 & 1);
      v30 = sub_1D25D0410(v21, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v10 &= v10 - 1;
    v32 = *a5;
    if (v29)
    {
      v13 = *(v32[7] + 8 * v25);
      sub_1D2870F78();

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v21;
      v33[1] = v20;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v12 = v14;
    a5 = v39;
    v7 = v40;
    v11 = v38;
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      sub_1D23EEDB0();
    }

    v10 = *(v7 + 8 * v14);
    ++v15;
    if (v10)
    {
      v47 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D28796E8();
  __break(1u);
  return result;
}

id sub_1D23EDE30()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D28716D8();
  v6[0] = 0;
  v2 = [v0 initWithDataUsingAssetResourceEncoding:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1D23EDEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D23E5E70(a1, v4, v5, v7, v6);
}

uint64_t sub_1D23EDFC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);

  return sub_1D23E643C(a1);
}

unint64_t sub_1D23EE050()
{
  result = qword_1EC6DAE10;
  if (!qword_1EC6DAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DAE10);
  }

  return result;
}

uint64_t sub_1D23EE0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v20 - v13, &unk_1EC6DE5A0);
  sub_1D22BD1D0(a2, &v14[v15], &unk_1EC6DE5A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &unk_1EC6DE5A0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D23EEBD4(&v14[v15], v7);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D23D4DFC(v7);
      sub_1D23D4DFC(v10);
      sub_1D22BD238(v14, &unk_1EC6DE5A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D23D4DFC(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6D9AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &unk_1EC6DE5A0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D23EE348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_1D2871798();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2878AA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - v19;
  v55 = sub_1D2871818();
  v21 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[3] = type metadata accessor for GenerativePlaygroundPhotoLibrary();
  v58[4] = &off_1EEC2A978;
  v58[0] = a1;
  v23 = *a3;
  if (*(a3 + 8) <= 1u)
  {
    if (*(a3 + 8))
    {
      [*a3 extent];
      v29 = v28;
      v31 = v30;
      goto LABEL_10;
    }

    Width = CGImageGetWidth(*a3);
    Height = CGImageGetHeight(v23);
    goto LABEL_8;
  }

  if (*(a3 + 8) != 2)
  {
    Width = CVPixelBufferGetWidth(*a3);
    Height = CVPixelBufferGetHeight(v23);
LABEL_8:
    v26 = CGRectMake(Width, Height);
    goto LABEL_9;
  }

  [*a3 size];
LABEL_9:
  v29 = v26;
  v31 = v27;
LABEL_10:
  sub_1D22D7044(v58, v57);
  sub_1D22BD1D0(v54, v20, &qword_1EC6D8F70);
  v32 = *(v21 + 48);
  v33 = v55;
  v34 = v32(v20, 1, v55);
  v46 = v21;
  if (v34 == 1)
  {
    sub_1D2871808();
    result = v32(v20, 1, v33);
    if (result != 1)
    {
      result = sub_1D22BD238(v20, &qword_1EC6D8F70);
    }
  }

  else
  {
    result = (*(v21 + 32))(v53, v20, v33);
  }

  if (v29 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v31 < 9.22337204e18)
  {
    v43 = v29;
    v44 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
    v36 = swift_allocObject();
    v36[4] = vdupq_n_s64(0x4080000000000000uLL);
    v36[5].i64[0] = 0;
    v36[5].i8[8] = 0;
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v36[6].i64[0] = 0;
    v36[6].i64[1] = 0;
    (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v14);
    sub_1D2870F78();
    sub_1D2877B58();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D23EFEE0(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
    sub_1D2879088();
    v36[7].i64[0] = sub_1D2878AD8();
    v37 = v49;
    sub_1D2871778();
    (*(v50 + 32))(&v36->i8[*(v36->i64[0] + 184)], v37, v51);
    *(v36->i64 + *(v36->i64[0] + 192)) = sub_1D25D9214(MEMORY[0x1E69E7CC0]);
    v38 = *(v36->i64[0] + 200);
    v39 = type metadata accessor for PlaygroundImage();
    v40 = *(*(v39 - 8) + 56);
    v40(&v36->i8[v38], 1, 1, v39);
    v36->i8[*(v36->i64[0] + 208)] = 0;
    v41 = (v36->i64 + *(v36->i64[0] + 216));
    *v41 = 0;
    v41[1] = 0;
    sub_1D2871A18();
    (*(v46 + 32))(&v36->i8[*(v36->i64[0] + 160)], v53, v55);
    *(v36->i64 + *(v36->i64[0] + 168)) = v43;
    *(v36->i64 + *(v36->i64[0] + 176)) = v44;
    sub_1D227268C(v57, v36[1].i64);
    v36[3].i64[1] = v52;
    sub_1D239A330(a3, v8);
    v40(v8, 0, 1, v39);
    sub_1D2870F78();
    sub_1D23EB8A0(v8);

    sub_1D22BD238(v54, &qword_1EC6D8F70);
    __swift_destroy_boxed_opaque_existential_0(v58);
    sub_1D23D4DFC(a3);
    return v36;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D23EEBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23EEC44()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 216));
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D23EECF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D23EA2EC(a1, v4, v5, v7, v6);
}

int64x2_t *sub_1D23EEDC8(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v78 = sub_1D2873CB8();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v74 - v9;
  v10 = sub_1D2871798();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v74 - v13;
  v88 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v86 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D2878AA8();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D2871818();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v74 - v29;
  v100[3] = type metadata accessor for GenerativePlaygroundPhotoLibrary();
  v100[4] = &off_1EEC2A978;
  v100[0] = a1;
  v31 = *(v20 + 56);
  v31(v30, 1, 1, v19);
  v94 = a3;
  v32 = [a3 localIdentifier];
  v96 = v20;
  if (!v32)
  {
    sub_1D28780A8();
    v32 = sub_1D2878068();
    v20 = v96;
  }

  v33 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v33)
  {
    sub_1D28780A8();

    sub_1D28717A8();
    v20 = v96;

    if ((*(v20 + 48))(v28, 1, v19) == 1)
    {
      sub_1D22BD238(v28, &qword_1EC6D8F70);
    }

    else
    {
      sub_1D22BD238(v30, &qword_1EC6D8F70);
      (*(v20 + 32))(v30, v28, v19);
      v31(v30, 0, 1, v19);
    }
  }

  sub_1D22D7044(v100, v99);
  sub_1D22BD1D0(v30, v25, &qword_1EC6D8F70);
  v34 = v20;
  v35 = *(v20 + 48);
  v36 = v35(v25, 1, v19);
  v80 = v30;
  v83 = v19;
  if (v36 == 1)
  {
    sub_1D2871808();
    if (v35(v25, 1, v19) != 1)
    {
      sub_1D22BD238(v25, &qword_1EC6D8F70);
    }
  }

  else
  {
    (*(v34 + 32))(v97, v25, v19);
  }

  v37 = v94;
  v82 = [v94 pixelWidth];
  v81 = [v37 pixelHeight];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
  v38 = swift_allocObject();
  v38[4] = vdupq_n_s64(0x4080000000000000uLL);
  v38[5].i64[0] = 0;
  v79 = v38 + 5;
  v38[5].i8[8] = 0;
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v38[6].i64[0] = 0;
  v38[6].i64[1] = 0;
  (*(v84 + 104))(v18, *MEMORY[0x1E69E8098], v85);
  v39 = v89;
  sub_1D2870F78();
  sub_1D2877B58();
  v98 = MEMORY[0x1E69E7CC0];
  sub_1D23EFEE0(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  v38[7].i64[0] = sub_1D2878AD8();
  v40 = v95;
  sub_1D2871778();
  v42 = v92;
  v41 = v93;
  v43 = *(v92 + 32);
  v43(&v38->i8[*(v38->i64[0] + 184)], v40, v93);
  *(v38->i64 + *(v38->i64[0] + 192)) = sub_1D25D9214(MEMORY[0x1E69E7CC0]);
  v44 = *(v38->i64[0] + 200);
  v45 = type metadata accessor for PlaygroundImage();
  v46 = 1;
  (*(*(v45 - 8) + 56))(&v38->i8[v44], 1, 1, v45);
  v38->i8[*(v38->i64[0] + 208)] = 0;
  v47 = (v38->i64 + *(v38->i64[0] + 216));
  *v47 = 0;
  v47[1] = 0;
  sub_1D2871A18();
  (*(v96 + 32))(&v38->i8[*(v38->i64[0] + 160)], v97, v83);
  *(v38->i64 + *(v38->i64[0] + 168)) = v82;
  *(v38->i64 + *(v38->i64[0] + 176)) = v81;
  sub_1D227268C(v99, v38[1].i64);
  v38[3].i64[1] = v39;
  sub_1D2870F78();
  v48 = [v37 creationDate];
  v49 = v90;
  if (v48)
  {
    v50 = v48;
    sub_1D2871768();

    v46 = 0;
  }

  (*(v42 + 56))(v49, v46, 1, v41);
  v51 = v91;
  sub_1D22EC9BC(v49, v91, &unk_1EC6DAE40);
  if ((*(v42 + 48))(v51, 1, v41) == 1)
  {
    sub_1D22BD238(v51, &unk_1EC6DAE40);
    v52 = v76;
    sub_1D28724F8();
    v53 = v37;
    v54 = sub_1D2873CA8();
    v55 = sub_1D2878A18();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v99[0] = v57;
      *v56 = 136315138;
      v58 = [v53 localIdentifier];
      v59 = sub_1D28780A8();
      v61 = v60;

      v62 = sub_1D23D7C84(v59, v61, v99);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1D226E000, v54, v55, "Asset %s has no creation date, fallback on .now", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v63 = v57;
      v37 = v94;
      MEMORY[0x1D38A3520](v63, -1, -1);
      MEMORY[0x1D38A3520](v56, -1, -1);
    }

    else
    {
    }

    (*(v77 + 8))(v52, v78);
  }

  else
  {
    v64 = v75;
    v43(v75, v51, v41);
    v65 = v95;
    (*(v42 + 16))(v95, v64, v41);
    sub_1D23EB444(v65);
    (*(v42 + 8))(v64, v41);
  }

  result = [v37 descriptionProperties];
  if (result)
  {
    v67 = result;
    v68 = [(int64x2_t *)result assetDescription];

    if (v68)
    {
      v69 = sub_1D28780A8();
      v71 = v70;

      sub_1D23EBBE8(v69, v71);
    }

    v38[5].i8[8] = 0;
    swift_beginAccess();
    v72 = v38[5].i64[0];
    v38[5].i64[0] = v37;
    v73 = v37;

    sub_1D23EBDC8(1);

    sub_1D22BD238(v80, &qword_1EC6D8F70);
    __swift_destroy_boxed_opaque_existential_0(v100);
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D23EFB0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23EFBF0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);

  return sub_1D23ED188(a1);
}

uint64_t sub_1D23EFC6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v3 = v7[0];
  v7[1] = v4;
  v8 = v5;
  v2(v7);

  return sub_1D23EFCD4(v3, v4, v5);
}

uint64_t sub_1D23EFCD4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1D23EFCE4()
{
  v1 = *(sub_1D28716B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D2871798() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v6);
  v10 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_1D23E1DBC(v7, v8, v0 + v2, v0 + v5, v9, v10);
}

uint64_t sub_1D23EFDFC()
{
  sub_1D28716B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);

  return sub_1D23E2F48();
}

uint64_t sub_1D23EFEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23EFFDC()
{
  sub_1D22729C0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23F0038()
{
  v1 = [*v0 localIdentifier];
  v2 = sub_1D28780A8();

  return v2;
}

uint64_t sub_1D23F00B0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1D2871768();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D2871798();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

double sub_1D23F0214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D2876408();
  v3 = *MEMORY[0x1E6980E28];
  v4 = sub_1D28763F8();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_1D2876448();
  sub_1D22BD238(v2, &qword_1EC6D9D40);
  qword_1ED89E288 = 0xD00000000000001BLL;
  unk_1ED89E290 = 0x80000001D28B5600;
  qword_1ED89E298 = 0xD000000000000013;
  unk_1ED89E2A0 = 0x80000001D28B54A0;
  qword_1ED89E2A8 = v6;
  result = 130.0;
  *&qword_1ED89E2B0 = xmmword_1D2885970;
  return result;
}

uint64_t sub_1D23F03A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D2874438();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  v7 = type metadata accessor for PlaygroundOnboardingViewContent(0);
  v8 = (a2 + v7[5]);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED8B0058;
  sub_1D28718C8();
  v10 = v9;
  *v8 = sub_1D28780E8();
  v8[1] = v11;
  v12 = a2 + v7[6];
  *v12 = 0xD000000000000021;
  *(v12 + 8) = 0x80000001D28B0980;
  *(v12 + 16) = 1;
  *(a2 + v7[7]) = 0x4032000000000000;
  *(a2 + v7[8]) = 0xC004000000000000;
  v13 = (a2 + v7[9]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v13 = sub_1D28780E8();
  v13[1] = v14;
  v15 = (a2 + v7[10]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v15 = sub_1D28780E8();
  v15[1] = v16;
  v17 = v7[11];
  if (qword_1ED89E280 != -1)
  {
    swift_once();
  }

  v18 = (a2 + v17);
  v19 = unk_1ED89E290;
  *v18 = qword_1ED89E288;
  v18[1] = v19;
  v20 = (a2 + v7[12]);
  sub_1D2870F68();
  sub_1D2877FE8();
  sub_1D28718C8();
  *v20 = sub_1D28780E8();
  v20[1] = v21;
  v22 = (a2 + v7[13]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v22 = sub_1D28780E8();
  v22[1] = v23;
  v24 = (a2 + v7[14]);
  v25 = unk_1ED89E2A0;
  *v24 = qword_1ED89E298;
  v24[1] = v25;
  v26 = (a2 + v7[15]);
  sub_1D2870F68();
  sub_1D2877FE8();
  sub_1D28718C8();
  *v26 = sub_1D28780E8();
  v26[1] = v27;
  v28 = (a2 + v7[16]);
  sub_1D2877FE8();
  sub_1D28718C8();
  result = sub_1D28780E8();
  *v28 = result;
  v28[1] = v30;
  v31 = (a2 + v7[17]);
  *v31 = 0x6C612E696A6F6D65;
  v31[1] = 0xEB000000006E6569;
  return result;
}

uint64_t sub_1D23F085C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D2874438();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  v7 = type metadata accessor for GenmojiOnboardingViewContent(0);
  v8 = v7[5];
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v8);
  v10 = qword_1ED8B0058;
  sub_1D28718C8();
  v11 = v10;
  *v9 = sub_1D28780E8();
  v9[1] = v12;
  v13 = a2 + v7[6];
  *v13 = xmmword_1D2885980;
  *(v13 + 16) = 0;
  *(a2 + v7[7]) = 0x4010000000000000;
  *(a2 + v7[8]) = 0xC004000000000000;
  v14 = (a2 + v7[9]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v14 = sub_1D28780E8();
  v14[1] = v15;
  v16 = (a2 + v7[10]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v16 = sub_1D28780E8();
  v16[1] = v17;
  v18 = (a2 + v7[11]);
  *v18 = 0x6D726F6674786574;
  v18[1] = 0xEA00000000007461;
  v19 = (a2 + v7[12]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v19 = sub_1D28780E8();
  v19[1] = v20;
  v21 = (a2 + v7[13]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v21 = sub_1D28780E8();
  v21[1] = v22;
  v23 = (a2 + v7[14]);
  *v23 = 0xD000000000000013;
  v23[1] = 0x80000001D28B54A0;
  v24 = (a2 + v7[15]);
  sub_1D2877FE8();
  sub_1D28718C8();
  *v24 = sub_1D28780E8();
  v24[1] = v25;
  v26 = (a2 + v7[16]);
  sub_1D2877FE8();
  sub_1D28718C8();
  result = sub_1D28780E8();
  *v26 = result;
  v26[1] = v28;
  v29 = (a2 + v7[17]);
  *v29 = 0xD000000000000013;
  v29[1] = 0x80000001D28B55C0;
  return result;
}

uint64_t sub_1D23F0CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2874438();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D23F0D3C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0D74(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_1D23F3AE0();
  return v2;
}

uint64_t sub_1D23F0DC4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0DFC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0E34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0E6C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0EA4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0EDC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0F14(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0F4C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D23F0F84(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));
  sub_1D2870F68();
  return v2;
}

void sub_1D23F0FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(a2 + 24))(a1, a2, v6);
  v11 = v10;
  if (v12)
  {
    v36 = v5;
    v13 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v14 = sub_1D2878068();
    v15 = [v13 initWithBundleIdentifier_];

    if (qword_1ED89E280 != -1)
    {
      swift_once();
    }

    v16 = *&qword_1ED89E2B8;
    v17 = [objc_opt_self() mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v16 scale:{v16, v19}];
    v37 = v15;
    v21 = [v15 prepareImageForDescriptor_];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 CGImage];
      if (v23)
      {
        v24 = v23;
        sub_1D23F358C();
        v25 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

LABEL_11:
        v28 = v25;
        sub_1D23F1430(v28, a1, a2);

        return;
      }
    }

    sub_1D2872658();
    sub_1D2870F68();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A28();
    sub_1D23F358C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136315138;
      v33 = sub_1D23D7C84(v9, v11, &v38);
      v35 = v4;
      v34 = v33;
      sub_1D23F358C();
      *(v31 + 4) = v34;
      _os_log_impl(&dword_1D226E000, v29, v30, "Failed to fetch icon for bundle id: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1D38A3520](v32, -1, -1);
      MEMORY[0x1D38A3520](v31, -1, -1);

      (*(v36 + 8))(v8, v35);
    }

    else
    {

      sub_1D23F358C();
      (*(v36 + 8))(v8, v4);
    }
  }

  else
  {
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v26 = qword_1ED8B0058;
    v27 = sub_1D2878068();
    v25 = [objc_opt_self() imageNamed:v27 inBundle:v26];

    if (v25)
    {
      sub_1D23F358C();
      goto LABEL_11;
    }

    __break(1u);
  }
}

id sub_1D23F1430(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v108 = a2;
  v4 = sub_1D28771B8();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEA8);
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v93 - v12;
  v13 = sub_1D2873998();
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v98 = &v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2B8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v93 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = &v93 - v24;
  v115 = sub_1D2876618();
  v120 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v119 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v93 - v28;
  v30 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v31 = sub_1D2871318();
  v117 = *(v31 - 8);
  v118 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v94 = a1;
  v116 = sub_1D2877188();
  v36 = sub_1D2877848();
  v99 = v37;
  v100 = v36;
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v103 = v15;
  v38 = qword_1ED8B0058;
  v39 = sub_1D28718F8();
  (*(*(v39 - 8) + 56))(v29, 1, 1, v39);
  v129[0] = MEMORY[0x1E69E7CC0];
  sub_1D23F3594(&qword_1ED8A6CE8, MEMORY[0x1E69686B0]);
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298);
  sub_1D23448BC();
  sub_1D2879088();
  sub_1D2871308();
  if (qword_1ED89E280 != -1)
  {
    swift_once();
  }

  v129[0] = qword_1ED89E2A8;
  sub_1D23449C8();
  sub_1D2870F78();
  sub_1D2871338();
  v41 = v96;
  sub_1D28765A8();
  v42 = sub_1D28765B8();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = v97;
  sub_1D28765A8();
  v44 = sub_1D28765D8();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = v98;
  sub_1D2876578();
  v46 = sub_1D28765F8();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  sub_1D2876578();
  v47 = sub_1D2876598();
  (*(*(v47 - 8) + 56))(v18, 0, 1, v47);
  v49 = v119;
  v48 = v120;
  v114 = v35;
  v51 = v112;
  v50 = v113;
  if (qword_1ED8A6B80 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v50, qword_1ED8B0300);
  v53 = v103;
  v112 = v51[2];
  (v112)(v103, v52, v50);
  sub_1D2877108();
  sub_1D2876608();
  v54 = v102;
  v55 = v115;
  (*(v48 + 16))(v102, v49, v115);
  (*(v48 + 56))(v54, 0, 1, v55);
  sub_1D22BD1D0(v54, v101, &qword_1EC6DA2A0);
  sub_1D2344A70();
  v56 = v114;
  sub_1D2871338();
  sub_1D22BD238(v54, &qword_1EC6DA2A0);
  (*(v117 + 16))(v95, v56, v118);
  v57 = sub_1D2876678();
  v59 = v58;
  v61 = v60;
  if (qword_1ED8A6B78 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v50, qword_1ED8B02E8);
  (v112)(v53, v62, v50);
  v129[0] = sub_1D2877108();
  v63 = sub_1D2876648();
  v112 = v64;
  v113 = v63;
  LODWORD(v101) = v65;
  v67 = v66;
  sub_1D22ED6E0(v57, v59, v61 & 1);

  v69 = v104;
  v68 = v105;
  v70 = v106;
  (*(v105 + 104))(v104, *MEMORY[0x1E6981630], v106);
  v102 = sub_1D2877228();
  (*(v68 + 8))(v69, v70);
  v71 = sub_1D2877818();
  v73 = v72;
  v74 = v110;
  v75 = v108;
  v76 = (*(v110 + 32))(v108, v110);
  v77 = (*(v74 + 40))(v75, v74);
  v78 = v101 & 1;
  v80 = v112;
  v79 = v113;
  sub_1D22BBFAC(v113, v112, v101 & 1);
  *&v125 = v79;
  *(&v125 + 1) = v80;
  LOBYTE(v126) = v78;
  LODWORD(v106) = v78;
  *(&v126 + 1) = v67;
  *&v127 = v76;
  *(&v127 + 1) = v77;
  *&v128 = v71;
  *(&v128 + 1) = v73;
  *&v123[6] = v125;
  *&v123[22] = v126;
  *&v123[38] = v127;
  v122 = v78;
  v124 = 1;
  *&v123[54] = v128;
  v129[0] = v79;
  v129[1] = v80;
  v130 = v78;
  v103 = v67;
  v131 = v67;
  v132 = v76;
  v133 = v77;
  v134 = v71;
  v135 = v73;
  sub_1D2870F68();
  sub_1D22BD1D0(&v125, v121, &qword_1EC6DAEB0);
  sub_1D22BD238(v129, &qword_1EC6DAEB0);
  LODWORD(v105) = v124;
  sub_1D28748C8();
  KeyPath = swift_getKeyPath();
  v82 = *(v74 + 8);
  v83 = v109;
  v84 = &v109[*(v107 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEB8);
  v82(v75, v74);
  *v84 = KeyPath;
  v85 = *v123;
  *(v83 + 34) = *&v123[16];
  v86 = *&v123[48];
  *(v83 + 50) = *&v123[32];
  *(v83 + 66) = v86;
  *(v83 + 18) = v85;
  v87 = v121[1];
  *(v83 + 88) = v121[0];
  *v83 = v102;
  *(v83 + 8) = 0;
  *(v83 + 16) = v105;
  *(v83 + 17) = 0;
  *(v83 + 80) = *&v123[62];
  *(v83 + 104) = v87;
  *(v83 + 120) = v121[2];
  v88 = v111;
  sub_1D22BD1D0(v83, v111, &qword_1EC6DAEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC0);
  swift_allocObject();
  MEMORY[0x1D389D4C0](v88);
  v89 = [objc_opt_self() mainScreen];
  [v89 scale];

  sub_1D2874A18();
  v90 = sub_1D2874A08();
  sub_1D22ED6E0(v113, v112, v106);

  sub_1D22BD238(v83, &qword_1EC6DAEA8);
  (*(v120 + 8))(v119, v115);
  (*(v117 + 8))(v114, v118);
  if (v90)
  {
    return v90;
  }

  v92 = v94;

  return v92;
}

uint64_t sub_1D23F22BC(uint64_t a1)
{
  v2 = sub_1D2874438();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D28752D8();
}

uint64_t sub_1D23F2394(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D2870F78();
    sub_1D2336804(a3 & 1);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D23F2434()
{
  v1 = type metadata accessor for ImageGenerationOnboardingView(0);
  v73 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v74 = v2;
  v75 = v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72[1] = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D2874438();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2875628();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(v1 + 24);
  v14 = *v13;
  LODWORD(v13) = *(v13 + 8);
  v76 = v0;
  if (v13 == 1)
  {
    if ((v14 & 1) == 0)
    {
LABEL_3:
      sub_1D24CC0E8(v8);
      v78 = type metadata accessor for PlaygroundOnboardingViewContent(0);
      v79 = &off_1F4DC3528;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
      sub_1D23F03A4(v8, boxed_opaque_existential_1);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v16 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v14, 0);
    (*(v10 + 8))(v12, v9);
    if (LOBYTE(v77[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  sub_1D24CC0E8(v8);
  v78 = type metadata accessor for GenmojiOnboardingViewContent(0);
  v79 = &off_1F4DC34B0;
  v17 = __swift_allocate_boxed_opaque_existential_1(v77);
  sub_1D23F085C(v8, v17);
LABEL_6:
  v18 = v78;
  v19 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v19[2])(v18, v19);
  v20 = v78;
  v21 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  sub_1D23F0FBC(v20, v21);
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
  v25 = sub_1D2878068();

  v26 = [v24 initWithTitle:v25 detailText:0 icon:v23 contentLayout:2];

  v27 = v26;
  [v27 setModalPresentationStyle_];
  [v27 setModalInPresentation_];

  v28 = v78;
  v29 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v29[6])(v28, v29);
  v30 = sub_1D2878068();

  v31 = v78;
  v32 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v32[7])(v31, v32);
  v33 = sub_1D2878068();

  __swift_project_boxed_opaque_existential_1(v77, v78);
  v35 = v78;
  v34 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v36 = (v34[8])(v35, v34);
  v38 = sub_1D23F302C(v36, v37, 0);

  [v27 addBulletedListItemWithTitle:v30 description:v33 image:v38];

  v39 = v78;
  v40 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v40[9])(v39, v40);
  v41 = sub_1D2878068();

  v42 = v78;
  v43 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v43[10])(v42, v43);
  v44 = sub_1D2878068();

  __swift_project_boxed_opaque_existential_1(v77, v78);
  v45 = v78;
  v46 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v47 = (v46[11])(v45, v46);
  v49 = sub_1D23F302C(v47, v48, 0);

  [v27 addBulletedListItemWithTitle:v41 description:v44 image:v49];

  v50 = v78;
  v51 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v51[12])(v50, v51);
  v52 = sub_1D2878068();

  v53 = v78;
  v54 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (v54[13])(v53, v54);
  v55 = sub_1D2878068();

  __swift_project_boxed_opaque_existential_1(v77, v78);
  v56 = v78;
  v57 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v58 = (v57[14])(v56, v57);
  v60 = sub_1D23F302C(v58, v59, 0);

  [v27 addBulletedListItemWithTitle:v52 description:v55 image:v60];

  v61 = [objc_opt_self() boldButton];
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v62 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  v63 = sub_1D2878068();

  [v61 setTitle:v63 forState:0];

  sub_1D22BCFD0(0, &unk_1ED89CC30);
  v64 = v75;
  sub_1D23F3430(v76, v75);
  v65 = (*(v73 + 80) + 24) & ~*(v73 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v27;
  sub_1D23F3494(v64, v66 + v65);
  v67 = v27;
  v68 = sub_1D2878DF8();
  [v61 addAction:v68 forControlEvents:64];

  v69 = [v67 buttonTray];
  [v69 addButton_];

  v70 = [v67 headerView];
  [v70 setAllowFullWidthIcon_];

  __swift_destroy_boxed_opaque_existential_0(v77);
  return v67;
}

uint64_t sub_1D23F2D8C(int a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEA0);
  sub_1D2877308();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D2336804(0);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D23F2E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D23F3594(&qword_1ED8A5920, type metadata accessor for ImageGenerationOnboardingView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D23F2EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D23F3594(&qword_1ED8A5920, type metadata accessor for ImageGenerationOnboardingView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D23F2F4C()
{
  sub_1D23F3594(&qword_1ED8A5920, type metadata accessor for ImageGenerationOnboardingView);
  sub_1D2876218();
  __break(1u);
}

id sub_1D23F302C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED8B0058;
  v10 = sub_1D2878068();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    goto LABEL_4;
  }

  sub_1D2870F68();
  sub_1D262CA0C(a1, a2, v8);
  if (v8[8] == 2)
  {
    v24 = *v8;
LABEL_18:
    v11 = v24;
    sub_1D23D4DFC(v8);
    goto LABEL_4;
  }

  v25 = sub_1D262B684();
  if (!v25)
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_18;
  }

  v26 = v25;
  result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v25 imageOrientation:sub_1D263073C(*(v8 + 6))];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  sub_1D23D4DFC(v8);

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  if (a3)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D2885990;
    v13 = objc_opt_self();
    *(v12 + 32) = [v13 systemBackgroundColor];
    v14 = sub_1D2878068();
    v15 = [v13 colorNamed_];

    if (!v15)
    {
      v15 = [v13 tintColor];
    }

    *(v12 + 40) = v15;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D28809B0;
    v17 = sub_1D2878068();
    v18 = objc_opt_self();
    v19 = [v18 colorNamed_];

    if (!v19)
    {
      v19 = [v18 tintColor];
    }

    *(v16 + 32) = v19;
  }

  sub_1D22BCFD0(0, &unk_1ED89CC80);
  v20 = sub_1D28783C8();

  v21 = [objc_opt_self() configurationWithPaletteColors_];

  v22 = [v11 imageWithSymbolConfiguration_];
  return v22;
}

uint64_t sub_1D23F3430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationOnboardingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23F3494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationOnboardingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23F34F8(int a1)
{
  type metadata accessor for ImageGenerationOnboardingView(0);
  v3 = *(v1 + 16);

  return sub_1D23F2D8C(a1, v3);
}

uint64_t sub_1D23F3594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D23F3610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D23F3658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2874438();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2874438();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D23F385C()
{
  result = sub_1D2874438();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D23F392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D23F3A2C(319, &qword_1ED89D1D8, a3, type metadata accessor for ImageGenerationOnboardingViewModel, MEMORY[0x1E6981790]);
  if (v3 <= 0x3F)
  {
    sub_1D23F3A2C(319, &qword_1ED89DFE8, 255, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v4 <= 0x3F)
    {
      sub_1D23F3A90();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D23F3A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D23F3A90()
{
  if (!qword_1ED89DFB0)
  {
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89DFB0);
    }
  }
}

uint64_t sub_1D23F3B24(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v1[6] = swift_task_alloc();
  v2 = sub_1D2872438();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = sub_1D2878568();
  v1[12] = sub_1D2878558();
  v1[13] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D23F3C6C, v4, v3);
}

uint64_t sub_1D23F3C6C()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[16] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1D23F3DAC;
    v5 = v0[6];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    v8 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D23F4160, v8, v7);
  }
}

uint64_t sub_1D23F3DAC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1D23F40CC;
  }

  else
  {
    v5 = sub_1D23F3EE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23F3EE8()
{
  v1 = *(v0 + 128);

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23F3F7C, v3, v2);
}

uint64_t sub_1D23F3F7C()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  (*(v5 + 56))(v6, 0, 1, v4);
  (*(v5 + 32))(v3, v6, v4);
  sub_1D2878C58();
  (*(v5 + 16))(v2, v3, v4);
  v7 = sub_1D2878C48();
  if (v1)
  {

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  (*(v0[8] + 8))(v0[10], v0[7]);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1D23F40CC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23F4160, v4, v3);
}

uint64_t sub_1D23F4160()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1D22BD238(v3, &unk_1EC6DDE30);

  v4 = v0[1];

  return v4(0);
}

void sub_1D23F4228(uint64_t a1, uint64_t a2, int a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = sub_1D23F56D8(a3, sub_1D23F565C, v11);
}

uint64_t sub_1D23F4380(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1D2871798();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1D2873CB8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  v1[15] = swift_task_alloc();
  v4 = sub_1D28716B8();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = sub_1D2878568();
  v1[21] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v1[22] = v6;
  v1[23] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D23F45B8, v6, v5);
}

uint64_t sub_1D23F45B8()
{
  v0[24] = sub_1D28717B8();
  v0[25] = v1;
  v0[26] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v0[27] = v3;
  v0[28] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D23F4668, v3, v2);
}

uint64_t sub_1D23F4668()
{
  v1 = v0[6];
  v2 = sub_1D2878558();
  v0[29] = v2;
  v3 = swift_task_alloc();
  v0[30] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_1D23F4770;
  v5 = v0[15];
  v6 = v0[16];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v5, v2, v7, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D23F564C, v3, v6);
}

uint64_t sub_1D23F4770()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D23F5000;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D23F48EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23F48EC()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D23F4950, v1, v2);
}

uint64_t sub_1D23F4950()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  v5 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v6 = sub_1D28715B8();
  v0[32] = [v5 initWithURL:v6 readonly:1];

  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_1D23F4A94;
  v8 = v0[14];

  return (sub_1D270BEC8)(v8, 0, 0);
}

uint64_t sub_1D23F4A94()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D23F4BB4, v3, v2);
}

id sub_1D23F4BB4()
{
  v38 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for PlaygroundImage();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);

    sub_1D22BD238(v1, &unk_1EC6DE5A0);
    sub_1D28724F8();
    (*(v6 + 16))(v4, v3, v5);
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v36 = *(v0 + 80);
    if (v9)
    {
      v35 = *(v0 + 256);
      v16 = swift_slowAlloc();
      v34 = v15;
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315138;
      sub_1D23F5BD8(&qword_1EC6DA1D8, MEMORY[0x1E6968FB0]);
      v32 = v8;
      v18 = sub_1D28795C8();
      v33 = v11;
      v20 = v19;
      v21 = *(v12 + 8);
      v21(v10, v13);
      v22 = sub_1D23D7C84(v18, v20, &v37);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1D226E000, v7, v32, "Failed to get loadedPreviewImage()?.source for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D38A3520](v17, -1, -1);
      MEMORY[0x1D38A3520](v16, -1, -1);

      (*(v14 + 8))(v34, v36);
      v21(v33, v13);
    }

    else
    {

      v24 = *(v12 + 8);
      v24(v10, v13);
      (*(v14 + 8))(v15, v36);
      v24(v11, v13);
    }

    v25 = *(v0 + 8);

    return v25(0);
  }

  else
  {
    if (*(v1 + 8) == 2)
    {
      v23 = *v1;
    }

    else
    {
      v27 = sub_1D262B684();
      if (v27)
      {
        v28 = v27;
        result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v27 imageOrientation:sub_1D263073C(*(*(v0 + 112) + 24))];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v29 = result;

        v23 = v29;
      }

      else
      {
        v23 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      }
    }

    *(v0 + 272) = v23;
    sub_1D23D4DFC(*(v0 + 112));
    v30 = swift_task_alloc();
    *(v0 + 280) = v30;
    *v30 = v0;
    v30[1] = sub_1D23F51F8;
    v31 = *(v0 + 48);

    return sub_1D23F3B24(v31);
  }
}

uint64_t sub_1D23F5000()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D23F5064, v1, v2);
}

uint64_t sub_1D23F5064()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1D22BD238(v3, &qword_1EC6DA1B8);
  sub_1D28724F8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to get shareable image URL", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1D23F51F8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 288) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D23F5320, v4, v3);
}

uint64_t sub_1D23F5320()
{
  v1 = v0[36];
  v16 = v0[32];
  v17 = v0[34];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[19];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v13 = v0[7];

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v5 = swift_task_alloc();
  *v5 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v5[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  v0[5] = v4;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v6 = *(*v4 + 184);
  swift_beginAccess();
  (*(v3 + 16))(v2, v4 + v6, v13);
  v7 = objc_allocWithZone(MEMORY[0x1E696E4F0]);
  v8 = sub_1D2878068();

  v9 = sub_1D2871728();
  v15 = [v7 initWithIdentifier:v8 imageURLWrapper:v16 previewImage:v17 pixelWidth:v14 pixelHeight:v12 creationDate:v9 recipeData:v1];

  (*(v3 + 8))(v2, v13);
  (*(v18 + 8))(v20, v19);

  v10 = v0[1];

  return v10(v15);
}

uint64_t sub_1D23F565C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);

  return sub_1D263EAA8(a1);
}

id sub_1D23F56D8(int a1, void (*a2)(uint64_t *), uint64_t a3)
{
  LODWORD(v31) = a1;
  v33 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D2878AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v29 - v13);
  swift_beginAccess();
  v15 = *(v3 + 80);
  if (v15)
  {
    v34 = a3;
    sub_1D22BCFD0(0, &unk_1EC6DF5C0);
    v16 = v15;
    v30 = sub_1D233F280(v16);
    v20 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    v21 = v20;
    if (v31)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [v20 setVariant_];
    v31 = sub_1D22BCFD0(0, &qword_1ED89CD50);
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8098], v8);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D23F5BD8(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
    sub_1D2879088();
    v23 = sub_1D2878AD8();
    [v21 setResultHandlerQueue_];

    v24 = swift_allocObject();
    v25 = v34;
    *(v24 + 16) = a2;
    *(v24 + 24) = v25;
    aBlock[4] = sub_1D233F344;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_8;
    v26 = _Block_copy(aBlock);
    sub_1D2870F78();

    v27 = v30;
    [v30 exportWithOptions:v21 completionHandler:v26];
    _Block_release(v26);
    v28 = [v27 progress];

    return v28;
  }

  else
  {
    sub_1D233F184();
    v17 = swift_allocError();
    *v18 = 0;
    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    a2(v14);
    sub_1D22BD238(v14, &qword_1EC6DAE30);
    return 0;
  }
}

uint64_t sub_1D23F5BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D23F5C38(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1D2873C28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873C48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v21 = v8;
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      v12 = "EffectViewModel.interacting";
    }

    else
    {
      v12 = off_1E83FE7C8[a1];
    }
  }

  else
  {
    v12 = "EffectViewModel.generating";
  }

  sub_1D2873C18();
  v13 = sub_1D2873C38();
  v14 = sub_1D2878BC8();
  if (sub_1D2878EE8())
  {
    v15 = v4;
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v17, v12, "", v16, 2u);
    v18 = v16;
    v4 = v15;
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v21);
}

id _SystemPhotoLibrary.photoLibrary.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1D23F5F30();
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    v4 = v2;
    sub_1D23F6344(v3);
  }

  sub_1D23F6354(v1);
  return v2;
}

uint64_t _SystemPhotoLibrary.__allocating_init(servicesFetcher:)()
{

  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t _SystemPhotoLibrary.init(servicesFetcher:)()
{

  *(v0 + 16) = 1;
  return v0;
}

void _SystemPhotoLibrary.photoLibrary.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1D23F6344(v2);
}

id sub_1D23F5F30()
{
  v40[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (!v9)
  {
    sub_1D2872498();
    goto LABEL_10;
  }

  v10 = sub_1D28780A8();
  v12 = v11;

  v13 = sub_1D2872498();
  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10 == v13 && v12 == v14)
  {

    return 0;
  }

  v16 = sub_1D2879618();

  if (v16)
  {
    return 0;
  }

LABEL_11:
  v17 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1D2871638();

  v18 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v19 = sub_1D28715B8();
  v20 = [v18 initWithPhotoLibraryURL_];

  v40[0] = 0;
  if (![v20 openAndWaitWithUpgrade:0 error:v40])
  {
    v23 = v40[0];
    v24 = sub_1D28714B8();

    swift_willThrow();
    sub_1D2872658();
    v25 = v24;
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v0;
      v29 = v28;
      v30 = swift_slowAlloc();
      v38 = v1;
      v31 = v30;
      *v29 = 138412290;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1D226E000, v26, v27, "Failed to initialize system photo library with error %@", v29, 0xCu);
      sub_1D22BF6D0(v31);
      v34 = v31;
      v1 = v38;
      MEMORY[0x1D38A3520](v34, -1, -1);
      v35 = v29;
      v0 = v39;
      MEMORY[0x1D38A3520](v35, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v21 = *(v5 + 8);
  v22 = v40[0];
  v21(v7, v4);
  return v20;
}

void sub_1D23F6344(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D23F6354(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void (*_SystemPhotoLibrary.photoLibrary.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = _SystemPhotoLibrary.photoLibrary.getter();
  return sub_1D23F63AC;
}

void sub_1D23F63AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  *(v3 + 16) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D23F6344(v4);
  }

  else
  {

    sub_1D23F6344(v4);
  }
}

uint64_t _SystemPhotoLibrary.__deallocating_deinit()
{
  sub_1D23F6344(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D23F6480@<X0>(uint64_t *a1@<X8>)
{

  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result;
  return result;
}

uint64_t sub_1D23F65D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1D22BD1D0(a1, &v9 - v6, &qword_1EC6D9A30);
  sub_1D22BD1D0(v7, v4, &qword_1EC6D9A30);
  sub_1D24028B0();
  sub_1D2875648();
  return sub_1D22BD238(v7, &qword_1EC6D9A30);
}

uint64_t View.imageGenerationPeoplePickerSheet(allowsClearingSelection:usesCharacterSharedStorage:preferredConditioningStyle:isPresented:selectedPerson:sessionUndoManager:imageRepresentationsManager:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  return View.imageGenerationPeoplePickerSheet(allowsClearingSelection:usesCharacterSharedStorage:preferredConditioningStyle:isPresented:selectedPerson:sessionUndoManager:imageRepresentationsManager:auditToken:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v13, a11, a12);
}

uint64_t View.imageGenerationPeoplePickerSheet(allowsClearingSelection:usesCharacterSharedStorage:preferredConditioningStyle:isPresented:selectedPerson:sessionUndoManager:imageRepresentationsManager:auditToken:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v81 = a8;
  v82 = a9;
  v77 = a6;
  v78 = a1;
  v92 = a5;
  v93 = a4;
  v91 = a2;
  v83 = a12;
  v84 = a13;
  v79 = a10;
  v80 = a11;
  v73 = sub_1D28764E8();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  v76 = *(v16 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v90 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v85 = &v68 - v19;
  v21 = sub_1D2872008();
  v86 = v21;
  v88 = *(v21 - 8);
  v22 = v88;
  v74 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v87 = &v68 - v25;
  v27 = type metadata accessor for PeoplePickerSheetViewModifier();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v22 + 16);
  v70 = v22 + 16;
  v69(v26, a3, v21, v28);
  sub_1D22BD1D0(a7, v20, &qword_1EC6DA2E0);
  v31 = &v30[v27[10]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v30[v27[11]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &v30[v27[12]];
  *v33 = swift_getKeyPath();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = &v30[v27[13]];
  *v34 = swift_getKeyPath();
  *(v34 + 4) = 0;
  v35 = &v30[v27[14]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = &v30[v27[15]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = v27[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8);
  v38 = sub_1D2875808();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D287F500;
  sub_1D28757E8();
  v42 = sub_1D2400610(v41);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  swift_deallocClassInstance();
  *&v30[v37] = v42;
  v43 = &v30[v27[17]];
  *v43 = swift_getKeyPath();
  v43[40] = 0;
  v94 = 0x4074A00000000000;
  v44 = *MEMORY[0x1E6980EF8];
  v45 = *(v72 + 104);
  v46 = v71;
  v47 = v73;
  v45(v71, v44, v73);
  sub_1D22BFBB8();
  sub_1D2874748();
  v94 = 0x4075E00000000000;
  v45(v46, v44, v47);
  sub_1D2874748();
  v48 = v27[20];
  *&v30[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v49 = &v30[v27[7]];
  v50 = v92;
  *v49 = v93;
  *(v49 + 1) = v50;
  v49[16] = v77;
  v51 = v85;
  sub_1D22BD1D0(v85, &v30[v27[8]], &qword_1EC6DA2E0);
  *v30 = v78;
  v30[1] = v91;
  v52 = v86;
  v53 = v87;
  v54 = v69;
  (v69)(&v30[v27[6]], v87, v86);
  v54(v89, v53, v52);
  sub_1D22BD1D0(v51, v90, &qword_1EC6DA2E0);
  v55 = v88;
  v56 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v57 = v56 + v74;
  v58 = (*(v76 + 80) + v56 + v74 + 1) & ~*(v76 + 80);
  v59 = (v75 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = *(v55 + 32);
  v63 = v86;
  v62(v61 + v56, v89, v86);
  *(v61 + v57) = v91;
  sub_1D234894C(v90, v61 + v58);
  v64 = v80;
  *(v61 + v59) = v81;
  *(v61 + v60) = v79;
  v65 = v61 + ((v60 + 11) & 0xFFFFFFFFFFFFFFF8);
  v66 = *(v64 + 16);
  *v65 = *v64;
  *(v65 + 16) = v66;
  *(v65 + 32) = *(v64 + 32);
  type metadata accessor for PeoplePickerInternalCoordinator();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2874328();
  sub_1D22BD238(v85, &qword_1EC6DA2E0);
  (*(v88 + 8))(v87, v63);
  MEMORY[0x1D389F9A0](v30, v83, v27, v84);
  return sub_1D2401D78(v30, type metadata accessor for PeoplePickerSheetViewModifier);
}