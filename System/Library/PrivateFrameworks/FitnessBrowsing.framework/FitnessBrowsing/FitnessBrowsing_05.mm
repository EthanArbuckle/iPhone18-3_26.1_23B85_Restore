uint64_t sub_24B4F48F4(uint64_t a1)
{
  v2 = sub_24B4F4ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4930(uint64_t a1)
{
  v2 = sub_24B4F4ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F496C()
{
  if (*v0)
  {
    result = 0x6572616873;
  }

  else
  {
    result = 0x6B72616D6B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_24B4F49A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572616873 && a2 == 0xE500000000000000)
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

uint64_t sub_24B4F4A7C(uint64_t a1)
{
  v2 = sub_24B4F4E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4AB8(uint64_t a1)
{
  v2 = sub_24B4F4E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F4AF4(uint64_t a1)
{
  v2 = sub_24B4F4E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4B30(uint64_t a1)
{
  v2 = sub_24B4F4E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollectionDetailFeature.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF40, &qword_24B524650);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF48, &qword_24B524658);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF50, &qword_24B524660);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F4E28();
  sub_24B517FDC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B4F4E7C();
    sub_24B517E3C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B4F4ED0();
    sub_24B517E3C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B4F4E28()
{
  result = qword_27EFFDF58;
  if (!qword_27EFFDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF58);
  }

  return result;
}

unint64_t sub_24B4F4E7C()
{
  result = qword_27EFFDF60;
  if (!qword_27EFFDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF60);
  }

  return result;
}

unint64_t sub_24B4F4ED0()
{
  result = qword_27EFFDF68;
  if (!qword_27EFFDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF68);
  }

  return result;
}

uint64_t sub_24B4F4F40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B4F4FFC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t EditorialCollectionDetailFeature.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F4FFC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFA8, &qword_24B5249D0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFB0, &qword_24B5249D8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFB8, &unk_24B5249E0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F4E28();
  v15 = v32;
  sub_24B517FCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B517E1C();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B4A39B0();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B517D0C();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v24 = &type metadata for EditorialCollectionDetailFeature;
    sub_24B517D8C();
    sub_24B517CFC();
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
    sub_24B4F4E7C();
    sub_24B517D7C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B4F4ED0();
    sub_24B517D7C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B4F54FC()
{
  result = qword_27EFFDF70;
  if (!qword_27EFFDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF70);
  }

  return result;
}

unint64_t sub_24B4F5554()
{
  result = qword_27EFFDF78;
  if (!qword_27EFFDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF78);
  }

  return result;
}

unint64_t sub_24B4F55AC()
{
  result = qword_27EFFDF80;
  if (!qword_27EFFDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF80);
  }

  return result;
}

unint64_t sub_24B4F5604()
{
  result = qword_27EFFDF88;
  if (!qword_27EFFDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF88);
  }

  return result;
}

unint64_t sub_24B4F565C()
{
  result = qword_27EFFDF90;
  if (!qword_27EFFDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF90);
  }

  return result;
}

unint64_t sub_24B4F56B4()
{
  result = qword_27EFFDF98;
  if (!qword_27EFFDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF98);
  }

  return result;
}

unint64_t sub_24B4F570C()
{
  result = qword_27EFFDFA0;
  if (!qword_27EFFDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFA0);
  }

  return result;
}

uint64_t BrowseItemReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v5 = 0x7473696C79616C70;
    }

    if (a1 <= 1u)
    {
      return 0x6169726F74696465;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x72656E69617274;
    v2 = 0x65486C6C65737075;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v3 = 0x2D72656E69617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B4F5894(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = BrowseItemReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseItemReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

uint64_t sub_24B4F591C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15FitnessBrowsing23BrowseItemReferenceTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_24B4F594C@<X0>(uint64_t *a1@<X8>)
{
  result = BrowseItemReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B4F5A28()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseItemReferenceType.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4F5A8C()
{
  BrowseItemReferenceType.rawValue.getter(*v0);
  sub_24B517B3C();
}

uint64_t sub_24B4F5AE0()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseItemReferenceType.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseItemReferenceTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B517D6C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B4F5B90()
{
  result = qword_27EFFDFC0;
  if (!qword_27EFFDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFC0);
  }

  return result;
}

unint64_t sub_24B4F5BF4()
{
  result = qword_27EFFDFC8;
  if (!qword_27EFFDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFC8);
  }

  return result;
}

uint64_t sub_24B4F5C48(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_24B51793C();
}

uint64_t sub_24B4F5E18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7A8, qword_24B51AF78);
  sub_24B496A60(&qword_27EFFC7B0, &qword_27EFFC7A8, qword_24B51AF78);

  return sub_24B516F7C();
}

uint64_t sub_24B4F5EB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v3;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7C0, &qword_24B51AFB8) + 48);
      v7 = sub_24B516BEC();
      (*(*(v7 - 8) + 8))(&v3[v6], v7);
      return v5;
    }

    sub_24B49689C(v3, &qword_27EFFC7B8, &qword_24B51AF90);
  }

  return 0;
}

uint64_t sub_24B4F600C()
{
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v2 == 1 || (sub_24B4F5EB8() & 1) != 0)
  {
    return 1;
  }

  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  return v1;
}

uint64_t DynamicBrowseMenuView.init(store:bookmarkActionViewBuilder:sharingActionViewBuilder:modalPresentations:menuStyle:buttonStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *a7 = sub_24B48D8D8;
  *(a7 + 8) = v18;
  *(a7 + 16) = 0;
  v19 = type metadata accessor for DynamicBrowseMenuView();
  v20 = v19[25];

  v22 = a3(v21);
  v23 = a7 + v19[26];
  a4(v22);

  v24 = (a7 + v19[27]);
  *v24 = a5;
  v24[1] = a6;
  (*(*(a13 - 8) + 32))(a7 + v19[28], a8, a13);
  return (*(*(a14 - 8) + 32))(a7 + v19[29], a9, a14);
}

uint64_t DynamicBrowseMenuView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = *(a1 + 32);
  sub_24B51702C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  v43 = *(a1 + 16);
  sub_24B517C8C();
  v42 = *(a1 + 24);
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v4 = sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v50 = MEMORY[0x277CE1410];
  v51 = WitnessTable;
  v52 = MEMORY[0x277CE1410];
  v53 = v3;
  v54 = v4;
  v55 = OpaqueTypeConformance2;
  v56 = swift_getWitnessTable();
  v7 = sub_24B51745C();
  v8 = *(a1 + 48);
  v9 = swift_getWitnessTable();
  v10 = *(a1 + 88);
  v53 = v7;
  v54 = v8;
  v55 = v9;
  v56 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(a1 + 40);
  v53 = v7;
  v54 = v8;
  v40 = v10;
  v41 = v8;
  v55 = v9;
  v56 = v10;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = *(a1 + 80);
  v53 = OpaqueTypeMetadata2;
  v54 = v12;
  v38 = v14;
  v39 = v12;
  v55 = v13;
  v56 = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v37[1] = swift_getWitnessTable();
  v15 = sub_24B51782C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v37 - v21;
  v23 = sub_24B51724C();
  v45 = *(v23 - 8);
  v24 = *(v45 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v37 - v25;
  v27 = v46;
  v28 = sub_24B4F600C();
  if (v28)
  {
    v37[0] = v37;
    MEMORY[0x28223BE20](v28);
    *&v29 = v43;
    *&v30 = v44;
    *(&v29 + 1) = v42;
    *(&v30 + 1) = v39;
    *&v37[-12] = v29;
    *&v37[-10] = v30;
    v37[-8] = v41;
    *&v37[-7] = *(a1 + 56);
    v31 = v38;
    v37[-5] = *(a1 + 72);
    v37[-4] = v31;
    v37[-3] = v40;
    v37[-2] = v27;
    sub_24B5178CC();
    sub_24B51781C();
    v32 = swift_getWitnessTable();
    sub_24B49711C(v20, v15, v32);
    v33 = *(v16 + 8);
    v33(v20, v15);
    sub_24B49711C(v22, v15, v32);
    sub_24B48D144(v20, v15);
    v33(v20, v15);
    v33(v22, v15);
  }

  else
  {
    v34 = swift_getWitnessTable();
    sub_24B48D23C(v34, v15, MEMORY[0x277CE1428]);
  }

  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CE1410];
  v35 = swift_getWitnessTable();
  sub_24B49711C(v26, v23, v35);
  return (*(v45 + 8))(v26, v23);
}

unint64_t sub_24B4F68A8()
{
  result = qword_27EFFDFE8;
  if (!qword_27EFFDFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
    sub_24B4F6960();
    sub_24B496A60(&qword_27EFFE010, &qword_27EFFE018, &qword_24B524B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFE8);
  }

  return result;
}

unint64_t sub_24B4F6960()
{
  result = qword_27EFFDFF0;
  if (!qword_27EFFDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFF8, &qword_24B524B28);
    sub_24B496A60(&qword_27EFFE000, &qword_27EFFE008, &qword_24B524B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFF0);
  }

  return result;
}

uint64_t sub_24B4F6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v107 = a8;
  v108 = a7;
  v110 = a6;
  v104 = a5;
  v105 = a3;
  v90 = a4;
  v106 = a2;
  v99 = a1;
  v100 = a9;
  v98 = a10;
  v111 = a11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v12 = sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v136 = MEMORY[0x277CE1410];
  v137 = WitnessTable;
  v138 = MEMORY[0x277CE1410];
  v95 = v12;
  v93 = swift_getWitnessTable();
  v126 = v96;
  v127 = v12;
  v128 = OpaqueTypeConformance2;
  v129 = v93;
  v14 = sub_24B51745C();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v91 = &v74 - v16;
  v17 = swift_getWitnessTable();
  v82 = v14;
  v83 = v17;
  v18 = v110;
  v126 = v14;
  v127 = v110;
  v128 = v17;
  v129 = a12;
  v19 = v17;
  v101 = a12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = OpaqueTypeMetadata2;
  v92 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v92 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v84 = &v74 - v22;
  v126 = v14;
  v127 = v18;
  v128 = v19;
  v129 = a12;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v104;
  v126 = OpaqueTypeMetadata2;
  v127 = v104;
  v25 = v111;
  v128 = v23;
  v129 = v111;
  v86 = v23;
  v87 = MEMORY[0x277CDEF98];
  v26 = swift_getOpaqueTypeMetadata2();
  v88 = *(v26 - 8);
  v89 = v26;
  v27 = *(v88 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v80 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v81 = &v74 - v31;
  v32 = v90;
  v33 = *(v90 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24B51702C();
  v38 = *(v37 - 8);
  v102 = v37;
  v103 = v38;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v109 = &v74 - v43;
  v125[0] = sub_24B5176DC();
  v126 = v106;
  v127 = v105;
  v128 = v32;
  v129 = v24;
  v130 = v110;
  v131 = v108;
  v44 = v98;
  v132 = v107;
  v133 = v98;
  v134 = v25;
  v135 = v101;
  v75 = type metadata accessor for DynamicBrowseMenuView();
  v45 = v99;
  v46 = v99 + *(v75 + 108);
  v47 = *(v46 + 8);
  (*v46)();
  v48 = v42;
  v49 = MEMORY[0x277CE0F70];
  MEMORY[0x24C241440](v36, MEMORY[0x277CE0F78], v32);
  (*(v33 + 8))(v36, v32);

  v125[2] = v49;
  v125[3] = v44;
  v50 = v102;
  v51 = swift_getWitnessTable();
  v76 = v48;
  v77 = v51;
  sub_24B49711C(v48, v50, v51);
  v52 = *(v103 + 8);
  v78 = v103 + 8;
  v79 = v52;
  v52(v48, v50);
  v112 = v106;
  v113 = v105;
  v53 = v104;
  v114 = v32;
  v115 = v104;
  v116 = v110;
  v117 = v108;
  v118 = v107;
  v119 = v44;
  v120 = v111;
  v121 = v101;
  v122 = v45;
  v54 = v91;
  sub_24B51744C();
  v55 = v75;
  v56 = v45 + *(v75 + 116);
  v57 = v45;
  v58 = v84;
  v59 = v82;
  sub_24B51754C();
  (*(v97 + 8))(v54, v59);
  v60 = v57 + *(v55 + 112);
  v61 = v80;
  v62 = v85;
  v63 = v86;
  v64 = v111;
  sub_24B5176BC();
  (*(v92 + 8))(v58, v62);
  v126 = v62;
  v127 = v53;
  v128 = v63;
  v129 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v81;
  v67 = v89;
  sub_24B49711C(v61, v89, v65);
  v68 = v88;
  v69 = *(v88 + 8);
  v69(v61, v67);
  v70 = v102;
  v71 = v76;
  (*(v103 + 16))(v76, v109, v102);
  v126 = v71;
  (*(v68 + 16))(v61, v66, v67);
  v127 = v61;
  v125[0] = v70;
  v125[1] = v67;
  v123 = v77;
  v124 = v65;
  sub_24B4F5C48(&v126, 2uLL, v125);
  v69(v66, v67);
  v72 = v79;
  v79(v109, v70);
  v69(v61, v67);
  return v72(v71, v70);
}

uint64_t sub_24B4F7294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v30 = a7;
  v31 = a8;
  v28 = a6;
  v29 = a1;
  v32 = a9;
  v27 = a10;
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v15 = sub_24B51786C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = v28;
  v38 = v30;
  v39 = v31;
  v40 = v27;
  v41 = a11;
  v42 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_24B51785C();
  v43 = MEMORY[0x277CE1410];
  v44 = WitnessTable;
  v45 = MEMORY[0x277CE1410];
  v24 = swift_getWitnessTable();
  sub_24B49711C(v20, v15, v24);
  v25 = *(v16 + 8);
  v25(v20, v15);
  sub_24B49711C(v22, v15, v24);
  return (v25)(v22, v15);
}

