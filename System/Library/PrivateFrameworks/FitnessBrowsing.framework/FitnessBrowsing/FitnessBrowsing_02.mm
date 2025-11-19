unint64_t sub_24B4AA180()
{
  result = qword_27EFFC9A0;
  if (!qword_27EFFC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9A0);
  }

  return result;
}

unint64_t sub_24B4AA1D8()
{
  result = qword_27EFFC9A8;
  if (!qword_27EFFC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9A8);
  }

  return result;
}

uint64_t sub_24B4AA22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4AA360()
{
  if (*v0)
  {
    result = 0x6D657449797A616CLL;
  }

  else
  {
    result = 0x49646570756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_24B4AA3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49646570756F7267 && a2 == 0xEC000000736D6574;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D657449797A616CLL && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4AA490(uint64_t a1)
{
  v2 = sub_24B4AAA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA4CC(uint64_t a1)
{
  v2 = sub_24B4AAA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AA514(uint64_t a1)
{
  v2 = sub_24B4AAAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA550(uint64_t a1)
{
  v2 = sub_24B4AAAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AA58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4AA60C(uint64_t a1)
{
  v2 = sub_24B4AAA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AA648(uint64_t a1)
{
  v2 = sub_24B4AAA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialContent.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v25 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9B0, &qword_24B51BEC0);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9B8, &qword_24B51BEC8);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9C0, &unk_24B51BED0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AAA30();
  sub_24B517FDC();
  v18 = (v13 + 8);
  if (v24)
  {
    LOBYTE(v26) = 1;
    sub_24B4AAA84();
    sub_24B517E3C();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482E2C(&qword_27EFFBDB8, &qword_27EFFBDC0);
    v19 = v23;
    sub_24B517EBC();
    (*(v22 + 8))(v7, v19);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_24B4AAAD8();
    sub_24B517E3C();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    sub_24B4AAB2C(&qword_27EFFC9E8, sub_24B4AABA4);
    sub_24B517EBC();
    (*(v21 + 8))(v11, v8);
  }

  return (*v18)(v16, v12);
}

unint64_t sub_24B4AAA30()
{
  result = qword_27EFFC9C8;
  if (!qword_27EFFC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9C8);
  }

  return result;
}

unint64_t sub_24B4AAA84()
{
  result = qword_27EFFC9D0;
  if (!qword_27EFFC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9D0);
  }

  return result;
}

unint64_t sub_24B4AAAD8()
{
  result = qword_27EFFC9D8;
  if (!qword_27EFFC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9D8);
  }

  return result;
}

uint64_t sub_24B4AAB2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4AABA4()
{
  result = qword_27EFFC9F0;
  if (!qword_27EFFC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9F0);
  }

  return result;
}

void *BrowseEditorialContent.init(from:)(uint64_t *a1)
{
  result = sub_24B4AB7A4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_24B4AAC1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24B4AB7A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t static BrowseEditorialContent.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_24B483BA0(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_24B482FB8(a1, a3);
}

uint64_t BrowseEditorialContent.hash(into:)(__int128 *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for BrowseItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseLazyItem();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  if ((a3 & 1) == 0)
  {
    MEMORY[0x24C241D70](0);
    v17 = *(a2 + 16);
    result = MEMORY[0x24C241D70](v17);
    v38 = v17;
    if (!v17)
    {
      return result;
    }

    v18 = 0;
    v37 = a2 + 32;
    v43 = v15;
    while (1)
    {
      v42 = v18;
      v19 = (v37 + 24 * v18);
      v20 = *v19;
      v39 = v19[1];
      v21 = v19[2];
      v22 = *(v20 + 16);
      MEMORY[0x24C241D70](v22);
      v40 = v21;
      v41 = v20;
      if (v22)
      {
        break;
      }

LABEL_8:
      v18 = v42 + 1;
      sub_24B517B3C();

      if (v18 == v38)
      {
        return result;
      }
    }

    v23 = v36;
    v24 = v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80));

    v25 = *(v23 + 72);
    v45 = v25;
    while (1)
    {
      sub_24B4ABD68(v24, v15);
      sub_24B4ABD68(v15, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v26 = v44;
      sub_24B4850B8(v13, v44);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B4ABDCC(v26, type metadata accessor for BrowseItem);
LABEL_12:
      sub_24B4ABDCC(v15, type metadata accessor for BrowseLazyItem);
      v24 += v25;
      if (!--v22)
      {
        goto LABEL_8;
      }
    }

    v27 = *(v13 + 2);
    v28 = *(v13 + 3);
    v29 = *(v13 + 4);
    v46 = *(v13 + 1);
    v47 = v28;
    v30 = *(v13 + 6);
    v32 = *(v13 + 7);
    v31 = *(v13 + 8);
    v48 = *(v13 + 5);
    v49 = v32;
    v51 = v31;
    v52 = v30;
    v33 = v13[72];
    v34 = *v13;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v34);
    sub_24B517B3C();

    v50 = v27;
    if (v27)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v15 = v43;
      if (v29)
      {
LABEL_16:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_19:
        v25 = v45;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        goto LABEL_12;
      }
    }

    else
    {
      sub_24B517F9C();
      v15 = v43;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    sub_24B517F9C();
    goto LABEL_19;
  }

  MEMORY[0x24C241D70](1);

  return sub_24B4844E8(a1, a2);
}

uint64_t BrowseEditorialContent.hashValue.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_24B517F7C();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x24C241D70](0);
    v14 = *(a1 + 16);
    MEMORY[0x24C241D70](v14);
    v37 = v14;
    if (!v14)
    {
      return sub_24B517FBC();
    }

    v15 = 0;
    v36 = a1 + 32;
    v42 = v13;
    while (1)
    {
      v41 = v15;
      v16 = (v36 + 24 * v15);
      v17 = *v16;
      v38 = v16[1];
      v18 = v16[2];
      v19 = *(v17 + 16);
      MEMORY[0x24C241D70](v19);
      v39 = v18;
      v40 = v17;
      if (v19)
      {
        break;
      }

LABEL_6:
      v15 = v41 + 1;
      sub_24B517B3C();

      if (v15 == v37)
      {
        return sub_24B517FBC();
      }
    }

    v20 = v35;
    v21 = v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80));

    v22 = *(v20 + 72);
    v44 = v22;
    while (1)
    {
      sub_24B4ABD68(v21, v13);
      sub_24B4ABD68(v13, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v23 = v43;
      sub_24B4850B8(v11, v43);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(v50);
      sub_24B4ABDCC(v23, type metadata accessor for BrowseItem);
LABEL_10:
      sub_24B4ABDCC(v13, type metadata accessor for BrowseLazyItem);
      v21 += v22;
      if (!--v19)
      {
        goto LABEL_6;
      }
    }

    v24 = v7;
    v25 = *(v11 + 1);
    v26 = *(v11 + 2);
    v27 = *(v11 + 4);
    v28 = *(v11 + 5);
    v29 = *(v11 + 6);
    v45 = *(v11 + 3);
    v46 = v28;
    v30 = *(v11 + 8);
    v47 = *(v11 + 7);
    v48 = v29;
    v49 = v30;
    v31 = v11[72];
    v32 = *v11;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v32);
    sub_24B517B3C();

    if (v26)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v7 = v24;
      if (v27)
      {
LABEL_14:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_17:
        v22 = v44;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        v13 = v42;
        goto LABEL_10;
      }
    }

    else
    {
      sub_24B517F9C();
      v7 = v24;
      if (v27)
      {
        goto LABEL_14;
      }
    }

    sub_24B517F9C();
    goto LABEL_17;
  }

  MEMORY[0x24C241D70](1);
  sub_24B4844E8(v50, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AB6FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    MEMORY[0x24C241D70](1);
    sub_24B4844E8(v4, v1);
  }

  else
  {
    MEMORY[0x24C241D70](0);
    sub_24B484B5C(v4, v1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4AB770(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_24B483BA0(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_24B482FB8(v4, v5);
}

void *sub_24B4AB7A4(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA48, &qword_24B51C3A0);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA50, &qword_24B51C3A8);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA58, &unk_24B51C3B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v36 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4AAA30();
  v17 = v35;
  sub_24B517FCC();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v5;
  v35 = v10;
  v18 = v13;
  v19 = sub_24B517E1C();
  v20 = (2 * *(v19 + 16)) | 1;
  v37 = v19;
  v38 = v19 + 32;
  v39 = 0;
  v40 = v20;
  v21 = sub_24B4A39B0();
  if (v21 == 2 || v39 != v40 >> 1)
  {
    v23 = sub_24B517D0C();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v25 = &type metadata for BrowseEditorialContent;
    v16 = v13;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v35 + 8))(v13, v9);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v16;
  }

  if (v21)
  {
    LOBYTE(v41) = 1;
    sub_24B4AAA84();
    sub_24B517D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482E2C(&qword_27EFFBDD0, &qword_27EFFBDD8);
    v22 = v32;
    sub_24B517E0C();
    (*(v34 + 8))(v4, v22);
    (*(v35 + 8))(v13, v9);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_24B4AAAD8();
    v28 = v8;
    sub_24B517D7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC9E0, &qword_24B51BEE0);
    sub_24B4AAB2C(&qword_27EFFCA60, sub_24B4AC294);
    v29 = v31;
    sub_24B517E0C();
    v30 = v35;
    (*(v33 + 8))(v28, v29);
    (*(v30 + 8))(v18, v9);
  }

  swift_unknownObjectRelease();
  v16 = v41;
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v16;
}

uint64_t sub_24B4ABD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseLazyItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4ABDCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B4ABE30()
{
  result = qword_27EFFC9F8;
  if (!qword_27EFFC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC9F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24B4ABEA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B4ABEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B4ABF80()
{
  result = qword_27EFFCA00;
  if (!qword_27EFFCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA00);
  }

  return result;
}

unint64_t sub_24B4ABFD8()
{
  result = qword_27EFFCA08;
  if (!qword_27EFFCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA08);
  }

  return result;
}

unint64_t sub_24B4AC030()
{
  result = qword_27EFFCA10;
  if (!qword_27EFFCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA10);
  }

  return result;
}

unint64_t sub_24B4AC088()
{
  result = qword_27EFFCA18;
  if (!qword_27EFFCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA18);
  }

  return result;
}

unint64_t sub_24B4AC0E0()
{
  result = qword_27EFFCA20;
  if (!qword_27EFFCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA20);
  }

  return result;
}

unint64_t sub_24B4AC138()
{
  result = qword_27EFFCA28;
  if (!qword_27EFFCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA28);
  }

  return result;
}

unint64_t sub_24B4AC190()
{
  result = qword_27EFFCA30;
  if (!qword_27EFFCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA30);
  }

  return result;
}

unint64_t sub_24B4AC1E8()
{
  result = qword_27EFFCA38;
  if (!qword_27EFFCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA38);
  }

  return result;
}

unint64_t sub_24B4AC240()
{
  result = qword_27EFFCA40;
  if (!qword_27EFFCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA40);
  }

  return result;
}

unint64_t sub_24B4AC294()
{
  result = qword_27EFFCA68;
  if (!qword_27EFFCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA68);
  }

  return result;
}

