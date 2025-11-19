unint64_t sub_1E5B31AA0()
{
  result = qword_1ED032C00;
  if (!qword_1ED032C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C00);
  }

  return result;
}

unint64_t sub_1E5B31AF4()
{
  result = qword_1ED032C08;
  if (!qword_1ED032C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C08);
  }

  return result;
}

unint64_t sub_1E5B31B48()
{
  result = qword_1ED032C10;
  if (!qword_1ED032C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C10);
  }

  return result;
}

unint64_t sub_1E5B31B9C()
{
  result = qword_1ED032C18;
  if (!qword_1ED032C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C18);
  }

  return result;
}

unint64_t sub_1E5B31BF0()
{
  result = qword_1ED032C20;
  if (!qword_1ED032C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C20);
  }

  return result;
}

unint64_t sub_1E5B31C44()
{
  result = qword_1ED032C28;
  if (!qword_1ED032C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C28);
  }

  return result;
}

uint64_t LibraryCanvasContentAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C30, &qword_1E5B44E08);
  v55 = *(v57 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v50 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C38, &qword_1E5B44E10);
  v56 = *(v60 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C40, &qword_1E5B44E18);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C48, &qword_1E5B44E20);
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C50, &qword_1E5B44E28);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032C58, &unk_1E5B44E30);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5B31AA0();
  v25 = v66;
  sub_1E5B3DE04();
  if (v25)
  {
    goto LABEL_13;
  }

  v26 = v17;
  v50 = v14;
  v51 = 0;
  v27 = v61;
  v28 = v62;
  v66 = v19;
  v30 = v63;
  v29 = v64;
  v31 = sub_1E5B3DD04();
  v32 = (2 * *(v31 + 16)) | 1;
  v67 = v31;
  v68 = v31 + 32;
  v69 = 0;
  v70 = v32;
  v33 = sub_1E5AFF834();
  if (v33 == 5 || v69 != v70 >> 1)
  {
    v36 = sub_1E5B3DC04();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v38 = &type metadata for LibraryCanvasContentAction;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      LOBYTE(v71) = 1;
      sub_1E5B31BF0();
      v48 = v51;
      sub_1E5B3DC94();
      v40 = v66;
      if (!v48)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
        sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768);
        v49 = v59;
        sub_1E5B3DCF4();
        (*(v58 + 8))(v13, v49);
        (*(v40 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v45 = v71;
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    LOBYTE(v71) = 0;
    sub_1E5B31C44();
    v43 = v26;
    v44 = v51;
    sub_1E5B3DC94();
    v40 = v66;
    if (v44)
    {
      goto LABEL_11;
    }

    (*(v52 + 8))(v43, v50);
    (*(v40 + 8))(v22, v18);
    swift_unknownObjectRelease();
    v45 = 0;
LABEL_26:
    v41 = v65;
    *v29 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (v33 == 2)
  {
    LOBYTE(v71) = 2;
    sub_1E5B31B9C();
    v46 = v51;
    sub_1E5B3DC94();
    if (!v46)
    {
      (*(v53 + 8))(v27, v54);
      (*(v66 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v45 = 1;
      goto LABEL_26;
    }

LABEL_10:
    v40 = v66;
    goto LABEL_11;
  }

  if (v33 != 3)
  {
    LOBYTE(v71) = 4;
    sub_1E5B31AF4();
    v47 = v51;
    sub_1E5B3DC94();
    v40 = v66;
    if (!v47)
    {
      (*(v55 + 8))(v30, v57);
      (*(v40 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v45 = 3;
      goto LABEL_26;
    }

LABEL_11:
    (*(v40 + 8))(v22, v18);
    goto LABEL_12;
  }

  LOBYTE(v71) = 3;
  sub_1E5B31B48();
  v34 = v51;
  sub_1E5B3DC94();
  v35 = v66;
  if (!v34)
  {
    (*(v56 + 8))(v28, v60);
    (*(v35 + 8))(v22, v18);
    swift_unknownObjectRelease();
    v45 = 2;
    goto LABEL_26;
  }

  (*(v66 + 8))(v22, v18);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v41 = v65;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t get_enum_tag_for_layout_string_14FitnessLibrary0B19CanvasContentActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5B32520(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B32574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1E5B325D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1E5B32664()
{
  result = qword_1ED032C60;
  if (!qword_1ED032C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C60);
  }

  return result;
}

unint64_t sub_1E5B326BC()
{
  result = qword_1ED032C68;
  if (!qword_1ED032C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C68);
  }

  return result;
}

unint64_t sub_1E5B32714()
{
  result = qword_1ED032C70;
  if (!qword_1ED032C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C70);
  }

  return result;
}

unint64_t sub_1E5B3276C()
{
  result = qword_1ED032C78;
  if (!qword_1ED032C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C78);
  }

  return result;
}

unint64_t sub_1E5B327C4()
{
  result = qword_1ED032C80;
  if (!qword_1ED032C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C80);
  }

  return result;
}

unint64_t sub_1E5B3281C()
{
  result = qword_1ED032C88;
  if (!qword_1ED032C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C88);
  }

  return result;
}

unint64_t sub_1E5B32874()
{
  result = qword_1ED032C90;
  if (!qword_1ED032C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C90);
  }

  return result;
}

unint64_t sub_1E5B328CC()
{
  result = qword_1ED032C98;
  if (!qword_1ED032C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032C98);
  }

  return result;
}

unint64_t sub_1E5B32924()
{
  result = qword_1ED032CA0;
  if (!qword_1ED032CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032CA0);
  }

  return result;
}

unint64_t sub_1E5B3297C()
{
  result = qword_1ED032CA8;
  if (!qword_1ED032CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032CA8);
  }

  return result;
}

unint64_t sub_1E5B329D4()
{
  result = qword_1ED032CB0;
  if (!qword_1ED032CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032CB0);
  }

  return result;
}

unint64_t sub_1E5B32A2C()
{
  result = qword_1ED032CB8;
  if (!qword_1ED032CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032CB8);
  }

  return result;
}

unint64_t sub_1E5B32A84()
{
  result = qword_1ED032CC0;
  if (!qword_1ED032CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032CC0);
  }

  return result;
}

unint64_t sub_1E5B32ADC()
{
  result = qword_1ED032CC8[0];
  if (!qword_1ED032CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED032CC8);
  }

  return result;
}

uint64_t sub_1E5B32B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6843656C61636F6CLL && a2 == 0xED00006465676E61;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647055736D657469 && a2 == 0xEC00000064657461 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4968736572666572 && a2 == 0xEC000000736D6574)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E5B32D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B32E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1E5B32D78(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E5B32E4C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1E5AF15BC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E5B32E84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B32ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DynamicSizeClassState.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v14 = a2[4];
  v15 = v3;
  v13 = v5;
  v16 = v4;
  v17 = v3;
  v18 = v14;
  v19 = v5;
  type metadata accessor for DynamicSizeClassState.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E5B3DD84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  v16 = v4;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  sub_1E5B3CBF4();
  swift_getWitnessTable();
  sub_1E5B3DD74();
  return (*(v7 + 8))(v10, v6);
}

