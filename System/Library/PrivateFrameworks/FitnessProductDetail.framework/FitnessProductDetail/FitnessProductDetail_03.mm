uint64_t EditorialDetailContent.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialDetailContent.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B6FA26C()
{
  sub_24B75C6D8();
  EditorialDetailContent.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B6FA2B0()
{
  sub_24B75C6D8();
  EditorialDetailContent.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B6FA2F0(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_24B75C718();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24B75C6D8();
    MEMORY[0x24C2489B0](v12);
    result = sub_24B75C718();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C2489B0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B6FA41C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialExternalLink();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[3];
  v28 = a1[2];
  v29 = v8;
  v30 = *(a1 + 8);
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v23 = sub_24B75C718();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  for (i = 0; v12; v15 ^= v22)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_24B6FB0BC(*(a2 + 48) + *(v24 + 72) * (v18 | (v17 << 6)), v7, type metadata accessor for EditorialExternalLink);
    sub_24B75C6D8();
    v19 = *v7;
    v20 = v7[1];
    sub_24B75C358();
    v21 = *(v25 + 20);
    sub_24B75B108();
    sub_24B6A6DEC(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    v22 = sub_24B75C718();
    result = sub_24B6FB124(v7, type metadata accessor for EditorialExternalLink);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x24C2489B0](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialPreview();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034ED8, &qword_24B761788);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v47 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034F88, &unk_24B7619E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  type metadata accessor for EditorialArtwork();
  sub_24B6A6DEC(qword_2810F7248, type metadata accessor for EditorialArtwork);
  if ((sub_24B75B2A8() & 1) == 0)
  {
    goto LABEL_32;
  }

  v17 = type metadata accessor for EditorialDetailContent();
  sub_24B6F99B4(*(a1 + v17[5]), *(a2 + v17[5]));
  if ((v18 & 1) == 0)
  {
    goto LABEL_32;
  }

  v19 = v17[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_32;
  }

  v23 = v17[7];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_32;
  }

  v48 = v17;
  v27 = v17[8];
  v28 = *(v13 + 48);
  sub_24B6B9D34(a1 + v27, v16, &qword_27F034ED8, &qword_24B761788);
  v29 = a2 + v27;
  v30 = v28;
  sub_24B6B9D34(v29, &v16[v28], &qword_27F034ED8, &qword_24B761788);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) != 1)
  {
    sub_24B6B9D34(v16, v12, &qword_27F034ED8, &qword_24B761788);
    if (v31(&v16[v30], 1, v4) == 1)
    {
      sub_24B6FB124(v12, type metadata accessor for EditorialPreview);
      goto LABEL_21;
    }

    sub_24B6FB184(&v16[v30], v8, type metadata accessor for EditorialPreview);
    v41 = v12[1];
    v42 = v8[1];
    if (v41)
    {
      v32 = v48;
      if (v42 && (*v12 == *v8 && v41 == v42 || (sub_24B75C6B8() & 1) != 0))
      {
LABEL_27:
        v43 = *(v4 + 20);
        v44 = sub_24B75B0F8();
        sub_24B6FB124(v8, type metadata accessor for EditorialPreview);
        sub_24B6FB124(v12, type metadata accessor for EditorialPreview);
        sub_24B6B9CD4(v16, &qword_27F034ED8, &qword_24B761788);
        if ((v44 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v32 = v48;
      if (!v42)
      {
        goto LABEL_27;
      }
    }

    sub_24B6FB124(v8, type metadata accessor for EditorialPreview);
    sub_24B6FB124(v12, type metadata accessor for EditorialPreview);
    v39 = &qword_27F034ED8;
    v40 = &qword_24B761788;
    goto LABEL_31;
  }

  if (v31(&v16[v30], 1, v4) != 1)
  {
LABEL_21:
    v39 = &qword_27F034F88;
    v40 = &unk_24B7619E0;
LABEL_31:
    sub_24B6B9CD4(v16, v39, v40);
    goto LABEL_32;
  }

  sub_24B6B9CD4(v16, &qword_27F034ED8, &qword_24B761788);
  v32 = v48;
LABEL_12:
  v33 = v32[9];
  if (sub_24B75B0F8())
  {
    v34 = v32[10];
    v35 = (a1 + v34);
    v36 = *(a1 + v34 + 8);
    v37 = (a2 + v34);
    v38 = v37[1];
    if (v36)
    {
      if (v38 && (*v35 == *v37 && v36 == v38 || (sub_24B75C6B8() & 1) != 0))
      {
        goto LABEL_35;
      }
    }

    else if (!v38)
    {
LABEL_35:
      v45 = sub_24B6F9D78(*(a1 + v32[11]), *(a2 + v32[11]));
      return v45 & 1;
    }
  }

LABEL_32:
  v45 = 0;
  return v45 & 1;
}

uint64_t getEnumTagSinglePayload for EditorialDetailContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorialDetailContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6FACFC()
{
  result = qword_27F034F70;
  if (!qword_27F034F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034F70);
  }

  return result;
}

unint64_t sub_24B6FAD54()
{
  result = qword_27F034F78;
  if (!qword_27F034F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034F78);
  }

  return result;
}

unint64_t sub_24B6FADAC()
{
  result = qword_27F034F80;
  if (!qword_27F034F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034F80);
  }

  return result;
}

uint64_t sub_24B6FAE00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76BD90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xED0000736B6E694CLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76BDB0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24B6FB0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6FB124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6FB184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t WorkoutProgramCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutProgramCanvasPlaceholder.init(identifier:referenceType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B6FB228()
{
  if (*v0)
  {
    result = 0x636E657265666572;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_24B6FB274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B6FB360(uint64_t a1)
{
  v2 = sub_24B6FB558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FB39C(uint64_t a1)
{
  v2 = sub_24B6FB558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgramCanvasPlaceholder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034F90, &qword_24B7619F0);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FB558();
  sub_24B75C738();
  v15 = 0;
  sub_24B75C678();
  if (!v2)
  {
    v14 = 1;
    sub_24B6FB5AC();
    sub_24B75C6A8();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_24B6FB558()
{
  result = qword_27F034F98;
  if (!qword_27F034F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034F98);
  }

  return result;
}

unint64_t sub_24B6FB5AC()
{
  result = qword_27F034FA0;
  if (!qword_27F034FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FA0);
  }

  return result;
}

uint64_t WorkoutProgramCanvasPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034FA8, &qword_24B7619F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FB558();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v11 = sub_24B75C5E8();
  v13 = v12;
  v14 = v11;
  v17 = 1;
  sub_24B6FB7E8();
  sub_24B75C618();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B6FB7E8()
{
  result = qword_27F034FB0;
  if (!qword_27F034FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FB0);
  }

  return result;
}

uint64_t static WorkoutProgramCanvasPlaceholder.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_24B75C6B8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t WorkoutProgramCanvasPlaceholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C358();

  return sub_24B75C358();
}

uint64_t WorkoutProgramCanvasPlaceholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C6D8();
  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6FB974()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C6D8();
  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

uint64_t sub_24B6FB9DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C358();

  return sub_24B75C358();
}

uint64_t sub_24B6FBA2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C6D8();
  sub_24B75C358();
  sub_24B75C358();
  return sub_24B75C718();
}

unint64_t sub_24B6FBA94()
{
  result = qword_27F034FB8;
  if (!qword_27F034FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FB8);
  }

  return result;
}

uint64_t sub_24B6FBAE8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_24B75C6B8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

unint64_t sub_24B6FBB5C()
{
  result = qword_27F034FC0;
  if (!qword_27F034FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FC0);
  }

  return result;
}

unint64_t sub_24B6FBBB4()
{
  result = qword_27F034FC8;
  if (!qword_27F034FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FC8);
  }

  return result;
}

unint64_t sub_24B6FBC0C()
{
  result = qword_27F034FD0;
  if (!qword_27F034FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FD0);
  }

  return result;
}

uint64_t WorkoutProgramPreview.streamingProgramIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutProgramPreview.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgramPreview() + 20);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgramPreview.init(streamingProgramIdentifier:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WorkoutProgramPreview() + 20);
  v7 = sub_24B75B108();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