uint64_t sub_24B4AC2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrowseDetailArtworkItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BrowseDetailArtworkItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BrowseDetailArtworkItem.init(artworkDescriptor:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B4AC3F4(a1, a4);
  result = type metadata accessor for BrowseDetailArtworkItem();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_24B4AC3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4AC464()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_24B4AC4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527590 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();

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

uint64_t sub_24B4AC598(uint64_t a1)
{
  v2 = sub_24B4AC7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AC5D4(uint64_t a1)
{
  v2 = sub_24B4AC7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailArtworkItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA70, &qword_24B51C3C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AC7C4();
  sub_24B517FDC();
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B49C804(&qword_27EFFC518);
  sub_24B517EBC();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for BrowseDetailArtworkItem() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_24B517E7C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4AC7C4()
{
  result = qword_27EFFCA78;
  if (!qword_27EFFCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA78);
  }

  return result;
}

uint64_t BrowseDetailArtworkItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCA80, &qword_24B51C3D0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for BrowseDetailArtworkItem();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AC7C4();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v26;
  v30 = 0;
  sub_24B49C804(&qword_27EFFC590);
  v18 = v27;
  sub_24B517E0C();
  v19 = v16;
  sub_24B4AC3F4(v28, v16);
  v29 = 1;
  v20 = sub_24B517DCC();
  v22 = v21;
  (*(v17 + 8))(v10, v18);
  v23 = (v19 + *(v11 + 20));
  *v23 = v20;
  v23[1] = v22;
  sub_24B4ACB5C(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4ACBC0(v19);
}

uint64_t sub_24B4ACAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4ACB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailArtworkItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4ACBC0(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailArtworkItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseDetailArtworkItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BrowseArtwork();
  sub_24B4ACF78(qword_2810EE948, type metadata accessor for BrowseArtwork);
  if ((sub_24B516CBC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for BrowseDetailArtworkItem() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t BrowseDetailArtworkItem.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B516CCC();
  v1 = (v0 + *(type metadata accessor for BrowseDetailArtworkItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_24B517B3C();
}

uint64_t BrowseDetailArtworkItem.hashValue.getter()
{
  sub_24B517F7C();
  type metadata accessor for BrowseDetailArtworkItem();
  sub_24B4ACF78(&qword_27EFFCA88, type metadata accessor for BrowseDetailArtworkItem);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACE18()
{
  sub_24B517F7C();
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACE70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  sub_24B516CCC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_24B517B3C();
}

uint64_t sub_24B4ACEDC()
{
  sub_24B517F7C();
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4ACF78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B4ACFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BrowseArtwork();
  sub_24B4ACF78(qword_2810EE948, type metadata accessor for BrowseArtwork);
  if ((sub_24B516CBC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24B517EEC();
}

unint64_t sub_24B4AD0D4()
{
  result = qword_27EFFCA98;
  if (!qword_27EFFCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCA98);
  }

  return result;
}

unint64_t sub_24B4AD12C()
{
  result = qword_27EFFCAA0;
  if (!qword_27EFFCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAA0);
  }

  return result;
}

unint64_t sub_24B4AD184()
{
  result = qword_27EFFCAA8;
  if (!qword_27EFFCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAA8);
  }

  return result;
}

uint64_t sub_24B4AD1D8()
{
  if (*v0)
  {
    result = 0x6F436C6961746564;
  }

  else
  {
    result = 0x5379616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_24B4AD228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436C6961746564 && a2 == 0xED0000746E65746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4AD310(uint64_t a1)
{
  v2 = sub_24B4AD8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD34C(uint64_t a1)
{
  v2 = sub_24B4AD8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AD388(uint64_t a1)
{
  v2 = sub_24B4AD9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD3C4(uint64_t a1)
{
  v2 = sub_24B4AD9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4AD400(uint64_t a1)
{
  v2 = sub_24B4ADA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AD43C(uint64_t a1)
{
  v2 = sub_24B4ADA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseInsetBehaviorProviderType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAB0, &qword_24B51C5E0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v27 - v4;
  v30 = type metadata accessor for BrowseDetailContent();
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAB8, &qword_24B51C5E8);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAC0, &qword_24B51C5F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AD8F8();
  sub_24B517FDC();
  sub_24B4AD94C(v35, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v31;
    sub_24B4AE0D0(v14, v31, type metadata accessor for BrowseDetailContent);
    v38 = 1;
    sub_24B4AD9B0();
    v22 = v32;
    sub_24B517E3C();
    sub_24B4AE7CC(&qword_27EFFCAD8, type metadata accessor for BrowseDetailContent);
    v23 = v34;
    sub_24B517EBC();
    (*(v33 + 8))(v22, v23);
    sub_24B4AEC80(v21, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v24 = *v14;
    v37 = 0;
    sub_24B4ADA04();
    sub_24B517E3C();
    v36 = v24;
    sub_24B49B688();
    v25 = v29;
    sub_24B517EBC();
    (*(v28 + 8))(v10, v25);
  }

  return (*(v16 + 8))(v19, v15);
}

uint64_t type metadata accessor for BrowseInsetBehaviorProviderType()
{
  result = qword_2810ED8A0;
  if (!qword_2810ED8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B4AD8F8()
{
  result = qword_27EFFCAC8;
  if (!qword_27EFFCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAC8);
  }

  return result;
}

uint64_t sub_24B4AD94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseInsetBehaviorProviderType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4AD9B0()
{
  result = qword_27EFFCAD0;
  if (!qword_27EFFCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAD0);
  }

  return result;
}

unint64_t sub_24B4ADA04()
{
  result = qword_27EFFCAE0;
  if (!qword_27EFFCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCAE0);
  }

  return result;
}

uint64_t BrowseInsetBehaviorProviderType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAE8, &qword_24B51C5F8);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAF0, &qword_24B51C600);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCAF8, &unk_24B51C608);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24B4AD8F8();
  v26 = v56;
  sub_24B517FCC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v46 = v21;
  v47 = v23;
  v56 = v18;
  v28 = v54;
  v27 = v55;
  v29 = v53;
  v30 = sub_24B517E1C();
  v31 = (2 * *(v30 + 16)) | 1;
  v58 = v30;
  v59 = v30 + 32;
  v60 = 0;
  v61 = v31;
  v32 = sub_24B4A39B0();
  v33 = v13;
  if (v32 == 2 || v60 != v61 >> 1)
  {
    v35 = sub_24B517D0C();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v37 = v14;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  if (v32)
  {
    v62 = 1;
    sub_24B4AD9B0();
    v34 = v27;
    sub_24B517D7C();
    type metadata accessor for BrowseDetailContent();
    sub_24B4AE7CC(&qword_27EFFCB00, type metadata accessor for BrowseDetailContent);
    v41 = v56;
    v42 = v51;
    sub_24B517E0C();
    (*(v52 + 8))(v34, v42);
    (*(v29 + 8))(v33, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v44 = v41;
  }

  else
  {
    v62 = 0;
    sub_24B4ADA04();
    sub_24B517D7C();
    sub_24B49C974();
    v40 = v50;
    sub_24B517E0C();
    (*(v49 + 8))(v28, v40);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v43 = v46;
    *v46 = v62;
    swift_storeEnumTagMultiPayload();
    v44 = v43;
  }

  v45 = v47;
  sub_24B4AE0D0(v44, v47, type metadata accessor for BrowseInsetBehaviorProviderType);
  sub_24B4AE0D0(v45, v48, type metadata accessor for BrowseInsetBehaviorProviderType);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24B4AE0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseInsetBehaviorProviderType.hash(into:)()
{
  v1 = type metadata accessor for BrowseDetailContent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4AD94C(v0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4AE0D0(v8, v4, type metadata accessor for BrowseDetailContent);
    MEMORY[0x24C241D70](1);
    BrowseDetailContent.hash(into:)();
    return sub_24B4AEC80(v4, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v10 = *v8;
    MEMORY[0x24C241D70](0);
    BrowseDisplayStyle.rawValue.getter(v10);
    sub_24B517B3C();
  }
}

uint64_t BrowseInsetBehaviorProviderType.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseDetailContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B517F7C();
  sub_24B4AD94C(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4AE0D0(v9, v5, type metadata accessor for BrowseDetailContent);
    MEMORY[0x24C241D70](1);
    BrowseDetailContent.hash(into:)();
    sub_24B4AEC80(v5, type metadata accessor for BrowseDetailContent);
  }

  else
  {
    v10 = *v9;
    MEMORY[0x24C241D70](0);
    BrowseDisplayStyle.rawValue.getter(v10);
    sub_24B517B3C();
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4AE450()
{
  sub_24B517F7C();
  BrowseInsetBehaviorProviderType.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing31BrowseInsetBehaviorProviderTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB58, &unk_24B51CA60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v30 - v18;
  v20 = *(v17 + 56);
  sub_24B4AD94C(a1, &v30 - v18);
  sub_24B4AD94C(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B4AD94C(v19, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = v19[v20];
      v23 = BrowseDisplayStyle.rawValue.getter(*v14);
      v25 = v24;
      if (v23 == BrowseDisplayStyle.rawValue.getter(v22) && v25 == v26)
      {
      }

      else
      {
        v28 = sub_24B517EEC();

        if ((v28 & 1) == 0)
        {
          sub_24B4AEC80(v19, type metadata accessor for BrowseInsetBehaviorProviderType);
LABEL_13:
          v21 = 0;
          return v21 & 1;
        }
      }

      sub_24B4AEC80(v19, type metadata accessor for BrowseInsetBehaviorProviderType);
      v21 = 1;
      return v21 & 1;
    }

LABEL_12:
    sub_24B4AEC18(v19);
    goto LABEL_13;
  }

  sub_24B4AD94C(v19, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B4AEC80(v12, type metadata accessor for BrowseDetailContent);
    goto LABEL_12;
  }

  sub_24B4AE0D0(&v19[v20], v7, type metadata accessor for BrowseDetailContent);
  v21 = static BrowseDetailContent.== infix(_:_:)(v12, v7);
  sub_24B4AEC80(v7, type metadata accessor for BrowseDetailContent);
  sub_24B4AEC80(v12, type metadata accessor for BrowseDetailContent);
  sub_24B4AEC80(v19, type metadata accessor for BrowseInsetBehaviorProviderType);
  return v21 & 1;
}

uint64_t sub_24B4AE7CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B4AE864()
{
  result = type metadata accessor for BrowseDetailContent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4AE904()
{
  result = qword_27EFFCB10;
  if (!qword_27EFFCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB10);
  }

  return result;
}

unint64_t sub_24B4AE95C()
{
  result = qword_27EFFCB18;
  if (!qword_27EFFCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB18);
  }

  return result;
}

unint64_t sub_24B4AE9B4()
{
  result = qword_27EFFCB20;
  if (!qword_27EFFCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB20);
  }

  return result;
}

unint64_t sub_24B4AEA0C()
{
  result = qword_27EFFCB28;
  if (!qword_27EFFCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB28);
  }

  return result;
}

unint64_t sub_24B4AEA64()
{
  result = qword_27EFFCB30;
  if (!qword_27EFFCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB30);
  }

  return result;
}

unint64_t sub_24B4AEABC()
{
  result = qword_27EFFCB38;
  if (!qword_27EFFCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB38);
  }

  return result;
}

unint64_t sub_24B4AEB14()
{
  result = qword_27EFFCB40;
  if (!qword_27EFFCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB40);
  }

  return result;
}

unint64_t sub_24B4AEB6C()
{
  result = qword_27EFFCB48;
  if (!qword_27EFFCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB48);
  }

  return result;
}

unint64_t sub_24B4AEBC4()
{
  result = qword_27EFFCB50;
  if (!qword_27EFFCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB50);
  }

  return result;
}

uint64_t sub_24B4AEC18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB58, &unk_24B51CA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4AEC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EditorialCollectionDetail.sectionDescriptors.getter()
{
  v1 = *(v0 + *(type metadata accessor for EditorialCollectionDetail() + 24));
}

uint64_t EditorialCollectionDetail.init(backgroundArtwork:editorialCollection:sectionDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B4AEE00(a1, a4);
  v7 = type metadata accessor for EditorialCollectionDetail();
  result = sub_24B4B04F0(a2, a4 + *(v7 + 20), type metadata accessor for EditorialCollection);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_24B4AEE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4AEE70()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_24B4AEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4B03CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4AEEEC(uint64_t a1)
{
  v2 = sub_24B4AF1F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4AEF28(uint64_t a1)
{
  v2 = sub_24B4AF1F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollectionDetail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB68, &qword_24B51CA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4AF1F8();
  sub_24B517FDC();
  v17 = 0;
  type metadata accessor for BrowseArtwork();
  sub_24B4B0558(&qword_2810EE940, type metadata accessor for BrowseArtwork);
  sub_24B517E6C();
  if (!v2)
  {
    v11 = type metadata accessor for EditorialCollectionDetail();
    v12 = *(v11 + 20);
    v16 = 1;
    type metadata accessor for EditorialCollection();
    sub_24B4B0558(&qword_27EFFCB78, type metadata accessor for EditorialCollection);
    sub_24B517EBC();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4AF6E4(&qword_27EFFCB88, &qword_27EFFCB90);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4AF1F8()
{
  result = qword_27EFFCB70;
  if (!qword_27EFFCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCB70);
  }

  return result;
}

uint64_t EditorialCollectionDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for EditorialCollection();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB98, &qword_24B51CA88);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = type metadata accessor for EditorialCollectionDetail();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B4AF1F8();
  v28 = v14;
  v21 = v29;
  sub_24B517FCC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v22 = v26;
  type metadata accessor for BrowseArtwork();
  v34 = 0;
  sub_24B4B0558(&qword_2810EE928, type metadata accessor for BrowseArtwork);
  sub_24B517DBC();
  sub_24B4AEE00(v10, v18);
  v33 = 1;
  sub_24B4B0558(&qword_27EFFCBA0, type metadata accessor for EditorialCollection);
  sub_24B517E0C();
  sub_24B4B04F0(v6, &v18[*(v15 + 20)], type metadata accessor for EditorialCollection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
  v32 = 2;
  sub_24B4AF6E4(&qword_27EFFCBA8, &qword_27EFFCBB0);
  sub_24B517E0C();
  (*(v22 + 8))(v28, v27);
  *&v18[*(v15 + 24)] = v31;
  sub_24B4B01DC(v18, v25, type metadata accessor for EditorialCollectionDetail);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24B4B05A0(v18, type metadata accessor for EditorialCollectionDetail);
}

uint64_t sub_24B4AF6E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4B0558(a2, type metadata accessor for BrowseSectionDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EditorialCollectionDetail.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseSectionDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4AF9C8(a1);
  v9 = type metadata accessor for EditorialCollectionDetail();
  v10 = v1 + *(v9 + 20);
  EditorialCollection.hash(into:)(a1);
  v11 = *(v2 + *(v9 + 24));
  result = MEMORY[0x24C241D70](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_24B4B01DC(v14, v8, type metadata accessor for BrowseSectionDescriptor);
      BrowseSectionDescriptor.hash(into:)(a1);
      result = sub_24B4B05A0(v8, type metadata accessor for BrowseSectionDescriptor);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t EditorialCollectionDetail.hashValue.getter()
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF944()
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF988()
{
  sub_24B517F7C();
  EditorialCollectionDetail.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4AF9C8(uint64_t a1)
{
  v35 = a1;
  v1 = sub_24B516BAC();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_24B516CAC();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for BrowseArtwork();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v30 - v23;
  sub_24B496724(v34, &v30 - v23, &qword_27EFFCB60, &qword_24B51CA70);
  if ((*(v17 + 48))(v24, 1, v16) == 1)
  {
    return sub_24B517F9C();
  }

  sub_24B4B04F0(v24, v20, type metadata accessor for BrowseArtwork);
  sub_24B517F9C();
  sub_24B496724(v20, v15, &qword_27EFFCBE0, &qword_24B51CCA8);
  v26 = v31;
  if ((*(v31 + 48))(v15, 1, v8) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v26 + 32))(v11, v15, v8);
    sub_24B517F9C();
    sub_24B4B0558(&qword_2810EED50, MEMORY[0x277D09D68]);
    sub_24B517A9C();
    (*(v26 + 8))(v11, v8);
  }

  v28 = v32;
  v27 = v33;
  sub_24B496724(&v20[*(v16 + 20)], v7, &qword_27EFFCBD8, &qword_24B51CCA0);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v29 = v30;
    (*(v28 + 32))(v30, v7, v27);
    sub_24B517F9C();
    sub_24B4B0558(&qword_2810EED80, MEMORY[0x277CC9260]);
    sub_24B517A9C();
    (*(v28 + 8))(v29, v27);
  }

  return sub_24B4B05A0(v20, type metadata accessor for BrowseArtwork);
}

uint64_t _s15FitnessBrowsing25EditorialCollectionDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseArtwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE8, &unk_24B51CCB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_24B496724(a1, &v24 - v16, &qword_27EFFCB60, &qword_24B51CA70);
  sub_24B496724(a2, &v17[v18], &qword_27EFFCB60, &qword_24B51CA70);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_24B49689C(v17, &qword_27EFFCB60, &qword_24B51CA70);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24B496724(v17, v12, &qword_27EFFCB60, &qword_24B51CA70);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_24B4B05A0(v12, type metadata accessor for BrowseArtwork);
LABEL_6:
    sub_24B49689C(v17, &qword_27EFFCBE8, &unk_24B51CCB0);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  sub_24B4B04F0(&v17[v18], v8, type metadata accessor for BrowseArtwork);
  v20 = _s15FitnessBrowsing13BrowseArtworkV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_24B4B05A0(v8, type metadata accessor for BrowseArtwork);
  sub_24B4B05A0(v12, type metadata accessor for BrowseArtwork);
  sub_24B49689C(v17, &qword_27EFFCB60, &qword_24B51CA70);
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for EditorialCollectionDetail();
  if ((_s15FitnessBrowsing19EditorialCollectionV2eeoiySbAC_ACtFZ_0((a1 + *(v21 + 20)), (a2 + *(v21 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = sub_24B4840D8(*(a1 + *(v21 + 24)), *(a2 + *(v21 + 24)));
  return v22 & 1;
}

uint64_t sub_24B4B01DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4B02C8()
{
  result = qword_27EFFCBC0;
  if (!qword_27EFFCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBC0);
  }

  return result;
}

unint64_t sub_24B4B0320()
{
  result = qword_27EFFCBC8;
  if (!qword_27EFFCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBC8);
  }

  return result;
}

unint64_t sub_24B4B0378()
{
  result = qword_27EFFCBD0;
  if (!qword_27EFFCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCBD0);
  }

  return result;
}

uint64_t sub_24B4B03CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B5276F0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527710 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4B04F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4B0558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B4B05A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL static SectionLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_24B4B0638()
{
  if (*v0)
  {
    result = 0x6E6F676F6874726FLL;
  }

  else
  {
    result = 0x746E6F7A69726F68;
  }

  *v0;
  return result;
}

uint64_t sub_24B4B0684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6F7A69726F68 && a2 == 0xEE00646972476C61;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4B0770(uint64_t a1)
{
  v2 = sub_24B4B0C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B07AC(uint64_t a1)
{
  v2 = sub_24B4B0C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B0800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4B0888(uint64_t a1)
{
  v2 = sub_24B4B0D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B08C4(uint64_t a1)
{
  v2 = sub_24B4B0D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B0900(uint64_t a1)
{
  v2 = sub_24B4B0CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B093C(uint64_t a1)
{
  v2 = sub_24B4B0CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBF0, &qword_24B51CCC0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = v19 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBF8, &qword_24B51CCC8);
  v20 = *(v22 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC00, &qword_24B51CCD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v19[1] = *v1;
  v14 = *(v1 + 8);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4B0C78();
  sub_24B517FDC();
  if (v14)
  {
    v26 = 1;
    sub_24B4B0CCC();
    v16 = v21;
    sub_24B517E3C();
    (*(v23 + 8))(v16, v24);
  }

  else
  {
    v25 = 0;
    sub_24B4B0D20();
    sub_24B517E3C();
    v18 = v22;
    sub_24B517EAC();
    (*(v20 + 8))(v8, v18);
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_24B4B0C78()
{
  result = qword_27EFFCC08;
  if (!qword_27EFFCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC08);
  }

  return result;
}

unint64_t sub_24B4B0CCC()
{
  result = qword_27EFFCC10;
  if (!qword_27EFFCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC10);
  }

  return result;
}

unint64_t sub_24B4B0D20()
{
  result = qword_27EFFCC18;
  if (!qword_27EFFCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC18);
  }

  return result;
}

uint64_t SectionLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC20, &qword_24B51CCD8);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC28, &qword_24B51CCE0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC30, &unk_24B51CCE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B4B0C78();
  v19 = v41;
  sub_24B517FCC();
  if (!v19)
  {
    v20 = v11;
    v36 = v8;
    v41 = v13;
    v21 = v39;
    v22 = v40;
    v23 = sub_24B517E1C();
    v24 = (2 * *(v23 + 16)) | 1;
    v43 = v23;
    v44 = v23 + 32;
    v45 = 0;
    v46 = v24;
    v25 = sub_24B4A39B0();
    if (v25 == 2 || v45 != v46 >> 1)
    {
      v27 = sub_24B517D0C();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v29 = &type metadata for SectionLayout;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = v25;
      if (v25)
      {
        v48 = 1;
        sub_24B4B0CCC();
        sub_24B517D7C();
        v26 = v41;
        (*(v21 + 8))(v7, v38);
        (*(v26 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v33 = 0;
      }

      else
      {
        v48 = 0;
        sub_24B4B0D20();
        sub_24B517D7C();
        v32 = v41;
        v34 = v36;
        v33 = sub_24B517DFC();
        (*(v37 + 8))(v20, v34);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
      }

      *v22 = v33;
      *(v22 + 8) = v47 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t SectionLayout.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x24C241D70](0);
  }

  return MEMORY[0x24C241D70](v1);
}

uint64_t SectionLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B1320()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B1384()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x24C241D70](0);
  }

  return MEMORY[0x24C241D70](v1);
}

uint64_t sub_24B4B13CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B517F7C();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x24C241D70](0);
  }

  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

unint64_t sub_24B4B1430()
{
  result = qword_27EFFCC38;
  if (!qword_27EFFCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC38);
  }

  return result;
}

uint64_t sub_24B4B1484(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SectionLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24B4B14FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B4B1518(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_24B4B157C()
{
  result = qword_27EFFCC40;
  if (!qword_27EFFCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC40);
  }

  return result;
}

unint64_t sub_24B4B15D4()
{
  result = qword_27EFFCC48;
  if (!qword_27EFFCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC48);
  }

  return result;
}

unint64_t sub_24B4B162C()
{
  result = qword_27EFFCC50;
  if (!qword_27EFFCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC50);
  }

  return result;
}

unint64_t sub_24B4B1684()
{
  result = qword_27EFFCC58;
  if (!qword_27EFFCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC58);
  }

  return result;
}

unint64_t sub_24B4B16DC()
{
  result = qword_27EFFCC60;
  if (!qword_27EFFCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC60);
  }

  return result;
}

unint64_t sub_24B4B1734()
{
  result = qword_27EFFCC68;
  if (!qword_27EFFCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC68);
  }

  return result;
}

unint64_t sub_24B4B178C()
{
  result = qword_27EFFCC70;
  if (!qword_27EFFCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC70);
  }

  return result;
}

unint64_t sub_24B4B17E4()
{
  result = qword_27EFFCC78;
  if (!qword_27EFFCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCC78);
  }

  return result;
}

unint64_t sub_24B4B1838()
{
  v1 = *v0;
  v2 = 0x6C6961746564;
  v3 = 0x7972656C6C6167;
  v4 = 0x6E6974656B72616DLL;
  if (v1 != 4)
  {
    v4 = 0x6546646E4177656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6169726F74696465;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24B4B1904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4B5114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4B192C(uint64_t a1)
{
  v2 = sub_24B4B2804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1968(uint64_t a1)
{
  v2 = sub_24B4B2804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B19A4(uint64_t a1)
{
  v2 = sub_24B4B2AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B19E0(uint64_t a1)
{
  v2 = sub_24B4B2AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1A1C(uint64_t a1)
{
  v2 = sub_24B4B2A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1A58(uint64_t a1)
{
  v2 = sub_24B4B2A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1A94(uint64_t a1)
{
  v2 = sub_24B4B2A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1AD0(uint64_t a1)
{
  v2 = sub_24B4B2A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1B0C(uint64_t a1)
{
  v2 = sub_24B4B29B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1B48(uint64_t a1)
{
  v2 = sub_24B4B29B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1B84(uint64_t a1)
{
  v2 = sub_24B4B2910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1BC0(uint64_t a1)
{
  v2 = sub_24B4B2910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4B1BFC(uint64_t a1)
{
  v2 = sub_24B4B28BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4B1C38(uint64_t a1)
{
  v2 = sub_24B4B28BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseSectionDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC80, &qword_24B51D0D0);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v88 = &v68 - v4;
  v86 = type metadata accessor for NewAndFeaturedDescriptor();
  v5 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC88, &qword_24B51D0D8);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v83 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC90, &qword_24B51D0E0);
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v68 - v12;
  v78 = type metadata accessor for BrowseGalleryDescriptor();
  v13 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCC98, &qword_24B51D0E8);
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v68 - v16;
  v73 = type metadata accessor for BrowseEditorialDescriptor();
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCA0, &qword_24B51D0F0);
  v71 = *(v72 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v68 - v20;
  v69 = type metadata accessor for BrowseDetailDescriptor();
  v21 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCA8, &qword_24B51D0F8);
  v68 = *(v24 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - v26;
  v28 = type metadata accessor for BrowseSectionDescriptor();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCCB0, &qword_24B51D100);
  v91 = *(v93 - 8);
  v32 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v34 = &v68 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4B2804();
  v92 = v34;
  sub_24B517FDC();
  sub_24B4B2858(v100, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v57 = v79;
      sub_24B4B3A10(v31, v79, type metadata accessor for BrowseGalleryDescriptor);
      LOBYTE(v94) = 3;
      sub_24B4B29B8();
      v58 = v80;
      v60 = v92;
      v59 = v93;
      sub_24B517E3C();
      sub_24B4B4924(&qword_27EFFCCE8, type metadata accessor for BrowseGalleryDescriptor);
      v61 = v82;
      sub_24B517EBC();
      (*(v81 + 8))(v58, v61);
      sub_24B4B5394(v57, type metadata accessor for BrowseGalleryDescriptor);
      return (*(v91 + 8))(v60, v59);
    }

    v44 = v92;
    v43 = v93;
    if (EnumCaseMultiPayload != 4)
    {
      v65 = v87;
      sub_24B4B3A10(v31, v87, type metadata accessor for NewAndFeaturedDescriptor);
      LOBYTE(v94) = 5;
      sub_24B4B28BC();
      v66 = v88;
      sub_24B517E3C();
      sub_24B4B4924(&qword_27EFFCCC8, type metadata accessor for NewAndFeaturedDescriptor);
      v67 = v90;
      sub_24B517EBC();
      (*(v89 + 8))(v66, v67);
      sub_24B4B5394(v65, type metadata accessor for NewAndFeaturedDescriptor);
      return (*(v91 + 8))(v44, v43);
    }

    v46 = *v31;
    v45 = *(v31 + 1);
    v47 = v31[16];
    LOBYTE(v94) = 4;
    sub_24B4B2910();
    v48 = v83;
    sub_24B517E3C();
    v94 = v46;
    v95 = v45;
    LOBYTE(v96) = v47;
    sub_24B4B2964();
    v49 = v85;
    sub_24B517EBC();
    (*(v84 + 8))(v48, v49);
    (*(v91 + 8))(v44, v43);
  }

  if (!EnumCaseMultiPayload)
  {
    v50 = *(v31 + 1);
    v100 = *v31;
    v52 = *(v31 + 2);
    v51 = *(v31 + 3);
    v53 = *(v31 + 5);
    v90 = *(v31 + 4);
    LOBYTE(v94) = 0;
    sub_24B4B2AB4();
    v55 = v92;
    v54 = v93;
    sub_24B517E3C();
    v94 = v100;
    v95 = v50;
    v96 = v52;
    v97 = v51;
    v98 = v90;
    v99 = v53;
    sub_24B4B2B08();
    sub_24B517EBC();
    (*(v68 + 8))(v27, v24);
    (*(v91 + 8))(v55, v54);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v37 = type metadata accessor for BrowseDetailDescriptor;
    sub_24B4B3A10(v31, v23, type metadata accessor for BrowseDetailDescriptor);
    LOBYTE(v94) = 1;
    sub_24B4B2A60();
    v38 = v70;
    v40 = v92;
    v39 = v93;
    sub_24B517E3C();
    sub_24B4B4924(&qword_27EFFCD08, type metadata accessor for BrowseDetailDescriptor);
    v41 = v72;
    sub_24B517EBC();
    (*(v71 + 8))(v38, v41);
    v42 = v23;
  }

  else
  {
    v37 = type metadata accessor for BrowseEditorialDescriptor;
    v62 = v74;
    sub_24B4B3A10(v31, v74, type metadata accessor for BrowseEditorialDescriptor);
    LOBYTE(v94) = 2;
    sub_24B4B2A0C();
    v63 = v75;
    v40 = v92;
    v39 = v93;
    sub_24B517E3C();
    sub_24B4B4924(&qword_27EFFCCF8, type metadata accessor for BrowseEditorialDescriptor);
    v64 = v77;
    sub_24B517EBC();
    (*(v76 + 8))(v63, v64);
    v42 = v62;
  }

  sub_24B4B5394(v42, v37);
  return (*(v91 + 8))(v40, v39);
}

unint64_t sub_24B4B2804()
{
  result = qword_27EFFCCB8;
  if (!qword_27EFFCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCB8);
  }

  return result;
}

uint64_t sub_24B4B2858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4B28BC()
{
  result = qword_27EFFCCC0;
  if (!qword_27EFFCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCC0);
  }

  return result;
}

unint64_t sub_24B4B2910()
{
  result = qword_27EFFCCD0;
  if (!qword_27EFFCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCD0);
  }

  return result;
}

unint64_t sub_24B4B2964()
{
  result = qword_27EFFCCD8;
  if (!qword_27EFFCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCD8);
  }

  return result;
}

unint64_t sub_24B4B29B8()
{
  result = qword_27EFFCCE0;
  if (!qword_27EFFCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCE0);
  }

  return result;
}

unint64_t sub_24B4B2A0C()
{
  result = qword_27EFFCCF0;
  if (!qword_27EFFCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCCF0);
  }

  return result;
}

unint64_t sub_24B4B2A60()
{
  result = qword_27EFFCD00;
  if (!qword_27EFFCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD00);
  }

  return result;
}

unint64_t sub_24B4B2AB4()
{
  result = qword_27EFFCD10;
  if (!qword_27EFFCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD10);
  }

  return result;
}

unint64_t sub_24B4B2B08()
{
  result = qword_27EFFCD18;
  if (!qword_27EFFCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD18);
  }

  return result;
}