uint64_t sub_24B4F74F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v76 = a6;
  v71 = a5;
  v64 = a4;
  v72 = a9;
  v65 = a11;
  v67 = *(a3 - 8);
  v16 = *(v67 + 64);
  v63 = a10;
  v17 = MEMORY[0x28223BE20](a1);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = &v61 - v19;
  v70 = sub_24B517C8C();
  v66 = *(v70 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v70);
  v73 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v69 = &v61 - v24;
  v25 = *(a2 - 1);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v61 - v30;
  v32 = sub_24B517C8C();
  v74 = *(v32 - 8);
  v33 = *(v74 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v75 = &v61 - v37;
  v82 = a2;
  v83 = a3;
  v68 = a3;
  v38 = a1;
  v84 = v64;
  v85 = v71;
  v86 = v76;
  v87 = a7;
  v76 = a7;
  v71 = a8;
  v88 = a8;
  v89 = v63;
  v90 = v65;
  v39 = type metadata accessor for DynamicBrowseMenuView();
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v82 == 1 || (sub_24B4F5EB8() & 1) != 0)
  {
    v40 = v76;
    sub_24B49711C(v38 + *(v39 + 100), a2, v76);
    sub_24B49711C(v31, a2, v40);
    (*(v25 + 8))(v31, a2);
    (*(v25 + 32))(v36, v29, a2);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = 1;
  (*(v25 + 56))(v36, v41, 1, a2);
  sub_24B4A3FB0(v36, v75);
  v43 = *(v74 + 8);
  v44 = v36;
  v45 = v36;
  v46 = v32;
  v65 = v74 + 8;
  v64 = v43;
  v43(v45, v32);
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  v47 = v71;
  v48 = v68;
  v49 = v67;
  if (v82 == 1)
  {
    v50 = v38 + *(v39 + 104);
    v51 = v61;
    sub_24B49711C(v50, v68, v71);
    v52 = v62;
    sub_24B49711C(v51, v48, v47);
    (*(v49 + 8))(v51, v48);
    (*(v49 + 32))(v73, v52, v48);
    v42 = 0;
  }

  v53 = v73;
  (*(v49 + 56))(v73, v42, 1, v48);
  v54 = v69;
  sub_24B4A3FB0(v53, v69);
  v55 = v66;
  v56 = *(v66 + 8);
  v57 = v70;
  v56(v53, v70);
  v58 = v75;
  (*(v74 + 16))(v44, v75, v46);
  v82 = v44;
  (*(v55 + 16))(v53, v54, v57);
  v83 = v53;
  v81[0] = v46;
  v81[1] = v57;
  v78 = v76;
  WitnessTable = swift_getWitnessTable();
  v77 = v47;
  v80 = swift_getWitnessTable();
  sub_24B4F5C48(&v82, 2uLL, v81);
  v56(v54, v57);
  v59 = v64;
  v64(v58, v46);
  v56(v53, v57);
  return v59(v44, v46);
}

uint64_t sub_24B4F7BD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFE0, &qword_24B524B20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - v2;
  v4 = sub_24B51742C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B51774C();
  sub_24B5173DC();
  sub_24B5173FC();

  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  v10 = sub_24B51743C();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_24B5176EC();
  v13 = swift_getKeyPath();
  v17[2] = v9;
  v17[3] = v9;
  v17[4] = KeyPath;
  v17[5] = v10;
  v17[6] = v13;
  v17[7] = v12;
  v14 = *MEMORY[0x277CDF9D8];
  v15 = sub_24B51701C();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_24B4F895C();
  result = sub_24B517AAC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFD8, &qword_24B524B18);
    sub_24B4F68A8();
    v17[1] = KeyPath;
    sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20);
    sub_24B51758C();
    sub_24B49689C(v3, &qword_27EFFDFE0, &qword_24B524B20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B4F7ED0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  return swift_getOpaqueTypeConformance2();
}

