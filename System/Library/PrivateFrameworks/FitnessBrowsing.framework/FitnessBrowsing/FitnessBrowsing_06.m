uint64_t sub_24B50E9CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 6)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 12:
      if (a1 | a2)
      {
        if (a6 != 12 || a4 != 1 || a5)
        {
          goto LABEL_59;
        }

        result = 1;
      }

      else
      {
        if (a6 != 12 || a5 | a4)
        {
          goto LABEL_59;
        }

        result = 1;
      }

      break;
    default:
      if (a6)
      {
LABEL_59:
        result = 0;
      }

      else if (a1 == a4 && a2 == a5)
      {
        result = 1;
      }

      else
      {
LABEL_55:
        result = sub_24B517EEC();
      }

      break;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  return swift_deallocObject();
}

uint64_t sub_24B50ECD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50ED40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B50ED88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50EDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *Array<A>.includingMarketingUpsellSectionDescriptors(isSubscribed:)(char a1, uint64_t a2)
{
  v4 = sub_24B516C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseEditorialDescriptor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseSectionDescriptor();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v21 = &v54 - v20;
  if (a1)
  {

    return a2;
  }

  v56 = v5;
  v57 = v4;
  v58 = v8;
  v59 = v18;
  v61 = v19;
  v62 = a2;
  *&v60 = *(a2 + 16);
  if (!v60)
  {
LABEL_14:
    v28 = v63;
    sub_24B516C1C();
    v29 = sub_24B516BFC();
    v31 = v30;
    v32 = v57;
    v56 = *(v56 + 8);
    (v56)(v28, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD038, &unk_24B51E530);
    v33 = *(type metadata accessor for BrowseLazyItem() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    v60 = xmmword_24B521160;
    *(v36 + 16) = xmmword_24B521160;
    v37 = v36 + v35;
    *v37 = 25;
    *(v37 + 4) = *&v65[3];
    *(v37 + 1) = *v65;
    *(v37 + 24) = 0u;
    *(v37 + 8) = 0u;
    *(v37 + 40) = v29;
    *(v37 + 48) = v31;
    *(v37 + 56) = v29;
    *(v37 + 64) = v31;
    *(v37 + 72) = 7;
    swift_storeEnumTagMultiPayload();

    sub_24B516C1C();
    v38 = sub_24B516BFC();
    v40 = v39;
    (v56)(v28, v32);
    v42 = v58;
    v41 = v59;
    v43 = *(v58 + 40);
    sub_24B516B5C();
    v44 = sub_24B516B8C();
    (*(*(v44 - 8) + 56))(v41 + v43, 0, 1, v44);
    v45 = v41 + *(v42 + 44);
    sub_24B516B5C();
    *v41 = v36;
    *(v41 + 8) = 1;
    *(v41 + 9) = 537;
    *(v41 + 11) = 25;
    *(v41 + 16) = v38;
    *(v41 + 24) = v40;
    *(v41 + 32) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD040, &qword_24B521170);
    v46 = *(v61 + 72);
    v47 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v60;
    sub_24B50FDB4(v41, v48 + v47, type metadata accessor for BrowseSectionDescriptor);
    v64 = v48;

    sub_24B50FC70(v49, sub_24B4CA4AC, type metadata accessor for BrowseSectionDescriptor);
    sub_24B50FE1C(v41, type metadata accessor for BrowseSectionDescriptor);
    return v64;
  }

  v22 = v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
  v23 = *(v61 + 72);
  v55 = v22;
  v24 = v60;
  while (1)
  {
    sub_24B50FDB4(v22, v21, type metadata accessor for BrowseSectionDescriptor);
    sub_24B50FDB4(v21, v17, type metadata accessor for BrowseSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B50FE1C(v21, type metadata accessor for BrowseSectionDescriptor);
      sub_24B50FE1C(v17, type metadata accessor for BrowseSectionDescriptor);
      goto LABEL_6;
    }

    sub_24B50FC08(v17, v11, type metadata accessor for BrowseEditorialDescriptor);
    if (BrowseDisplayStyle.rawValue.getter(v11[9]) == 0x6564616548626174 && v25 == 0xE900000000000072)
    {
      break;
    }

    v27 = sub_24B517EEC();

    sub_24B50FE1C(v11, type metadata accessor for BrowseEditorialDescriptor);
    sub_24B50FE1C(v21, type metadata accessor for BrowseSectionDescriptor);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_6:
    v22 += v23;
    if (!--v24)
    {
      goto LABEL_14;
    }
  }

  sub_24B50FE1C(v11, type metadata accessor for BrowseEditorialDescriptor);
  sub_24B50FE1C(v21, type metadata accessor for BrowseSectionDescriptor);
LABEL_18:
  v64 = MEMORY[0x277D84F90];
  v51 = v60 + 1;
  for (i = v55; --v51; i = v53)
  {
    v53 = i + v23;
    sub_24B50F4E0(&v64, i);
  }

  return v64;
}