uint64_t BrowseSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD20, &qword_24B51D108);
  v108 = *(v107 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  v117 = &v89 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD28, &qword_24B51D110);
  v105 = *(v106 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v116 = &v89 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD30, &qword_24B51D118);
  v104 = *(v103 - 8);
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  v115 = &v89 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD38, &qword_24B51D120);
  v101 = *(v102 - 8);
  v9 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v110 = &v89 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD40, &qword_24B51D128);
  v100 = *(v99 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  v109 = &v89 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD48, &qword_24B51D130);
  v98 = *(v96 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  v113 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCD50, &unk_24B51D138);
  v118 = *(v15 - 8);
  v119 = v15;
  v16 = *(v118 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - v17;
  v112 = type metadata accessor for BrowseSectionDescriptor();
  v19 = *(*(v112 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v112);
  v97 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = (&v89 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v89 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v89 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v89 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v89 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_24B4B2804();
  v114 = v18;
  v40 = v120;
  sub_24B517FCC();
  if (!v40)
  {
    v90 = v35;
    v91 = v32;
    v92 = v29;
    v93 = v26;
    v42 = v112;
    v41 = v113;
    v120 = 0;
    v43 = v115;
    v44 = v116;
    v45 = v117;
    v94 = v37;
    v46 = v119;
    v47 = v114;
    v48 = sub_24B517E1C();
    v49 = (2 * *(v48 + 16)) | 1;
    v124 = v48;
    v125 = v48 + 32;
    v126 = 0;
    v127 = v49;
    v50 = sub_24B4A39BC();
    if (v50 == 6 || v126 != v127 >> 1)
    {
      v56 = sub_24B517D0C();
      swift_allocError();
      v58 = v57;
      v59 = v47;
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v58 = v42;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
      swift_willThrow();
      v61 = *(v118 + 8);
      v62 = v59;
LABEL_10:
      v61(v62, v46);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v128);
    }

    if (v50 <= 2u)
    {
      if (v50)
      {
        v51 = v120;
        if (v50 == 1)
        {
          LOBYTE(v121) = 1;
          sub_24B4B2A60();
          v52 = v109;
          sub_24B517D7C();
          if (!v51)
          {
            type metadata accessor for BrowseDetailDescriptor();
            sub_24B4B4924(&qword_27EFFCD78, type metadata accessor for BrowseDetailDescriptor);
            v53 = v91;
            v54 = v99;
            sub_24B517E0C();
            v55 = v118;
            (*(v100 + 8))(v52, v54);
            (*(v55 + 8))(v47, v119);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v83 = v53;
LABEL_26:
            v88 = v94;
            sub_24B4B3A10(v83, v94, type metadata accessor for BrowseSectionDescriptor);
            v64 = v111;
LABEL_28:
            sub_24B4B3A10(v88, v64, type metadata accessor for BrowseSectionDescriptor);
            return __swift_destroy_boxed_opaque_existential_1(v128);
          }

          goto LABEL_23;
        }

        LOBYTE(v121) = 2;
        sub_24B4B2A0C();
        v75 = v110;
        sub_24B517D7C();
        if (!v51)
        {
          v76 = v47;
          v77 = v46;
          type metadata accessor for BrowseEditorialDescriptor();
          sub_24B4B4924(&qword_27EFFCD70, type metadata accessor for BrowseEditorialDescriptor);
          v78 = v92;
          v79 = v102;
          sub_24B517E0C();
          (*(v101 + 8))(v75, v79);
          v70 = v78;
          (*(v118 + 8))(v76, v77);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v121) = 0;
        sub_24B4B2AB4();
        v67 = v120;
        sub_24B517D7C();
        if (!v67)
        {
          sub_24B4B3ACC();
          v68 = v96;
          sub_24B517E0C();
          (*(v98 + 8))(v41, v68);
          (*(v118 + 8))(v47, v46);
          swift_unknownObjectRelease();
          v69 = v122;
          v70 = v90;
          *v90 = v121;
          v70[1] = v69;
          v70[2] = v123;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v83 = v70;
          goto LABEL_26;
        }
      }

LABEL_23:
      v61 = *(v118 + 8);
      v62 = v47;
      goto LABEL_10;
    }

    v64 = v111;
    if (v50 == 3)
    {
      LOBYTE(v121) = 3;
      sub_24B4B29B8();
      v71 = v43;
      v72 = v120;
      sub_24B517D7C();
      if (!v72)
      {
        type metadata accessor for BrowseGalleryDescriptor();
        sub_24B4B4924(&qword_27EFFCD68, type metadata accessor for BrowseGalleryDescriptor);
        v73 = v93;
        v74 = v103;
        sub_24B517E0C();
        (*(v104 + 8))(v71, v74);
        (*(v118 + 8))(v47, v119);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v83 = v73;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v50 == 4)
    {
      LOBYTE(v121) = 4;
      sub_24B4B2910();
      v65 = v120;
      sub_24B517D7C();
      if (v65)
      {
        goto LABEL_23;
      }

      sub_24B4B3A78();
      v66 = v106;
      sub_24B517E0C();
      (*(v105 + 8))(v44, v66);
      (*(v118 + 8))(v47, v46);
      swift_unknownObjectRelease();
      v84 = *(&v121 + 1);
      v85 = v122;
      v86 = v95;
      *v95 = v121;
      v86[1] = v84;
      *(v86 + 16) = v85;
      swift_storeEnumTagMultiPayload();
      v87 = v86;
    }

    else
    {
      LOBYTE(v121) = 5;
      sub_24B4B28BC();
      v80 = v120;
      sub_24B517D7C();
      if (v80)
      {
        goto LABEL_23;
      }

      type metadata accessor for NewAndFeaturedDescriptor();
      sub_24B4B4924(&qword_27EFFCD58, type metadata accessor for NewAndFeaturedDescriptor);
      v81 = v97;
      v82 = v107;
      sub_24B517E0C();
      (*(v108 + 8))(v45, v82);
      (*(v118 + 8))(v47, v119);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v87 = v81;
    }

    v88 = v94;
    sub_24B4B3A10(v87, v94, type metadata accessor for BrowseSectionDescriptor);
    goto LABEL_28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v128);
}

uint64_t sub_24B4B3A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4B3A78()
{
  result = qword_27EFFCD60;
  if (!qword_27EFFCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD60);
  }

  return result;
}

unint64_t sub_24B4B3ACC()
{
  result = qword_27EFFCD80;
  if (!qword_27EFFCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD80);
  }

  return result;
}

uint64_t BrowseSectionDescriptor.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for NewAndFeaturedDescriptor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseGalleryDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrowseEditorialDescriptor();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BrowseDetailDescriptor();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BrowseSectionDescriptor();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4B2858(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B4B3A10(v22, v18, type metadata accessor for BrowseDetailDescriptor);
        MEMORY[0x24C241D70](1);
        BrowseDetailContent.hash(into:)();
        v24 = &v18[*(v15 + 20)];
        v25 = *v24;
        v26 = *(v24 + 1);
        sub_24B517B3C();
        v27 = v18[*(v15 + 24)];
        sub_24B517F9C();
        if (v27 != 2)
        {
          MEMORY[0x24C241D70](v27 & 1);
        }

        v41 = type metadata accessor for BrowseDetailDescriptor;
        v40 = v18;
        return sub_24B4B5394(v40, v41);
      }

      v42 = type metadata accessor for BrowseEditorialDescriptor;
      sub_24B4B3A10(v22, v14, type metadata accessor for BrowseEditorialDescriptor);
      MEMORY[0x24C241D70](2);
      BrowseEditorialDescriptor.hash(into:)(a1);
      v40 = v14;
      goto LABEL_17;
    }

    v32 = *v22;
    v31 = v22[1];
    v34 = v22[2];
    v33 = v22[3];
    v36 = v22[4];
    v35 = v22[5];
    MEMORY[0x24C241D70](0);
    if (v31)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      if (v33)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_24B517F9C();
      if (v33)
      {
LABEL_12:
        sub_24B517F9C();
        sub_24B517B3C();
        if (v35)
        {
LABEL_13:
          sub_24B517F9C();
          sub_24B517B3C();
LABEL_25:
        }

LABEL_24:
        sub_24B517F9C();
        goto LABEL_25;
      }
    }

    sub_24B517F9C();
    if (v35)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_24B4B3A10(v22, v10, type metadata accessor for BrowseGalleryDescriptor);
    MEMORY[0x24C241D70](3);
    BrowseDisplayStyle.rawValue.getter(*v10);
    sub_24B517B3C();

    v37 = *(v10 + 1);
    v38 = *(v10 + 2);
    sub_24B517B3C();
    sub_24B4844E8(a1, *(v10 + 3));
    MEMORY[0x24C241D70](v10[32]);
    v39 = *(v7 + 32);
    sub_24B516B8C();
    sub_24B4B4924(&qword_2810EED98, MEMORY[0x277CC8C40]);
    sub_24B517A9C();
    v40 = v10;
    v41 = type metadata accessor for BrowseGalleryDescriptor;
    return sub_24B4B5394(v40, v41);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v42 = type metadata accessor for NewAndFeaturedDescriptor;
    sub_24B4B3A10(v22, v6, type metadata accessor for NewAndFeaturedDescriptor);
    MEMORY[0x24C241D70](5);
    NewAndFeaturedDescriptor.hash(into:)();
    v40 = v6;
LABEL_17:
    v41 = v42;
    return sub_24B4B5394(v40, v41);
  }

  v29 = *v22;
  v28 = v22[1];
  v30 = *(v22 + 16);
  MEMORY[0x24C241D70](4);
  sub_24B517B3C();
  sub_24B517F9C();
  if (v30 != 2)
  {
    MEMORY[0x24C241D70](v30 & 1);
  }
}

uint64_t BrowseSectionDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B40A4()
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4B40E8()
{
  sub_24B517F7C();
  BrowseSectionDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseSectionDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v77 = a2;
  *&v76 = a1;
  v2 = type metadata accessor for NewAndFeaturedDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseGalleryDescriptor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseEditorialDescriptor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for BrowseDetailDescriptor();
  v12 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BrowseSectionDescriptor();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v72 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v72 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v72 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v72 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE38, &qword_24B51DA38);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v72 - v36;
  v38 = &v72 + *(v35 + 56) - v36;
  sub_24B4B2858(v76, &v72 - v36);
  sub_24B4B2858(v77, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B4B2858(v37, v30);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v40 = v75;
          sub_24B4B3A10(v38, v75, type metadata accessor for BrowseDetailDescriptor);
          if ((static BrowseDetailContent.== infix(_:_:)(v30, v40) & 1) == 0)
          {
            goto LABEL_50;
          }

          v41 = *(v72 + 20);
          v42 = *&v30[v41];
          v43 = *&v30[v41 + 8];
          v44 = (v40 + v41);
          if ((v42 != *v44 || v43 != v44[1]) && (sub_24B517EEC() & 1) == 0)
          {
            goto LABEL_50;
          }

          v45 = *(v72 + 24);
          v46 = v30[v45];
          v47 = *(v40 + v45);
          if (v46 == 2)
          {
            if (v47 != 2)
            {
LABEL_50:
              sub_24B4B5394(v40, type metadata accessor for BrowseDetailDescriptor);
              sub_24B4B5394(v30, type metadata accessor for BrowseDetailDescriptor);
              goto LABEL_51;
            }
          }

          else if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
          {
            goto LABEL_50;
          }

          sub_24B4B5394(v40, type metadata accessor for BrowseDetailDescriptor);
          sub_24B4B5394(v30, type metadata accessor for BrowseDetailDescriptor);
LABEL_49:
          sub_24B4B5394(v37, type metadata accessor for BrowseSectionDescriptor);
          v59 = 1;
          return v59 & 1;
        }

        v64 = type metadata accessor for BrowseDetailDescriptor;
        v65 = v30;
        goto LABEL_37;
      }

      sub_24B4B2858(v37, v27);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v57 = type metadata accessor for BrowseEditorialDescriptor;
        sub_24B4B3A10(v38, v11, type metadata accessor for BrowseEditorialDescriptor);
        v59 = _s15FitnessBrowsing25BrowseEditorialDescriptorV2eeoiySbAC_ACtFZ_0(v27, v11);
        sub_24B4B5394(v11, type metadata accessor for BrowseEditorialDescriptor);
        v60 = v27;
        goto LABEL_28;
      }

      v64 = type metadata accessor for BrowseEditorialDescriptor;
      v65 = v27;
LABEL_37:
      sub_24B4B5394(v65, v64);
      goto LABEL_38;
    }

    sub_24B4B2858(v37, v32);
    v54 = v32[1];
    v55 = v32[3];
    v56 = v32[5];
    if (!swift_getEnumCaseMultiPayload())
    {
      v67 = v32[4];
      v68 = v32[2];
      v69 = *v32;
      v70 = *v38;
      v71 = *(v38 + 5);
      v82[0] = v69;
      v82[1] = v54;
      v82[2] = v68;
      v82[3] = v55;
      v82[4] = v67;
      v82[5] = v56;
      v78 = v70;
      v76 = *(v38 + 8);
      v77 = *(v38 + 24);
      v79 = v76;
      v80 = v77;
      v81 = v71;
      v59 = _s15FitnessBrowsing26CreatePlanBannerDescriptorV2eeoiySbAC_ACtFZ_0(v82, &v78);

      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_24B4B2858(v37, v18);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v62 = v38;
        v63 = v74;
        sub_24B4B3A10(v62, v74, type metadata accessor for NewAndFeaturedDescriptor);
        v59 = _s15FitnessBrowsing24NewAndFeaturedDescriptorV2eeoiySbAC_ACtFZ_0(v18, v63);
        sub_24B4B5394(v63, type metadata accessor for NewAndFeaturedDescriptor);
        v60 = v18;
        v61 = type metadata accessor for NewAndFeaturedDescriptor;
        goto LABEL_31;
      }

      v64 = type metadata accessor for NewAndFeaturedDescriptor;
      v65 = v18;
      goto LABEL_37;
    }

    sub_24B4B2858(v37, v21);
    v49 = *v21;
    v48 = *(v21 + 1);
    v50 = v21[16];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = *v38;
      v52 = *(v38 + 1);
      v53 = v38[16];
      if ((v49 != v51 || v48 != v52) && (sub_24B517EEC() & 1) == 0)
      {

LABEL_51:
        sub_24B4B5394(v37, type metadata accessor for BrowseSectionDescriptor);
        goto LABEL_39;
      }

      if (v50 == 2)
      {

        if (v53 != 2)
        {
          goto LABEL_51;
        }
      }

      else
      {

        if (v53 == 2 || ((v53 ^ v50) & 1) != 0)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

LABEL_23:

LABEL_38:
    sub_24B4B532C(v37);
LABEL_39:
    v59 = 0;
    return v59 & 1;
  }

  sub_24B4B2858(v37, v24);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v64 = type metadata accessor for BrowseGalleryDescriptor;
    v65 = v24;
    goto LABEL_37;
  }

  v57 = type metadata accessor for BrowseGalleryDescriptor;
  v58 = v73;
  sub_24B4B3A10(v38, v73, type metadata accessor for BrowseGalleryDescriptor);
  v59 = static BrowseGalleryDescriptor.== infix(_:_:)(v24, v58);
  sub_24B4B5394(v58, type metadata accessor for BrowseGalleryDescriptor);
  v60 = v24;
LABEL_28:
  v61 = v57;
LABEL_31:
  sub_24B4B5394(v60, v61);
LABEL_32:
  sub_24B4B5394(v37, type metadata accessor for BrowseSectionDescriptor);
  return v59 & 1;
}

uint64_t sub_24B4B4924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4B49E0()
{
  result = qword_27EFFCD90;
  if (!qword_27EFFCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD90);
  }

  return result;
}

unint64_t sub_24B4B4A38()
{
  result = qword_27EFFCD98;
  if (!qword_27EFFCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCD98);
  }

  return result;
}

unint64_t sub_24B4B4A90()
{
  result = qword_27EFFCDA0;
  if (!qword_27EFFCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDA0);
  }

  return result;
}

unint64_t sub_24B4B4AE8()
{
  result = qword_27EFFCDA8;
  if (!qword_27EFFCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDA8);
  }

  return result;
}

unint64_t sub_24B4B4B40()
{
  result = qword_27EFFCDB0;
  if (!qword_27EFFCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDB0);
  }

  return result;
}

unint64_t sub_24B4B4B98()
{
  result = qword_27EFFCDB8;
  if (!qword_27EFFCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDB8);
  }

  return result;
}

unint64_t sub_24B4B4BF0()
{
  result = qword_27EFFCDC0;
  if (!qword_27EFFCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDC0);
  }

  return result;
}

unint64_t sub_24B4B4C48()
{
  result = qword_27EFFCDC8;
  if (!qword_27EFFCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDC8);
  }

  return result;
}

unint64_t sub_24B4B4CA0()
{
  result = qword_27EFFCDD0;
  if (!qword_27EFFCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDD0);
  }

  return result;
}