unint64_t sub_24B6FBD90()
{
  if (*v0)
  {
    result = 0x6E696D6165727473;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_24B6FBDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x800000024B76BDD0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B75C6B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B6FBEC4(uint64_t a1)
{
  v2 = sub_24B6FC0F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FBF00(uint64_t a1)
{
  v2 = sub_24B6FC0F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgramPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034FD8, &qword_24B761C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FC0F4();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_24B75C648();
  if (!v2)
  {
    v13 = *(type metadata accessor for WorkoutProgramPreview() + 20);
    v15[14] = 1;
    sub_24B75B108();
    sub_24B6A7218(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6FC0F4()
{
  result = qword_27F034FE0;
  if (!qword_27F034FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FE0);
  }

  return result;
}

uint64_t WorkoutProgramPreview.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_24B75B108();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034FE8, &qword_24B761C38);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for WorkoutProgramPreview();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FC0F4();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v16 = v24;
  v15 = v25;
  v28 = 0;
  v17 = v26;
  *v13 = sub_24B75C5B8();
  v13[1] = v18;
  v20[1] = v18;
  v27 = 1;
  sub_24B6A7218(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C618();
  (*(v16 + 8))(v9, v17);
  (*(v22 + 32))(v13 + *(v21 + 20), v6, v15);
  sub_24B6FC450(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B6FC4B4(v13);
}

uint64_t sub_24B6FC450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B6FC4B4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutProgramPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static WorkoutProgramPreview.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1;
      v7 = *a1 == *a2 && v4 == v5;
      if (v7 || (sub_24B75C6B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v8 = *(type metadata accessor for WorkoutProgramPreview() + 20);

  return sub_24B75B0F8();
}

uint64_t WorkoutProgramPreview.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v2 = *(type metadata accessor for WorkoutProgramPreview() + 20);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t WorkoutProgramPreview.hashValue.getter()
{
  sub_24B75C6D8();
  if (v0[1])
  {
    v1 = *v0;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v2 = *(type metadata accessor for WorkoutProgramPreview() + 20);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FC774(uint64_t a1)
{
  sub_24B75C6D8();
  if (v1[1])
  {
    v3 = *v1;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v4 = *(a1 + 20);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FC854(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = *v2;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t sub_24B6FC91C(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  if (v2[1])
  {
    v4 = *v2;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A7218(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B6FCA40(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a3;
      v8 = sub_24B75C6B8();
      a3 = v7;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v9 = *(a3 + 20);

  return sub_24B75B0F8();
}

unint64_t sub_24B6FCB20()
{
  result = qword_27F034FF8;
  if (!qword_27F034FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F034FF8);
  }

  return result;
}

unint64_t sub_24B6FCB78()
{
  result = qword_27F035000;
  if (!qword_27F035000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035000);
  }

  return result;
}

unint64_t sub_24B6FCBD0()
{
  result = qword_27F035008;
  if (!qword_27F035008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035008);
  }

  return result;
}

uint64_t WorkoutProgram.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram() + 20);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutProgram() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutProgram.links.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutProgram() + 28));
}

uint64_t WorkoutProgram.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram() + 36);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram() + 44);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutProgram() + 48);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutProgram.workoutIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutProgram() + 52));
}

uint64_t WorkoutProgram.init(artworkDescriptor:detail:identifier:links:preview:sharingURL:subtitle:summary:title:workoutIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24B6B8DE8(a1, a9, &qword_27F035010, &unk_24B761E40);
  v17 = type metadata accessor for WorkoutProgram();
  v18 = v17[5];
  v19 = sub_24B75AFE8();
  v20 = *(*(v19 - 8) + 32);
  v20(a9 + v18, a2, v19);
  v21 = (a9 + v17[6]);
  *v21 = a3;
  v21[1] = a4;
  *(a9 + v17[7]) = a5;
  sub_24B6B8DE8(a6, a9 + v17[8], &qword_27F035018, &qword_24B7670C0);
  v22 = v17[9];
  v23 = sub_24B75B108();
  (*(*(v23 - 8) + 32))(a9 + v22, a7, v23);
  sub_24B6B8DE8(a8, a9 + v17[10], &qword_27F034508, &qword_24B761E50);
  v20(a9 + v17[11], a10, v19);
  result = (v20)(a9 + v17[12], a11, v19);
  *(a9 + v17[13]) = a12;
  return result;
}

unint64_t sub_24B6FD134(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7972616D6D7573;
    v6 = 0x656C746974;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x55676E6972616873;
    if (a1 != 5)
    {
      v7 = 0x656C746974627573;
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
    v1 = 0x6C6961746564;
    v2 = 0x696669746E656469;
    v3 = 0x736B6E696CLL;
    if (a1 != 3)
    {
      v3 = 0x77656976657270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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

uint64_t sub_24B6FD27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B6FEFD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6FD2B0(uint64_t a1)
{
  v2 = sub_24B6FD800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FD2EC(uint64_t a1)
{
  v2 = sub_24B6FD800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgram.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035020, &qword_24B761E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FD800();
  sub_24B75C738();
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  sub_24B6FE3EC(&qword_27F035030);
  sub_24B75C6A8();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutProgram();
    v12 = v11[5];
    LOBYTE(v22) = 1;
    sub_24B75AFE8();
    sub_24B6A8070(&qword_27F035038, MEMORY[0x277CC8C40]);
    sub_24B75C6A8();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v22) = 2;
    sub_24B75C678();
    v22 = *(v3 + v11[7]);
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
    sub_24B6FE43C(&qword_27F035048, &qword_27F035050);
    sub_24B75C6A8();
    v20 = v11[8];
    LOBYTE(v22) = 4;
    type metadata accessor for WorkoutProgramPreview();
    sub_24B6A8070(&qword_27F035058, type metadata accessor for WorkoutProgramPreview);
    sub_24B75C668();
    v20 = v11[9];
    LOBYTE(v22) = 5;
    sub_24B75B108();
    sub_24B6A8070(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C6A8();
    v16 = v11[10];
    LOBYTE(v22) = 6;
    sub_24B75C668();
    v17 = v11[11];
    LOBYTE(v22) = 7;
    sub_24B75C6A8();
    v18 = v11[12];
    LOBYTE(v22) = 8;
    sub_24B75C6A8();
    v22 = *(v3 + v11[13]);
    v21 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035060, &qword_24B761E68);
    sub_24B6FE4D8(&qword_27F035068);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6FD800()
{
  result = qword_27F035028;
  if (!qword_27F035028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035028);
  }

  return result;
}

uint64_t WorkoutProgram.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v55 - v5;
  v6 = sub_24B75B108();
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v55 - v12;
  v13 = sub_24B75AFE8();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v55 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035010, &unk_24B761E40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v69 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035070, &qword_24B761E70);
  v71 = *(v24 - 8);
  v72 = v24;
  v25 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  v28 = type metadata accessor for WorkoutProgram();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FD800();
  v73 = v27;
  v33 = v74;
  sub_24B75C728();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v70;
  v58 = v28;
  v59 = a1;
  v74 = v31;
  LOBYTE(v76) = 0;
  sub_24B6FE3EC(&qword_27F035078);
  v35 = v69;
  sub_24B75C618();
  v36 = v74;
  sub_24B6B8DE8(v35, v74, &qword_27F035010, &unk_24B761E40);
  LOBYTE(v76) = 1;
  v37 = sub_24B6A8070(&qword_27F035080, MEMORY[0x277CC8C40]);
  v38 = v68;
  sub_24B75C618();
  v57 = v37;
  v39 = v20;
  v40 = v36;
  v42 = v67 + 32;
  v41 = *(v67 + 32);
  v41(v40 + v58[5], v39, v38);
  LOBYTE(v76) = 2;
  v69 = 0;
  v43 = sub_24B75C5E8();
  v55 = v42;
  v56 = v41;
  v44 = v58;
  v45 = (v40 + v58[6]);
  *v45 = v43;
  v45[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035040, &qword_24B761E60);
  v75 = 3;
  sub_24B6FE43C(&qword_27F035088, &qword_27F035090);
  sub_24B75C618();
  v47 = v40;
  *(v40 + v44[7]) = v76;
  type metadata accessor for WorkoutProgramPreview();
  LOBYTE(v76) = 4;
  sub_24B6A8070(&qword_27F035098, type metadata accessor for WorkoutProgramPreview);
  sub_24B75C5D8();
  sub_24B6B8DE8(v34, v40 + v44[8], &qword_27F035018, &qword_24B7670C0);
  LOBYTE(v76) = 5;
  sub_24B6A8070(&qword_27F0341F8, MEMORY[0x277CC9260]);
  v49 = v64;
  v48 = v65;
  sub_24B75C618();
  (*(v66 + 32))(v47 + v44[9], v49, v48);
  LOBYTE(v76) = 6;
  v50 = v63;
  sub_24B75C5D8();
  sub_24B6B8DE8(v50, v47 + v44[10], &qword_27F034508, &qword_24B761E50);
  LOBYTE(v76) = 7;
  v51 = v62;
  sub_24B75C618();
  v56(v47 + v58[11], v51, v38);
  LOBYTE(v76) = 8;
  v52 = v61;
  sub_24B75C618();
  v56(v47 + v58[12], v52, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035060, &qword_24B761E68);
  v75 = 9;
  sub_24B6FE4D8(&qword_27F0350A0);
  sub_24B75C618();
  (*(v71 + 8))(v73, v72);
  v53 = v74;
  *&v74[v58[13]] = v76;
  sub_24B6FE544(v53, v60);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_24B6FF310(v53, type metadata accessor for WorkoutProgram);
}

uint64_t sub_24B6FE3EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035010, &unk_24B761E40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE43C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035040, &qword_24B761E60);
    sub_24B6A8070(a2, type metadata accessor for WorkoutProgramLinkAnnotation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE4D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035060, &qword_24B761E68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6FE544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgram();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20FitnessProductDetail14WorkoutProgramV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75AFE8();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C0, &qword_24B762068);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v65 = &v62 - v12;
  v13 = type metadata accessor for WorkoutProgramPreview();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v62 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C8, &unk_24B762070);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  type metadata accessor for WorkoutProgramArtwork();
  sub_24B6A8070(qword_2810F7048, type metadata accessor for WorkoutProgramArtwork);
  if ((sub_24B75B2A8() & 1) == 0)
  {
    goto LABEL_28;
  }

  v26 = type metadata accessor for WorkoutProgram();
  v27 = v26[5];
  if ((sub_24B75AF58() & 1) == 0)
  {
    goto LABEL_28;
  }

  v28 = v26[6];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((sub_24B707E48(*(a1 + v26[7]), *(a2 + v26[7])) & 1) == 0)
  {
    goto LABEL_28;
  }

  v62 = v26;
  v32 = v26[8];
  v33 = *(v22 + 48);
  sub_24B6B9D34(a1 + v32, v25, &qword_27F035018, &qword_24B7670C0);
  v34 = a2 + v32;
  v35 = v33;
  sub_24B6B9D34(v34, &v25[v33], &qword_27F035018, &qword_24B7670C0);
  v36 = *(v14 + 48);
  if (v36(v25, 1, v13) == 1)
  {
    if (v36(&v25[v35], 1, v13) == 1)
    {
      sub_24B6B9CD4(v25, &qword_27F035018, &qword_24B7670C0);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  sub_24B6B9D34(v25, v21, &qword_27F035018, &qword_24B7670C0);
  if (v36(&v25[v35], 1, v13) == 1)
  {
    sub_24B6FF310(v21, type metadata accessor for WorkoutProgramPreview);
LABEL_16:
    v45 = &qword_27F0350C8;
    v46 = &unk_24B762070;
LABEL_26:
    v51 = v25;
LABEL_27:
    sub_24B6B9CD4(v51, v45, v46);
    goto LABEL_28;
  }

  sub_24B6FF370(&v25[v35], v17);
  v47 = v21[1];
  v48 = v17[1];
  if (!v47)
  {
    if (!v48)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_24B6FF310(v17, type metadata accessor for WorkoutProgramPreview);
    sub_24B6FF310(v21, type metadata accessor for WorkoutProgramPreview);
    v45 = &qword_27F035018;
    v46 = &qword_24B7670C0;
    goto LABEL_26;
  }

  if (!v48 || (*v21 != *v17 || v47 != v48) && (sub_24B75C6B8() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = *(v13 + 20);
  v50 = sub_24B75B0F8();
  sub_24B6FF310(v17, type metadata accessor for WorkoutProgramPreview);
  sub_24B6FF310(v21, type metadata accessor for WorkoutProgramPreview);
  sub_24B6B9CD4(v25, &qword_27F035018, &qword_24B7670C0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v37 = v62;
  v38 = v62[9];
  if ((sub_24B75B0F8() & 1) == 0)
  {
    goto LABEL_28;
  }

  v39 = v37[10];
  v40 = *(v10 + 48);
  v41 = v65;
  sub_24B6B9D34(a1 + v39, v65, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(a2 + v39, v41 + v40, &qword_27F034508, &qword_24B761E50);
  v43 = v66;
  v42 = v67;
  v44 = *(v66 + 48);
  if (v44(v41, 1, v67) != 1)
  {
    v54 = v64;
    sub_24B6B9D34(v41, v64, &qword_27F034508, &qword_24B761E50);
    if (v44(v41 + v40, 1, v42) != 1)
    {
      v55 = v41 + v40;
      v56 = v63;
      (*(v43 + 32))(v63, v55, v42);
      sub_24B6A8070(&qword_27F0350D0, MEMORY[0x277CC8C40]);
      v57 = sub_24B75C2D8();
      v58 = *(v43 + 8);
      v58(v56, v42);
      v58(v54, v42);
      sub_24B6B9CD4(v41, &qword_27F034508, &qword_24B761E50);
      if ((v57 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    (*(v43 + 8))(v54, v42);
    goto LABEL_32;
  }

  if (v44(v41 + v40, 1, v42) != 1)
  {
LABEL_32:
    v45 = &qword_27F0350C0;
    v46 = &qword_24B762068;
    v51 = v41;
    goto LABEL_27;
  }

  sub_24B6B9CD4(v41, &qword_27F034508, &qword_24B761E50);
LABEL_34:
  v59 = v62;
  v60 = v62[11];
  if (sub_24B75AF58())
  {
    v61 = v59[12];
    if (sub_24B75AF58())
    {
      v52 = sub_24B708070(*(a1 + v59[13]), *(a2 + v59[13]));
      return v52 & 1;
    }
  }

LABEL_28:
  v52 = 0;
  return v52 & 1;
}

uint64_t getEnumTagSinglePayload for WorkoutProgram.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutProgram.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B6FEECC()
{
  result = qword_27F0350A8;
  if (!qword_27F0350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350A8);
  }

  return result;
}

unint64_t sub_24B6FEF24()
{
  result = qword_27F0350B0;
  if (!qword_27F0350B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350B0);
  }

  return result;
}

unint64_t sub_24B6FEF7C()
{
  result = qword_27F0350B8;
  if (!qword_27F0350B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350B8);
  }

  return result;
}

uint64_t sub_24B6FEFD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B76BD90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76BDF0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24B6FF310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B6FF370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EditorialDetailState.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialDetailState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialDetailState() + 24);
  v4 = sub_24B75B1F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialDetailState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EditorialDetailState() + 28);

  return sub_24B6FF55C(a1, v3);
}

uint64_t sub_24B6FF55C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for EditorialDetailLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t EditorialDetailState.init(identifier:layout:loadState:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for EditorialDetailState();
  sub_24B700564(a3, &a6[v10[5]], type metadata accessor for EditorialDetailLayout);
  sub_24B700564(a4, &a6[v10[7]], type metadata accessor for EditorialDetailLoadState);
  v11 = v10[6];
  v12 = sub_24B75B1F8();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a6[v11], a5, v12);
}

uint64_t sub_24B6FF6E8()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x7461745364616F6CLL;
  }

  if (*v0)
  {
    v1 = 0x74756F79616CLL;
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

uint64_t sub_24B6FF764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7007FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6FF78C(uint64_t a1)
{
  v2 = sub_24B6FFAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6FF7C8(uint64_t a1)
{
  v2 = sub_24B6FFAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350D8, &qword_24B762080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FFAA8();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_24B75C678();
  if (!v2)
  {
    v13 = type metadata accessor for EditorialDetailState();
    v14 = v13[5];
    v18[14] = 1;
    type metadata accessor for EditorialDetailLayout();
    sub_24B700674(&qword_27F0350E8, type metadata accessor for EditorialDetailLayout);
    sub_24B75C6A8();
    v15 = v13[6];
    v18[13] = 2;
    sub_24B75B1F8();
    sub_24B700674(&qword_27F033EC8, MEMORY[0x277CC9788]);
    sub_24B75C6A8();
    v16 = v13[7];
    v18[12] = 3;
    type metadata accessor for EditorialDetailLoadState();
    sub_24B700674(&qword_27F0350F0, type metadata accessor for EditorialDetailLoadState);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6FFAA8()
{
  result = qword_27F0350E0;
  if (!qword_27F0350E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0350E0);
  }

  return result;
}

uint64_t EditorialDetailState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  State = type metadata accessor for EditorialDetailLoadState();
  v3 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B75B1F8();
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditorialDetailLayout();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350F8, &qword_24B762088);
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = type metadata accessor for EditorialDetailState();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6FFAA8();
  v38 = v16;
  v22 = v39;
  sub_24B75C728();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = 0;
  v23 = v20;
  *v20 = sub_24B75C5E8();
  v20[1] = v24;
  v39 = v24;
  v42 = 1;
  sub_24B700674(&qword_27F035100, type metadata accessor for EditorialDetailLayout);
  sub_24B75C618();
  sub_24B700564(v12, v20 + v17[5], type metadata accessor for EditorialDetailLayout);
  v41 = 2;
  sub_24B700674(&qword_27F033EF8, MEMORY[0x277CC9788]);
  v25 = v33;
  v26 = v34;
  v29[1] = 0;
  sub_24B75C618();
  (*(v35 + 32))(v23 + v17[6], v25, v26);
  v40 = 3;
  sub_24B700674(&qword_27F035108, type metadata accessor for EditorialDetailLoadState);
  v27 = v32;
  sub_24B75C618();
  (*(v36 + 8))(v38, v37);
  sub_24B700564(v27, v23 + v17[7], type metadata accessor for EditorialDetailLoadState);
  sub_24B700094(v23, v30, type metadata accessor for EditorialDetailState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B7005CC(v23, type metadata accessor for EditorialDetailState);
}

uint64_t sub_24B700094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t EditorialDetailState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialDetailContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  sub_24B75C358();
  v14 = type metadata accessor for EditorialDetailState();
  v15 = v1 + v14[5];
  sub_24B75B308();
  sub_24B700674(&qword_27F035110, MEMORY[0x277D096F0]);
  sub_24B75C2C8();
  v16 = type metadata accessor for EditorialDetailLayout();
  MEMORY[0x24C2489B0](v15[*(v16 + 20)]);
  v17 = v14[6];
  sub_24B75B1F8();
  sub_24B700674(&qword_27F035118, MEMORY[0x277CC9788]);
  sub_24B75C2C8();
  sub_24B700094(v2 + v14[7], v11, type metadata accessor for EditorialDetailLoadState);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v19 = (*(*(v18 - 8) + 48))(v11, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    return MEMORY[0x24C2489B0](v20);
  }

  else
  {
    sub_24B700564(v11, v7, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B7005CC(v7, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailState.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B7003FC()
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B700440()
{
  sub_24B75C6D8();
  EditorialDetailState.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC5StateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for EditorialDetailState();
  v6 = v5[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  if ((MEMORY[0x24C2475B0](a1 + v6, a2 + v6) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for EditorialDetailLayout();
  if (v7[*(v9 + 20)] != v8[*(v9 + 20)] || (MEMORY[0x24C2474B0](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v10 = v5[7];

  return _s20FitnessProductDetail09EditorialC9LoadStateO2eeoiySbAC_ACtFZ_0(a1 + v10, a2 + v10);
}

uint64_t sub_24B700564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7005CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B700674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B7006F8()
{
  result = qword_27F035130;
  if (!qword_27F035130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035130);
  }

  return result;
}

unint64_t sub_24B700750()
{
  result = qword_27F035138;
  if (!qword_27F035138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035138);
  }

  return result;
}

unint64_t sub_24B7007A8()
{
  result = qword_27F035140;
  if (!qword_27F035140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035140);
  }

  return result;
}

uint64_t sub_24B7007FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t EditorialArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B6B8DE8(a1, a3, &qword_27F034120, &unk_24B75E1E0);
  v5 = type metadata accessor for EditorialArtwork();
  return sub_24B6B8DE8(a2, a3 + *(v5 + 20), &qword_27F034118, &qword_24B75E1D8);
}

uint64_t sub_24B700A44(uint64_t a1)
{
  v2 = sub_24B700CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B700A80(uint64_t a1)
{
  v2 = sub_24B700CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035148, &qword_24B7622A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B700CBC();
  sub_24B75C738();
  v11[15] = 0;
  sub_24B75B298();
  sub_24B6A6F0C(&qword_27F0341D8, MEMORY[0x277D09D68]);
  sub_24B75C668();
  if (!v1)
  {
    v9 = *(type metadata accessor for EditorialArtwork() + 20);
    v11[14] = 1;
    sub_24B75B108();
    sub_24B6A6F0C(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C668();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B700CBC()
{
  result = qword_27F035150;
  if (!qword_27F035150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035150);
  }

  return result;
}

uint64_t EditorialArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035158, &qword_24B7622A8);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for EditorialArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B700CBC();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_24B75B298();
  v31 = 0;
  sub_24B6A6F0C(&qword_27F0341F0, MEMORY[0x277D09D68]);
  v21 = v28;
  v22 = v29;
  sub_24B75C5D8();
  sub_24B6B8DE8(v21, v19, &qword_27F034120, &unk_24B75E1E0);
  sub_24B75B108();
  v30 = 1;
  sub_24B6A6F0C(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C5D8();
  (*(v20 + 8))(v13, v22);
  sub_24B6B8DE8(v7, v19 + *(v25 + 20), &qword_27F034118, &qword_24B75E1D8);
  sub_24B7010C0(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B701124(v19);
}

uint64_t sub_24B7010C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B701124(uint64_t a1)
{
  v2 = type metadata accessor for EditorialArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B75B108();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_24B75B298();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_24B6B9D34(v1, &v23 - v16, &qword_27F034120, &unk_24B75E1E0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24B75C6F8();
    sub_24B6A6F0C(&qword_27F034128, MEMORY[0x277D09D68]);
    sub_24B75C2C8();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for EditorialArtwork();
  sub_24B6B9D34(v1 + *(v18 + 20), v8, &qword_27F034118, &qword_24B75E1D8);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_24B75C6F8();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_24B75C6F8();
  sub_24B6A6F0C(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return (*(v20 + 8))(v22, v19);
}

uint64_t EditorialArtwork.hashValue.getter()
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B70159C()
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B7015E0()
{
  sub_24B75C6D8();
  EditorialArtwork.hash(into:)();
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail16EditorialArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - v11;
  v12 = sub_24B75B298();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v44 - v23;
  v26 = *(v25 + 56);
  v48 = a1;
  sub_24B6B9D34(a1, &v44 - v23, &qword_27F034120, &unk_24B75E1E0);
  v49 = a2;
  sub_24B6B9D34(a2, &v24[v26], &qword_27F034120, &unk_24B75E1E0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) != 1)
  {
    sub_24B6B9D34(v24, v20, &qword_27F034120, &unk_24B75E1E0);
    if (v27(&v24[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v24[v26], v12);
      sub_24B6A6F0C(&qword_27F034230, MEMORY[0x277D09D68]);
      v31 = sub_24B75C2D8();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_24B6B9CD4(v24, &qword_27F034120, &unk_24B75E1E0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_27F034220;
    v29 = &unk_24B75E810;
    v30 = v24;
LABEL_14:
    sub_24B6B9CD4(v30, v28, v29);
    return 0;
  }

  if (v27(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_24B6B9CD4(v24, &qword_27F034120, &unk_24B75E1E0);
LABEL_8:
  v33 = *(type metadata accessor for EditorialArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_24B6B9D34(v48 + v33, v47, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(v49 + v33, v34 + v35, &qword_27F034118, &qword_24B75E1D8);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_24B6B9CD4(v34, &qword_27F034118, &qword_24B75E1D8);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_24B6B9D34(v34, v45, &qword_27F034118, &qword_24B75E1D8);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_27F034218;
    v29 = &unk_24B761640;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_24B6A6F0C(&qword_27F034228, MEMORY[0x277CC9260]);
  v42 = sub_24B75C2D8();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_24B6B9CD4(v34, &qword_27F034118, &qword_24B75E1D8);
  return (v42 & 1) != 0;
}

unint64_t sub_24B701C8C()
{
  result = qword_27F035160;
  if (!qword_27F035160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035160);
  }

  return result;
}

unint64_t sub_24B701CE4()
{
  result = qword_27F035168;
  if (!qword_27F035168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035168);
  }

  return result;
}

unint64_t sub_24B701D3C()
{
  result = qword_27F035170;
  if (!qword_27F035170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035170);
  }

  return result;
}

uint64_t sub_24B701DBC@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_24B75B898();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_24B75B8B8();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_24B75B8C8();
  sub_24B75B8A8();
  v18 = *(v11 + 16);
  v18(v14, v17, v10);
  v19 = *(v3 + 16);
  v19(v6, v9, v1);
  v20 = v31;
  v18(v31, v14, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035180, &qword_24B762580) + 48)];
  v22 = v28;
  v19(v21, v6, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v6, v25);
  return (v26)(v14, v10);
}

uint64_t sub_24B70204C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_24B75B6B8();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035178, &qword_24B762578);
  return sub_24B701DBC((a1 + *(v4 + 44)));
}

unint64_t sub_24B7020AC()
{
  result = qword_27F035188;
  if (!qword_27F035188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035190, &qword_24B762588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduleBannerLabelStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B7021DC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_24B75BEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035198, &qword_24B762628);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351A0, &qword_24B762630);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - v17;
  *v13 = sub_24B75B6B8();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351A8, &qword_24B762638);
  sub_24B7024C0(a1, &v13[*(v19 + 44)]);
  v20 = sub_24B75B9A8();
  v21 = &v13[*(v10 + 44)];
  *v21 = v20;
  *(v21 + 8) = xmmword_24B762590;
  *(v21 + 24) = xmmword_24B762590;
  v21[40] = 0;
  sub_24B75C168();
  sub_24B75B5C8();
  sub_24B6B8DE8(v13, v18, &qword_27F035198, &qword_24B762628);
  v22 = &v18[*(v15 + 44)];
  v23 = v29[5];
  *(v22 + 4) = v29[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v29[6];
  v24 = v29[1];
  *v22 = v29[0];
  *(v22 + 1) = v24;
  v25 = v29[3];
  *(v22 + 2) = v29[2];
  *(v22 + 3) = v25;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
  v26 = sub_24B75BF48();
  LOBYTE(v8) = sub_24B75B9A8();
  sub_24B6B8DE8(v18, a2, &qword_27F0351A0, &qword_24B762630);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351B0, &qword_24B762640);
  v28 = a2 + *(result + 36);
  *v28 = v26;
  *(v28 + 8) = v8;
  return result;
}

uint64_t sub_24B7024C0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v2 = sub_24B75BAE8();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351B8, &qword_24B762648);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351C0, &qword_24B762650);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351C8, &qword_24B762658);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351D0, &qword_24B762660);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v45[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v45[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v45[-v27];
  sub_24B75B8A8();
  v29 = sub_24B75BA68();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = sub_24B75BAA8();
  sub_24B6B9CD4(v13, &qword_27F0351C0, &qword_24B762650);
  KeyPath = swift_getKeyPath();
  v32 = &v18[*(v15 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  if (v46)
  {
    v33 = sub_24B75BF18();
  }

  else
  {
    v33 = sub_24B75BF38();
  }

  v34 = v33;
  sub_24B6B8DE8(v18, v25, &qword_27F0351C8, &qword_24B762658);
  *&v25[*(v19 + 36)] = v34;
  sub_24B6B8DE8(v25, v28, &qword_27F0351D0, &qword_24B762660);
  sub_24B75B8C8();
  sub_24B75BA28();
  v36 = v48;
  v35 = v49;
  v37 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277CE0A10], v50);
  v38 = sub_24B75BB28();

  (*(v35 + 8))(v36, v37);
  v39 = swift_getKeyPath();
  v40 = &v9[*(v47 + 36)];
  *v40 = v39;
  v40[1] = v38;
  sub_24B6B9D34(v28, v22, &qword_27F0351D0, &qword_24B762660);
  v41 = v51;
  sub_24B6B9D34(v9, v51, &qword_27F0351B8, &qword_24B762648);
  v42 = v52;
  sub_24B6B9D34(v22, v52, &qword_27F0351D0, &qword_24B762660);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0351D8, &qword_24B762698);
  sub_24B6B9D34(v41, v42 + *(v43 + 48), &qword_27F0351B8, &qword_24B762648);
  sub_24B6B9CD4(v9, &qword_27F0351B8, &qword_24B762648);
  sub_24B6B9CD4(v28, &qword_27F0351D0, &qword_24B762660);
  sub_24B6B9CD4(v41, &qword_27F0351B8, &qword_24B762648);
  return sub_24B6B9CD4(v22, &qword_27F0351D0, &qword_24B762660);
}

uint64_t sub_24B70297C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B75B658();
  *a1 = result;
  return result;
}

uint64_t sub_24B7029A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B75B668();
}

unint64_t sub_24B7029D4()
{
  result = qword_27F0351E0;
  if (!qword_27F0351E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0351B0, &qword_24B762640);
    sub_24B702A8C();
    sub_24B6C743C(&qword_27F0346C8, &qword_27F034590, &qword_24B75F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351E0);
  }

  return result;
}

unint64_t sub_24B702A8C()
{
  result = qword_27F0351E8;
  if (!qword_27F0351E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0351A0, &qword_24B762630);
    sub_24B702B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351E8);
  }

  return result;
}

