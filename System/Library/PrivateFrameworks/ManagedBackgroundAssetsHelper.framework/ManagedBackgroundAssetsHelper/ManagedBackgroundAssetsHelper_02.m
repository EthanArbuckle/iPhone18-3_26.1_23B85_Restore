uint64_t sub_1D300A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerManagerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D300A5B8()
{
  result = qword_1EC749958;
  if (!qword_1EC749958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC749958);
  }

  return result;
}

uint64_t sub_1D300A61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D300A664()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1D30071BC();
}

uint64_t sub_1D300A6E0()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1D300700C();
}

id sub_1D300AA08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D300AA64()
{
  result = sub_1D30E906C();
  qword_1EC75A8D0 = result;
  return result;
}

id sub_1D300AAAC()
{
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75A8D0;

  return v1;
}

uint64_t sub_1D300AB08@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D30E857C();
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E908C();
  v5 = v4;
  if (v3 == sub_1D30E908C() && v5 == v6)
  {

    v10 = 0;
  }

  else
  {
    v8 = sub_1D30E97CC();

    v10 = v8 ^ 1;
  }

  *a1 = v10 & 1;
  return result;
}

void sub_1D300AC00(void *a1)
{
  v2 = [a1 platform];

  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (v2 - 1 <= 0xB)
  {
    v3 = byte_1D30F1BB8[v2 - 1];
  }
}

uint64_t sub_1D300AC5C(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499C0, &qword_1D30F1F18);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499C8, &qword_1D30F1F20);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499D0, &qword_1D30F1F28);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7499D8, &qword_1D30F1F30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300CDA8();
  v20 = v31;
  sub_1D30E992C();
  if (!v20)
  {
    v33 = 0;
    sub_1D300CEA4();
    sub_1D30E96DC();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_1D300CE50();
    sub_1D30E96DC();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_1D300CDFC();
  v22 = v28;
  sub_1D30E96DC();
  v32 = v20;
  sub_1D2FE0630();
  v23 = v30;
  sub_1D30E974C();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D300B030(uint64_t a1)
{
  v2 = sub_1D300CDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B06C(uint64_t a1)
{
  v2 = sub_1D300CDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B0A8(uint64_t a1)
{
  v2 = sub_1D300CDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B0E4(uint64_t a1)
{
  v2 = sub_1D300CDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B120(uint64_t a1)
{
  v2 = sub_1D300CEA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B15C(uint64_t a1)
{
  v2 = sub_1D300CEA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B198(uint64_t a1)
{
  v2 = sub_1D300CE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300B1D4(uint64_t a1)
{
  v2 = sub_1D300CE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D300B210@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D300C3CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D300B258()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B35C()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D300B404()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D300CC9C(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D300CC9C(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D300B68C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300B758()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D300CC9C(&qword_1EC749200, &qword_1EC749210);
  sub_1D30E8F1C();
}

uint64_t sub_1D300B83C()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D80, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D300C378();
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300B944()
{
  swift_getKeyPath();
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  sub_1D300C324();
  sub_1D30E8F1C();
}

uint64_t sub_1D300B9F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtCO29ManagedBackgroundAssetsHelper11Schema1_0_013LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for Schema1_0_0.LicenseRecord()
{
  result = qword_1EE313D50;
  if (!qword_1EE313D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D300BAE8()
{
  result = sub_1D30E8B0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D300BBB4()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE315338);
  __swift_project_value_buffer(v0, qword_1EE315338);
  return sub_1D30E8FAC();
}

char *sub_1D300BC0C()
{
  v9 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord();
  v2 = sub_1D300CD38(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D300CD38(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for Schema1_0_0.LicenseRecord();
  v6 = sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE315330 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D300BD84()
{
  if (qword_1EE313C78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D300BDE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313C80 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE315338);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1D300BE88(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749978, &unk_1D30F1E20);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5 + 2);
  sub_1D2FE02DC(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

void (*sub_1D300BF78(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF6490;
}

uint64_t sub_1D300C00C()
{
  v1 = *v0;
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  return sub_1D30E8EFC();
}

uint64_t sub_1D300C080()
{
  v1 = *v0;
  sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);
  return sub_1D30E8EEC();
}

uint64_t sub_1D300C0F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D300CD38(&qword_1EE313D78, type metadata accessor for Schema1_0_0.LicenseRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_1D300C324()
{
  result = qword_1EC749968;
  if (!qword_1EC749968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749968);
  }

  return result;
}

unint64_t sub_1D300C378()
{
  result = qword_1EC749970;
  if (!qword_1EC749970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749970);
  }

  return result;
}

uint64_t sub_1D300C3CC(uint64_t *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749980, &qword_1D30F1EF0);
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v34 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749988, &qword_1D30F1EF8);
  v38 = *(v40 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749990, &qword_1D30F1F00);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749998, &unk_1D30F1F08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v43 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D300CDA8();
  v19 = v42;
  sub_1D30E990C();
  if (!v19)
  {
    v35 = v7;
    v42 = 0;
    v20 = v40;
    v21 = sub_1D30E96AC();
    v22 = (2 * *(v21 + 16)) | 1;
    v44 = v21;
    v45 = v21 + 32;
    v46 = 0;
    v47 = v22;
    v23 = sub_1D302D668();
    v18 = v15;
    if (v23 == 3 || v46 != v47 >> 1)
    {
      v25 = sub_1D30E94EC();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v27 = &type metadata for Schema1_0_0.LicenseRecord.State;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
    }

    else
    {
      if (v23)
      {
        if (v23 == 1)
        {
          LOBYTE(v48) = 1;
          sub_1D300CE50();
          v24 = v42;
          sub_1D30E95FC();
          if (!v24)
          {
            (*(v38 + 8))(v6, v20);
            (*(v12 + 8))(v15, v11);
            swift_unknownObjectRelease();
            v18 = 1;
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_1D300CDFC();
          v31 = v42;
          sub_1D30E95FC();
          if (!v31)
          {
            v32 = v15;
            sub_1D2FE072C();
            v33 = v37;
            sub_1D30E967C();
            (*(v39 + 8))(0, v33);
            (*(v12 + 8))(v32, v11);
            swift_unknownObjectRelease();
            v18 = v48;
            goto LABEL_11;
          }
        }

        (*(v12 + 8))(v15, v11);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      LOBYTE(v48) = 0;
      sub_1D300CEA4();
      v30 = v42;
      sub_1D30E95FC();
      if (!v30)
      {
        (*(v36 + 8))(v10, v35);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = 0;
        goto LABEL_11;
      }
    }

    (*(v12 + 8))(v18, v11);
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v18;
}

uint64_t sub_1D300C9CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  v0 = *(sub_1D30E8F8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D30EF4A0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  v4 = *(sub_1D30E8FCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  v7 = sub_1D30E8FDC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D300CD38(&qword_1EE3140E0, MEMORY[0x1E697BD30]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v3;
}

uint64_t sub_1D300CC80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D300B758();
}

uint64_t sub_1D300CC9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D300CD38(a2, type metadata accessor for LicenseRecord.ElementID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D300CD38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper11Schema1_0_0O13LicenseRecordC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D300CDA8()
{
  result = qword_1EC7499A0;
  if (!qword_1EC7499A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499A0);
  }

  return result;
}

unint64_t sub_1D300CDFC()
{
  result = qword_1EC7499A8;
  if (!qword_1EC7499A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499A8);
  }

  return result;
}

unint64_t sub_1D300CE50()
{
  result = qword_1EC7499B0;
  if (!qword_1EC7499B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499B0);
  }

  return result;
}

unint64_t sub_1D300CEA4()
{
  result = qword_1EC7499B8;
  if (!qword_1EC7499B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499B8);
  }

  return result;
}

unint64_t sub_1D300CF3C()
{
  result = qword_1EC7499E0;
  if (!qword_1EC7499E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499E0);
  }

  return result;
}

unint64_t sub_1D300CF94()
{
  result = qword_1EC7499E8;
  if (!qword_1EC7499E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499E8);
  }

  return result;
}

unint64_t sub_1D300CFEC()
{
  result = qword_1EC7499F0;
  if (!qword_1EC7499F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499F0);
  }

  return result;
}

unint64_t sub_1D300D044()
{
  result = qword_1EC7499F8;
  if (!qword_1EC7499F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7499F8);
  }

  return result;
}

unint64_t sub_1D300D09C()
{
  result = qword_1EC749A00;
  if (!qword_1EC749A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A00);
  }

  return result;
}

unint64_t sub_1D300D0F4()
{
  result = qword_1EC749A08;
  if (!qword_1EC749A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A08);
  }

  return result;
}

unint64_t sub_1D300D14C()
{
  result = qword_1EC749A10;
  if (!qword_1EC749A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A10);
  }

  return result;
}

unint64_t sub_1D300D1A4()
{
  result = qword_1EC749A18;
  if (!qword_1EC749A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A18);
  }

  return result;
}

unint64_t sub_1D300D1FC()
{
  result = qword_1EC749A20;
  if (!qword_1EC749A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A20);
  }

  return result;
}

unint64_t sub_1D300D254()
{
  result = qword_1EC749A28;
  if (!qword_1EC749A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A28);
  }

  return result;
}

uint64_t AssetPackRecord.GlobalID.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetPackRecord.GlobalID.appTeamID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssetPackRecord.GlobalID.assetPackID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t AssetPackRecord.GlobalID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[2];
    v10 = 0;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0xD00000000000001CLL, 0x80000001D30EBBE0);
    MEMORY[0x1D38B2610](v1, v2);
    MEMORY[0x1D38B2610](0x6165742070706120, 0xEE00203A4449206DLL);
    v7 = v6;
    v8 = v4;
  }

  else
  {
    sub_1D30E948C();

    v10 = 0xD00000000000001CLL;
    v7 = v1;
    v8 = v2;
  }

  MEMORY[0x1D38B2610](v7, v8);
  MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EBC00);
  MEMORY[0x1D38B2610](v3, v5);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return v10;
}

void __swiftcall AssetPackRecord.GlobalID.init(appBundleID:appTeamID:assetPackID:)(ManagedBackgroundAssetsHelper::AssetPackRecord::GlobalID *__return_ptr retstr, Swift::String appBundleID, Swift::String appTeamID, Swift::String assetPackID)
{
  retstr->appBundleID = appBundleID;
  retstr->appTeamID.value = appTeamID;
  retstr->assetPackID = assetPackID;
}

void __swiftcall AssetPackRecord.GlobalID.init(appBundleID:appTeamID:assetPackID:)(ManagedBackgroundAssetsHelper::AssetPackRecord::GlobalID *__return_ptr retstr, Swift::String appBundleID, Swift::String_optional appTeamID, Swift::String assetPackID)
{
  retstr->appBundleID = appBundleID;
  retstr->appTeamID = appTeamID;
  retstr->assetPackID = assetPackID;
}

uint64_t AssetPackRecord.GlobalID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  sub_1D30E90BC();

  return sub_1D30E90BC();
}

uint64_t static AssetPackRecord.GlobalID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v5 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v5 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v3 == v8)
    {
LABEL_6:
      if (v4 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = 1;
    if (v3 == v8)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

LABEL_8:
  if ((v6 != v10 || v7 != v11) && (sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  return v13 & 1;
}

uint64_t static AssetPackRecord.GlobalID.< infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = *a1, (sub_1D30E97CC() & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 0;
    }
  }

  return sub_1D30E97CC();
}

uint64_t sub_1D300D6C8()
{
  v1 = 0x496D616554707061;
  if (*v0 != 1)
  {
    v1 = 0x6361507465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1D300D730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D3011974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D300D758(uint64_t a1)
{
  v2 = sub_1D300D994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300D794(uint64_t a1)
{
  v2 = sub_1D300D994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackRecord.GlobalID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A30, &qword_1D30F2310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300D994();
  sub_1D30E992C();
  v18 = 0;
  v13 = v15[5];
  sub_1D30E970C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1D30E96EC();
  v16 = 2;
  sub_1D30E970C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D300D994()
{
  result = qword_1EC749A38;
  if (!qword_1EC749A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A38);
  }

  return result;
}

uint64_t AssetPackRecord.GlobalID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t AssetPackRecord.GlobalID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A40, &qword_1D30F2318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300D994();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D30E963C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1D30E961C();
  v23 = v14;
  v25 = 2;
  v15 = sub_1D30E963C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D300DCF8(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = *a1, (sub_1D30E97CC() & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 0;
    }
  }

  return sub_1D30E97CC();
}

BOOL sub_1D300DDC4(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a2 == *a1 && a2[1] == a1[1];
  if (v6 || (v7 = *a2, v8 = a2[1], (sub_1D30E97CC())) && (v4 == v2 ? (v9 = v5 == v3) : (v9 = 0), v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1D30E97CC();
  }

  return (v10 & 1) == 0;
}

BOOL sub_1D300DE78(uint64_t *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = *a1, (sub_1D30E97CC())) && (v2 == v4 ? (v8 = v3 == v5) : (v8 = 0), v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1D30E97CC();
  }

  return (v9 & 1) == 0;
}

uint64_t sub_1D300DF2C(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = *a2 == *a1 && a2[1] == a1[1];
  if (v6 || (v7 = *a2, v8 = a2[1], (sub_1D30E97CC() & 1) != 0))
  {
    if (v4 == v2 && v5 == v3)
    {
      return 0;
    }
  }

  return sub_1D30E97CC();
}

uint64_t sub_1D300DFFC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D300E064()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  sub_1D30E90BC();

  return sub_1D30E90BC();
}

uint64_t sub_1D300E0B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  sub_1D30E98AC();
  sub_1D30E90BC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D300E118(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v5 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v5 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v3 == v8)
    {
LABEL_6:
      if (v4 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = 1;
    if (v3 == v8)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

LABEL_8:
  if ((v6 != v10 || v7 != v11) && (sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_11;
  }

  return v13 & 1;
}

uint64_t AssetPackRecord.StaticRepresentation.globalID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t AssetPackRecord.StaticRepresentation.rootDirectoryComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetPackRecord.StaticRepresentation(0) + 28);
  v4 = sub_1D30E8D5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AssetPackRecord.StaticRepresentation.description.getter()
{
  v1 = v0;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000024, 0x80000001D30EBC20);
  v12 = *v0;
  v14 = v0[1];
  v15 = *(v0 + 1);
  v16 = v0[4];
  v17 = v0[5];
  v2 = AssetPackRecord.GlobalID.description.getter();
  MEMORY[0x1D38B2610](v2);

  MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
  v3 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v4 = v0 + v3[5];
  v5 = AssetPackHost.description.getter();
  MEMORY[0x1D38B2610](v5);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
  v13 = *(v1 + v3[6]);
  v6 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v6);

  MEMORY[0x1D38B2610](0xD00000000000001BLL, 0x80000001D30EBC50);
  v7 = v3[7];
  sub_1D30E8D5C();
  sub_1D30117E0(&qword_1EC749A48, MEMORY[0x1E69E8380]);
  v8 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v8);

  MEMORY[0x1D38B2610](0x6961766120736920, 0xEF203A656C62616CLL);
  if (*(v1 + v3[8]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v3[8]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v9, v10);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D300E5F8()
{
  v1 = *v0;
  v2 = 0x44496C61626F6C67;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x616C696176417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1953722216;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D300E698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D3011AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D300E6CC(uint64_t a1)
{
  v2 = sub_1D301178C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D300E708(uint64_t a1)
{
  v2 = sub_1D301178C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A50, &qword_1D30F2320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D301178C();
  sub_1D30E992C();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[5];
  v21 = *v3;
  v22 = v11;
  v23 = v12;
  v24 = *(v3 + 3);
  v25 = v13;
  v20[15] = 0;
  sub_1D2FF6708();

  sub_1D30E974C();
  if (v2)
  {
  }

  else
  {

    v14 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    v15 = v14[5];
    LOBYTE(v21) = 1;
    type metadata accessor for AssetPackHost();
    sub_1D30117E0(&qword_1EC749A60, type metadata accessor for AssetPackHost);
    sub_1D30E974C();
    v16 = *(v3 + v14[6]);
    LOBYTE(v21) = 2;
    sub_1D30E973C();
    v17 = v14[7];
    LOBYTE(v21) = 3;
    sub_1D30E8D5C();
    sub_1D30117E0(&qword_1EC749A68, MEMORY[0x1E69E8380]);
    sub_1D30E974C();
    v18 = *(v3 + v14[8]);
    LOBYTE(v21) = 4;
    sub_1D30E971C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AssetPackRecord.StaticRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1D30E8D5C();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AssetPackHost();
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A70, &qword_1D30F2328);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D301178C();
  v19 = v38;
  sub_1D30E990C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = a1;
  v20 = v17;
  v44 = 0;
  sub_1D2FF67A4();
  sub_1D30E967C();
  v21 = v40;
  v22 = v42;
  v23 = v43;
  *v17 = v39;
  *(v17 + 1) = v21;
  *(v17 + 1) = v41;
  *(v17 + 4) = v22;
  *(v17 + 5) = v23;
  LOBYTE(v39) = 1;
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost);
  sub_1D30E967C();
  sub_1D3011828(v9, &v17[v14[5]]);
  LOBYTE(v39) = 2;
  v24 = sub_1D30E966C();
  v25 = v34;
  *&v17[v14[6]] = v24;
  LOBYTE(v39) = 3;
  sub_1D30117E0(&qword_1EC749A80, MEMORY[0x1E69E8380]);
  v26 = v32;
  v27 = v33;
  sub_1D30E967C();
  v28 = v38;
  v35 = v14;
  (*(v25 + 32))(v20 + v14[7], v26, v27);
  LOBYTE(v39) = 4;
  v29 = v37;
  LOBYTE(v26) = sub_1D30E964C();
  (*(v36 + 8))(v13, v29);
  *(v20 + *(v35 + 32)) = v26 & 1;
  sub_1D301188C(v20, v31, type metadata accessor for AssetPackRecord.StaticRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1D30118F4(v20, type metadata accessor for AssetPackRecord.StaticRepresentation);
}

uint64_t sub_1D300F098()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();
}

double sub_1D300F1A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  *a2 = v4;
  *(a2 + 8) = v5;
  result = *&v6;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1D300F2C0(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v2 = *a2;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300F39C(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF6708();
  sub_1D30E8F1C();
}

uint64_t sub_1D300F454()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost);
  sub_1D30E8F0C();
}

uint64_t sub_1D300F58C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost);
  sub_1D30E8F0C();
}