unint64_t sub_24B4B4CF8()
{
  result = qword_27EFFCDD8;
  if (!qword_27EFFCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDD8);
  }

  return result;
}

unint64_t sub_24B4B4D50()
{
  result = qword_27EFFCDE0;
  if (!qword_27EFFCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDE0);
  }

  return result;
}

unint64_t sub_24B4B4DA8()
{
  result = qword_27EFFCDE8;
  if (!qword_27EFFCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDE8);
  }

  return result;
}

unint64_t sub_24B4B4E00()
{
  result = qword_27EFFCDF0;
  if (!qword_27EFFCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDF0);
  }

  return result;
}

unint64_t sub_24B4B4E58()
{
  result = qword_27EFFCDF8;
  if (!qword_27EFFCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCDF8);
  }

  return result;
}

unint64_t sub_24B4B4EB0()
{
  result = qword_27EFFCE00;
  if (!qword_27EFFCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE00);
  }

  return result;
}

unint64_t sub_24B4B4F08()
{
  result = qword_27EFFCE08;
  if (!qword_27EFFCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE08);
  }

  return result;
}

unint64_t sub_24B4B4F60()
{
  result = qword_27EFFCE10;
  if (!qword_27EFFCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE10);
  }

  return result;
}

unint64_t sub_24B4B4FB8()
{
  result = qword_27EFFCE18;
  if (!qword_27EFFCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE18);
  }

  return result;
}

unint64_t sub_24B4B5010()
{
  result = qword_27EFFCE20;
  if (!qword_27EFFCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE20);
  }

  return result;
}

unint64_t sub_24B4B5068()
{
  result = qword_27EFFCE28;
  if (!qword_27EFFCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE28);
  }

  return result;
}

unint64_t sub_24B4B50C0()
{
  result = qword_27EFFCE30;
  if (!qword_27EFFCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCE30);
  }

  return result;
}

uint64_t sub_24B4B5114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B527750 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xE900000000000067 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6546646E4177656ELL && a2 == 0xEE00646572757461)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B4B532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE38, &qword_24B51DA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4B5394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CreatePlanBannerEnvironment.init(makeWorkoutPlansUpdatedStream:onBannerTapped:queryBannerVisibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24B4B5418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B4B5460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B4B54BC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  type metadata accessor for NewAndFeaturedFeature();
  swift_getWitnessTable();
  sub_24B5179EC();
  swift_getWitnessTable();
  return sub_24B516F7C();
}

uint64_t sub_24B4B5580(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_24B516C9C();
  sub_24B516C8C();
  return v5;
}

uint64_t sub_24B4B55D8()
{
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  return sub_24B516C7C();
}

uint64_t sub_24B4B5650(uint64_t a1)
{
  v1 = *(a1 + 124);
  v2 = *(a1 + 40);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  sub_24B516C9C();
  sub_24B516C8C();
  return v4;
}

uint64_t sub_24B4B56D4(uint64_t *a1)
{
  sub_24B4C4F10(a1, v3);
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B516C7C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B4B579C(uint64_t a1)
{
  v1 = *(a1 + 128);
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getExtendedExistentialTypeMetadata();
  sub_24B516C9C();
  return sub_24B516C8C();
}

uint64_t NewAndFeaturedView.init<A>(store:itemResolver:artworkViewBuilder:contextMenuBuilder:sectionTitle:sectionSubtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  swift_storeEnumTagMultiPayload();
  v22 = swift_allocObject();
  v22[2] = a9;
  v22[3] = a10;
  v22[4] = a11;
  v22[5] = a12;
  v22[6] = a13;
  v22[7] = a14;
  v22[8] = a15;
  v22[9] = a16;
  v22[10] = a17;
  v22[11] = a18;
  v22[12] = a19;
  v22[13] = a20;
  v22[14] = a21;
  v22[15] = a1;
  v22[16] = a2;
  swift_getAssociatedTypeWitness();
  v23 = *(swift_getAssociatedConformanceWitness() + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  type metadata accessor for NewAndFeaturedFeature();
  swift_getWitnessTable();
  sub_24B5179EC();
  swift_getWitnessTable();
  v25 = sub_24B516F6C();
  v27 = v26;
  v29 = v28;
  v46 = a9;
  v47 = a10;
  v48 = a11;
  v49 = a12;
  v50 = a14;
  v51 = a15;
  v52 = a16;
  v53 = a17;
  v54 = a18;
  v55 = AssociatedConformanceWitness;
  v56 = a19;
  v57 = a20;
  v30 = type metadata accessor for NewAndFeaturedView();
  v31 = a7 + v30[29];
  *v31 = v25;
  *(v31 + 1) = v27;
  v31[16] = v29 & 1;
  v49 = a13;
  v50 = a21;
  v32 = __swift_allocate_boxed_opaque_existential_1(&v46);
  v33 = *(a13 - 8);
  (*(v33 + 16))(v32, a3, a13);
  v34 = v30[32];
  sub_24B4B56D4(&v46);
  v35 = v30[30];

  v46 = a4;
  v47 = a5;
  swift_getFunctionTypeMetadata1();
  sub_24B516C7C();
  v36 = v30[31];
  sub_24B4B55D8();

  (*(v33 + 8))(a3, a13);
  v37 = v30[33];
  v38 = sub_24B516B8C();
  (*(*(v38 - 8) + 32))(a7 + v37, a6, v38);
  return sub_24B49AA90(a8, a7 + v30[34], &qword_27EFFC4E8, &qword_24B51F380);
}

__n128 sub_24B4B5C84@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B51701C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE88, &qword_24B51DBA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v23 - v15;
  *v16 = sub_24B51721C();
  *(v16 + 1) = 0x4014000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEA8, &qword_24B51DCD0);
  sub_24B4B5F28(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &v16[*(v17 + 44)], *(a1 + 72), *(a1 + 88), *(a1 + 104));
  sub_24B4C343C(v12);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF988], v5);
  sub_24B51700C();
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  sub_24B5178DC();
  sub_24B51707C();
  sub_24B49AA90(v16, a2, &qword_27EFFCE88, &qword_24B51DBA8);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE80, &qword_24B51DBA0) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_24B4B5F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v69 = a6;
  v65 = a5;
  v71 = a9;
  v64 = a11;
  v63 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = &v61 - v20;
  v21 = sub_24B516B8C();
  v22 = *(v21 - 8);
  v67 = v21;
  v68 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v61 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24B51720C();
  v25 = *(v62 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v62);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB8, &qword_24B51DCE0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v70 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v61 - v33;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = v65;
  v76 = v69;
  v77 = a7;
  v78 = a8;
  v79 = v63;
  v80 = v64;
  v81 = a12;
  v35 = type metadata accessor for NewAndFeaturedView();
  v36 = a1 + *(v35 + 132);
  v37 = a1;
  v38 = sub_24B516B6C();
  v40 = v39;
  v72 = v38;
  v73 = v39;
  v42 = v41 & 1;
  LOBYTE(v74) = v41 & 1;
  v75 = v43;
  sub_24B5171FC();
  v69 = v34;
  v44 = v66;
  sub_24B5175EC();
  (*(v25 + 8))(v28, v62);
  v45 = v67;
  sub_24B49627C(v38, v40, v42);
  v46 = v68;

  sub_24B496724(v37 + *(v35 + 136), v44, &qword_27EFFC4E8, &qword_24B51F380);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_24B49689C(v44, &qword_27EFFC4E8, &qword_24B51F380);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v51 = v61;
    (*(v46 + 32))(v61, v44, v45);
    v47 = sub_24B516B6C();
    v48 = v52;
    v54 = v53;
    v50 = v55;
    (*(v46 + 8))(v51, v45);
    v49 = v54 & 1;
    sub_24B496398(v47, v48, v54 & 1);
  }

  v57 = v69;
  v56 = v70;
  sub_24B496724(v69, v70, &qword_27EFFCEB8, &qword_24B51DCE0);
  v58 = v71;
  sub_24B496724(v56, v71, &qword_27EFFCEB8, &qword_24B51DCE0);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEC0, &qword_24B51DCE8) + 48));
  sub_24B4C4458(v47, v48, v49, v50);
  sub_24B4C449C(v47, v48, v49, v50);
  *v59 = v47;
  v59[1] = v48;
  v59[2] = v49;
  v59[3] = v50;
  sub_24B49689C(v57, &qword_27EFFCEB8, &qword_24B51DCE0);
  sub_24B4C449C(v47, v48, v49, v50);
  return sub_24B49689C(v56, &qword_27EFFCEB8, &qword_24B51DCE0);
}