unint64_t sub_24B702B18()
{
  result = qword_27F0351F0;
  if (!qword_27F0351F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035198, &qword_24B762628);
    sub_24B6C743C(&qword_27F0351F8, &qword_27F035200, &unk_24B7626A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0351F0);
  }

  return result;
}

uint64_t sub_24B702BE0(uint64_t a1)
{
  v2 = sub_24B7031D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702C1C(uint64_t a1)
{
  v2 = sub_24B7031D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B702C58()
{
  if (*v0)
  {
    result = 0x7463697274736572;
  }

  else
  {
    result = 0x6465776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_24B702C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B702D7C(uint64_t a1)
{
  v2 = sub_24B703128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702DB8(uint64_t a1)
{
  v2 = sub_24B703128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B702DF4(uint64_t a1)
{
  v2 = sub_24B70317C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B702E30(uint64_t a1)
{
  v2 = sub_24B70317C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SampleContentPlaybackRestriction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035208, &qword_24B7626B0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035210, &qword_24B7626B8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035218, &qword_24B7626C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B703128();
  sub_24B75C738();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B70317C();
    sub_24B75C638();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B7031D0();
    sub_24B75C638();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B703128()
{
  result = qword_27F035220;
  if (!qword_27F035220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035220);
  }

  return result;
}

unint64_t sub_24B70317C()
{
  result = qword_27F035228;
  if (!qword_27F035228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035228);
  }

  return result;
}

unint64_t sub_24B7031D0()
{
  result = qword_27F035230;
  if (!qword_27F035230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035230);
  }

  return result;
}

uint64_t SampleContentPlaybackRestriction.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B7032B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7032FC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24B7032FC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035270, &qword_24B762A40);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035278, &qword_24B762A48);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035280, &unk_24B762A50);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B703128();
  v15 = v32;
  sub_24B75C728();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B75C628();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B6B9E04();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B75C568();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v24 = &type metadata for SampleContentPlaybackRestriction;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B70317C();
    sub_24B75C598();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B7031D0();
    sub_24B75C598();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B703800()
{
  result = qword_27F035238;
  if (!qword_27F035238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035238);
  }

  return result;
}

unint64_t sub_24B703858()
{
  result = qword_27F035240;
  if (!qword_27F035240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035240);
  }

  return result;
}

unint64_t sub_24B7038B0()
{
  result = qword_27F035248;
  if (!qword_27F035248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035248);
  }

  return result;
}

unint64_t sub_24B703908()
{
  result = qword_27F035250;
  if (!qword_27F035250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035250);
  }

  return result;
}

unint64_t sub_24B703960()
{
  result = qword_27F035258;
  if (!qword_27F035258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035258);
  }

  return result;
}

unint64_t sub_24B7039B8()
{
  result = qword_27F035260;
  if (!qword_27F035260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035260);
  }

  return result;
}

unint64_t sub_24B703A10()
{
  result = qword_27F035268;
  if (!qword_27F035268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035268);
  }

  return result;
}

uint64_t sub_24B703A68()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656863746566;
  }
}

uint64_t sub_24B703ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7059C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B703AE4(uint64_t a1)
{
  v2 = sub_24B70533C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703B20(uint64_t a1)
{
  v2 = sub_24B70533C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B75C6B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B703BFC(uint64_t a1)
{
  v2 = sub_24B70549C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703C38(uint64_t a1)
{
  v2 = sub_24B70549C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703C74(uint64_t a1)
{
  v2 = sub_24B705448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703CB0(uint64_t a1)
{
  v2 = sub_24B705448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B703CEC(uint64_t a1)
{
  v2 = sub_24B7053F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B703D28(uint64_t a1)
{
  v2 = sub_24B7053F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035288, &qword_24B762A60);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035290, &qword_24B762A68);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035298, &qword_24B762A70);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v33 = type metadata accessor for EditorialDetailContent();
  v12 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState();
  v16 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352A0, &unk_24B762A78);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70533C();
  sub_24B75C738();
  sub_24B705390(v42, v18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v26 = (*(*(v25 - 8) + 48))(v18, 2, v25);
  if (v26)
  {
    if (v26 == 1)
    {
      v44 = 1;
      sub_24B705448();
      v27 = v34;
      sub_24B75C638();
      v29 = v35;
      v28 = v36;
    }

    else
    {
      v45 = 2;
      sub_24B7053F4();
      v27 = v39;
      sub_24B75C638();
      v29 = v40;
      v28 = v41;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    sub_24B7054F0(v18, v14, type metadata accessor for EditorialDetailContent);
    v43 = 0;
    sub_24B70549C();
    sub_24B75C638();
    sub_24B7055A0(&qword_27F0352C8, type metadata accessor for EditorialDetailContent);
    v30 = v38;
    sub_24B75C6A8();
    (*(v37 + 8))(v11, v30);
    sub_24B705B40(v14, type metadata accessor for EditorialDetailContent);
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t EditorialDetailLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352D0, &qword_24B762A88);
  v57 = *(v61 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352D8, &qword_24B762A90);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v52 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352E0, &qword_24B762A98);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0352E8, &unk_24B762AA0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  State = type metadata accessor for EditorialDetailLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B70533C();
  v25 = v64;
  sub_24B75C728();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v26 = State;
  v52 = v19;
  v53 = v22;
  v27 = v59;
  v28 = v60;
  v64 = 0;
  v29 = v61;
  v30 = v62;
  v31 = sub_24B75C628();
  v32 = (2 * *(v31 + 16)) | 1;
  v66 = v31;
  v67 = v31 + 32;
  v68 = 0;
  v69 = v32;
  v33 = sub_24B6B9E08();
  if (v33 == 3 || v68 != v69 >> 1)
  {
    v37 = v15;
    v38 = sub_24B75C568();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v40 = v26;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v63 + 8))(v37, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v70 = 1;
      sub_24B705448();
      v34 = v58;
      v35 = v64;
      sub_24B75C598();
      v36 = v63;
      if (v35)
      {
        goto LABEL_11;
      }

      (*(v55 + 8))(v34, v54);
      (*(v36 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
      v47 = v53;
      (*(*(v46 - 8) + 56))(v53, 1, 2, v46);
    }

    else
    {
      v70 = 2;
      sub_24B7053F4();
      v44 = v64;
      sub_24B75C598();
      v45 = v63;
      if (v44)
      {
        goto LABEL_11;
      }

      (*(v57 + 8))(v28, v29);
      (*(v45 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
      v47 = v53;
      (*(*(v51 - 8) + 56))(v53, 2, 2, v51);
    }

    v50 = v30;
  }

  else
  {
    v70 = 0;
    sub_24B70549C();
    v43 = v64;
    sub_24B75C598();
    if (v43)
    {
LABEL_11:
      (*(v63 + 8))(v15, v12);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    type metadata accessor for EditorialDetailContent();
    sub_24B7055A0(&qword_27F0352F0, type metadata accessor for EditorialDetailContent);
    v48 = v52;
    sub_24B75C618();
    (*(v56 + 8))(v11, v27);
    (*(v63 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    (*(*(v49 - 8) + 56))(v48, 0, 2, v49);
    v47 = v53;
    sub_24B7054F0(v48, v53, type metadata accessor for EditorialDetailLoadState);
    v50 = v30;
  }

  sub_24B7054F0(v47, v50, type metadata accessor for EditorialDetailLoadState);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t EditorialDetailLoadState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialDetailContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B705390(v2, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v13 = (*(*(v12 - 8) + 48))(v11, 2, v12);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    return MEMORY[0x24C2489B0](v14);
  }

  else
  {
    sub_24B7054F0(v11, v7, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B705B40(v7, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t EditorialDetailLoadState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EditorialDetailContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState();
  v7 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75C6D8();
  sub_24B705390(v1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v11 = (*(*(v10 - 8) + 48))(v9, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x24C2489B0](v12);
  }

  else
  {
    sub_24B7054F0(v9, v5, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(v15);
    sub_24B705B40(v5, type metadata accessor for EditorialDetailContent);
  }

  return sub_24B75C718();
}

uint64_t sub_24B704D84(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for EditorialDetailContent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B705390(v4, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v15 = (*(*(v14 - 8) + 48))(v13, 2, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    return MEMORY[0x24C2489B0](v16);
  }

  else
  {
    sub_24B7054F0(v13, v9, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(a1);
    return sub_24B705B40(v9, type metadata accessor for EditorialDetailContent);
  }
}

uint64_t sub_24B704EF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for EditorialDetailContent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B75C6D8();
  sub_24B705390(v4, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v14 = (*(*(v13 - 8) + 48))(v12, 2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    MEMORY[0x24C2489B0](v15);
  }

  else
  {
    sub_24B7054F0(v12, v8, type metadata accessor for EditorialDetailContent);
    MEMORY[0x24C2489B0](0);
    EditorialDetailContent.hash(into:)(v18);
    sub_24B705B40(v8, type metadata accessor for EditorialDetailContent);
  }

  return sub_24B75C718();
}

uint64_t _s20FitnessProductDetail09EditorialC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for EditorialDetailLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_24B705390(a1, &v23 - v14);
  sub_24B705390(a2, &v15[v17]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 2, v18);
  if (!v20)
  {
    sub_24B705390(v15, v11);
    if (!v19(&v15[v17], 2, v18))
    {
      sub_24B7054F0(&v15[v17], v7, type metadata accessor for EditorialDetailContent);
      v21 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v11, v7);
      sub_24B705B40(v7, type metadata accessor for EditorialDetailContent);
      sub_24B705B40(v11, type metadata accessor for EditorialDetailContent);
      sub_24B705B40(v15, type metadata accessor for EditorialDetailLoadState);
      return v21 & 1;
    }

    sub_24B705B40(v11, type metadata accessor for EditorialDetailContent);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v15[v17], 2, v18) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v15[v17], 2, v18) != 2)
  {
LABEL_9:
    sub_24B705AD8(v15);
    v21 = 0;
    return v21 & 1;
  }

  sub_24B705B40(v15, type metadata accessor for EditorialDetailLoadState);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_24B70533C()
{
  result = qword_27F0352A8;
  if (!qword_27F0352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352A8);
  }

  return result;
}

uint64_t sub_24B705390(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for EditorialDetailLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B7053F4()
{
  result = qword_27F0352B0;
  if (!qword_27F0352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352B0);
  }

  return result;
}

unint64_t sub_24B705448()
{
  result = qword_27F0352B8;
  if (!qword_27F0352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352B8);
  }

  return result;
}

unint64_t sub_24B70549C()
{
  result = qword_27F0352C0;
  if (!qword_27F0352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0352C0);
  }

  return result;
}

uint64_t sub_24B7054F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B7055A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B705654()
{
  result = qword_27F035300;
  if (!qword_27F035300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035300);
  }

  return result;
}

unint64_t sub_24B7056AC()
{
  result = qword_27F035308;
  if (!qword_27F035308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035308);
  }

  return result;
}

unint64_t sub_24B705704()
{
  result = qword_27F035310;
  if (!qword_27F035310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035310);
  }

  return result;
}

unint64_t sub_24B70575C()
{
  result = qword_27F035318;
  if (!qword_27F035318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035318);
  }

  return result;
}

unint64_t sub_24B7057B4()
{
  result = qword_27F035320;
  if (!qword_27F035320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035320);
  }

  return result;
}

unint64_t sub_24B70580C()
{
  result = qword_27F035328;
  if (!qword_27F035328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035328);
  }

  return result;
}

unint64_t sub_24B705864()
{
  result = qword_27F035330;
  if (!qword_27F035330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035330);
  }

  return result;
}

unint64_t sub_24B7058BC()
{
  result = qword_27F035338;
  if (!qword_27F035338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035338);
  }

  return result;
}

unint64_t sub_24B705914()
{
  result = qword_27F035340;
  if (!qword_27F035340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035340);
  }

  return result;
}

unint64_t sub_24B70596C()
{
  result = qword_27F035348;
  if (!qword_27F035348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035348);
  }

  return result;
}

uint64_t sub_24B7059C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656863746566 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B705AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B705B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

uint64_t sub_24B705BF0()
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];

  return sub_24B75BED8();
}

__n128 WorkoutDetailLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double WorkoutDetailLayout.sectionDensityFactor.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

double WorkoutDetailLayout.init(contentMargins:dynamicTypeSize:sectionDensityFactor:sizeClass:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, double *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  result = a3[1];
  v8 = *(a3 + 2);
  v9 = *a4;
  v5 = *(a1 + 32);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = v5;
  *(a5 + 33) = a2;
  *(a5 + 40) = v6;
  *(a5 + 48) = result;
  *(a5 + 56) = v8;
  *(a5 + 64) = v9;
  return result;
}

unint64_t sub_24B705CD0()
{
  v1 = 0x4D746E65746E6F63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x73616C43657A6973;
  }

  if (*v0)
  {
    v1 = 0x5463696D616E7964;
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

uint64_t sub_24B705D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B706B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B705D94(uint64_t a1)
{
  v2 = sub_24B706624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B705DD0(uint64_t a1)
{
  v2 = sub_24B706624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035358, &qword_24B762F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(v3 + 32);
  v23 = *(v3 + 33);
  v11 = *(v3 + 5);
  v12 = *(v3 + 6);
  v21 = *(v3 + 7);
  v22 = v11;
  v20 = *(v3 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B706624();
  sub_24B75C738();
  v14 = *v3;
  v26 = v3[1];
  v25 = v14;
  v27 = v10;
  v24 = 0;
  sub_24B706678();
  sub_24B75C668();
  if (!v2)
  {
    v16 = v21;
    v15 = v22;
    v17 = v20;
    LOBYTE(v25) = v23;
    v24 = 1;
    sub_24B7066CC();
    sub_24B75C6A8();
    *&v25 = v15;
    *(&v25 + 1) = v12;
    *&v26 = v16;
    v24 = 2;
    sub_24B706720();
    sub_24B75C6A8();
    LOBYTE(v25) = v17;
    v24 = 3;
    sub_24B706774();
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutDetailLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035388, &qword_24B762F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B706624();
  sub_24B75C728();
  if (!v2)
  {
    v21 = 0;
    sub_24B7067C8();
    sub_24B75C5D8();
    v19 = v22;
    v20 = v23;
    v25 = v24;
    v21 = 1;
    sub_24B70681C();
    sub_24B75C618();
    v11 = v22;
    v21 = 2;
    sub_24B706870();
    sub_24B75C618();
    v13 = v22;
    v18 = v23;
    v21 = 3;
    sub_24B7068C4();
    sub_24B75C618();
    (*(v6 + 8))(v9, v5);
    v14 = v22;
    v15 = v25;
    v16 = v20;
    *a2 = v19;
    *(a2 + 16) = v16;
    *(a2 + 32) = v15;
    *(a2 + 33) = v11;
    *(a2 + 40) = v13;
    *(a2 + 56) = v18;
    *(a2 + 64) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailLayout.hash(into:)()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 32);
  v1 = *(v0 + 33);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 64);
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v1);
  MEMORY[0x24C2489B0](v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  MEMORY[0x24C2489B0](v4);
  return MEMORY[0x24C2489B0](v5);
}

uint64_t WorkoutDetailLayout.hashValue.getter()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 32);
  v1 = *(v0 + 33);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 64);
  sub_24B75C6D8();
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v1);
  MEMORY[0x24C2489B0](v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  MEMORY[0x24C2489B0](v4);
  MEMORY[0x24C2489B0](v5);
  return sub_24B75C718();
}

uint64_t sub_24B7064A0()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 32);
  v1 = *(v0 + 33);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 64);
  sub_24B75C6D8();
  sub_24B6BB698();
  MEMORY[0x24C2489B0](v1);
  MEMORY[0x24C2489B0](v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  MEMORY[0x24C2489B0](v4);
  MEMORY[0x24C2489B0](v5);
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail07WorkoutC6LayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 33);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_24B762F60)) & 0xF) != 0)
    {
      return result;
    }
  }

  v10 = v3 == *(a2 + 33) && v4 == *(a2 + 40);
  if (v5 != *(a2 + 48))
  {
    v10 = 0;
  }

  if (v6 != *(a2 + 56))
  {
    v10 = 0;
  }

  return v7 == *(a2 + 64) && v10;
}