uint64_t sub_1D300F6C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AssetPackHost();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D301188C(a1, v7, type metadata accessor for AssetPackHost);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8ADC();

  return sub_1D30118F4(v7, type metadata accessor for AssetPackHost);
}

uint64_t sub_1D300F810()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30117E0(&qword_1EC749A60, type metadata accessor for AssetPackHost);
  sub_1D30E8F1C();
}

uint64_t sub_1D300F8E8()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300F9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D300FAF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300FBC4()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D300FC6C()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D300FD70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D300FE7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D300FF54()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D3010008@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v10 = v1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  sub_1D30E8D6C();
  v7 = sub_1D30E8D5C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D30101E8()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  return v1;
}

uint64_t sub_1D30102EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F0C();

  *a2 = v5;
  return result;
}

uint64_t sub_1D30103F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D30104C8()
{
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8F1C();
}

__n128 sub_1D3010570@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  v4 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v5 = v4[5];
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost);
  sub_1D30E8F0C();

  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  sub_1D3010008(a1 + v4[7]);
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  result = v8;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + v4[6]) = v2;
  *(a1 + v4[8]) = v2;
  return result;
}

uint64_t AssetPackRecord.description.getter()
{
  v1 = type metadata accessor for AssetPackHost();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D30E948C();
  v24 = v19;
  v25 = v20;
  MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30EBC70);
  v19 = v0;
  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v14 = v19;
  v15 = v20;
  v16 = v21;
  v13 = v22;
  v17 = v22;
  v18 = v23;
  v5 = AssetPackRecord.GlobalID.description.getter();
  v7 = v6;

  MEMORY[0x1D38B2610](v5, v7);

  MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
  v19 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30117E0(&qword_1EC749A78, type metadata accessor for AssetPackHost);
  sub_1D30E8F0C();

  v8 = AssetPackHost.description.getter();
  MEMORY[0x1D38B2610](v8);

  sub_1D30118F4(v4, type metadata accessor for AssetPackHost);
  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
  v19 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v9 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v9);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EBCA0);
  v19 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  MEMORY[0x1D38B2610](v19, v20);

  MEMORY[0x1D38B2610](0x6961766120736920, 0xEF203A656C62616CLL);
  v19 = v0;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  if (v19)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v19)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1D38B2610](v10, v11);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return v24;
}

uint64_t AssetPackRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*AssetPackRecord.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF5E50;
}

uint64_t AssetPackRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AssetPackRecord.init(backingData:)(a1);
  return v5;
}

uint64_t *AssetPackRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A88, &qword_1D30FD030);
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_1D30E8ECC();
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  sub_1D30E8DEC();

  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  sub_1D2FE02DC(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t AssetPackRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetPackRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AssetPackRecord.hashValue.getter()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30117E0(&qword_1EE313608, type metadata accessor for AssetPackRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t sub_1D3011224(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AssetPackRecord.init(backingData:)(a1);
  return v5;
}

uint64_t (*sub_1D3011264(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

uint64_t sub_1D30112F8()
{
  v1 = *v0;
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  return sub_1D30E8EFC();
}

uint64_t sub_1D301136C()
{
  v1 = *v0;
  sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  return sub_1D30E8EEC();
}

uint64_t sub_1D30113E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D30117E0(&qword_1EE313610, type metadata accessor for AssetPackRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

BOOL _s29ManagedBackgroundAssetsHelper15AssetPackRecordC20StaticRepresentationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[4];
  v12 = a2[5];
  if (v6 && (v13 = a2[3]) != 0 && (a1[2] != a2[2] || v6 != v13))
  {
    v19 = a1[5];
    v14 = sub_1D30E97CC();
    if (v4 == v10)
    {
      v8 = v19;
      if (v5 == v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = v19;
    }
  }

  else
  {
    v14 = 1;
    if (v4 == v10 && v5 == v9)
    {
      if (v7 == v11 && v8 == v12)
      {
        goto LABEL_19;
      }

LABEL_17:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }
  }

  v15 = v8;
  v16 = sub_1D30E97CC();
  v8 = v15;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v7 != v11 || v8 != v12)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v14)
  {
LABEL_19:
    v17 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    return *(a1 + *(v17 + 24)) == *(a2 + *(v17 + 24));
  }

  return 0;
}

uint64_t _s29ManagedBackgroundAssetsHelper15AssetPackRecordC20StaticRepresentationV1loiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v17 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  if (v6 && (v12 = a2[3]) != 0 && (a1[2] != a2[2] || v6 != v12))
  {
    v13 = sub_1D30E97CC();
    if (v4 == v8 && v5 == v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 1;
    if (v4 == v8 && v5 == v9)
    {
      if (v7 == v10)
      {
        v14 = a1[5];
        if (v17 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      if ((sub_1D30E97CC() & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  if ((sub_1D30E97CC() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v7 != v10 || v17 != v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v13)
  {
LABEL_17:
    v15 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    return *(a1 + *(v15 + 24)) < *(a2 + *(v15 + 24));
  }

LABEL_18:
  if (v4 == v8 && v5 == v9 || (sub_1D30E97CC()) && v7 == v10 && v17 == v11)
  {
    return 0;
  }

  return sub_1D30E97CC();
}

unint64_t sub_1D301178C()
{
  result = qword_1EC749A58;
  if (!qword_1EC749A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A58);
  }

  return result;
}

uint64_t sub_1D30117E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3011828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPackHost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D301188C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D30118F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3011974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D616554707061 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361507465737361 && a2 == 0xEB0000000044496BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D3011AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EBD30 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t _s29ManagedBackgroundAssetsHelper15AssetPackRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyI0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  v0 = *(sub_1D30E8F8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D30F2300;
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v3;
}

unint64_t sub_1D3011E9C()
{
  result = qword_1EE314428;
  if (!qword_1EE314428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314428);
  }

  return result;
}

uint64_t sub_1D30120F0()
{
  result = sub_1D30E8B0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D3012204()
{
  result = type metadata accessor for AssetPackHost();
  if (v1 <= 0x3F)
  {
    result = sub_1D30E8D5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackRecord.StaticRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPackRecord.StaticRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D301241C()
{
  result = qword_1EC749A98;
  if (!qword_1EC749A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749A98);
  }

  return result;
}

unint64_t sub_1D3012474()
{
  result = qword_1EC749AA0;
  if (!qword_1EC749AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AA0);
  }

  return result;
}

unint64_t sub_1D30124CC()
{
  result = qword_1EC749AA8;
  if (!qword_1EC749AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AA8);
  }

  return result;
}

unint64_t sub_1D3012524()
{
  result = qword_1EC749AB0;
  if (!qword_1EC749AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AB0);
  }

  return result;
}

unint64_t sub_1D301257C()
{
  result = qword_1EC749AB8;
  if (!qword_1EC749AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AB8);
  }

  return result;
}

unint64_t sub_1D30125D4()
{
  result = qword_1EC749AC0;
  if (!qword_1EC749AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AC0);
  }

  return result;
}

uint64_t sub_1D3012628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D30104C8();
}

uint64_t sub_1D3012648()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D300FF54();
}

uint64_t sub_1D3012668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D300FBC4();
}

uint64_t sub_1D3012684()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D300F810();
}

uint64_t sub_1D30126D0()
{
  v0 = sub_1D30E8F9C();
  __swift_allocate_value_buffer(v0, qword_1EE3152F8);
  __swift_project_value_buffer(v0, qword_1EE3152F8);
  return sub_1D30E8FAC();
}

char *sub_1D3012728()
{
  v9 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30EE910;
  v1 = type metadata accessor for AppReviewRecord();
  v2 = sub_1D30129A4(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for AssetPackRecord(0);
  v4 = sub_1D30129A4(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for LicenseRecord(0);
  v6 = sub_1D30129A4(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  result = sub_1D30D7C08(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = v5;
  *(result + 9) = v6;
  qword_1EE3152F0 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D30128A0()
{
  if (qword_1EE313B28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D30128FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE313B30 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8F9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE3152F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D30129A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D30129EC()
{
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D3012AF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D3012BFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8ADC();
}

uint64_t AppReviewRecord.StaticRepresentation.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t AppReviewRecord.StaticRepresentation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D30E948C();

  MEMORY[0x1D38B2610](v1, v2);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t static AppReviewRecord.StaticRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t static AppReviewRecord.StaticRepresentation.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D3012E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3012E90(uint64_t a1)
{
  v2 = sub_1D3013044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3012ECC(uint64_t a1)
{
  v2 = sub_1D3013044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppReviewRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AC8, &qword_1D30F2B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E992C();
  sub_1D30E970C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D3013044()
{
  result = qword_1EC749AD0;
  if (!qword_1EC749AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AD0);
  }

  return result;
}

uint64_t AppReviewRecord.StaticRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AD8, &qword_1D30F2B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E990C();
  if (!v2)
  {
    v11 = sub_1D30E963C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D3013224(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AC8, &qword_1D30F2B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3013044();
  sub_1D30E992C();
  sub_1D30E970C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D3013360(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D3013390(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1D30E97CC() ^ 1) & 1;
  }
}

uint64_t sub_1D30133D8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1D30E97CC() ^ 1) & 1;
  }
}

uint64_t sub_1D301342C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

unint64_t sub_1D3013450()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D30E948C();

  MEMORY[0x1D38B2610](v1, v2);
  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_1D30134DC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D30E97CC();
  }
}

uint64_t sub_1D301350C()
{
  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8F1C();
}

unint64_t AppReviewRecord.description.getter()
{
  sub_1D30E948C();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8F0C();

  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t type metadata accessor for AppReviewRecord()
{
  result = qword_1EE3136E0;
  if (!qword_1EE3136E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppReviewRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*AppReviewRecord.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF5E50;
}

uint64_t *AppReviewRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5 + 2);
  sub_1D2FE02DC(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t *AppReviewRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  sub_1D2FE02DC(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t AppReviewRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AppReviewRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppReviewRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AppReviewRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AppReviewRecord.hashValue.getter()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D3014680(&qword_1EE313700, type metadata accessor for AppReviewRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t *sub_1D3013CE0(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749AE0, &qword_1D30F2B48);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5 + 2);
  sub_1D2FE02DC(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t (*sub_1D3013DD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

uint64_t sub_1D3013E64()
{
  v1 = *v0;
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  return sub_1D30E8EFC();
}

uint64_t sub_1D3013ED8()
{
  v1 = *v0;
  sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  return sub_1D30E8EEC();
}

uint64_t sub_1D3013F4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D3014680(&qword_1EE313708, type metadata accessor for AppReviewRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

uint64_t _s29ManagedBackgroundAssetsHelper15AppReviewRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyI0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  v0 = *(sub_1D30E8F8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D30EE930;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  v4 = *(sub_1D30E8FCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  v7 = sub_1D30E8FDC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D3014680(&qword_1EE3140E0, MEMORY[0x1E697BD30]);
  sub_1D30E8F7C();
  return v3;
}

unint64_t sub_1D30141E4()
{
  result = qword_1EC749AE8;
  if (!qword_1EC749AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AE8);
  }

  return result;
}

uint64_t sub_1D30143F0()
{
  result = sub_1D30E8B0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D30144C4(uint64_t a1, int a2)
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

uint64_t sub_1D301450C(uint64_t result, int a2, int a3)
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

unint64_t sub_1D301457C()
{
  result = qword_1EC749AF0;
  if (!qword_1EC749AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AF0);
  }

  return result;
}

unint64_t sub_1D30145D4()
{
  result = qword_1EC749AF8;
  if (!qword_1EC749AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749AF8);
  }

  return result;
}

unint64_t sub_1D301462C()
{
  result = qword_1EC749B00;
  if (!qword_1EC749B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B00);
  }

  return result;
}

uint64_t sub_1D3014680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D30146C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D301350C();
}

uint64_t MBAManifestDataSource.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0x6976655220707041;
      case 4:
        return 0xD000000000000012;
      case 5:
        return 0xD000000000000014;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x726F745320707041;
      case 1:
        return 0x67696C4674736554;
      case 2:
        return 0x6143206C61636F4CLL;
    }
  }

  result = sub_1D30E957C();
  __break(1u);
  return result;
}

unint64_t sub_1D301482C()
{
  result = qword_1EC749B08;
  if (!qword_1EC749B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749B10, &qword_1D30F2F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B08);
  }

  return result;
}

unint64_t sub_1D3014958()
{
  result = qword_1EC749B18;
  if (!qword_1EC749B18)
  {
    type metadata accessor for ManifestDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749B18);
  }

  return result;
}

uint64_t sub_1D30149C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D78);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3014AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D78);
  sub_1D300C378();
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3014BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D3015860(&qword_1EE313D80);
  sub_1D30E8ADC();
}

unint64_t sub_1D3014C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B50, &qword_1D30F30E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D30EF4A0;
  v1 = sub_1D3015764();
  *(v0 + 32) = &type metadata for Schema1_0_0;
  *(v0 + 40) = v1;
  v2 = sub_1D30157B8();
  *(v0 + 48) = &type metadata for Schema1_0_1;
  *(v0 + 56) = v2;
  result = sub_1D301580C();
  *(v0 + 64) = &type metadata for Schema1_0_2;
  *(v0 + 72) = result;
  qword_1EE315350 = v0;
  return result;
}

char *sub_1D3014D18()
{
  result = sub_1D3014D38();
  qword_1EE3152E8 = result;
  return result;
}

char *sub_1D3014D38()
{
  v0 = sub_1D30E8E6C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v24 - v6);
  v8 = sub_1D3015764();
  v9 = sub_1D30157B8();
  *v7 = &type metadata for Schema1_0_0;
  v7[1] = v8;
  v7[2] = &type metadata for Schema1_0_1;
  v7[3] = v9;
  v27 = v9;
  v7[4] = sub_1D3014FB0;
  v7[5] = 0;
  v7[6] = sub_1D3015554;
  v7[7] = 0;
  v10 = *MEMORY[0x1E697BBB0];
  v25 = v1[13];
  v25(v7, v10, v0);
  v11 = sub_1D30D7E38(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1D30D7E38(v12 > 1, v13 + 1, 1, v11);
  }

  v26 = v13 + 1;
  *(v11 + 2) = v13 + 1;
  v16 = v1[4];
  v14 = v1 + 4;
  v15 = v16;
  v17 = (*(v14 + 48) + 32) & ~*(v14 + 48);
  v18 = v14[5];
  v16(&v11[v17 + v18 * v13], v7, v0);
  v19 = sub_1D301580C();
  v20 = v27;
  *v5 = &type metadata for Schema1_0_1;
  v5[1] = v20;
  v5[2] = &type metadata for Schema1_0_2;
  v5[3] = v19;
  v25(v5, *MEMORY[0x1E697BBA8], v0);
  v21 = *(v11 + 3);
  v22 = v13 + 2;
  if (v22 > (v21 >> 1))
  {
    v11 = sub_1D30D7E38(v21 > 1, v22, 1, v11);
  }

  *(v11 + 2) = v22;
  v15(&v11[v17 + v18 * v26], v5, v0);
  return v11;
}

uint64_t sub_1D3014FB0(uint64_t a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B38, &qword_1D30F3080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B40, &qword_1D30F3088);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  if (qword_1EC749020 != -1)
  {
    swift_once();
  }

  v11 = sub_1D30E8B3C();
  v31 = __swift_project_value_buffer(v11, qword_1EC749B20);
  v12 = sub_1D30E8B1C();
  v13 = sub_1D30E92BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2FD9000, v12, v13, "Migrating the database from Schema 1.0.0 to Schema 1.0.1…", v14, 2u);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B48, &qword_1D30F3090);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  type metadata accessor for Schema1_0_0.LicenseRecord();
  v16 = sub_1D3015860(&qword_1EE313D78);
  sub_1D30E8EBC();
  v17 = sub_1D30E8E1C();
  result = (*(v7 + 8))(v10, v6);
  if (!v1)
  {
    v20 = v17;
    if (v17 >> 62)
    {
      result = sub_1D30E958C();
      v35 = 0;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = 0;
      if (result)
      {
LABEL_8:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v21 = 0;
        v33 = v17 & 0xC000000000000001;
        *&v19 = 134217984;
        v28 = v19;
        v32 = v16;
        v30 = v17;
        v34 = result;
        do
        {
          if (v33)
          {
            v22 = MEMORY[0x1D38B29E0](v21, v20);
          }

          else
          {
            v22 = *(v20 + 8 * v21 + 32);
          }

          v36 = v22;
          swift_getKeyPath();
          sub_1D3015860(&qword_1EE313D80);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D300C378();
          sub_1D30E8F0C();

          if (v36 == 1)
          {
            v23 = sub_1D30E927C();

            v24 = sub_1D30E8B1C();
            if (os_log_type_enabled(v24, v23))
            {
              v25 = swift_slowAlloc();
              *v25 = v28;
              v36 = v22;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              *(v25 + 4) = v36;

              _os_log_impl(&dword_1D2FD9000, v24, v23, "Marking the requested license with the ID “%llu” as “pending”…", v25, 0xCu);
              MEMORY[0x1D38B3760](v25, -1, -1);
            }

            else
            {
            }

            v36 = v22;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v28 - 2) = v22;
            *(&v28 - 1) = 0;
            v27 = v35;
            sub_1D30E8ADC();
            v35 = v27;

            v20 = v30;
          }

          else
          {
            sub_1D30158A4(v36);
          }

          ++v21;
        }

        while (v34 != v21);
      }
    }

    return sub_1D30E8E0C();
  }

  return result;
}