uint64_t NewAndFeaturedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_24B517A7C();
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v127 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v126 = &v105 - v9;
  v124 = *(a1 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v123 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v11 = *(a1 + 64);
  v121 = *(a1 + 72);
  v122 = v11;
  v12 = *(a1 + 80);
  v135 = *(a1 + 88);
  v136 = v12;
  v169 = v11;
  v170 = v121;
  v171 = v12;
  v172 = v135;
  v13 = *(a1 + 48);
  v133 = *(a1 + 16);
  v134 = v13;
  v14 = a1;
  v119 = a1;
  v168 = v13;
  v167 = v133;
  v15 = type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v132 = *(v14 + 40);
  v16 = sub_24B51702C();
  v17 = sub_24B4C29D8();
  v120 = *(v14 + 104);
  v165 = v17;
  v166 = v120;
  v118 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  *&v167 = v16;
  *(&v167 + 1) = WitnessTable;
  v137 = MEMORY[0x277D7EDA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v19 = sub_24B51724C();
  v20 = swift_getWitnessTable();
  *&v167 = v16;
  *(&v167 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v163 = OpaqueTypeConformance2;
  v164 = v22;
  v131 = MEMORY[0x277CE0340];
  v23 = swift_getWitnessTable();
  *&v167 = v15;
  *(&v167 + 1) = v19;
  *&v168 = v20;
  *(&v168 + 1) = v23;
  v24 = sub_24B516DFC();
  v25 = sub_24B516E8C();
  v26 = swift_getWitnessTable();
  v27 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  *&v167 = v24;
  *(&v167 + 1) = v25;
  *&v168 = v26;
  *(&v168 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_24B516EDC();
  v29 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  *&v167 = v24;
  *(&v167 + 1) = v28;
  *&v168 = v26;
  *(&v168 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = sub_24B51724C();
  *&v167 = v24;
  *(&v167 + 1) = v25;
  *&v168 = v26;
  *(&v168 + 1) = v27;
  v31 = swift_getOpaqueTypeConformance2();
  *&v167 = v24;
  *(&v167 + 1) = v28;
  *&v168 = v26;
  *(&v168 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v161 = v31;
  v162 = v32;
  v33 = swift_getWitnessTable();
  *&v167 = v30;
  *(&v167 + 1) = v33;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  *&v167 = v30;
  *(&v167 + 1) = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v159 = MEMORY[0x277CE1410];
  v160 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_24B4C2B48();
  v157 = v35;
  v158 = v36;
  v113 = swift_getWitnessTable();
  v37 = sub_24B51791C();
  v38 = swift_getWitnessTable();
  *&v167 = v37;
  *(&v167 + 1) = v38;
  swift_getOpaqueTypeMetadata2();
  *&v167 = v37;
  *(&v167 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = sub_24B516F4C();
  v114 = MEMORY[0x277CDD6E0];
  v40 = swift_getWitnessTable();
  *&v167 = v39;
  *(&v167 + 1) = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = sub_24B51735C();
  *&v167 = v39;
  *(&v167 + 1) = v40;
  v43 = swift_getOpaqueTypeConformance2();
  *&v167 = OpaqueTypeMetadata2;
  *(&v167 + 1) = v42;
  *&v168 = v43;
  *(&v168 + 1) = MEMORY[0x277CDE478];
  v44 = MEMORY[0x277CDE478];
  v45 = swift_getOpaqueTypeMetadata2();
  *&v167 = OpaqueTypeMetadata2;
  *(&v167 + 1) = v42;
  *&v168 = v43;
  *(&v168 + 1) = v44;
  v46 = swift_getOpaqueTypeConformance2();
  *&v167 = v45;
  *(&v167 + 1) = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v116 = v47;
  *&v167 = v45;
  *(&v167 + 1) = v46;
  v115 = swift_getOpaqueTypeConformance2();
  *&v167 = v47;
  *(&v167 + 1) = v115;
  v111 = MEMORY[0x277CDEB58];
  v112 = swift_getOpaqueTypeMetadata2();
  v48 = sub_24B516F3C();
  v49 = swift_getWitnessTable();
  *&v167 = v48;
  *(&v167 + 1) = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  *&v167 = v48;
  *(&v167 + 1) = v49;
  v51 = swift_getOpaqueTypeConformance2();
  *&v167 = v50;
  *(&v167 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  *&v167 = v50;
  *(&v167 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v52 = sub_24B516F4C();
  v53 = swift_getWitnessTable();
  *&v167 = v52;
  *(&v167 + 1) = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  *&v167 = v52;
  *(&v167 + 1) = v53;
  v55 = swift_getOpaqueTypeConformance2();
  *&v167 = v54;
  *(&v167 + 1) = v42;
  *&v168 = v55;
  v56 = MEMORY[0x277CDE478];
  *(&v168 + 1) = MEMORY[0x277CDE478];
  v57 = swift_getOpaqueTypeMetadata2();
  *&v167 = v54;
  *(&v167 + 1) = v42;
  *&v168 = v55;
  *(&v168 + 1) = v56;
  v58 = swift_getOpaqueTypeConformance2();
  *&v167 = v57;
  *(&v167 + 1) = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  *&v167 = v57;
  *(&v167 + 1) = v58;
  v60 = swift_getOpaqueTypeConformance2();
  *&v167 = v59;
  *(&v167 + 1) = v60;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51786C();
  v61 = sub_24B4C2E64();
  *&v167 = v116;
  *(&v167 + 1) = v115;
  v62 = swift_getOpaqueTypeConformance2();
  *&v167 = v59;
  *(&v167 + 1) = v60;
  v63 = swift_getOpaqueTypeConformance2();
  v155 = v62;
  v156 = v63;
  v64 = swift_getWitnessTable();
  v152 = v61;
  v153 = v64;
  v154 = MEMORY[0x277CE1410];
  v112 = swift_getWitnessTable();
  v65 = sub_24B51780C();
  v116 = *(v65 - 8);
  v66 = *(v116 + 64);
  MEMORY[0x28223BE20](v65);
  v107 = &v105 - v67;
  v110 = v65;
  v68 = sub_24B51702C();
  v114 = v68;
  v131 = *(v68 - 8);
  v69 = *(v131 + 64);
  MEMORY[0x28223BE20](v68);
  v111 = &v105 - v70;
  v108 = swift_getWitnessTable();
  v150 = v108;
  v151 = MEMORY[0x277CE0790];
  v113 = swift_getWitnessTable();
  *&v167 = v68;
  *(&v167 + 1) = v113;
  v71 = swift_getOpaqueTypeMetadata2();
  v72 = *(v71 - 8);
  v117 = v71;
  v118 = v72;
  v73 = *(v72 + 64);
  v74 = MEMORY[0x28223BE20](v71);
  v109 = &v105 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v115 = &v105 - v76;
  sub_24B51721C();
  v139 = v133;
  v78 = v119;
  v77 = v120;
  v106 = *(v119 + 32);
  v140 = v106;
  v141 = v132;
  v142 = v134;
  v80 = v121;
  v79 = v122;
  v143 = v122;
  v144 = v121;
  v145 = v136;
  v146 = v135;
  v147 = *(v119 + 96);
  v81 = v147;
  v148 = v120;
  v82 = v138;
  v149 = v138;
  sub_24B5177FC();
  v83 = v123;
  v84 = v124;
  (*(v124 + 16))(v123, v82, v78);
  v85 = (*(v84 + 80) + 112) & ~*(v84 + 80);
  v86 = swift_allocObject();
  v87 = v134;
  *(v86 + 16) = v133;
  v88 = v132;
  *(v86 + 32) = v106;
  *(v86 + 40) = v88;
  *(v86 + 48) = v87;
  *(v86 + 64) = v79;
  *(v86 + 72) = v80;
  v89 = v135;
  *(v86 + 80) = v136;
  *(v86 + 88) = v89;
  *(v86 + 96) = v81;
  *(v86 + 104) = v77;
  v90 = v78;
  (*(v84 + 32))(v86 + v85, v83, v78);
  v91 = v110;
  v92 = v111;
  v93 = v107;
  sub_24B51766C();

  (*(v116 + 8))(v93, v91);
  v94 = v126;
  sub_24B4B98C8(v90, v126);
  v95 = sub_24B517A4C();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  v96 = v127;
  sub_24B517A5C();
  v97 = v109;
  v99 = v113;
  v98 = v114;
  sub_24B5174DC();
  (*(v128 + 8))(v96, v129);
  sub_24B49689C(v94, &qword_27EFFC618, &qword_24B51DB60);
  (*(v131 + 8))(v92, v98);
  *&v167 = v98;
  *(&v167 + 1) = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v115;
  v102 = v117;
  sub_24B49711C(v97, v117, v100);
  v103 = *(v118 + 8);
  v103(v97, v102);
  sub_24B49711C(v101, v102, v100);
  return (v103)(v101, v102);
}

uint64_t sub_24B4B7234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a7;
  v46 = a8;
  v44 = a6;
  v38 = a5;
  v39 = a2;
  v47 = a4;
  v40 = a3;
  v49 = a1;
  v50 = a9;
  v52 = a14;
  v48 = a13;
  v43 = a12;
  v42 = a11;
  v41 = a10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v60 = a8;
  v61 = a10;
  v62 = a11;
  v63 = a12;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  v55[29] = sub_24B4C29D8();
  v55[30] = a14;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  v55[27] = swift_getOpaqueTypeConformance2();
  v55[28] = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v51 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v55[25] = swift_getOpaqueTypeConformance2();
  v55[26] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55[23] = MEMORY[0x277CE1410];
  v55[24] = OpaqueTypeConformance2;
  v55[21] = swift_getWitnessTable();
  v55[22] = sub_24B4C2B48();
  v34[2] = swift_getWitnessTable();
  sub_24B51791C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51735C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = swift_getOpaqueTypeConformance2();
  v34[0] = MEMORY[0x277CDEB58];
  v34[1] = swift_getOpaqueTypeMetadata2();
  sub_24B516F3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v16 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  v58 = v16;
  v59 = v17;
  swift_getOpaqueTypeConformance2();
  v35 = swift_getOpaqueTypeMetadata2();
  v18 = swift_getOpaqueTypeConformance2();
  v56 = v35;
  v57 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v19 = sub_24B51786C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v34 - v25;
  v55[2] = v39;
  v55[3] = v40;
  v55[4] = v47;
  v55[5] = v38;
  v55[6] = v44;
  v55[7] = v45;
  v55[8] = v46;
  v55[9] = v41;
  v55[10] = v42;
  v55[11] = v43;
  v55[12] = v48;
  v55[13] = v52;
  v55[14] = v49;
  v54[2] = v39;
  v54[3] = v40;
  v54[4] = v47;
  v54[5] = v38;
  v54[6] = v44;
  v54[7] = v45;
  v54[8] = v46;
  v54[9] = v41;
  v54[10] = v42;
  v54[11] = v43;
  v54[12] = v48;
  v54[13] = v52;
  v54[14] = v49;
  v27 = sub_24B4C2E64();
  v56 = OpaqueTypeMetadata2;
  v57 = v36;
  v28 = swift_getOpaqueTypeConformance2();
  v56 = v35;
  v57 = v18;
  v29 = swift_getOpaqueTypeConformance2();
  v55[19] = v28;
  v55[20] = v29;
  WitnessTable = swift_getWitnessTable();
  sub_24B4B9638(sub_24B4C4424, v55, sub_24B4C443C, v54, v53);
  v55[16] = v27;
  v55[17] = WitnessTable;
  v55[18] = MEMORY[0x277CE1410];
  v31 = swift_getWitnessTable();
  sub_24B49711C(v24, v19, v31);
  v32 = *(v20 + 8);
  v32(v24, v19);
  sub_24B49711C(v26, v19, v31);
  return (v32)(v26, v19);
}

uint64_t sub_24B4B7C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v47 = a8;
  v46 = a7;
  v45 = a6;
  v39 = a5;
  v48 = a4;
  v41 = a3;
  v40 = a2;
  v50 = a1;
  v51 = a9;
  v38 = a14;
  v49 = a13;
  v44 = a12;
  v43 = a11;
  v42 = a10;
  v58 = a8;
  v59 = a10;
  v60 = a11;
  v61 = a12;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  v74 = sub_24B4C29D8();
  v75 = a14;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v14 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v70 = swift_getOpaqueTypeConformance2();
  v71 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v15 = swift_getOpaqueTypeConformance2();
  v68 = MEMORY[0x277CE1410];
  v69 = v15;
  v37 = v14;
  WitnessTable = swift_getWitnessTable();
  v67 = sub_24B4C2B48();
  swift_getWitnessTable();
  sub_24B51791C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  v34[1] = MEMORY[0x277CDD6E0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51735C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = swift_getOpaqueTypeConformance2();
  v34[0] = swift_getOpaqueTypeMetadata2();
  sub_24B516F3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v16 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = swift_getOpaqueTypeConformance2();
  v54 = v18;
  v55 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_24B51724C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v34 - v26;
  v54 = v40;
  v55 = v41;
  v56 = v48;
  v57 = v39;
  v58 = v45;
  v59 = v46;
  v60 = v47;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = v49;
  v65 = v38;
  v28 = type metadata accessor for NewAndFeaturedView();
  sub_24B4B8734(v28, v25);
  v54 = OpaqueTypeMetadata2;
  v55 = v35;
  v29 = swift_getOpaqueTypeConformance2();
  v54 = v18;
  v55 = v19;
  v30 = swift_getOpaqueTypeConformance2();
  v52 = v29;
  v53 = v30;
  v31 = swift_getWitnessTable();
  sub_24B49711C(v25, v20, v31);
  v32 = *(v21 + 8);
  v32(v25, v20);
  sub_24B49711C(v27, v20, v31);
  return (v32)(v27, v20);
}

uint64_t sub_24B4B8734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v69 = a2;
  v2 = *(a1 + 64);
  v67 = *(a1 + 72);
  v68 = v2;
  v3 = *(a1 + 80);
  v65 = *(a1 + 88);
  v66 = v3;
  v99 = v2;
  v100 = v67;
  v101 = v3;
  v102 = v65;
  v4 = *(a1 + 48);
  v63 = *(a1 + 16);
  v64 = v4;
  v98 = v4;
  v97 = v63;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v62 = *(a1 + 40);
  sub_24B51702C();
  v6 = sub_24B4C29D8();
  v61 = *(a1 + 104);
  v95 = v6;
  v96 = v61;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v91 = swift_getOpaqueTypeConformance2();
  v92 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v7 = swift_getOpaqueTypeConformance2();
  v89 = MEMORY[0x277CE1410];
  v90 = v7;
  WitnessTable = swift_getWitnessTable();
  v88 = sub_24B4C2B48();
  v70 = swift_getWitnessTable();
  sub_24B516F3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  v71 = MEMORY[0x277CDD6E0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v8 = sub_24B51735C();
  v9 = swift_getOpaqueTypeConformance2();
  v58 = v8;
  v10 = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  *&v98 = v9;
  *(&v98 + 1) = v10;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v97 = OpaqueTypeMetadata2;
  *(&v97 + 1) = swift_getOpaqueTypeConformance2();
  v72 = __PAIR128__(*(&v97 + 1), swift_getOpaqueTypeMetadata2());
  v56 = *(v72 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v72);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v54 - v14;
  v15 = sub_24B51791C();
  v16 = swift_getWitnessTable();
  *&v97 = v15;
  *(&v97 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  *&v97 = v15;
  *(&v97 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_24B516F4C();
  v18 = swift_getWitnessTable();
  *&v97 = v17;
  *(&v97 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  *&v97 = v17;
  *(&v97 + 1) = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v58;
  *&v97 = v19;
  *(&v97 + 1) = v58;
  *&v98 = v20;
  v22 = MEMORY[0x277CDE478];
  *(&v98 + 1) = MEMORY[0x277CDE478];
  v23 = swift_getOpaqueTypeMetadata2();
  *&v97 = v19;
  *(&v97 + 1) = v21;
  *&v98 = v20;
  *(&v98 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  *&v97 = v23;
  *(&v97 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  *&v97 = v23;
  *(&v97 + 1) = v24;
  v26 = swift_getOpaqueTypeConformance2();
  *&v97 = v25;
  *(&v97 + 1) = v26;
  v71 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v54 - v33;
  v35 = sub_24B51724C();
  v57 = *(v35 - 8);
  v58 = v35;
  v36 = *(v57 + 64);
  MEMORY[0x28223BE20](v35);
  v70 = &v54 - v37;
  v38 = v60;
  sub_24B4B54BC(v60);
  v73 = v63;
  v74 = *(v38 + 32);
  v75 = v62;
  v76 = v64;
  v77 = v68;
  v78 = v67;
  v79 = v66;
  v80 = v65;
  v81 = *(v38 + 96);
  v82 = v61;
  swift_getKeyPath();
  sub_24B5179CC();

  if (v86)
  {
    v39 = v55;
    sub_24B4BA3E4(v38, v55);
    v40 = OpaqueTypeMetadata2;
    *&v97 = OpaqueTypeMetadata2;
    *(&v97 + 1) = *(&v72 + 1);
    v41 = swift_getOpaqueTypeConformance2();
    v68 = v25;
    v42 = v54;
    v43 = v72;
    sub_24B49711C(v39, v72, v41);
    v44 = *(v56 + 8);
    v44(v39, v43);
    sub_24B49711C(v42, v43, v41);
    *&v97 = v68;
    *(&v97 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_24B48D23C(v39, v27, v43);
    v44(v39, v43);
    v45 = v42;
    v25 = v68;
    v44(v45, v43);
  }

  else
  {
    sub_24B4B9F54(v85, v38, v32);
    *&v97 = v25;
    *(&v97 + 1) = v71;
    v46 = swift_getOpaqueTypeConformance2();
    sub_24B49711C(v32, v27, v46);
    v47 = *(v28 + 8);
    v47(v32, v27);
    sub_24B49711C(v34, v27, v46);
    v40 = OpaqueTypeMetadata2;
    *&v97 = OpaqueTypeMetadata2;
    *(&v97 + 1) = *(&v72 + 1);
    swift_getOpaqueTypeConformance2();
    sub_24B48D144(v32, v27);
    v47(v32, v27);
    v47(v34, v27);
  }

  *&v97 = v25;
  *(&v97 + 1) = v71;
  v48 = swift_getOpaqueTypeConformance2();
  *&v97 = v40;
  *(&v97 + 1) = *(&v72 + 1);
  v49 = swift_getOpaqueTypeConformance2();
  v83 = v48;
  v84 = v49;
  v50 = v58;
  v51 = swift_getWitnessTable();
  v52 = v70;
  sub_24B49711C(v70, v50, v51);
  return (*(v57 + 8))(v52, v50);
}

uint64_t sub_24B4B9370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a8;
  v39 = a4;
  v38 = a3;
  v36 = a2;
  v42 = a1;
  v46 = a9;
  v41 = a14;
  v40 = a13;
  v37 = a11;
  v44 = sub_24B516E2C();
  v43 = *(v44 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = v45;
  v66 = a10;
  v67 = a11;
  v68 = a12;
  v69 = a13;
  v70 = a14;
  v23 = type metadata accessor for NewAndFeaturedView();
  sub_24B4B5C84(v23, v46);
  sub_24B4B54BC(v23);
  v47 = v36;
  v48 = v38;
  v49 = v39;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = v45;
  v54 = a10;
  v55 = v37;
  v56 = a12;
  v57 = a13;
  v58 = a14;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516E0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v43 + 8))(v22, v44);
  v32 = sub_24B5173BC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE48, &qword_24B51DB68);
  v34 = v46 + *(result + 36);
  *v34 = v32;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_24B4B9638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7(v6);
  return sub_24B51784C();
}

uint64_t sub_24B4B9708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v25 = a6;
  v26 = a13;
  v31 = a3;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v30 = type metadata accessor for NewAndFeaturedAction();
  v17 = *(v30 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v30);
  v20 = &v24 - v19;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v25;
  v36 = v27;
  v37 = v28;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v21 = type metadata accessor for NewAndFeaturedView();
  sub_24B4B54BC(v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(TupleTypeMetadata3 - 8) + 56))(v20, 1, 1, TupleTypeMetadata3);
  sub_24B5179DC();

  return (*(v17 + 8))(v20, v30);
}

uint64_t sub_24B4B98C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[3] = a2;
  v3 = sub_24B517A0C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24[2] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B517A2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC620, &qword_24B51A9C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B51A9B0;
  *(v9 + 32) = 1701667182;
  *(v9 + 40) = 0xE400000000000000;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v51[2] = v61;
  v51[3] = v62;
  v51[4] = v63;
  v51[0] = v59;
  v51[1] = v60;
  v11 = *(&v60 + 1);
  v10 = v61;

  sub_24B488FA8(v51);
  v12 = MEMORY[0x277D837D0];
  *(v9 + 48) = v11;
  *(v9 + 56) = v10;
  *(v9 + 72) = v12;
  strcpy((v9 + 80), "impressionType");
  *(v9 + 95) = -18;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v52[2] = v48;
  v52[3] = v49;
  v52[4] = v50;
  v52[0] = v46;
  v52[1] = v47;
  v13 = *(&v48 + 1);
  v14 = v49;
  *(v9 + 120) = v12;

  sub_24B488FA8(v52);
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 128) = 0x6973736572706D69;
  *(v9 + 136) = 0xEF7865646E496E6FLL;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v55 = v43;
  v56 = v44;
  v57 = v45;
  v53 = v41;
  v54 = v42;
  sub_24B488FA8(&v53);
  v15 = MEMORY[0x277D83B88];
  *(v9 + 144) = v54;
  *(v9 + 168) = v15;
  *(v9 + 176) = 0x657079546469;
  *(v9 + 184) = 0xE600000000000000;
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v58[3] = v39;
  v58[4] = v40;
  v58[1] = v37;
  v58[2] = v38;
  v58[0] = v36;
  v17 = *(&v39 + 1);
  v16 = v40;
  *(v9 + 216) = v12;

  sub_24B488FA8(v58);
  *(v9 + 192) = v17;
  *(v9 + 200) = v16;
  v18 = sub_24B4A06C8(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v62 = v49;
  v63 = v50;
  v60 = v47;
  v61 = v48;
  v59 = v46;
  v19 = *(&v50 + 1);

  sub_24B488FA8(&v59);
  v20 = sub_24B4A02F4(v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v18;
  sub_24B4A07D8(v20, sub_24B4A067C, 0, isUniquelyReferenced_nonNull_native, &v35);

  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;

  sub_24B488FA8(&v36);
  sub_24B4B54BC(a1);
  swift_getKeyPath();
  sub_24B5179BC();

  v43 = v27;
  v44 = v28;
  v45 = v29;
  v41 = v25;
  v42 = v26;
  sub_24B488FA8(&v41);
  sub_24B517A1C();
  sub_24B5179FC();
  v22 = MEMORY[0x277D84F90];
  sub_24B4A06C8(MEMORY[0x277D84F90]);
  sub_24B4A06C8(v22);
  return sub_24B517A3C();
}

double sub_24B4B9E24(_OWORD *a1)
{
  v2 = sub_24B516D4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4B54BC(a1);
  v7 = a1[2];
  v13[0] = a1[1];
  v13[1] = v7;
  v8 = a1[4];
  v13[2] = a1[3];
  v13[3] = v8;
  v9 = a1[6];
  v13[4] = a1[5];
  v13[5] = v9;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516D3C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_24B4B9F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v4 = *(a2 + 48);
  v20 = *(a2 + 40);
  v21 = v4;
  v5 = *(a2 + 64);
  v22 = *(a2 + 56);
  v23 = v5;
  v6 = *(a2 + 80);
  v24 = *(a2 + 72);
  v25 = v6;
  v26 = *(a2 + 88);
  v7 = *(a2 + 104);
  v27 = a1;
  v42 = v5;
  v43 = v24;
  v44 = v6;
  v45 = v26;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  v36 = sub_24B4C29D8();
  v37 = v7;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  WitnessTable = swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  v9 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  v10 = sub_24B51724C();
  v40 = WitnessTable;
  v41 = v9;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = swift_getOpaqueTypeConformance2();
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v38 = v10;
  v39 = v11;
  v12 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CE1410];
  v31 = v12;
  v28 = swift_getWitnessTable();
  v29 = sub_24B4C2B48();
  swift_getWitnessTable();
  v13 = sub_24B51791C();
  v14 = swift_getWitnessTable();
  return sub_24B4BBEB0(sub_24B4C44E0, v17, a2, v13, v14, a3);
}

uint64_t sub_24B4BA3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v2 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v2;
  v3 = *(a1 + 64);
  v21 = *(a1 + 56);
  v22 = v3;
  v4 = *(a1 + 80);
  v23 = *(a1 + 72);
  v24 = v4;
  v25 = *(a1 + 88);
  v5 = *(a1 + 104);
  v40 = v3;
  v41 = v23;
  v42 = v4;
  v43 = v25;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  v34 = sub_24B4C29D8();
  v35 = v5;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  WitnessTable = swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  v7 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v38 = WitnessTable;
  v39 = v7;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  v8 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CE1410];
  v29 = v8;
  v26 = swift_getWitnessTable();
  v27 = sub_24B4C2B48();
  swift_getWitnessTable();
  v9 = sub_24B516F3C();
  v10 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = v9;
  v37 = v10;
  v12 = swift_getOpaqueTypeConformance2();
  return sub_24B4BBEB0(sub_24B4C4E58, v16, a1, OpaqueTypeMetadata2, v12, a2);
}

uint64_t sub_24B4BA8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v85 = a7;
  v86 = a8;
  v83 = a9;
  v84 = a6;
  v90 = a5;
  v93 = a3;
  v94 = a4;
  v79 = a2;
  v92 = a1;
  v77 = a14;
  v91 = a15;
  v76 = a13;
  v88 = a12;
  v87 = a11;
  v89 = a10;
  v19 = sub_24B51727C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v82 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B516D4C();
  v80 = *(v22 - 8);
  v81 = v22;
  v23 = *(v80 + 64);
  MEMORY[0x28223BE20](v22);
  v78 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a3;
  v121 = a4;
  v122 = a7;
  v123 = a8;
  v124 = a10;
  v125 = a11;
  v126 = a12;
  v127 = a13;
  v25 = type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v26 = sub_24B51702C();
  v140 = sub_24B4C29D8();
  v141 = v91;
  WitnessTable = swift_getWitnessTable();
  v120 = v26;
  v121 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v28 = sub_24B51724C();
  v29 = swift_getWitnessTable();
  v120 = v26;
  v121 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v138 = OpaqueTypeConformance2;
  v139 = v31;
  v75 = MEMORY[0x277CE0340];
  v32 = swift_getWitnessTable();
  v120 = v25;
  v121 = v28;
  v122 = v29;
  v123 = v32;
  v33 = sub_24B516DFC();
  v34 = sub_24B516E8C();
  v35 = swift_getWitnessTable();
  v36 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  v120 = v33;
  v121 = v34;
  v122 = v35;
  v123 = v36;
  swift_getOpaqueTypeMetadata2();
  v37 = sub_24B516EDC();
  v38 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  v120 = v33;
  v121 = v37;
  v122 = v35;
  v123 = v38;
  swift_getOpaqueTypeMetadata2();
  v39 = sub_24B51724C();
  v120 = v33;
  v121 = v34;
  v122 = v35;
  v123 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v120 = v33;
  v121 = v37;
  v122 = v35;
  v123 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v136 = v40;
  v137 = v41;
  v42 = swift_getWitnessTable();
  v120 = v39;
  v121 = v42;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v43 = sub_24B51724C();
  v120 = v39;
  v121 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v134 = MEMORY[0x277CE1410];
  v135 = v44;
  v45 = swift_getWitnessTable();
  v46 = sub_24B4C2B48();
  v132 = v45;
  v133 = v46;
  v71[2] = v43;
  v71[1] = swift_getWitnessTable();
  v47 = sub_24B51791C();
  v48 = *(v47 - 8);
  v74 = v47;
  v75 = v48;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v72 = v71 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v73 = v71 - v52;
  v120 = v93;
  v121 = v94;
  v53 = v90;
  v55 = v84;
  v54 = v85;
  v122 = v90;
  v123 = v84;
  v56 = v86;
  v124 = v85;
  v125 = v86;
  v126 = v89;
  v127 = v87;
  v58 = v76;
  v57 = v77;
  v128 = v88;
  v129 = v76;
  v130 = v77;
  v59 = v91;
  v131 = v91;
  v60 = type metadata accessor for NewAndFeaturedView();
  v79 = sub_24B4BB060(v79);
  v71[0] = sub_24B51714C();
  sub_24B4B54BC(v60);
  v108 = v93;
  v109 = v94;
  v110 = v53;
  v111 = v55;
  v112 = v54;
  v113 = v56;
  v62 = v88;
  v61 = v89;
  v63 = v87;
  v114 = v89;
  v115 = v87;
  v116 = v88;
  v117 = v58;
  v118 = v57;
  v119 = v59;
  swift_getKeyPath();
  v64 = v78;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v80 + 8))(v64, v81);
  v95 = v93;
  v96 = v94;
  v97 = v90;
  v98 = v84;
  v99 = v85;
  v100 = v86;
  v101 = v61;
  v102 = v63;
  v103 = v62;
  v104 = v58;
  v105 = v57;
  v106 = v59;
  v107 = v92;
  sub_24B4BCFD4();
  v65 = v72;
  sub_24B51790C();
  v66 = v74;
  v67 = swift_getWitnessTable();
  v68 = v73;
  sub_24B49711C(v65, v66, v67);
  v69 = *(v75 + 8);
  v69(v65, v66);
  sub_24B49711C(v68, v66, v67);
  return (v69)(v68, v66);
}

uint64_t sub_24B4BB060(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v3 = v2[2];
    v7[1] = v2[1];
    v7[2] = v3;
    v4 = v2[4];
    v7[3] = v2[3];
    v7[4] = v4;
    v5 = v2[6];
    v7[5] = v2[5];
    v7[6] = v5;
    v8 = v1;
    return sub_24B4BDE28(sub_24B4C4E10, v7, 0, v6);
  }

  return result;
}

uint64_t sub_24B4BB0F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a1;
  v125 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCED0, &qword_24B51DD58);
  v4 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v106 = (&v100 - v5);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE68, &qword_24B51DB88);
  v6 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v108 = &v100 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCED8, &qword_24B51DD60);
  v103 = *(v107 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v107);
  v102 = &v100 - v9;
  v10 = *(a2 + 64);
  v120 = *(a2 + 72);
  v121 = v10;
  v11 = *(a2 + 80);
  v118 = *(a2 + 88);
  v119 = v11;
  v160 = v10;
  v161 = v120;
  v162 = v11;
  v163 = v118;
  v12 = *(a2 + 48);
  v116 = *(a2 + 16);
  v117 = v12;
  v113 = a2;
  v159 = v12;
  v158 = v116;
  v13 = type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v115 = *(a2 + 40);
  v14 = sub_24B51702C();
  v15 = sub_24B4C29D8();
  v114 = *(a2 + 104);
  v156 = v15;
  v157 = v114;
  WitnessTable = swift_getWitnessTable();
  *&v158 = v14;
  *(&v158 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v17 = sub_24B51724C();
  v126 = v13;
  v18 = swift_getWitnessTable();
  v124 = v18;
  *&v158 = v14;
  *(&v158 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v154 = OpaqueTypeConformance2;
  v155 = v20;
  *(&v127 + 1) = MEMORY[0x277CE0340];
  v21 = swift_getWitnessTable();
  *&v158 = v13;
  *(&v158 + 1) = v17;
  *&v159 = v18;
  *(&v159 + 1) = v21;
  v22 = sub_24B516DFC();
  v23 = sub_24B516E8C();
  *&v127 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  *&v158 = v22;
  *(&v158 + 1) = v23;
  *&v159 = v24;
  *(&v159 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = sub_24B516EDC();
  v27 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  *&v158 = v22;
  *(&v158 + 1) = v26;
  *&v159 = v24;
  *(&v159 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_24B51724C();
  *&v158 = v22;
  *(&v158 + 1) = v127;
  *&v159 = v24;
  *(&v159 + 1) = v25;
  v29 = swift_getOpaqueTypeConformance2();
  *&v158 = v22;
  *(&v158 + 1) = v26;
  *&v159 = v24;
  *(&v159 + 1) = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v152 = v29;
  v153 = v30;
  v31 = swift_getWitnessTable();
  *&v127 = v28;
  *(&v127 + 1) = v31;
  *&v158 = v28;
  *(&v158 + 1) = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v33 = *(v104 + 64);
  v34 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v100 - v37;
  v109 = v39;
  v40 = sub_24B51724C();
  v111 = *(v40 - 8);
  v41 = *(v111 + 64);
  MEMORY[0x28223BE20](v40);
  v110 = &v100 - v42;
  sub_24B516E6C();
  sub_24B517B8C();
  v151 = swift_getWitnessTable();
  swift_getWitnessTable();
  v43 = sub_24B51798C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = (&v100 - v46);
  v126 = v40;
  v48 = sub_24B51724C();
  v123 = *(v48 - 8);
  v124 = v48;
  v49 = *(v123 + 64);
  MEMORY[0x28223BE20](v48);
  v122 = &v100 - v50;
  v51 = v113;
  sub_24B4B54BC(v113);
  v129 = v116;
  v130 = *(v51 + 32);
  v131 = v115;
  v132 = v117;
  v133 = v121;
  v134 = v120;
  v135 = v119;
  v136 = v118;
  v52 = v51;
  v137 = *(v51 + 96);
  v138 = v114;
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = MEMORY[0x277CE1410];
  if (EnumCaseMultiPayload <= 1)
  {
    v65 = v104;
    v66 = *v47;
    if (EnumCaseMultiPayload)
    {
      v81 = sub_24B516BEC();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v81 - 8) + 8))(v47 + *(TupleTypeMetadata2 + 48), v81);
    }

    v83 = *(&v127 + 1);
    v84 = v126;
    sub_24B4BE3DC(v66, v112 & 1, v52, v36);

    *&v158 = v127;
    *(&v158 + 1) = v83;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v38;
    v101 = v38;
    v87 = v109;
    sub_24B49711C(v36, v109, v85);
    v88 = *(v65 + 8);
    v88(v36, v87);
    sub_24B49711C(v86, v87, v85);
    v89 = v110;
    v90 = MEMORY[0x277CE1410];
    sub_24B48D23C(v36, MEMORY[0x277CE1428], v87);
    v141 = v90;
    v142 = v85;
    swift_getWitnessTable();
    sub_24B4C2B48();
    v91 = v122;
    sub_24B48D144(v89, v84);
    v92 = v89;
    v60 = v127;
    (*(v111 + 8))(v92, v84);
    v88(v36, v87);
    v64 = v91;
    v88(v101, v87);
    v59 = *(&v127 + 1);
    v54 = v90;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v44 + 8))(v47, v43);
    v59 = *(&v127 + 1);
    v60 = v127;
    v158 = v127;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v110;
    sub_24B48D144(v67, MEMORY[0x277CE1428]);
    v139 = v54;
    v140 = v67;
    v69 = v126;
    swift_getWitnessTable();
    sub_24B4C2B48();
    v64 = v122;
    sub_24B48D144(v68, v69);
    (*(v111 + 8))(v68, v69);
  }

  else
  {
    v55 = MEMORY[0x277CE1410];
    if (EnumCaseMultiPayload == 3)
    {
      *v106 = sub_24B5176DC();
      swift_storeEnumTagMultiPayload();

      v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
      v57 = sub_24B4C2C10();
      *&v158 = v56;
      *(&v158 + 1) = v57;
      swift_getOpaqueTypeConformance2();
      v58 = v108;
      sub_24B51723C();
      v59 = *(&v127 + 1);
      v60 = v127;
      v158 = v127;
      v61 = swift_getOpaqueTypeConformance2();
      v62 = v55;
      v149 = v55;
      v150 = v61;
      v63 = v126;
      swift_getWitnessTable();
      sub_24B4C2B48();
      v64 = v122;
      v54 = v62;
      sub_24B48D23C(v58, v63, v128);

      sub_24B49689C(v58, &qword_27EFFCE68, &qword_24B51DB88);
    }

    else
    {
      v70 = v102;
      sub_24B4BE060(v112 & 1, v52, v102);
      v71 = v103;
      v72 = v107;
      (*(v103 + 16))(v106, v70, v107);
      swift_storeEnumTagMultiPayload();
      v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
      v74 = sub_24B4C2C10();
      *&v158 = v73;
      *(&v158 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v75 = v108;
      sub_24B51723C();
      v59 = *(&v127 + 1);
      v60 = v127;
      v158 = v127;
      v76 = swift_getOpaqueTypeConformance2();
      v143 = v55;
      v144 = v76;
      v77 = v126;
      swift_getWitnessTable();
      sub_24B4C2B48();
      v78 = v122;
      sub_24B48D23C(v75, v77, v128);
      v79 = v75;
      v54 = MEMORY[0x277CE1410];
      sub_24B49689C(v79, &qword_27EFFCE68, &qword_24B51DB88);
      v80 = v70;
      v64 = v78;
      (*(v71 + 8))(v80, v72);
    }
  }

  v93 = v124;
  v94 = v123;
  *&v158 = v60;
  *(&v158 + 1) = v59;
  v95 = swift_getOpaqueTypeConformance2();
  v147 = v54;
  v148 = v95;
  v96 = swift_getWitnessTable();
  v97 = sub_24B4C2B48();
  v145 = v96;
  v146 = v97;
  v98 = swift_getWitnessTable();
  sub_24B49711C(v64, v93, v98);
  return (*(v94 + 8))(v64, v93);
}