void sub_24B4F7F30(void *a1)
{
  sub_24B4A44D4();
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = a1[3];
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        sub_24B4F88F4();
        if (v7 <= 0x3F)
        {
          v8 = a1[5];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            v10 = a1[6];
            swift_checkMetadataState();
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

uint64_t sub_24B4F8024(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  v9 = *(a3[5] - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(a3[6] - 8);
  v13 = *(v4 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(a3[3] - 8) + 64) + 7;
  v21 = v16 + 16;
  v22 = *(*(a3[5] - 8) + 64) + v17;
  v23 = a2 - v19;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = ((v22 + ((v21 + ((v20 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17) + *(v12 + 64);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_16;
  }

  v28 = ((v23 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_37;
      }

LABEL_16:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

LABEL_24:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = ((v22 + ((v21 + ((v20 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & 0xFFFFFFF8)) & ~v16)) & ~v17) + *(v12 + 64);
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v19 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  v32 = (a1 + v13 + 17) & ~v13;
  if (v5 == v19)
  {
    v33 = *(v4 + 48);
    v34 = *(v4 + 84);
    v35 = a3[2];

    return v33(v32, v34, v35);
  }

  v32 = (v32 + v14 + v15) & ~v15;
  if (v7 == v19)
  {
    v33 = *(v6 + 48);
    v34 = *(v6 + 84);
    v35 = a3[3];

    return v33(v32, v34, v35);
  }

  v36 = ((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v38 = (v36 + v21) & ~v16;
    if (v10 != v19)
    {
      v40 = ~v17;
      v33 = *(v12 + 48);
      v32 = (v22 + v38) & v40;
      v34 = *(v12 + 84);
      v35 = a3[6];

      return v33(v32, v34, v35);
    }

    v39 = *(v9 + 48);

    return v39(v38);
  }

  else
  {
    v37 = *v36;
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_24B4F844C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(a4[5] - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v10;
  }

  v14 = *(a4[6] - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (v13 <= *(v14 + 84))
  {
    v21 = *(v14 + 84);
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v18 + 7;
  v24 = *(*(a4[5] - 8) + 64) + v20;
  v25 = ((v24 + ((v19 + 16 + ((v18 + 7 + ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v20) + *(v14 + 64);
  v26 = a3 >= v22;
  v27 = a3 - v22;
  if (v27 != 0 && v26)
  {
    if (v25 <= 3)
    {
      v31 = ((v27 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v31))
      {
        v28 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v31 >= 2)
        {
          v28 = v32;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v22 >= a2)
  {
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v25] = 0;
    }

    else if (v28)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    v34 = &a1[v15 + 17] & ~v15;
    if (v7 == v22)
    {
      v35 = *(v6 + 56);
    }

    else
    {
      v34 = (v34 + v16 + v17) & ~v17;
      if (v9 == v22)
      {
        v35 = *(v8 + 56);
      }

      else
      {
        v36 = ((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
        if ((v21 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v36 = a2 & 0x7FFFFFFF;
            v36[1] = 0;
          }

          else
          {
            *v36 = a2 - 1;
          }

          return;
        }

        v34 = (v36 + v19 + 16) & ~v19;
        if (v12 == v22)
        {
          v35 = *(v11 + 56);
        }

        else
        {
          v37 = v24 + v34;
          v35 = *(v14 + 56);
          v34 = v37 & ~v20;
        }
      }
    }

    v35(v34);
    return;
  }

  v29 = ~v22 + a2;
  if (v25 < 4)
  {
    v30 = (v29 >> (8 * v25)) + 1;
    if (v25)
    {
      v33 = v29 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
LABEL_59:
            if (v28 == 2)
            {
              *&a1[v25] = v30;
            }

            else
            {
              *&a1[v25] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_56;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    bzero(a1, v25);
    *a1 = v29;
    v30 = 1;
    if (v28 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v28)
  {
    a1[v25] = v30;
  }
}

unint64_t sub_24B4F88F4()
{
  result = qword_27EFFE0A8;
  if (!qword_27EFFE0A8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EFFE0A8);
  }

  return result;
}

unint64_t sub_24B4F895C()
{
  result = qword_27EFFE0B0;
  if (!qword_27EFFE0B0)
  {
    sub_24B51701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0B0);
  }

  return result;
}

uint64_t DynamicBrowseMenuState.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DynamicBrowseMenuState.bookmarkState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DynamicBrowseMenuState() + 20);

  return sub_24B4F8AD4(v3, a1);
}

uint64_t type metadata accessor for DynamicBrowseMenuState()
{
  result = qword_27EFFE0E0;
  if (!qword_27EFFE0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B4F8AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicBrowseMenuState.showBookmarkOption.setter(char a1)
{
  result = type metadata accessor for DynamicBrowseMenuState();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DynamicBrowseMenuState.showShareOption.setter(char a1)
{
  result = type metadata accessor for DynamicBrowseMenuState();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DynamicBrowseMenuState.init(identifier:bookmarkState:showBookmarkOption:showShareOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for DynamicBrowseMenuState();
  result = sub_24B4F8CE8(a3, a6 + v10[5]);
  *(a6 + v10[6]) = a4;
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t sub_24B4F8CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F8D58()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x72616853776F6873;
  }

  if (*v0)
  {
    v1 = 0x6B72616D6B6F6F62;
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

uint64_t sub_24B4F8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4F9880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4F8E1C(uint64_t a1)
{
  v2 = sub_24B4F90A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F8E58(uint64_t a1)
{
  v2 = sub_24B4F90A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrowseMenuState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE0B8, &qword_24B524C98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F90A0();
  sub_24B517FDC();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_24B517E7C();
  if (!v2)
  {
    v13 = type metadata accessor for DynamicBrowseMenuState();
    v14 = v13[5];
    v18[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    sub_24B4F9440(&qword_27EFFE0C8);
    sub_24B517EBC();
    v15 = *(v3 + v13[6]);
    v18[13] = 2;
    sub_24B517E8C();
    v16 = *(v3 + v13[7]);
    v18[12] = 3;
    sub_24B517E8C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4F90A0()
{
  result = qword_27EFFE0C0;
  if (!qword_27EFFE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0C0);
  }

  return result;
}

uint64_t DynamicBrowseMenuState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE0D0, &qword_24B524CA0);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v20 - v8;
  v10 = type metadata accessor for DynamicBrowseMenuState();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F90A0();
  v23 = v9;
  v15 = v25;
  sub_24B517FCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v29 = 0;
  *v13 = sub_24B517DCC();
  v13[1] = v17;
  v25 = v17;
  v28 = 1;
  sub_24B4F9440(&qword_27EFFE0D8);
  sub_24B517E0C();
  sub_24B4F8CE8(v6, v13 + v10[5]);
  v27 = 2;
  *(v13 + v10[6]) = sub_24B517DDC() & 1;
  v26 = 3;
  v18 = sub_24B517DDC();
  (*(v16 + 8))(v23, v24);
  *(v13 + v10[7]) = v18 & 1;
  sub_24B4F94B0(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4F9514(v13);
}

uint64_t sub_24B4F9440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC7B8, &qword_24B51AF90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4F94B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicBrowseMenuState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4F9514(uint64_t a1)
{
  v2 = type metadata accessor for DynamicBrowseMenuState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15FitnessBrowsing22DynamicBrowseMenuStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_24B517EEC()) && (v5 = type metadata accessor for DynamicBrowseMenuState(), v6 = v5[5], (sub_24B51796C()) && *(a1 + v5[6]) == *(a2 + v5[6]))
  {
    v7 = *(a1 + v5[7]) ^ *(a2 + v5[7]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_24B4F9684()
{
  sub_24B4F9710();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B4F9710()
{
  if (!qword_27EFFE0F0)
  {
    v0 = sub_24B51798C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFFE0F0);
    }
  }
}

unint64_t sub_24B4F977C()
{
  result = qword_27EFFE0F8;
  if (!qword_27EFFE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0F8);
  }

  return result;
}

unint64_t sub_24B4F97D4()
{
  result = qword_27EFFE100;
  if (!qword_27EFFE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE100);
  }

  return result;
}

unint64_t sub_24B4F982C()
{
  result = qword_27EFFE108;
  if (!qword_27EFFE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE108);
  }

  return result;
}

uint64_t sub_24B4F9880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xED00006574617453 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527AB0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616853776F6873 && a2 == 0xEF6E6F6974704F65)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F9A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
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

uint64_t sub_24B4F9AC0(uint64_t a1)
{
  v2 = sub_24B4F9DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F9AFC(uint64_t a1)
{
  v2 = sub_24B4F9DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F9B38(uint64_t a1)
{
  v2 = sub_24B4F9E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F9B74(uint64_t a1)
{
  v2 = sub_24B4F9E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrowseMenuAction.hashValue.getter()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t DynamicBrowseMenuAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE110, &qword_24B524E70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE118, &qword_24B524E78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FDC();
  sub_24B4F9E48();
  sub_24B517E3C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24B4F9DF4()
{
  result = qword_27EFFE120;
  if (!qword_27EFFE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE120);
  }

  return result;
}

unint64_t sub_24B4F9E48()
{
  result = qword_27EFFE128;
  if (!qword_27EFFE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE128);
  }

  return result;
}

uint64_t sub_24B4F9ECC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE110, &qword_24B524E70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE118, &qword_24B524E78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FDC();
  sub_24B4F9E48();
  sub_24B517E3C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_24B4FA0A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE160, &qword_24B525130);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE168, &qword_24B525138);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FCC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_24B517E1C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_24B4A2664() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_24B517D0C();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v19 = &type metadata for DynamicBrowseMenuAction;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_24B4F9E48();
  sub_24B517D7C();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_24B4FA3F4()
{
  result = qword_27EFFE130;
  if (!qword_27EFFE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE130);
  }

  return result;
}

unint64_t sub_24B4FA47C()
{
  result = qword_27EFFE138;
  if (!qword_27EFFE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE138);
  }

  return result;
}

unint64_t sub_24B4FA4D4()
{
  result = qword_27EFFE140;
  if (!qword_27EFFE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE140);
  }

  return result;
}

unint64_t sub_24B4FA52C()
{
  result = qword_27EFFE148;
  if (!qword_27EFFE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE148);
  }

  return result;
}

unint64_t sub_24B4FA584()
{
  result = qword_27EFFE150;
  if (!qword_27EFFE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE150);
  }

  return result;
}

unint64_t sub_24B4FA5DC()
{
  result = qword_27EFFE158;
  if (!qword_27EFFE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE158);
  }

  return result;
}

uint64_t sub_24B4FA630()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4FA690()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C241D70](0);

  return sub_24B517B3C();
}

uint64_t sub_24B4FA6E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4FA740(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B517EEC();
  }
}

__n128 DynamicBrowseMenuFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24B4FA784(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B517BCC();
  v5[3] = sub_24B517BBC();
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_24B4C8FCC;

  return v12(a4, a5);
}

uint64_t _s15FitnessBrowsing24DynamicBrowseMenuFeatureV6reduce10localState06sharedI011sideEffects6actiony8DataFlow05EmptyI0Vz_AA0cdeI0VzSayAI10SideEffectOyAA0cdE6ActionOGGzAQtF_0(uint64_t a1, uint64_t *a2, void **a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD060, "Xu");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
  v15 = v14[16];
  v16 = v14[20];
  v29[1] = v14[12];
  v30 = v16;
  v17 = &v9[v14[24]];
  v32 = v12;
  v33 = v13;
  sub_24B4FAD28();
  swift_bridgeObjectRetain_n();
  sub_24B517CBC();
  v18 = *MEMORY[0x277D043F0];
  v19 = sub_24B5179AC();
  (*(*(v19 - 8) + 104))(&v9[v15], v18, v19);
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v10;
  v20[4] = v12;
  v20[5] = v13;
  *v17 = &unk_24B525208;
  *(v17 + 1) = v20;

  sub_24B517BDC();
  v21 = *MEMORY[0x277D043E8];
  v22 = sub_24B51799C();
  v23 = v21;
  v24 = v31;
  (*(*(v22 - 8) + 104))(&v9[v30], v23, v22);
  (*(v6 + 104))(v9, *MEMORY[0x277D043B0], v5);
  v25 = *v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_24B4CA27C(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_24B4CA27C(v26 > 1, v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  result = (*(v6 + 32))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v9, v5);
  *v24 = v25;
  return result;
}

unint64_t sub_24B4FAB80()
{
  result = qword_27EFFE170;
  if (!qword_27EFFE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE170);
  }

  return result;
}

unint64_t sub_24B4FABD8()
{
  result = qword_27EFFE178;
  if (!qword_27EFFE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE178);
  }

  return result;
}

unint64_t sub_24B4FAC30()
{
  result = qword_27EFFE180;
  if (!qword_27EFFE180)
  {
    type metadata accessor for DynamicBrowseMenuState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE180);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B4FAC94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B4FACDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24B4FAD28()
{
  result = qword_27EFFE188;
  if (!qword_27EFFE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE188);
  }

  return result;
}

uint64_t sub_24B4FAD7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B4C9DE4;

  return sub_24B4FA784(a1, v4, v5, v7, v6);
}

uint64_t sub_24B4FAE38(uint64_t a1, int a2)
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

uint64_t sub_24B4FAE80(uint64_t result, int a2, int a3)
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

unint64_t sub_24B4FAED0()
{
  result = qword_27EFFE190;
  if (!qword_27EFFE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE190);
  }

  return result;
}

uint64_t sub_24B4FAF28()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x6F5464656C696166;
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

uint64_t sub_24B4FAFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4FD688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4FAFCC(uint64_t a1)
{
  v2 = sub_24B4FCE88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB008(uint64_t a1)
{
  v2 = sub_24B4FCE88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_24B4FB0DC(uint64_t a1)
{
  v2 = sub_24B4FCF84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB118(uint64_t a1)
{
  v2 = sub_24B4FCF84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB154()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B4FB1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4FD7F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4FB1E4(uint64_t a1)
{
  v2 = sub_24B4FCF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB220(uint64_t a1)
{
  v2 = sub_24B4FCF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB25C(uint64_t a1)
{
  v2 = sub_24B4FCEDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB298(uint64_t a1)
{
  v2 = sub_24B4FCEDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB2D4(uint64_t a1)
{
  v2 = sub_24B4FCFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB310(uint64_t a1)
{
  v2 = sub_24B4FCFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLoadState.preferredInsetBehavior.getter()
{
  State = type metadata accessor for BrowseLoadState();
  v2 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4FCDC4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0;
  v7 = type metadata accessor for BrowseLoadState;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
      v9 = *(v8 + 48);
      v10 = *&v4[*(v8 + 64)];
      v6 = v4[v9];

      v7 = type metadata accessor for BrowseContent;
    }

    sub_24B4FCE28(v4, v7);
  }

  return v6 & 1;
}

uint64_t BrowseLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE198, &qword_24B5252B8);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1A0, &qword_24B5252C0);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - v7;
  v47 = type metadata accessor for BrowseContent();
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1A8, &qword_24B5252C8);
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1B0, &qword_24B5252D0);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  State = type metadata accessor for BrowseLoadState();
  v19 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1B8, &qword_24B5252D8);
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FCE88();
  sub_24B517FDC();
  sub_24B4FCDC4(v54, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v58) = 0;
      sub_24B4FCFD8();
      v33 = v56;
      sub_24B517E3C();
      (*(v43 + 8))(v17, v14);
    }

    else
    {
      LOBYTE(v58) = 3;
      sub_24B4FCEDC();
      v42 = v46;
      v33 = v56;
      sub_24B517E3C();
      (*(v48 + 8))(v42, v49);
    }

    return (*(v55 + 8))(v25, v33);
  }

  else if (EnumCaseMultiPayload)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v35 = *(v21 + *(v34 + 48));
    v36 = *(v21 + *(v34 + 64));
    v37 = v51;
    sub_24B4FD02C(v21, v51, type metadata accessor for BrowseContent);
    LOBYTE(v58) = 2;
    sub_24B4FCF30();
    v38 = v50;
    v39 = v56;
    sub_24B517E3C();
    LOBYTE(v58) = 0;
    sub_24B4FD178(&qword_27EFFE1D8, type metadata accessor for BrowseContent);
    v40 = v53;
    v41 = v57;
    sub_24B517EBC();
    if (v41)
    {

      (*(v52 + 8))(v38, v40);
      sub_24B4FCE28(v37, type metadata accessor for BrowseContent);
      return (*(v55 + 8))(v25, v39);
    }

    else
    {
      LOBYTE(v58) = v35;
      v59 = 1;
      sub_24B4D1A2C();
      sub_24B517E6C();
      v58 = v36;
      v59 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
      sub_24B4FD094(&qword_27EFFE1E8, &qword_27EFFE1F0);
      sub_24B517EBC();
      (*(v52 + 8))(v38, v40);
      sub_24B4FCE28(v37, type metadata accessor for BrowseContent);
      (*(v55 + 8))(v25, v39);
    }
  }

  else
  {
    v28 = *v21;
    v29 = v21[1];
    LOBYTE(v58) = 1;
    sub_24B4FCF84();
    v30 = v56;
    sub_24B517E3C();
    v31 = v45;
    sub_24B517E7C();

    (*(v44 + 8))(v13, v31);
    return (*(v55 + 8))(v25, v30);
  }
}

uint64_t BrowseLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE208, &qword_24B5252E8);
  v69 = *(v72 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v78 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE210, &qword_24B5252F0);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE218, &qword_24B5252F8);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v76 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE220, &qword_24B525300);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE228, &unk_24B525308);
  v80 = *(v75 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v75);
  v18 = &v64 - v17;
  State = type metadata accessor for BrowseLoadState();
  v20 = *(*(State - 8) + 64);
  v21 = MEMORY[0x28223BE20](State);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v64 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24B4FCE88();
  v31 = v81;
  sub_24B517FCC();
  if (!v31)
  {
    v64 = v26;
    v81 = v15;
    v32 = v76;
    v33 = v77;
    v34 = v78;
    v65 = v28;
    v66 = State;
    v35 = v79;
    v36 = v75;
    v37 = sub_24B517E1C();
    v38 = (2 * *(v37 + 16)) | 1;
    v83 = v37;
    v84 = v37 + 32;
    v85 = 0;
    v86 = v38;
    v39 = sub_24B4A39B4();
    if (v39 == 4 || v85 != v86 >> 1)
    {
      v43 = sub_24B517D0C();
      swift_allocError();
      v44 = v18;
      v46 = v45;
      v47 = v36;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v46 = v66;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v80 + 8))(v44, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39 > 1u)
      {
        if (v39 == 2)
        {
          v87 = 2;
          sub_24B4FCF30();
          v50 = v33;
          sub_24B517D7C();
          v51 = v80;
          type metadata accessor for BrowseContent();
          v87 = 0;
          sub_24B4FD178(&qword_27EFFE230, type metadata accessor for BrowseContent);
          v52 = v73;
          sub_24B517E0C();
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
          v56 = *(v78 + 12);
          v87 = 1;
          sub_24B4D1B28();
          v81 = v23;
          sub_24B517DBC();
          v57 = *(v78 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
          v87 = 2;
          sub_24B4FD094(&qword_27EFFE238, &qword_27EFFE240);
          sub_24B517E0C();
          (*(v74 + 8))(v50, v52);
          (*(v51 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v63 = v81;
          swift_storeEnumTagMultiPayload();
          v41 = v65;
          sub_24B4FD02C(v63, v65, type metadata accessor for BrowseLoadState);
          v42 = v35;
        }

        else
        {
          v87 = 3;
          sub_24B4FCEDC();
          sub_24B517D7C();
          v42 = v35;
          v54 = v80;
          (*(v69 + 8))(v34, v72);
          (*(v54 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v41 = v65;
          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        if (v39)
        {
          v87 = 1;
          sub_24B4FCF84();
          v53 = v32;
          sub_24B517D7C();
          v55 = v71;
          v58 = sub_24B517DCC();
          v60 = v59;
          (*(v70 + 8))(v53, v55);
          (*(v80 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v61 = v64;
          *v64 = v58;
          v61[1] = v60;
          swift_storeEnumTagMultiPayload();
          v62 = v61;
          v41 = v65;
          sub_24B4FD02C(v62, v65, type metadata accessor for BrowseLoadState);
        }

        else
        {
          v87 = 0;
          sub_24B4FCFD8();
          v40 = v81;
          sub_24B517D7C();
          (*(v67 + 8))(v40, v68);
          (*(v80 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v41 = v65;
          swift_storeEnumTagMultiPayload();
        }

        v42 = v35;
      }

      sub_24B4FD02C(v41, v42, type metadata accessor for BrowseLoadState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t BrowseLoadState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for BrowseLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4FCDC4(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    return MEMORY[0x24C241D70](v16);
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v18 = *(v11 + *(v17 + 48));
    v19 = *(v11 + *(v17 + 64));
    sub_24B4FD02C(v11, v7, type metadata accessor for BrowseContent);
    MEMORY[0x24C241D70](2);
    BrowseContent.hash(into:)(a1);
    sub_24B517F9C();
    if (v18 != 2)
    {
      MEMORY[0x24C241D70](v18 & 1);
    }

    sub_24B48AF48(a1, v19);

    return sub_24B4FCE28(v7, type metadata accessor for BrowseContent);
  }

  else
  {
    v13 = *v11;
    v14 = v11[1];
    MEMORY[0x24C241D70](1);
    sub_24B517B3C();
  }
}

uint64_t BrowseLoadState.hashValue.getter()
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4FC92C()
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4FC970()
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing15BrowseLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseContent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for BrowseLoadState();
  v9 = *(*(State - 8) + 64);
  v10 = MEMORY[0x28223BE20](State);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C0, &unk_24B5258C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v38 - v18;
  v20 = (&v38 + *(v17 + 56) - v18);
  sub_24B4FCDC4(a1, &v38 - v18);
  sub_24B4FCDC4(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24B4FCDC4(v19, v12);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v25 = *(v24 + 48);
    v26 = v12[v25];
    v27 = *(v24 + 64);
    v28 = *&v12[v27];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_24B4FCE28(v12, type metadata accessor for BrowseContent);
      goto LABEL_16;
    }

    v29 = *(v20 + v25);
    v30 = *(v20 + v27);
    sub_24B4FD02C(v20, v7, type metadata accessor for BrowseContent);
    v31 = _s15FitnessBrowsing13BrowseContentO2eeoiySbAC_ACtFZ_0(v12, v7);
    sub_24B4FCE28(v12, type metadata accessor for BrowseContent);
    if ((v31 & 1) == 0)
    {
      sub_24B4FCE28(v7, type metadata accessor for BrowseContent);

LABEL_32:
      sub_24B4FCE28(v19, type metadata accessor for BrowseLoadState);
      goto LABEL_17;
    }

    if (v26 == 2)
    {
      if (v29 != 2)
      {
LABEL_31:

        sub_24B4FCE28(v7, type metadata accessor for BrowseContent);
        goto LABEL_32;
      }
    }

    else if (v29 == 2 || ((v29 ^ v26) & 1) != 0)
    {
      goto LABEL_31;
    }

    v32 = sub_24B513128(v28, v30);

    sub_24B4FCE28(v7, type metadata accessor for BrowseContent);
    sub_24B4FCE28(v19, type metadata accessor for BrowseLoadState);
    return v32 & 1;
  }

  sub_24B4FCDC4(v19, v14);
  v23 = *v14;
  v22 = v14[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    if (v23 == *v20 && v22 == v20[1])
    {
      v36 = v20[1];
    }

    else
    {
      v34 = v20[1];
      v35 = sub_24B517EEC();

      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_26:
    sub_24B4FCE28(v19, type metadata accessor for BrowseLoadState);
    v32 = 1;
    return v32 & 1;
  }

LABEL_16:
  sub_24B4FD918(v19);
LABEL_17:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_24B4FCDC4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for BrowseLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_24B4FCE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B4FCE88()
{
  result = qword_27EFFE1C0;
  if (!qword_27EFFE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1C0);
  }

  return result;
}

unint64_t sub_24B4FCEDC()
{
  result = qword_27EFFE1C8;
  if (!qword_27EFFE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1C8);
  }

  return result;
}

unint64_t sub_24B4FCF30()
{
  result = qword_27EFFE1D0;
  if (!qword_27EFFE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1D0);
  }

  return result;
}

unint64_t sub_24B4FCF84()
{
  result = qword_27EFFE1F8;
  if (!qword_27EFFE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1F8);
  }

  return result;
}

unint64_t sub_24B4FCFD8()
{
  result = qword_27EFFE200;
  if (!qword_27EFFE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE200);
  }

  return result;
}

uint64_t sub_24B4FD02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4FD094(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    sub_24B4FD178(a2, MEMORY[0x277CC9AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4FD178(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4FD214()
{
  result = qword_27EFFE258;
  if (!qword_27EFFE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE258);
  }

  return result;
}

unint64_t sub_24B4FD26C()
{
  result = qword_27EFFE260;
  if (!qword_27EFFE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE260);
  }

  return result;
}

unint64_t sub_24B4FD2C4()
{
  result = qword_27EFFE268;
  if (!qword_27EFFE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE268);
  }

  return result;
}

unint64_t sub_24B4FD31C()
{
  result = qword_27EFFE270;
  if (!qword_27EFFE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE270);
  }

  return result;
}

unint64_t sub_24B4FD374()
{
  result = qword_27EFFE278;
  if (!qword_27EFFE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE278);
  }

  return result;
}

unint64_t sub_24B4FD3CC()
{
  result = qword_27EFFE280;
  if (!qword_27EFFE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE280);
  }

  return result;
}

unint64_t sub_24B4FD424()
{
  result = qword_27EFFE288;
  if (!qword_27EFFE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE288);
  }

  return result;
}

unint64_t sub_24B4FD47C()
{
  result = qword_27EFFE290;
  if (!qword_27EFFE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE290);
  }

  return result;
}

unint64_t sub_24B4FD4D4()
{
  result = qword_27EFFE298;
  if (!qword_27EFFE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE298);
  }

  return result;
}

unint64_t sub_24B4FD52C()
{
  result = qword_27EFFE2A0;
  if (!qword_27EFFE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2A0);
  }

  return result;
}

unint64_t sub_24B4FD584()
{
  result = qword_27EFFE2A8;
  if (!qword_27EFFE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2A8);
  }

  return result;
}

unint64_t sub_24B4FD5DC()
{
  result = qword_27EFFE2B0;
  if (!qword_27EFFE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2B0);
  }

  return result;
}

unint64_t sub_24B4FD634()
{
  result = qword_27EFFE2B8;
  if (!qword_27EFFE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2B8);
  }

  return result;
}

uint64_t sub_24B4FD688(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4FD7F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B527B10 == a2)
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

uint64_t sub_24B4FD918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C0, &unk_24B5258C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseMarketingDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_24B517EEC(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t BrowseMarketingDescriptor.placementIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

FitnessBrowsing::BrowseMarketingDescriptor __swiftcall BrowseMarketingDescriptor.init(placementIdentifier:preferredInsetBehavior:)(FitnessBrowsing::BrowseMarketingDescriptor placementIdentifier, FitnessBrowsing::BrowseInsetBehavior_optional preferredInsetBehavior)
{
  *v2 = placementIdentifier.placementIdentifier;
  *(v2 + 16) = preferredInsetBehavior;
  placementIdentifier.preferredInsetBehavior = preferredInsetBehavior;
  return placementIdentifier;
}

unint64_t sub_24B4FDA4C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_24B4FDA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024B527B30 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2)
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

uint64_t sub_24B4FDB6C(uint64_t a1)
{
  v2 = sub_24B4FDD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FDBA8(uint64_t a1)
{
  v2 = sub_24B4FDD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseMarketingDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C8, &qword_24B5258D0);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FDD78();
  sub_24B517FDC();
  v17 = 0;
  sub_24B517E7C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_24B4D1A2C();
    sub_24B517E6C();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_24B4FDD78()
{
  result = qword_27EFFE2D0;
  if (!qword_27EFFE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2D0);
  }

  return result;
}

uint64_t BrowseMarketingDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2D8, &qword_24B5258D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FDD78();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_24B517DCC();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_24B4D1B28();
  sub_24B517DBC();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BrowseMarketingDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517B3C();
  if (v3 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v3 & 1);
}