void sub_1D3015554()
{
  if (qword_1EC749020 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EC749B20);
  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "The database was migrated to Schema 1.0.1.", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }
}

uint64_t sub_1D3015634()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749B20);
  __swift_project_value_buffer(v0, qword_1EC749B20);
  return sub_1D30E8B2C();
}

uint64_t sub_1D3015700(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

unint64_t sub_1D3015764()
{
  result = qword_1EE313C68;
  if (!qword_1EE313C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313C68);
  }

  return result;
}

unint64_t sub_1D30157B8()
{
  result = qword_1EE313B38;
  if (!qword_1EE313B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313B38);
  }

  return result;
}

unint64_t sub_1D301580C()
{
  result = qword_1EE313B20;
  if (!qword_1EE313B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE313B20);
  }

  return result;
}

uint64_t sub_1D3015860(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Schema1_0_0.LicenseRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D30158A4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1D30158B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D300B944();
}

uint64_t sub_1D30158D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D300B35C();
}

void sub_1D3015904()
{
  v1 = v0[4];
  v2 = v0[2];
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v0[1] < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*v0)
  {
    swift_arrayDestroy();

LABEL_12:
    JUMPOUT(0x1D38B3760);
  }
}

uint64_t sub_1D3015990(uint64_t result)
{
  v2 = v1[2];
  v3 = v2 + 1;
  v4 = __OFADD__(v2, 1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v6 = v1[3];
  if (v6 >= v3)
  {
LABEL_13:
    v8 = *v1 + 56 * v2;
    v9 = *(v5 + 16);
    *v8 = *v5;
    *(v8 + 16) = v9;
    *(v8 + 32) = *(v5 + 32);
    *(v8 + 48) = *(v5 + 48);
    if (!v4)
    {
      v1[2] = v3;
      return result;
    }

    goto LABEL_16;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    if (2 * v6 <= v3)
    {
      v7 = v2 + 1;
    }

    else
    {
      v7 = 2 * v6;
    }

    result = sub_1D3040908(v7);
    v2 = v1[2];
    v3 = v2 + 1;
    v4 = __OFADD__(v2, 1);
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D3015A2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  if (v3 < v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 > result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v2;
  v6 = v2[1];
  v7 = (*v2 + 56 * result);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  *a2 = *v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = *(v7 + 24);
  *(a2 + 40) = *(v7 + 40);
  if (result < -1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v3 - 1;
  if (!v5)
  {
    goto LABEL_11;
  }

  v11 = result + 1;
  if (v3 == result + 1)
  {
    goto LABEL_11;
  }

  v12 = v3 - v11;
  if (v10 - result >= v12)
  {
    result = memmove(v7, (v5 + 56 * v11), 56 * v12);
LABEL_11:
    v2[2] = v10;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D3015B04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D3015C18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8ADC();
}

unint64_t sub_1D3015CE8(uint64_t a1)
{
  v2 = sub_1D30E88CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a1 + 16);
  if (result == 2)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    sub_1D30E955C();
    MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
    v15 = v14 + *(v3 + 72);
    goto LABEL_8;
  }

  v8 = result - 1;
  if (result == 1)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
    v13 = *(v3 + 80);
LABEL_8:
    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return v30;
  }

  if (!result)
  {
    return result;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  result = sub_1D3016694(1uLL, a1);
  v12 = (v11 >> 1) - v10;
  if (v11 >> 1 == v10)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = result;
    v27 = v8;
    if ((v11 >> 1) <= v10)
    {
      __break(1u);
      return result;
    }

    v16 = v9;
    v17 = v10;
    v24 = a1;
    v25 = v3;
    v18 = v3 + 16;
    v19 = *(v3 + 16);
    v20 = *(v18 + 56);

    v21 = v16 + v17 * v20;
    do
    {
      v19(v6, v21, v2);
      v28 = 0;
      v29 = 0xE000000000000000;
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      sub_1D30E955C();
      (*(v18 - 8))(v6, v2);
      MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
      MEMORY[0x1D38B2610](v28, v29);

      v21 += v20;
      --v12;
    }

    while (v12);
    swift_unknownObjectRelease();
    a1 = v24;
    v3 = v25;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
  v22 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v23 = *(v3 + 72);
  sub_1D30E955C();
  MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
  MEMORY[0x1D38B2610](v28, v29);

  return v30;
}

uint64_t sub_1D3016078(void *a1)
{
  v3 = a1 + 2;
  result = a1[2];
  if (result)
  {
    if (result == 2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      v14 = a1[4];
      v17 = a1[5];
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
      v15 = a1[6];
      v18 = a1[7];
    }

    else
    {
      v4 = result - 1;
      if (result != 1)
      {
        v9 = v3;
        v10 = result;

        v5 = a1 + 5;
        do
        {
          v7 = *(v5 - 1);
          v6 = *v5;

          MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
          sub_1D30E955C();

          MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          v5 += 2;
          --v4;
        }

        while (v4);
        swift_unknownObjectRelease();
        MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
        v8 = &v9[2 * v10];
        v11 = *v8;
        v12 = v8[1];
        sub_1D30E955C();
        MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
        MEMORY[0x1D38B2610](0, 0xE000000000000000);

        return 0;
      }

      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      v13 = a1[4];
      v16 = a1[5];
    }

    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_1D3016354(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (result == 2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      v14 = *(a1 + 32);
      v18 = *(a1 + 40);
      v22 = *(a1 + 48);
      v26 = *(a1 + 64);
      v30 = *(a1 + 72);
      sub_1D30E955C();
      MEMORY[0x1D38B2610](0x20646E61209D80E2, 0xAB000000009C80E2);
      v15 = *(a1 + 80);
      v19 = *(a1 + 88);
      v23 = *(a1 + 96);
      v27 = *(a1 + 112);
      v31 = *(a1 + 120);
    }

    else
    {
      v3 = result - 1;
      if (result != 1)
      {
        v12 = result;

        v4 = (a1 + 72);
        do
        {
          v5 = *(v4 - 5);
          v6 = *(v4 - 4);
          v7 = *(v4 - 3);
          v8 = *(v4 - 2);
          v9 = *(v4 - 1);
          v10 = *v4;

          MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
          sub_1D30E955C();

          MEMORY[0x1D38B2610](0x202C9D80E2, 0xA500000000000000);
          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          v4 += 6;
          --v3;
        }

        while (v3);
        swift_unknownObjectRelease();
        MEMORY[0x1D38B2610](0x9C80E220646E61, 0xA700000000000000);
        v11 = (a1 + 48 * v12);
        v16 = *(v11 - 2);
        v20 = *(v11 - 1);
        v24 = *v11;
        v28 = *(v11 + 2);
        v32 = *(v11 + 3);
        sub_1D30E955C();
        MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
        MEMORY[0x1D38B2610](0, 0xE000000000000000);

        return 0;
      }

      MEMORY[0x1D38B2610](10256610, 0xA300000000000000);
      v13 = *(a1 + 32);
      v17 = *(a1 + 40);
      v21 = *(a1 + 48);
      v25 = *(a1 + 64);
      v29 = *(a1 + 72);
    }

    sub_1D30E955C();
    MEMORY[0x1D38B2610](10322146, 0xA300000000000000);
    return 0;
  }

  return result;
}

unint64_t sub_1D3016694(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(sub_1D30E88CC() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

id sub_1D3016728()
{
  result = [objc_opt_self() defaultCenter];
  qword_1EC749B58 = result;
  return result;
}

uint64_t sub_1D3016764()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313888);
  __swift_project_value_buffer(v0, qword_1EE313888);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30167E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_defaultActor_initialize();
  *(v3 + 136) = sub_1D30347D0(MEMORY[0x1E69E7CC0]);
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v10 = sub_1D30E8B3C();
  __swift_project_value_buffer(v10, qword_1EE313888);
  v11 = sub_1D30E928C();

  v12 = sub_1D30E8B1C();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136446722;
    type metadata accessor for ContainerManager();

    v14 = sub_1D30E909C();
    v16 = sub_1D2FFEA04(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    type metadata accessor for CertificateManager();

    v17 = sub_1D30E909C();
    v19 = sub_1D2FFEA04(v17, v18, &v29);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2082;
    sub_1D30E8EAC();

    v20 = sub_1D30E909C();
    v22 = sub_1D2FFEA04(v20, v21, &v29);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1D2FD9000, v12, v11, "Init container manager: %{public}s certificate manager: %{public}s model container: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v28, -1, -1);
    v23 = v13;
    v5 = v4;
    MEMORY[0x1D38B3760](v23, -1, -1);
  }

  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;

  v24 = sub_1D30E8B1C();
  v25 = sub_1D30E92BC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D2FD9000, v24, v25, "Starting App License Delivery…", v26, 2u);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  sub_1D2FFDE08(sub_1D3029914);

  if (v5)
  {

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3016B9C()
{
  v1 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EE313888);
  v4 = sub_1D30E928C();
  v5 = sub_1D30E8B1C();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Deinit", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v7 = sub_1D30E8B1C();
  v8 = sub_1D30E92BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D2FD9000, v7, v8, "Stopping App License Delivery…", v9, 2u);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  sub_1D2FFDE08(sub_1D30298FC);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  v10 = *(v1 + 112);

  v11 = *(v1 + 120);

  v12 = *(v1 + 128);

  v13 = *(v1 + 136);

  v15 = *(v1 + 144);
  v16 = *(v1 + 160);
  v17 = *(v1 + 176);
  sub_1D3015904();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D3016E84()
{
  sub_1D3016B9C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D3016ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 768) = v6;
  *(v7 + 760) = a5;
  *(v7 + 752) = a4;
  *(v7 + 744) = a3;
  *(v7 + 736) = a2;
  *(v7 + 728) = a1;
  v9 = type metadata accessor for LicenseRecord.ElementID(0);
  *(v7 + 776) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  v11 = sub_1D30E8A4C();
  *(v7 + 792) = v11;
  v12 = *(v11 - 8);
  *(v7 + 800) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 808) = swift_task_alloc();
  v14 = *(a6 + 112);
  *(v7 + 112) = *(a6 + 96);
  *(v7 + 128) = v14;
  *(v7 + 144) = *(a6 + 128);
  v15 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v15;
  v16 = *(a6 + 80);
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = v16;
  v17 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D3017004, v6, 0);
}

uint64_t sub_1D3017004()
{
  v83 = v0;
  v1 = (v0 + 16);
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313888);
  v8 = sub_1D30E928C();
  v9 = *(v3 + 16);
  v9(v2, v5, v4);

  sub_1D2FE2E8C(v0 + 16, v0 + 152);
  v10 = sub_1D30E8B1C();

  sub_1D2FE2EC4(v0 + 16);
  v11 = os_log_type_enabled(v10, v8);
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);
  v14 = *(v0 + 792);
  if (v11)
  {
    v67 = *(v0 + 760);
    v71 = v9;
    v15 = *(v0 + 744);
    v69 = v8;
    v16 = *(v0 + 736);
    v17 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = v68;
    *v17 = 136446978;
    *(v17 + 4) = sub_1D2FFEA04(v16, v15, &v73);
    *(v17 + 12) = 2082;
    sub_1D302B150(&qword_1EC749490, 255, MEMORY[0x1E69695A8]);
    v18 = sub_1D30E977C();
    v20 = v19;
    (*(v13 + 8))(v12, v14);
    v21 = v18;
    v9 = v71;
    v22 = sub_1D2FFEA04(v21, v20, &v73);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v67;
    *(v17 + 32) = 2082;
    v23 = *(v0 + 128);
    v80 = *(v0 + 112);
    v81 = v23;
    v82 = *(v0 + 144);
    v24 = *(v0 + 64);
    v76 = *(v0 + 48);
    v77 = v24;
    v25 = *(v0 + 96);
    v78 = *(v0 + 80);
    v79 = v25;
    v26 = *(v0 + 32);
    v74 = *v1;
    v75 = v26;
    sub_1D2FE2E8C(v0 + 16, v0 + 424);
    v27 = AppInfo.description.getter();
    v29 = v28;
    v30 = v81;
    *(v0 + 384) = v80;
    *(v0 + 400) = v30;
    *(v0 + 416) = v82;
    v31 = v77;
    *(v0 + 320) = v76;
    *(v0 + 336) = v31;
    v32 = v79;
    *(v0 + 352) = v78;
    *(v0 + 368) = v32;
    v33 = v75;
    *(v0 + 288) = v74;
    *(v0 + 304) = v33;
    sub_1D2FE2EC4(v0 + 288);
    v34 = sub_1D2FFEA04(v27, v29, &v73);

    *(v17 + 34) = v34;
    _os_log_impl(&dword_1D2FD9000, v10, v69, "Request license for asset pack with ID: %{public}s version ID: %{public}s internal version ID: %llu app info: %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v68, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v35 = *(v0 + 792);
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 760);
  v39 = *(v0 + 752);
  v40 = *(v0 + 744);
  v41 = *(v0 + 736);
  v42 = *(v0 + 88);
  *(v0 + 560) = *(v0 + 48);
  *(v0 + 576) = v42;
  v70 = *(v0 + 576);
  v72 = *(v0 + 560);
  v9(v36 + *(v37 + 20), v39, v35);
  *v36 = v72;
  *(v36 + 16) = v70;
  *(v36 + 32) = v41;
  *(v36 + 40) = v40;
  *(v36 + *(v37 + 24)) = v38;
  v44 = *(v0 + 144);
  switch(v44)
  {
    case 3:
      v55 = *(v0 + 784);
      v56 = *(v0 + 768);
      v57 = *(v0 + 744);
      v58 = sub_1D302B150(&qword_1EC749C78, v43, type metadata accessor for LicenseManager);
      v59 = swift_task_alloc();
      *(v0 + 848) = v59;
      v59[2] = v56;
      v59[3] = v55;
      v59[4] = v1;

      sub_1D302B080(v0 + 560, v0 + 624);
      sub_1D302B0DC(v0 + 576, v0 + 640, &qword_1EC749310, &unk_1D30EF350);
      v60 = *(MEMORY[0x1E69E8920] + 4);
      v61 = swift_task_alloc();
      *(v0 + 856) = v61;
      *v61 = v0;
      v61[1] = sub_1D30179A8;
      v62 = MEMORY[0x1E69E76D8];

      return MEMORY[0x1EEE6DE38](v0 + 720, v56, v58, 0xD000000000000047, 0x80000001D30EBFC0, sub_1D302B144, v59, v62);
    case 1:
      v51 = *(v0 + 744);

      sub_1D302B080(v0 + 560, v0 + 656);
      sub_1D302B0DC(v0 + 576, v0 + 672, &qword_1EC749310, &unk_1D30EF350);
      v52 = swift_task_alloc();
      *(v0 + 832) = v52;
      *v52 = v0;
      v52[1] = sub_1D301787C;
      v47 = *(v0 + 784);
      v53 = *(v0 + 768);
      v49 = *(v0 + 728);
      v50 = 1;
      goto LABEL_11;
    case 0:
      v45 = *(v0 + 744);

      sub_1D302B080(v0 + 560, v0 + 688);
      sub_1D302B0DC(v0 + 576, v0 + 704, &qword_1EC749310, &unk_1D30EF350);
      v46 = swift_task_alloc();
      *(v0 + 816) = v46;
      *v46 = v0;
      v46[1] = sub_1D3017750;
      v47 = *(v0 + 784);
      v48 = *(v0 + 768);
      v49 = *(v0 + 728);
      v50 = 0;
LABEL_11:

      return sub_1D3018E04(v49, v47, v50);
    default:
      v63 = *(v0 + 744);
      type metadata accessor for LicenseManagerError();
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
      swift_allocError();
      *v64 = v44;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D302B080(v0 + 560, v0 + 592);
      sub_1D302B0DC(v0 + 576, v0 + 608, &qword_1EC749310, &unk_1D30EF350);
      v65 = *(v0 + 808);
      sub_1D302A30C(*(v0 + 784), type metadata accessor for LicenseRecord.ElementID);

      v66 = *(v0 + 8);

      return v66();
  }
}