uint64_t sub_24B4BBEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  swift_getOpaqueTypeMetadata2();
  v34 = a4;
  v35 = a5;
  swift_getOpaqueTypeConformance2();
  v11 = sub_24B516F4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_24B51737C();
  v16 = a3[2];
  v24 = a3[1];
  v25 = v16;
  v17 = a3[4];
  v27 = a3[3];
  v28 = v17;
  v18 = a3[6];
  v29 = a3[5];
  v26 = a4;
  v30 = v18;
  v31 = a5;
  v32 = a1;
  v33 = a2;
  sub_24B516F5C();
  v19 = sub_24B4B54BC(a3);
  WitnessTable = swift_getWitnessTable();
  sub_24B4BD27C(v19, v11, WitnessTable, v23);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_24B4BC0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v105 = a7;
  v106 = a8;
  v103 = a5;
  v104 = a6;
  v95 = a4;
  v111 = a2;
  v112 = a3;
  v110 = a1;
  v102 = a9;
  v109 = a14;
  v96 = a13;
  v92 = a12;
  v107 = a11;
  v108 = a10;
  v19 = sub_24B5172CC();
  v100 = *(v19 - 8);
  v101 = v19;
  v20 = *(v100 + 64);
  MEMORY[0x28223BE20](v19);
  v99 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B51727C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24B516D4C();
  v94 = *(v97 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = a2;
  v139 = a3;
  v140 = a6;
  v141 = a7;
  v142 = a8;
  v143 = a10;
  v144 = a11;
  v145 = a12;
  v27 = type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v28 = sub_24B51702C();
  v158 = sub_24B4C29D8();
  v159 = v109;
  WitnessTable = swift_getWitnessTable();
  v138 = v28;
  v139 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v30 = sub_24B51724C();
  v31 = swift_getWitnessTable();
  v138 = v28;
  v139 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v156 = OpaqueTypeConformance2;
  v157 = v33;
  v91 = MEMORY[0x277CE0340];
  v34 = swift_getWitnessTable();
  v138 = v27;
  v139 = v30;
  v140 = v31;
  v141 = v34;
  v35 = sub_24B516DFC();
  v36 = sub_24B516E8C();
  v37 = swift_getWitnessTable();
  v38 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  v138 = v35;
  v139 = v36;
  v140 = v37;
  v141 = v38;
  swift_getOpaqueTypeMetadata2();
  v39 = sub_24B516EDC();
  v40 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  v138 = v35;
  v139 = v39;
  v140 = v37;
  v141 = v40;
  swift_getOpaqueTypeMetadata2();
  v41 = sub_24B51724C();
  v138 = v35;
  v139 = v36;
  v140 = v37;
  v141 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v138 = v35;
  v139 = v39;
  v140 = v37;
  v141 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v154 = v42;
  v155 = v43;
  v44 = swift_getWitnessTable();
  v138 = v41;
  v139 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v45 = sub_24B51724C();
  v138 = v41;
  v139 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v152 = MEMORY[0x277CE1410];
  v153 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_24B4C2B48();
  v150 = v47;
  v151 = v48;
  v85 = v45;
  v84 = swift_getWitnessTable();
  v49 = sub_24B516F3C();
  v86 = v49;
  v91 = *(v49 - 8);
  v50 = *(v91 + 64);
  MEMORY[0x28223BE20](v49);
  v83 = &v81 - v51;
  v52 = swift_getWitnessTable();
  v138 = v49;
  v139 = v52;
  v87 = v52;
  v88 = MEMORY[0x277CE0DC0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  v89 = OpaqueTypeMetadata2;
  v90 = v54;
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v81 = &v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v82 = &v81 - v58;
  v138 = v111;
  v139 = v112;
  v59 = v95;
  v60 = v96;
  v61 = v103;
  v62 = v104;
  v140 = v95;
  v141 = v103;
  v142 = v104;
  v63 = v105;
  v64 = v106;
  v143 = v105;
  v144 = v106;
  v145 = v108;
  v146 = v107;
  v65 = v92;
  v147 = v92;
  v148 = v96;
  v66 = v109;
  v149 = v109;
  v67 = type metadata accessor for NewAndFeaturedView();
  sub_24B4B54BC(v67);
  v126 = v111;
  v127 = v112;
  v128 = v59;
  v129 = v61;
  v130 = v62;
  v131 = v63;
  v68 = v107;
  v69 = v108;
  v132 = v64;
  v133 = v108;
  v134 = v107;
  v135 = v65;
  v136 = v60;
  v137 = v66;
  swift_getKeyPath();
  v70 = v93;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v94 + 8))(v70, v97);
  v113 = v111;
  v114 = v112;
  v115 = v59;
  v116 = v103;
  v117 = v104;
  v118 = v105;
  v119 = v106;
  v120 = v69;
  v121 = v68;
  v122 = v65;
  v123 = v60;
  v124 = v66;
  v125 = v110;
  sub_24B51715C();
  sub_24B4BCFD4();
  v71 = v83;
  sub_24B516F2C();
  v72 = v99;
  sub_24B5172BC();
  v73 = v81;
  v75 = v86;
  v74 = v87;
  sub_24B51761C();
  (*(v100 + 8))(v72, v101);
  (*(v91 + 8))(v71, v75);
  v138 = v75;
  v139 = v74;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v82;
  v78 = v89;
  sub_24B49711C(v73, v89, v76);
  v79 = *(v90 + 8);
  v79(v73, v78);
  sub_24B49711C(v77, v78, v76);
  return (v79)(v77, v78);
}

uint64_t sub_24B4BC9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  v43 = a8;
  v42 = a7;
  v41 = a6;
  v35 = a5;
  v45 = a4;
  v37 = a3;
  v36 = a2;
  v47 = a1;
  v48 = a9;
  v46 = a15;
  v34 = a14;
  v44 = a13;
  v40 = a12;
  v39 = a11;
  v38 = a10;
  v57 = a8;
  v58 = a10;
  v59 = a11;
  v60 = a12;
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  v69 = sub_24B4C29D8();
  v70 = a14;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  WitnessTable = swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  v16 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  v17 = sub_24B51724C();
  v55 = WitnessTable;
  v56 = v16;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  v53 = v17;
  v54 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  v19 = sub_24B51724C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v34 - v25;
  v53 = v36;
  v54 = v37;
  v55 = v45;
  v56 = v35;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  v60 = v38;
  v61 = v39;
  v62 = v40;
  v63 = v44;
  v64 = v34;
  v27 = type metadata accessor for NewAndFeaturedView();
  sub_24B4BB0F0(v46, v27, v24);
  v53 = v17;
  v54 = v18;
  v28 = swift_getOpaqueTypeConformance2();
  v51 = MEMORY[0x277CE1410];
  v52 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_24B4C2B48();
  v49 = v29;
  v50 = v30;
  v31 = swift_getWitnessTable();
  sub_24B49711C(v24, v19, v31);
  v32 = *(v20 + 8);
  v32(v24, v19);
  sub_24B49711C(v26, v19, v31);
  return (v32)(v26, v19);
}

uint64_t sub_24B4BCFD4()
{
  sub_24B51727C();
  sub_24B4C4888(&qword_2810ED770, MEMORY[0x277CE0428]);
  return sub_24B51800C();
}