uint64_t DynamicSizeClassState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v11 = sub_1E5B3CBF4();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v31 - v13;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  type metadata accessor for DynamicSizeClassState.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E5B3DD14();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v18 = type metadata accessor for DynamicSizeClassState();
  v31 = *(v18 - 8);
  v19 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v17;
  v24 = v43;
  sub_1E5B3DE04();
  if (!v24)
  {
    WitnessTable = v21;
    v43 = v18;
    v25 = v33;
    v27 = v35;
    v26 = v36;
    swift_getWitnessTable();
    v28 = v34;
    sub_1E5B3DCF4();
    (*(v25 + 8))(v23, v28);
    v29 = WitnessTable;
    (*(v27 + 32))(WitnessTable, v37, v26);
    (*(v31 + 32))(v32, v29, v43);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5B33484(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = sub_1E5B3CBF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LibraryDispatcherView.init(store:compactViewBuilder:standardViewBuilder:tvViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a6 = sub_1E5AEFB94;
  *(a6 + 8) = v11;
  *(a6 + 16) = 0;
  v12 = type metadata accessor for LibraryDispatcherView();
  v13 = v12[17];

  v15 = a3(v14);
  v16 = a6 + v12[18];
  v17 = a4(v15);
  v18 = a6 + v12[19];
  a5(v17);
}

uint64_t LibraryDispatcherView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v46 = *(a1 - 1);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v4 + 16);
  sub_1E5B3D164();
  *&v39 = a1[4];
  v37 = sub_1E5B3D164();
  v5 = sub_1E5B3D774();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - v7;
  v8 = a1[6];
  v66 = a1[5];
  v9 = v66;
  v67 = v8;
  v10 = v8;
  *&v36 = v8;
  WitnessTable = swift_getWitnessTable();
  v12 = a1[7];
  v64 = WitnessTable;
  v65 = v12;
  *(&v36 + 1) = v12;
  v13 = swift_getWitnessTable();
  v61 = MEMORY[0x1E6981E60];
  v62 = v13;
  v63 = MEMORY[0x1E6981E60];
  v14 = swift_getWitnessTable();
  v41 = v14;
  v40 = sub_1E5AF0494();
  v57 = v5;
  v58 = &type metadata for LibraryLayout;
  v59 = v14;
  v60 = v40;
  v43 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - v20);
  *&v22 = v39;
  *(&v22 + 1) = v9;
  v39 = v22;
  v52 = v22;
  v51 = v50;
  v53 = v10;
  v54 = v12;
  v23 = v42;
  v55 = v42;
  v24 = v38;
  sub_1E5B3D764();
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  v56 = v57;
  v25 = v46;
  v26 = v45;
  (*(v46 + 16))(v45, v23, a1);
  v27 = v25;
  v28 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 3) = v36;
  v30 = v39;
  *(v29 + 1) = v50;
  *(v29 + 2) = v30;
  (*(v27 + 32))(&v29[v28], v26, a1);
  v31 = v41;
  v32 = v40;
  sub_1E5B3D564();

  (*(v48 + 8))(v24, v5);
  v57 = v5;
  v58 = &type metadata for LibraryLayout;
  v59 = v31;
  v60 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E5AF144C(v21, v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v44 + 8);
  v34(v18, OpaqueTypeMetadata2);
  sub_1E5AF144C(v49, v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B33C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v77 = a8;
  v67 = *(a4 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v65 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v64 = (&v61 - v18);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v63 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v68 = (&v61 - v24);
  v25 = sub_1E5B3D164();
  v70 = *(v25 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v61 - v27;
  v62 = *(a2 - 8);
  v28 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v61 - v33);
  v35 = sub_1E5B3D164();
  v73 = *(v35 - 8);
  v74 = v35;
  v36 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v72 = &v61 - v37;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = a5;
  v71 = a5;
  v75 = a6;
  v76 = a7;
  v92 = a6;
  v93 = a7;
  v38 = type metadata accessor for LibraryDispatcherView();
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (v88)
  {
    if (v88 == 1)
    {
      v39 = v68;
      v40 = v75;
      sub_1E5AF144C(v68, a1 + v38[18], a3, v75);
      v41 = v63;
      sub_1E5AF144C(v63, v39, a3, v40);
      v42 = v69;
      v43 = v71;
      sub_1E5AF7150(v41, a2, a3);
      v80 = v43;
      v81 = v40;
      swift_getWitnessTable();
      v44 = v72;
      v45 = v76;
      sub_1E5AF7058(v42, v25);
      (*(v70 + 8))(v42, v25);
      v46 = *(v66 + 8);
      v46(v41, a3);
      v47 = a3;
      v48 = v44;
      v46(v68, v47);
    }

    else
    {
      v52 = a1 + v38[19];
      v53 = v64;
      v45 = v76;
      sub_1E5AF144C(v64, v52, a4, v76);
      v54 = v65;
      sub_1E5AF144C(v65, v53, a4, v45);
      v43 = v71;
      v40 = v75;
      v86 = v71;
      v87 = v75;
      swift_getWitnessTable();
      v48 = v72;
      sub_1E5AF7150(v54, v25, a4);
      v55 = *(v67 + 8);
      v55(v54, a4);
      v55(v53, a4);
    }
  }

  else
  {
    v49 = a1 + v38[17];
    v43 = v71;
    sub_1E5AF144C(v34, v49, a2, v71);
    sub_1E5AF144C(v31, v34, a2, v43);
    v50 = v69;
    v40 = v75;
    sub_1E5AF7058(v31, a2);
    v78 = v43;
    v79 = v40;
    swift_getWitnessTable();
    v48 = v72;
    v45 = v76;
    sub_1E5AF7058(v50, v25);
    (*(v70 + 8))(v50, v25);
    v51 = *(v62 + 8);
    v51(v31, a2);
    v51(v34, a2);
  }

  v56 = v77;
  v58 = v73;
  v57 = v74;
  v84 = v43;
  v85 = v40;
  WitnessTable = swift_getWitnessTable();
  v83 = v45;
  v59 = swift_getWitnessTable();
  sub_1E5AF144C(v56, v48, v57, v59);
  return (*(v58 + 8))(v48, v57);
}

uint64_t sub_1E5B3432C(uint64_t a1, __int16 *a2)
{
  v2 = *a2;
  type metadata accessor for LibraryDispatcherView();
  sub_1E5AF8168();
  sub_1E5B3D914();
}

uint64_t sub_1E5B34398(uint64_t a1, __int16 *a2)
{
  v5 = v2[7];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v6 = *(*(type metadata accessor for LibraryDispatcherView() - 8) + 80);
  return sub_1E5B3432C(a1, a2);
}

uint64_t sub_1E5B34460(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5B344B0(void *a1)
{
  sub_1E5AF9EA8();
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
        v7 = a1[4];
        swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5B34570(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v5 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v15;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v20 = ((v18 + ((v13 + v14 + ((v12 + 17) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v16 > 0xFE)
      {
        v29 = (a1 + v12 + 17) & ~v12;
        if (v6 == v17)
        {
          v30 = *(v5 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v13 + v14) & ~v14;
          if (v9 == v17)
          {
            v32 = *(v8 + 48);
            v33 = *(v8 + 84);
            v34 = a3[3];
          }

          else
          {
            v32 = *(v11 + 48);
            v31 = (v18 + v31) & ~v15;
            v33 = *(v11 + 84);
            v34 = a3[4];
          }

          return v32(v31, v33, v34);
        }
      }

      else
      {
        v28 = *(a1 + 16);
        if (v28 > 1)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v18 + ((v13 + v14 + ((v12 + 17) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
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

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void sub_1E5B34880(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  if (v7 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v10 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v13 <= *(v12 + 84))
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v13;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(*(v8 - 8) + 64) + v18;
  v23 = ((v22 + ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17)) & ~v18) + v19;
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v29 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&a1[v23] = v28;
              }

              else
              {
                *&a1[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      a1[v23] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v26)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v20 <= 0xFE)
  {
    if (a2 > 0xFE)
    {
      a1[16] = 0;
      *a1 = a2 - 255;
      *(a1 + 1) = 0;
    }

    else
    {
      a1[16] = -a2;
    }

    return;
  }

  v32 = &a1[v15 + 17] & ~v15;
  if (v7 == v21)
  {
    v33 = *(v6 + 56);

LABEL_63:
    v33(v32);
    return;
  }

  v34 = (v32 + v16 + v17) & ~v17;
  if (v11 != v21)
  {
    v33 = *(v14 + 56);
    v32 = (v22 + v34) & ~v18;

    goto LABEL_63;
  }

  v35 = *(v10 + 56);

  v35(v34);
}

__n128 LibraryCanvasContentFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1E5B34C64(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x1E6936540](0);
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x1E6936540](3);
LABEL_5:
    sub_1E5B3DA14();
  }

  if (a2 <= 0x81u)
  {
    if (a2 == 128)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else if (a2 == 130)
  {
    v3 = 4;
  }

  else if (a2 == 131)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  return MEMORY[0x1E6936540](v3);
}

uint64_t sub_1E5B34E54()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B34C64(v3, v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B34EA4()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B34C64(v3, v1);
  return sub_1E5B3DDF4();
}

void LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  v195 = a3;
  v193 = a1;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A10, &unk_1E5B456D0);
  v197 = *(v194 - 8);
  v7 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v174 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v192 = &v174 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v191 = &v174 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v174 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v188 = &v174 - v22;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v24 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v26 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E5B3CB44();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v174 - v33;
  v35 = *a4;
  v36 = v4[5];
  v204 = v4[4];
  v205 = v36;
  v37 = v4[7];
  v206 = v4[6];
  v207 = v37;
  v38 = v4[1];
  v200 = *v4;
  v201 = v38;
  v39 = v4[3];
  v202 = v4[2];
  v203 = v39;
  v196 = a2;
  v40 = *(a2 + 10);
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      if (*(v196 + 8) == 2)
      {
        return;
      }

      LOBYTE(v199[0]) = v40 | 0x40;
      sub_1E5B35FE0();
      sub_1E5B3DBC4();
      v149 = v194;
      (*(v197 + 104))(v9, *MEMORY[0x1E6999AE8], v194);
      v134 = *v195;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_1E5AF6808(0, *(v134 + 2) + 1, 1, v134);
      }

      v151 = *(v134 + 2);
      v150 = *(v134 + 3);
      if (v151 >= v150 >> 1)
      {
        v134 = sub_1E5AF6808(v150 > 1, v151 + 1, 1, v134);
      }

      *(v134 + 2) = v151 + 1;
      (*(v197 + 32))(&v134[((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v151], v9, v149);
    }

    else
    {
      if (v35 != 3)
      {
        goto LABEL_24;
      }

      v191 = v32;
      v192 = v30;
      v193 = v31;
      v108 = v196 + *(type metadata accessor for LibraryCanvasContentState() + 28);
      sub_1E5B0E5E0(v108, v26);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          return;
        }

        sub_1E5B20FBC(v108);
        swift_storeEnumTagMultiPayload();
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v153 = v152[12];
        v154 = v152[16];
        v155 = v152[20];
        v156 = v188;
        v157 = &v188[v152[24]];
        LOBYTE(v199[0]) = v40;
        sub_1E5B35FE0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v158 = *MEMORY[0x1E6999B60];
        v159 = sub_1E5B3D8E4();
        (*(*(v159 - 8) + 104))(&v156[v154], v158, v159);
        v160 = swift_allocObject();
        v161 = v205;
        v160[5] = v204;
        v160[6] = v161;
        v162 = v207;
        v160[7] = v206;
        v160[8] = v162;
        v163 = v201;
        v160[1] = v200;
        v160[2] = v163;
        v164 = v203;
        v160[3] = v202;
        v160[4] = v164;
        *v157 = &unk_1E5B45740;
        *(v157 + 1) = v160;
        v165 = *MEMORY[0x1E6999B48];
        v166 = sub_1E5B3D8D4();
        (*(*(v166 - 8) + 104))(&v156[v155], v165, v166);
        v167 = v197;
        v168 = v194;
        (*(v197 + 104))(v156, *MEMORY[0x1E6999AD8], v194);
        v134 = *v195;
        sub_1E5B387B8(&v200, v199);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_1E5AF6808(0, *(v134 + 2) + 1, 1, v134);
        }

        v170 = *(v134 + 2);
        v169 = *(v134 + 3);
        if (v170 >= v169 >> 1)
        {
          v134 = sub_1E5AF6808(v169 > 1, v170 + 1, 1, v134);
        }

        *(v134 + 2) = v170 + 1;
        (*(v167 + 32))(&v134[((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v170], v156, v168);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v171 = *v26;

          v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
          (v205)();
          (*(v193 + 8))(&v26[v172], v192);
          return;
        }

        v196 = *v26;
        v110 = *(v26 + 4);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
        v112 = v193;
        v113 = &v26[*(v111 + 64)];
        v115 = v191;
        v114 = v192;
        (*(v193 + 32))(v191, v113, v192);
        sub_1E5B20FBC(v108);
        v116 = *(v111 + 64);
        *v108 = v196;
        *(v108 + 8) = v110;
        v117 = v194;
        (*(v112 + 16))(v108 + v116, v115, v114);
        swift_storeEnumTagMultiPayload();
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v119 = v118[12];
        v120 = v118[16];
        v121 = v118[20];
        v122 = v189;
        v123 = &v189[v118[24]];
        LOBYTE(v199[0]) = v40;
        sub_1E5B35FE0();
        sub_1E5B3DBC4();
        sub_1E5B3DAE4();
        v124 = *MEMORY[0x1E6999B60];
        v125 = sub_1E5B3D8E4();
        (*(*(v125 - 8) + 104))(&v122[v120], v124, v125);
        v126 = swift_allocObject();
        v127 = v205;
        v126[5] = v204;
        v126[6] = v127;
        v128 = v207;
        v126[7] = v206;
        v126[8] = v128;
        v129 = v201;
        v126[1] = v200;
        v126[2] = v129;
        v130 = v203;
        v126[3] = v202;
        v126[4] = v130;
        *v123 = &unk_1E5B45730;
        *(v123 + 1) = v126;
        v131 = *MEMORY[0x1E6999B48];
        v132 = sub_1E5B3D8D4();
        (*(*(v132 - 8) + 104))(&v122[v121], v131, v132);
        v133 = v197;
        (*(v197 + 104))(v122, *MEMORY[0x1E6999AD8], v117);
        v134 = *v195;
        sub_1E5B387B8(&v200, v199);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_1E5AF6808(0, *(v134 + 2) + 1, 1, v134);
        }

        v136 = *(v134 + 2);
        v135 = *(v134 + 3);
        v137 = v193;
        if (v136 >= v135 >> 1)
        {
          v173 = sub_1E5AF6808(v135 > 1, v136 + 1, 1, v134);
          v137 = v193;
          v134 = v173;
        }

        (*(v137 + 8))();
        *(v134 + 2) = v136 + 1;
        (*(v133 + 32))(&v134[((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v136], v122, v117);
      }
    }

    *v195 = v134;
    return;
  }

  if (!v35)
  {
    *&v199[0] = 3;
    LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(v193, v196, v195, v199);
    return;
  }

  if (v35 == 1)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
    v42 = v41[12];
    v43 = v41[16];
    v44 = v41[20];
    v45 = &v18[v41[24]];
    LOBYTE(v199[0]) = -127;
    v189 = sub_1E5B35FE0();
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v46 = *MEMORY[0x1E6999B60];
    v47 = sub_1E5B3D8E4();
    v48 = *(v47 - 8);
    v49 = *(v48 + 104);
    v175 = v46;
    v187 = v49;
    v188 = v47;
    v186 = v48 + 104;
    (v49)(&v18[v43], v46);
    v50 = *MEMORY[0x1E6999B40];
    v51 = sub_1E5B3D8D4();
    v52 = *(v51 - 8);
    v53 = *(v52 + 104);
    v185 = v50;
    v183 = v53;
    v184 = v51;
    v182 = v52 + 104;
    (v53)(&v18[v44], v50);
    v54 = swift_allocObject();
    v55 = v205;
    v54[5] = v204;
    v54[6] = v55;
    v56 = v207;
    v54[7] = v206;
    v54[8] = v56;
    v57 = v201;
    v54[1] = v200;
    v54[2] = v57;
    v58 = v203;
    v54[3] = v202;
    v54[4] = v58;
    *v45 = &unk_1E5B456E8;
    *(v45 + 1) = v54;
    v59 = v197;
    v60 = *(v197 + 104);
    v180 = *MEMORY[0x1E6999AD8];
    v181 = v197 + 104;
    v179 = v60;
    v60(v18);
    v61 = *v195;
    sub_1E5B387B8(&v200, v199);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1E5AF6808(0, *(v61 + 2) + 1, 1, v61);
    }

    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    v174 = v40;
    if (v63 >= v62 >> 1)
    {
      v61 = sub_1E5AF6808(v62 > 1, v63 + 1, 1, v61);
    }

    *(v61 + 2) = v63 + 1;
    v65 = *(v59 + 32);
    v64 = v59 + 32;
    v177 = (*(v64 + 48) + 32) & ~*(v64 + 48);
    v178 = v65;
    v176 = *(v64 + 40);
    v66 = v194;
    v197 = v64;
    v65(&v61[v177 + v176 * v63], v18, v194);
    v67 = v41[12];
    v68 = v41[16];
    v69 = v41[20];
    v70 = v191;
    v71 = &v191[v41[24]];
    LOBYTE(v199[0]) = -125;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v187(&v70[v68], v175, v188);
    v183(&v70[v69], v185, v184);
    v72 = swift_allocObject();
    v73 = v205;
    v72[5] = v204;
    v72[6] = v73;
    v74 = v207;
    v72[7] = v206;
    v72[8] = v74;
    v75 = v201;
    v72[1] = v200;
    v72[2] = v75;
    v76 = v203;
    v72[3] = v202;
    v72[4] = v76;
    *v71 = &unk_1E5B456F8;
    *(v71 + 1) = v72;
    v179(v70, v180, v66);
    sub_1E5B387B8(&v200, v199);
    v78 = *(v61 + 2);
    v77 = *(v61 + 3);
    v79 = v174;
    if (v78 >= v77 >> 1)
    {
      v61 = sub_1E5AF6808(v77 > 1, v78 + 1, 1, v61);
    }

    *(v61 + 2) = v78 + 1;
    v178(&v61[v177 + v78 * v176], v191, v194);
    v80 = v41[12];
    v81 = v41[16];
    v82 = v41[20];
    v83 = v192;
    v84 = &v192[v41[24]];
    LOBYTE(v199[0]) = v79 | 0x40;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v187(&v83[v81], v175, v188);
    v183(&v83[v82], v185, v184);
    v85 = swift_allocObject();
    v86 = v205;
    *(v85 + 80) = v204;
    *(v85 + 96) = v86;
    v87 = v207;
    *(v85 + 112) = v206;
    *(v85 + 128) = v87;
    v88 = v201;
    *(v85 + 16) = v200;
    *(v85 + 32) = v88;
    v89 = v203;
    *(v85 + 48) = v202;
    *(v85 + 64) = v89;
    *(v85 + 144) = v79;
    *v84 = &unk_1E5B45708;
    *(v84 + 1) = v85;
    v90 = v83;
    v91 = v194;
    v179(v90, v180, v194);
    sub_1E5B387B8(&v200, v199);
    v93 = *(v61 + 2);
    v92 = *(v61 + 3);
    if (v93 >= v92 >> 1)
    {
      v61 = sub_1E5AF6808(v92 > 1, v93 + 1, 1, v61);
    }

    *(v61 + 2) = v93 + 1;
    v178(&v61[v177 + v93 * v176], v192, v91);
    v94 = v41[12];
    v95 = v41[16];
    v96 = v41[20];
    v97 = v41[24];
    v98 = v190;
    v99 = &v190[v97];
    LOBYTE(v199[0]) = -124;
    sub_1E5B3DBC4();
    sub_1E5B3DAE4();
    v187(&v98[v95], *MEMORY[0x1E6999B50], v188);
    v183(&v98[v96], v185, v184);
    v100 = swift_allocObject();
    v101 = v205;
    v100[5] = v204;
    v100[6] = v101;
    v102 = v207;
    v100[7] = v206;
    v100[8] = v102;
    v103 = v201;
    v100[1] = v200;
    v100[2] = v103;
    v104 = v203;
    v100[3] = v202;
    v100[4] = v104;
    *v99 = &unk_1E5B45718;
    *(v99 + 1) = v100;
    v179(v98, v180, v91);
    sub_1E5B387B8(&v200, v199);
    v106 = *(v61 + 2);
    v105 = *(v61 + 3);
    if (v106 >= v105 >> 1)
    {
      v61 = sub_1E5AF6808(v105 > 1, v106 + 1, 1, v61);
    }

    *(v61 + 2) = v106 + 1;
    v178(&v61[v177 + v106 * v176], v98, v91);
    v107 = v195;
    *v195 = v61;
    v199[4] = v204;
    v199[5] = v205;
    v199[6] = v206;
    v199[7] = v207;
    v199[0] = v200;
    v199[1] = v201;
    v199[2] = v202;
    v199[3] = v203;
    v198 = 3;
    LibraryCanvasContentFeature.reduce(localState:sharedState:sideEffects:action:)(v193, v196, v107, &v198);
    return;
  }

LABEL_24:
  v138 = v30;
  v139 = v31;
  v140 = type metadata accessor for LibraryCanvasContentState();
  v141 = *(v140 + 32);
  v193 = v139;
  v197 = *(v139 + 16);
  v142 = v196;
  (v197)(v34, v196 + v141, v138);
  v144 = *(v142 + 9);
  v145 = v142 + *(v140 + 28);
  LOBYTE(v199[0]) = *(v142 + 8);
  v143 = v199[0];
  BYTE1(v199[0]) = v144;

  LOBYTE(v142) = sub_1E5B0E330(v146, v199, v34);
  sub_1E5B20FBC(v145);
  v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
  *v145 = v35;
  *(v145 + 8) = v143;
  *(v145 + 9) = v144;
  (v197)(v145 + v147, v34, v138);
  v148 = swift_storeEnumTagMultiPayload();
  if (v142)
  {
    (v205)(v148);
  }

  (*(v193 + 8))(v34, v138);
}

unint64_t sub_1E5B35FE0()
{
  result = qword_1ED032DD0;
  if (!qword_1ED032DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032DD0);
  }

  return result;
}

uint64_t sub_1E5B36034(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = sub_1E5B3DAB4();
  *(v2 + 40) = sub_1E5B3DAA4();
  *(v2 + 48) = *a2;
  v4 = *(a2 + 104);
  v8 = (*(a2 + 96) + **(a2 + 96));
  v5 = *(*(a2 + 96) + 4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B36148;

  return v8();
}

uint64_t sub_1E5B36148()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    MEMORY[0x1E6936830](v0);
  }

  v9 = (v2[6] + *v2[6]);
  v5 = *(v2[6] + 4);
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v4;
  v6[1] = sub_1E5B362E4;
  v7 = v2[7];

  return v9();
}