uint64_t BrowseMarketingDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v3 != 2)
  {
    MEMORY[0x24C241D70](v3 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4FE0D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v3 != 2)
  {
    MEMORY[0x24C241D70](v3 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4FE158()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517B3C();
  if (v3 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v3 & 1);
}

uint64_t sub_24B4FE1B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v3 != 2)
  {
    MEMORY[0x24C241D70](v3 & 1);
  }

  return sub_24B517FBC();
}

unint64_t sub_24B4FE23C()
{
  result = qword_27EFFE2E0;
  if (!qword_27EFFE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2E0);
  }

  return result;
}

uint64_t sub_24B4FE290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_24B517EEC(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24B4FE318(uint64_t a1, int a2)
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

uint64_t sub_24B4FE360(uint64_t result, int a2, int a3)
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

unint64_t sub_24B4FE3C4()
{
  result = qword_27EFFE2E8;
  if (!qword_27EFFE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2E8);
  }

  return result;
}

unint64_t sub_24B4FE41C()
{
  result = qword_27EFFE2F0;
  if (!qword_27EFFE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2F0);
  }

  return result;
}

unint64_t sub_24B4FE474()
{
  result = qword_27EFFE2F8;
  if (!qword_27EFFE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2F8);
  }

  return result;
}

FitnessBrowsing::BrowseEditorialGalleryMetricsBehavior_optional __swiftcall BrowseEditorialGalleryMetricsBehavior.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_24B517D6C();

  if (v1 == 1)
  {
    v2.value = FitnessBrowsing_BrowseEditorialGalleryMetricsBehavior_trainerTipsQuarantine;
  }

  else
  {
    v2.value = FitnessBrowsing_BrowseEditorialGalleryMetricsBehavior_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BrowseEditorialGalleryMetricsBehavior.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24B4FE558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000024B527490;
  }

  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0x800000024B527490;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();
  }

  return v9 & 1;
}

uint64_t sub_24B4FE604@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24B517D6C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24B4FE664(unint64_t *a1@<X8>)
{
  v2 = 0x800000024B527490;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24B4FE75C()
{
  result = qword_27EFFE300;
  if (!qword_27EFFE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE300);
  }

  return result;
}

uint64_t sub_24B4FE7B0()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4FE838()
{
  *v0;
  sub_24B517B3C();
}

uint64_t sub_24B4FE8AC()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4FE940()
{
  result = qword_27EFFE308;
  if (!qword_27EFFE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE308);
  }

  return result;
}

uint64_t sub_24B4FE994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656966697473756ALL;
    }

    else
    {
      v4 = 0x7265746E6563;
    }

    if (v2)
    {
      v3 = 0xE900000000000064;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952867692;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C61727574616ELL;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7468676972;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656966697473756ALL;
    }

    else
    {
      v9 = 0x7265746E6563;
    }

    if (a2)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6C61727574616ELL;
    if (a2 != 3)
    {
      v6 = 0x7468676972;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952867692;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24B517EEC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24B4FEB0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007468;
  v3 = 0x67694C6172746C75;
  if (a1 <= 3u)
  {
    v4 = 0xE500000000000000;
    v5 = 0x746867696CLL;
    if (a1 != 2)
    {
      v5 = 0x72616C75676572;
      v4 = 0xE700000000000000;
    }

    v7 = 0xE400000000000000;
    v8 = 1852401780;
    if (!a1)
    {
      v8 = 0x67694C6172746C75;
      v7 = 0xEA00000000007468;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1684828002;
    v6 = 0x7976616568;
    if (a1 != 7)
    {
      v6 = 0x6B63616C62;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x646C6F62696D6573;
      v7 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x746867696CLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x72616C75676572)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1852401780)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x6D756964656DLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x646C6F62696D6573)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1684828002)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0xE500000000000000;
    if (a2 == 7)
    {
      if (v10 != 0x7976616568)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x6B63616C62;
  }

  if (v10 != v3)
  {
LABEL_45:
    v12 = sub_24B517EEC();
    goto LABEL_46;
  }

LABEL_42:
  if (v11 != v2)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24B4FED70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73647261632D6CLL;
  v3 = 0x6169726F74696465;
  if (a1 <= 3u)
  {
    v4 = 0xE800000000000000;
    v12 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
      v4 = 0xE800000000000000;
    }

    v8 = 0xEF736D6574692D6CLL;
    if (!a1)
    {
      v8 = 0xEF73647261632D6CLL;
    }

    v10 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v11 = 0x6169726F74696465;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x72656E69617274;
    v6 = 0x65486C6C65737075;
    v7 = 0xEC00000072656461;
    if (a1 != 7)
    {
      v6 = 0x74756F6B726F77;
      v7 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v9 = 0x2D72656E69617274;
      v8 = 0xEC00000073706974;
    }

    v10 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE800000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x7974696C61646F6DLL)
        {
          goto LABEL_46;
        }
      }

      else if (v11 != 0x7473696C79616C70)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xEF736D6574692D6CLL;
      if (v11 != 0x6169726F74696465)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6D6172676F7270)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v14 = 0x2D72656E69617274;
      v15 = 1936746868;
      goto LABEL_45;
    }

    if (a2 == 6)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x72656E69617274)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v14 = 0x65486C6C65737075;
      v15 = 1919247457;
LABEL_45:
      v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v11 != v14)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    v2 = 0xE700000000000000;
    v3 = 0x74756F6B726F77;
  }

  if (v11 != v3)
  {
LABEL_46:
    v16 = sub_24B517EEC();
    goto LABEL_47;
  }

LABEL_42:
  if (v13 != v2)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t BrowseFeature.environment.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x110uLL);
  memcpy(a1, v1, 0x110uLL);
  return sub_24B4FF07C(__dst, v4);
}

uint64_t sub_24B4FF0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v4 = 1;
      goto LABEL_16;
    case 2:
      v4 = 2;
      goto LABEL_16;
    case 3:
      v4 = 4;
      goto LABEL_16;
    case 4:
      v4 = 5;
      goto LABEL_16;
    case 5:
      v4 = 6;
      goto LABEL_16;
    case 6:
      v4 = 8;
      goto LABEL_16;
    case 7:
      v4 = 9;
      goto LABEL_16;
    case 8:
      v4 = 10;
      goto LABEL_16;
    case 9:
      v4 = 11;
      goto LABEL_16;
    case 10:
      v4 = 12;
      goto LABEL_16;
    case 11:
      v4 = 13;
      goto LABEL_16;
    case 12:
      if (a2 | a3)
      {
        v5 = 7;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x24C241D70](v5);
    default:
      v4 = 0;
LABEL_16:
      MEMORY[0x24C241D70](v4);

      return sub_24B517B3C();
  }
}

uint64_t sub_24B4FF1D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B4FF0D8(v5, v1, v2, v3);
  return sub_24B517FBC();
}

uint64_t sub_24B4FF238()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B4FF0D8(v5, v1, v2, v3);
  return sub_24B517FBC();
}