uint64_t sub_1D3017750()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 768);
  if (v0)
  {
    v6 = sub_1D3017FC4;
  }

  else
  {
    v6 = sub_1D302B66C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D301787C()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;
  *(*v1 + 840) = v0;

  v5 = *(v2 + 768);
  if (v0)
  {
    v6 = sub_1D301805C;
  }

  else
  {
    v6 = sub_1D302B66C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D30179A8()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v9 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = *(v2 + 768);
    v5 = sub_1D30180F4;
  }

  else
  {
    v6 = *(v2 + 848);
    v7 = *(v2 + 768);

    v5 = sub_1D3017AD0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D3017AD0()
{
  v1 = v0[90];
  v0[109] = v1;
  v2 = swift_task_alloc();
  v0[110] = v2;
  *v2 = v0;
  v2[1] = sub_1D3017B6C;
  v3 = v0[96];

  return sub_1D3024BFC(v1);
}

uint64_t sub_1D3017B6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 880);
  v6 = *v2;
  *(v4 + 888) = a1;
  *(v4 + 896) = v1;

  v7 = *(v3 + 768);
  if (v1)
  {
    v8 = sub_1D3018194;
  }

  else
  {
    v8 = sub_1D3017CA4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D3017CA4()
{
  if (v0[111])
  {
    if (qword_1EE3132E0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AppLicenseDelivery.Isolation();
    sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation);
    v2 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3017E8C, v2, v1);
  }

  else
  {
    v3 = v0[109];
    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    *v4 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v5 = v0[101];
    sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D3017E8C()
{
  v1 = *(v0 + 896);
  sub_1D2FFBA44(*(v0 + 760), *(v0 + 888), *(v0 + 728));
  *(v0 + 904) = v1;
  if (v1)
  {
    v2 = *(v0 + 768);
    v3 = sub_1D301822C;
  }

  else
  {
    v4 = *(v0 + 888);
    v5 = *(v0 + 768);

    v3 = sub_1D3017F34;
    v2 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D3017F34()
{
  v1 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D3017FC4()
{
  v1 = v0[103];
  v2 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D301805C()
{
  v1 = v0[105];
  v2 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D30180F4()
{
  v1 = v0[106];

  v2 = v0[108];
  v3 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3018194()
{
  v1 = v0[112];
  v2 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D301822C()
{
  v1 = v0[111];

  v2 = v0[113];
  v3 = v0[101];
  sub_1D302A30C(v0[98], type metadata accessor for LicenseRecord.ElementID);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D30182CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for LicenseRecord.ElementID(0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_1D30E921C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1D302B574(a3, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LicenseRecord.ElementID);
  (*(v8 + 16))(v11, v35, v7);
  v21 = sub_1D302B150(&qword_1EC749C78, v20, type metadata accessor for LicenseManager);
  v22 = *(v34 + 80);
  v34 = v7;
  v35 = v18;
  v23 = (v22 + 40) & ~v22;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v11;
  v26 = (*(v8 + 80) + v24 + 136) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a2;
  *(v27 + 3) = v21;
  *(v27 + 4) = a2;
  sub_1D302B5DC(v14, &v27[v23], type metadata accessor for LicenseRecord.ElementID);
  v28 = &v27[v24];
  v29 = *(a4 + 112);
  *(v28 + 6) = *(a4 + 96);
  *(v28 + 7) = v29;
  *(v28 + 16) = *(a4 + 128);
  v30 = *(a4 + 48);
  *(v28 + 2) = *(a4 + 32);
  *(v28 + 3) = v30;
  v31 = *(a4 + 80);
  *(v28 + 4) = *(a4 + 64);
  *(v28 + 5) = v31;
  v32 = *(a4 + 16);
  *v28 = *a4;
  *(v28 + 1) = v32;
  (*(v8 + 32))(&v27[v26], v25, v34);
  swift_retain_n();
  sub_1D2FE2E8C(a4, v36);
  sub_1D3018B04(0, 0, v35, &unk_1D30F3410, v27);
}

uint64_t sub_1D301864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30186F0, a4, 0);
}

uint64_t sub_1D30186F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C18, &qword_1D30F32C0);
  v5 = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = xmmword_1D30EE930;
  sub_1D302B574(v3, v8 + v7, type metadata accessor for LicenseRecord.ElementID);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v0[9] = v11;
  v12 = *(v11 - 8);
  (*(v12 + 16))(v1, v2, v11);
  (*(v12 + 56))(v1, 0, 1, v11);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1D30188E8;
  v14 = v0[7];
  v15 = v0[3];

  return sub_1D301AF0C(v8, v9, v10, v14);
}

uint64_t sub_1D30188E8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D2FF14DC(v5, &qword_1EC749B88, &unk_1D30F3240);

  if (v0)
  {
    v7 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D3018A8C, v7, 0);
  }

  else
  {
    v8 = *(v2 + 56);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_1D3018A8C()
{
  v1 = v0[9];
  v2 = v0[6];
  v0[2] = v0[11];
  sub_1D30E91CC();
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3018B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D302B0DC(a3, v27 - v11, &qword_1EC749C70, &qword_1D30F3368);
  v13 = sub_1D30E921C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2FF14DC(v12, &qword_1EC749C70, &qword_1D30F3368);
  }

  else
  {
    sub_1D30E920C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D30E91AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D30E90AC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D2FF14DC(a3, &qword_1EC749C70, &qword_1D30F3368);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D2FF14DC(a3, &qword_1EC749C70, &qword_1D30F3368);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D3018E04(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 832) = v3;
  *(v4 + 777) = a3;
  *(v4 + 824) = a2;
  *(v4 + 816) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
  *(v4 + 840) = v5;
  v6 = *(v5 - 8);
  *(v4 + 848) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 856) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
  *(v4 + 864) = v8;
  v9 = *(v8 - 8);
  *(v4 + 872) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 880) = swift_task_alloc();
  v11 = type metadata accessor for LicenseRecord.ElementID(0);
  *(v4 + 888) = v11;
  v12 = *(v11 - 8);
  *(v4 + 896) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 904) = swift_task_alloc();
  *(v4 + 912) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3018FAC, v3, 0);
}

uint64_t sub_1D3018FAC()
{
  v48 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v3 = sub_1D30E8B3C();
  *(v0 + 920) = __swift_project_value_buffer(v3, qword_1EE313888);
  v4 = sub_1D30E928C();
  sub_1D302B574(v2, v1, type metadata accessor for LicenseRecord.ElementID);
  v5 = sub_1D30E8B1C();
  v6 = os_log_type_enabled(v5, v4);
  v7 = *(v0 + 912);
  if (v6)
  {
    v8 = *(v0 + 777);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47[0] = v10;
    *v9 = 136446466;
    v11 = LicenseRecord.ElementID.description.getter();
    v13 = v12;
    sub_1D302A30C(v7, type metadata accessor for LicenseRecord.ElementID);
    v14 = sub_1D2FFEA04(v11, v13, v47);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    if (v8)
    {
      v15 = 0x67696C4674736554;
    }

    else
    {
      v15 = 0x726F745320707041;
    }

    if (v8)
    {
      v16 = 0xEA00000000007468;
    }

    else
    {
      v16 = 0xE900000000000065;
    }

    v17 = sub_1D2FFEA04(v15, v16, v47);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Request license from Commerce with: %{public}s request type: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {

    sub_1D302A30C(v7, type metadata accessor for LicenseRecord.ElementID);
  }

  v18 = *(v0 + 824);
  v19 = *v18;
  v20 = v18[1];
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  *(v0 + 928) = sub_1D3028864(v19, v20, 1);
  *(v0 + 936) = 0;
  sub_1D302B574(*(v0 + 824), *(v0 + 904), type metadata accessor for LicenseRecord.ElementID);
  v21 = sub_1D30E8B1C();
  v22 = sub_1D30E92BC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 904);
  if (v23)
  {
    v25 = *(v0 + 777);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47[0] = v27;
    *v26 = 136446722;
    v28 = (v25 & 1) == 0;
    if (v25)
    {
      v29 = 97;
    }

    else
    {
      v29 = 28257;
    }

    if (v25)
    {
      v30 = 0xE100000000000000;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    if (v28)
    {
      v31 = 0x726F745320707041;
    }

    else
    {
      v31 = 0x67696C4674736554;
    }

    if (v28)
    {
      v32 = 0xE900000000000065;
    }

    else
    {
      v32 = 0xEA00000000007468;
    }

    v33 = sub_1D2FFEA04(v29, v30, v47);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2082;
    v34 = sub_1D2FFEA04(v31, v32, v47);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2082;
    v35 = LicenseRecord.ElementID.description.getter();
    v37 = v36;
    sub_1D302A30C(v24, type metadata accessor for LicenseRecord.ElementID);
    v38 = sub_1D2FFEA04(v35, v37, v47);

    *(v26 + 24) = v38;
    _os_log_impl(&dword_1D2FD9000, v21, v22, "Requesting from Commerce %{public}s %{public}s license with the element ID “%{public}s”…", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {

    sub_1D302A30C(v24, type metadata accessor for LicenseRecord.ElementID);
  }

  v39 = *(v0 + 896);
  v40 = *(v0 + 824);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C18, &qword_1D30F32C0);
  v41 = *(v39 + 72);
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = swift_allocObject();
  *(v0 + 944) = v43;
  *(v43 + 16) = xmmword_1D30EE930;
  sub_1D302B574(v40, v43 + v42, type metadata accessor for LicenseRecord.ElementID);
  sub_1D30E91FC();
  *(v0 + 952) = sub_1D30E91EC();
  v45 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3019558, v45, v44);
}

uint64_t sub_1D3019558()
{
  v1 = v0[119];
  v2 = v0[117];
  v3 = v0[104];

  v0[120] = sub_1D3025380();
  v0[121] = v2;
  v4 = v0[104];
  if (v2)
  {
    v5 = sub_1D301AAE0;
  }

  else
  {
    v5 = sub_1D30195F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D30195F0()
{
  v1 = *(v0[104] + 120);

  v2 = swift_task_alloc();
  v0[122] = v2;
  *v2 = v0;
  v2[1] = sub_1D30196A8;
  v3 = v0[120];
  v4 = v0[118];

  return sub_1D2FF97F0((v0 + 80), v4, v3, 0, v1);
}

uint64_t sub_1D30196A8()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 984) = v0;

  v5 = *(v2 + 832);
  if (v0)
  {
    v6 = sub_1D301AB84;
  }

  else
  {
    v6 = sub_1D30197D4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D30197D4()
{
  v1 = v0[115];
  v2 = sub_1D30E927C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Fetching the bag…", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];

  v8 = objc_opt_self();
  v0[124] = v8;
  v9 = sub_1D30E906C();
  v10 = sub_1D30E906C();
  v11 = [v8 bagForProfile:v9 profileVersion:v10 processInfo:0];

  v12 = sub_1D30E906C();
  v13 = [v11 URLForKey_];
  v0[125] = v13;

  v0[2] = v0;
  v0[7] = v0 + 98;
  v0[3] = sub_1D3019AD4;
  swift_continuation_init();
  v0[71] = v7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB0, &unk_1D30F33D0);
  v0[126] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v6 + 32))(boxed_opaque_existential_0Tm, v5, v7);
  v0[64] = MEMORY[0x1E69E9820];
  v0[65] = 1107296256;
  v0[66] = sub_1D30364EC;
  v0[67] = &block_descriptor_1;
  [v13 valueWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0Tm, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D3019AD4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1016) = v3;
  v4 = *(v1 + 832);
  if (v3)
  {
    v5 = sub_1D301AC1C;
  }

  else
  {
    v5 = sub_1D3019BF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D3019BF4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 928);
  v3 = *(v0 + 784);
  *(v0 + 1024) = v3;

  sub_1D300AC00(v2);
  if (v4 == 4)
  {
    v5 = *(v0 + 928);
    type metadata accessor for HelperError();
    sub_1D302B150(&qword_1EE313E48, 255, type metadata accessor for HelperError);
    swift_allocError();
    v7 = v6;
    v8 = [v5 bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D30E908C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v44 = *(v0 + 928);
    *v7 = v10;
    v7[1] = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v54 = *(v0 + 640);
    v55 = *(v0 + 648);
    v56 = *(v0 + 656);
    v57 = *(v0 + 664);
    v58 = *(v0 + 680);
    AppLicenseDelivery.Request.deinit();
    v45 = *(v0 + 912);
    v46 = *(v0 + 904);
    v47 = *(v0 + 880);
    v48 = *(v0 + 856);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v53 = *(v0 + 1008);
    v13 = *(v0 + 992);
    v14 = *(v0 + 928);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);
    v52 = *(v0 + 856);
    v51 = *(v0 + 777);
    v17 = v4;
    v18 = sub_1D30E906C();
    v19 = sub_1D30E906C();
    v20 = [v13 bagForProfile:v18 profileVersion:v19 processInfo:0];

    v21 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    *(v0 + 1032) = v21;

    [v21 setRequestEncoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB8, &qword_1D30F33E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D30F3120;
    *(inited + 32) = 0x64692D6D616461;
    *(inited + 40) = 0xE700000000000000;
    v23 = [v14 iTunesMetadata];
    v24 = [v23 storeItemIdentifier];

    v25 = MEMORY[0x1E69E76D8];
    *(inited + 48) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = 25705;
    v26 = MEMORY[0x1E69E6530];
    *(inited + 88) = 0xE200000000000000;
    *(inited + 96) = 1;
    *(inited + 120) = v26;
    *(inited + 128) = 0x2D65736E6563696CLL;
    *(inited + 136) = 0xEA00000000006469;
    *(v0 + 800) = *(v0 + 648);
    v27 = sub_1D30E977C();
    v28 = MEMORY[0x1E69E6158];
    *(inited + 144) = v27;
    *(inited + 152) = v29;
    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000013;
    *(inited + 184) = 0x80000001D30EBF50;
    v30 = *(v0 + 680);
    v31 = *(v0 + 688);
    *(inited + 192) = sub_1D30E892C();
    *(inited + 200) = v32;
    *(inited + 216) = v28;
    *(inited + 224) = 0xD000000000000014;
    *(inited + 232) = 0x80000001D30EBF70;
    v33 = *(v0 + 664);
    v34 = *(v0 + 672);
    *(inited + 240) = sub_1D30E892C();
    *(inited + 248) = v35;
    *(inited + 264) = v28;
    *(inited + 272) = 0x6D726F6674616C70;
    *(inited + 280) = 0xE800000000000000;
    sub_1D303B7F4(v17);
    *(inited + 288) = sub_1D30E908C();
    *(inited + 296) = v36;
    *(inited + 312) = v28;
    *(inited + 320) = 0x2D74736575716572;
    v37 = 0x45524F5453;
    if (v51)
    {
      v37 = 0x47494C4654534554;
    }

    v38 = 0xE500000000000000;
    if (v51)
    {
      v38 = 0xEA00000000005448;
    }

    *(inited + 360) = v28;
    *(inited + 328) = 0xEC00000065707974;
    *(inited + 336) = v37;
    *(inited + 344) = v38;
    sub_1D30349B8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CC0, &qword_1D30F33E8);
    swift_arrayDestroy();
    v39 = sub_1D30E901C();

    v40 = [v21 requestWithMethod:4 URL:v3 parameters:v39];
    *(v0 + 1040) = v40;

    v41 = [objc_opt_self() defaultSession];
    v42 = [v41 dataTaskPromiseWithRequestPromise_];
    *(v0 + 1048) = v42;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 808;
    *(v0 + 88) = sub_1D301A2B0;
    swift_continuation_init();
    *(v0 + 632) = v16;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 608));
    sub_1D302AF74();
    sub_1D30E91BC();
    (*(v15 + 32))(boxed_opaque_existential_0Tm, v52, v16);
    *(v0 + 576) = MEMORY[0x1E69E9820];
    *(v0 + 584) = 1107296256;
    *(v0 + 592) = sub_1D30365A4;
    *(v0 + 600) = &block_descriptor_59;
    [v42 resultWithCompletion_];
    (*(v15 + 8))(boxed_opaque_existential_0Tm, v16);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1D301A2B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1056) = v3;
  v4 = *(v1 + 832);
  if (v3)
  {
    v5 = sub_1D301ACF8;
  }

  else
  {
    v5 = sub_1D301A3D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D301A3D0()
{
  v1 = (v0 + 664);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 984);
  v4 = *(v0 + 808);
  v5 = [v4 data];

  v6 = sub_1D30E893C();
  v8 = v7;

  *(v0 + 1064) = v6;
  *(v0 + 1072) = v8;
  v9 = sub_1D30E855C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 1080) = sub_1D30E854C();
  sub_1D302AFC0();
  sub_1D30E853C();
  *(v0 + 1088) = v3;
  if (v3)
  {
    v12 = *(v0 + 1040);
    v13 = *(v0 + 1032);
    v14 = *(v0 + 1024);
    v15 = *(v0 + 928);

    sub_1D2FF1804(v6, v8);

LABEL_5:
    v34 = *(v0 + 640);
    v35 = *(v0 + 648);
    v36 = *(v0 + 656);
    v37 = *v1;
    v38 = *(v0 + 680);
    AppLicenseDelivery.Request.deinit();
    v20 = *(v0 + 912);
    v21 = *(v0 + 904);
    v22 = *(v0 + 880);
    v23 = *(v0 + 856);

    v24 = *(v0 + 8);

    return v24();
  }

  v16 = *(v0 + 760);
  *(v0 + 1096) = v16;
  v17 = *(v0 + 768);
  *(v0 + 1104) = v17;
  if (*(v0 + 776))
  {
    v32 = *(v0 + 1040);
    v33 = *(v0 + 1032);
    v31 = *(v0 + 1024);
    v18 = *(v0 + 928);
    *(v0 + 780) = v16;
    sub_1D302B014();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v19 = v16;

    sub_1D302B068(v16, v17, 1);

    sub_1D2FF1804(v6, v8);

    goto LABEL_5;
  }

  v26 = *(v0 + 648);
  v27 = *(v0 + 656);
  *(v0 + 696) = *(v0 + 640);
  *(v0 + 704) = v26;
  *(v0 + 712) = v27;
  v28 = *(v0 + 680);
  *(v0 + 720) = *v1;
  *(v0 + 736) = v28;
  sub_1D302B074(v16, v17, 0);
  sub_1D302B074(v16, v17, 0);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation);
  v30 = sub_1D30E91AC();
  *(v0 + 1112) = v30;
  *(v0 + 1120) = v29;

  return MEMORY[0x1EEE6DFA0](sub_1D301A740, v30, v29);
}