uint64_t sub_1E5B362E4(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    v6 = v5[4];
    v7 = v5[5];
    v9 = sub_1E5B3DA84();

    return MEMORY[0x1EEE6DFA0](sub_1E5B39590, v9, v8);
  }

  else
  {
    v5[2] = a1;
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v11 = swift_task_alloc();
    v5[11] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v11 = v5;
    v11[1] = sub_1E5B364A0;
    v13 = v5[3];

    return MEMORY[0x1EEE01A40](v5 + 2, v12);
  }
}

uint64_t sub_1E5B364A0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v8 = *v0;

  sub_1E5B39520(*(v1 + 16));
  v6 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B16388, v6, v5);
}

uint64_t sub_1E5B36600(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = sub_1E5B3DAB4();
  *(v2 + 40) = sub_1E5B3DAA4();
  *(v2 + 48) = *a2;
  v4 = *(a2 + 104);
  v8 = (*(a2 + 96) + **(a2 + 96));
  v5 = *(*(a2 + 96) + 4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B36714;

  return v8();
}

uint64_t sub_1E5B36714()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    MEMORY[0x1E6936830](v0);
  }

  v9 = (v2[6] + *v2[6]);
  v5 = *(v2[6] + 4);
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v4;
  v6[1] = sub_1E5B368B0;
  v7 = v2[7];

  return v9();
}