uint64_t sub_24B50F4E0(void **a1, uint64_t a2)
{
  v62 = a1;
  v3 = type metadata accessor for BrowseLazyItem();
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B516C2C();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseSectionDescriptor();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v60 = &v52 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v57 = type metadata accessor for BrowseEditorialDescriptor();
  v21 = *(*(v57 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v57);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  sub_24B50FDB4(a2, v20, type metadata accessor for BrowseSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v29 = type metadata accessor for BrowseSectionDescriptor;
    v30 = v20;
LABEL_11:
    sub_24B50FE1C(v30, v29);
    goto LABEL_12;
  }

  sub_24B50FC08(v20, v26, type metadata accessor for BrowseEditorialDescriptor);
  if (v26[8] != 1)
  {
    v29 = type metadata accessor for BrowseEditorialDescriptor;
    v30 = v26;
    goto LABEL_11;
  }

  v55 = *v26;
  v54 = v26[9];
  if (BrowseDisplayStyle.rawValue.getter(v54) == 0x6564616548626174 && v27 == 0xE900000000000072)
  {
  }

  else
  {
    v53 = sub_24B517EEC();

    if ((v53 & 1) == 0)
    {
      sub_24B50FE1C(v26, type metadata accessor for BrowseEditorialDescriptor);

LABEL_12:
      sub_24B50FDB4(a2, v16, type metadata accessor for BrowseSectionDescriptor);
      v31 = v62;
      v32 = *v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_24B4CA4AC(0, v32[2] + 1, 1, v32);
      }

      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        v32 = sub_24B4CA4AC(v33 > 1, v34 + 1, 1, v32);
      }

      v32[2] = v34 + 1;
      result = sub_24B50FC08(v16, v32 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v34, type metadata accessor for BrowseSectionDescriptor);
      *v31 = v32;
      return result;
    }
  }

  sub_24B516C1C();
  v36 = sub_24B516BFC();
  v38 = v37;
  (*(v56 + 8))(v11, v8);
  *v7 = 25;
  *(v7 + 1) = *v64;
  *(v7 + 1) = *&v64[3];
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 5) = v36;
  *(v7 + 6) = v38;
  *(v7 + 7) = v36;
  *(v7 + 8) = v38;
  v7[72] = 7;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD038, &unk_24B51E530);
  v39 = *(v59 + 72);
  v40 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24B521160;
  sub_24B50FDB4(v7, v41 + v40, type metadata accessor for BrowseLazyItem);
  v63 = v41;

  sub_24B50FC70(v55, sub_24B4CA4D4, type metadata accessor for BrowseLazyItem);
  v42 = v63;
  LOWORD(v40) = *(v26 + 5);
  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  v45 = v57;
  sub_24B4D1850(&v26[*(v57 + 40)], &v24[*(v57 + 40)]);
  v46 = *(v45 + 44);
  v47 = sub_24B516B8C();
  (*(*(v47 - 8) + 16))(&v24[v46], &v26[v46], v47);
  *v24 = v42;
  v24[8] = 1;
  v24[9] = v54;
  *(v24 + 5) = v40;
  *(v24 + 2) = v44;
  *(v24 + 3) = v43;
  v24[32] = 1;
  sub_24B50FDB4(v24, v60, type metadata accessor for BrowseEditorialDescriptor);
  swift_storeEnumTagMultiPayload();
  v48 = v62;
  v49 = *v62;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_24B4CA4AC(0, v49[2] + 1, 1, v49);
  }

  v51 = v49[2];
  v50 = v49[3];
  if (v51 >= v50 >> 1)
  {
    v49 = sub_24B4CA4AC(v50 > 1, v51 + 1, 1, v49);
  }

  sub_24B50FE1C(v24, type metadata accessor for BrowseEditorialDescriptor);
  sub_24B50FE1C(v7, type metadata accessor for BrowseLazyItem);
  sub_24B50FE1C(v26, type metadata accessor for BrowseEditorialDescriptor);
  v49[2] = v51 + 1;
  result = sub_24B50FC08(v60, v49 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v51, type metadata accessor for BrowseSectionDescriptor);
  *v48 = v49;
  return result;
}