void BrowseFeature.reduce(localState:sharedState:sideEffects:action:)(void (*a1)(void, void, void), _BYTE *a2, void **a3, uint64_t a4)
{
  *(&v425 + 1) = a4;
  v421 = a3;
  v423 = a2;
  v419 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v395 = &v386 - v6;
  v7 = sub_24B516BEC();
  v417 = *(v7 - 8);
  v418 = v7;
  v8 = *(v417 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v386 = &v386 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v409 = &v386 - v11;
  v12 = type metadata accessor for BrowseContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v415 = (&v386 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v414 = sub_24B516B8C();
  v416 = *(v414 - 1);
  v15 = *(v416 + 8);
  v16 = MEMORY[0x28223BE20](v414);
  v398 = &v386 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v412 = &v386 - v17;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD050, &qword_24B51E548);
  v424 = *(v426 - 8);
  v18 = *(v424 + 64);
  v19 = MEMORY[0x28223BE20](v426);
  v410 = &v386 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v408 = &v386 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v394 = &v386 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v407 = &v386 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v393 = &v386 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v406 = &v386 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v392 = &v386 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v405 = &v386 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v404 = &v386 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v402 = &v386 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v390 = &v386 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v388 = &v386 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v403 = &v386 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v391 = &v386 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v400 = &v386 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v399 = &v386 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v401 = &v386 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v389 = &v386 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v387 = &v386 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v397 = &v386 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v411 = &v386 - v60;
  MEMORY[0x28223BE20](v59);
  v396 = &v386 - v61;
  v420 = type metadata accessor for BrowseIdentifier();
  v62 = *(*(v420 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v420);
  v65 = (&v386 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = MEMORY[0x28223BE20](v63);
  v413 = (&v386 - v67);
  MEMORY[0x28223BE20](v66);
  v69 = &v386 - v68;
  State = type metadata accessor for BrowseLoadState();
  v70 = *(*(State - 1) + 64);
  v71 = MEMORY[0x28223BE20](State);
  v73 = &v386 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v71);
  v76 = &v386 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v79 = &v386 - v78;
  MEMORY[0x28223BE20](v77);
  v81 = &v386 - v80;
  v82 = type metadata accessor for BrowseAction();
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v85 = (&v386 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v428, v425, 0x110uLL);
  sub_24B50ECD8(*(&v425 + 1), v85, type metadata accessor for BrowseAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v87 = *(v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48));
        v88 = v415;
        sub_24B50ED88(v85, v415, type metadata accessor for BrowseContent);
        v89 = *(type metadata accessor for BrowseState() + 36);
        v90 = v423;
        sub_24B50ECD8(&v423[v89], v79, type metadata accessor for BrowseLoadState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_24B50EDF0(v79, type metadata accessor for BrowseLoadState);
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
          v426 = *(v91 + 48);
          v92 = *(v91 + 64);
          sub_24B50ECD8(v88, v76, type metadata accessor for BrowseContent);
          memcpy(v427, v428, sizeof(v427));
          v93 = v88;
          v94 = BrowseContent.sectionDescriptors.getter();
          v95 = sub_24B504974(v94);

          sub_24B50EDF0(v93, type metadata accessor for BrowseContent);
          v76[v426] = v95;
          *&v76[v92] = v87;
          swift_storeEnumTagMultiPayload();
          sub_24B50D690(v76, &v90[v89]);
        }

        else
        {
          sub_24B50EDF0(v88, type metadata accessor for BrowseContent);

          sub_24B50EDF0(v79, type metadata accessor for BrowseLoadState);
        }
      }

      else
      {
        v147 = v419;
        sub_24B50CD08(v419);
        v149 = v417;
        v148 = v418;
        (*(v417 + 32))(v147, v85, v418);
        (*(v149 + 56))(v147, 0, 1, v148);
      }
    }

    else
    {
      v121 = *v85;
      v120 = v85[1];
      v122 = &v423[*(type metadata accessor for BrowseState() + 36)];
      sub_24B50ECD8(v122, v81, type metadata accessor for BrowseLoadState);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_24B50EDF0(v81, type metadata accessor for BrowseLoadState);
        sub_24B50EDF0(v122, type metadata accessor for BrowseLoadState);
        *v122 = v121;
        v122[1] = v120;
        swift_storeEnumTagMultiPayload();
      }

      else
      {

        sub_24B50EDF0(v81, type metadata accessor for BrowseLoadState);
      }
    }

    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v123 = type metadata accessor for BrowseState();
    v124 = v423;
    v125 = v423[v123[8]];
    sub_24B50EDF0(&v423[v123[9]], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    sub_24B50ECD8(&v124[v123[5]], v69, type metadata accessor for BrowseIdentifier);
    v126 = swift_getEnumCaseMultiPayload();
    v128 = *v69;
    v127 = *(v69 + 1);
    if (v126)
    {
      if (v126 == 1)
      {
        DWORD2(v425) = v69[16];
        v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
        v423 = *(v416 + 4);
        v130 = v412;
        v131 = v414;
        (v423)(v412, &v69[v129], v414);
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
        v133 = v132[12];
        v420 = v132[16];
        *&v425 = v132[20];
        v134 = v411;
        State = (v411 + v132[24]);
        *&v427[0] = v128;
        *(&v427[0] + 1) = v127;
        LOBYTE(v427[1]) = 1;
        sub_24B50CCB4();

        sub_24B517CBC();
        sub_24B517BDC();
        v135 = *MEMORY[0x277D04400];
        v136 = sub_24B5179AC();
        (*(*(v136 - 8) + 104))(v134 + v420, v135, v136);
        v137 = v416 + 16;
        v138 = v398;
        (*(v416 + 2))(v398, v130, v131);
        v139 = (v137[64] + 312) & ~v137[64];
        v140 = swift_allocObject();
        memcpy((v140 + 16), v428, 0x110uLL);
        *(v140 + 288) = BYTE8(v425);
        *(v140 + 296) = v128;
        *(v140 + 304) = v127;
        (v423)(v140 + v139, v138, v131);
        v141 = State;
        *State = &unk_24B525D78;
        v141[1] = v140;
        v142 = *MEMORY[0x277D043E8];
        v143 = sub_24B51799C();
        (*(*(v143 - 8) + 104))(v134 + v425, v142, v143);
        v144 = v424;
        (*(v424 + 104))(v134, *MEMORY[0x277D043B0], v426);
        v116 = v421;
        v117 = *v421;
        sub_24B50CE08(v428, v427);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_24B4CA2A0(0, v117[2] + 1, 1, v117);
        }

        v146 = v117[2];
        v145 = v117[3];
        if (v146 >= v145 >> 1)
        {
          v117 = sub_24B4CA2A0(v145 > 1, v146 + 1, 1, v117);
        }

        (*(v416 + 1))(v412, v414);
        v117[2] = v146 + 1;
        (*(v144 + 32))(v117 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v146, v411, v426);
        goto LABEL_58;
      }

      v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v220 = v219[12];
      v221 = v219[16];
      v213 = v219[20];
      v214 = v397;
      v222 = &v397[v219[24]];
      *&v427[0] = v128;
      *(&v427[0] + 1) = v127;
      LOBYTE(v427[1]) = 2;
      sub_24B50CCB4();
      sub_24B517CBC();
      sub_24B517BDC();
      v223 = *MEMORY[0x277D04400];
      v224 = sub_24B5179AC();
      (*(*(v224 - 8) + 104))(&v214[v221], v223, v224);
      v225 = swift_allocObject();
      memcpy((v225 + 16), v428, 0x110uLL);
      *(v225 + 288) = v125;
      *v222 = &unk_24B525D68;
      *(v222 + 1) = v225;
    }

    else
    {
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v211 = v210[12];
      v212 = v210[16];
      v213 = v210[20];
      v214 = v396;
      v215 = &v396[v210[24]];
      *&v427[0] = v128;
      *(&v427[0] + 1) = v127;
      LOBYTE(v427[1]) = 0;
      sub_24B50CCB4();

      sub_24B517CBC();
      sub_24B517BDC();
      v216 = *MEMORY[0x277D04400];
      v217 = sub_24B5179AC();
      (*(*(v217 - 8) + 104))(&v214[v212], v216, v217);
      v218 = swift_allocObject();
      memcpy(v218 + 2, v428, 0x110uLL);
      v218[36] = v128;
      v218[37] = v127;
      *v215 = &unk_24B525D88;
      *(v215 + 1) = v218;
    }

    v226 = *MEMORY[0x277D043E8];
    v227 = sub_24B51799C();
    (*(*(v227 - 8) + 104))(&v214[v213], v226, v227);
    v228 = v424;
    (*(v424 + 104))(v214, *MEMORY[0x277D043B0], v426);
    v116 = v421;
    v117 = *v421;
    sub_24B50CE08(v428, v427);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_24B4CA2A0(0, v117[2] + 1, 1, v117);
    }

    v230 = v117[2];
    v229 = v117[3];
    if (v230 >= v229 >> 1)
    {
      v117 = sub_24B4CA2A0(v229 > 1, v230 + 1, 1, v117);
    }

    v117[2] = v230 + 1;
    (*(v228 + 32))(v117 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v230, v214, v426);
    goto LABEL_58;
  }

  v96 = v423;
  if (EnumCaseMultiPayload == 4)
  {
    v97 = type metadata accessor for BrowseState();
    v98 = v96[v97[8]];
    if (qword_27EFFBD48 != -1)
    {
      swift_once();
    }

    v99 = sub_24B516F1C();
    __swift_project_value_buffer(v99, qword_27F017B88);
    v100 = sub_24B516EFC();
    v101 = sub_24B517C7C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67109120;
      *(v102 + 4) = v98;
      _os_log_impl(&dword_24B479000, v100, v101, "[BrowseFeature] subscriptionChanged, isSubscribed: %{BOOL}d", v102, 8u);
      MEMORY[0x24C242250](v102, -1, -1);
    }

    sub_24B50ECD8(&v96[v97[5]], v65, type metadata accessor for BrowseIdentifier);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B50EDF0(v65, type metadata accessor for BrowseIdentifier);
      v153 = sub_24B516EFC();
      v154 = sub_24B517C7C();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_24B479000, v153, v154, "[BrowseFeature] skipping update on subscription change for non editorial page", v155, 2u);
        MEMORY[0x24C242250](v155, -1, -1);
      }

      return;
    }

    v103 = *v65;
    v104 = v65[1];
    sub_24B50EDF0(&v96[v97[9]], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v106 = v105[12];
    v107 = v105[16];
    v108 = v105[20];
    v109 = v410;
    v110 = (v410 + v105[24]);
    *&v427[0] = v103;
    *(&v427[0] + 1) = v104;
    LOBYTE(v427[1]) = 2;
    sub_24B50CCB4();
    sub_24B517CBC();
    sub_24B517BDC();
    v111 = *MEMORY[0x277D04400];
    v112 = sub_24B5179AC();
    (*(*(v112 - 8) + 104))(v109 + v107, v111, v112);
    *v110 = &unk_24B525C48;
    v110[1] = 0;
    v113 = *MEMORY[0x277D043E8];
    v114 = sub_24B51799C();
    (*(*(v114 - 8) + 104))(v109 + v108, v113, v114);
    v115 = v424;
    (*(v424 + 104))(v109, *MEMORY[0x277D043B0], v426);
    v116 = v421;
    v117 = *v421;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_24B4CA2A0(0, v117[2] + 1, 1, v117);
    }

    v119 = v117[2];
    v118 = v117[3];
    if (v119 >= v118 >> 1)
    {
      v117 = sub_24B4CA2A0(v118 > 1, v119 + 1, 1, v117);
    }

    v117[2] = v119 + 1;
    (*(v115 + 32))(v117 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v119, v109, v426);