uint64_t sub_1D301A740()
{
  v1 = v0[136];
  v0[141] = sub_1D2FFFAA0((v0 + 87), v0[137], v0[138]);
  v0[142] = v1;
  if (v1)
  {
    v2 = v0[104];
    sub_1D302B068(v0[137], v0[138], 0);
    v3 = sub_1D301A8CC;
    v4 = v2;
  }

  else
  {
    v4 = v0[104];
    v3 = sub_1D301A7F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1D301A824()
{
  v1 = *(v0 + 1136);
  sub_1D2FFBA44(*(v0 + 1144), *(v0 + 1128), *(v0 + 816));
  *(v0 + 1152) = v1;
  if (v1)
  {
    v2 = *(v0 + 832);
    v3 = sub_1D301ADF0;
  }

  else
  {
    v4 = *(v0 + 1128);
    v5 = *(v0 + 832);

    v3 = sub_1D301A9C4;
    v2 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D301A8CC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 1024);

  sub_1D302B068(v2, v1, 0);

  sub_1D2FF1804(v5, v4);

  v9 = *(v0 + 1136);
  v10 = *(v0 + 912);
  v11 = *(v0 + 904);
  v12 = *(v0 + 880);
  v13 = *(v0 + 856);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D301A9C4()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 912);
  v12 = *(v0 + 904);
  v13 = *(v0 + 880);
  v14 = *(v0 + 856);

  sub_1D302B068(v2, v1, 0);
  sub_1D302B068(v2, v1, 0);

  sub_1D2FF1804(v5, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D301AAE0()
{
  v1 = *(v0 + 944);

  v2 = *(v0 + 968);
  v3 = *(v0 + 912);
  v4 = *(v0 + 904);
  v5 = *(v0 + 880);
  v6 = *(v0 + 856);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D301AB84()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v4 = *(v0 + 880);
  v5 = *(v0 + 856);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D301AC1C()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 928);
  swift_willThrow();

  v11 = *(v0 + 640);
  v12 = *(v0 + 648);
  v13 = *(v0 + 656);
  v14 = *(v0 + 664);
  v15 = *(v0 + 680);
  AppLicenseDelivery.Request.deinit();
  v4 = *(v0 + 1016);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 880);
  v8 = *(v0 + 856);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D301ACF8()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 928);
  swift_willThrow();

  v14 = *(v0 + 640);
  v15 = *(v0 + 648);
  v16 = *(v0 + 656);
  v17 = *(v0 + 664);
  v18 = *(v0 + 680);
  AppLicenseDelivery.Request.deinit();
  v7 = *(v0 + 1056);
  v8 = *(v0 + 912);
  v9 = *(v0 + 904);
  v10 = *(v0 + 880);
  v11 = *(v0 + 856);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D301ADF0()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 1024);

  sub_1D302B068(v3, v2, 0);
  sub_1D302B068(v3, v2, 0);

  sub_1D2FF1804(v6, v5);

  v10 = *(v0 + 1152);
  v11 = *(v0 + 912);
  v12 = *(v0 + 904);
  v13 = *(v0 + 880);
  v14 = *(v0 + 856);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D301AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = type metadata accessor for LicenseRecord.ElementID(0);
  v5[17] = v10;
  v11 = *(v10 - 8);
  v5[18] = v11;
  v12 = *(v11 + 64) + 15;
  v5[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v5[20] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301B0F0, v4, 0);
}

uint64_t sub_1D301B0F0()
{
  v52 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = sub_1D30E8B3C();
  v0[24] = __swift_project_value_buffer(v5, qword_1EE313888);
  v6 = sub_1D30E928C();
  sub_1D302B0DC(v2, v1, &qword_1EC749B88, &unk_1D30F3240);

  v7 = sub_1D30E8B1C();

  v8 = os_log_type_enabled(v7, v6);
  v9 = v0[23];
  if (v8)
  {
    v10 = v0[22];
    v11 = v0[17];
    v12 = v0[8];
    v49 = v0[9];
    v50 = v0[20];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51[0] = v15;
    *v14 = 136446722;
    v16 = MEMORY[0x1D38B26B0](v13, v11);
    v18 = sub_1D2FFEA04(v16, v17, v51);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1D2FFEA04(v12, v49, v51);
    *(v14 + 22) = 2082;
    sub_1D302B0DC(v9, v10, &qword_1EC749B88, &unk_1D30F3240);
    v19 = sub_1D30E909C();
    v21 = v20;
    sub_1D2FF14DC(v9, &qword_1EC749B88, &unk_1D30F3240);
    v22 = sub_1D2FFEA04(v19, v21, v51);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_1D2FD9000, v7, v6, "Request license from App Review with: %{public}s app bundle ID: %{public}s continuation: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v15, -1, -1);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  else
  {

    sub_1D2FF14DC(v9, &qword_1EC749B88, &unk_1D30F3240);
  }

  v23 = v0[7];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v0[18];
    v26 = v0[19];
    v27 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v28 = *(v25 + 72);
    do
    {
      v29 = v0[19];
      v31 = v0[8];
      v30 = v0[9];
      sub_1D302B574(v27, v29, type metadata accessor for LicenseRecord.ElementID);
      v32 = *v29;
      v33 = v0[19];
      if (v32 == v31 && *(v26 + 8) == v30)
      {
        sub_1D302A30C(v0[19], type metadata accessor for LicenseRecord.ElementID);
      }

      else
      {
        v35 = v0[8];
        v36 = v0[9];
        v37 = sub_1D30E97CC();
        sub_1D302A30C(v33, type metadata accessor for LicenseRecord.ElementID);
        if ((v37 & 1) == 0)
        {
          v39 = v0[8];
          v38 = v0[9];
          type metadata accessor for LicenseManagerError();
          sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
          swift_allocError();
          *v40 = v39;
          v40[1] = v38;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v42 = v0[22];
          v41 = v0[23];
          v43 = v0[21];
          v44 = v0[19];
          v45 = v0[16];
          v46 = v0[13];

          v47 = v0[1];

          return v47();
        }
      }

      v27 += v28;
      --v24;
    }

    while (v24);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301B570, 0, 0);
}

uint64_t sub_1D301B570()
{
  sub_1D30E91FC();
  *(v0 + 200) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301B604, v2, v1);
}

uint64_t sub_1D301B604()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  sub_1D301BC80(v2, v0 + 40);
  v7 = *(v0 + 88);
  *(v0 + 208) = *(v0 + 40);
  *(v0 + 49) = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D301B744, v7, 0);
}

uint64_t sub_1D301B744()
{
  if (*(v0 + 49))
  {
    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);

    v7 = *(v0 + 8);
  }

  else
  {
    v8 = *(v0 + 168);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    sub_1D302B0DC(*(v0 + 80), v8, &qword_1EC749B88, &unk_1D30F3240);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D2FF14DC(*(v0 + 168), &qword_1EC749B88, &unk_1D30F3240);
    }

    else
    {
      v11 = *(v0 + 192);
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 168), *(v0 + 112));
      v12 = sub_1D30E8B1C();
      v13 = sub_1D30E92BC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 208);
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v14;
        _os_log_impl(&dword_1D2FD9000, v12, v13, "Storing the provided continuation for the license ID “%llu”…", v15, 0xCu);
        MEMORY[0x1D38B3760](v15, -1, -1);
      }

      v16 = *(v0 + 208);
      v17 = *(v0 + 176);
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v20 = *(v0 + 112);
      v21 = *(v0 + 88);

      (*(v19 + 16))(v17, v18, v20);
      (*(v19 + 56))(v17, 0, 1, v20);
      swift_beginAccess();
      sub_1D301D57C(v17, v16);
      swift_endAccess();
      (*(v19 + 8))(v18, v20);
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 192);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v26 = *(v0 + 88);
    v27 = sub_1D30E921C();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v29 = sub_1D302B150(&qword_1EC749C78, v28, type metadata accessor for LicenseManager);
    v30 = swift_allocObject();
    v30[2] = v26;
    v30[3] = v29;
    v30[4] = v22;
    v30[5] = v26;
    v30[6] = v25;
    swift_retain_n();
    sub_1D302A758(0, 0, v24, 0, 0, &unk_1D30F3378, v30);

    sub_1D2FF14DC(v24, &qword_1EC749C70, &qword_1D30F3368);
    v31 = sub_1D30E8B1C();
    v32 = sub_1D30E92BC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 208);
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v33;
      _os_log_impl(&dword_1D2FD9000, v31, v32, "Posting a license-request notification for the license with the ID “%llu” from App Review…", v34, 0xCu);
      MEMORY[0x1D38B3760](v34, -1, -1);
    }

    if (qword_1EC749028 != -1)
    {
      swift_once();
    }

    v35 = qword_1EC749B58;
    if (qword_1EC749048 != -1)
    {
      v43 = qword_1EC749B58;
      swift_once();
      v35 = v43;
    }

    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = *(v0 + 168);
    v39 = *(v0 + 152);
    v40 = *(v0 + 128);
    v41 = *(v0 + 104);
    [v35 postNotificationName:qword_1EC749F88 object:0];

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_1D301BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 128);
  v4 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1D30E8DFC();

  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D301BDD4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v134 = a5;
  v133 = a4;
  v132 = a3;
  v145 = a2;
  v150 = type metadata accessor for LicenseRecord.ElementID(0);
  isa = v150[-1].isa;
  v6 = *(isa + 8);
  v7 = MEMORY[0x1EEE9AC00](v150);
  v149 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = v130 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v130 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v14 = *(v148 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v17 = v130 - v16;
  v18 = sub_1D30E91FC();
  v135 = sub_1D30E91EC();
  v147 = v18;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a1 + 128);
  sub_1D30E8E7C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = type metadata accessor for LicenseRecord(0);
  v22 = a1;
  v23 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v24 = v151;
  v25 = sub_1D30E8E1C();
  (*(v14 + 8))(v17, v148);
  v136 = v24;
  if (v24)
  {
  }

  v146 = v23;
  v137 = v21;
  v138 = v19;
  v130[1] = v22;

  v154 = MEMORY[0x1E69E7CC0];
  v131 = v25;
  if (v25 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D30E958C())
  {
    v27 = v153;
    v28 = v145;
    if (!i)
    {
      break;
    }

    v22 = 0;
    v17 = v131 & 0xC000000000000001;
    v143 = (v131 + 32);
    v144 = v131 & 0xFFFFFFFFFFFFFF8;
    v139 = v131 & 0xC000000000000001;
    v140 = i;
    while (1)
    {
      while (1)
      {
        if (v17)
        {
          v29 = MEMORY[0x1D38B29E0](v22, v131);
          v30 = __OFADD__(v22++, 1);
          if (v30)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v22 >= *(v144 + 16))
          {
            goto LABEL_86;
          }

          v29 = v143[v22].isa;

          v30 = __OFADD__(v22++, 1);
          if (v30)
          {
LABEL_29:
            __break(1u);
LABEL_30:
            v40 = v154;
            goto LABEL_32;
          }
        }

        v148 = sub_1D30E91EC();
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v160 = v29;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D302A5D8();
        sub_1D30E8F0C();

        v31 = v160;
        v32 = v160[2];
        if (v32 == *(v28 + 16))
        {
          break;
        }

        if (v22 == i)
        {
          goto LABEL_30;
        }
      }

      v141 = v29;
      v142 = v22;
      if (v32)
      {
        if (v160 != v145)
        {
          break;
        }
      }

LABEL_23:

      sub_1D30E950C();
      v39 = v154[2].isa;
      sub_1D30E953C();
      sub_1D30E954C();
      sub_1D30E951C();
LABEL_24:
      v28 = v145;
      v17 = v139;
      i = v140;
      v22 = v142;
      if (v142 == v140)
      {
        goto LABEL_30;
      }
    }

    v17 = 0;
    v33 = (*(isa + 80) + 32) & ~*(isa + 80);
    v151 = (v160 + v33);
    v34 = v145 + v33;
    while (v17 < v31[2])
    {
      v35 = *(isa + 9) * v17;
      sub_1D302B574(v151 + v35, v27, type metadata accessor for LicenseRecord.ElementID);
      if (v32 == v17)
      {
        goto LABEL_85;
      }

      v36 = v149;
      sub_1D302B574(v34 + v35, v149, type metadata accessor for LicenseRecord.ElementID);
      v37 = v150;
      v22 = *(v27 + SLODWORD(v150[3].isa));
      sub_1D302A30C(v27, type metadata accessor for LicenseRecord.ElementID);
      v38 = *(v36 + SLODWORD(v37[3].isa));
      sub_1D302A30C(v36, type metadata accessor for LicenseRecord.ElementID);
      if (v22 != v38)
      {

        v27 = v153;
        goto LABEL_24;
      }

      ++v17;
      v27 = v153;
      if (v32 == v17)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v41 = v137;
  if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
  {
    v42 = sub_1D30E958C();
    v43 = v146;
    if (v42)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v42 = *(v40 + 16);
    v43 = v146;
    if (v42)
    {
LABEL_35:
      v44 = 0;
      v148 = v40 & 0xC000000000000001;
      v143 = v42;
      v144 = v40;
      do
      {
        if (v148)
        {
          v46 = MEMORY[0x1D38B29E0](v44, v40);
          v45 = v46;
          v47 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v44 >= *(v40 + 16))
          {
            goto LABEL_87;
          }

          v45 = *(v40 + 8 * v44 + 32);

          v47 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            v150 = v17;
            v148 = v46;
            if (v47)
            {
            }

            else
            {

              sub_1D2FF804C(v42, v40, v22, v43, v45, v41);
            }

            v49 = v145;

            v50 = v148;
            v154 = v148;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            sub_1D30E8F0C();

            v51 = (v159 >> 60) & 3;
            if (v51)
            {
              if (v51 == 1)
              {
                v52 = 0x65726576696C6564;
                goto LABEL_54;
              }

              v53 = 0xE700000000000000;
              v52 = 0x676E69646E6570;
            }

            else
            {
              v52 = 0x6574736575716572;
LABEL_54:
              sub_1D2FF804C(v154, v155, v156, v157, v158, v159);
              v53 = 0xE900000000000064;
            }

            v54 = *(v49 + 16);
            v151 = v52;
            if (v54)
            {
              v55 = 115;
              if (v54 == 1)
              {
                v55 = 0;
              }

              v144 = v55;
              if (v54 == 1)
              {
                v56 = 0xE000000000000000;
              }

              else
              {
                v56 = 0xE100000000000000;
              }

              if (qword_1EE313880 != -1)
              {
                swift_once();
              }

              v57 = sub_1D30E8B3C();
              __swift_project_value_buffer(v57, qword_1EE313888);
              swift_retain_n();

              v58 = sub_1D30E8B1C();
              v59 = sub_1D30E92BC();

              LODWORD(v147) = v59;
              if (os_log_type_enabled(v58, v59))
              {
                v143 = v58;
                v60 = swift_slowAlloc();
                v142 = swift_slowAlloc();
                v154 = v142;
                *v60 = 136447746;
                v61 = sub_1D2FFEA04(v151, v53, &v154);

                *(v60 + 4) = v61;
                *(v60 + 12) = 2048;
                v160 = v50;
                swift_getKeyPath();
                sub_1D30E8AEC();

                swift_getKeyPath();
                sub_1D30E8F0C();

                *(v60 + 14) = v160;

                *(v60 + 22) = 2082;
                v62 = v144;
                *(v60 + 24) = sub_1D2FFEA04(v144, v56, &v154);
                *(v60 + 32) = 2082;
                if (v54 == 1)
                {
                  v63 = 0;
                }

                else
                {
                  v63 = 0x6974636570736572;
                }

                if (v54 == 1)
                {
                  v64 = 0xE000000000000000;
                }

                else
                {
                  v64 = 0xEB00000000206576;
                }

                v65 = sub_1D2FFEA04(v63, v64, &v154);

                *(v60 + 34) = v65;
                *(v60 + 42) = 2082;
                v66 = sub_1D2FFEA04(v62, v56, &v154);

                *(v60 + 44) = v66;
                v151 = v60;
                *(v60 + 52) = 2082;
                v160 = MEMORY[0x1E69E7CC0];
                sub_1D3028BC4(0, v54, 0);
                v67 = v160;
                v68 = v145 + ((*(isa + 80) + 32) & ~*(isa + 80));
                v69 = *(isa + 9);
                do
                {
                  v70 = v153;
                  sub_1D302B574(v68, v153, type metadata accessor for LicenseRecord.ElementID);
                  v71 = *(v70 + 32);
                  v72 = *(v70 + 40);

                  sub_1D302A30C(v70, type metadata accessor for LicenseRecord.ElementID);
                  v160 = v67;
                  v74 = v67[2];
                  v73 = v67[3];
                  if (v74 >= v73 >> 1)
                  {
                    sub_1D3028BC4((v73 > 1), v74 + 1, 1);
                    v67 = v160;
                  }

                  v67[2] = v74 + 1;
                  v75 = &v67[2 * v74];
                  v75[4] = v71;
                  v75[5] = v72;
                  v68 += v69;
                  --v54;
                }

                while (v54);
                v82 = sub_1D3016078(v67);
                v84 = v83;

                v85 = sub_1D2FFEA04(v82, v84, &v154);

                v86 = v151;
                *(v151 + 54) = v85;
                *(v86 + 62) = 2082;
                *(v86 + 64) = sub_1D2FFEA04(v132, v133, &v154);
                v87 = v143;
                _os_log_impl(&dword_1D2FD9000, v143, v147, "Reusing the existing, %{public}s license with the ID “%llu” for the asset pack%{public}s with the %{public}sID%{public}s %{public}s that are associated with the app with the bundle ID “%{public}s”…", v86, 0x48u);
                v88 = v142;
                swift_arrayDestroy();
                MEMORY[0x1D38B3760](v88, -1, -1);
                MEMORY[0x1D38B3760](v86, -1, -1);

                v89 = v134;
                v50 = v148;
              }

              else
              {

                v89 = v134;
              }
            }

            else
            {
              if (qword_1EE313880 != -1)
              {
                swift_once();
              }

              v76 = sub_1D30E8B3C();
              __swift_project_value_buffer(v76, qword_1EE313888);

              v77 = sub_1D30E8B1C();
              v78 = sub_1D30E92BC();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v154 = v80;
                *v79 = 136446466;
                v81 = sub_1D2FFEA04(v151, v53, &v154);

                *(v79 + 4) = v81;
                *(v79 + 12) = 2048;
                v160 = v50;
                swift_getKeyPath();
                sub_1D30E8AEC();
                v50 = v148;

                swift_getKeyPath();
                sub_1D30E8F0C();

                *(v79 + 14) = v160;

                _os_log_impl(&dword_1D2FD9000, v77, v78, "Reusing the existing, %{public}s license with the ID “%llu”…", v79, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x1D38B3760](v80, -1, -1);
                MEMORY[0x1D38B3760](v79, -1, -1);
              }

              else
              {
              }

              v89 = v134;
            }

            v154 = v50;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            sub_1D30E8F0C();

            v90 = v154;
LABEL_119:
            *v89 = v90;
            *(v89 + 8) = 0;
          }
        }

        v150 = v47;
        v151 = sub_1D30E91EC();
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v48 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
        v160 = v45;
        swift_getKeyPath();
        v17 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        v149 = v48;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF7FF8();
        sub_1D30E8F0C();

        v42 = v154;
        v40 = v155;
        v46 = v45;
        v22 = v156;
        v43 = v157;
        v45 = v158;
        v41 = v159;
        v47 = ((v159 >> 60) & 3);
        if (v47 != 1)
        {
          goto LABEL_47;
        }

        sub_1D2FF804C(v42, v40, v22, v43, v45, v41);

        ++v44;
        v42 = v143;
        v40 = v144;
        v43 = v146;
        v41 = v137;
      }

      while (v150 != v143);
    }
  }

  v91 = v136;
  v92 = sub_1D3025380();
  v136 = v91;
  if (!v91)
  {
    v93 = *(v41 + 48);
    v94 = *(v41 + 52);
    v95 = v92;
    swift_allocObject();
    v96 = v145;

    v97 = sub_1D2FF5928(v95, v96);
    sub_1D30E8E7C();
    sub_1D30E8E4C();

    v98 = *(v96 + 16);
    if (v98)
    {
      if (v98 == 1)
      {
        v99 = 0;
      }

      else
      {
        v99 = 115;
      }

      if (v98 == 1)
      {
        v100 = 0xE000000000000000;
      }

      else
      {
        v100 = 0xE100000000000000;
      }

      if (qword_1EE313880 != -1)
      {
        swift_once();
      }

      v101 = sub_1D30E8B3C();
      __swift_project_value_buffer(v101, qword_1EE313888);
      swift_retain_n();

      v102 = sub_1D30E8B1C();
      v103 = sub_1D30E92BC();

      if (os_log_type_enabled(v102, v103))
      {
        LODWORD(v149) = v103;
        v150 = v102;
        v104 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v154 = v147;
        *v104 = 134219266;
        v160 = v97;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        *(v104 + 4) = v160;
        v151 = v97;

        *(v104 + 12) = 2082;
        *(v104 + 14) = sub_1D2FFEA04(v99, v100, &v154);
        *(v104 + 22) = 2082;
        if (v98 == 1)
        {
          v105 = 0;
        }

        else
        {
          v105 = 0x6974636570736572;
        }

        if (v98 == 1)
        {
          v106 = 0xE000000000000000;
        }

        else
        {
          v106 = 0xEB00000000206576;
        }

        v107 = sub_1D2FFEA04(v105, v106, &v154);

        *(v104 + 24) = v107;
        *(v104 + 32) = 2082;
        v108 = sub_1D2FFEA04(v99, v100, &v154);

        *(v104 + 34) = v108;
        v148 = v104;
        *(v104 + 42) = 2082;
        v160 = MEMORY[0x1E69E7CC0];
        sub_1D3028BC4(0, v98, 0);
        v109 = v160;
        v110 = v145 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v111 = *(isa + 9);
        do
        {
          v112 = v153;
          sub_1D302B574(v110, v153, type metadata accessor for LicenseRecord.ElementID);
          v113 = *(v112 + 32);
          v114 = *(v112 + 40);

          sub_1D302A30C(v112, type metadata accessor for LicenseRecord.ElementID);
          v160 = v109;
          v116 = v109[2];
          v115 = v109[3];
          if (v116 >= v115 >> 1)
          {
            sub_1D3028BC4((v115 > 1), v116 + 1, 1);
            v109 = v160;
          }

          v109[2] = v116 + 1;
          v117 = &v109[2 * v116];
          v117[4] = v113;
          v117[5] = v114;
          v110 += v111;
          --v98;
        }

        while (v98);
        v122 = sub_1D3016078(v109);
        v124 = v123;

        v125 = sub_1D2FFEA04(v122, v124, &v154);

        v126 = v148;
        *(v148 + 44) = v125;
        *(v126 + 52) = 2082;
        *(v126 + 54) = sub_1D2FFEA04(v132, v133, &v154);
        v127 = v150;
        _os_log_impl(&dword_1D2FD9000, v150, v149, "Saving a record of a pending license with the ID “%llu” for the asset pack%{public}s with the %{public}sID%{public}s %{public}s that are associated with the app with the bundle ID “%{public}s” to the database…", v126, 0x3Eu);
        v128 = v147;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v128, -1, -1);
        MEMORY[0x1D38B3760](v126, -1, -1);

        v97 = v151;
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EE313880 != -1)
      {
        swift_once();
      }

      v118 = sub_1D30E8B3C();
      __swift_project_value_buffer(v118, qword_1EE313888);

      v119 = sub_1D30E8B1C();
      v120 = sub_1D30E92BC();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 134217984;
        v154 = v97;
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        *(v121 + 4) = v154;

        _os_log_impl(&dword_1D2FD9000, v119, v120, "Saving a record of the pending license with the ID “%llu” to the database…", v121, 0xCu);
        MEMORY[0x1D38B3760](v121, -1, -1);
      }

      else
      {
      }
    }

    v154 = v97;
    swift_getKeyPath();
    sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v90 = v154;
    v89 = v134;
    goto LABEL_119;
  }
}