uint64_t sub_1E5B368B0(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    v6 = v5[4];
    v7 = v5[5];
    v9 = sub_1E5B3DA84();

    return MEMORY[0x1EEE6DFA0](sub_1E5B36BCC, v9, v8);
  }

  else
  {
    v5[2] = a1;
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v11 = swift_task_alloc();
    v5[11] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v11 = v5;
    v11[1] = sub_1E5B36A6C;
    v13 = v5[3];

    return MEMORY[0x1EEE01A40](v5 + 2, v12);
  }
}

uint64_t sub_1E5B36A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v8 = *v0;

  sub_1E5B39520(*(v1 + 16));
  v6 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5B14848, v6, v5);
}

uint64_t sub_1E5B36BCC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E5B36C30(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = sub_1E5B3DAB4();
  v2[15] = sub_1E5B3DAA4();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[16] = v6;
  *v6 = v2;
  v6[1] = sub_1E5B36D44;

  return v8(v2 + 2);
}

uint64_t sub_1E5B36D44()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v11 = *v1;
  v3[17] = v2;

  v8 = sub_1E5B3DA84();
  v3[18] = v8;
  v3[19] = v7;
  if (v2)
  {
    v9 = sub_1E5B374A8;
  }

  else
  {
    v9 = sub_1E5B36EA4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B36EA4()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[14];
  v7 = sub_1E5B3DAA4();
  v0[20] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B37074;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v7, v11);
}