unint64_t sub_24B706624()
{
  result = qword_27F035360;
  if (!qword_27F035360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035360);
  }

  return result;
}

unint64_t sub_24B706678()
{
  result = qword_27F035368;
  if (!qword_27F035368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035368);
  }

  return result;
}

unint64_t sub_24B7066CC()
{
  result = qword_27F035370;
  if (!qword_27F035370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035370);
  }

  return result;
}

unint64_t sub_24B706720()
{
  result = qword_27F035378;
  if (!qword_27F035378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035378);
  }

  return result;
}

unint64_t sub_24B706774()
{
  result = qword_27F035380;
  if (!qword_27F035380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035380);
  }

  return result;
}

unint64_t sub_24B7067C8()
{
  result = qword_27F035390;
  if (!qword_27F035390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035390);
  }

  return result;
}

unint64_t sub_24B70681C()
{
  result = qword_27F035398;
  if (!qword_27F035398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035398);
  }

  return result;
}

unint64_t sub_24B706870()
{
  result = qword_27F0353A0;
  if (!qword_27F0353A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353A0);
  }

  return result;
}

unint64_t sub_24B7068C4()
{
  result = qword_27F0353A8;
  if (!qword_27F0353A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353A8);
  }

  return result;
}

unint64_t sub_24B70691C()
{
  result = qword_27F0353B0;
  if (!qword_27F0353B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353B0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B706994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B7069D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_24B706A54()
{
  result = qword_27F0353B8;
  if (!qword_27F0353B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353B8);
  }

  return result;
}

unint64_t sub_24B706AAC()
{
  result = qword_27F0353C0;
  if (!qword_27F0353C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353C0);
  }

  return result;
}

unint64_t sub_24B706B04()
{
  result = qword_27F0353C8;
  if (!qword_27F0353C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353C8);
  }

  return result;
}

uint64_t sub_24B706B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76BE10 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B706CDC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B706D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      v10 = *i;
      v11 = i[1];
      v13 = i[2];
      v12 = i[3];
      v14 = i[4];
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v3 - 5) != *(i - 1) || v5 != v10)
        {
          v21 = *v3;
          v15 = i[4];
          v16 = sub_24B75C6B8();
          v14 = v15;
          v9 = v21;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v6 != v11 || v8 != v13)
      {
        v17 = v9;
        v18 = v14;
        v19 = sub_24B75C6B8();
        v14 = v18;
        v9 = v17;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if ((v7 != v12 || v9 != v14) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B706E90(uint64_t a1, uint64_t a2)
{
  v95 = sub_24B75B108();
  v99 = *(v95 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v95);
  v88 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v76 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  v9 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v76 - v10;
  v11 = sub_24B75B298();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v76 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034220, &unk_24B75E810);
  v19 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v21 = &v76 - v20;
  v100 = type metadata accessor for WorkoutDetailMusicTrack();
  v22 = *(*(v100 - 1) + 64);
  MEMORY[0x28223BE20](v100);
  v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v28 = (&v76 - v27);
  v29 = *(a1 + 16);
  if (v29 == *(a2 + 16))
  {
    if (!v29 || a1 == a2)
    {
      return 1;
    }

    v79 = v15;
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = a1 + v30;
    v32 = a2 + v30;
    v33 = (v12 + 48);
    v78 = (v12 + 32);
    v80 = (v12 + 8);
    v86 = (v99 + 48);
    v76 = (v99 + 32);
    v77 = (v99 + 8);
    v81 = *(v26 + 72);
    v82 = (v12 + 48);
    v83 = v11;
    v84 = v21;
    v87 = v24;
    v85 = &v76 - v27;
    while (1)
    {
      v91 = v31;
      sub_24B70EF78(v31, v28, type metadata accessor for WorkoutDetailMusicTrack);
      v92 = v29;
      v90 = v32;
      sub_24B70EF78(v32, v24, type metadata accessor for WorkoutDetailMusicTrack);
      v37 = *v28 == *v24 && v28[1] == v24[1];
      v38 = v97;
      if (!v37 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v39 = v100[5];
      v40 = v24 + v39;
      v41 = *(v96 + 48);
      v98 = v28 + v39;
      sub_24B6B9D34(v28 + v39, v21, &qword_27F034120, &unk_24B75E1E0);
      v99 = v40;
      sub_24B6B9D34(v40, &v21[v41], &qword_27F034120, &unk_24B75E1E0);
      v42 = *v33;
      if ((*v33)(v21, 1, v11) == 1)
      {
        if (v42(&v21[v41], 1, v11) != 1)
        {
          goto LABEL_35;
        }

        sub_24B6B9CD4(v21, &qword_27F034120, &unk_24B75E1E0);
        v24 = v87;
      }

      else
      {
        v43 = v89;
        sub_24B6B9D34(v21, v89, &qword_27F034120, &unk_24B75E1E0);
        if (v42(&v21[v41], 1, v11) == 1)
        {
          (*v80)(v43, v11);
LABEL_35:
          sub_24B6B9CD4(v21, &qword_27F034220, &unk_24B75E810);
          v24 = v87;
          break;
        }

        v44 = &v21[v41];
        v45 = v43;
        v46 = v79;
        (*v78)(v79, v44, v11);
        sub_24B6A80B8(&qword_27F034230, MEMORY[0x277D09D68]);
        v47 = sub_24B75C2D8();
        v48 = *v80;
        (*v80)(v46, v11);
        v49 = v45;
        v21 = v84;
        v48(v49, v11);
        sub_24B6B9CD4(v21, &qword_27F034120, &unk_24B75E1E0);
        v24 = v87;
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      v50 = type metadata accessor for WorkoutDetailArtwork();
      v51 = *(v50 + 20);
      v52 = *(v94 + 48);
      sub_24B6B9D34(&v98[v51], v38, &qword_27F034118, &qword_24B75E1D8);
      sub_24B6B9D34(v99 + v51, v38 + v52, &qword_27F034118, &qword_24B75E1D8);
      v53 = *v86;
      v54 = v95;
      if ((*v86)(v38, 1, v95) == 1)
      {
        if (v53(v38 + v52, 1, v54) != 1)
        {
          goto LABEL_37;
        }

        sub_24B6B9CD4(v38, &qword_27F034118, &qword_24B75E1D8);
        v11 = v83;
        v28 = v85;
      }

      else
      {
        sub_24B6B9D34(v38, v93, &qword_27F034118, &qword_24B75E1D8);
        if (v53(v38 + v52, 1, v54) == 1)
        {
          (*v77)(v93, v54);
LABEL_37:
          sub_24B6B9CD4(v38, &qword_27F034218, &unk_24B761640);
          v28 = v85;
          break;
        }

        v55 = v38 + v52;
        v56 = v93;
        v57 = v88;
        (*v76)(v88, v55, v54);
        sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260]);
        v58 = sub_24B75C2D8();
        v59 = *v77;
        v60 = v57;
        v21 = v84;
        (*v77)(v60, v54);
        v59(v56, v54);
        sub_24B6B9CD4(v97, &qword_27F034118, &qword_24B75E1D8);
        v11 = v83;
        v28 = v85;
        if ((v58 & 1) == 0)
        {
          break;
        }
      }

      v61 = *(v50 + 24);
      v62 = &v98[v61];
      v63 = *&v98[v61];
      v64 = *&v98[v61 + 8];
      v65 = (v99 + v61);
      if ((*v62 != *v65 || v64 != v65[1]) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v66 = v100[6];
      sub_24B75B2D8();
      v67 = MEMORY[0x277D09E00];
      sub_24B6A80B8(&qword_27F034B48, MEMORY[0x277D09E00]);
      sub_24B6A80B8(&qword_2810F7AC8, v67);
      v33 = v82;
      if ((sub_24B75B338() & 1) == 0 || *(v28 + v100[7]) != *(v24 + v100[7]))
      {
        break;
      }

      v68 = v100[8];
      v69 = *(v28 + v68);
      v70 = *(v28 + v68 + 8);
      v71 = (v24 + v68);
      if ((v69 != *v71 || v70 != v71[1]) && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v72 = v100[9];
      v73 = *(v28 + v72);
      v74 = *(v28 + v72 + 8);
      v75 = (v24 + v72);
      if (v73 == *v75 && v74 == v75[1])
      {
        sub_24B70EFE0(v24, type metadata accessor for WorkoutDetailMusicTrack);
        sub_24B70EFE0(v28, type metadata accessor for WorkoutDetailMusicTrack);
        v35 = v92;
      }

      else
      {
        v34 = sub_24B75C6B8();
        sub_24B70EFE0(v24, type metadata accessor for WorkoutDetailMusicTrack);
        sub_24B70EFE0(v28, type metadata accessor for WorkoutDetailMusicTrack);
        v35 = v92;
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

      v32 = v90 + v81;
      v31 = v91 + v81;
      result = 1;
      v29 = v35 - 1;
      if (!v29)
      {
        return result;
      }
    }

    sub_24B70EFE0(v24, type metadata accessor for WorkoutDetailMusicTrack);
    sub_24B70EFE0(v28, type metadata accessor for WorkoutDetailMusicTrack);
  }

  return 0;
}

uint64_t sub_24B7078B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailArtwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034138, &unk_24B7634A0);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v14 = &v60 - v13;
  v65 = type metadata accessor for WorkoutDetailTrainer();
  v15 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v63 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v27 = *(v19 + 72);
  v61 = v11;
  v62 = v27;
  v28 = &qword_27F0340C8;
  v29 = &qword_24B75DFB0;
  v30 = v65;
  v60 = &v60 - v20;
  while (1)
  {
    v67 = v24;
    sub_24B70EF78(v24, v21, type metadata accessor for WorkoutDetailTrainer);
    v68 = v25;
    v69 = v22;
    sub_24B70EF78(v25, v17, type metadata accessor for WorkoutDetailTrainer);
    v33 = *(v66 + 48);
    sub_24B6B9D34(v21, v14, v28, v29);
    sub_24B6B9D34(v17, &v14[v33], v28, v29);
    v34 = *v26;
    v35 = v29;
    v36 = v28;
    v37 = v63;
    if ((*v26)(v14, 1, v63) != 1)
    {
      break;
    }

    if (v34(&v14[v33], 1, v37) != 1)
    {
      goto LABEL_29;
    }

    v28 = v36;
    v38 = v36;
    v29 = v35;
    sub_24B6B9CD4(v14, v38, v35);
    v39 = v69;
LABEL_12:
    v45 = v30[5];
    v46 = &v21[v45];
    v47 = *&v21[v45 + 8];
    v48 = &v17[v45];
    v49 = *(v48 + 1);
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_30;
      }

      v50 = *v46 == *v48 && v47 == v49;
      if (!v50 && (sub_24B75C6B8() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v49)
    {
      goto LABEL_30;
    }

    v51 = v30[6];
    v52 = *&v21[v51];
    v53 = *&v21[v51 + 8];
    v54 = &v17[v51];
    if ((v52 != *v54 || v53 != *(v54 + 1)) && (sub_24B75C6B8() & 1) == 0)
    {
      goto LABEL_30;
    }

    v55 = v30[7];
    v56 = *&v21[v55];
    v57 = *&v21[v55 + 8];
    v58 = &v17[v55];
    if (v56 == *v58 && v57 == *(v58 + 1))
    {
      sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
      sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailTrainer);
      v32 = v68;
    }

    else
    {
      v31 = sub_24B75C6B8();
      sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
      sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailTrainer);
      v32 = v68;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    v25 = v32 + v62;
    v24 = v67 + v62;
    v22 = v39 - 1;
    if (!v22)
    {
      return 1;
    }
  }

  v40 = v61;
  sub_24B6B9D34(v14, v61, v36, v35);
  if (v34(&v14[v33], 1, v37) != 1)
  {
    v41 = v26;
    v42 = v64;
    sub_24B6BBFC4(&v14[v33], v64);
    v43 = static WorkoutDetailArtwork.== infix(_:_:)(v40, v42);
    v44 = v42;
    v26 = v41;
    sub_24B70EFE0(v44, type metadata accessor for WorkoutDetailArtwork);
    sub_24B70EFE0(v40, type metadata accessor for WorkoutDetailArtwork);
    sub_24B6B9CD4(v14, v36, v35);
    v21 = v60;
    v30 = v65;
    v28 = v36;
    v29 = v35;
    v39 = v69;
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  sub_24B70EFE0(v40, type metadata accessor for WorkoutDetailArtwork);
  v21 = v60;
LABEL_29:
  sub_24B6B9CD4(v14, &qword_27F034138, &unk_24B7634A0);
LABEL_30:
  sub_24B70EFE0(v17, type metadata accessor for WorkoutDetailTrainer);
  sub_24B70EFE0(v21, type metadata accessor for WorkoutDetailTrainer);
  return 0;
}

uint64_t sub_24B707E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProgramLinkAnnotation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_24B70EF78(v14, v11, type metadata accessor for WorkoutProgramLinkAnnotation);
      sub_24B70EF78(v15, v7, type metadata accessor for WorkoutProgramLinkAnnotation);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = *(v11 + 1) == *(v7 + 1) && *(v11 + 2) == *(v7 + 2);
      if (!v17 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      v19 = sub_24B75B0F8();
      sub_24B70EFE0(v7, type metadata accessor for WorkoutProgramLinkAnnotation);
      sub_24B70EFE0(v11, type metadata accessor for WorkoutProgramLinkAnnotation);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_24B70EFE0(v7, type metadata accessor for WorkoutProgramLinkAnnotation);
    sub_24B70EFE0(v11, type metadata accessor for WorkoutProgramLinkAnnotation);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_24B708070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B75C6B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t WorkoutDetail.accessibility.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B75AFE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutDetail.activityTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail() + 20));
}

uint64_t type metadata accessor for WorkoutDetail()
{
  result = qword_2810F7968;
  if (!qword_2810F7968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutDetail.audioHintLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 24);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.audioLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 28);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.contributors.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail() + 44));
}

uint64_t WorkoutDetail.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 48);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.descriptionShorthand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 52);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 56);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetail() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetail.musicPlaylistIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetail() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetail.musicTracks.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail() + 76));
}

uint64_t WorkoutDetail.previewStreamingProgramIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetail() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetail.sampleContentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetail() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetail.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 92);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 96);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.streamingProgramIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutDetail() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutDetail.subtitleLanguages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 104);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 108);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutDetail() + 112);
  v4 = sub_24B75AFE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutDetail.trainers.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutDetail() + 116));
}

uint64_t WorkoutDetail.bookmarkStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutDetail();
  *a1 = *(v1 + *(result + 120));
  return result;
}

uint64_t WorkoutDetail.bookmarkStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WorkoutDetail();
  *(v1 + *(result + 120)) = v2;
  return result;
}

uint64_t WorkoutDetail.downloadStatus.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WorkoutDetail();
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 10);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 10) = v4;
  return result;
}

uint64_t WorkoutDetail.downloadStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  result = type metadata accessor for WorkoutDetail();
  v6 = v1 + *(result + 124);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 10) = v4;
  return result;
}

uint64_t WorkoutDetail.init(accessibility:activityTypes:audioHintLanguages:audioLanguages:artwork:artworkCropCode:bookmarkStatus:completedCount:contributors:description:descriptionShorthand:detail:downloadStatus:identifier:mediaType:musicPlaylistIdentifier:musicPlaylistURL:musicTracks:previewStreamingURL:previewStreamingProgramIdentifier:sampleContentIdentifier:sharingURL:streamingURL:streamingProgramIdentifier:subtitleLanguages:summary:title:trainers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v51 = *a7;
  v57 = *a14;
  v55 = *(a14 + 10);
  v56 = *(a14 + 4);
  v38 = type metadata accessor for WorkoutDetail();
  v39 = a9 + v38[31];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 10) = 1;
  v40 = sub_24B75AFE8();
  v41 = *(*(v40 - 8) + 32);
  v41(a9, a1, v40);
  *(a9 + v38[5]) = a2;
  v41(a9 + v38[6], a3, v40);
  v41(a9 + v38[7], a4, v40);
  sub_24B6BBFC4(a5, a9 + v38[8]);
  sub_24B6B8DE8(a6, a9 + v38[9], &qword_27F034600, &unk_24B75F9A0);
  *(a9 + v38[30]) = v51;
  *(a9 + v38[10]) = a8;
  *(a9 + v38[11]) = a10;
  v41(a9 + v38[12], a11, v40);
  v41(a9 + v38[13], a12, v40);
  v41(a9 + v38[14], a13, v40);
  v42 = (a9 + v38[15]);
  *v42 = a15;
  v42[1] = a16;
  *v39 = v57;
  *(v39 + 8) = v56;
  *(v39 + 10) = v55;
  *(a9 + v38[16]) = a17;
  v43 = (a9 + v38[17]);
  *v43 = a18;
  v43[1] = a19;
  sub_24B6B8DE8(a20, a9 + v38[18], &qword_27F034118, &qword_24B75E1D8);
  *(a9 + v38[19]) = a21;
  sub_24B6B8DE8(a22, a9 + v38[20], &qword_27F034118, &qword_24B75E1D8);
  v44 = (a9 + v38[21]);
  *v44 = a23;
  v44[1] = a24;
  v45 = (a9 + v38[22]);
  *v45 = a25;
  v45[1] = a26;
  v46 = v38[23];
  v47 = sub_24B75B108();
  v48 = *(*(v47 - 8) + 32);
  v48(a9 + v46, a27, v47);
  v48(a9 + v38[24], a28, v47);
  v49 = (a9 + v38[25]);
  *v49 = a29;
  v49[1] = a30;
  v41(a9 + v38[26], a31, v40);
  v41(a9 + v38[27], a32, v40);
  result = (v41)(a9 + v38[28], a33, v40);
  *(a9 + v38[29]) = a34;
  return result;
}