uint64_t sub_1D301D57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D2FF14DC(a1, &qword_1EC749B88, &unk_1D30F3240);
    v15 = *v3;
    v16 = sub_1D3032654(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D3033F9C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1D3029588(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D2FF14DC(v9, &qword_1EC749B88, &unk_1D30F3240);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D30338DC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D301D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1D30E934C();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301D8E0, a5, 0);
}

uint64_t sub_1D301D8E0()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Awaiting a license-response notification for the license with the ID “%llu”…", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v15 = *(v0 + 24);

  (*(v8 + 56))(v6, 1, 1, v7);
  sub_1D302B150(&qword_1EC749C78, v10, type metadata accessor for LicenseManager);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v9;
  *(v11 + 32) = v15;
  v12 = *(MEMORY[0x1E69E88D0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1D301DB1C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D301DB1C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D301DC48, v3, 0);
}

uint64_t sub_1D301DC48()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1D302B0DC(v0[9], v1, &qword_1EC749C80, &qword_1D30F3398);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[8];
  if (v4 == 1)
  {
    sub_1D2FF14DC(v0[8], &qword_1EC749C80, &qword_1D30F3398);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    if (qword_1EC749028 != -1)
    {
      swift_once();
    }

    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_1D30E933C();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[8];
  v10 = v0[7];
  sub_1D2FF14DC(v0[9], &qword_1EC749C80, &qword_1D30F3398);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D301DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = a4;
  if (qword_1EC749028 != -1)
  {
    swift_once();
  }

  v27 = qword_1EC749B58;
  v17 = type metadata accessor for LicenseResponseMessage.Subject();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID] = a3;
  v31.receiver = v18;
  v31.super_class = v17;
  v19 = objc_msgSendSuper2(&v31, sel_init);
  (*(v9 + 16))(v12, a1, v8);
  v20 = a3;
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v9 + 32))(v23 + v21, v12, v8);
  v24 = v29;
  *(v23 + v22) = v28;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_1D302AE74();

  sub_1D30E931C();

  v25 = sub_1D30E934C();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  return sub_1D302AEC8(v16, v30);
}

uint64_t sub_1D301E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D301E0D8, 0, 0);
}

uint64_t sub_1D301E0D8()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "A license-response notification for the license with the ID “%llu” was received.", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v7 = v0[3];
  v6 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0);
  sub_1D30E91DC();

  return MEMORY[0x1EEE6DFA0](sub_1D301E224, v6, 0);
}

uint64_t sub_1D301E224()
{
  v1 = v0[4];
  sub_1D3025038(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D301E288(uint64_t a1, char a2)
{
  *(v3 + 688) = a2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v2;
  *(v3 + 440) = *v2;
  v4 = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  *(v3 + 448) = v4;
  v5 = *(v4 + 64) + 15;
  *(v3 + 456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D301E370, v2, 0);
}

uint64_t sub_1D301E370()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  *(v0 + 464) = __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Next request", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = sub_1D30E8B1C();
  v6 = sub_1D30E92BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v6, "Checking for submitted yet unfulfilled license requests…", v7, 2u);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301E4F8, 0, 0);
}

uint64_t sub_1D301E4F8()
{
  *(v0 + 472) = sub_1D30E91FC();
  *(v0 + 480) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301E590, v2, v1);
}

uint64_t sub_1D301E590()
{
  v1 = v0[60];
  v2 = v0[54];

  sub_1D301F9F0(v2, v0 + 28);
  v0[61] = 0;
  v3 = v0[54];

  return MEMORY[0x1EEE6DFA0](sub_1D301E62C, v3, 0);
}

uint64_t sub_1D301E62C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  *(v0 + 496) = v1;
  *(v0 + 504) = v2;
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  *(v0 + 512) = v3;
  *(v0 + 520) = v4;
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  *(v0 + 528) = v5;
  *(v0 + 536) = v6;
  if (!v2)
  {
    *(v0 + 568) = *(v0 + 488);
    v18 = *(v0 + 464);
    v19 = sub_1D30E8B1C();
    v20 = sub_1D30E92BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D2FD9000, v19, v20, "Checking for pending licenses…", v21, 2u);
      MEMORY[0x1D38B3760](v21, -1, -1);
    }

    v17 = sub_1D301EC38;
    goto LABEL_9;
  }

  v7 = *(v0 + 488);
  v8 = *(v0 + 464);
  v9 = *(v0 + 432);
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  swift_beginAccess();
  v10 = *(v9 + 144);
  v11 = *(v9 + 160);
  *(v0 + 352) = *(v9 + 176);
  *(v0 + 320) = v10;
  *(v0 + 336) = v11;
  sub_1D2FDCF94((v0 + 320), (v0 + 128));
  LOBYTE(v9) = v12;
  *(v0 + 544) = v7;
  sub_1D302A3D4(v1, v2, v3, v4, v5, v6);
  v13 = sub_1D30E8B1C();
  v14 = sub_1D30E92BC();
  v15 = os_log_type_enabled(v13, v14);
  if (v9)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v1;
      _os_log_impl(&dword_1D2FD9000, v13, v14, "The submitted yet unfulfilled request for the license with the ID “%llu” is stale; removing the record of the license from the database…", v16, 0xCu);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    v17 = sub_1D301E978;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v17, 0, 0);
  }

  if (v15)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v1;
    _os_log_impl(&dword_1D2FD9000, v13, v14, "Resubmitting a request for the license with the ID “%llu”…", v22, 0xCu);
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  v23 = *(v0 + 424);
  sub_1D302A36C(v1, v2, v3, v4, v5, v6);

  *v23 = v1;
  v23[1] = v2;
  v23[2] = v3;
  v23[3] = v4;
  v23[4] = v5;
  v23[5] = v6;
  v24 = *(v0 + 456);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D301E914()
{
  v1 = v0[61];
  v2 = v0[57];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D301E978()
{
  v1 = *(v0 + 472);
  *(v0 + 552) = sub_1D30E91EC();
  v3 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301EA04, v3, v2);
}

uint64_t sub_1D301EA04()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[54];

  sub_1D30200D8(v3, (v0 + 16));
  v0[70] = v2;
  if (v2)
  {
    v4 = v0[54];
    sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
    v5 = sub_1D301EBBC;
    v6 = v4;
  }

  else
  {
    v6 = v0[54];
    v5 = sub_1D301EAC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1D301EAC4()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
  v0[71] = v0[70];
  v1 = v0[58];
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Checking for pending licenses…", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D301EC38, 0, 0);
}

uint64_t sub_1D301EBBC()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
  v1 = v0[70];
  v2 = v0[57];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D301EC38()
{
  v1 = *(v0 + 472);
  *(v0 + 576) = sub_1D30E91EC();
  v3 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301ECC4, v3, v2);
}

uint64_t sub_1D301ECC4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 432);

  sub_1D3020828(v3, (v0 + 408));
  *(v0 + 584) = v2;
  v4 = *(v0 + 432);
  if (v2)
  {
    v5 = sub_1D301F2D0;
  }

  else
  {
    *(v0 + 592) = *(v0 + 408);
    v5 = sub_1D301ED6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D301ED6C()
{
  v60 = v0;
  v1 = *(v0 + 600);
  if (!v1)
  {
    v18 = *(v0 + 464);
    v19 = sub_1D30E8B1C();
    v20 = sub_1D30E92BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D2FD9000, v19, v20, "There aren’t any pending licenses.", v21, 2u);
      MEMORY[0x1D38B3760](v21, -1, -1);
    }

    v22 = *(v0 + 424);
    sub_1D302A36C(*(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536));

    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
    v23 = *(v0 + 456);

    v24 = *(v0 + 8);
    goto LABEL_26;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v27 = *(v0 + 520);
    v29 = *(v0 + 504);
    v28 = *(v0 + 512);
    v30 = *(v0 + 496);
    v31 = *(v0 + 600);

    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v32 = v30;
    v33 = v29;
    v34 = v28;
    v35 = v27;
    v36 = v26;
    v37 = v25;
    goto LABEL_25;
  }

  v3 = *(v0 + 448);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + v4);
  v6 = *(v1 + v4 + 8);

  v7 = v2 - 1;
  if (!v7)
  {
LABEL_4:
    v8 = *(v0 + 464);

    swift_bridgeObjectRetain_n();
    v9 = sub_1D30E8B1C();
    v10 = sub_1D30E92BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 592);
      v12 = *(v0 + 688);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59 = v14;
      *v13 = 136446466;
      if (v12)
      {
        v15 = 0x20636974617473;
      }

      else
      {
        v15 = 0;
      }

      if (v12)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v17 = sub_1D2FFEA04(v15, v16, &v59);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;

      *(v13 + 14) = v11;

      _os_log_impl(&dword_1D2FD9000, v9, v10, "Submitting a request for the %{public}slicense with the ID “%llu”…", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v54 = *(*(v0 + 432) + 120);

    v55 = swift_task_alloc();
    *(v0 + 608) = v55;
    *v55 = v0;
    v55[1] = sub_1D301F34C;
    v56 = *(v0 + 592);
    v57 = *(v0 + 688);

    return sub_1D2FF97F0(v0 + 72, v1, v56, v57, v54);
  }

  v38 = *(v0 + 456);
  v39 = *(v3 + 72);
  v40 = v1 + v39 + v4;
  while (1)
  {
    v41 = *(v0 + 456);
    sub_1D302B574(v40, v41, type metadata accessor for LicenseRecord.ElementID);
    v42 = *v41;
    v43 = *(v0 + 456);
    if (v42 != v5 || *(v38 + 8) != v6)
    {
      break;
    }

    sub_1D302A30C(*(v0 + 456), type metadata accessor for LicenseRecord.ElementID);
LABEL_18:
    v40 += v39;
    if (!--v7)
    {
      goto LABEL_4;
    }
  }

  v45 = sub_1D30E97CC();
  sub_1D302A30C(v43, type metadata accessor for LicenseRecord.ElementID);
  if (v45)
  {
    goto LABEL_18;
  }

  v58 = *(v0 + 536);
  v46 = *(v0 + 528);
  v47 = *(v0 + 520);
  v49 = *(v0 + 504);
  v48 = *(v0 + 512);
  v50 = *(v0 + 496);
  swift_bridgeObjectRelease_n();

  type metadata accessor for LicenseManagerError();
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
  swift_allocError();
  *v51 = 0;
  v51[1] = 0;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v32 = v50;
  v33 = v49;
  v34 = v48;
  v35 = v47;
  v36 = v46;
  v37 = v58;