uint64_t sub_1E5B37074()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x1EEE6DFA0](sub_1E5B37188, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B37188()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = 3;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v5 = v0;
    v5[1] = sub_1E5B372AC;
    v7 = *(v0 + 104);

    return MEMORY[0x1EEE01A40](v0 + 96, v6);
  }
}

uint64_t sub_1E5B372AC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5B373CC, v4, v3);
}

uint64_t sub_1E5B373CC()
{
  v1 = v0[14];
  v2 = sub_1E5B3DAA4();
  v0[20] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B37074;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v2, v6);
}

uint64_t sub_1E5B374A8()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_1E5B3750C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DF0, &qword_1E5B458B8);
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v2 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DF8, &qword_1E5B458C0);
  *(v2 + 48) = v8;
  v9 = *(v8 - 8);
  *(v2 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_1E5B3DAB4();
  *(v2 + 80) = sub_1E5B3DAA4();
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(v2 + 88) = *(a2 + 112);
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v2 + 104) = v14;
  *v14 = v2;
  v14[1] = sub_1E5B376FC;

  return v16(v7);
}

uint64_t sub_1E5B376FC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v11 = *v1;
  v3[14] = v2;

  v8 = sub_1E5B3DA84();
  v3[15] = v8;
  v3[16] = v7;
  if (v2)
  {
    v9 = sub_1E5B37BE8;
  }

  else
  {
    v9 = sub_1E5B3785C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B3785C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1E5B3DB14();
  (*(v3 + 8))(v2, v4);
  v5 = v0[9];
  v6 = sub_1E5B3DAA4();
  v0[17] = v6;
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1E5B3794C;
  v9 = v0[8];
  v10 = v0[6];
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v6, v11, v10);
}

uint64_t sub_1E5B3794C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E5B37A90, v5, v4);
}

uint64_t sub_1E5B37A90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 96);
    (*(v0 + 88))(*(v0 + 16));

    v2 = *(v0 + 72);
    v3 = sub_1E5B3DAA4();
    *(v0 + 136) = v3;
    v4 = *(MEMORY[0x1E69E8678] + 4);
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_1E5B3794C;
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 16, v3, v8, v7);
  }

  else
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 40);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E5B37BE8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1E5B37C64(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 186) = a3;
  *(v3 + 104) = a1;
  *(v3 + 112) = sub_1E5B3DAB4();
  *(v3 + 120) = sub_1E5B3DAA4();
  v5 = *(a2 + 56);
  v9 = (*(a2 + 48) + **(a2 + 48));
  v6 = *(*(a2 + 48) + 4);
  v7 = swift_task_alloc();
  *(v3 + 128) = v7;
  *v7 = v3;
  v7[1] = sub_1E5B37D7C;

  return v9(v3 + 16);
}

uint64_t sub_1E5B37D7C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v11 = *v1;
  v3[17] = v2;

  v8 = sub_1E5B3DA84();
  v3[18] = v8;
  v3[19] = v7;
  if (v2)
  {
    v9 = sub_1E5B3958C;
  }

  else
  {
    v9 = sub_1E5B37EDC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5B37EDC()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_1E5B3DB34();

  v6 = v0[14];
  v7 = sub_1E5B3DAA4();
  v0[20] = v7;
  v8 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E5B380AC;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v7, v11);
}

uint64_t sub_1E5B380AC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x1EEE6DFA0](sub_1E5B381C0, v6, v7);
  }

  return result;
}

uint64_t sub_1E5B381C0()
{
  v18 = v0;
  if (*(v0 + 184))
  {
    v1 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (qword_1ED031620 != -1)
    {
      swift_once();
    }

    v2 = sub_1E5B3CD84();
    __swift_project_value_buffer(v2, qword_1ED032ED8);
    v3 = sub_1E5B3CD64();
    v4 = sub_1E5B3DB84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 186);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      *(v0 + 185) = v5;
      v8 = sub_1E5B3D9F4();
      v10 = sub_1E5B38EB0(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1E5AE7000, v3, v4, "finished items updated observation for %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6936A00](v7, -1, -1);
      MEMORY[0x1E6936A00](v6, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    *(v0 + 96) = 3;
    v13 = *(MEMORY[0x1E6999AF0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE0, &qword_1E5B458A8);
    *v14 = v0;
    v14[1] = sub_1E5B38414;
    v16 = *(v0 + 104);

    return MEMORY[0x1EEE01A40](v0 + 96, v15);
  }
}

uint64_t sub_1E5B38414()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5B38534, v4, v3);
}

uint64_t sub_1E5B38534()
{
  v1 = v0[14];
  v2 = sub_1E5B3DAA4();
  v0[20] = v2;
  v3 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1E5B380AC;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v2, v6);
}