unint64_t sub_24B708F74(char a1)
{
  result = 0x6269737365636361;
  switch(a1)
  {
    case 1:
      result = 0x7974697669746361;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E614C6F69647561;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0x436B726F77747261;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0x75626972746E6F63;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6C6961746564;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x707954616964656DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x617254636973756DLL;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
      result = 0x55676E6972616873;
      break;
    case 20:
      result = 0x6E696D6165727473;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x7972616D6D7573;
      break;
    case 24:
      result = 0x656C746974;
      break;
    case 25:
      result = 0x7372656E69617274;
      break;
    case 26:
      result = 0x6B72616D6B6F6F62;
      break;
    case 27:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B7092E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B70E6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B709314(uint64_t a1)
{
  v2 = sub_24B709CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B709350(uint64_t a1)
{
  v2 = sub_24B709CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353D0, &qword_24B7631A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B709CE8();
  sub_24B75C738();
  LOBYTE(v46) = 0;
  sub_24B75AFE8();
  sub_24B6A80B8(&qword_27F035038, MEMORY[0x277CC8C40]);
  sub_24B75C6A8();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutDetail();
    v46 = *(v3 + v11[5]);
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353E0, &qword_24B7631A8);
    sub_24B70C114(&qword_27F0353E8);
    sub_24B75C6A8();
    v12 = v11[6];
    LOBYTE(v46) = 2;
    sub_24B75C6A8();
    v13 = v11[7];
    LOBYTE(v46) = 3;
    sub_24B75C6A8();
    v45 = v11[8];
    LOBYTE(v46) = 4;
    type metadata accessor for WorkoutDetailArtwork();
    sub_24B6A80B8(&qword_27F0340E0, type metadata accessor for WorkoutDetailArtwork);
    sub_24B75C6A8();
    v45 = v11[9];
    LOBYTE(v46) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
    sub_24B70C180(&qword_27F034AF8);
    sub_24B75C6A8();
    v14 = *(v3 + v11[10]);
    LOBYTE(v46) = 6;
    sub_24B75C698();
    v46 = *(v3 + v11[11]);
    v49 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353F0, &qword_24B7631B0);
    sub_24B70C268(&qword_27F0353F8, sub_24B709D3C);
    sub_24B75C6A8();
    v15 = v11[12];
    LOBYTE(v46) = 8;
    sub_24B75C6A8();
    v16 = v11[13];
    LOBYTE(v46) = 9;
    sub_24B75C6A8();
    v17 = v11[14];
    LOBYTE(v46) = 10;
    sub_24B75C6A8();
    v18 = (v3 + v11[15]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v46) = 11;
    sub_24B75C678();
    LOBYTE(v46) = *(v3 + v11[16]);
    v49 = 12;
    sub_24B709D90();
    sub_24B75C668();
    v21 = (v3 + v11[17]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v46) = 13;
    sub_24B75C648();
    v45 = v11[18];
    LOBYTE(v46) = 14;
    v24 = sub_24B75B108();
    v44 = sub_24B6A80B8(&qword_27F0341E0, MEMORY[0x277CC9260]);
    v45 = v24;
    sub_24B75C668();
    v46 = *(v3 + v11[19]);
    v49 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035410, &unk_24B7631B8);
    sub_24B70C388(&qword_27F035418, &qword_27F035420);
    sub_24B75C6A8();
    v25 = v11[20];
    LOBYTE(v46) = 16;
    sub_24B75C668();
    v26 = (v3 + v11[21]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v46) = 17;
    sub_24B75C648();
    v29 = (v3 + v11[22]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v46) = 18;
    sub_24B75C648();
    v32 = v11[23];
    LOBYTE(v46) = 19;
    sub_24B75C6A8();
    v33 = v11[24];
    LOBYTE(v46) = 20;
    sub_24B75C6A8();
    v34 = (v3 + v11[25]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v46) = 21;
    sub_24B75C648();
    v37 = v11[26];
    LOBYTE(v46) = 22;
    sub_24B75C6A8();
    v38 = v11[27];
    LOBYTE(v46) = 23;
    sub_24B75C6A8();
    v39 = v11[28];
    LOBYTE(v46) = 24;
    sub_24B75C6A8();
    v46 = *(v3 + v11[29]);
    v49 = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
    sub_24B709DE4(&qword_27F035428, &qword_27F035430);
    sub_24B75C6A8();
    LOBYTE(v46) = *(v3 + v11[30]);
    v49 = 26;
    sub_24B709E80();
    sub_24B75C6A8();
    v40 = (v3 + v11[31]);
    v41 = *v40;
    v42 = *(v40 + 4);
    LOBYTE(v40) = *(v40 + 10);
    v46 = v41;
    v47 = v42;
    v48 = v40;
    v49 = 27;
    sub_24B709ED4();
    sub_24B75C668();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B709CE8()
{
  result = qword_27F0353D8;
  if (!qword_27F0353D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0353D8);
  }

  return result;
}

unint64_t sub_24B709D3C()
{
  result = qword_27F035400;
  if (!qword_27F035400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035400);
  }

  return result;
}

unint64_t sub_24B709D90()
{
  result = qword_27F035408;
  if (!qword_27F035408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035408);
  }

  return result;
}

uint64_t sub_24B709DE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034990, &qword_24B75FD50);
    sub_24B6A80B8(a2, type metadata accessor for WorkoutDetailTrainer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B709E80()
{
  result = qword_27F035438;
  if (!qword_27F035438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035438);
  }

  return result;
}

unint64_t sub_24B709ED4()
{
  result = qword_27F035440;
  if (!qword_27F035440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035440);
  }

  return result;
}