uint64_t sub_24B50FC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50FC70(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24B50FDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50FE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NewAndFeaturedEnvironment.init(navigateToIdentifier:resolveNewAndFeaturedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B50FE88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B50FEDC(uint64_t a1)
{
  v2 = sub_24B510514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B50FF18(uint64_t a1)
{
  v2 = sub_24B510514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B50FF54(uint64_t a1)
{
  v2 = sub_24B510610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B50FF90(uint64_t a1)
{
  v2 = sub_24B510610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B50FFCC(uint64_t a1)
{
  v2 = sub_24B510568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B510008(uint64_t a1)
{
  v2 = sub_24B510568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLazyItem.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE350, &qword_24B526130);
  v31 = *(v32 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v27 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE358, &qword_24B526138);
  v28 = *(v29 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v27 - v5;
  v27 = type metadata accessor for BrowseItem();
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseLazyItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE360, &qword_24B526140);
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v34);
  v17 = &v27 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B510514();
  sub_24B517FDC();
  sub_24B4ABD68(v33, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v13[3];
    v41 = v13[2];
    v42[0] = v19;
    *(v42 + 9) = *(v13 + 57);
    v20 = v13[1];
    v39 = *v13;
    v40 = v20;
    LOBYTE(v35) = 1;
    sub_24B510568();
    v21 = v30;
    v22 = v34;
    sub_24B517E3C();
    v37 = v41;
    v38[0] = v42[0];
    *(v38 + 9) = *(v42 + 9);
    v35 = v39;
    v36 = v40;
    sub_24B5105BC();
    v23 = v32;
    sub_24B517EBC();
    (*(v31 + 8))(v21, v23);
    (*(v14 + 8))(v17, v22);
    return sub_24B4851E4(&v39);
  }

  else
  {
    sub_24B510DE8(v13, v9, type metadata accessor for BrowseItem);
    LOBYTE(v39) = 0;
    sub_24B510610();
    v25 = v34;
    sub_24B517E3C();
    sub_24B51140C(&qword_27EFFE388, type metadata accessor for BrowseItem);
    v26 = v29;
    sub_24B517EBC();
    (*(v28 + 8))(v6, v26);
    sub_24B51179C(v9, type metadata accessor for BrowseItem);
    return (*(v14 + 8))(v17, v25);
  }
}

unint64_t sub_24B510514()
{
  result = qword_27EFFE368;
  if (!qword_27EFFE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE368);
  }

  return result;
}

unint64_t sub_24B510568()
{
  result = qword_27EFFE370;
  if (!qword_27EFFE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE370);
  }

  return result;
}

unint64_t sub_24B5105BC()
{
  result = qword_27EFFE378;
  if (!qword_27EFFE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE378);
  }

  return result;
}

unint64_t sub_24B510610()
{
  result = qword_27EFFE380;
  if (!qword_27EFFE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE380);
  }

  return result;
}

uint64_t BrowseLazyItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE390, &qword_24B526148);
  v55 = *(v53 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v58 = &v49 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE398, &qword_24B526150);
  v54 = *(v56 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE3A0, &unk_24B526158);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = type metadata accessor for BrowseLazyItem();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B510514();
  v23 = v61;
  sub_24B517FCC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v52 = v18;
  v50 = v15;
  v25 = v57;
  v24 = v58;
  v61 = 0;
  v51 = v20;
  v26 = v59;
  v27 = sub_24B517E1C();
  v28 = (2 * *(v27 + 16)) | 1;
  v66 = v27;
  v67 = v27 + 32;
  v68 = 0;
  v69 = v28;
  v29 = sub_24B4A39B0();
  v30 = v10;
  if (v29 == 2 || v68 != v69 >> 1)
  {
    v33 = sub_24B517D0C();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v35 = v11;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v60 + 8))(v10, v7);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  if (v29)
  {
    LOBYTE(v62) = 1;
    sub_24B510568();
    v31 = v24;
    v32 = v61;
    sub_24B517D7C();
    if (v32)
    {
LABEL_6:
      (*(v60 + 8))(v30, v7);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v70);
    }

    v39 = v26;
    sub_24B510D94();
    v40 = v53;
    sub_24B517E0C();
    (*(v55 + 8))(v31, v40);
    (*(v60 + 8))(v30, v7);
    swift_unknownObjectRelease();
    v41 = v65[0];
    v42 = v50;
    v50[2] = v64;
    v42[3] = v41;
    *(v42 + 57) = *(v65 + 9);
    v43 = v63;
    *v42 = v62;
    v42[1] = v43;
    swift_storeEnumTagMultiPayload();
    v44 = v42;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_24B510610();
    v38 = v61;
    sub_24B517D7C();
    if (v38)
    {
      goto LABEL_6;
    }

    v39 = v26;
    v61 = v7;
    type metadata accessor for BrowseItem();
    sub_24B51140C(&qword_27EFFE3B0, type metadata accessor for BrowseItem);
    v45 = v52;
    v46 = v56;
    sub_24B517E0C();
    v47 = v60;
    (*(v54 + 8))(v25, v46);
    (*(v47 + 8))(v10, v61);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v44 = v45;
  }

  v48 = v51;
  sub_24B510DE8(v44, v51, type metadata accessor for BrowseLazyItem);
  sub_24B510DE8(v48, v39, type metadata accessor for BrowseLazyItem);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

unint64_t sub_24B510D94()
{
  result = qword_27EFFE3A8;
  if (!qword_27EFFE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3A8);
  }

  return result;
}

uint64_t sub_24B510DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseLazyItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseLazyItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4ABD68(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v11[3];
    v19 = v11[2];
    v20[0] = v12;
    *(v20 + 9) = *(v11 + 57);
    v13 = v11[1];
    v17 = *v11;
    v18 = v13;
    MEMORY[0x24C241D70](1);
    v15[2] = v19;
    v16[0] = v20[0];
    *(v16 + 9) = *(v20 + 9);
    v15[0] = v17;
    v15[1] = v18;
    BrowseItemPlaceholder.hash(into:)();
    return sub_24B4851E4(&v17);
  }

  else
  {
    sub_24B510DE8(v11, v7, type metadata accessor for BrowseItem);
    MEMORY[0x24C241D70](0);
    BrowseItem.hash(into:)(a1);
    return sub_24B51179C(v7, type metadata accessor for BrowseItem);
  }
}

uint64_t BrowseLazyItem.hashValue.getter()
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B511050()
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B511094()
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing14BrowseLazyItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseLazyItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v31 - v18;
  v20 = (v31 + *(v17 + 56) - v18);
  sub_24B4ABD68(a1, v31 - v18);
  sub_24B4ABD68(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4ABD68(v19, v12);
    v21 = v12[3];
    v38[2] = v12[2];
    v39[0] = v21;
    *(v39 + 9) = *(v12 + 57);
    v22 = v12[1];
    v38[0] = *v12;
    v38[1] = v22;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v20[1];
      v24 = v20[3];
      v36 = v20[2];
      v37[0] = v24;
      *(v37 + 9) = *(v20 + 57);
      v25 = v20[1];
      v35[0] = *v20;
      v35[1] = v25;
      v26 = v12[3];
      v33[2] = v12[2];
      v34[0] = v26;
      *(v34 + 9) = *(v12 + 57);
      v27 = v12[1];
      v33[0] = *v12;
      v33[1] = v27;
      v28 = v20[3];
      v31[2] = v36;
      v32[0] = v28;
      *(v32 + 9) = *(v20 + 57);
      v31[0] = v35[0];
      v31[1] = v23;
      v29 = _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(v33, v31);
      sub_24B4851E4(v35);
      sub_24B4851E4(v38);
LABEL_9:
      sub_24B51179C(v19, type metadata accessor for BrowseLazyItem);
      return v29 & 1;
    }

    sub_24B4851E4(v38);
  }

  else
  {
    sub_24B4ABD68(v19, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B510DE8(v20, v7, type metadata accessor for BrowseItem);
      v29 = static BrowseItem.== infix(_:_:)(v14, v7);
      sub_24B51179C(v7, type metadata accessor for BrowseItem);
      sub_24B51179C(v14, type metadata accessor for BrowseItem);
      goto LABEL_9;
    }

    sub_24B51179C(v14, type metadata accessor for BrowseItem);
  }

  sub_24B48517C(v19);
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_24B51140C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B511488()
{
  result = qword_27EFFE3C0;
  if (!qword_27EFFE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3C0);
  }

  return result;
}