LABEL_58:
    *v116 = v117;
    return;
  }

  v150 = type metadata accessor for BrowseState();
  v151 = *(v150 + 36);
  sub_24B50ECD8(&v96[v151], v73, type metadata accessor for BrowseLoadState);
  v152 = swift_getEnumCaseMultiPayload();
  if (v152 > 1)
  {
    if (v152 != 2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v152)
  {
    sub_24B50EDF0(v73, type metadata accessor for BrowseLoadState);
LABEL_38:
    sub_24B50EDF0(&v96[v151], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    v156 = v413;
    sub_24B50ECD8(&v96[*(v150 + 20)], v413, type metadata accessor for BrowseIdentifier);
    v157 = swift_getEnumCaseMultiPayload();
    v158 = v156[1];
    *&v425 = *v156;
    *(&v425 + 1) = v158;
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v160 = v159[12];
    v161 = v159[16];
    v162 = v159[20];
    v163 = v159[24];
    if (v157)
    {
      if (v157 == 1)
      {
        v164 = v399;
        v165 = &v399[v163];
        v427[0] = v425;
        LOBYTE(v427[1]) = 2;
        v166 = sub_24B50CCB4();
        swift_bridgeObjectRetain_n();
        v423 = v166;
        sub_24B517CBC();
        sub_24B517BDC();
        v167 = *MEMORY[0x277D04400];
        v168 = sub_24B5179AC();
        v169 = *(v168 - 8);
        v417 = *(v169 + 104);
        v418 = v168;
        v415 = (v169 + 104);
        (v417)(&v164[v161], v167);
        *v165 = &unk_24B525CF8;
        *(v165 + 1) = 0;
        v170 = *MEMORY[0x277D043E8];
        v171 = sub_24B51799C();
        v172 = *(v171 - 8);
        v411 = *(v172 + 104);
        v412 = v171;
        v410 = v172 + 104;
        (v411)(&v164[v162], v170);
        v173 = v424;
        v174 = *(v424 + 104);
        LODWORD(v420) = *MEMORY[0x277D043B0];
        State = (v424 + 104);
        v419 = v174;
        v174(v164);
        v175 = *v421;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        LODWORD(v406) = v170;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v175 = sub_24B4CA2A0(0, v175[2] + 1, 1, v175);
        }

        v178 = v175[2];
        v177 = v175[3];
        if (v178 >= v177 >> 1)
        {
          v175 = sub_24B4CA2A0(v177 > 1, v178 + 1, 1, v175);
        }

        v175[2] = v178 + 1;
        v180 = *(v173 + 32);
        v179 = v173 + 32;
        v408 = ((*(v179 + 48) + 32) & ~*(v179 + 48));
        v409 = v180;
        v407 = *(v179 + 40);
        v181 = v426;
        (v180)(&v408[v175 + v407 * v178], v399, v426);
        v182 = v159[12];
        v183 = v159[16];
        v424 = v159[20];
        v184 = v400;
        v185 = &v400[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 3;
        sub_24B517CBC();
        sub_24B517BDC();
        (v417)(&v184[v183], v167, v418);
        v186 = swift_allocObject();
        memcpy((v186 + 16), v428, 0x110uLL);
        *v185 = &unk_24B525D08;
        *(v185 + 1) = v186;
        (v411)(&v184[v424], v406, v412);
        v419(v184, v420, v181);
        sub_24B50CE08(v428, v427);
        v188 = v175[2];
        v187 = v175[3];
        if (v188 >= v187 >> 1)
        {
          v175 = sub_24B4CA2A0(v187 > 1, v188 + 1, 1, v175);
        }

        v175[2] = v188 + 1;
        v189 = v426;
        (v409)(&v408[v175 + v188 * v407], v400, v426);
        v190 = v159[12];
        v191 = v159[16];
        v192 = v159[20];
        v193 = v391;
        v194 = &v391[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 5;
        sub_24B517CBC();
        LODWORD(v406) = *MEMORY[0x277D043F0];
        (v417)(&v193[v191]);
        v195 = *MEMORY[0x277D043E0];
        (v411)(&v193[v192], v195, v412);
        v196 = swift_allocObject();
        memcpy((v196 + 16), v428, 0x110uLL);
        *v194 = &unk_24B525D18;
        *(v194 + 1) = v196;
        sub_24B50CE08(v428, v427);
        sub_24B517BDC();
        v419(v193, v420, v189);
        v198 = v175[2];
        v197 = v175[3];
        if (v198 >= v197 >> 1)
        {
          v175 = sub_24B4CA2A0(v197 > 1, v198 + 1, 1, v175);
        }

        v175[2] = v198 + 1;
        v199 = v426;
        v424 = v179;
        (v409)(&v408[v175 + v198 * v407], v193, v426);
        v200 = v159[12];
        v201 = v159[16];
        v202 = v159[20];
        v203 = v403;
        v204 = &v403[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 10;
        sub_24B517CBC();
        (v417)(&v203[v201], v406, v418);
        (v411)(&v203[v202], v195, v412);
        v205 = swift_allocObject();
        memcpy((v205 + 16), v428, 0x110uLL);
        *v204 = &unk_24B525D28;
        *(v204 + 1) = v205;
        sub_24B50CE08(v428, v427);
        sub_24B517BDC();
        v419(v203, v420, v199);
        v207 = v175[2];
        v206 = v175[3];
        if (v207 >= v206 >> 1)
        {
          v175 = sub_24B4CA2A0(v206 > 1, v207 + 1, 1, v175);
        }

        v208 = v421;
        v209 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
        v175[2] = v207 + 1;
        (v409)(&v408[v175 + v207 * v407], v403, v426);
        *v208 = v175;
        (*(v416 + 1))(v413 + v209, v414);
      }

      else
      {
        v271 = v388;
        v272 = &v388[v163];
        v273 = *(&v425 + 1);
        swift_bridgeObjectRetain_n();
        *&v427[0] = v425;
        *(&v427[0] + 1) = v273;
        LOBYTE(v427[1]) = 2;
        v274 = sub_24B50CCB4();
        swift_bridgeObjectRetain_n();
        v423 = v274;
        sub_24B517CBC();
        sub_24B517BDC();
        v275 = *MEMORY[0x277D04400];
        v276 = sub_24B5179AC();
        v277 = *(v276 - 8);
        v278 = *(v277 + 104);
        LODWORD(v409) = v275;
        v418 = v276;
        v414 = (v277 + 104);
        v415 = v278;
        (v278)(&v271[v161], v275);
        *v272 = &unk_24B525C50;
        *(v272 + 1) = 0;
        v279 = *MEMORY[0x277D043E8];
        v280 = sub_24B51799C();
        v281 = *(v280 - 8);
        v282 = *(v281 + 104);
        LODWORD(v410) = v279;
        State = v280;
        v419 = (v281 + 104);
        v420 = v282;
        v282(&v271[v162], v279);
        v283 = *(v424 + 104);
        LODWORD(v417) = *MEMORY[0x277D043B0];
        v416 = v283;
        v283(v271);
        v284 = *v421;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = sub_24B4CA2A0(0, v284[2] + 1, 1, v284);
        }

        v285 = v390;
        v287 = v284[2];
        v286 = v284[3];
        if (v287 >= v286 >> 1)
        {
          v284 = sub_24B4CA2A0(v286 > 1, v287 + 1, 1, v284);
        }

        v284[2] = v287 + 1;
        v288 = *(v424 + 32);
        v412 = ((*(v424 + 80) + 32) & ~*(v424 + 80));
        v413 = v288;
        v411 = *(v424 + 72);
        v289 = v271;
        v290 = v426;
        v424 += 32;
        (v288)(&v412[v284 + v411 * v287], v289, v426);
        v291 = v159[12];
        v292 = v159[16];
        v293 = v159[20];
        v294 = &v285[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 3;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v285[v292], v409, v418);
        v295 = swift_allocObject();
        memcpy((v295 + 16), v428, 0x110uLL);
        *v294 = &unk_24B525C60;
        *(v294 + 1) = v295;
        (v420)(&v285[v293], v410, State);
        (v416)(v285, v417, v290);
        sub_24B50CE08(v428, v427);
        v297 = v284[2];
        v296 = v284[3];
        if (v297 >= v296 >> 1)
        {
          v284 = sub_24B4CA2A0(v296 > 1, v297 + 1, 1, v284);
        }

        v284[2] = v297 + 1;
        v298 = v426;
        (v413)(&v412[v284 + v297 * v411], v285, v426);
        v299 = v159[12];
        v300 = v159[16];
        v301 = v159[20];
        v302 = v402;
        v303 = &v402[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 4;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v302[v300], v409, v418);
        v304 = swift_allocObject();
        memcpy((v304 + 16), v428, 0x110uLL);
        *v303 = &unk_24B525C70;
        *(v303 + 1) = v304;
        (v420)(&v302[v301], v410, State);
        (v416)(v302, v417, v298);
        sub_24B50CE08(v428, v427);
        v306 = v284[2];
        v305 = v284[3];
        if (v306 >= v305 >> 1)
        {
          v284 = sub_24B4CA2A0(v305 > 1, v306 + 1, 1, v284);
        }

        v284[2] = v306 + 1;
        v307 = v426;
        (v413)(&v412[v284 + v306 * v411], v402, v426);
        v308 = v159[12];
        v309 = v159[16];
        v310 = v159[20];
        v311 = v404;
        v312 = &v404[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 5;
        sub_24B517CBC();
        LODWORD(v403) = *MEMORY[0x277D043F0];
        (v415)(&v311[v309]);
        LODWORD(v402) = *MEMORY[0x277D043E0];
        (v420)(&v311[v310]);
        v313 = swift_allocObject();
        memcpy((v313 + 16), v428, 0x110uLL);
        *v312 = &unk_24B525C80;
        *(v312 + 1) = v313;
        sub_24B50CE08(v428, v427);
        sub_24B517BDC();
        (v416)(v311, v417, v307);
        v315 = v284[2];
        v314 = v284[3];
        if (v315 >= v314 >> 1)
        {
          v284 = sub_24B4CA2A0(v314 > 1, v315 + 1, 1, v284);
        }

        v284[2] = v315 + 1;
        v316 = v426;
        (v413)(&v412[v284 + v315 * v411], v404, v426);
        v317 = v159[12];
        v318 = v159[16];
        v319 = v159[20];
        v320 = v405;
        v321 = &v405[v159[24]];
        v427[0] = xmmword_24B525C30;
        LOBYTE(v427[1]) = 12;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v320[v318], v409, v418);
        v322 = swift_allocObject();
        memcpy((v322 + 16), v428, 0x110uLL);
        *v321 = &unk_24B525C90;
        *(v321 + 1) = v322;
        (v420)(&v320[v319], v410, State);
        (v416)(v320, v417, v316);
        sub_24B50CE08(v428, v427);
        v324 = v284[2];
        v323 = v284[3];
        if (v324 >= v323 >> 1)
        {
          v284 = sub_24B4CA2A0(v323 > 1, v324 + 1, 1, v284);
        }

        v325 = v392;
        v284[2] = v324 + 1;
        v326 = v426;
        (v413)(&v412[v284 + v324 * v411], v405, v426);
        v327 = v159[12];
        v328 = v159[16];
        v329 = v159[20];
        v330 = &v325[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 6;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v325[v328], v409, v418);
        v331 = swift_allocObject();
        memcpy((v331 + 16), v428, 0x110uLL);
        *v330 = &unk_24B525CA0;
        *(v330 + 1) = v331;
        (v420)(&v325[v329], v410, State);
        (v416)(v325, v417, v326);
        sub_24B50CE08(v428, v427);
        v333 = v284[2];
        v332 = v284[3];
        if (v333 >= v332 >> 1)
        {
          v284 = sub_24B4CA2A0(v332 > 1, v333 + 1, 1, v284);
        }

        v284[2] = v333 + 1;
        v334 = v426;
        (v413)(&v412[v284 + v333 * v411], v325, v426);
        v335 = v159[12];
        v336 = v159[16];
        v337 = v159[20];
        v338 = v406;
        v339 = &v406[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 7;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v338[v336], v409, v418);
        v340 = swift_allocObject();
        memcpy((v340 + 16), v428, 0x110uLL);
        *v339 = &unk_24B525CB0;
        *(v339 + 1) = v340;
        (v420)(&v338[v337], v410, State);
        (v416)(v338, v417, v334);
        sub_24B50CE08(v428, v427);
        v342 = v284[2];
        v341 = v284[3];
        if (v342 >= v341 >> 1)
        {
          v284 = sub_24B4CA2A0(v341 > 1, v342 + 1, 1, v284);
        }

        v343 = v393;
        v284[2] = v342 + 1;
        v344 = v426;
        (v413)(&v412[v284 + v342 * v411], v406, v426);
        v345 = v159[12];
        v346 = v159[16];
        v347 = v159[20];
        v348 = &v343[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 8;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v343[v346], v409, v418);
        v349 = swift_allocObject();
        memcpy((v349 + 16), v428, 0x110uLL);
        *v348 = &unk_24B525CC0;
        *(v348 + 1) = v349;
        (v420)(&v343[v347], v410, State);
        (v416)(v343, v417, v344);
        sub_24B50CE08(v428, v427);
        v351 = v284[2];
        v350 = v284[3];
        if (v351 >= v350 >> 1)
        {
          v284 = sub_24B4CA2A0(v350 > 1, v351 + 1, 1, v284);
        }

        v284[2] = v351 + 1;
        v352 = v426;
        (v413)(&v412[v284 + v351 * v411], v343, v426);
        v353 = v159[12];
        v354 = v159[16];
        v355 = v159[20];
        v356 = v407;
        v357 = &v407[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 10;
        sub_24B517CBC();
        (v415)(&v356[v354], v403, v418);
        (v420)(&v356[v355], v402, State);
        v358 = swift_allocObject();
        memcpy((v358 + 16), v428, 0x110uLL);
        *v357 = &unk_24B525CD0;
        *(v357 + 1) = v358;
        sub_24B50CE08(v428, v427);
        sub_24B517BDC();
        (v416)(v356, v417, v352);
        v360 = v284[2];
        v359 = v284[3];
        if (v360 >= v359 >> 1)
        {
          v284 = sub_24B4CA2A0(v359 > 1, v360 + 1, 1, v284);
        }

        v361 = v394;
        v284[2] = v360 + 1;
        v362 = v426;
        (v413)(&v412[v284 + v360 * v411], v407, v426);
        v363 = v159[12];
        v364 = v159[16];
        v365 = v159[20];
        v366 = &v361[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 9;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v361[v364], v409, v418);
        v367 = swift_allocObject();
        memcpy((v367 + 16), v428, 0x110uLL);
        *v366 = &unk_24B525CE0;
        *(v366 + 1) = v367;
        (v420)(&v361[v365], v410, State);
        (v416)(v361, v417, v362);
        sub_24B50CE08(v428, v427);
        v369 = v284[2];
        v368 = v284[3];
        if (v369 >= v368 >> 1)
        {
          v284 = sub_24B4CA2A0(v368 > 1, v369 + 1, 1, v284);
        }

        v284[2] = v369 + 1;
        v370 = v426;
        (v413)(&v412[v284 + v369 * v411], v361, v426);
        v371 = v159[12];
        v372 = v159[16];
        v373 = v159[20];
        v374 = v408;
        v375 = &v408[v159[24]];
        v427[0] = v425;
        LOBYTE(v427[1]) = 11;
        sub_24B517CBC();
        sub_24B517BDC();
        (v415)(&v374[v372], v409, v418);
        v376 = swift_allocObject();
        memcpy((v376 + 16), v428, 0x110uLL);
        *v375 = &unk_24B525CF0;
        *(v375 + 1) = v376;
        (v420)(&v374[v373], v410, State);
        (v416)(v374, v417, v370);
        sub_24B50CE08(v428, v427);
        v378 = v284[2];
        v377 = v284[3];
        if (v378 >= v377 >> 1)
        {
          v284 = sub_24B4CA2A0(v377 > 1, v378 + 1, 1, v284);
        }

        v379 = v421;
        v284[2] = v378 + 1;
        (v413)(&v412[v284 + v378 * v411], v408, v426);
        *v379 = v284;
      }
    }

    else
    {
      v235 = v387;
      v236 = &v387[v163];
      v427[0] = v425;
      LOBYTE(v427[1]) = 2;
      v237 = sub_24B50CCB4();
      swift_bridgeObjectRetain_n();
      v423 = v237;
      sub_24B517CBC();
      sub_24B517BDC();
      v238 = *MEMORY[0x277D04400];
      v239 = sub_24B5179AC();
      v240 = *(v239 - 8);
      v417 = *(v240 + 104);
      v418 = v239;
      v416 = (v240 + 104);
      (v417)(&v235[v161], v238);
      *v236 = &unk_24B525D30;
      *(v236 + 1) = 0;
      v241 = *MEMORY[0x277D043E8];
      v242 = sub_24B51799C();
      v243 = *(v242 - 1);
      v414 = *(v243 + 104);
      v415 = v242;
      v413 = (v243 + 104);
      (v414)(&v235[v162], v241);
      v244 = v424;
      v245 = *(v424 + 104);
      LODWORD(v420) = *MEMORY[0x277D043B0];
      State = (v424 + 104);
      v419 = v245;
      v245(v235);
      v246 = *v421;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v246 = sub_24B4CA2A0(0, v246[2] + 1, 1, v246);
      }

      v248 = v246[2];
      v247 = v246[3];
      if (v248 >= v247 >> 1)
      {
        v246 = sub_24B4CA2A0(v247 > 1, v248 + 1, 1, v246);
      }

      v246[2] = v248 + 1;
      v250 = *(v244 + 32);
      v249 = v244 + 32;
      v411 = (*(v249 + 48) + 32) & ~*(v249 + 48);
      v412 = v250;
      v410 = *(v249 + 40);
      v251 = v426;
      (v250)(v246 + v411 + v410 * v248, v235, v426);
      v252 = v159[12];
      v253 = v159[16];
      v254 = v159[20];
      v255 = v389;
      v256 = &v389[v159[24]];
      v427[0] = v425;
      LOBYTE(v427[1]) = 5;
      sub_24B517CBC();
      LODWORD(v409) = *MEMORY[0x277D043F0];
      (v417)(&v255[v253]);
      v257 = *MEMORY[0x277D043E0];
      (v414)(&v255[v254], v257, v415);
      v258 = swift_allocObject();
      memcpy((v258 + 16), v428, 0x110uLL);
      *v256 = &unk_24B525D40;
      *(v256 + 1) = v258;
      sub_24B50CE08(v428, v427);
      sub_24B517BDC();
      v419(v255, v420, v251);
      v260 = v246[2];
      v259 = v246[3];
      if (v260 >= v259 >> 1)
      {
        v246 = sub_24B4CA2A0(v259 > 1, v260 + 1, 1, v246);
      }

      v246[2] = v260 + 1;
      v261 = v426;
      v424 = v249;
      (v412)(v246 + v411 + v260 * v410, v255, v426);
      v262 = v159[12];
      v263 = v159[16];
      v264 = v159[20];
      v265 = v401;
      v266 = &v401[v159[24]];
      v427[0] = v425;
      LOBYTE(v427[1]) = 10;
      sub_24B517CBC();
      (v417)(&v265[v263], v409, v418);
      (v414)(&v265[v264], v257, v415);
      v267 = swift_allocObject();
      memcpy((v267 + 16), v428, 0x110uLL);
      *v266 = &unk_24B525D50;
      *(v266 + 1) = v267;
      sub_24B50CE08(v428, v427);
      sub_24B517BDC();
      v419(v265, v420, v261);
      v269 = v246[2];
      v268 = v246[3];
      if (v269 >= v268 >> 1)
      {
        v246 = sub_24B4CA2A0(v268 > 1, v269 + 1, 1, v246);
      }

      v270 = v421;
      v246[2] = v269 + 1;
      (v412)(v246 + v411 + v269 * v410, v401, v426);
      *v270 = v246;
    }

    return;
  }

  v231 = *&v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0) + 64)];

  v232 = v395;
  sub_24B4DDB80(v419, v395);
  v233 = v417;
  v234 = v418;
  if ((*(v417 + 48))(v232, 1, v418) == 1)
  {
    sub_24B50CD08(v232);
    sub_24B50EDF0(v73, type metadata accessor for BrowseContent);
    return;
  }

  (*(v233 + 32))(v409, v232, v234);
  v380 = v386;
  sub_24B516BDC();
  sub_24B516BBC();
  v382 = v381;
  *(&v425 + 1) = *(v233 + 8);
  (*(&v425 + 1))(v380, v234);
  v383 = v419;
  sub_24B50CD08(v419);
  (*(v233 + 56))(v383, 1, 1, v234);
  sub_24B517C2C();
  v385 = v384;
  (*(&v425 + 1))(v409, v234);
  sub_24B50EDF0(v73, type metadata accessor for BrowseContent);
  if (v385 <= v382)
  {
    goto LABEL_38;
  }
}