uint64_t WorkoutDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_24B75B108();
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  MEMORY[0x28223BE20](v3);
  v131 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v129 = v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = v120 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  v13 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v138 = v120 - v14;
  v141 = type metadata accessor for WorkoutDetailArtwork();
  v15 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v140 = v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_24B75AFE8();
  v144 = *(v149 - 8);
  v17 = v144[8];
  MEMORY[0x28223BE20](v149);
  v132 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = v120 - v20;
  MEMORY[0x28223BE20](v21);
  v128 = v120 - v22;
  MEMORY[0x28223BE20](v23);
  v135 = v120 - v24;
  MEMORY[0x28223BE20](v25);
  v136 = v120 - v26;
  MEMORY[0x28223BE20](v27);
  v137 = v120 - v28;
  MEMORY[0x28223BE20](v29);
  v145 = v120 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v120 - v32;
  MEMORY[0x28223BE20](v34);
  v147 = v120 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035448, &qword_24B7631C8);
  v146 = *(v148 - 8);
  v36 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v38 = v120 - v37;
  v39 = type metadata accessor for WorkoutDetail();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &v42[*(v43 + 124)];
  *v44 = 0;
  *(v44 + 4) = 0;
  v44[10] = 1;
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B709CE8();
  v150 = v38;
  v46 = v151;
  sub_24B75C728();
  if (v46)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v145;
  v124 = v44;
  v126 = a1;
  v125 = v39;
  v151 = v42;
  LOBYTE(v152) = 0;
  v48 = sub_24B6A80B8(&qword_27F035080, MEMORY[0x277CC8C40]);
  v49 = v149;
  sub_24B75C618();
  v51 = v49;
  v52 = v144 + 4;
  v53 = v144[4];
  v53(v151, v147, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353E0, &qword_24B7631A8);
  v155 = 1;
  sub_24B70C114(&qword_27F035450);
  sub_24B75C618();
  v122 = v52;
  v121 = v53;
  v54 = v125;
  *&v151[v125[5]] = v152;
  LOBYTE(v152) = 2;
  v123 = 0;
  sub_24B75C618();
  v55 = v121;
  v121(&v151[v54[6]], v33, v51);
  LOBYTE(v152) = 3;
  sub_24B75C618();
  v120[1] = v48;
  v55(&v151[v54[7]], v47, v51);
  LOBYTE(v152) = 4;
  sub_24B6A80B8(&qword_27F0340F0, type metadata accessor for WorkoutDetailArtwork);
  v56 = v140;
  sub_24B75C618();
  sub_24B6BBFC4(v56, &v151[v54[8]]);
  LOBYTE(v152) = 5;
  sub_24B70C180(&qword_27F034B18);
  v57 = v138;
  sub_24B75C618();
  sub_24B6B8DE8(v57, &v151[v54[9]], &qword_27F034600, &unk_24B75F9A0);
  LOBYTE(v152) = 6;
  *&v151[v54[10]] = sub_24B75C608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0353F0, &qword_24B7631B0);
  v155 = 7;
  sub_24B70C268(&qword_27F035458, sub_24B70C2E0);
  sub_24B75C618();
  v147 = 0;
  *&v151[v125[11]] = v152;
  LOBYTE(v152) = 8;
  v76 = v137;
  v77 = v147;
  v78 = v148;
  sub_24B75C618();
  v147 = v77;
  if (v77)
  {
    (*(v146 + 8))(v150, v78);
    v79 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    LODWORD(v139) = 0;
    LODWORD(v140) = 0;
    LODWORD(v141) = 0;
    LODWORD(v145) = 0;
    LODWORD(v146) = 0;
    LODWORD(v148) = 0;
    LODWORD(v150) = 0;
    v80 = &v156;
LABEL_49:
    *(v80 - 64) = 1;
    goto LABEL_5;
  }

  v55(&v151[v125[12]], v76, v149);
  LOBYTE(v152) = 9;
  v81 = v147;
  sub_24B75C618();
  v147 = v81;
  if (v81)
  {
    (*(v146 + 8))(v150, v148);
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    LODWORD(v139) = 0;
    LODWORD(v140) = 0;
    LODWORD(v141) = 0;
    LODWORD(v145) = 0;
    LODWORD(v146) = 0;
    LODWORD(v148) = 0;
    LODWORD(v150) = 0;
    LODWORD(v129) = 1;
    v79 = 1;
  }

  else
  {
    v121(&v151[v125[13]], v136, v149);
    LOBYTE(v152) = 10;
    v82 = v147;
    sub_24B75C618();
    v147 = v82;
    if (v82)
    {
      (*(v146 + 8))(v150, v148);
      LODWORD(v131) = 0;
      LODWORD(v132) = 0;
      LODWORD(v133) = 0;
      LODWORD(v134) = 0;
      LODWORD(v135) = 0;
      LODWORD(v136) = 0;
      LODWORD(v137) = 0;
      LODWORD(v138) = 0;
      LODWORD(v139) = 0;
      LODWORD(v140) = 0;
      LODWORD(v141) = 0;
      LODWORD(v145) = 0;
      LODWORD(v146) = 0;
      LODWORD(v148) = 0;
      LODWORD(v150) = 0;
      LODWORD(v129) = 1;
      v79 = 1;
      v80 = &v157;
      goto LABEL_49;
    }

    v121(&v151[v125[14]], v135, v149);
    LOBYTE(v152) = 11;
    v83 = v147;
    v84 = sub_24B75C5E8();
    v147 = v83;
    if (v83)
    {
      (*(v146 + 8))(v150, v148);
      LODWORD(v132) = 0;
      LODWORD(v133) = 0;
      LODWORD(v134) = 0;
      LODWORD(v135) = 0;
      LODWORD(v136) = 0;
      LODWORD(v137) = 0;
      LODWORD(v138) = 0;
      LODWORD(v139) = 0;
      LODWORD(v140) = 0;
      LODWORD(v141) = 0;
      LODWORD(v145) = 0;
      LODWORD(v146) = 0;
      LODWORD(v148) = 0;
      LODWORD(v150) = 0;
      LODWORD(v129) = 1;
      v79 = 1;
      LODWORD(v130) = 1;
      v80 = &v158;
      goto LABEL_49;
    }

    v86 = &v151[v125[15]];
    *v86 = v84;
    v86[1] = v85;
    v155 = 12;
    sub_24B70C334();
    v87 = v147;
    sub_24B75C5D8();
    v147 = v87;
    if (v87 || (v151[v125[16]] = v152, LOBYTE(v152) = 13, v88 = v147, v89 = sub_24B75C5B8(), (v147 = v88) != 0))
    {
      (*(v146 + 8))(v150, v148);
      LODWORD(v133) = 0;
      LODWORD(v134) = 0;
      LODWORD(v135) = 0;
      LODWORD(v136) = 0;
      LODWORD(v137) = 0;
      LODWORD(v138) = 0;
      LODWORD(v139) = 0;
      LODWORD(v140) = 0;
      LODWORD(v141) = 0;
      LODWORD(v145) = 0;
      LODWORD(v146) = 0;
      LODWORD(v148) = 0;
      LODWORD(v150) = 0;
      LODWORD(v129) = 1;
      v79 = 1;
      LODWORD(v130) = 1;
      LODWORD(v131) = 1;
      v80 = &v159;
      goto LABEL_49;
    }

    v91 = &v151[v125[17]];
    *v91 = v89;
    v91[1] = v90;
    LOBYTE(v152) = 14;
    sub_24B6A80B8(&qword_27F0341F8, MEMORY[0x277CC9260]);
    v92 = v147;
    sub_24B75C5D8();
    v147 = v92;
    if (v92)
    {
      (*(v146 + 8))(v150, v148);
      LODWORD(v134) = 0;
      LODWORD(v135) = 0;
      LODWORD(v136) = 0;
      LODWORD(v137) = 0;
      LODWORD(v138) = 0;
      LODWORD(v139) = 0;
      LODWORD(v140) = 0;
      LODWORD(v141) = 0;
      LODWORD(v145) = 0;
      LODWORD(v146) = 0;
      LODWORD(v148) = 0;
      LODWORD(v150) = 0;
      LODWORD(v129) = 1;
      v79 = 1;
      LODWORD(v130) = 1;
      LODWORD(v131) = 1;
      LODWORD(v132) = 1;
      LODWORD(v133) = 1;
    }

    else
    {
      sub_24B6B8DE8(v134, &v151[v125[18]], &qword_27F034118, &qword_24B75E1D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035410, &unk_24B7631B8);
      v155 = 15;
      sub_24B70C388(&qword_27F035470, &qword_27F035478);
      v93 = v147;
      sub_24B75C618();
      v147 = v93;
      if (v93)
      {
        (*(v146 + 8))(v150, v148);
        LODWORD(v135) = 0;
        LODWORD(v136) = 0;
        LODWORD(v137) = 0;
        LODWORD(v138) = 0;
        LODWORD(v139) = 0;
        LODWORD(v140) = 0;
        LODWORD(v141) = 0;
        LODWORD(v145) = 0;
        LODWORD(v146) = 0;
        LODWORD(v148) = 0;
        LODWORD(v150) = 0;
        LODWORD(v129) = 1;
        v79 = 1;
        LODWORD(v130) = 1;
        LODWORD(v131) = 1;
        LODWORD(v132) = 1;
        LODWORD(v133) = 1;
        LODWORD(v134) = 1;
      }

      else
      {
        *&v151[v125[19]] = v152;
        LOBYTE(v152) = 16;
        v94 = v147;
        sub_24B75C5D8();
        v147 = v94;
        if (v94)
        {
          (*(v146 + 8))(v150, v148);
          LODWORD(v136) = 0;
          LODWORD(v137) = 0;
          LODWORD(v138) = 0;
          LODWORD(v139) = 0;
          LODWORD(v140) = 0;
          LODWORD(v141) = 0;
          LODWORD(v145) = 0;
          LODWORD(v146) = 0;
          LODWORD(v148) = 0;
          LODWORD(v150) = 0;
          LODWORD(v129) = 1;
          v79 = 1;
          LODWORD(v130) = 1;
          LODWORD(v131) = 1;
          LODWORD(v132) = 1;
          LODWORD(v133) = 1;
          LODWORD(v134) = 1;
          LODWORD(v135) = 1;
        }

        else
        {
          sub_24B6B8DE8(v127, &v151[v125[20]], &qword_27F034118, &qword_24B75E1D8);
          LOBYTE(v152) = 17;
          v95 = v147;
          v96 = sub_24B75C5B8();
          v147 = v95;
          if (v95)
          {
            (*(v146 + 8))(v150, v148);
            LODWORD(v137) = 0;
            LODWORD(v138) = 0;
            LODWORD(v139) = 0;
            LODWORD(v140) = 0;
            LODWORD(v141) = 0;
            LODWORD(v145) = 0;
            LODWORD(v146) = 0;
            LODWORD(v148) = 0;
            LODWORD(v150) = 0;
            LODWORD(v129) = 1;
            v79 = 1;
            LODWORD(v130) = 1;
            LODWORD(v131) = 1;
            LODWORD(v132) = 1;
            LODWORD(v133) = 1;
            LODWORD(v134) = 1;
            LODWORD(v135) = 1;
            LODWORD(v136) = 1;
          }

          else
          {
            v98 = &v151[v125[21]];
            *v98 = v96;
            v98[1] = v97;
            LOBYTE(v152) = 18;
            v99 = v147;
            v100 = sub_24B75C5B8();
            v147 = v99;
            if (v99)
            {
              (*(v146 + 8))(v150, v148);
              LODWORD(v138) = 0;
              LODWORD(v139) = 0;
              LODWORD(v140) = 0;
              LODWORD(v141) = 0;
              LODWORD(v145) = 0;
              LODWORD(v146) = 0;
              LODWORD(v148) = 0;
              LODWORD(v150) = 0;
              LODWORD(v129) = 1;
              v79 = 1;
              LODWORD(v130) = 1;
              LODWORD(v131) = 1;
              LODWORD(v132) = 1;
              LODWORD(v133) = 1;
              LODWORD(v134) = 1;
              LODWORD(v135) = 1;
              LODWORD(v136) = 1;
              LODWORD(v137) = 1;
            }

            else
            {
              v102 = &v151[v125[22]];
              *v102 = v100;
              v102[1] = v101;
              LOBYTE(v152) = 19;
              v103 = v147;
              sub_24B75C618();
              v147 = v103;
              if (v103)
              {
                (*(v146 + 8))(v150, v148);
                LODWORD(v139) = 0;
                LODWORD(v140) = 0;
                LODWORD(v141) = 0;
                LODWORD(v145) = 0;
                LODWORD(v146) = 0;
                LODWORD(v148) = 0;
                LODWORD(v150) = 0;
                LODWORD(v129) = 1;
                v79 = 1;
                LODWORD(v130) = 1;
                LODWORD(v131) = 1;
                LODWORD(v132) = 1;
                LODWORD(v133) = 1;
                LODWORD(v134) = 1;
                LODWORD(v135) = 1;
                LODWORD(v136) = 1;
                LODWORD(v137) = 1;
                LODWORD(v138) = 1;
              }

              else
              {
                v104 = *(v142 + 32);
                v104(&v151[v125[23]], v129, v143);
                LOBYTE(v152) = 20;
                v105 = v147;
                sub_24B75C618();
                v147 = v105;
                if (v105)
                {
                  (*(v146 + 8))(v150, v148);
                  LODWORD(v140) = 0;
                  LODWORD(v141) = 0;
                  LODWORD(v145) = 0;
                  LODWORD(v146) = 0;
                  LODWORD(v148) = 0;
                  LODWORD(v150) = 0;
                  LODWORD(v129) = 1;
                  v79 = 1;
                  LODWORD(v130) = 1;
                  LODWORD(v131) = 1;
                  LODWORD(v132) = 1;
                  LODWORD(v133) = 1;
                  LODWORD(v134) = 1;
                  LODWORD(v135) = 1;
                  LODWORD(v136) = 1;
                  LODWORD(v137) = 1;
                  LODWORD(v138) = 1;
                  LODWORD(v139) = 1;
                }

                else
                {
                  v104(&v151[v125[24]], v131, v143);
                  LOBYTE(v152) = 21;
                  v106 = v147;
                  v107 = sub_24B75C5B8();
                  v147 = v106;
                  if (v106)
                  {
                    (*(v146 + 8))(v150, v148);
                    LODWORD(v141) = 0;
                    LODWORD(v145) = 0;
                    LODWORD(v146) = 0;
                    LODWORD(v148) = 0;
                    LODWORD(v150) = 0;
                    LODWORD(v129) = 1;
                    v79 = 1;
                    LODWORD(v130) = 1;
                    LODWORD(v131) = 1;
                    LODWORD(v132) = 1;
                    LODWORD(v133) = 1;
                    LODWORD(v134) = 1;
                    LODWORD(v135) = 1;
                    LODWORD(v136) = 1;
                    LODWORD(v137) = 1;
                    LODWORD(v138) = 1;
                    LODWORD(v139) = 1;
                    LODWORD(v140) = 1;
                  }

                  else
                  {
                    v109 = &v151[v125[25]];
                    *v109 = v107;
                    v109[1] = v108;
                    LOBYTE(v152) = 22;
                    v110 = v147;
                    sub_24B75C618();
                    v147 = v110;
                    if (v110)
                    {
                      (*(v146 + 8))(v150, v148);
                      LODWORD(v145) = 0;
                      LODWORD(v146) = 0;
                      LODWORD(v148) = 0;
                      LODWORD(v150) = 0;
                      LODWORD(v129) = 1;
                      v79 = 1;
                      LODWORD(v130) = 1;
                      LODWORD(v131) = 1;
                      LODWORD(v132) = 1;
                      LODWORD(v133) = 1;
                      LODWORD(v134) = 1;
                      LODWORD(v135) = 1;
                      LODWORD(v136) = 1;
                      LODWORD(v137) = 1;
                      LODWORD(v138) = 1;
                      LODWORD(v139) = 1;
                      LODWORD(v140) = 1;
                      LODWORD(v141) = 1;
                    }

                    else
                    {
                      v121(&v151[v125[26]], v128, v149);
                      LOBYTE(v152) = 23;
                      v111 = v147;
                      sub_24B75C618();
                      v147 = v111;
                      if (v111)
                      {
                        (*(v146 + 8))(v150, v148);
                        LODWORD(v146) = 0;
                        LODWORD(v148) = 0;
                        LODWORD(v150) = 0;
                        LODWORD(v129) = 1;
                        v79 = 1;
                        LODWORD(v130) = 1;
                        LODWORD(v131) = 1;
                        LODWORD(v132) = 1;
                        LODWORD(v133) = 1;
                        LODWORD(v134) = 1;
                        LODWORD(v135) = 1;
                        LODWORD(v136) = 1;
                        LODWORD(v137) = 1;
                        LODWORD(v138) = 1;
                        LODWORD(v139) = 1;
                        LODWORD(v140) = 1;
                        LODWORD(v141) = 1;
                        LODWORD(v145) = 1;
                      }

                      else
                      {
                        v121(&v151[v125[27]], v130, v149);
                        LOBYTE(v152) = 24;
                        v112 = v147;
                        sub_24B75C618();
                        v147 = v112;
                        if (v112)
                        {
                          (*(v146 + 8))(v150, v148);
                          LODWORD(v148) = 0;
                          LODWORD(v150) = 0;
                          LODWORD(v129) = 1;
                          v79 = 1;
                          LODWORD(v130) = 1;
                          LODWORD(v131) = 1;
                          LODWORD(v132) = 1;
                          LODWORD(v133) = 1;
                          LODWORD(v134) = 1;
                          LODWORD(v135) = 1;
                          LODWORD(v136) = 1;
                          LODWORD(v137) = 1;
                          LODWORD(v138) = 1;
                          LODWORD(v139) = 1;
                          LODWORD(v140) = 1;
                          LODWORD(v141) = 1;
                          LODWORD(v145) = 1;
                          LODWORD(v146) = 1;
                        }

                        else
                        {
                          v121(&v151[v125[28]], v132, v149);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034990, &qword_24B75FD50);
                          v155 = 25;
                          sub_24B709DE4(&qword_27F035480, &qword_27F035488);
                          v113 = v147;
                          sub_24B75C618();
                          v147 = v113;
                          if (v113)
                          {
                            (*(v146 + 8))(v150, v148);
                            LODWORD(v150) = 0;
                            LODWORD(v129) = 1;
                            v79 = 1;
                            LODWORD(v130) = 1;
                            LODWORD(v131) = 1;
                            LODWORD(v132) = 1;
                            LODWORD(v133) = 1;
                            LODWORD(v134) = 1;
                            LODWORD(v135) = 1;
                            LODWORD(v136) = 1;
                            LODWORD(v137) = 1;
                            LODWORD(v138) = 1;
                            LODWORD(v139) = 1;
                            LODWORD(v140) = 1;
                            LODWORD(v141) = 1;
                            LODWORD(v145) = 1;
                            LODWORD(v146) = 1;
                            LODWORD(v148) = 1;
                          }

                          else
                          {
                            *&v151[v125[29]] = v152;
                            v155 = 26;
                            sub_24B70C424();
                            v114 = v147;
                            sub_24B75C618();
                            v147 = v114;
                            if (!v114)
                            {
                              v151[v125[30]] = v152;
                              v155 = 27;
                              sub_24B70C478();
                              v115 = v147;
                              sub_24B75C5D8();
                              v147 = v115;
                              if (!v115)
                              {
                                (*(v146 + 8))(v150, v148);
                                v116 = v151;
                                v117 = v153;
                                v118 = v154;
                                v119 = v124;
                                *v124 = v152;
                                *(v119 + 4) = v117;
                                v119[10] = v118;
                                sub_24B70EF78(v116, v133, type metadata accessor for WorkoutDetail);
                                __swift_destroy_boxed_opaque_existential_1(v126);
                                return sub_24B70EFE0(v116, type metadata accessor for WorkoutDetail);
                              }
                            }

                            (*(v146 + 8))(v150, v148);
                            LODWORD(v129) = 1;
                            v79 = 1;
                            LODWORD(v130) = 1;
                            LODWORD(v131) = 1;
                            LODWORD(v132) = 1;
                            LODWORD(v133) = 1;
                            LODWORD(v134) = 1;
                            LODWORD(v135) = 1;
                            LODWORD(v136) = 1;
                            LODWORD(v137) = 1;
                            LODWORD(v138) = 1;
                            LODWORD(v139) = 1;
                            LODWORD(v140) = 1;
                            LODWORD(v141) = 1;
                            LODWORD(v145) = 1;
                            LODWORD(v146) = 1;
                            LODWORD(v148) = 1;
                            LODWORD(v150) = 1;
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

LABEL_5:
  v58 = v123;
  __swift_destroy_boxed_opaque_existential_1(v126);
  v59 = v144[1];
  v60 = v151;
  v59(v151, v149);
  if (!v58)
  {
    v67 = *&v60[v125[5]];
  }

  v59(&v151[v125[6]], v149);
  v68 = v125;
  v59(&v151[v125[7]], v149);
  sub_24B70EFE0(&v151[v68[8]], type metadata accessor for WorkoutDetailArtwork);
  result = sub_24B6B9CD4(&v151[v68[9]], &qword_27F034600, &unk_24B75F9A0);
  v69 = v142;
  if (v129)
  {
    v61 = v151;
    v62 = *&v151[v68[11]];

    v63 = v143;
    if (v79)
    {
      goto LABEL_23;
    }

LABEL_9:
    v64 = v149;
    if (!v130)
    {
      goto LABEL_24;
    }

LABEL_10:
    result = (v59)(&v61[v68[13]], v64);
    if (v131)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (!v132)
    {
      goto LABEL_26;
    }

LABEL_12:
    v65 = *&v61[v68[15] + 8];

    if (v133)
    {
      goto LABEL_27;
    }

LABEL_13:
    if (!v134)
    {
      goto LABEL_28;
    }

LABEL_14:
    result = sub_24B6B9CD4(&v61[v68[18]], &qword_27F034118, &qword_24B75E1D8);
    if (v135)
    {
      goto LABEL_29;
    }

LABEL_15:
    if (!v136)
    {
      goto LABEL_30;
    }

LABEL_16:
    result = sub_24B6B9CD4(&v61[v68[20]], &qword_27F034118, &qword_24B75E1D8);
    if (v137)
    {
      goto LABEL_31;
    }

LABEL_17:
    if (!v138)
    {
      goto LABEL_32;
    }

LABEL_18:
    v66 = *&v61[v68[22] + 8];

    if (v139)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  v63 = v143;
  v61 = v151;
  if (!v79)
  {
    goto LABEL_9;
  }

LABEL_23:
  v64 = v149;
  result = (v59)(&v61[v68[12]], v149);
  if (v130)
  {
    goto LABEL_10;
  }

LABEL_24:
  if (!v131)
  {
    goto LABEL_11;
  }

LABEL_25:
  result = (v59)(&v61[v68[14]], v64);
  if (v132)
  {
    goto LABEL_12;
  }

LABEL_26:
  if (!v133)
  {
    goto LABEL_13;
  }

LABEL_27:
  v70 = *&v61[v68[17] + 8];

  if (v134)
  {
    goto LABEL_14;
  }

LABEL_28:
  if (!v135)
  {
    goto LABEL_15;
  }

LABEL_29:
  v71 = *&v61[v68[19]];

  if (v136)
  {
    goto LABEL_16;
  }

LABEL_30:
  if (!v137)
  {
    goto LABEL_17;
  }

LABEL_31:
  v72 = *&v61[v68[21] + 8];

  if (v138)
  {
    goto LABEL_18;
  }

LABEL_32:
  if (v139)
  {
LABEL_33:
    v73 = *(v69 + 8);
    result = v73(&v61[v68[23]], v63);
    if (v140)
    {
      result = v73(&v61[v68[24]], v63);
LABEL_35:
      if ((v141 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_19:
  if (v140)
  {
    result = (*(v69 + 8))(&v61[v68[24]], v63);
    goto LABEL_35;
  }

LABEL_41:
  if (!v141)
  {
LABEL_36:
    if (v145)
    {
      goto LABEL_37;
    }

    goto LABEL_43;
  }

LABEL_42:
  v74 = *&v61[v68[25] + 8];

  if (v145)
  {
LABEL_37:
    result = (v59)(&v61[v68[26]], v64);
    if ((v146 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_43:
  if (!v146)
  {
LABEL_38:
    if (v148)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = (v59)(&v61[v68[27]], v64);
  if (v148)
  {
LABEL_39:
    result = (v59)(&v61[v68[28]], v64);
    if (v150)
    {
      goto LABEL_46;
    }

    return result;
  }

LABEL_45:
  if (v150)
  {
LABEL_46:
    v75 = *&v61[v68[29]];
  }

  return result;
}

uint64_t sub_24B70C114(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0353E0, &qword_24B7631A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B70C180(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F034600, &unk_24B75F9A0);
    v3 = MEMORY[0x277D09E00];
    sub_24B6A80B8(&qword_27F034B00, MEMORY[0x277D09E00]);
    sub_24B6A80B8(&qword_27F034B08, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B70C268(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0353F0, &qword_24B7631B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B70C2E0()
{
  result = qword_27F035460;
  if (!qword_27F035460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035460);
  }

  return result;
}

unint64_t sub_24B70C334()
{
  result = qword_27F035468;
  if (!qword_27F035468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035468);
  }

  return result;
}

uint64_t sub_24B70C388(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F035410, &unk_24B7631B8);
    sub_24B6A80B8(a2, type metadata accessor for WorkoutDetailMusicTrack);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B70C424()
{
  result = qword_27F035490;
  if (!qword_27F035490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035490);
  }

  return result;
}

unint64_t sub_24B70C478()
{
  result = qword_27F035498;
  if (!qword_27F035498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035498);
  }

  return result;
}

uint64_t WorkoutDetail.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutDetailMusicTrack();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24B75B108();
  v71 = *(v73 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v64 - v14;
  v15 = sub_24B75AFE8();
  v72 = sub_24B6A80B8(&qword_27F0354A0, MEMORY[0x277CC8C40]);
  sub_24B75C2C8();
  v16 = type metadata accessor for WorkoutDetail();
  v17 = *(v1 + v16[5]);
  MEMORY[0x24C2489B0](*(v17 + 16));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = (v17 + 32);
    do
    {
      v20 = *v19++;
      MEMORY[0x24C2489B0](v20);
      --v18;
    }

    while (v18);
  }

  v21 = v1 + v16[6];
  sub_24B75C2C8();
  v22 = v2 + v16[7];
  sub_24B75C2C8();
  v23 = v2 + v16[8];
  WorkoutDetailArtwork.hash(into:)();
  v24 = v16[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034600, &unk_24B75F9A0);
  sub_24B6A80B8(&qword_27F034B20, MEMORY[0x277D09E00]);
  sub_24B75B328();
  MEMORY[0x24C2489B0](*(v2 + v16[10]));
  sub_24B70D574(a1, *(v2 + v16[11]));
  v25 = v2 + v16[12];
  sub_24B75C2C8();
  v26 = v2 + v16[13];
  sub_24B75C2C8();
  v27 = v2 + v16[14];
  sub_24B75C2C8();
  v28 = (v2 + v16[15]);
  v29 = *v28;
  v30 = v28[1];
  sub_24B75C358();
  v31 = *(v2 + v16[16]);
  sub_24B75C6F8();
  if (v31 != 4)
  {
    MEMORY[0x24C2489B0](v31);
  }

  v32 = v71;
  v69 = v15;
  v33 = (v2 + v16[17]);
  if (v33[1])
  {
    v34 = *v33;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v35 = v70;
  sub_24B6B9D34(v2 + v16[18], v70, &qword_27F034118, &qword_24B75E1D8);
  v36 = v73;
  v65 = *(v32 + 48);
  v66 = v32 + 48;
  if (v65(v35, 1, v73) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v37 = v68;
    (*(v32 + 32))(v68, v35, v36);
    sub_24B75C6F8();
    sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    (*(v32 + 8))(v37, v36);
  }

  v38 = v16[19];
  v70 = v2;
  v39 = *(v2 + v38);
  MEMORY[0x24C2489B0](*(v39 + 16));
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v42 = *(v64 + 72);
    do
    {
      sub_24B70EF78(v41, v7, type metadata accessor for WorkoutDetailMusicTrack);
      sub_24B6A80B8(&qword_27F034780, type metadata accessor for WorkoutDetailMusicTrack);
      sub_24B75C2C8();
      sub_24B70EFE0(v7, type metadata accessor for WorkoutDetailMusicTrack);
      v41 += v42;
      --v40;
    }

    while (v40);
  }

  v43 = v70;
  v44 = v67;
  sub_24B6B9D34(v70 + v16[20], v67, &qword_27F034118, &qword_24B75E1D8);
  v45 = v73;
  if (v65(v44, 1, v73) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v46 = v71;
    v47 = v68;
    (*(v71 + 32))(v68, v44, v45);
    sub_24B75C6F8();
    sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    (*(v46 + 8))(v47, v45);
  }

  v48 = (v43 + v16[21]);
  if (v48[1])
  {
    v49 = *v48;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v50 = (v43 + v16[22]);
  if (v50[1])
  {
    v51 = *v50;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v52 = v16[23];
  sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  v53 = v43 + v16[24];
  sub_24B75C2C8();
  v54 = (v43 + v16[25]);
  if (v54[1])
  {
    v55 = *v54;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v56 = v43 + v16[26];
  sub_24B75C2C8();
  v57 = v43 + v16[27];
  sub_24B75C2C8();
  v58 = v43 + v16[28];
  sub_24B75C2C8();
  sub_24B70CE70(a1, *(v43 + v16[29]));
  MEMORY[0x24C2489B0](*(v43 + v16[30]));
  v59 = v43 + v16[31];
  if (*(v59 + 10) == 1)
  {
    return sub_24B75C6F8();
  }

  v61 = *v59;
  v62 = *(v59 + 8);
  sub_24B75C6F8();
  if ((v62 & 0x100) != 0)
  {
    return MEMORY[0x24C2489B0](1);
  }

  MEMORY[0x24C2489B0](0);
  if (v62)
  {
    return sub_24B75C6F8();
  }

  sub_24B75C6F8();
  if ((v61 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0;
  }

  return MEMORY[0x24C2489D0](v63);
}

uint64_t WorkoutDetail.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70CDEC()
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70CE30()
{
  sub_24B75C6D8();
  WorkoutDetail.hash(into:)(v1);
  return sub_24B75C718();
}

uint64_t sub_24B70CE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v67 = *(v4 - 8);
  v5 = *(v67 + 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v52 - v9;
  v10 = sub_24B75B298();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034120, &unk_24B75E1E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v52 - v15;
  v16 = type metadata accessor for WorkoutDetailArtwork();
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0340C8, &qword_24B75DFB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v52 - v22;
  v24 = type metadata accessor for WorkoutDetailTrainer();
  v58 = *(v24 - 1);
  v25 = *(v58 + 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v29 = *(a2 + 16);
  result = MEMORY[0x24C2489B0](v29, v26);
  if (v29)
  {
    v31 = v24[6];
    v66 = &v28[v24[5]];
    v65 = &v28[v31];
    v64 = &v28[v24[7]];
    v32 = v63 + ((v58[80] + 32) & ~v58[80]);
    v33 = (v59 + 48);
    v59 = v62 + 48;
    v55 = (v62 + 32);
    v54 = (v62 + 8);
    v62 = *(v58 + 9);
    v63 = v33;
    v58 = v67 + 48;
    v52 = (v67 + 8);
    v53 = (v67 + 32);
    v67 = v28;
    do
    {
      sub_24B70EF78(v32, v28, type metadata accessor for WorkoutDetailTrainer);
      sub_24B6B9D34(v28, v23, &qword_27F0340C8, &qword_24B75DFB0);
      if ((*v63)(v23, 1, v16) == 1)
      {
        sub_24B75C6F8();
      }

      else
      {
        sub_24B6BBFC4(v23, v19);
        sub_24B75C6F8();
        v45 = v60;
        sub_24B6B9D34(v19, v60, &qword_27F034120, &unk_24B75E1E0);
        if ((*v59)(v45, 1, v10) == 1)
        {
          sub_24B75C6F8();
        }

        else
        {
          v46 = v56;
          (*v55)(v56, v45, v10);
          sub_24B75C6F8();
          sub_24B6A80B8(&qword_27F034128, MEMORY[0x277D09D68]);
          sub_24B75C2C8();
          (*v54)(v46, v10);
        }

        v47 = v61;
        sub_24B6B9D34(&v19[*(v16 + 20)], v61, &qword_27F034118, &qword_24B75E1D8);
        if ((*v58)(v47, 1, v4) == 1)
        {
          sub_24B75C6F8();
        }

        else
        {
          v48 = v57;
          (*v53)(v57, v47, v4);
          sub_24B75C6F8();
          sub_24B6A80B8(&qword_27F034130, MEMORY[0x277CC9260]);
          sub_24B75C2C8();
          (*v52)(v48, v4);
        }

        v49 = &v19[*(v16 + 24)];
        v50 = *v49;
        v51 = *(v49 + 1);
        sub_24B75C358();
        sub_24B70EFE0(v19, type metadata accessor for WorkoutDetailArtwork);
      }

      if (*(v66 + 1))
      {
        v34 = a1;
        v35 = v23;
        v36 = v19;
        v37 = v16;
        v38 = v10;
        v39 = v4;
        v40 = *v66;
        sub_24B75C6F8();
        v4 = v39;
        v10 = v38;
        v16 = v37;
        v19 = v36;
        v23 = v35;
        a1 = v34;
        sub_24B75C358();
      }

      else
      {
        sub_24B75C6F8();
      }

      v41 = *v65;
      v42 = *(v65 + 1);
      sub_24B75C358();
      v43 = *v64;
      v44 = *(v64 + 1);
      sub_24B75C358();
      v28 = v67;
      result = sub_24B70EFE0(v67, type metadata accessor for WorkoutDetailTrainer);
      v32 += v62;
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t sub_24B70D574(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2489B0](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      if (*(v5 - 4))
      {
        v6 = *(v5 - 5);
        sub_24B75C6F8();

        sub_24B75C358();
      }

      else
      {
        sub_24B75C6F8();
      }

      sub_24B75C358();
      sub_24B75C358();

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s20FitnessProductDetail07WorkoutC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034118, &qword_24B75E1D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v80[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034218, &unk_24B761640);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v80[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v80[-v21];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v86 = v5;
  v23 = type metadata accessor for WorkoutDetail();
  if ((sub_24B706CDC(*(a1 + v23[5]), *(a2 + v23[5])) & 1) == 0)
  {
    return 0;
  }

  v24 = v23[6];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v25 = v23[7];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  if ((_s20FitnessProductDetail07WorkoutC7ArtworkV2eeoiySbAC_ACtFZ_0(a1 + v23[8], a2 + v23[8]) & 1) == 0)
  {
    return 0;
  }

  v85 = v23[9];
  v84 = sub_24B75B2D8();
  v82 = v23;
  v26 = MEMORY[0x277D09E00];
  v83 = sub_24B6A80B8(&qword_27F034B48, MEMORY[0x277D09E00]);
  sub_24B6A80B8(&qword_2810F7AC8, v26);
  if ((sub_24B75B338() & 1) == 0)
  {
    return 0;
  }

  v27 = v82;
  if (*(a1 + v82[10]) != *(a2 + v82[10]))
  {
    return 0;
  }

  if ((sub_24B706D38(*(a1 + v82[11]), *(a2 + v82[11])) & 1) == 0)
  {
    return 0;
  }

  v28 = v27[12];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v29 = v27[13];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v30 = v27[14];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v31 = v27[15];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v35 = v27[16];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 4)
  {
    if (v37 != 4)
    {
      return 0;
    }
  }

  else if (v36 != v37)
  {
    return 0;
  }

  v38 = v27[17];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v85 = v27[18];
  v43 = *(v16 + 48);
  sub_24B6B9D34(v85 + a1, v22, &qword_27F034118, &qword_24B75E1D8);
  v84 = v43;
  sub_24B6B9D34(v85 + a2, &v43[v22], &qword_27F034118, &qword_24B75E1D8);
  v44 = v86 + 48;
  v85 = *(v86 + 48);
  v45 = v85(v22, 1, v4);
  v83 = v44;
  if (v45 == 1)
  {
    if (v85(&v84[v22], 1, v4) == 1)
    {
      sub_24B6B9CD4(v22, &qword_27F034118, &qword_24B75E1D8);
      goto LABEL_34;
    }

LABEL_31:
    v46 = v22;
LABEL_32:
    sub_24B6B9CD4(v46, &qword_27F034218, &unk_24B761640);
    return 0;
  }

  sub_24B6B9D34(v22, v15, &qword_27F034118, &qword_24B75E1D8);
  if (v85(&v84[v22], 1, v4) == 1)
  {
    (*(v86 + 8))(v15, v4);
    goto LABEL_31;
  }

  v47 = v86;
  (*(v86 + 32))(v8, &v84[v22], v4);
  sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260]);
  v81 = sub_24B75C2D8();
  v84 = *(v47 + 8);
  (v84)(v8, v4);
  (v84)(v15, v4);
  sub_24B6B9CD4(v22, &qword_27F034118, &qword_24B75E1D8);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((sub_24B706E90(*(a1 + v82[19]), *(a2 + v82[19])) & 1) == 0)
  {
    return 0;
  }

  v48 = v82[20];
  v49 = *(v16 + 48);
  sub_24B6B9D34(a1 + v48, v19, &qword_27F034118, &qword_24B75E1D8);
  sub_24B6B9D34(a2 + v48, &v19[v49], &qword_27F034118, &qword_24B75E1D8);
  if (v85(v19, 1, v4) == 1)
  {
    if (v85(&v19[v49], 1, v4) == 1)
    {
      sub_24B6B9CD4(v19, &qword_27F034118, &qword_24B75E1D8);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  sub_24B6B9D34(v19, v12, &qword_27F034118, &qword_24B75E1D8);
  if (v85(&v19[v49], 1, v4) == 1)
  {
    (*(v86 + 8))(v12, v4);
LABEL_40:
    v46 = v19;
    goto LABEL_32;
  }

  v50 = v86;
  (*(v86 + 32))(v8, &v19[v49], v4);
  sub_24B6A80B8(&qword_27F034228, MEMORY[0x277CC9260]);
  v51 = sub_24B75C2D8();
  v52 = *(v50 + 8);
  v52(v8, v4);
  v52(v12, v4);
  sub_24B6B9CD4(v19, &qword_27F034118, &qword_24B75E1D8);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v53 = v82[21];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = v82[22];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v63 = v82[23];
  if ((sub_24B75B0F8() & 1) == 0)
  {
    return 0;
  }

  v64 = v82[24];
  if ((sub_24B75B0F8() & 1) == 0)
  {
    return 0;
  }

  v65 = v82[25];
  v66 = (a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_24B75C6B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v69)
  {
    return 0;
  }

  v70 = v82[26];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v71 = v82[27];
  if ((sub_24B75AF58() & 1) == 0)
  {
    return 0;
  }

  v72 = v82[28];
  if ((sub_24B75AF58() & 1) == 0 || (sub_24B7078B8(*(a1 + v82[29]), *(a2 + v82[29])) & 1) == 0 || *(a1 + v82[30]) != *(a2 + v82[30]))
  {
    return 0;
  }

  v73 = v82[31];
  v74 = a1 + v73;
  v75 = *(a1 + v73 + 10);
  v76 = a2 + v73;
  LOBYTE(v77) = *(v76 + 10);
  if ((v75 & 1) == 0)
  {
    if (*(v76 + 10))
    {
      return 0;
    }

    v79 = *(v74 + 8);
    v77 = *(v76 + 8);
    if ((v79 & 0x100) != 0)
    {
      return (*(v76 + 8) & 0x100) != 0;
    }

    if ((*(v76 + 8) & 0x100) != 0)
    {
      return 0;
    }

    if ((v79 & 1) == 0)
    {
      return (v77 & 1) == 0 && *v74 == *v76;
    }
  }

  return (v77 & 1) != 0;
}

void sub_24B70E084()
{
  sub_24B75AFE8();
  if (v0 <= 0x3F)
  {
    sub_24B70E408(319, &qword_2810F6930, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutDetailArtwork();
      if (v2 <= 0x3F)
      {
        sub_24B6EDC80();
        if (v3 <= 0x3F)
        {
          sub_24B70E408(319, &qword_2810F6950, &type metadata for WorkoutDetailContributor, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_24B70E408(319, qword_2810F77D8, &type metadata for WorkoutDetailContentMediaType, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24B70E408(319, &qword_2810F6960, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24B70E3A4(319, &qword_2810F7AF8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_24B70E3A4(319, &qword_2810F6958, type metadata accessor for WorkoutDetailMusicTrack, MEMORY[0x277D83940]);
                  if (v8 <= 0x3F)
                  {
                    sub_24B75B108();
                    if (v9 <= 0x3F)
                    {
                      sub_24B70E3A4(319, &qword_2810F6948, type metadata accessor for WorkoutDetailTrainer, MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        sub_24B70E408(319, qword_2810F73A0, &type metadata for DownloadStatus, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
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

void sub_24B70E3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B70E408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B70E5AC()
{
  result = qword_27F0354A8;
  if (!qword_27F0354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354A8);
  }

  return result;
}

unint64_t sub_24B70E604()
{
  result = qword_27F0354B0;
  if (!qword_27F0354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354B0);
  }

  return result;
}

unint64_t sub_24B70E65C()
{
  result = qword_27F0354B8;
  if (!qword_27F0354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354B8);
  }

  return result;
}

uint64_t sub_24B70E6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269737365636361 && a2 == 0xED00007974696C69;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED00007365707954 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B76BE30 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E614C6F69647561 && a2 == 0xEE00736567617567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x436B726F77747261 && a2 == 0xEF65646F43706F72 || (sub_24B75C6B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_24B75C6B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74 || (sub_24B75C6B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24B75C6B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B76BE50 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B75C6B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B75C6B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76BE70 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B76BE90 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x617254636973756DLL && a2 == 0xEB00000000736B63 || (sub_24B75C6B8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B76BEB0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x800000024B76BED0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B76BF00 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52 || (sub_24B75C6B8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567 || (sub_24B75C6B8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024B76BDD0 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B76BF20 == a2 || (sub_24B75C6B8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEE00737574617453 || (sub_24B75C6B8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE00737574617453)
  {

    return 27;
  }

  else
  {
    v6 = sub_24B75C6B8();

    if (v6)
    {
      return 27;
    }

    else
    {
      return 28;
    }
  }
}

uint64_t sub_24B70EF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B70EFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void WorkoutDetailContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a5;
}

uint64_t sub_24B70F06C(uint64_t a1)
{
  v2 = sub_24B70F300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B70F0A8(uint64_t a1)
{
  v2 = sub_24B70F300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDetailContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354C0, &qword_24B7634B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70F300();
  sub_24B75C738();
  v16 = v10;
  HIBYTE(v15) = 0;
  sub_24B6F1D10();
  sub_24B75C6A8();
  if (!v2)
  {
    v16 = v9;
    HIBYTE(v15) = 1;
    sub_24B75C6A8();
    v16 = v12;
    HIBYTE(v15) = 2;
    sub_24B75C6A8();
    v16 = v11;
    HIBYTE(v15) = 3;
    sub_24B75C6A8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B70F300()
{
  result = qword_27F0354C8;
  if (!qword_27F0354C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354C8);
  }

  return result;
}

uint64_t WorkoutDetailContentMargins.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354D0, &qword_24B7634B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B70F300();
  sub_24B75C728();
  if (!v2)
  {
    HIBYTE(v16) = 0;
    sub_24B6F1FC4();
    sub_24B75C618();
    v11 = v17;
    HIBYTE(v16) = 1;
    sub_24B75C618();
    v12 = v17;
    HIBYTE(v16) = 2;
    sub_24B75C618();
    v14 = v17;
    HIBYTE(v16) = 3;
    sub_24B75C618();
    (*(v6 + 8))(v9, v5);
    v15 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutDetailContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2489D0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C2489D0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C2489D0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C2489D0](*&v7);
}

uint64_t WorkoutDetailContentMargins.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B70F6B4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B70F704()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B75C6D8();
  WorkoutDetailContentMargins.hash(into:)();
  return sub_24B75C718();
}

unint64_t sub_24B70F750()
{
  result = qword_27F0354D8;
  if (!qword_27F0354D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354D8);
  }

  return result;
}

unint64_t sub_24B70F7C8()
{
  result = qword_27F0354E0;
  if (!qword_27F0354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354E0);
  }

  return result;
}

unint64_t sub_24B70F820()
{
  result = qword_27F0354E8;
  if (!qword_27F0354E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354E8);
  }

  return result;
}

unint64_t sub_24B70F878()
{
  result = qword_27F0354F0;
  if (!qword_27F0354F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0354F0);
  }

  return result;
}

uint64_t EditorialDetailFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24B70F90C(v7, &v6);
}

__n128 EditorialDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t EditorialDetailFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  v2 = *(type metadata accessor for EditorialDetailState() + 28);
  sub_24B711BA8(a1 + v2, type metadata accessor for EditorialDetailLoadState);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 2, 2, v3);
}

uint64_t EditorialDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v114 = a3;
  v115 = a2;
  v6 = type metadata accessor for EditorialDetailContent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035350, &qword_24B762F48);
  v9 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v110 = &v104 - v10;
  State = type metadata accessor for EditorialDetailLoadState();
  v12 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v106 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v111 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = &v104 - v18;
  v19 = sub_24B75B108();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v104 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034480, &qword_24B75F678);
  v112 = *(v26 - 8);
  v113 = v26;
  v27 = *(v112 + 64);
  MEMORY[0x28223BE20](v26);
  v107 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v104 - v30;
  v32 = type metadata accessor for EditorialDetailAction();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v4[1];
  v117 = *v4;
  v118 = v36;
  v37 = v4[3];
  v119 = v4[2];
  v120 = v37;
  sub_24B711B40(a4, v35, type metadata accessor for EditorialDetailAction);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v64 = v63[12];
      v65 = v63[16];
      v66 = v63[20];
      v67 = &v31[v63[24]];
      v116[0] = 1;
      sub_24B7106CC();
      sub_24B75C508();
      sub_24B75C3F8();
      v68 = *MEMORY[0x277D04400];
      v69 = sub_24B75C208();
      (*(*(v69 - 8) + 104))(&v31[v65], v68, v69);
      v70 = swift_allocObject();
      v71 = v118;
      v70[1] = v117;
      v70[2] = v71;
      v72 = v120;
      v70[3] = v119;
      v70[4] = v72;
      *v67 = &unk_24B763718;
      *(v67 + 1) = v70;
      v73 = *MEMORY[0x277D043E8];
      v74 = sub_24B75C1F8();
      (*(*(v74 - 8) + 104))(&v31[v66], v73, v74);
      v76 = v112;
      v75 = v113;
      (*(v112 + 104))(v31, *MEMORY[0x277D043B0], v113);
      v77 = v114;
      v78 = *v114;
      sub_24B711658(&v117, v116);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_24B6C45A8(0, v78[2] + 1, 1, v78);
      }

      v80 = v78[2];
      v79 = v78[3];
      if (v80 >= v79 >> 1)
      {
        v78 = sub_24B6C45A8(v79 > 1, v80 + 1, 1, v78);
      }

      v78[2] = v80 + 1;
      result = (*(v76 + 32))(v78 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v80, v31, v75);
      goto LABEL_29;
    }

    if (result == 4)
    {
      return result;
    }

    v50 = *(type metadata accessor for EditorialDetailState() + 28);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    v52 = *(v51 - 8);
    v53 = *(v52 + 56);
    v54 = v111;
    v53(v111, 2, 2, v51);
    v55 = *(v108 + 48);
    v56 = v115;
    v57 = v110;
    sub_24B711B40(v115 + v50, v110, type metadata accessor for EditorialDetailLoadState);
    sub_24B711B40(v54, v57 + v55, type metadata accessor for EditorialDetailLoadState);
    v58 = *(v52 + 48);
    v59 = v58(v57, 2, v51);
    if (v59)
    {
      if (v59 == 1)
      {
        sub_24B711BA8(v54, type metadata accessor for EditorialDetailLoadState);
        if (v58(v57 + v55, 2, v51) == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_24B711BA8(v54, type metadata accessor for EditorialDetailLoadState);
        if (v58(v57 + v55, 2, v51) == 2)
        {
LABEL_24:
          sub_24B711BA8(v57, type metadata accessor for EditorialDetailLoadState);
          sub_24B711BA8(v56 + v50, type metadata accessor for EditorialDetailLoadState);
          v53(v56 + v50, 1, 2, v51);
          v86 = *v56;
          v85 = v56[1];
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
          v88 = v87[12];
          v89 = v87[16];
          v90 = v87[20];
          v91 = v107;
          v92 = &v107[v87[24]];
          v116[0] = 0;
          sub_24B7106CC();

          sub_24B75C508();
          sub_24B75C3F8();
          v93 = *MEMORY[0x277D04400];
          v94 = sub_24B75C208();
          (*(*(v94 - 8) + 104))(&v91[v89], v93, v94);
          v95 = swift_allocObject();
          v96 = v118;
          *(v95 + 16) = v117;
          *(v95 + 32) = v96;
          v97 = v120;
          *(v95 + 48) = v119;
          *(v95 + 64) = v97;
          *(v95 + 80) = v86;
          *(v95 + 88) = v85;
          *v92 = &unk_24B7636F0;
          *(v92 + 1) = v95;
          v98 = *MEMORY[0x277D043E8];
          v99 = sub_24B75C1F8();
          (*(*(v99 - 8) + 104))(&v91[v90], v98, v99);
          v101 = v112;
          v100 = v113;
          (*(v112 + 104))(v91, *MEMORY[0x277D043B0], v113);
          v77 = v114;
          v78 = *v114;
          sub_24B711658(&v117, v116);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_24B6C45A8(0, v78[2] + 1, 1, v78);
          }

          v103 = v78[2];
          v102 = v78[3];
          if (v103 >= v102 >> 1)
          {
            v78 = sub_24B6C45A8(v102 > 1, v103 + 1, 1, v78);
          }

          v78[2] = v103 + 1;
          result = (*(v101 + 32))(v78 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v103, v107, v100);
LABEL_29:
          *v77 = v78;
          return result;
        }
      }
    }

    else
    {
      v81 = v106;
      sub_24B711B40(v57, v106, type metadata accessor for EditorialDetailLoadState);
      if (!v58(v57 + v55, 2, v51))
      {
        v82 = v57 + v55;
        v83 = v105;
        sub_24B711734(v82, v105);
        v84 = _s20FitnessProductDetail09EditorialC7ContentV2eeoiySbAC_ACtFZ_0(v81, v83);
        sub_24B711BA8(v83, type metadata accessor for EditorialDetailContent);
        sub_24B711BA8(v111, type metadata accessor for EditorialDetailLoadState);
        sub_24B711BA8(v81, type metadata accessor for EditorialDetailContent);
        if ((v84 & 1) == 0)
        {
          return sub_24B711BA8(v57, type metadata accessor for EditorialDetailLoadState);
        }

        goto LABEL_24;
      }

      sub_24B711BA8(v111, type metadata accessor for EditorialDetailLoadState);
      sub_24B711BA8(v81, type metadata accessor for EditorialDetailContent);
    }

    return sub_24B6B9CD4(v57, &qword_27F035350, &qword_24B762F48);
  }

  if (result)
  {
    if (result == 1)
    {
      v39 = *v35;
      v114 = v35[1];
      v115 = v39;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F035508, &unk_24B767B70) + 48);
      v113 = *(v20 + 32);
      v113(v25, v35 + v40, v19);
      v41 = sub_24B75C418();
      v42 = v109;
      (*(*(v41 - 8) + 56))(v109, 1, 1, v41);
      (*(v20 + 16))(v22, v25, v19);
      sub_24B75C3E8();
      sub_24B711658(&v117, v116);
      v43 = sub_24B75C3D8();
      v44 = (*(v20 + 80) + 112) & ~*(v20 + 80);
      v45 = swift_allocObject();
      v46 = MEMORY[0x277D85700];
      *(v45 + 16) = v43;
      *(v45 + 24) = v46;
      v47 = v118;
      *(v45 + 32) = v117;
      *(v45 + 48) = v47;
      v48 = v120;
      *(v45 + 64) = v119;
      *(v45 + 80) = v48;
      v49 = v114;
      *(v45 + 96) = v115;
      *(v45 + 104) = v49;
      v113(v45 + v44, v22, v19);
      sub_24B710CD4(0, 0, v42, &unk_24B763708, v45);
    }

    else
    {
      (*(v20 + 32))(v25, v35, v19);
      (v119)(v25);
    }

    return (*(v20 + 8))(v25, v19);
  }

  else
  {
    v60 = *(type metadata accessor for EditorialDetailState() + 28);
    v61 = v115;
    sub_24B711BA8(v115 + v60, type metadata accessor for EditorialDetailLoadState);
    sub_24B711734(v35, &v61[v60]);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
    return (*(*(v62 - 8) + 56))(&v61[v60], 0, 2, v62);
  }
}

unint64_t sub_24B7106CC()
{
  result = qword_27F035500;
  if (!qword_27F035500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035500);
  }

  return result;
}

uint64_t sub_24B710720(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B75C3E8();
  v2[3] = sub_24B75C3D8();
  v4 = *(a2 + 24);
  v8 = (*(a2 + 16) + **(a2 + 16));
  v5 = *(*(a2 + 16) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B710828;

  return v8();
}

uint64_t sub_24B710828()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B75C3C8();
  if (v2)
  {
    v8 = sub_24B7109E8;
  }

  else
  {
    v8 = sub_24B710984;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B710984()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B7109E8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_24B710A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_24B75C3E8();
  v7[3] = sub_24B75C3D8();
  v12 = *(a4 + 56);
  v16 = (*(a4 + 48) + **(a4 + 48));
  v13 = *(*(a4 + 48) + 4);
  v14 = swift_task_alloc();
  v7[4] = v14;
  *v14 = v7;
  v14[1] = sub_24B710B78;

  return v16(a5, a6, a7);
}

uint64_t sub_24B710B78()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B75C3C8();
  if (v2)
  {
    v8 = sub_24B711C08;
  }

  else
  {
    v8 = sub_24B711C0C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B710CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24B711AD0(a3, v24 - v10);
  v12 = sub_24B75C418();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B6B9CD4(v11, &qword_27F0354F8, &qword_24B7636E0);
  }

  else
  {
    sub_24B75C408();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24B75C3C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24B75C338() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24B6B9CD4(a3, &qword_27F0354F8, &qword_24B7636E0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24B6B9CD4(a3, &qword_27F0354F8, &qword_24B7636E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24B710F70(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for EditorialDetailAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = *(*(type metadata accessor for EditorialDetailContent() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = sub_24B75C3E8();
  v4[7] = sub_24B75C3D8();
  v12 = a2[1];
  v16 = (*a2 + **a2);
  v13 = (*a2)[1];
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = sub_24B711100;

  return v16(v11, a3, a4);
}

uint64_t sub_24B711100()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v11 = *v1;
  v3[9] = v2;

  v8 = sub_24B75C3C8();
  v3[10] = v8;
  v3[11] = v7;
  if (v2)
  {
    v9 = sub_24B711534;
  }

  else
  {
    v9 = sub_24B711260;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B711260()
{
  v1 = v0[3];
  sub_24B711B40(v0[5], v0[4], type metadata accessor for EditorialDetailContent);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035528, &unk_24B763860);
  *v3 = v0;
  v3[1] = sub_24B711348;
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B711348()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B711BA8(v3, type metadata accessor for EditorialDetailAction);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B7114A0, v5, v4);
}

uint64_t sub_24B7114A0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  sub_24B711BA8(v3, type metadata accessor for EditorialDetailContent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B711534()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_24B7115AC(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B710F70(a1, (v1 + 16), v4, v5);
}

uint64_t sub_24B711694(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for EditorialDetailState() + 28);
  sub_24B711BA8(a2 + v3, type metadata accessor for EditorialDetailLoadState);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035120, &qword_24B762090);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 2, 2, v4);
}

uint64_t sub_24B711734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialDetailContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B711798(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B6F3D84;

  return sub_24B710A4C(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_24B7118A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B6F3D84;

  return sub_24B710720(a1, v1 + 16);
}

uint64_t sub_24B711A10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B711A7C()
{
  result = qword_27F035520;
  if (!qword_27F035520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F035520);
  }

  return result;
}

uint64_t sub_24B711AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0354F8, &qword_24B7636E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B711B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B711BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 WorkoutDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_24B711C24()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B712F1C(v0, v9, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *v9;
      v18 = *(v9 + 1);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898);
      (*(v2 + 32))(v5, &v9[*(v19 + 48)], v1);
      MEMORY[0x24C2489B0](2);
      sub_24B75C358();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x24C2489B0](1);
    }

    sub_24B713B04(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *v9;
      v15 = *(v9 + 1);
      v13 = 3;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = 4;
LABEL_8:
      MEMORY[0x24C2489B0](v13);
      sub_24B75C358();
    }

    return MEMORY[0x24C2489B0](0);
  }
}

uint64_t sub_24B711E98()
{
  sub_24B75C6D8();
  sub_24B711C24();
  return sub_24B75C718();
}

uint64_t sub_24B711EDC()
{
  sub_24B75C6D8();
  sub_24B711C24();
  return sub_24B75C718();
}

uint64_t WorkoutDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, void (*a2)(unint64_t, char *, uint64_t), void **a3, uint64_t a4)
{
  v142 = a3;
  v143 = a4;
  v131 = a2;
  v134 = sub_24B75B108();
  v139 = *(v134 - 8);
  v5 = *(v139 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v124 - v7;
  MEMORY[0x28223BE20](v8);
  v130 = &v124 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v124 - v11;
  v138 = type metadata accessor for WorkoutDetailFeature.TaskIdentifier();
  v13 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v15 = (&v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v124 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v124 - v20;
  MEMORY[0x28223BE20](v22);
  v137 = &v124 - v23;
  MEMORY[0x28223BE20](v24);
  v129 = &v124 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034470, &unk_24B763870);
  v140 = *(v26 - 8);
  v141 = v26;
  v27 = *(v140 + 64);
  MEMORY[0x28223BE20](v26);
  v136 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v124 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v124 - v33;
  MEMORY[0x28223BE20](v35);
  v135 = &v124 - v36;
  v37 = type metadata accessor for WorkoutDetailAction();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v4[1];
  v145 = *v4;
  v146 = v41;
  v42 = v4[3];
  v147 = v4[2];
  v148 = v42;
  sub_24B712F1C(v143, v40, type metadata accessor for WorkoutDetailAction);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v136 = v18;
    v67 = v31;
    v143 = v12;
    v68 = v133;
    v69 = v134;
    if (result)
    {
      v128 = *v40;
      v102 = v128;
      v125 = v40[1];
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0347A8, &qword_24B75FB50) + 48);
      v104 = v139;
      v105 = *(v139 + 32);
      v130 = (v139 + 32);
      v131 = v105;
      v106 = v69;
      v105(v68, v40 + v103, v69);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v135 = v107[12];
      v127 = v107[16];
      v143 = v107[20];
      v129 = &v67[v107[24]];
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035538, &qword_24B763898) + 48);
      v109 = v136;
      *v136 = v102;
      v110 = v125;
      *(v109 + 8) = v125;
      v111 = v104 + 16;
      v126 = *(v104 + 16);
      v126(v109 + v108, v68, v106);
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v109, v137, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);

      sub_24B75C508();
      sub_24B712F84(v109);
      v112 = *MEMORY[0x277D043F0];
      v113 = sub_24B75C208();
      (*(*(v113 - 8) + 104))(&v67[v127], v112, v113);
      v114 = v132;
      v126(v132, v68, v106);
      v115 = (*(v111 + 64) + 96) & ~*(v111 + 64);
      v116 = swift_allocObject();
      v117 = v146;
      *(v116 + 16) = v145;
      *(v116 + 32) = v117;
      v118 = v148;
      *(v116 + 48) = v147;
      *(v116 + 64) = v118;
      *(v116 + 80) = v128;
      *(v116 + 88) = v110;
      v131(v116 + v115, v114, v106);
      v119 = v129;
      *v129 = &unk_24B7638A8;
      *(v119 + 1) = v116;
      sub_24B71350C(&v145, v144);
      sub_24B75C3F8();
      v120 = *MEMORY[0x277D043E8];
      v121 = sub_24B75C1F8();
      (*(*(v121 - 8) + 104))(&v67[v143], v120, v121);
      v60 = v140;
      v59 = v141;
      (*(v140 + 104))(v67, *MEMORY[0x277D043B0], v141);
      v61 = v142;
      v62 = *v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_24B6C45CC(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v122 = v62[3];
      v65 = v64 + 1;
      v123 = v139;
      if (v64 >= v122 >> 1)
      {
        v62 = sub_24B6C45CC(v122 > 1, v64 + 1, 1, v62);
      }

      v86 = *(v123 + 8);
    }

    else
    {
      v70 = v139;
      v133 = *(v139 + 32);
      v71 = v143;
      (v133)(v143, v40, v134);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v135 = v72[12];
      v131 = v72[16];
      v136 = v72[20];
      v67 = v34;
      v132 = &v34[v72[24]];
      v73 = *(v70 + 16);
      v73(v21, v71, v69);
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v21, v137, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B75C508();
      sub_24B712F84(v21);
      v74 = *MEMORY[0x277D043F0];
      v75 = sub_24B75C208();
      (*(*(v75 - 8) + 104))(v131 + v67, v74, v75);
      v76 = v130;
      v73(v130, v71, v69);
      v77 = (*(v70 + 80) + 80) & ~*(v70 + 80);
      v78 = swift_allocObject();
      v79 = v146;
      v78[1] = v145;
      v78[2] = v79;
      v80 = v148;
      v78[3] = v147;
      v78[4] = v80;
      (v133)(v78 + v77, v76, v69);
      v81 = v132;
      *v132 = &unk_24B7638B8;
      *(v81 + 1) = v78;
      sub_24B71350C(&v145, v144);
      sub_24B75C3F8();
      v82 = *MEMORY[0x277D043E8];
      v83 = sub_24B75C1F8();
      (*(*(v83 - 8) + 104))(&v67[v136], v82, v83);
      v60 = v140;
      v59 = v141;
      (*(v140 + 104))(v67, *MEMORY[0x277D043B0], v141);
      v61 = v142;
      v62 = *v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_24B6C45CC(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v84 = v62[3];
      v65 = v64 + 1;
      v85 = v139;
      if (v64 >= v84 >> 1)
      {
        v62 = sub_24B6C45CC(v84 > 1, v64 + 1, 1, v62);
      }

      v86 = *(v85 + 8);
    }

    v86();
  }

  else
  {
    if (result == 2)
    {
      v88 = *v40;
      v87 = v40[1];
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v90 = v89[12];
      v91 = v89[16];
      v143 = v89[20];
      v92 = v136;
      v93 = (v136 + v89[24]);
      *v15 = v88;
      v15[1] = v87;
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v15, v137, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);

      sub_24B75C508();
      sub_24B712F84(v15);
      v94 = *MEMORY[0x277D043F0];
      v95 = sub_24B75C208();
      (*(*(v95 - 8) + 104))(v92 + v91, v94, v95);
      v96 = swift_allocObject();
      v97 = v146;
      *(v96 + 16) = v145;
      *(v96 + 32) = v97;
      v98 = v148;
      *(v96 + 48) = v147;
      *(v96 + 64) = v98;
      *(v96 + 80) = v88;
      *(v96 + 88) = v87;
      *v93 = &unk_24B763888;
      v93[1] = v96;
      sub_24B71350C(&v145, v144);
      sub_24B75C3F8();
      v99 = *MEMORY[0x277D043E8];
      v100 = sub_24B75C1F8();
      (*(*(v100 - 8) + 104))(v92 + v143, v99, v100);
      v60 = v140;
      v59 = v141;
      (*(v140 + 104))(v92, *MEMORY[0x277D043B0], v141);
      v61 = v142;
      v62 = *v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_24B6C45CC(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v101 = v62[3];
      v65 = v64 + 1;
      if (v64 >= v101 >> 1)
      {
        v62 = sub_24B6C45CC(v101 > 1, v64 + 1, 1, v62);
      }

      v66 = &v150;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v44 = *(v131 + 1);
      v143 = *v131;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v46 = v45[12];
      v47 = v45[16];
      v48 = v45[20];
      v49 = v135;
      v50 = &v135[v45[24]];
      v51 = v129;
      swift_storeEnumTagMultiPayload();
      sub_24B712F1C(v51, v137, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);
      sub_24B713B04(&qword_27F035530, type metadata accessor for WorkoutDetailFeature.TaskIdentifier);

      sub_24B75C508();
      sub_24B712F84(v51);
      v52 = *MEMORY[0x277D043F0];
      v53 = sub_24B75C208();
      (*(*(v53 - 8) + 104))(&v49[v47], v52, v53);
      v54 = *MEMORY[0x277D043E0];
      v55 = sub_24B75C1F8();
      (*(*(v55 - 8) + 104))(&v49[v48], v54, v55);
      v56 = swift_allocObject();
      v57 = v146;
      *(v56 + 16) = v145;
      *(v56 + 32) = v57;
      v58 = v148;
      *(v56 + 48) = v147;
      *(v56 + 64) = v58;
      *(v56 + 80) = v143;
      *(v56 + 88) = v44;
      *v50 = &unk_24B7638C8;
      *(v50 + 1) = v56;
      sub_24B71350C(&v145, v144);
      sub_24B75C3F8();
      v60 = v140;
      v59 = v141;
      (*(v140 + 104))(v49, *MEMORY[0x277D043B0], v141);
      v61 = v142;
      v62 = *v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_24B6C45CC(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v62 = sub_24B6C45CC(v63 > 1, v64 + 1, 1, v62);
      }

      v66 = &v149;
    }

    v67 = *(v66 - 32);
  }

  v62[2] = v65;
  result = (*(v60 + 32))(v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v64, v67, v59);
  *v61 = v62;
  return result;
}