LABEL_25:
  sub_1D302A36C(v32, v33, v34, v35, v36, v37);
  v52 = *(v0 + 456);

  v24 = *(v0 + 8);
LABEL_26:

  return v24();
}

uint64_t sub_1D301F2D0()
{
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);
  v1 = v0[73];
  v2 = v0[57];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D301F34C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_1D301F8B4;
  }

  else
  {
    v6 = sub_1D301F478;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D301F478()
{
  v1 = v0[75];
  v2 = v0[59];
  v3 = v0[10];
  v4 = v0[11];
  v0[78] = v3;
  v0[79] = v4;
  v5 = v0[12];
  v6 = v0[13];
  v0[80] = v5;
  v0[81] = v6;
  v7 = v0[14];
  v8 = v0[15];
  v0[82] = v7;
  v0[22] = v3;
  v0[83] = v8;
  v0[23] = v4;
  v0[24] = v5;
  v0[25] = v6;
  v0[26] = v7;
  v0[27] = v8;

  sub_1D302A25C((v0 + 22), (v0 + 34));

  sub_1D2FF17B0(v5, v6);
  sub_1D2FF17B0(v7, v8);
  v0[84] = sub_1D30E91EC();
  v10 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D301F588, v10, v9);
}

uint64_t sub_1D301F588()
{
  v1 = v0[84];
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[74];
  v6 = v0[54];
  v5 = v0[55];

  sub_1D3025A6C(v4, v6, v4, v3, v0 + 22, v5);
  v0[85] = v2;
  v7 = v0[54];
  if (v2)
  {
    v8 = sub_1D301F93C;
  }

  else
  {
    v8 = sub_1D301F644;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D301F644()
{
  v43 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  swift_beginAccess();
  sub_1D3015990(v0 + 16);
  swift_endAccess();

  v5 = sub_1D30E8B1C();
  v6 = sub_1D30E92BC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 600);
  if (v7)
  {
    v9 = *(v0 + 592);
    v40 = *(v0 + 528);
    v41 = *(v0 + 536);
    v38 = *(v0 + 512);
    v39 = *(v0 + 520);
    v37 = *(v0 + 504);
    v10 = *(v0 + 496);
    v11 = *(v0 + 688);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136446466;
    if (v11)
    {
      v14 = 0x20636974617473;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_1D2FFEA04(v14, v15, &v42);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;

    *(v12 + 14) = v9;

    _os_log_impl(&dword_1D2FD9000, v5, v6, "A request for the %{public}slicense with the ID “%llu” was submitted.", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v12, -1, -1);
    v17 = v10;
    v18 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v41;
  }

  else
  {
    v23 = *(v0 + 536);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v27 = *(v0 + 504);
    v26 = *(v0 + 512);
    v28 = *(v0 + 496);
    v29 = *(v0 + 600);
    swift_bridgeObjectRelease_n();
    v17 = v28;
    v18 = v27;
    v19 = v26;
    v20 = v25;
    v21 = v24;
    v22 = v23;
  }

  sub_1D302A36C(v17, v18, v19, v20, v21, v22);

  v30 = *(v0 + 632);
  v31 = *(v0 + 424);
  v32 = *(v0 + 640);
  v33 = *(v0 + 656);
  *v31 = *(v0 + 624);
  *(v31 + 8) = v30;
  *(v31 + 16) = v32;
  *(v31 + 32) = v33;
  v34 = *(v0 + 456);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1D301F8B4()
{
  v1 = v0[75];
  sub_1D302A36C(v0[62], v0[63], v0[64], v0[65], v0[66], v0[67]);

  v2 = v0[77];
  v3 = v0[57];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D301F93C()
{
  v1 = *(v0 + 600);
  sub_1D302A36C(*(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536));
  sub_1D302A2B8(v0 + 176);

  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  AppLicenseDelivery.Request.deinit();
  v2 = *(v0 + 680);
  v3 = *(v0 + 456);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D301F9F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = sub_1D30E91FC();
  v55 = sub_1D30E91EC();
  v59 = v12;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 128);
  sub_1D30E8E7C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C60, &qword_1D30F3330);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C68, &qword_1D30F3338) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE910;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313FC0, 255, MEMORY[0x1E6969530]);
  sub_1D30E86CC();
  swift_getKeyPath();
  sub_1D30E86CC();
  type metadata accessor for LicenseRecord(0);
  v18 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v19 = v58;
  v20 = sub_1D30E8E1C();
  v21 = v19;
  (*(v8 + 8))(v11, v7);
  if (v19)
  {
  }

  if (v20 >> 62)
  {
LABEL_29:
    v58 = v20 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_1D30E958C();
    v52 = v21;
    if (v23)
    {
LABEL_7:
      v56 = v18;
      v18 = 0;
      v57 = v20 & 0xC000000000000001;
      v24 = MEMORY[0x1E69E7CC0];
      do
      {
        v53 = v24;
        v25 = v18;
        while (1)
        {
          if (v57)
          {
            v26 = MEMORY[0x1D38B29E0](v25, v20);
            v18 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v25 >= *(v58 + 16))
            {
              goto LABEL_28;
            }

            v26 = *(v20 + 8 * v25 + 32);

            v18 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }
          }

          v27 = v23;
          v21 = sub_1D30E91EC();
          sub_1D30E91AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v66 = v26;
          swift_getKeyPath();
          sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF7FF8();
          sub_1D30E8F0C();

          if ((v65 & 0x3000000000000000) == 0)
          {
            break;
          }

          sub_1D2FF804C(v60, v61, v62, v63, v64, v65);

          ++v25;
          if (v18 == v23)
          {
            v24 = v53;
            goto LABEL_31;
          }
        }

        v50 = v61;
        v51 = v60;
        v28 = v62;
        v49 = v63;
        v29 = v64;
        v30 = v65;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D30D7E60(0, *(v53 + 2) + 1, 1, v53);
        }

        v32 = *(v53 + 2);
        v31 = *(v53 + 3);
        v21 = v32 + 1;
        v33 = v49;
        v34 = v50;
        v35 = v51;
        if (v32 >= v31 >> 1)
        {
          v40 = sub_1D30D7E60((v31 > 1), v32 + 1, 1, v53);
          v33 = v49;
          v34 = v50;
          v38 = v28;
          v37 = v29;
          v36 = v30;
          v24 = v40;
          v35 = v51;
        }

        else
        {
          v36 = v30;
          v37 = v29;
          v38 = v28;
          v24 = v53;
        }

        *(v24 + 2) = v21;
        v39 = &v24[48 * v32];
        *(v39 + 4) = v35;
        *(v39 + 5) = v34;
        *(v39 + 6) = v38;
        *(v39 + 7) = v33;
        *(v39 + 8) = v37;
        *(v39 + 9) = v36;
        v23 = v27;
      }

      while (v18 != v27);
      goto LABEL_31;
    }
  }

  else
  {
    v58 = v20 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = 0;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_31:

  if (*(v24 + 2))
  {
    v42 = *(v24 + 4);
    v41 = *(v24 + 5);
    v43 = *(v24 + 6);
    v44 = *(v24 + 7);
    v45 = *(v24 + 8);
    v46 = *(v24 + 9);

    sub_1D2FF17B0(v43, v44);
    sub_1D2FF17B0(v45, v46);
  }

  else
  {
    v42 = 0;
    v41 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v54;

  *v47 = v42;
  v47[1] = v41;
  v47[2] = v43;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v46;
  return result;
}

uint64_t sub_1D30200D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v14 - v7;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 128);
  sub_1D30E8E7C();
  v10 = type metadata accessor for LicenseRecord(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v14[-2] = a2;
  v14[1] = v11;
  sub_1D30E8ACC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8E2C();
  sub_1D2FF14DC(v8, &qword_1EC749B68, &unk_1D30FD150);
  if (!v2)
  {

    sub_1D30E8E7C();
    sub_1D30E8E0C();
  }
}

uint64_t sub_1D302032C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C20, &qword_1D30F32C8);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C28, &qword_1D30F32D0);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA8, &qword_1D30F3258);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BB0, &qword_1D30F3260);
  v31 = *(v18 - 8);
  v32 = v18;
  v19 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *a1;
  sub_1D30E91FC();
  v30 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EC749BB8, &qword_1EC749BA8, &qword_1D30F3258);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v14 + 8))(v17, v13);
  v23 = a2[1];
  v38 = *a2;
  v39 = v23;
  v40 = a2[2];
  sub_1D30E87AC();
  swift_getKeyPath();
  sub_1D2FF1768(&qword_1EC749C30, &qword_1EC749C20, &qword_1D30F32C8);
  v24 = v34;
  sub_1D30E876C();

  (*(v33 + 8))(v8, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C38, &qword_1D30F32F8);
  v26 = v35;
  v35[3] = v25;
  v26[4] = sub_1D302A444(&qword_1EC749C40, &qword_1EC749C38, &qword_1D30F32F8, sub_1D302A4C8);
  __swift_allocate_boxed_opaque_existential_0Tm(v26);
  sub_1D2FF1768(&qword_1EC749BE8, &qword_1EC749BB0, &qword_1D30F3260);
  sub_1D2FF1768(&qword_1EC749C58, &qword_1EC749C28, &qword_1D30F32D0);
  v27 = v32;
  v28 = v37;
  sub_1D30E875C();
  (*(v36 + 8))(v12, v28);
  (*(v31 + 8))(v21, v27);
}

uint64_t sub_1D3020828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = sub_1D30E91FC();
  v35 = sub_1D30E91EC();
  v43 = v13;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 128);
  sub_1D30E8E7C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for LicenseRecord(0);
  v16 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v17 = sub_1D30E8E1C();
  (*(v9 + 8))(v12, v8);
  if (v2)
  {
  }

  v33 = 0;
  if (v17 >> 62)
  {
LABEL_25:
    v19 = sub_1D30E958C();
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_26:

    v30 = 0;
    v31 = 0;
    goto LABEL_27;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_26;
  }

LABEL_7:
  v20 = 0;
  v41 = v17 & 0xFFFFFFFFFFFFFF8;
  v42 = v17 & 0xC000000000000001;
  v39 = v17;
  v40 = v16;
  v38 = v19;
  while (v42)
  {
    v21 = MEMORY[0x1D38B29E0](v20, v17);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_20;
    }

LABEL_12:
    v44 = sub_1D30E91EC();
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v23 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
    v51 = v21;
    swift_getKeyPath();
    v36 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
    v37 = v23;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF7FF8();
    sub_1D30E8F0C();

    v24 = v45;
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v29 = v49;
    v28 = v50;
    if ((v50 & 0x3000000000000000) == 0x2000000000000000 && !(v46 | v45 | v47 | v48 | v49) && v50 == 0x2000000000000000)
    {
      goto LABEL_21;
    }

    sub_1D2FF804C(v24, v25, v26, v27, v29, v28);

    ++v20;
    v17 = v39;
    v16 = v40;
    if (v22 == v38)
    {
      goto LABEL_26;
    }
  }

  if (v20 >= *(v41 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = *(v17 + 8 * v20 + 32);

  v22 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = v21;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v30 = v45;
  v45 = v21;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302A5D8();
  sub_1D30E8F0C();

  v31 = v45;
LABEL_27:
  v32 = v34;
  *v34 = v30;
  v32[1] = v31;
  return result;
}

uint64_t sub_1D3020E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a4[1];
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *(a4 + 1);
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  if ((v21 & 0x3000000000000000) == 0x2000000000000000 && !(*(&v18 + 1) | v18 | v19 | *(&v19 + 1) | v20) && v21 == 0x2000000000000000)
  {
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE313888);

    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;

      _os_log_impl(&dword_1D2FD9000, v7, v8, "Marking the license with the ID “%llu” as having been requested…", v9, 0xCu);
      MEMORY[0x1D38B3760](v9, -1, -1);
    }

    else
    {
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D30E8ADC();
  }

  else
  {
    sub_1D2FF804C(v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    v11 = v10;
    *&v18 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    *v11 = v18;
    *(v11 + 16) = v19;
    *(v11 + 32) = v20;
    *(v11 + 40) = v21;
    *(v11 + 48) = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D30212D4(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v3[35] = *v2;
  v4 = *(*(type metadata accessor for AssetPackHost() - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v5 = sub_1D30E8A4C();
  v3[37] = v5;
  v6 = *(v5 - 8);
  v3[38] = v6;
  v7 = *(v6 + 64) + 15;
  v3[39] = swift_task_alloc();
  v8 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v3[40] = v8;
  v9 = *(v8 - 8);
  v3[41] = v9;
  v10 = *(v9 + 64) + 15;
  v3[42] = swift_task_alloc();
  v11 = type metadata accessor for LicenseRecord.ElementID(0);
  v3[43] = v11;
  v12 = *(v11 - 8);
  v3[44] = v12;
  v13 = *(v12 + 64) + 15;
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30214A4, v2, 0);
}

uint64_t sub_1D30214A4()
{
  v57 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_1D30E8B3C();
  v0[46] = __swift_project_value_buffer(v2, qword_1EE313888);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[40];
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56 = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x1D38B26B0](v6, v5);
    v11 = sub_1D2FFEA04(v9, v10, &v56);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "New static request for: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v12 = v0[33];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v47 = v0[44];
    v48 = v0[45];
    v45 = v0[42];
    v46 = v0[43];
    v15 = v0[41];
    v49 = v0[40];
    v16 = v0[38];
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D3028BE4(0, v13, 0);
    v14 = v56;
    v17 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v43 = (v16 + 8);
    v44 = (v16 + 32);
    v41 = v0;
    v42 = *(v15 + 72);
    while (1)
    {
      v18 = v0[42];
      v19 = v0[36];
      sub_1D302B574(v17, v18, type metadata accessor for AssetPackRecord.StaticRepresentation);
      sub_1D302B574(v18 + *(v49 + 20), v19, type metadata accessor for AssetPackHost);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
      if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
      {
        break;
      }

      v54 = v13;
      v55 = v14;
      v21 = v0[45];
      v22 = v0[42];
      v23 = v0[39];
      v24 = v0[36];
      v25 = v0[37];
      v53 = *(v24 + *(v20 + 64));
      v26 = *v44;
      (*v44)(v23, v24 + *(v20 + 48), v25);
      (*v43)(v24, v25);
      v27 = v45[1];
      v51 = v45[2];
      v52 = *v22;
      v28 = v45[3];
      v50 = v45[4];
      v29 = v45[5];

      sub_1D302A30C(v22, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v26(&v21[*(v46 + 20)], v23, v25);
      *v21 = v52;
      v48[1] = v27;
      v48[2] = v51;
      v48[3] = v28;
      v48[4] = v50;
      v48[5] = v29;
      *&v21[*(v46 + 24)] = v53;
      v14 = v55;
      v56 = v55;
      v31 = *(v55 + 16);
      v30 = *(v55 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D3028BE4(v30 > 1, v31 + 1, 1);
        v14 = v56;
      }

      v0 = v41;
      v32 = v41[45];
      *(v14 + 16) = v31 + 1;
      sub_1D302B5DC(v32, v14 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, type metadata accessor for LicenseRecord.ElementID);
      v17 += v42;
      --v13;
      if (v54 == 1)
      {
        goto LABEL_11;
      }
    }

    v33 = v0[42];
    sub_1D302A30C(v0[36], type metadata accessor for AssetPackHost);
    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    sub_1D302B574(v33, v34, type metadata accessor for AssetPackRecord.StaticRepresentation);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D302A30C(v33, type metadata accessor for AssetPackRecord.StaticRepresentation);

    v35 = v0[45];
    v36 = v0[42];
    v37 = v0[39];
    v38 = v0[36];

    v39 = v0[1];

    return v39();
  }

  else
  {
LABEL_11:
    v0[47] = v14;

    return MEMORY[0x1EEE6DFA0](sub_1D3021A40, 0, 0);
  }
}

uint64_t sub_1D3021A40()
{
  *(v0 + 384) = sub_1D30E91FC();
  *(v0 + 392) = sub_1D30E91EC();
  v2 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3021AD8, v2, v1);
}

uint64_t sub_1D3021AD8()
{
  v1 = v0[49];
  v2 = v0[47];
  v4 = v0[34];
  v3 = v0[35];

  sub_1D3022214(v4, v2, v0 + 31);
  v5 = v0[34];
  v0[50] = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D3021BEC, v5, 0);
}

uint64_t sub_1D3021BEC()
{
  v1 = *(v0[34] + 120);

  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_1D3021CA4;
  v3 = v0[50];
  v4 = v0[47];

  return sub_1D2FF97F0((v0 + 9), v4, v3, 1, v1);
}

uint64_t sub_1D3021CA4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_1D30220EC;
  }

  else
  {
    v6 = sub_1D3021DD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D3021DD0()
{
  *(v0 + 128) = *(v0 + 80);
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  *(v0 + 136) = *(v0 + 88);
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  v7 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = *(v0 + 104);
  *(v0 + 64) = v6;
  *(v0 + 32) = v8;
  *(v0 + 48) = v9;
  *(v0 + 16) = v7;
  swift_beginAccess();

  sub_1D2FF17B0(v3, v4);
  sub_1D2FF17B0(v5, v6);
  sub_1D3015990(v0 + 16);
  swift_endAccess();
  v10 = sub_1D30E8B1C();
  v11 = sub_1D30E92BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 400);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&dword_1D2FD9000, v10, v11, "A request for the static license with the ID “%llu” was submitted.", v13, 0xCu);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  v14 = *(v0 + 384);

  sub_1D302A25C(v0 + 128, v0 + 176);
  *(v0 + 424) = sub_1D30E91EC();
  v16 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3021F98, v16, v15);
}