uint64_t sub_24B4BD054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a1;
  v29[1] = a3;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v16;
  v31 = a11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v29 - v24;
  (v29[0])(v23);
  sub_24B5175AC();
  (*(v12 + 8))(v15, a2);
  v30 = a2;
  v31 = a11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B49711C(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v18 + 8);
  v27(v22, OpaqueTypeMetadata2);
  sub_24B49711C(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_24B4BD27C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a1;
  v80 = a4;
  v66 = *a1;
  v81 = sub_24B51726C();
  v79 = *(v81 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_24B5172EC();
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B51729C();
  v67 = *(v68 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24B516E2C();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v59 = a2;
  v88 = a2;
  v89 = a3;
  v60 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v59 - v19;
  v21 = sub_24B51735C();
  v88 = v16;
  v89 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeMetadata2;
  v89 = v21;
  v23 = MEMORY[0x277CDE478];
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x277CDE478];
  v24 = OpaqueTypeConformance2;
  v61 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeMetadata2();
  v71 = *(v25 - 8);
  v26 = *(v71 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v59 - v27;
  v88 = OpaqueTypeMetadata2;
  v89 = v21;
  v90 = v24;
  v91 = v23;
  v29 = swift_getOpaqueTypeConformance2();
  v75 = v25;
  v88 = v25;
  v89 = v29;
  v72 = v29;
  v69 = swift_getOpaqueTypeMetadata2();
  v74 = *(v69 - 8);
  v30 = *(v74 + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v59 - v31;
  v32 = sub_24B5173AC();
  v33 = v59;
  v82 = v59;
  v34 = *(v66 + *MEMORY[0x277D04408]);
  v35 = v34[2];
  v83 = v34[1];
  v36 = v60;
  v84 = v60;
  v37 = v34[3];
  v38 = v34[4];
  v85 = v35;
  v86 = v37;
  v87 = v38;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B516E0C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  (*(v12 + 8))(v15, v63);
  v47 = v65;
  v48 = v64;
  sub_24B51728C();
  MEMORY[0x24C241350](v32, v48, v33, v36, v40, v42, v44, v46);
  (*(v67 + 8))(v48, v68);
  v49 = v28;
  sub_24B4C25D0(OpaqueTypeMetadata2, v61, v28);
  (*(v62 + 8))(v20, OpaqueTypeMetadata2);
  sub_24B51725C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEC8, &qword_24B51DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B51DAD0;
  LOBYTE(v15) = sub_24B51739C();
  *(inited + 32) = v15;
  v51 = sub_24B51737C();
  *(inited + 33) = v51;
  sub_24B51738C();
  sub_24B51738C();
  if (sub_24B51738C() != v15)
  {
    sub_24B51738C();
  }

  sub_24B51738C();
  if (sub_24B51738C() != v51)
  {
    sub_24B51738C();
  }

  v52 = v78;
  v53 = v75;
  v54 = v73;
  v55 = v72;
  sub_24B51759C();
  (*(v76 + 8))(v47, v77);
  (*(v71 + 8))(v49, v53);
  sub_24B51725C();
  v56 = sub_24B51739C();
  sub_24B51738C();
  sub_24B51738C();
  if (sub_24B51738C() != v56)
  {
    sub_24B51738C();
  }

  v88 = v53;
  v89 = v55;
  swift_getOpaqueTypeConformance2();
  v57 = v69;
  sub_24B5175CC();
  (*(v79 + 8))(v52, v81);
  return (*(v74 + 8))(v54, v57);
}

uint64_t sub_24B4BDADC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a7;
  v38 = a6;
  v35 = a3;
  v34 = a2;
  v44 = a1;
  v47 = a8;
  v41 = a14;
  v37 = a13;
  v36 = a12;
  v40 = a11;
  v39 = a10;
  v46 = sub_24B516D4C();
  v45 = *(v46 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B51787C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = xmmword_24B51DAE0;
  (*(v25 + 104))(v24, *MEMORY[0x277CDF108]);
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v26 = v42;
  v65 = v42;
  v66 = a9;
  v27 = v39;
  v28 = v40;
  v67 = v39;
  v68 = v40;
  v69 = a12;
  v70 = a13;
  v29 = v41;
  v71 = v41;
  v30 = type metadata accessor for NewAndFeaturedView();
  sub_24B4B54BC(v30);
  v48 = v34;
  v49 = v35;
  v50 = a4;
  v51 = a5;
  v52 = v38;
  v53 = v26;
  v54 = a9;
  v55 = v27;
  v56 = v28;
  v57 = v36;
  v58 = v37;
  v59 = v29;
  swift_getKeyPath();
  v31 = v43;
  sub_24B5179CC();

  sub_24B516D3C();
  (*(v45 + 8))(v31, v46);
  sub_24B5178AC();
  return sub_24B51789C();
}

uint64_t sub_24B4BDE28(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_24B51788C();
  v27 = *(v24 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v31 = MEMORY[0x277D84F90];
  sub_24B4C40CC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v12 = 0;
    v11 = v31;
    v13 = v28;
    if (v28 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    v23 = v27 + 32;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v30 = a3 + v12;
      v15 = v9;
      v16 = v29;
      v25(&v30);
      v29 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v31 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24B4C40CC(v17 > 1, v18 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18;
      v9 = v15;
      (*(v27 + 32))(v19, v15, v24);
      if (v28 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_24B4BE060@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v31 = a3;
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = v28 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE70, &qword_24B51DB90);
  v14 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v16 = v28 - v15;
  v34 = xmmword_24B51DAF0;
  v28[1] = swift_getKeyPath();
  (*(v7 + 16))(v9, v4, a2);
  v17 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v18 = v17 + v8;
  v19 = swift_allocObject();
  v20 = a2[2];
  *(v19 + 1) = a2[1];
  *(v19 + 2) = v20;
  v21 = a2[4];
  *(v19 + 3) = a2[3];
  *(v19 + 4) = v21;
  v22 = a2[6];
  *(v19 + 5) = a2[5];
  *(v19 + 6) = v22;
  (*(v7 + 32))(&v19[v17], v9, a2);
  v19[v18] = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF00, &qword_24B51DDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEE0, &qword_24B51DDA8);
  sub_24B4C4D30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
  v24 = sub_24B4C2AC4();
  v32 = v23;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  sub_24B51783C();
  sub_24B4B9E24(a2);
  sub_24B4BFC20(v6 & 1, v16);
  (*(v10 + 8))(v13, v30);
  v25 = sub_24B4B54BC(a2);
  v26 = sub_24B4C2C10();
  sub_24B4C091C(v25, v6 & 1, v29, v26, v31);

  return sub_24B49689C(v16, &qword_27EFFCE70, &qword_24B51DB90);
}

uint64_t sub_24B4BE3DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  v80 = a1;
  v81 = a4;
  v72 = *(a3 - 8);
  v74 = *(v72 + 64);
  MEMORY[0x28223BE20](a1);
  v67 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 64);
  v77 = *(v7 + 72);
  v78 = v8;
  v9 = *(v7 + 80);
  v75 = *(v7 + 88);
  v76 = v9;
  v90 = v8;
  v91 = v77;
  v92 = v9;
  v93 = v75;
  v71 = *(v7 + 16);
  v73 = *(v7 + 48);
  v89 = v73;
  v88 = v71;
  v10 = type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v69 = *(a3 + 40);
  v11 = sub_24B51702C();
  v12 = sub_24B4C29D8();
  v68 = *(a3 + 104);
  v86 = v12;
  v87 = v68;
  WitnessTable = swift_getWitnessTable();
  *&v88 = v11;
  *(&v88 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v14 = sub_24B51724C();
  v65 = v10;
  v15 = swift_getWitnessTable();
  *&v88 = v11;
  *(&v88 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v84 = OpaqueTypeConformance2;
  v85 = v17;
  v70 = MEMORY[0x277CE0340];
  v64 = v14;
  v63 = swift_getWitnessTable();
  *&v88 = v10;
  *(&v88 + 1) = v14;
  *&v89 = v15;
  *(&v89 + 1) = v63;
  v18 = sub_24B516DFC();
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v59 = &v51 - v20;
  v21 = sub_24B516E8C();
  v62 = v21;
  v22 = swift_getWitnessTable();
  v61 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  *&v88 = v18;
  *(&v88 + 1) = v21;
  *&v89 = v22;
  *(&v89 + 1) = v61;
  v23 = v22;
  v53 = v22;
  v60 = MEMORY[0x277D09848];
  swift_getOpaqueTypeMetadata2();
  v24 = sub_24B516EDC();
  v57 = v24;
  v56 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  *&v88 = v18;
  *(&v88 + 1) = v24;
  *&v89 = v23;
  *(&v89 + 1) = v56;
  v54 = MEMORY[0x277D09840];
  swift_getOpaqueTypeMetadata2();
  v55 = sub_24B51724C();
  v58 = *(v55 - 8);
  v25 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - v26;
  v27 = v4;
  sub_24B4B579C(a3);
  v28 = *(&v89 + 1);
  v51 = v90;
  v29 = __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  (*(v32 + 16))(&v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v72;
  v34 = v67;
  (*(v72 + 16))(v67, v27, a3);
  v35 = (*(v33 + 80) + 112) & ~*(v33 + 80);
  v36 = v35 + v74;
  v37 = swift_allocObject();
  *(v37 + 16) = v71;
  v38 = v69;
  *(v37 + 32) = *(a3 + 32);
  *(v37 + 40) = v38;
  *(v37 + 48) = v73;
  v39 = v77;
  *(v37 + 64) = v78;
  *(v37 + 72) = v39;
  v40 = v75;
  *(v37 + 80) = v76;
  *(v37 + 88) = v40;
  v41 = v68;
  *(v37 + 96) = *(a3 + 96);
  *(v37 + 104) = v41;
  (*(v33 + 32))(v37 + v35, v34, a3);
  LOBYTE(v33) = v79 & 1;
  *(v37 + v36) = v79 & 1;

  v42 = v59;
  sub_24B516DEC();
  sub_24B4B9E24(a3);
  v43 = v52;
  v44 = v53;
  sub_24B4C0234(v33, v18, v53, v52);
  (*(v66 + 8))(v42, v18);
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v45 = sub_24B4B54BC(a3);
  *&v88 = v18;
  *(&v88 + 1) = v62;
  *&v89 = v44;
  *(&v89 + 1) = v61;
  v46 = swift_getOpaqueTypeConformance2();
  *&v88 = v18;
  *(&v88 + 1) = v57;
  *&v89 = v44;
  *(&v89 + 1) = v56;
  v47 = swift_getOpaqueTypeConformance2();
  v82 = v46;
  v83 = v47;
  v48 = v55;
  v49 = swift_getWitnessTable();
  sub_24B4C091C(v45, v33, v48, v49, v81);

  return (*(v58 + 8))(v43, v48);
}

uint64_t sub_24B4BEBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v36 = a7;
  v35 = a6;
  v34 = a5;
  v37 = a4;
  v39 = a1;
  v40 = a3;
  v38 = a2;
  v41 = a9;
  v33 = a12;
  v32 = a11;
  v31 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v15 = sub_24B51702C();
  v53 = sub_24B4C29D8();
  v54 = a14;
  WitnessTable = swift_getWitnessTable();
  v44 = v15;
  v45 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v17 = sub_24B51724C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v47 = a8;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = a13;
  v52 = a14;
  v25 = type metadata accessor for NewAndFeaturedView();
  sub_24B4BEEC4(v38, v39, v37 & 1, v25, v22);
  v44 = v15;
  v45 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  v42 = OpaqueTypeConformance2;
  v43 = v27;
  v28 = swift_getWitnessTable();
  sub_24B49711C(v22, v17, v28);
  v29 = *(v18 + 8);
  v29(v22, v17);
  sub_24B49711C(v24, v17, v28);
  return (v29)(v24, v17);
}

uint64_t sub_24B4BEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v129) = a3;
  v121 = a2;
  v125 = a1;
  v132 = a5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEE0, &qword_24B51DDA8);
  v120 = *(v122 - 8);
  v6 = *(v120 + 64);
  MEMORY[0x28223BE20](v122);
  v101 = &v97 - v7;
  v116 = sub_24B516E7C();
  v115 = *(v116 - 8);
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v113 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE58, &qword_24B51DB78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v119 = &v97 - v12;
  v118 = sub_24B517A7C();
  v117 = *(v118 - 8);
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC618, &qword_24B51DB60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v110 = &v97 - v18;
  v19 = *(a4 + 40);
  v108 = *(v19 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x28223BE20](v17);
  v106 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE50, &qword_24B51DB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v104 = &v97 - v24;
  v103 = v25;
  v105 = v19;
  v26 = sub_24B51702C();
  v111 = *(v26 - 8);
  v27 = *(v111 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v97 - v28;
  v30 = sub_24B4C29D8();
  v31 = *(a4 + 104);
  v102 = v30;
  v140 = v30;
  v141 = v31;
  WitnessTable = swift_getWitnessTable();
  v124 = v26;
  v135 = v26;
  v136 = WitnessTable;
  v127 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = *(OpaqueTypeMetadata2 - 8);
  v34 = *(v112 + 64);
  v35 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v107 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v109 = &v97 - v37;
  v38 = *(a4 + 24);
  v135 = *(a4 + 16);
  v136 = v38;
  v123 = v38;
  v39 = *(a4 + 64);
  v137 = *(a4 + 48);
  v138 = v39;
  v139 = *(a4 + 80);
  v40 = type metadata accessor for NewAndFeaturedDataItem();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v97 - v43;
  swift_getWitnessTable();
  v45 = v40;
  v46 = sub_24B516E6C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v97 - v49;
  v131 = v10;
  v51 = sub_24B51724C();
  v130 = *(v51 - 8);
  v52 = *(v130 + 64);
  MEMORY[0x28223BE20](v51);
  v128 = &v97 - v53;
  (*(v47 + 16))(v50, v125, v46);
  v54 = (*(v47 + 88))(v50, v46);
  v55 = *MEMORY[0x277D09768];
  v126 = v51;
  if (v54 == v55)
  {
    (*(v47 + 96))(v50, v46);
    v100 = v41;
    v56 = *(v41 + 32);
    v57 = v44;
    v99 = v45;
    v56(v44, v50, v45);
    v58 = v104;
    v59 = v57;
    v60 = v57;
    v61 = v121;
    sub_24B4C0B00(v59, v121, v129 & 1, a4, v104);
    v62 = sub_24B4B5650(a4);
    v63 = v106;
    v129 = a4;
    v64 = v60;
    v98 = v60;
    v62(v60);

    v65 = v105;
    MEMORY[0x24C241440](v63, v103, v105, v102);
    (*(v108 + 8))(v63, v65);
    sub_24B49689C(v58, &qword_27EFFCE50, &qword_24B51DB70);
    v66 = v110;
    sub_24B4C16EC(v64, v61, v129, v110);
    v67 = v114;
    sub_24B517A5C();
    v68 = v107;
    v69 = v124;
    v70 = v127;
    sub_24B5174DC();
    (*(v117 + 8))(v67, v118);
    sub_24B49689C(v66, &qword_27EFFC618, &qword_24B51DB60);
    (*(v111 + 8))(v29, v69);
    v135 = v69;
    v136 = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v109;
    sub_24B49711C(v68, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v73 = *(v112 + 8);
    v73(v68, OpaqueTypeMetadata2);
    sub_24B49711C(v72, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
    v74 = v128;
    sub_24B48D144(v68, OpaqueTypeMetadata2);
    v75 = v68;
    v76 = v126;
    v73(v75, OpaqueTypeMetadata2);
    v73(v72, OpaqueTypeMetadata2);
    (*(v100 + 8))(v98, v99);
    v77 = v74;
LABEL_8:
    v135 = v69;
    v136 = v70;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
    v133 = v93;
    v134 = v94;
    v95 = swift_getWitnessTable();
    sub_24B49711C(v77, v76, v95);
    return (*(v130 + 8))(v77, v76);
  }

  v125 = OpaqueTypeMetadata2;
  v78 = v129;
  v69 = v124;
  v79 = v131;
  if (v54 == *MEMORY[0x277D09760])
  {
    (*(v47 + 96))(v50, v46);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEE8, &qword_24B51DDB0);
    v80 = *&v50[*(swift_getTupleTypeMetadata2() + 48)];
    v81 = v115;
    v82 = v113;
    v83 = v116;
    (*(v115 + 104))(v113, *MEMORY[0x277D097B0], v116);
    v84 = sub_24B4C1B08(v82, v80);

    (*(v81 + 8))(v82, v83);
    if (v84)
    {
      v85 = 1;
      v76 = v126;
      v86 = v122;
      v87 = v120;
      v88 = v119;
    }

    else
    {
      v89 = v101;
      sub_24B4C1D20(v78 & 1);
      v87 = v120;
      v88 = v119;
      v90 = v89;
      v86 = v122;
      (*(v120 + 32))(v119, v90, v122);
      v85 = 0;
      v76 = v126;
    }

    (*(v87 + 56))(v88, v85, 1, v86);
    v91 = v127;
    v135 = v69;
    v136 = v127;
    swift_getOpaqueTypeConformance2();
    sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
    v77 = v128;
    sub_24B48D23C(v88, v125, v79);
    sub_24B49689C(v88, &qword_27EFFCE58, &qword_24B51DB78);
    v92 = v50;
    v70 = v91;
    (*(*(v123 - 8) + 8))(v92);
    goto LABEL_8;
  }

  result = sub_24B517EDC();
  __break(1u);
  return result;
}

uint64_t sub_24B4BFC20@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = sub_24B516EDC();
  v35 = *(v39 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF08, &qword_24B51DDF0);
  v36 = *(v40 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v34 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF10, &qword_24B51DDF8);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v34 - v10;
  v12 = sub_24B516E8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF18, &qword_24B51DE00);
  v17 = *(v38 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v38);
  v20 = &v34 - v19;
  if (a1)
  {
    sub_24B516E9C();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
    v22 = sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98);
    v23 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
    v24 = v39;
    sub_24B5174EC();
    (*(v35 + 8))(v5, v24);
    v25 = v36;
    v26 = v40;
    (*(v36 + 16))(v11, v8, v40);
    swift_storeEnumTagMultiPayload();
    v27 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
    v42 = v21;
    v43 = v12;
    v44 = v22;
    v45 = v27;
    swift_getOpaqueTypeConformance2();
    v42 = v21;
    v43 = v24;
    v44 = v22;
    v45 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24B51723C();
    return (*(v25 + 8))(v8, v26);
  }

  else
  {
    sub_24B516EEC();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE78, &qword_24B51DB98);
    v30 = sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98);
    v31 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
    sub_24B5174FC();
    (*(v13 + 8))(v16, v12);
    v32 = v38;
    (*(v17 + 16))(v11, v20, v38);
    swift_storeEnumTagMultiPayload();
    v42 = v29;
    v43 = v12;
    v44 = v30;
    v45 = v31;
    swift_getOpaqueTypeConformance2();
    v33 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
    v42 = v29;
    v43 = v39;
    v44 = v30;
    v45 = v33;
    swift_getOpaqueTypeConformance2();
    sub_24B51723C();
    return (*(v17 + 8))(v20, v32);
  }
}

uint64_t sub_24B4C0234@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v7 = sub_24B516EDC();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  v68 = a2;
  v69 = v7;
  v64 = v10;
  v65 = v7;
  v70 = a3;
  v71 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v57 + 64);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v52 - v16;
  v17 = sub_24B516E8C();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  v68 = a2;
  v69 = v17;
  v62 = v21;
  v63 = v17;
  v70 = a3;
  v71 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  v30 = sub_24B51724C();
  v58 = *(v30 - 8);
  v59 = v30;
  v31 = *(v58 + 64);
  MEMORY[0x28223BE20](v30);
  v61 = &v52 - v32;
  if (a1)
  {
    v33 = v54;
    sub_24B516E9C();
    v35 = v64;
    v34 = v65;
    sub_24B5174EC();
    (*(v55 + 8))(v33, v34);
    v68 = a2;
    v69 = v34;
    v70 = a3;
    v71 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v56;
    sub_24B49711C(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v38 = *(v57 + 8);
    v38(v15, OpaqueTypeMetadata2);
    sub_24B49711C(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v68 = a2;
    v69 = v63;
    v70 = a3;
    v71 = v62;
    swift_getOpaqueTypeConformance2();
    sub_24B48D23C(v15, v22, OpaqueTypeMetadata2);
    v38(v15, OpaqueTypeMetadata2);
    v39 = v37;
    v40 = OpaqueTypeMetadata2;
  }

  else
  {
    sub_24B516EEC();
    v41 = v63;
    v57 = OpaqueTypeMetadata2;
    v42 = a2;
    v43 = a3;
    v44 = v62;
    sub_24B5174FC();
    (*(v53 + 8))(v20, v41);
    v68 = v42;
    v69 = v41;
    v70 = v43;
    v71 = v44;
    a3 = v43;
    a2 = v42;
    v45 = swift_getOpaqueTypeConformance2();
    sub_24B49711C(v27, v22, v45);
    v38 = *(v23 + 8);
    v38(v27, v22);
    sub_24B49711C(v29, v22, v45);
    v68 = v42;
    v69 = v65;
    v70 = a3;
    v71 = v64;
    swift_getOpaqueTypeConformance2();
    sub_24B48D144(v27, v22);
    v38(v27, v22);
    v39 = v29;
    v40 = v22;
  }

  v38(v39, v40);
  v68 = a2;
  v69 = v63;
  v70 = a3;
  v71 = v62;
  v46 = swift_getOpaqueTypeConformance2();
  v68 = a2;
  v69 = v65;
  v70 = a3;
  v71 = v64;
  v47 = swift_getOpaqueTypeConformance2();
  v66 = v46;
  v67 = v47;
  v48 = v59;
  WitnessTable = swift_getWitnessTable();
  v50 = v61;
  sub_24B49711C(v61, v48, WitnessTable);
  return (*(v58 + 8))(v50, v48);
}

uint64_t sub_24B4C091C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[2] = a5;
  v8 = *a1;
  v9 = sub_24B516D4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = sub_24B5178AC();
  }

  else
  {
    v14 = sub_24B5178BC();
  }

  v20[1] = v14;
  MEMORY[0x28223BE20](v14);
  v20[-10] = a3;
  v15 = *(v8 + *MEMORY[0x277D04408]);
  v16 = v15[2];
  *&v20[-9] = v15[1];
  v20[-7] = a4;
  v17 = v15[3];
  v18 = v15[4];
  *&v20[-6] = v16;
  *&v20[-4] = v17;
  *&v20[-2] = v18;
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B51737C();
  sub_24B516D2C();
  sub_24B516D1C();
  sub_24B516D3C();
  sub_24B5175FC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_24B4C0B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v105) = a3;
  v104 = a2;
  v114 = a5;
  v113 = sub_24B516E5C();
  v98 = *(v113 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v113);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF0, &qword_24B51DDB8);
  v10 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v94 - v11;
  v103 = sub_24B516DDC();
  v102 = *(v103 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF8, &unk_24B51DDC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v107 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v94 - v18;
  v111 = sub_24B516ECC();
  v96 = *(v111 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v111);
  v95 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE50, &qword_24B51DB70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v109 = &v94 - v23;
  v24 = *(a4 + 72);
  v117 = *(a4 + 64);
  v25 = *(a4 + 88);
  v121 = *(a4 + 80);
  v122 = v24;
  v120 = v25;
  v128 = v117;
  v129 = v24;
  v130 = v121;
  v131 = v25;
  v26 = *(a4 + 16);
  v118 = *(a4 + 48);
  v119 = v26;
  v126 = v26;
  v127 = v118;
  v27 = type metadata accessor for NewAndFeaturedDataItem();
  v99 = *(v27 - 1);
  v28 = *(v99 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v94 - v30;
  v31 = *(a4 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v34 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = *(a4 + 32);
  v108 = *(v125 - 1);
  v35 = *(v108 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24B4B5580(a4);
  v39 = a1 + v27[21];
  v124 = v37;
  v38(v39);

  (*(v31 + 16))(v34, v5, a4);
  v40 = v99;
  v41 = *(v99 + 16);
  v106 = a1;
  v41(v116, a1, v27);
  v42 = (*(v31 + 80) + 112) & ~*(v31 + 80);
  v43 = (v32 + *(v40 + 80) + v42) & ~*(v40 + 80);
  v44 = (v28 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v119;
  v46 = *(a4 + 40);
  *(v45 + 32) = v125;
  *(v45 + 40) = v46;
  v100 = v46;
  *(v45 + 48) = v118;
  v48 = v121;
  v47 = v122;
  *(v45 + 64) = v117;
  *(v45 + 72) = v47;
  v49 = v120;
  *(v45 + 80) = v48;
  *(v45 + 88) = v49;
  v51 = *(a4 + 96);
  v50 = *(a4 + 104);
  *(v45 + 96) = v51;
  *(v45 + 104) = v50;
  v101 = v50;
  (*(v31 + 32))(v45 + v42, v34, a4);
  v52 = v45 + v43;
  v53 = v27;
  (*(v40 + 32))(v52, v116, v27);
  *(v45 + v44) = v104;
  v54 = v102;
  v55 = *(v102 + 56);
  v56 = v103;
  v57 = v55(v123, 1, 1);
  if (v105)
  {
    v116 = &v94;
    MEMORY[0x28223BE20](v57);
    v105 = &v94 - 16;
    v58 = v125;
    *&v59 = v125;
    *(&v59 + 1) = v100;
    *(&v94 - 6) = v59;
    v60 = v118;
    *(&v94 - 7) = v119;
    v85 = v60;
    v86 = v117;
    v87 = v122;
    v88 = v121;
    v89 = v120;
    v90 = v51;
    v91 = v101;
    v92 = v124;
    v61 = v27[22];
    v122 = v51;
    v62 = *(v54 + 16);
    v63 = v106;
    v62(v115, v106 + v61, v56);
    v64 = v63 + v27[23];
    v65 = v107;
    v62(v107, v64, v56);
    v66 = v58;
    (v55)(v65, 0, 1, v56);

    v92 = v122;
    v67 = v97;
    sub_24B516E4C();
    v68 = v98;
    v69 = v113;
    (*(v98 + 16))(v112, v67, v113);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720]);
    v70 = v109;
    sub_24B51723C();

    (*(v68 + 8))(v67, v69);
  }

  else
  {
    v71 = v51;
    v72 = *(v54 + 16);
    v73 = v106;
    v74 = v56;
    v72(v115, v106 + v53[22], v56);
    v75 = v107;
    v72(v107, v73 + v53[23], v74);
    v76 = (v55)(v75, 0, 1, v74);
    v77 = MEMORY[0x28223BE20](v76);
    v66 = v125;
    *&v78 = v125;
    *(&v78 + 1) = v100;
    v79 = v119;
    *(&v94 - 6) = v78;
    *(&v94 - 7) = v79;
    v80 = MEMORY[0x28223BE20](v77);
    MEMORY[0x28223BE20](v80);
    v93 = 0;

    v92 = MEMORY[0x277CE1410];
    v90 = v71;
    v91 = MEMORY[0x277CE1410];
    v88 = MEMORY[0x277CE1428];
    v89 = MEMORY[0x277CE1428];
    v86 = &v90;
    v87 = v66;
    *&v85 = &v90;
    *(&v85 + 1) = sub_24B4C4F78;
    v81 = v95;
    sub_24B516EBC();
    v82 = v96;
    v83 = v111;
    (*(v96 + 16))(v112, v81, v111);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720]);
    v70 = v109;
    sub_24B51723C();

    (*(v82 + 8))(v81, v83);
  }

  sub_24B49AA90(v70, v114, &qword_27EFFCE50, &qword_24B51DB70);
  return (*(v108 + 8))(v124, v66);
}