uint64_t sub_24B5022AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for BrowseAction();
  v4[40] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v7 = *(*(type metadata accessor for EditorialCollectionDetail() - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  sub_24B517BCC();
  v4[43] = sub_24B517BBC();
  v9 = sub_24B517B9C();
  v4[44] = v9;
  v4[45] = v8;

  return MEMORY[0x2822009F8](sub_24B5023A4, v9, v8);
}

uint64_t sub_24B5023A4()
{
  v1 = v0[37];
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  v0[46] = v4;
  memcpy((v4 + 16), v1, 0x110uLL);
  sub_24B50CE08(v1, (v0 + 2));
  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_24B5024F8;
  v7 = v0[42];
  v8 = v0[38];
  v9 = v0[39];

  return v11(v7, v8, v9, sub_24B50EBF8, v4);
}

uint64_t sub_24B5024F8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_24B502930;
  }

  else
  {
    v7 = v2[46];

    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_24B502614;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B502614()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  sub_24B50ECD8(v2, v1, type metadata accessor for EditorialCollectionDetail);
  type metadata accessor for BrowseContent();
  swift_storeEnumTagMultiPayload();
  *(v1 + v4) = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v5 = *(MEMORY[0x277D043C8] + 4);
  v6 = swift_task_alloc();
  v0[49] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v6 = v0;
  v6[1] = sub_24B502744;
  v8 = v0[41];
  v9 = v0[36];

  return MEMORY[0x282159B08](v8, v7);
}

uint64_t sub_24B502744()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 328);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 360);
  v5 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_24B50289C, v5, v4);
}

uint64_t sub_24B50289C()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];

  sub_24B50EDF0(v2, type metadata accessor for EditorialCollectionDetail);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B502930()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];

  v5 = v0[1];
  v6 = v0[48];

  return v5();
}

uint64_t sub_24B5029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 152) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  v11 = type metadata accessor for BrowseAction();
  *(v6 + 48) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = sub_24B517BCC();
  *(v6 + 72) = sub_24B517BBC();
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  *(v6 + 80) = *(a2 + 256);
  v18 = (v13 + *v13);
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v6 + 96) = v16;
  *v16 = v6;
  v16[1] = sub_24B502B2C;

  return v18(a3, a4, a5);
}

uint64_t sub_24B502B2C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *v2;
  v5[13] = v1;

  v8 = v5[9];
  v9 = v5[8];
  if (v3)
  {
    v10 = sub_24B517B9C();
    v12 = v11;
    v13 = sub_24B5031C8;
    v14 = v10;
    v15 = v12;
  }

  else
  {
    v5[14] = a1;
    v16 = sub_24B517B9C();
    v15 = v17;
    v5[15] = v16;
    v5[16] = v17;
    v13 = sub_24B502CBC;
    v14 = v16;
  }

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24B502CBC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 152);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  v9 = *(type metadata accessor for BrowseGalleryDescriptor() + 32);
  v10 = sub_24B516B8C();
  (*(*(v10 - 8) + 16))(v2 + v9, v5, v10);
  *v2 = v7;
  *(v2 + 8) = v6;
  *(v2 + 16) = v4;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  type metadata accessor for BrowseContent();
  swift_storeEnumTagMultiPayload();
  *(v2 + v8) = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v11 = *(MEMORY[0x277D043C8] + 4);

  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v12 = v0;
  v12[1] = sub_24B502E54;
  v14 = *(v0 + 56);
  v15 = *(v0 + 16);

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_24B502E54()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 56);
  v5 = *v0;

  sub_24B50EDF0(v4, type metadata accessor for BrowseAction);
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  *(v1 + 144) = v7;
  *v7 = v5;
  v7[1] = sub_24B503038;
  v8 = *(v1 + 88);

  return v10();
}

uint64_t sub_24B503038()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B503158, v4, v3);
}

uint64_t sub_24B503158()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B5031C8()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_24B503238(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 448) = a3;
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;
  v4 = type metadata accessor for BrowseAction();
  *(v3 + 336) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  sub_24B517BCC();
  *(v3 + 352) = sub_24B517BBC();
  v7 = sub_24B517B9C();
  *(v3 + 360) = v7;
  *(v3 + 368) = v6;

  return MEMORY[0x2822009F8](sub_24B503304, v7, v6);
}

uint64_t sub_24B503304()
{
  v1 = v0[41];
  v3 = v1[4];
  v2 = v1[5];
  v0[47] = v1[32];
  v0[48] = v1[33];
  v4 = swift_allocObject();
  v0[49] = v4;
  memcpy((v4 + 16), v1, 0x110uLL);
  sub_24B50CE08(v1, (v0 + 2));
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_24B50345C;

  return v8(sub_24B50EE58, v4);
}

uint64_t sub_24B50345C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v7 = v4[45];
    v8 = v4[46];
    v9 = sub_24B503A60;
  }

  else
  {
    v10 = v4[49];

    v4[52] = a1;
    v7 = v4[45];
    v8 = v4[46];
    v9 = sub_24B50358C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B50358C()
{
  v15 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = Array<A>.includingMarketingUpsellSectionDescriptors(isSubscribed:)(*(v0 + 448), *(v0 + 416));

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  *v1 = v4;
  type metadata accessor for BrowseContent();
  swift_storeEnumTagMultiPayload();
  memcpy(__dst, v3, sizeof(__dst));

  v7 = sub_24B503E90(v6);

  *(v1 + v5) = v7;
  swift_storeEnumTagMultiPayload();
  v8 = *(MEMORY[0x277D043C8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v9 = v0;
  v9[1] = sub_24B5036F0;
  v11 = *(v0 + 344);
  v12 = *(v0 + 320);

  return MEMORY[0x282159B08](v11, v10);
}

uint64_t sub_24B5036F0()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 376);
  v4 = *(*v0 + 344);
  v5 = *v0;

  sub_24B50EDF0(v4, type metadata accessor for BrowseAction);
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  *(v1 + 432) = v7;
  *v7 = v5;
  v7[1] = sub_24B5038D4;
  v8 = *(v1 + 384);

  return v10();
}

uint64_t sub_24B5038D4()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v6 = *v0;

  v3 = *(v1 + 368);
  v4 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_24B5039F4, v4, v3);
}

uint64_t sub_24B5039F4()
{
  v1 = v0[44];

  v2 = v0[43];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B503A60()
{
  v1 = v0[51];
  v2 = v0[49];
  v4 = v0[42];
  v3 = v0[43];

  swift_getErrorValue();
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[38];
  *v3 = sub_24B517F2C();
  v3[1] = v8;
  swift_storeEnumTagMultiPayload();
  v9 = *(MEMORY[0x277D043C8] + 4);
  v10 = swift_task_alloc();
  v0[55] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v10 = v0;
  v10[1] = sub_24B503B5C;
  v12 = v0[43];
  v13 = v0[40];

  return MEMORY[0x282159B08](v12, v11);
}

uint64_t sub_24B503B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 344);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 368);
  v5 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_24B503CB4, v5, v4);
}

uint64_t sub_24B503CB4()
{
  v1 = v0[51];
  v2 = v0[44];

  MEMORY[0x24C242050](v1);
  v3 = v0[43];

  v4 = v0[1];

  return v4();
}

BOOL sub_24B503D2C(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseInsetBehaviorProviderType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B50ECD8(a1, v9, type metadata accessor for BrowseInsetBehaviorProviderType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v9 == 25;
  }

  sub_24B50ED88(v9, v5, type metadata accessor for BrowseDetailContent);
  v10 = swift_getEnumCaseMultiPayload() == 0;
  sub_24B50EDF0(v5, type metadata accessor for BrowseDetailContent);
  return v10;
}

uint64_t sub_24B503E90(uint64_t a1)
{
  v93 = sub_24B516C6C();
  v101 = *(v93 - 8);
  v2 = *(v101 + 8);
  v3 = MEMORY[0x28223BE20](v93);
  v92 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = &v74 - v5;
  v87 = type metadata accessor for BrowseItem();
  v6 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseLazyItem();
  v89 = *(v8 - 8);
  v9 = *(v89 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE320, &qword_24B526090);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v88 = (&v74 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE328, &qword_24B526098);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v74 - v24);
  v80 = type metadata accessor for BrowseSectionDescriptor();
  v75 = *(v80 - 8);
  v26 = *(v75 + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BrowseEditorialDescriptor();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v77 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE330, &qword_24B5260A0);
  v32 = *(v84 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = (&v74 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE338, &qword_24B5260A8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  result = MEMORY[0x28223BE20](v37);
  v83 = (&v74 - v39);
  v40 = 0;
  v82 = (v32 + 56);
  v81 = (v32 + 48);
  v42 = v41;
  v96 = (v16 + 48);
  v97 = (v16 + 56);
  v76 = a1;
  v43 = *(a1 + 16);
  v90 = (v101 + 8);
  v99 = v25;
  v101 = v28;
  v102 = MEMORY[0x277D84FA0];
  v78 = v41;
  v79 = v43;
  v95 = v23;
  while (1)
  {
    if (v40 == v43)
    {
      v46 = 1;
      v85 = v43;
      v47 = v84;
      goto LABEL_10;
    }

    v47 = v84;
    if (v40 >= v43)
    {
      goto LABEL_35;
    }

    v48 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v49 = v76 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v40;
    v50 = *(v84 + 48);
    v51 = v74;
    *v74 = v40;
    sub_24B50ECD8(v49, v51 + v50, type metadata accessor for BrowseSectionDescriptor);
    v52 = v51;
    v42 = v78;
    sub_24B49AA90(v52, v78, &qword_27EFFE330, &qword_24B5260A0);
    v46 = 0;
    v85 = v48;
    v28 = v101;
LABEL_10:
    (*v82)(v42, v46, 1, v47);
    v53 = v83;
    sub_24B49AA90(v42, v83, &qword_27EFFE338, &qword_24B5260A8);
    if ((*v81)(v53, 1, v47) == 1)
    {
      return v102;
    }

    v94 = *v53;
    sub_24B50ED88(v53 + *(v47 + 48), v28, type metadata accessor for BrowseSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v54 = v77;
      sub_24B50ED88(v28, v77, type metadata accessor for BrowseEditorialDescriptor);
      if (v54[8] == 1)
      {
        v55 = *v54;
        v98 = *(*v54 + 16);

        v56 = 0;
        while (1)
        {
          if (v56 == v98)
          {
            v59 = 1;
            v56 = v98;
          }

          else
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            if (v56 >= *(v55 + 16))
            {
              goto LABEL_34;
            }

            v60 = v88;
            v61 = v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v56;
            v62 = *(v15 + 48);
            *v88 = v56;
            sub_24B50ECD8(v61, v60 + v62, type metadata accessor for BrowseLazyItem);
            sub_24B49AA90(v60, v23, &qword_27EFFE320, &qword_24B526090);
            v59 = 0;
            ++v56;
            v28 = v101;
          }

          (*v97)(v23, v59, 1, v15);
          sub_24B49AA90(v23, v25, &qword_27EFFE328, &qword_24B526098);
          if ((*v96)(v25, 1, v15) == 1)
          {

            result = sub_24B50EDF0(v77, type metadata accessor for BrowseEditorialDescriptor);
            v42 = v78;
            goto LABEL_4;
          }

          v100 = *v25;
          sub_24B50ED88(v25 + *(v15 + 48), v14, type metadata accessor for BrowseLazyItem);
          sub_24B50ECD8(v14, v12, type metadata accessor for BrowseLazyItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v63 = *(v12 + 2);
            v64 = v15;
            v65 = v14;
            v66 = v8;
            v67 = v55;
            v68 = *(v12 + 4);
            v69 = *(v12 + 6);
            v70 = *(v12 + 8);
            v71 = v12[72];

            v25 = v99;

            v55 = v67;
            v8 = v66;
            v14 = v65;
            v15 = v64;
            v28 = v101;

            if (v71 <= 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v72 = v86;
            sub_24B50ED88(v12, v86, type metadata accessor for BrowseItem);
            v71 = *(v72 + *(v87 + 72));
            sub_24B50EDF0(v72, type metadata accessor for BrowseItem);
            if (v71 <= 3)
            {
              goto LABEL_28;
            }
          }

          if (v71 == 7)
          {

LABEL_15:
            v57 = v92;
            MEMORY[0x24C240A40](v100, v94);
            v58 = v91;
            sub_24B50DB98(v91, v57);
            v28 = v101;
            (*v90)(v58, v93);
            goto LABEL_16;
          }

LABEL_28:
          v73 = sub_24B517EEC();

          v25 = v99;
          if (v73)
          {
            goto LABEL_15;
          }

LABEL_16:
          result = sub_24B50EDF0(v14, type metadata accessor for BrowseLazyItem);
          v23 = v95;
        }
      }

      v44 = type metadata accessor for BrowseEditorialDescriptor;
      v45 = v54;
    }

    else
    {
      v44 = type metadata accessor for BrowseSectionDescriptor;
      v45 = v28;
    }

    result = sub_24B50EDF0(v45, v44);
LABEL_4:
    v43 = v79;
    v40 = v85;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24B504974(uint64_t a1)
{
  v2 = type metadata accessor for BrowseGalleryDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseEditorialDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseDetailDescriptor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BrowseSectionDescriptor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 2;
  }

  v20 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v21 = *(v16 + 72);
  while (1)
  {
    sub_24B50ECD8(v20, v18, type metadata accessor for BrowseSectionDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          sub_24B50ED88(v18, v13, type metadata accessor for BrowseDetailDescriptor);
          v25 = v13[*(v10 + 24)];
          v27 = type metadata accessor for BrowseDetailDescriptor;
          v28 = v13;
          goto LABEL_16;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_24B50ED88(v18, v5, type metadata accessor for BrowseGalleryDescriptor);
          v26 = v5[32];
          sub_24B50EDF0(v5, type metadata accessor for BrowseGalleryDescriptor);
          return v26;
        }

        if (EnumCaseMultiPayload == 4)
        {
          v24 = *(v18 + 1);
          v25 = v18[16];

          return v25;
        }
      }

      sub_24B50EDF0(v18, type metadata accessor for BrowseSectionDescriptor);
      return 0;
    }

    sub_24B50ED88(v18, v9, type metadata accessor for BrowseEditorialDescriptor);
    if (*(*v9 + 16))
    {
      break;
    }

    sub_24B50EDF0(v9, type metadata accessor for BrowseEditorialDescriptor);
    v20 += v21;
    if (!--v19)
    {
      return 2;
    }
  }

  v25 = v9[32];
  v27 = type metadata accessor for BrowseEditorialDescriptor;
  v28 = v9;
LABEL_16:
  sub_24B50EDF0(v28, v27);
  return v25;
}