uint64_t sub_1E5B38610(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5B3DAB4();
  v2[3] = sub_1E5B3DAA4();
  v4 = *(a2 + 72);
  v8 = (*(a2 + 64) + **(a2 + 64));
  v5 = *(*(a2 + 64) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5AF6058;

  return v8();
}

uint64_t sub_1E5B38720(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B36C30(a1, v1 + 16);
}

uint64_t sub_1E5B387F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B3750C(a1, v1 + 16);
}

uint64_t sub_1E5B38888(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B16384;

  return sub_1E5B37C64(a1, v1 + 16, v4);
}

uint64_t sub_1E5B38930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B38610(a1, v1 + 16);
}

uint64_t sub_1E5B389C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5AF632C;

  return sub_1E5B36600(a1, v1 + 16);
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

  return swift_deallocObject();
}

uint64_t sub_1E5B38ADC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B16384;

  return sub_1E5B36034(a1, v1 + 16);
}

unint64_t sub_1E5B38B78()
{
  result = qword_1EE2C2A30;
  if (!qword_1EE2C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2A30);
  }

  return result;
}

unint64_t sub_1E5B38BD0()
{
  result = qword_1EE2C2A38[0];
  if (!qword_1EE2C2A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C2A38);
  }

  return result;
}

unint64_t sub_1E5B38C28()
{
  result = qword_1EE2C2B78[0];
  if (!qword_1EE2C2B78[0])
  {
    type metadata accessor for LibraryCanvasContentState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C2B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryCanvasContentFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LibraryCanvasContentFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5B38DEC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1E5B38E18(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_1E5B38E5C()
{
  result = qword_1ED032DD8;
  if (!qword_1ED032DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032DD8);
  }

  return result;
}

uint64_t sub_1E5B38EB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5B38F7C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5B39530(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5B38F7C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E5B39088(a5, a6);
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
    result = sub_1E5B3DC14();
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

uint64_t sub_1E5B39088(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5B390D4(a1, a2);
  sub_1E5B39204(&unk_1F5F6DD50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E5B390D4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5B392F0(v5, 0);
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

  result = sub_1E5B3DC14();
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
        v10 = sub_1E5B3DA34();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5B392F0(v10, 0);
        result = sub_1E5B3DBD4();
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

uint64_t sub_1E5B39204(uint64_t result)
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

  result = sub_1E5B39364(result, v12, 1, v3);
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

void *sub_1E5B392F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE8, &qword_1E5B458B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5B39364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032DE8, &qword_1E5B458B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E5B39458(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        a1 &= 0x3Fu;
        a2 &= 0x3Fu;
        return sub_1E5AFEB1C(a1, a2);
      }
    }

    else if (a1 <= 0x81u)
    {
      if (a1 == 128)
      {
        if (a2 == 128)
        {
          return 1;
        }
      }

      else if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a1 == 130)
    {
      if (a2 == 130)
      {
        return 1;
      }
    }

    else if (a1 == 131)
    {
      if (a2 == 131)
      {
        return 1;
      }
    }

    else if (a2 == 132)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return sub_1E5AFEB1C(a1, a2);
  }

  return 0;
}

unint64_t sub_1E5B39520(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5B39530(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LibraryDataItem.init(id:artwork:title:subtitle:presentationContextKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v14 = type metadata accessor for LibraryDataItem();
  v15 = v14[21];
  v16 = sub_1E5B3CB14();
  (*(*(v16 - 8) + 32))(a8 + v15, a5, v16);
  (*(*(a6 - 8) + 32))(a8 + v14[22], a2, a6);
  v17 = v14[23];
  v18 = sub_1E5B3CC14();
  v19 = *(*(v18 - 8) + 32);
  v19(a8 + v17, a3, v18);
  return (v19)(a8 + v14[24], a4, v18);
}

uint64_t LibraryDataItem.presentationContextKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = sub_1E5B3CB14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static LibraryDataItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 8);
  if (sub_1E5B3D974() & 1) != 0 && (v12 = type metadata accessor for LibraryDataItem(), v13 = v12[21], (sub_1E5B3CB04()) && (v14 = v12[22], v15 = *(a7 + 8), (sub_1E5B3D974()) && (v16 = v12[23], (sub_1E5B3CC04()))
  {
    v17 = v12[24];
    v18 = sub_1E5B3CC04();
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1E5B398E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B46170 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1E5B39A94(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6B726F77747261;
  v3 = 0x656C746974;
  if (a1 != 3)
  {
    v3 = 0x656C746974627573;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000016;
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

unint64_t sub_1E5B39B24(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E5B39A94(*v1);
}

uint64_t sub_1E5B39B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1E5B398E8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5B39BA4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_1E5B3B490();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B39BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B39C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LibraryDataItem.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v18 = *(a2 + 16);
  v21 = v18;
  v20 = *(a2 + 24);
  v22 = v20;
  v17 = *(a2 + 40);
  v23 = v17;
  v24 = v4;
  v19 = *(a2 + 64);
  v25 = v19;
  type metadata accessor for LibraryDataItem.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E5B3DD84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  LOBYTE(v21) = 0;
  v11 = v26;
  sub_1E5B3DD74();
  if (v11)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(a2 + 84);
  LOBYTE(v21) = 1;
  sub_1E5B3CB14();
  sub_1E5B3AA88(&qword_1ED032E00, MEMORY[0x1E69695A8]);
  sub_1E5B3DD74();
  v14 = *(a2 + 88);
  LOBYTE(v21) = 2;
  sub_1E5B3DD74();
  v15 = *(a2 + 92);
  LOBYTE(v21) = 3;
  sub_1E5B3CC14();
  sub_1E5B3AA88(&qword_1ED032E08, MEMORY[0x1E699D908]);
  sub_1E5B3DD74();
  v16 = *(a2 + 96);
  LOBYTE(v21) = 4;
  sub_1E5B3DD74();
  return (*(v6 + 8))(v9, v5);
}

uint64_t LibraryDataItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v6 = *(a2 + 72);
  sub_1E5B3D964();
  v7 = *(a2 + 84);
  sub_1E5B3CB14();
  sub_1E5B3AA88(&qword_1ED032E10, MEMORY[0x1E69695A8]);
  sub_1E5B3D964();
  v8 = *(a2 + 16);
  v9 = *(a2 + 48);
  v10 = v3 + *(a2 + 88);
  sub_1E5B3D964();
  v11 = *(a2 + 92);
  sub_1E5B3CC14();
  sub_1E5B3AA88(&qword_1ED032E18, MEMORY[0x1E699D908]);
  sub_1E5B3D964();
  v12 = v3 + *(a2 + 96);
  return sub_1E5B3D964();
}

uint64_t LibraryDataItem.hashValue.getter(uint64_t a1)
{
  sub_1E5B3DDC4();
  LibraryDataItem.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t LibraryDataItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v78 = a1;
  v88 = a8;
  v59 = a9;
  v77 = a10;
  v72 = sub_1E5B3CC14();
  v64 = *(v72 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v57 - v19;
  v65 = *(a2 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E5B3CB14();
  v66 = *(v67 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a3 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v76 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a2;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v85 = a7;
  v86 = v88;
  v87 = a10;
  type metadata accessor for LibraryDataItem.CodingKeys();
  swift_getWitnessTable();
  v74 = sub_1E5B3DD14();
  v69 = *(v74 - 8);
  v28 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v30 = &v57 - v29;
  v63 = a2;
  v80 = a2;
  v81 = a3;
  v75 = a3;
  v62 = a4;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v85 = a7;
  v73 = a7;
  v31 = v78;
  v86 = v88;
  v87 = v77;
  v32 = type metadata accessor for LibraryDataItem();
  v77 = *(v32 - 8);
  v33 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - v34;
  v36 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v88 = v30;
  v37 = v79;
  sub_1E5B3DE04();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v38 = v70;
  v39 = v71;
  v40 = v69;
  v79 = v35;
  v58 = v32;
  v41 = v31;
  v42 = v72;
  LOBYTE(v80) = 0;
  v43 = v75;
  sub_1E5B3DCF4();
  (*(v68 + 32))(v79, v76, v43);
  LOBYTE(v80) = 1;
  sub_1E5B3AA88(&qword_1ED032E20, MEMORY[0x1E69695A8]);
  v44 = v38;
  v45 = v67;
  sub_1E5B3DCF4();
  (*(v66 + 32))(&v79[v58[21]], v44, v45);
  LOBYTE(v80) = 2;
  v46 = v63;
  sub_1E5B3DCF4();
  v47 = v64;
  (*(v65 + 32))(&v79[v58[22]], v39, v46);
  LOBYTE(v80) = 3;
  v48 = sub_1E5B3AA88(qword_1ED032E28, MEMORY[0x1E699D908]);
  v49 = v61;
  v76 = v48;
  sub_1E5B3DCF4();
  v50 = v49;
  v51 = *(v47 + 32);
  v51(&v79[v58[23]], v50, v42);
  LOBYTE(v80) = 4;
  v52 = v60;
  sub_1E5B3DCF4();
  (*(v40 + 8))(v88, v74);
  v53 = v58;
  v54 = v79;
  v51(&v79[v58[24]], v52, v42);
  v55 = v77;
  (*(v77 + 16))(v59, v54, v53);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return (*(v55 + 8))(v54, v53);
}

uint64_t sub_1E5B3AA44(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  LibraryDataItem.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B3AA88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B3ABAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v37 = *(a3 + 24);
  v5 = *(v37 - 8);
  v6 = *(v5 + 84);
  v36 = sub_1E5B3CB14();
  v7 = *(v36 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v34 = *(a3 + 16);
  v10 = *(v34 - 8);
  v35 = *(v10 + 84);
  if (v35 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(sub_1E5B3CC14() - 8);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v5 + 64) + v13;
  v20 = a1;
  if (a2 > v18)
  {
    v21 = ((*(v12 + 64) + v17 + ((v16 + v17 + ((v14 + v15 + (v19 & ~v13)) & ~v15)) & ~v17)) & ~v17) + *(v12 + 64);
    v22 = 8 * v21;
    if (v21 <= 3)
    {
      v24 = ((a2 - v18 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v24))
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v24 > 0xFF)
      {
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v24 < 2)
      {
LABEL_33:
        if (v18)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_33;
    }

LABEL_20:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
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

    else
    {
      v27 = 0;
    }

    return v18 + (v27 | v25) + 1;
  }

LABEL_34:
  if (v6 == v18)
  {
    v28 = v37;
    v29 = *(v5 + 48);
    v30 = v6;

    return v29(v20, v30, v28);
  }

  v20 = ((a1 + v19) & ~v13);
  if (v8 == v18)
  {
    v29 = *(v7 + 48);
    v30 = v8;
    v28 = v36;

    return v29(v20, v30, v28);
  }

  v20 = ((v20 + v14 + v15) & ~v15);
  if (v35 == v18)
  {
    v29 = *(v10 + 48);
    v30 = v35;
    v28 = v34;

    return v29(v20, v30, v28);
  }

  v32 = *(v12 + 48);
  v33 = (v20 + v16 + v17) & ~v17;

  return v32(v33);
}

void sub_1E5B3AFCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v38 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_1E5B3CB14() - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(a4 + 16) - 8);
  v39 = v11;
  v37 = *(v11 + 84);
  if (v37 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v13 = *(sub_1E5B3CC14() - 8);
  v14 = v13;
  v15 = *(v6 + 64);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v8 + 80);
  v18 = v15 + v17;
  v19 = *(v8 + 64);
  v20 = *(v11 + 80);
  v21 = (v19 + v20 + ((v15 + v17) & ~v17)) & ~v20;
  v22 = *(v11 + 64);
  v23 = *(v13 + 80);
  v24 = ((*(v13 + 64) + v23 + ((v22 + v23 + v21) & ~v23)) & ~v23) + *(v13 + 64);
  if (a3 <= v16)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v16 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v16 < v26)
  {
    v28 = ~v16 + v26;
    if (v24 < 4)
    {
      v29 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v32 = v28 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v32;
            if (v27 > 1)
            {
LABEL_56:
              if (v27 == 2)
              {
                *&v25[v24] = v29;
              }

              else
              {
                *&v25[v24] = v29;
              }

              return;
            }
          }

          else
          {
            *v25 = v28;
            if (v27 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v25 = v32;
        v25[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v27)
    {
      v25[v24] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v27)
  {
    v25[v24] = 0;
    if (!v26)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    return;
  }

LABEL_37:
  if (v7 == v16)
  {
    v33 = *(v38 + 56);
    v34 = v25;
    goto LABEL_41;
  }

  v34 = (&v25[v18] & ~v17);
  if (v9 == v16)
  {
    v33 = *(v40 + 56);
LABEL_41:

LABEL_43:
    v33(v34);
    return;
  }

  v34 = (&v34[v19 + v20] & ~v20);
  if (v37 == v16)
  {
    v33 = *(v39 + 56);

    goto LABEL_43;
  }

  v35 = *(v14 + 56);
  v36 = &v34[v22 + v23] & ~v23;

  v35(v36);
}

uint64_t sub_1E5B3B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v166 = a8;
  v156 = a6;
  v154 = a5;
  v157 = a4;
  v155 = a3;
  v147 = a2;
  v146 = a1;
  v169 = a9;
  v171 = a12;
  v135 = sub_1E5B3CF84();
  v134 = *(v135 - 8);
  v15 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032EB0, &qword_1E5B45B60);
  v151 = *(v152 - 8);
  v17 = v151[8];
  MEMORY[0x1EEE9AC00](v152);
  v132 = &v125 - v18;
  v142 = sub_1E5B3CD04();
  v141 = *(v142 - 8);
  v19 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0329F0, &qword_1E5B44520);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v149 = (&v125 - v23);
  v150 = *(a10 - 8);
  v24 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v148 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1E5B3CC14();
  v138 = *(v139 - 8);
  v27 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v163 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032EB8, &qword_1E5B45B68);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v161 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v125 - v33;
  v34 = sub_1E5B3CCA4();
  v164 = *(v34 - 8);
  v35 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v37;
  v170 = a10;
  v38 = sub_1E5B3CF34();
  v145 = *(v38 - 8);
  v39 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v144 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v143 = (&v125 - v42);
  v43 = *(a7 + 16);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v125 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a7 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v137 = &v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v125 - v53;
  v165 = v21;
  v55 = sub_1E5B3D164();
  v167 = *(v55 - 8);
  v168 = v55;
  v56 = *(v167 + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v159 = &v125 - v58;
  v59 = *(v49 + 16);
  v153 = v13;
  v136 = v59;
  (v59)(v54, v13, a7, v57);
  v60 = a7;
  v61 = (*(v49 + 88))(v54, a7);
  if (v61 == *MEMORY[0x1E699D9D0])
  {
    v152 = a11;
    v62 = *(v49 + 96);
    v128 = a7;
    v62(v54, a7);
    v131 = v44;
    (*(v44 + 32))(v48, v54, v43);
    v63 = v138;
    v126 = *(v138 + 56);
    v64 = v139;
    v65 = v126(v160, 1, 1, v139);
    v151 = &v125;
    v66 = MEMORY[0x1EEE9AC00](v65);
    v149 = &v125 - 18;
    v141 = *(v43 + 16);
    v142 = *(v43 + 24);
    v67 = v142;
    *(&v125 - 16) = v141;
    *(&v125 - 15) = v67;
    v68 = v170;
    *(&v125 - 14) = v166;
    *(&v125 - 13) = v68;
    v135 = *(v43 + 32);
    *(&v125 - 12) = v135;
    v134 = *(v43 + 40);
    *(&v125 - 11) = v134;
    v133 = *(v43 + 48);
    *(&v125 - 10) = v133;
    v127 = *(v43 + 56);
    *(&v125 - 9) = v127;
    v140 = *(v43 + 64);
    *(&v125 - 8) = v140;
    v132 = *(v43 + 72);
    v69 = v152;
    *(&v125 - 7) = v132;
    *(&v125 - 6) = v69;
    v70 = v171;
    v71 = v146;
    *(&v125 - 5) = v171;
    *(&v125 - 4) = v71;
    *(&v125 - 3) = v147;
    v124 = v48;
    v72 = v38;
    v73 = v70;
    v74 = *(v63 + 16);
    v75 = &v48[*(v43 + 92)];
    v130 = v43;
    v147 = v50;
    v129 = v48;
    v74(v163, v75, v64, v66);
    v76 = v161;
    (v74)(v161, &v48[*(v43 + 96)], v64);
    v77 = v73;
    v78 = v72;
    v126(v76, 0, 1, v64);
    v79 = v137;
    v80 = v128;
    v136(v137, v153, v128);
    v81 = (*(v49 + 80) + 128) & ~*(v49 + 80);
    v82 = swift_allocObject();
    v83 = v142;
    *(v82 + 16) = v141;
    *(v82 + 24) = v83;
    v84 = v170;
    *(v82 + 32) = v166;
    *(v82 + 40) = v84;
    *&v85 = v135;
    *(&v85 + 1) = v134;
    *&v86 = v133;
    *(&v86 + 1) = v127;
    *(v82 + 48) = v85;
    *(v82 + 64) = v86;
    v87 = v132;
    *(v82 + 80) = v140;
    *(v82 + 88) = v87;
    v88 = v152;
    *(v82 + 96) = v152;
    *(v82 + 104) = v77;
    v89 = v156;
    *(v82 + 112) = v154;
    *(v82 + 120) = v89;
    (*(v49 + 32))(v82 + v81, v79, v80);

    v124 = v88;
    v90 = v162;
    sub_1E5B3CC94();
    v91 = v148;
    v92 = v129;
    v155(v129);
    v93 = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958]);
    v94 = v144;
    v95 = v158;
    v96 = v170;
    MEMORY[0x1E6935CB0](v91, v158, v170, v93);
    (*(v150 + 8))(v91, v96);
    (*(v164 + 8))(v90, v95);
    v172 = v93;
    v173 = v171;
    WitnessTable = swift_getWitnessTable();
    v98 = v143;
    sub_1E5AF144C(v143, v94, v78, WitnessTable);
    v99 = *(v145 + 8);
    v99(v94, v78);
    sub_1E5AF144C(v94, v98, v78, WitnessTable);
    sub_1E5B2611C();
    v100 = v159;
    sub_1E5AF7058(v94, v78);
    v99(v94, v78);
    v99(v98, v78);
    (*(v131 + 8))(v92, v130);
LABEL_8:
    v176 = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958]);
    v177 = v171;
    v119 = swift_getWitnessTable();
    v120 = sub_1E5B2611C();
    v174 = v119;
    v175 = v120;
    v121 = v168;
    v122 = swift_getWitnessTable();
    sub_1E5AF144C(v169, v100, v121, v122);
    return (*(v167 + 8))(v100, v121);
  }

  v101 = v162;
  v102 = v164;
  v103 = v159;
  v170 = v38;
  if (v61 == *MEMORY[0x1E699D9C8])
  {
    (*(v49 + 96))(v54, v60);
    v104 = *(v43 + 24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032EC0, &unk_1E5B45B70);
    v105 = *&v54[*(swift_getTupleTypeMetadata2() + 48)];
    v106 = v141;
    v107 = v140;
    v108 = v142;
    (*(v141 + 104))(v140, *MEMORY[0x1E699DA10], v142);
    v109 = sub_1E5B3C734(v107, v105);

    (*(v106 + 8))(v107, v108);
    if (v109)
    {
      v110 = 1;
      v100 = v103;
      v111 = v152;
      v112 = v151;
      v113 = v149;
    }

    else
    {
      sub_1E5B3CC84();
      v114 = v133;
      sub_1E5B3CF74();
      sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958]);
      v115 = v132;
      v116 = v158;
      sub_1E5B3D584();
      (*(v134 + 8))(v114, v135);
      (*(v102 + 8))(v101, v116);
      v112 = v151;
      v113 = v149;
      v111 = v152;
      (v151[4])(v149, v115, v152);
      v110 = 0;
      v100 = v103;
    }

    (v112[7])(v113, v110, 1, v111);
    v117 = sub_1E5B3CAAC(&qword_1ED0329F8, MEMORY[0x1E699D958]);
    v118 = v170;
    v178 = v117;
    v179 = v171;
    swift_getWitnessTable();
    sub_1E5B2611C();
    sub_1E5AF7150(v113, v118, v165);
    sub_1E5AEDBAC(v113);
    (*(*(v104 - 8) + 8))(v54, v104);
    goto LABEL_8;
  }

  result = sub_1E5B3DD94();
  __break(1u);
  return result;
}

uint64_t sub_1E5B3C47C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, void *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (v30 - v20);
  v30[0] = v22;
  v30[1] = v23;
  v30[2] = v24;
  v31 = v25;
  v32 = v19;
  v33 = v26;
  v27 = type metadata accessor for LibraryDataItem();
  a1(a2 + *(v27 + 88));
  sub_1E5AF144C(v21, v17, a3, a10);
  v28 = *(v14 + 8);
  v28(v17, a3);
  sub_1E5AF144C(a4, v21, a3, a10);
  return (v28)(v21, a3);
}

uint64_t sub_1E5B3C5F4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  *&v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v19 = v15;
  v20 = v9;
  v21 = v16;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  sub_1E5B3CCF4();
  sub_1E5B3CCE4();
  a1(v11);
  return (*(v7 + 8))(v11, a5);
}

uint64_t sub_1E5B3C734(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E5B3CD04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1E5B3CAAC(&qword_1ED032EC8, MEMORY[0x1E699DA18]), v9 = sub_1E5B3D954(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
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
      sub_1E5B3CAAC(&qword_1ED032ED0, MEMORY[0x1E699DA18]);
      v17 = sub_1E5B3D974();
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

uint64_t sub_1E5B3C94C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 120);
  v8 = *(v1 + 104);
  return sub_1E5B3C47C(*(v1 + 112), *(v1 + 128), *(v1 + 32), a1, *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
}

uint64_t sub_1E5B3C998()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v9 = *(sub_1E5B3CCF4() - 8);
  return sub_1E5B3C5F4(*(v0 + 112), *(v0 + 120), v0 + ((*(v9 + 80) + 128) & ~*(v9 + 80)), v11, *(&v11 + 1));
}

uint64_t sub_1E5B3CAAC(unint64_t *a1, void (*a2)(uint64_t))
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