unint64_t sub_24B5114E0()
{
  result = qword_27EFFE3C8;
  if (!qword_27EFFE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3C8);
  }

  return result;
}

unint64_t sub_24B511538()
{
  result = qword_27EFFE3D0;
  if (!qword_27EFFE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3D0);
  }

  return result;
}

unint64_t sub_24B511590()
{
  result = qword_27EFFE3D8;
  if (!qword_27EFFE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3D8);
  }

  return result;
}

unint64_t sub_24B5115E8()
{
  result = qword_27EFFE3E0;
  if (!qword_27EFFE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3E0);
  }

  return result;
}

unint64_t sub_24B511640()
{
  result = qword_27EFFE3E8;
  if (!qword_27EFFE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3E8);
  }

  return result;
}

unint64_t sub_24B511698()
{
  result = qword_27EFFE3F0;
  if (!qword_27EFFE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3F0);
  }

  return result;
}

unint64_t sub_24B5116F0()
{
  result = qword_27EFFE3F8;
  if (!qword_27EFFE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3F8);
  }

  return result;
}

unint64_t sub_24B511748()
{
  result = qword_27EFFE400;
  if (!qword_27EFFE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE400);
  }

  return result;
}

uint64_t sub_24B51179C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicBrowseMenuEnvironment.init(resolveBookmark:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BrowseDetailTextItem.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseDetailTextItem() + 20);

  return sub_24B4D1850(v3, a1);
}

uint64_t BrowseDetailTextItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BrowseDetailTextItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BrowseDetailTextItem.init(identifier:attributedSummary:attributedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BrowseDetailTextItem();
  v11 = (a5 + *(v10 + 24));
  *v11 = a1;
  v11[1] = a2;
  sub_24B4D18C0(a3, a5);
  v12 = a5 + *(v10 + 20);

  return sub_24B4D18C0(a4, v12);
}

unint64_t sub_24B511928()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24B511998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B512BC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B5119C0(uint64_t a1)
{
  v2 = sub_24B51292C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5119FC(uint64_t a1)
{
  v2 = sub_24B51292C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailTextItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE408, "\\y");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B51292C();
  sub_24B517FDC();
  v20 = 0;
  sub_24B516B8C();
  sub_24B47B774(&qword_27EFFC510, MEMORY[0x277CC8C40]);
  sub_24B517E6C();
  if (!v2)
  {
    v11 = type metadata accessor for BrowseDetailTextItem();
    v12 = *(v11 + 20);
    v19 = 1;
    sub_24B517E6C();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v18 = 2;
    sub_24B517E7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BrowseDetailTextItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE418, &qword_24B5265E0);
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = type metadata accessor for BrowseDetailTextItem();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B51292C();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v17;
  sub_24B516B8C();
  v34 = 0;
  sub_24B47B774(&qword_27EFFC588, MEMORY[0x277CC8C40]);
  v19 = v30;
  sub_24B517DBC();
  sub_24B4D18C0(v31, v27);
  v33 = 1;
  sub_24B517DBC();
  v20 = v27;
  sub_24B4D18C0(v8, &v27[*(v14 + 20)]);
  v32 = 2;
  v21 = sub_24B517DCC();
  v23 = v22;
  (*(v29 + 8))(v13, v19);
  v24 = (v20 + *(v14 + 24));
  *v24 = v21;
  v24[1] = v23;
  sub_24B512980(v20, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B5129E4(v20);
}

uint64_t BrowseDetailTextItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B516B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  sub_24B4D1850(v1, &v20 - v12);
  v14 = *(v3 + 48);
  if (v14(v13, 1, v2) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_24B517F9C();
    sub_24B47B774(&qword_2810EED98, MEMORY[0x277CC8C40]);
    sub_24B517A9C();
    (*(v3 + 8))(v6, v2);
  }

  v15 = type metadata accessor for BrowseDetailTextItem();
  sub_24B4D1850(v1 + *(v15 + 20), v11);
  if (v14(v11, 1, v2) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_24B517F9C();
    sub_24B47B774(&qword_2810EED98, MEMORY[0x277CC8C40]);
    sub_24B517A9C();
    (*(v3 + 8))(v6, v2);
  }

  v16 = (v1 + *(v15 + 24));
  v17 = *v16;
  v18 = v16[1];
  return sub_24B517B3C();
}