uint64_t sub_24B504CAC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for BrowseAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_24B517BCC();
  v1[5] = sub_24B517BBC();
  v5 = sub_24B517B9C();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_24B504D74, v5, v4);
}

uint64_t sub_24B504D74()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v4 = v0;
  v4[1] = sub_24B504E34;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_24B504E34()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B50EE50, v5, v4);
}

uint64_t sub_24B504F8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B5050A4;

  return v9(v2 + 56);
}

uint64_t sub_24B5050A4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE54;
  }

  else
  {
    v9 = sub_24B505204;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B505204()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B5053DC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B5053DC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B5054F0, v6, v7);
  }

  return result;
}

uint64_t sub_24B5054F0()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B5053DC;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B505648(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  v5 = *(a2 + 200);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B505760;

  return v9(v2 + 56);
}

uint64_t sub_24B505760()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE54;
  }

  else
  {
    v9 = sub_24B5058C0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B5058C0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B505A98;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B505A98()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B505BAC, v6, v7);
  }

  return result;
}

uint64_t sub_24B505BAC()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B505A98;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B505D04(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 72);
  v10 = (*(a2 + 64) + **(a2 + 64));
  v7 = *(*(a2 + 64) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B505E48;

  return v10(v2 + 7);
}

uint64_t sub_24B505E48()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B505FA8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B505FA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B506180;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B506180()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B506294, v6, v7);
  }

  return result;
}

uint64_t sub_24B506294()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B5063B0;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B5063B0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B506508, v5, v4);
}

uint64_t sub_24B506508()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B506180;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B5065E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B5066FC;

  return v9(v2 + 56);
}

uint64_t sub_24B5066FC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE54;
  }

  else
  {
    v9 = sub_24B50685C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50685C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B506A34;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B506A34()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B506B48, v6, v7);
  }

  return result;
}

uint64_t sub_24B506B48()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B506A34;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B506CA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  v5 = *(a2 + 200);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B506DB8;

  return v9(v2 + 56);
}

uint64_t sub_24B506DB8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE54;
  }

  else
  {
    v9 = sub_24B506F18;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B506F18()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B5070F0;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B5070F0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B507204, v6, v7);
  }

  return result;
}

uint64_t sub_24B507204()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B5070F0;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B50735C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 72);
  v10 = (*(a2 + 64) + **(a2 + 64));
  v7 = *(*(a2 + 64) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B5074A0;

  return v10(v2 + 7);
}

uint64_t sub_24B5074A0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B507C3C;
  }

  else
  {
    v9 = sub_24B507600;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B507600()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B5077D8;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B5077D8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B5078EC, v6, v7);
  }

  return result;
}

uint64_t sub_24B5078EC()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B507A08;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B507A08()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B507B60, v5, v4);
}

uint64_t sub_24B507B60()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B5077D8;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B507C3C()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_24B507CAC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 88);
  v10 = (*(a2 + 80) + **(a2 + 80));
  v7 = *(*(a2 + 80) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B507DF0;

  return v10(v2 + 7);
}

uint64_t sub_24B507DF0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B507F50;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B507F50()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B508128;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B508128()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50823C, v6, v7);
  }

  return result;
}

uint64_t sub_24B50823C()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    sub_24B516BDC();
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B508368;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B508368()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B5084C0, v5, v4);
}

uint64_t sub_24B5084C0()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B508128;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B50859C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B5086B4;

  return v9(v2 + 56);
}

uint64_t sub_24B5086B4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B508C58;
  }

  else
  {
    v9 = sub_24B508814;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B508814()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B5089EC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B5089EC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B508B00, v6, v7);
  }

  return result;
}

uint64_t sub_24B508B00()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B5089EC;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B508C58()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_24B508CBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = sub_24B517BCC();
  *(v2 + 104) = sub_24B517BBC();
  *(v2 + 112) = *(a2 + 48);
  v4 = *(a2 + 120);
  v8 = (*(a2 + 112) + **(a2 + 112));
  v5 = *(*(a2 + 112) + 4);
  v6 = swift_task_alloc();
  *(v2 + 128) = v6;
  *v6 = v2;
  v6[1] = sub_24B508DD4;

  return v8(v2 + 56);
}

uint64_t sub_24B508DD4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v11 = *v1;
  v3[17] = v2;

  v8 = sub_24B517B9C();
  v3[18] = v8;
  v3[19] = v7;
  if (v2)
  {
    v9 = sub_24B509574;
  }

  else
  {
    v9 = sub_24B508F34;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B508F34()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[12];
  v7 = sub_24B517BBC();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_24B50910C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B50910C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x2822009F8](sub_24B509220, v6, v7);
  }

  return result;
}

uint64_t sub_24B509220()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 104);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v7 = (*(v0 + 112) + **(v0 + 112));
    v4 = *(*(v0 + 112) + 4);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_24B50935C;
    v6 = *(v0 + 120);

    return v7();
  }
}

uint64_t sub_24B50935C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_24B5095D8;
  }

  else
  {
    v7 = sub_24B509498;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B509498()
{
  v1 = v0[12];
  v2 = sub_24B517BBC();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_24B50910C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B509574()
{
  v1 = v0[13];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B5095D8()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[23];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B509644(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 136);
  v10 = (*(a2 + 128) + **(a2 + 128));
  v7 = *(*(a2 + 128) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B509788;

  return v10(v2 + 7);
}

uint64_t sub_24B509788()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B5098E8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B5098E8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B509AC0;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B509AC0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B509BD4, v6, v7);
  }

  return result;
}

uint64_t sub_24B509BD4()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B509CF0;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B509CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B509E48, v5, v4);
}

uint64_t sub_24B509E48()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B509AC0;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B509F24(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 152);
  v10 = (*(a2 + 144) + **(a2 + 144));
  v7 = *(*(a2 + 144) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B50A068;

  return v10(v2 + 7);
}

uint64_t sub_24B50A068()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B50A1C8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50A1C8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B50A3A0;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B50A3A0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50A4B4, v6, v7);
  }

  return result;
}

uint64_t sub_24B50A4B4()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B50A5D0;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B50A5D0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50A728, v5, v4);
}

uint64_t sub_24B50A728()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B50A3A0;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B50A804(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 168);
  v10 = (*(a2 + 160) + **(a2 + 160));
  v7 = *(*(a2 + 160) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B50A948;

  return v10(v2 + 7);
}

uint64_t sub_24B50A948()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B50AAA8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50AAA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B50AC80;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B50AC80()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50AD94, v6, v7);
  }

  return result;
}

uint64_t sub_24B50AD94()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B50AEB0;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B50AEB0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50B008, v5, v4);
}

uint64_t sub_24B50B008()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B50AC80;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B50B0E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  v5 = *(a2 + 200);
  *(v2 + 120) = *(a2 + 240);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_24B50B1FC;

  return v9(v2 + 56);
}

uint64_t sub_24B50B1FC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE54;
  }

  else
  {
    v9 = sub_24B50B35C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50B35C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B50B534;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B50B534()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50B648, v6, v7);
  }

  return result;
}

uint64_t sub_24B50B648()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_24B517BBC();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_24B50B534;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B50B7A0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 184);
  v10 = (*(a2 + 176) + **(a2 + 176));
  v7 = *(*(a2 + 176) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B50B8E4;

  return v10(v2 + 7);
}

uint64_t sub_24B50B8E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B50BA44;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50BA44()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B50BC1C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B50BC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50BD30, v6, v7);
  }

  return result;
}

uint64_t sub_24B50BD30()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B50BE4C;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B50BE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50BFA4, v5, v4);
}

uint64_t sub_24B50BFA4()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B50BC1C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B50C080(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for BrowseAction();
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = *(a2 + 216);
  v10 = (*(a2 + 208) + **(a2 + 208));
  v7 = *(*(a2 + 208) + 4);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_24B50C1C4;

  return v10(v2 + 7);
}

uint64_t sub_24B50C1C4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_24B517B9C();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_24B50EE5C;
  }

  else
  {
    v9 = sub_24B50C324;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B50C324()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_24B517BBC();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_24B50C4FC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_24B50C4FC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_24B50C610, v6, v7);
  }

  return result;
}

uint64_t sub_24B50C610()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    swift_storeEnumTagMultiPayload();
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v8 = v0;
    v8[1] = sub_24B50C72C;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_24B50C72C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50C884, v5, v4);
}

uint64_t sub_24B50C884()
{
  v1 = v0[15];
  v2 = sub_24B517BBC();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_24B50C4FC;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_24B50C960(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for BrowseAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_24B517BCC();
  v1[5] = sub_24B517BBC();
  v5 = sub_24B517B9C();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_24B50CA28, v5, v4);
}

uint64_t sub_24B50CA28()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v4 = v0;
  v4[1] = sub_24B50CAE8;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_24B50CAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B50CC40, v5, v4);
}

uint64_t sub_24B50CC40()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

unint64_t sub_24B50CCB4()
{
  result = qword_2810EE7D0[0];
  if (!qword_2810EE7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EE7D0);
  }

  return result;
}

uint64_t sub_24B50CD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B50CD70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50735C(a1, v1 + 16);
}

uint64_t sub_24B50CE40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B507CAC(a1, v1 + 16);
}

uint64_t sub_24B50CED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50859C(a1, v1 + 16);
}

uint64_t sub_24B50CF70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B508CBC(a1, v1 + 16);
}

uint64_t sub_24B50D008(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B509644(a1, v1 + 16);
}

uint64_t sub_24B50D0A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B509F24(a1, v1 + 16);
}

uint64_t sub_24B50D138(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50A804(a1, v1 + 16);
}

uint64_t sub_24B50D1D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50B0E4(a1, v1 + 16);
}

uint64_t sub_24B50D268(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50B7A0(a1, v1 + 16);
}

uint64_t sub_24B50D300(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50C080(a1, v1 + 16);
}

uint64_t sub_24B50D398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B505D04(a1, v1 + 16);
}

uint64_t sub_24B50D430(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B5065E4(a1, v1 + 16);
}

uint64_t sub_24B50D4C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B506CA0(a1, v1 + 16);
}

uint64_t sub_24B50D560(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B504F8C(a1, v1 + 16);
}

uint64_t sub_24B50D5F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B505648(a1, v1 + 16);
}

uint64_t sub_24B50D690(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for BrowseLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_24B50D6F4(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B4CA728;

  return sub_24B503238(a1, v1 + 16, v4);
}

uint64_t sub_24B50D79C(uint64_t a1)
{
  v4 = *(sub_24B516B8C() - 8);
  v5 = (*(v4 + 80) + 312) & ~*(v4 + 80);
  v6 = *(v1 + 296);
  v7 = *(v1 + 304);
  v8 = *(v1 + 288);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B4C9DE4;

  return sub_24B5029BC(a1, v1 + 16, v8, v6, v7, v1 + v5);
}

uint64_t sub_24B50D894(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B4CA728;

  return sub_24B5022AC(a1, v1 + 16, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_15FitnessBrowsing13BrowseFeatureV14TaskIdentifier33_1AA3979A9478512A84B861DB5AD42312LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xB)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_24B50DA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B50DAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t sub_24B50DB18(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24B50DB44()
{
  result = qword_2810EE7C8;
  if (!qword_2810EE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EE7C8);
  }

  return result;
}

uint64_t sub_24B50DB98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B516C6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8]);
  v36 = a2;
  v13 = sub_24B517A8C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24B50ED40(&qword_27EFFE340, MEMORY[0x277CC9AF8]);
      v23 = sub_24B517AAC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24B50E1D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24B50DE78(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24B516C6C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  result = sub_24B517CDC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8]);
      result = sub_24B517A8C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24B50E1D4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24B516C6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B50DE78(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24B50E478();
      goto LABEL_12;
    }

    sub_24B50E6B0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8]);
  v15 = sub_24B517A8C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24B50ED40(&qword_27EFFE340, MEMORY[0x277CC9AF8]);
      v23 = sub_24B517AAC();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B517F0C();
  __break(1u);
  return result;
}

void *sub_24B50E478()
{
  v1 = v0;
  v2 = sub_24B516C6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  v7 = *v0;
  v8 = sub_24B517CCC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_24B50E6B0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24B516C6C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  v10 = sub_24B517CDC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8]);
      result = sub_24B517A8C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}