uint64_t sub_24B4C16EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_24B517A0C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24B517A2C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[3];
  v19 = a3[4];
  v63 = a3[1];
  v64 = v18;
  v20 = a3[5];
  v65 = v19;
  v66 = v20;
  v21 = (a1 + *(type metadata accessor for NewAndFeaturedDataItem() + 124));
  v22 = v21[1];
  if (v22)
  {
    v23 = v21[13];
    v50 = v21[12];
    v51 = v23;
    v56 = v13;
    v57 = a4;
    v24 = v21[11];
    v47 = v21[10];
    v48 = v24;
    v25 = v21[8];
    v26 = v21[9];
    v27 = v21[7];
    v49 = v21[6];
    v28 = v21[4];
    v29 = v21[5];
    v52 = v5;
    v30 = *v21;
    v54 = v22;
    v55 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC620, &qword_24B51A9C0);
    inited = swift_initStackObject();
    v32 = inited;
    *(inited + 16) = xmmword_24B51DB00;
    v53 = v17;
    *(inited + 32) = 1701667182;
    v33 = MEMORY[0x277D837D0];
    if (v29)
    {
      v34 = v28;
    }

    else
    {
      v34 = 0;
    }

    v35 = 0xE000000000000000;
    if (v29)
    {
      v35 = v29;
    }

    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v34;
    *(inited + 56) = v35;
    *(inited + 72) = v33;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = v25;
    *(inited + 104) = v26;
    *(inited + 120) = v33;
    *(inited + 128) = 0x6973736572706D69;
    v36 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = a2;
    *(inited + 168) = v36;
    *(inited + 176) = 0x657079546469;
    v37 = v47;
    v38 = v48;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = v37;
    *(inited + 200) = v38;
    *(inited + 216) = v33;
    *(inited + 224) = 0x54746E65746E6F63;
    *(inited + 232) = 0xEB00000000657079;
    *(inited + 240) = v49;
    *(inited + 248) = v27;
    *(inited + 264) = v33;
    *(inited + 272) = 0xD000000000000013;
    *(inited + 312) = v33;
    v39 = v50;
    v40 = v51;
    *(inited + 280) = 0x800000024B5277A0;
    *(inited + 288) = v39;
    *(inited + 296) = v40;

    sub_24B4A06C8(v32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC628, &unk_24B51DC90);
    swift_arrayDestroy();
    sub_24B4B54BC(a3);
    swift_getKeyPath();
    sub_24B5179BC();

    v63 = v58;
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v67 = v62;

    sub_24B488FA8(&v63);

    sub_24B517A1C();
    sub_24B5179FC();
    v41 = MEMORY[0x277D84F90];
    sub_24B4A06C8(MEMORY[0x277D84F90]);
    sub_24B4A06C8(v41);
    v42 = v57;
    sub_24B517A3C();
    v43 = sub_24B517A4C();
    return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  else
  {
    v45 = sub_24B517A4C();
    return (*(*(v45 - 8) + 56))(a4, 1, 1, v45);
  }
}

uint64_t sub_24B4C1B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B516E7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_24B4C4888(&qword_2810ED7D8, MEMORY[0x277D097B8]), v9 = sub_24B517A8C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_24B4C4888(&qword_2810ED7D0, MEMORY[0x277D097B8]);
      v17 = sub_24B517AAC();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24B4C1D20(char a1)
{
  v2 = sub_24B51705C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE60, &qword_24B51DB80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  sub_24B4C2288(a1 & 1);
  sub_24B51704C();
  sub_24B4C2AC4();
  sub_24B51769C();
  (*(v3 + 8))(v6, v2);
  return sub_24B49689C(v10, &qword_27EFFCE60, &qword_24B51DB80);
}

uint64_t sub_24B4C1E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12)
{
  *(&v32 + 1) = a7;
  *&v32 = a6;
  v36 = a4;
  v39 = a3;
  v37 = a2;
  v38 = a1;
  v33 = *(&a12 + 1);
  v35 = a10;
  v34 = a9;
  *&v43 = a5;
  *(&v43 + 1) = *(&a10 + 1);
  v44 = a11;
  v41 = type metadata accessor for NewAndFeaturedAction();
  v40 = *(v41 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v17 = &v31 - v16;
  *&v43 = a4;
  *(&v43 + 1) = a5;
  v44 = v32;
  *&v45 = a8;
  *(&v45 + 1) = a9;
  v46 = a10;
  v47 = a11;
  v48 = a12;
  v18 = type metadata accessor for NewAndFeaturedView();
  v38 = sub_24B4B54BC(v18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v20 = &v17[*(TupleTypeMetadata3 + 48)];
  v21 = *(TupleTypeMetadata3 + 64);
  v22 = v37;
  (*(*(a5 - 8) + 16))(v17, v37, a5);
  *&v43 = v36;
  *(&v43 + 1) = a5;
  *&v44 = a8;
  *(&v44 + 1) = v34;
  *&v45 = v35;
  *(&v45 + 1) = *(&a10 + 1);
  v46 = a11;
  v23 = (v22 + *(type metadata accessor for NewAndFeaturedDataItem() + 124));
  v25 = v23[5];
  v47 = v23[4];
  v24 = v47;
  v48 = v25;
  v49 = v23[6];
  v26 = v49;
  v27 = v23[1];
  v43 = *v23;
  v44 = v27;
  v28 = v23[3];
  v45 = v23[2];
  v29 = v45;
  v46 = v28;
  *v20 = v43;
  *(v20 + 1) = v27;
  *(v20 + 4) = v24;
  *(v20 + 5) = v25;
  *(v20 + 2) = v29;
  *(v20 + 3) = v28;
  *(v20 + 6) = v26;
  *&v17[v21] = v39;
  (*(*(TupleTypeMetadata3 - 8) + 56))(v17, 0, 1, TupleTypeMetadata3);
  sub_24B496724(&v43, v42, &qword_27EFFCEA0, &unk_24B5203F0);
  sub_24B5179DC();

  return (*(v40 + 8))(v17, v41);
}

uint64_t sub_24B4C21A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20]();
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B49711C(v15, v18, a12);
  sub_24B49711C(v17, a4, a12);
  return (*(v13 + 8))(v17, a4);
}

uint64_t sub_24B4C2288(char a1)
{
  v2 = sub_24B516E5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEF0, &qword_24B51DDB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = sub_24B516ECC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24B516E3C();
    (*(v3 + 16))(v10, v6, v2);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720]);
    sub_24B51723C();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_24B516EAC();
    (*(v12 + 16))(v10, v15, v11);
    swift_storeEnumTagMultiPayload();
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720]);
    sub_24B51723C();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_24B4C25D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_24B51733C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24B51735C();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = v9;
  v29 = a2;
  v30 = MEMORY[0x277CDE478];
  v12 = MEMORY[0x277CDE478];
  v24 = MEMORY[0x277CDEB68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  sub_24B51732C();
  sub_24B51734C();
  sub_24B5175DC();
  (*(v25 + 8))(v11, v7);
  v27 = a1;
  v28 = v7;
  v29 = a2;
  v30 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B49711C(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v22 = *(v14 + 8);
  v22(v18, OpaqueTypeMetadata2);
  sub_24B49711C(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v22)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_24B4C286C(uint64_t a1)
{
  v2 = sub_24B51701C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B5170BC();
}

uint64_t sub_24B4C2934()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return v1();
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

unint64_t sub_24B4C29D8()
{
  result = qword_2810ED788;
  if (!qword_2810ED788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
    sub_24B4C4888(&qword_2810ED7C0, MEMORY[0x277D097E8]);
    sub_24B4C4888(&qword_2810ED7E0, MEMORY[0x277D09720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED788);
  }

  return result;
}

unint64_t sub_24B4C2AC4()
{
  result = qword_2810ED758;
  if (!qword_2810ED758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
    sub_24B4C29D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED758);
  }

  return result;
}

unint64_t sub_24B4C2B48()
{
  result = qword_2810ED778;
  if (!qword_2810ED778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
    sub_24B4C2C10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED778);
  }

  return result;
}

unint64_t sub_24B4C2C10()
{
  result = qword_2810ED780;
  if (!qword_2810ED780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE70, &qword_24B51DB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE78, &qword_24B51DB98);
    sub_24B516E8C();
    sub_24B4C2DC0(&qword_2810ED740, &qword_27EFFCE78, &qword_24B51DB98);
    sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
    swift_getOpaqueTypeConformance2();
    sub_24B516EDC();
    sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED780);
  }

  return result;
}

uint64_t sub_24B4C2DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE60, &qword_24B51DB80);
    sub_24B4C2AC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4C2E64()
{
  result = qword_2810ED790;
  if (!qword_2810ED790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
    sub_24B4C2EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED790);
  }

  return result;
}

unint64_t sub_24B4C2EF0()
{
  result = qword_2810ED798;
  if (!qword_2810ED798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE80, &qword_24B51DBA0);
    sub_24B4C2F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED798);
  }

  return result;
}

unint64_t sub_24B4C2F7C()
{
  result = qword_2810ED748;
  if (!qword_2810ED748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE88, &qword_24B51DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED748);
  }

  return result;
}

uint64_t sub_24B4C2FF8()
{
  v13 = v0[3];
  v14 = v0[2];
  v1 = v0[5];
  v12 = v0[4];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[12];
  v9 = v0[13];
  v10 = *(type metadata accessor for NewAndFeaturedView() - 8);
  return sub_24B4B9708(v0 + ((*(v10 + 80) + 112) & ~*(v10 + 80)), v14, v13, v12, v1, v2, v3, v4, v5, v7, v6, v8, v9);
}

uint64_t sub_24B4C30DC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  return swift_getOpaqueTypeConformance2();
}

void sub_24B4C3138(uint64_t a1)
{
  sub_24B4C33D8(319, &qword_2810ED7B0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);
    v16 = *(a1 + 16);
    v15 = *(a1 + 48);
    type metadata accessor for NewAndFeaturedFeature();
    swift_getWitnessTable();
    sub_24B5179EC();
    swift_getWitnessTable();
    sub_24B516F8C();
    if (v7 <= 0x3F)
    {
      v8 = *(a1 + 32);
      swift_getFunctionTypeMetadata1();
      sub_24B516C9C();
      if (v9 <= 0x3F)
      {
        v10 = *(a1 + 40);
        type metadata accessor for NewAndFeaturedDataItem();
        swift_getFunctionTypeMetadata1();
        sub_24B516C9C();
        if (v11 <= 0x3F)
        {
          swift_getExtendedExistentialTypeMetadata();
          sub_24B516C9C();
          if (v12 <= 0x3F)
          {
            sub_24B516B8C();
            if (v13 <= 0x3F)
            {
              sub_24B4C33D8(319, &qword_2810EED88, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
              if (v14 <= 0x3F)
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

void sub_24B4C33D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B4C343C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24B51713C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  sub_24B496724(v2, &v20 - v11, &qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24B51701C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_24B517C6C();
    v17 = sub_24B51736C();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_24B4C3B24(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_24B479000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x24C242250](v19, -1, -1);
      MEMORY[0x24C242250](v18, -1, -1);
    }

    sub_24B51712C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24B4C36C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
  v36 = a2;
  result = sub_24B517D3C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24B4A0BC0(v25, v37);
      }

      else
      {
        sub_24B4A0BD8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24B517F7C();
      sub_24B517B3C();
      result = sub_24B517FBC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24B4A0BC0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_24B4C3980()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC630, &qword_24B51A9C8);
  v2 = *v0;
  v3 = sub_24B517D2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24B4A0BD8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24B4A0BC0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24B4C3B24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B4C3BF0(v11, 0, 0, 1, a1, a2);
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
    sub_24B4A0BD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24B4C3BF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B4C3CFC(a5, a6);
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
    result = sub_24B517D1C();
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

uint64_t sub_24B4C3CFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B4C3D48(a1, a2);
  sub_24B4C3E78(&unk_285E73E68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24B4C3D48(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B4C3F64(v5, 0);
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

  result = sub_24B517D1C();
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
        v10 = sub_24B517B4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B4C3F64(v10, 0);
        result = sub_24B517CEC();
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

uint64_t sub_24B4C3E78(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24B4C3FD8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24B4C3F64(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB0, &qword_24B51DCD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B4C3FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEB0, &qword_24B51DCD8);
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

size_t sub_24B4C40CC(size_t a1, int64_t a2, char a3)
{
  result = sub_24B4C40EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24B4C40EC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF20, qword_24B51DE08);
  v10 = *(sub_24B51788C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24B51788C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B4C42C4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24B4A0BD8(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_24B4A0BC0(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_24B49689C(v22, &qword_27EFFCE98, &unk_24B51DCA0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B4C4458(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B496398(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B4C449C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24B49627C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24B4C4520@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[17];
  return sub_24B4BD054(v1[16], v1[6], a1, v1[8], v1[9], v1[10], v1[11], v1[12], v1[13], v1[14], v1[15]);
}

uint64_t sub_24B4C4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v20 = v3[4];
  v21 = v3[3];
  v19 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  v10 = v3[10];
  v9 = v3[11];
  v11 = v3[12];
  v12 = v3[13];
  v13 = *(type metadata accessor for NewAndFeaturedView() - 8);
  v14 = (*(v13 + 80) + 112) & ~*(v13 + 80);
  *&v18 = v10;
  *(&v18 + 1) = v9;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  *&v16 = v5;
  *(&v16 + 1) = v6;
  return sub_24B4BEBC0(a1, a2, v3 + v14, *(v3 + v14 + *(v13 + 64)), v4, v21, v20, v19, a3, v16, v17, v18, v11, v12);
}

uint64_t sub_24B4C467C()
{
  v17 = *(v0 + 1);
  v1 = v0[5];
  v18 = v0[4];
  v22 = *(v0 + 3);
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v21 = v0[2];
  v19 = v0[6];
  v20 = v0[3];
  v8 = *(type metadata accessor for NewAndFeaturedView() - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 112) & ~*(v8 + 80);
  v11 = *(type metadata accessor for NewAndFeaturedDataItem() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  *&v16 = v6;
  *(&v16 + 1) = v7;
  *&v15 = v4;
  *(&v15 + 1) = v5;
  *&v14 = v2;
  *(&v14 + 1) = v3;
  return sub_24B4C1E94(v0 + v10, v0 + v12, *(v0 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v21, v20, v18, v1, v19, *(&v22 + 1), v14, v15, v16);
}

uint64_t sub_24B4C4860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24B4C4888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v26 = *(v0 + 16);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);
  v24 = *(v0 + 88);
  v29 = *(v0 + 104);
  v4 = type metadata accessor for NewAndFeaturedView();
  v25 = *(*(v4 - 1) + 64);
  v5 = (v0 + ((*(*(v4 - 1) + 80) + 112) & ~*(*(v4 - 1) + 80)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B51701C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v4[29]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_24B4956A8();
  v12 = v4[30];
  swift_getFunctionTypeMetadata1();
  v13 = sub_24B516C9C();
  (*(*(v13 - 8) + 8))(&v5[v12], v13);
  v14 = v4[31];
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = v4[32];
  swift_getExtendedExistentialTypeMetadata();
  v17 = sub_24B516C9C();
  (*(*(v17 - 8) + 8))(&v5[v16], v17);
  v18 = v4[33];
  v19 = sub_24B516B8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(&v5[v18], v19);
  v22 = v4[34];
  if (!(*(v20 + 48))(&v5[v22], 1, v19))
  {
    v21(&v5[v22], v19);
  }

  return swift_deallocObject();
}

uint64_t sub_24B4C4C14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v14 = v0[11];
  v15 = v0[10];
  v12 = v0[13];
  v13 = v0[12];
  v9 = *(type metadata accessor for NewAndFeaturedView() - 8);
  v10 = *(v0 + ((*(v9 + 80) + 112) & ~*(v9 + 80)) + *(v9 + 64));
  type metadata accessor for NewAndFeaturedView();
  return sub_24B4C1D20(v10);
}

unint64_t sub_24B4C4D30()
{
  result = qword_2810ED6D0;
  if (!qword_2810ED6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCF00, &qword_24B51DDE8);
    sub_24B4C4DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED6D0);
  }

  return result;
}

unint64_t sub_24B4C4DBC()
{
  result = qword_2810ED728;
  if (!qword_2810ED728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED728);
  }

  return result;
}

uint64_t sub_24B4C4F10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24B4C4F90()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 != 1)
  {
    v1 = 0x656C6269736976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_24B4C4FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4C6070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4C5010(uint64_t a1)
{
  v2 = sub_24B4C555C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C504C(uint64_t a1)
{
  v2 = sub_24B4C555C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5088(uint64_t a1)
{
  v2 = sub_24B4C5658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C50C4(uint64_t a1)
{
  v2 = sub_24B4C5658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5100(uint64_t a1)
{
  v2 = sub_24B4C5604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C513C(uint64_t a1)
{
  v2 = sub_24B4C5604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4C5178(uint64_t a1)
{
  v2 = sub_24B4C55B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4C51B4(uint64_t a1)
{
  v2 = sub_24B4C55B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerVisibility.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF28, &qword_24B51DE20);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF30, &qword_24B51DE28);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF38, &qword_24B51DE30);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF40, &qword_24B51DE38);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4C555C();
  sub_24B517FDC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24B4C5604();
      v12 = v26;
      sub_24B517E3C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24B4C55B0();
      v12 = v29;
      sub_24B517E3C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24B4C5658();
    sub_24B517E3C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_24B4C555C()
{
  result = qword_27EFFCF48;
  if (!qword_27EFFCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF48);
  }

  return result;
}