uint64_t BrowseDetailTextItem.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B512354()
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B512398()
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseDetailTextItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v46[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46[-v20];
  v22 = *(v19 + 48);
  v52 = a1;
  sub_24B4D1850(a1, &v46[-v20]);
  sub_24B4D1850(a2, &v21[v22]);
  v23 = *(v5 + 48);
  if (v23(v21, 1, v4) == 1)
  {
    if (v23(&v21[v22], 1, v4) == 1)
    {
      v48 = v5;
      v49 = a2;
      sub_24B49689C(v21, &qword_27EFFC4E8, &qword_24B51F380);
      goto LABEL_8;
    }

LABEL_6:
    v24 = v21;
LABEL_14:
    sub_24B49689C(v24, &qword_27EFFC608, &qword_24B51F5B0);
    goto LABEL_15;
  }

  sub_24B4D1850(v21, v13);
  if (v23(&v21[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_6;
  }

  v49 = a2;
  v25 = *(v5 + 32);
  v26 = v5;
  v27 = v51;
  v25(v51, &v21[v22], v4);
  sub_24B47B774(&qword_2810EED90, MEMORY[0x277CC8C40]);
  v47 = sub_24B517AAC();
  v48 = v26;
  v28 = *(v26 + 8);
  v28(v27, v4);
  v28(v13, v4);
  sub_24B49689C(v21, &qword_27EFFC4E8, &qword_24B51F380);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v29 = type metadata accessor for BrowseDetailTextItem();
  v30 = *(v29 + 20);
  v31 = *(v14 + 48);
  v32 = v52;
  sub_24B4D1850(v52 + v30, v18);
  v33 = v49 + v30;
  v34 = v49;
  sub_24B4D1850(v33, &v18[v31]);
  if (v23(v18, 1, v4) != 1)
  {
    v35 = v50;
    sub_24B4D1850(v18, v50);
    if (v23(&v18[v31], 1, v4) == 1)
    {
      (*(v48 + 8))(v35, v4);
      goto LABEL_13;
    }

    v38 = v48;
    v39 = v51;
    (*(v48 + 32))(v51, &v18[v31], v4);
    sub_24B47B774(&qword_2810EED90, MEMORY[0x277CC8C40]);
    v40 = sub_24B517AAC();
    v41 = *(v38 + 8);
    v41(v39, v4);
    v41(v35, v4);
    sub_24B49689C(v18, &qword_27EFFC4E8, &qword_24B51F380);
    if (v40)
    {
      goto LABEL_18;
    }

LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

  if (v23(&v18[v31], 1, v4) != 1)
  {
LABEL_13:
    v24 = v18;
    goto LABEL_14;
  }

  sub_24B49689C(v18, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_18:
  v42 = *(v29 + 24);
  v43 = *(v32 + v42);
  v44 = *(v32 + v42 + 8);
  v45 = (v34 + v42);
  if (v43 == *v45 && v44 == v45[1])
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_24B517EEC();
  }

  return v36 & 1;
}

unint64_t sub_24B51292C()
{
  result = qword_27EFFE410;
  if (!qword_27EFFE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE410);
  }

  return result;
}

uint64_t sub_24B512980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailTextItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5129E4(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailTextItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B512AC4()
{
  result = qword_27EFFE428;
  if (!qword_27EFFE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE428);
  }

  return result;
}

unint64_t sub_24B512B1C()
{
  result = qword_27EFFE430;
  if (!qword_27EFFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE430);
  }

  return result;
}

unint64_t sub_24B512B74()
{
  result = qword_27EFFE438;
  if (!qword_27EFFE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE438);
  }

  return result;
}