uint64_t sub_1D3021F98()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v5 = v0[34];
  v4 = v0[35];

  sub_1D302606C(v3, v5, v3, v0 + 16, v4);
  v0[54] = v2;
  v6 = v0[34];
  if (v2)
  {
    v7 = sub_1D302217C;
  }

  else
  {
    v7 = sub_1D3022048;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D3022048()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 128);
  v7 = *(v0 + 160);
  v5[1] = *(v0 + 144);
  v5[2] = v7;
  *v5 = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D30220EC()
{
  v1 = v0[52];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[36];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D302217C()
{
  sub_1D302A2B8((v0 + 16));
  v1 = v0[54];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[36];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D3022214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for LicenseRecord.ElementID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D30E91FC();
  v11 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_1D3025380();
  if (v3)
  {
  }

  v13 = v12;
  v77 = v8;
  v73 = v11;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v72 = a3;
  v14 = sub_1D30E8B3C();
  __swift_project_value_buffer(v14, qword_1EE313888);
  v15 = sub_1D30E8B1C();
  v16 = sub_1D30E92BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_1D2FD9000, v15, v16, "Submitting a request for the static license with the ID “%llu”…", v17, 0xCu);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  v18 = type metadata accessor for LicenseRecord(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  v21 = sub_1D2FF5928(v13, a2);
  v22 = *(a1 + 128);
  sub_1D30E8E7C();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8E4C();

  sub_1D30E8E7C();
  sub_1D30E8E0C();
  v70 = v13;
  v71 = v21;

  v24 = *(a2 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = 0xE000000000000000;
    }

    else
    {
      v25 = 0xE100000000000000;
    }

    v26 = v71;
    swift_retain_n();

    v27 = sub_1D30E8B1C();
    v28 = sub_1D30E92BC();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v72;
    if (v29)
    {
      v67 = v28;
      v68 = v27;
      v69 = 0;
      v31 = swift_slowAlloc();
      v76 = v25;
      v32 = v31;
      v65 = swift_slowAlloc();
      v79 = v65;
      *v32 = 134219010;
      v78 = v26;
      swift_getKeyPath();
      sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      *(v32 + 4) = v78;

      if (v24 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = 115;
      }

      *(v32 + 12) = 2082;
      if (v24 == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0x6974636570736572;
      }

      if (v24 == 1)
      {
        v35 = 0xE000000000000000;
      }

      else
      {
        v35 = 0xEB00000000206576;
      }

      v36 = v76;
      *(v32 + 14) = sub_1D2FFEA04(v33, v76, &v79);
      *(v32 + 22) = 2082;
      v37 = sub_1D2FFEA04(v34, v35, &v79);

      *(v32 + 24) = v37;
      *(v32 + 32) = 2082;
      v38 = sub_1D2FFEA04(v33, v36, &v79);

      *(v32 + 34) = v38;
      v66 = v32;
      *(v32 + 42) = 2082;
      v78 = MEMORY[0x1E69E7CC0];
      sub_1D3028C28(0, v24, 0);
      v39 = v78;
      v40 = a2 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v74 = *(v77 + 72);
      do
      {
        v77 = v24;
        v41 = v75;
        sub_1D302B574(v40, v75, type metadata accessor for LicenseRecord.ElementID);
        v42 = *v41;
        v43 = v41[1];
        v44 = v41[2];
        v45 = v41[3];
        v46 = v41[5];
        v76 = v41[4];

        sub_1D302A30C(v41, type metadata accessor for LicenseRecord.ElementID);
        v78 = v39;
        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1D3028C28((v47 > 1), v48 + 1, 1);
          v39 = v78;
        }

        *(v39 + 16) = v48 + 1;
        v49 = (v39 + 48 * v48);
        v49[4] = v42;
        v49[5] = v43;
        v49[6] = v44;
        v49[7] = v45;
        v50 = v77;
        v49[8] = v76;
        v49[9] = v46;
        v40 += v74;
        v24 = v50 - 1;
      }

      while (v24);
      v58 = sub_1D3016354(v39);
      v60 = v59;

      v61 = sub_1D2FFEA04(v58, v60, &v79);

      v62 = v66;
      *(v66 + 44) = v61;
      v63 = v68;
      _os_log_impl(&dword_1D2FD9000, v68, v67, "A record of a pending license with the ID “%llu” for the asset pack%{public}s with the %{public}sglobal ID%{public}s %{public}s was saved to the database.", v62, 0x34u);
      v64 = v65;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v64, -1, -1);
      MEMORY[0x1D38B3760](v62, -1, -1);

      *v72 = v70;
    }

    else
    {

      *v30 = v70;
    }
  }

  else
  {
    v51 = v71;

    v52 = sub_1D30E8B1C();
    v53 = sub_1D30E92BC();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v72;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v69 = 0;
      v57 = v56;
      *v56 = 134217984;
      v79 = v51;
      swift_getKeyPath();
      sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      *(v57 + 1) = v79;

      _os_log_impl(&dword_1D2FD9000, v52, v53, "A record of a pending license with the ID “%llu” was saved to the database.", v57, 0xCu);
      MEMORY[0x1D38B3760](v57, -1, -1);
    }

    else
    {
    }

    *v55 = v70;
  }

  return result;
}

uint64_t sub_1D3022A94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 2);
  v16 = *(a3 + 1);
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  if ((v20 & 0x3000000000000000) == 0x2000000000000000 && !(*(&v17 + 1) | v17 | v18 | *(&v18 + 1) | v19) && v20 == 0x2000000000000000)
  {
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE313888);
    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;
      _os_log_impl(&dword_1D2FD9000, v7, v8, "Marking the license with the ID “%llu” as having been requested…", v9, 0xCu);
      MEMORY[0x1D38B3760](v9, -1, -1);
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D30E8ADC();
  }

  else
  {
    sub_1D2FF804C(v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20);
    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    v13 = v12;
    *&v17 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    *v13 = v17;
    *(v13 + 16) = v18;
    *(v13 + 32) = v19;
    *(v13 + 40) = v20;
    *(v13 + 48) = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D3022F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v4[34] = v6;
  v7 = *(v6 - 8);
  v4[35] = v7;
  v8 = *(v7 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3023030, v3, 0);
}

uint64_t sub_1D3023030()
{
  v39 = v0;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = sub_1D30E8B3C();
  *(v0 + 296) = __swift_project_value_buffer(v3, qword_1EE313888);
  v4 = sub_1D30E928C();
  sub_1D2FF17B0(v2, v1);
  v5 = sub_1D30E8B1C();
  sub_1D2FF1804(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136446466;
    v11 = sub_1D30E88EC();
    v13 = sub_1D2FFEA04(v11, v12, &v38);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Process response data: %{public}s for license with ID: %llu", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v14 = *(v0 + 248);
  swift_beginAccess();
  v15 = v14[20];
  v16 = v14[22];
  v17 = v15 < v16;
  v18 = v15 - v16;
  if (v17)
  {
    __break(1u);
LABEL_20:
    swift_once();
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = 1 - v16;
    v21 = (v14[18] + 56 * v16 + 8);
    do
    {
      if (!v18)
      {
        type metadata accessor for LicenseManagerError();
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
        swift_allocError();
        *v26 = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v27 = *(v0 + 288);
        v28 = *(v0 + 264);

        v29 = *(v0 + 8);

        return v29();
      }

      v22 = *v21;
      v21 += 7;
      --v20;
      --v18;
    }

    while (v22 != v19);
    v23 = *(v0 + 248);
    swift_beginAccess();
    v24 = -v20;
    if (*(*(v23 + 136) + 16))
    {
      sub_1D3032654(*(v0 + 240));
    }

    else
    {
      v25 = 0;
    }

    *(v0 + 360) = v25 & 1;
    v32 = *(v0 + 224);
    v31 = *(v0 + 232);
    sub_1D3015A2C(v24, v0 + 16);
    v33 = *(v0 + 24);
    v34 = *(v0 + 32);
    *(v0 + 72) = *(v0 + 16);
    *(v0 + 80) = v33;
    *(v0 + 88) = v34;
    v35 = *(v0 + 56);
    *(v0 + 96) = *(v0 + 40);
    *(v0 + 112) = v35;
    sub_1D2FF17B0(v32, v31);
    if (qword_1EE3132E0 != -1)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D302B150(&qword_1EE3132D8, 255, type metadata accessor for AppLicenseDelivery.Isolation);
  v37 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3023424, v37, v36);
}

uint64_t sub_1D3023424()
{
  v0[38] = sub_1D2FFFAA0((v0 + 9), v0[28], v0[29]);
  v0[39] = 0;
  v1 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D30234B4, v1, 0);
}

uint64_t sub_1D30234B4()
{
  v1 = v0[38];
  v2 = v0[31];
  sub_1D30E91FC();
  swift_bridgeObjectRetain_n();

  v0[40] = sub_1D30E91EC();
  v4 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D302356C, v4, v3);
}

uint64_t sub_1D302356C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 360);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);

  sub_1D30265EC(v7, v6, v4, v7, v6, v3);
  *(v0 + 328) = v2;
  if (v2)
  {
    v8 = *(v0 + 248);
    v9 = sub_1D3023CA4;
  }

  else
  {
    v10 = *(v0 + 304);
    v11 = *(v0 + 248);
    swift_bridgeObjectRelease_n();
    v9 = sub_1D3023A0C;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1D302364C()
{
  v1 = v0[39];
  v0[42] = v1;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  swift_beginAccess();
  sub_1D3024214(v6, v4);
  swift_endAccess();
  v7 = (*(v3 + 48))(v4, 1, v2);
  v8 = v0[37];
  if (v7 == 1)
  {
    sub_1D2FF14DC(v0[33], &qword_1EC749B88, &unk_1D30F3240);
    v9 = v1;
    v10 = sub_1D30E8B1C();
    v11 = sub_1D30E92BC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[30];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2114;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1D2FD9000, v10, v11, "Removing the record of the license with the ID “%llu” from the database because an error (%{public}@) occurred…", v13, 0x16u);
      sub_1D2FF14DC(v14, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    v17 = v0[31];

    sub_1D30E91FC();

    v0[43] = sub_1D30E91EC();
    v19 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3023B60, v19, v18);
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v20 = v1;
    v21 = sub_1D30E8B1C();
    v22 = sub_1D30E92BC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[30];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 134218242;
      *(v24 + 4) = v23;
      *(v24 + 12) = 2114;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1D2FD9000, v21, v22, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v24, 0x16u);
      sub_1D2FF14DC(v25, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v25, -1, -1);
      MEMORY[0x1D38B3760](v24, -1, -1);
    }

    v29 = v0[35];
    v28 = v0[36];
    v30 = v0[34];

    v0[27] = v1;
    v31 = v1;
    sub_1D30E91CC();
    (*(v29 + 8))(v28, v30);
    v32 = v0[42];
    v33 = v0[39];
    swift_willThrow();
    if (!v33)
    {
      v34 = v0[38];
    }

    v35 = v0[42];
    v36 = v0[36];
    v37 = v0[33];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_1D3023A0C()
{
  if (qword_1EC749028 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749B58;
  if (qword_1EC749018 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = qword_1EC75A8D0;
  v6 = type metadata accessor for LicenseResponseMessage.Subject();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV29ManagedBackgroundAssetsHelper22LicenseResponseMessage7Subject_licenseID] = v4;
  *(v0 + 200) = v7;
  *(v0 + 208) = v6;
  v8 = objc_msgSendSuper2((v0 + 200), sel_init);
  [v1 postNotificationName:v5 object:v8];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D3023B60()
{
  v1 = v0[43];
  v2 = v0[30];
  v3 = v0[31];

  sub_1D3027024(v2, v3, v3);
  v0[44] = 0;
  v4 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1D3023C14, v4, 0);
}

uint64_t sub_1D3023C14()
{
  v1 = v0[42];
  v2 = v0[39];
  swift_willThrow();
  if (!v2)
  {
    v3 = v0[38];
  }

  v4 = v0[42];
  v5 = v0[36];
  v6 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3023CA4()
{
  v1 = v0[38];

  v2 = v0[41];
  v0[42] = v2;
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  swift_beginAccess();
  sub_1D3024214(v7, v5);
  swift_endAccess();
  v8 = (*(v4 + 48))(v5, 1, v3);
  v9 = v0[37];
  if (v8 == 1)
  {
    sub_1D2FF14DC(v0[33], &qword_1EC749B88, &unk_1D30F3240);
    v10 = v2;
    v11 = sub_1D30E8B1C();
    v12 = sub_1D30E92BC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[30];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 134218242;
      *(v14 + 4) = v13;
      *(v14 + 12) = 2114;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D2FD9000, v11, v12, "Removing the record of the license with the ID “%llu” from the database because an error (%{public}@) occurred…", v14, 0x16u);
      sub_1D2FF14DC(v15, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v15, -1, -1);
      MEMORY[0x1D38B3760](v14, -1, -1);
    }

    v18 = v0[31];

    sub_1D30E91FC();

    v0[43] = sub_1D30E91EC();
    v20 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3023B60, v20, v19);
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v21 = v2;
    v22 = sub_1D30E8B1C();
    v23 = sub_1D30E92BC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[30];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 134218242;
      *(v25 + 4) = v24;
      *(v25 + 12) = 2114;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1D2FD9000, v22, v23, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v25, 0x16u);
      sub_1D2FF14DC(v26, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v26, -1, -1);
      MEMORY[0x1D38B3760](v25, -1, -1);
    }

    v30 = v0[35];
    v29 = v0[36];
    v31 = v0[34];

    v0[27] = v2;
    v32 = v2;
    sub_1D30E91CC();
    (*(v30 + 8))(v29, v31);
    v33 = v0[42];
    v34 = v0[39];
    swift_willThrow();
    if (!v34)
    {
      v35 = v0[38];
    }

    v36 = v0[42];
    v37 = v0[36];
    v38 = v0[33];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1D302406C()
{
  v1 = v0[44];
  v2 = v0[37];
  v3 = sub_1D30E929C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[44];
  if (v6)
  {
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "The record of the license with the ID “%llu” couldn’t be removed from the database: %{public}@", v9, 0x16u);
    sub_1D2FF14DC(v10, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[42];
  v14 = v0[39];
  swift_willThrow();
  if (!v14)
  {
    v15 = v0[38];
  }

  v16 = v0[42];
  v17 = v0[36];
  v18 = v0[33];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D3024214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D3032654(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D3033F9C();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_1D3029588(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D302438C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3024494, v2, 0);
}

uint64_t sub_1D3024494()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313888);
  v3 = sub_1D30E928C();
  v4 = v1;
  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Report error: %{public}@ for license with ID: %llu", v8, 0x16u);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v12 = v0[6];

  v13 = sub_1D30E929C();
  v14 = v12;
  v15 = sub_1D30E8B1C();

  if (os_log_type_enabled(v15, v13))
  {
    v16 = v0[6];
    v17 = v0[7];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218242;
    *(v18 + 4) = v17;
    *(v18 + 12) = 2114;
    v20 = v16;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D2FD9000, v15, v13, "The license with the ID “%llu” couldn’t be requested: %{public}@", v18, 0x16u);
    sub_1D2FF14DC(v19, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v19, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v22 = v0[10];
  v23 = v0[11];
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];

  swift_beginAccess();
  sub_1D3024214(v26, v24);
  swift_endAccess();
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v27 = v0[6];
    sub_1D2FF14DC(v0[9], &qword_1EC749B88, &unk_1D30F3240);
    v28 = v27;
    v29 = sub_1D30E8B1C();
    v30 = sub_1D30E92BC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[6];
      v32 = v0[7];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 134218242;
      *(v33 + 4) = v32;
      *(v33 + 12) = 2114;
      v35 = v31;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1D2FD9000, v29, v30, "Removing the record of the license with the ID “%llu” from the database because an error (“%{public}@”) occurred…", v33, 0x16u);
      sub_1D2FF14DC(v34, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v34, -1, -1);
      MEMORY[0x1D38B3760](v33, -1, -1);
    }

    v37 = v0[8];

    sub_1D30E91FC();

    v0[13] = sub_1D30E91EC();
    v39 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D3024A68, v39, v38);
  }

  else
  {
    v40 = v0[6];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v41 = v40;
    v42 = sub_1D30E8B1C();
    v43 = sub_1D30E92BC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v0[6];
      v45 = v0[7];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 134218242;
      *(v46 + 4) = v45;
      *(v46 + 12) = 2114;
      v48 = v44;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v49;
      *v47 = v49;
      _os_log_impl(&dword_1D2FD9000, v42, v43, "Resuming the continuation for the license ID “%llu” by throwing the error “%{public}@”…", v46, 0x16u);
      sub_1D2FF14DC(v47, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v47, -1, -1);
      MEMORY[0x1D38B3760](v46, -1, -1);
    }

    v51 = v0[11];
    v50 = v0[12];
    v52 = v0[10];
    v53 = v0[6];

    v0[5] = v53;
    v54 = v53;
    sub_1D30E91CC();
    (*(v51 + 8))(v50, v52);
    v55 = v0[12];
    v56 = v0[9];

    v57 = v0[1];

    return v57();
  }
}