uint64_t sub_24B512BC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527B50 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_24B512CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v25 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v26 = v9;
  v27 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_24B517F7C();
    sub_24B517B3C();

    v17 = sub_24B517FBC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v28 = v12;
    v20 = ~v18;
    while (!*(*(a2 + 48) + v19))
    {
      v21 = 0x6C6F427469617274;
      v22 = 0xE900000000000064;
      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (v15 == 1)
      {
        v23 = 0x800000024B5273C0;
      }

      else
      {
        v23 = 0x800000024B5273E0;
      }

      if (v21 == 0xD000000000000011)
      {
        goto LABEL_25;
      }

LABEL_26:
      v24 = sub_24B517EEC();

      if (v24)
      {
        goto LABEL_32;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = 0xD000000000000011;
    if (*(*(a2 + 48) + v19) == 1)
    {
      v22 = 0x800000024B5273C0;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v22 = 0x800000024B5273E0;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_24:
    v23 = 0xE900000000000064;
    if (v21 != 0x6C6F427469617274)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (v22 != v23)
    {
      goto LABEL_26;
    }

LABEL_32:
    v9 = v26;
    v3 = v27;
    v8 = v28;
  }

  while (v28);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v25 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B512FB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_24B517F7C();
    MEMORY[0x24C241D70](v13);
    result = sub_24B517FBC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (v13 != *(*(a2 + 48) + v16))
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B513128(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516C6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_24B516AF0(&qword_2810EED58, MEMORY[0x277CC9AF8]);
      v28 = sub_24B517A8C();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_24B516AF0(&qword_27EFFE340, MEMORY[0x277CC9AF8]);
        v33 = sub_24B517AAC();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5134D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_24B517F7C();
    MEMORY[0x24C241D70](v13);
    result = sub_24B517FBC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24B513648()
{
  v1 = *v0;
  v2 = 0x6F5464656C696166;
  v3 = 0xD00000000000001DLL;
  if (v1 != 4)
  {
    v3 = 0x4164694477656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000017;
  if (v1 != 1)
  {
    v4 = 0x646564616F6CLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_24B513718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B516818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B513740(uint64_t a1)
{
  v2 = sub_24B514658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B51377C(uint64_t a1)
{
  v2 = sub_24B514658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5137B8(uint64_t a1)
{
  v2 = sub_24B5148B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5137F4(uint64_t a1)
{
  v2 = sub_24B5148B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513830(uint64_t a1)
{
  v2 = sub_24B514860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B51386C(uint64_t a1)
{
  v2 = sub_24B514860();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B5138A8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_24B5138E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B527B10 == a2)
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

uint64_t sub_24B5139CC(uint64_t a1)
{
  v2 = sub_24B51480C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513A08(uint64_t a1)
{
  v2 = sub_24B51480C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513A44(uint64_t a1)
{
  v2 = sub_24B5147B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513A80(uint64_t a1)
{
  v2 = sub_24B5147B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513ABC(uint64_t a1)
{
  v2 = sub_24B514764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513AF8(uint64_t a1)
{
  v2 = sub_24B514764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513B34(uint64_t a1)
{
  v2 = sub_24B514710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513B70(uint64_t a1)
{
  v2 = sub_24B514710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE440, &qword_24B5267F0);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE448, &qword_24B5267F8);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = &v61 - v7;
  v8 = sub_24B516BEC();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v8);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE450, &qword_24B526800);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v61 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE458, &qword_24B526808);
  v75 = *(v77 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = &v61 - v15;
  v66 = type metadata accessor for BrowseContent();
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE460, &qword_24B526810);
  v63 = *(v64 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE468, &qword_24B526818);
  v62 = *(v21 - 8);
  v22 = *(v62 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v61 - v23;
  v25 = type metadata accessor for BrowseAction();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE470, &qword_24B526820);
  v83 = *(v29 - 8);
  v84 = v29;
  v30 = *(v83 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v61 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B514658();
  v82 = v32;
  sub_24B517FDC();
  sub_24B5146AC(v86, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v88) = 1;
      sub_24B514860();
      v52 = v84;
      v53 = v82;
      sub_24B517E3C();
      (*(v63 + 8))(v20, v64);
      return (*(v83 + 8))(v53, v52);
    }

    else
    {
      v43 = v84;
      if (EnumCaseMultiPayload == 4)
      {
        LOBYTE(v88) = 3;
        sub_24B5147B8();
        v44 = v65;
        v45 = v82;
        sub_24B517E3C();
        v47 = v67;
        v46 = v68;
      }

      else
      {
        LOBYTE(v88) = 5;
        sub_24B514710();
        v44 = v69;
        v45 = v82;
        sub_24B517E3C();
        v47 = v73;
        v46 = v74;
      }

      (*(v47 + 8))(v44, v46);
      return (*(v83 + 8))(v45, v43);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = v85;
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48));
      v37 = v70;
      sub_24B515634(v28, v70, type metadata accessor for BrowseContent);
      LOBYTE(v88) = 2;
      sub_24B51480C();
      v38 = v71;
      v39 = v84;
      v40 = v82;
      sub_24B517E3C();
      LOBYTE(v88) = 0;
      sub_24B516AF0(&qword_27EFFE1D8, type metadata accessor for BrowseContent);
      v41 = v77;
      sub_24B517EBC();
      if (v35)
      {

        (*(v75 + 8))(v38, v41);
        sub_24B516A90(v37, type metadata accessor for BrowseContent);
        return (*(v83 + 8))(v40, v39);
      }

      else
      {
        v88 = v36;
        v87 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
        sub_24B51569C(&qword_27EFFE1E8, &qword_27EFFE1F0);
        sub_24B517EBC();
        (*(v75 + 8))(v38, v41);
        sub_24B516A90(v37, type metadata accessor for BrowseContent);
        (*(v83 + 8))(v40, v39);
      }
    }

    else
    {
      v55 = v78;
      v54 = v79;
      v56 = v72;
      (*(v78 + 32))(v72, v28, v79);
      LOBYTE(v88) = 4;
      sub_24B514764();
      v57 = v76;
      v58 = v84;
      v59 = v82;
      sub_24B517E3C();
      sub_24B516AF0(&qword_27EFFD610, MEMORY[0x277CC9578]);
      v60 = v81;
      sub_24B517EBC();
      (*(v80 + 8))(v57, v60);
      (*(v55 + 8))(v56, v54);
      return (*(v83 + 8))(v59, v58);
    }
  }

  else
  {
    v48 = *v28;
    v49 = v28[1];
    LOBYTE(v88) = 0;
    sub_24B5148B4();
    v50 = v84;
    v51 = v82;
    sub_24B517E3C();
    sub_24B517E7C();

    (*(v62 + 8))(v24, v21);
    return (*(v83 + 8))(v51, v50);
  }
}

uint64_t type metadata accessor for BrowseAction()
{
  result = qword_2810EE9E8;
  if (!qword_2810EE9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B514658()
{
  result = qword_2810EEA80[0];
  if (!qword_2810EEA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EEA80);
  }

  return result;
}

uint64_t sub_24B5146AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B514710()
{
  result = qword_2810EEA48;
  if (!qword_2810EEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA48);
  }

  return result;
}

unint64_t sub_24B514764()
{
  result = qword_27EFFE478;
  if (!qword_27EFFE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE478);
  }

  return result;
}

unint64_t sub_24B5147B8()
{
  result = qword_27EFFE480;
  if (!qword_27EFFE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE480);
  }

  return result;
}

unint64_t sub_24B51480C()
{
  result = qword_27EFFE488;
  if (!qword_27EFFE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE488);
  }

  return result;
}

unint64_t sub_24B514860()
{
  result = qword_27EFFE490;
  if (!qword_27EFFE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE490);
  }

  return result;
}

unint64_t sub_24B5148B4()
{
  result = qword_27EFFE498;
  if (!qword_27EFFE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE498);
  }

  return result;
}

uint64_t BrowseAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4A0, &qword_24B526828);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v66 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4A8, &qword_24B526830);
  v80 = *(v78 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  v88 = &v66 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4B0, &qword_24B526838);
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v87 = &v66 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4B8, &qword_24B526840);
  v81 = *(v79 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v82 = &v66 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4C0, &qword_24B526848);
  v72 = *(v73 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v83 = &v66 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4C8, &qword_24B526850);
  v70 = *(v71 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v85 = &v66 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4D0, &unk_24B526858);
  v90 = *(v86 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v86);
  v18 = &v66 - v17;
  v19 = type metadata accessor for BrowseAction();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v66 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v66 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B514658();
  v34 = v91;
  sub_24B517FCC();
  if (!v34)
  {
    v66 = v29;
    v67 = v23;
    v35 = v85;
    v36 = v87;
    v68 = v26;
    v37 = v88;
    v69 = v19;
    v91 = v31;
    v38 = v89;
    v39 = v86;
    v40 = sub_24B517E1C();
    v41 = (2 * *(v40 + 16)) | 1;
    v93 = v40;
    v94 = v40 + 32;
    v95 = 0;
    v96 = v41;
    v42 = sub_24B4A39BC();
    if (v42 != 6 && v95 == v96 >> 1)
    {
      if (v42 > 2u)
      {
        if (v42 == 3)
        {
          v97 = 3;
          sub_24B5147B8();
          sub_24B517D7C();
          (*(v74 + 8))(v36, v75);
          (*(v90 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v58 = v91;
          goto LABEL_17;
        }

        if (v42 != 4)
        {
          v97 = 5;
          sub_24B514710();
          v57 = v84;
          sub_24B517D7C();
          (*(v76 + 8))(v57, v77);
          (*(v90 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v58 = v91;
          goto LABEL_17;
        }

        v97 = 4;
        sub_24B514764();
        v50 = v37;
        sub_24B517D7C();
        sub_24B516BEC();
        sub_24B516AF0(&qword_27EFFD620, MEMORY[0x277CC9578]);
        v51 = v67;
        v52 = v78;
        sub_24B517E0C();
        (*(v80 + 8))(v50, v52);
        (*(v90 + 8))(v18, v39);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v63 = v51;
      }

      else if (v42)
      {
        if (v42 == 1)
        {
          v97 = 1;
          sub_24B514860();
          v43 = v83;
          sub_24B517D7C();
          v44 = v90;
          (*(v72 + 8))(v43, v73);
          (*(v44 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v58 = v91;
LABEL_17:
          swift_storeEnumTagMultiPayload();
LABEL_19:
          sub_24B515634(v58, v38, type metadata accessor for BrowseAction);
          return __swift_destroy_boxed_opaque_existential_1(v92);
        }

        v97 = 2;
        sub_24B51480C();
        v54 = v82;
        sub_24B517D7C();
        v55 = v90;
        type metadata accessor for BrowseContent();
        v97 = 0;
        sub_24B516AF0(&qword_27EFFE230, type metadata accessor for BrowseContent);
        v56 = v79;
        sub_24B517E0C();
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
        v97 = 1;
        sub_24B51569C(&qword_27EFFE238, &qword_27EFFE240);
        sub_24B517E0C();
        (*(v81 + 8))(v54, v56);
        (*(v55 + 8))(v18, v39);
        swift_unknownObjectRelease();
        v65 = v68;
        swift_storeEnumTagMultiPayload();
        v63 = v65;
      }

      else
      {
        v97 = 0;
        sub_24B5148B4();
        sub_24B517D7C();
        v53 = v71;
        v59 = sub_24B517DCC();
        v61 = v60;
        (*(v70 + 8))(v35, v53);
        (*(v90 + 8))(v18, v39);
        swift_unknownObjectRelease();
        v62 = v66;
        *v66 = v59;
        v62[1] = v61;
        swift_storeEnumTagMultiPayload();
        v63 = v62;
      }

      v58 = v91;
      sub_24B515634(v63, v91, type metadata accessor for BrowseAction);
      goto LABEL_19;
    }

    v45 = sub_24B517D0C();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v47 = v69;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v90 + 8))(v18, v39);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v92);
}

uint64_t sub_24B515634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B51569C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    sub_24B516AF0(a2, MEMORY[0x277CC9AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BrowseAction.hash(into:)(__int128 *a1)
{
  v3 = sub_24B516BEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseContent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B5146AC(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v19 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v19 = 3;
    }

    else
    {
      v19 = 5;
    }

    return MEMORY[0x24C241D70](v19);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48));
      sub_24B515634(v15, v11, type metadata accessor for BrowseContent);
      MEMORY[0x24C241D70](2);
      BrowseContent.hash(into:)(a1);
      sub_24B48AF48(a1, v17);

      return sub_24B516A90(v11, type metadata accessor for BrowseContent);
    }

    else
    {
      (*(v4 + 32))(v7, v15, v3);
      MEMORY[0x24C241D70](4);
      sub_24B516AF0(&qword_27EFFE4D8, MEMORY[0x277CC9578]);
      sub_24B517A9C();
      return (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v20 = *v15;
    v21 = v15[1];
    MEMORY[0x24C241D70](0);
    sub_24B517B3C();
  }
}

uint64_t BrowseAction.hashValue.getter()
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B515A80()
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B515AC4()
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing12BrowseActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BEC();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseContent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrowseAction();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v44 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE508, &qword_24B527018);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v44 - v24;
  v26 = (&v44 + *(v23 + 56) - v24);
  sub_24B5146AC(a1, &v44 - v24);
  sub_24B5146AC(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_22:
        sub_24B516A28(v25);
LABEL_23:
        v34 = 0;
        return v34 & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_22;
    }

LABEL_33:
    sub_24B516A90(v25, type metadata accessor for BrowseAction);
    v34 = 1;
    return v34 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_24B5146AC(v25, v20);
    v36 = *v20;
    v35 = v20[1];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_22;
    }

    if (v36 == *v26 && v35 == v26[1])
    {
      v42 = v26[1];
    }

    else
    {
      v40 = v26[1];
      v41 = sub_24B517EEC();

      if ((v41 & 1) == 0)
      {
LABEL_31:
        sub_24B516A90(v25, type metadata accessor for BrowseAction);
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B5146AC(v25, v15);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v37 = v45;
      (*(v45 + 32))(v7, v26, v4);
      v34 = sub_24B516BCC();
      v38 = *(v37 + 8);
      v38(v7, v4);
      v38(v15, v4);
      goto LABEL_17;
    }

    (*(v45 + 8))(v15, v4);
    goto LABEL_22;
  }

  sub_24B5146AC(v25, v18);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  v29 = *&v18[v28];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_24B516A90(v18, type metadata accessor for BrowseContent);
    goto LABEL_22;
  }

  v30 = *(v26 + v28);
  v31 = v26;
  v32 = v44;
  sub_24B515634(v31, v44, type metadata accessor for BrowseContent);
  v33 = static BrowseContent.== infix(_:_:)(v18, v32);
  sub_24B516A90(v18, type metadata accessor for BrowseContent);
  if ((v33 & 1) == 0)
  {
    sub_24B516A90(v32, type metadata accessor for BrowseContent);

    goto LABEL_31;
  }

  v34 = sub_24B513128(v29, v30);

  sub_24B516A90(v32, type metadata accessor for BrowseContent);
LABEL_17:
  sub_24B516A90(v25, type metadata accessor for BrowseAction);
  return v34 & 1;
}

void sub_24B516070()
{
  sub_24B47AB14();
  if (v0 <= 0x3F)
  {
    sub_24B5160F8();
    if (v1 <= 0x3F)
    {
      sub_24B516BEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B5160F8()
{
  if (!qword_2810EE880)
  {
    type metadata accessor for BrowseContent();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810EE880);
    }
  }
}

unint64_t sub_24B5161EC()
{
  result = qword_27EFFE4E8;
  if (!qword_27EFFE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4E8);
  }

  return result;
}

unint64_t sub_24B516244()
{
  result = qword_27EFFE4F0;
  if (!qword_27EFFE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4F0);
  }

  return result;
}

unint64_t sub_24B51629C()
{
  result = qword_27EFFE4F8;
  if (!qword_27EFFE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4F8);
  }

  return result;
}

unint64_t sub_24B5162F4()
{
  result = qword_27EFFE500;
  if (!qword_27EFFE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE500);
  }

  return result;
}

unint64_t sub_24B51634C()
{
  result = qword_2810EEA50;
  if (!qword_2810EEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA50);
  }

  return result;
}

unint64_t sub_24B5163A4()
{
  result = qword_2810EEA58;
  if (!qword_2810EEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA58);
  }

  return result;
}

unint64_t sub_24B5163FC()
{
  result = qword_2810EEA18;
  if (!qword_2810EEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA18);
  }

  return result;
}

unint64_t sub_24B516454()
{
  result = qword_2810EEA20;
  if (!qword_2810EEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA20);
  }

  return result;
}

unint64_t sub_24B5164AC()
{
  result = qword_2810EEA60;
  if (!qword_2810EEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA60);
  }

  return result;
}

unint64_t sub_24B516504()
{
  result = qword_2810EEA68;
  if (!qword_2810EEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA68);
  }

  return result;
}

unint64_t sub_24B51655C()
{
  result = qword_2810EEA28;
  if (!qword_2810EEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA28);
  }

  return result;
}

unint64_t sub_24B5165B4()
{
  result = qword_2810EEA30;
  if (!qword_2810EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA30);
  }

  return result;
}

unint64_t sub_24B51660C()
{
  result = qword_2810EEA08;
  if (!qword_2810EEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA08);
  }

  return result;
}

unint64_t sub_24B516664()
{
  result = qword_2810EEA10;
  if (!qword_2810EEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA10);
  }

  return result;
}

unint64_t sub_24B5166BC()
{
  result = qword_2810EEA38;
  if (!qword_2810EEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA38);
  }

  return result;
}

unint64_t sub_24B516714()
{
  result = qword_2810EEA40;
  if (!qword_2810EEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA40);
  }

  return result;
}

unint64_t sub_24B51676C()
{
  result = qword_2810EEA70;
  if (!qword_2810EEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA70);
  }

  return result;
}

unint64_t sub_24B5167C4()
{
  result = qword_2810EEA78;
  if (!qword_2810EEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA78);
  }

  return result;
}

uint64_t sub_24B516818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527B90 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527BB0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024B527BD0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B516A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE508, &qword_24B527018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B516A90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B516AF0(unint64_t *a1, void (*a2)(uint64_t))
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